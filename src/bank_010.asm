; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    db $54

    ld d, l                                       ; $4001: $55
    ld h, [hl]                                    ; $4002: $66
    ld b, l                                       ; $4003: $45
    ld d, l                                       ; $4004: $55
    ld l, b                                       ; $4005: $68
    adc c                                         ; $4006: $89
    sbc d                                         ; $4007: $9a
    set 1, h                                      ; $4008: $cb $cc
    sbc c                                         ; $400a: $99
    ld h, [hl]                                    ; $400b: $66
    ld [hl], a                                    ; $400c: $77
    sbc e                                         ; $400d: $9b
    sbc d                                         ; $400e: $9a
    cp c                                          ; $400f: $b9
    add a                                         ; $4010: $87
    adc d                                         ; $4011: $8a
    add a                                         ; $4012: $87
    halt                                          ; $4013: $76
    ld l, c                                       ; $4014: $69
    ld [hl], a                                    ; $4015: $77
    adc b                                         ; $4016: $88
    add a                                         ; $4017: $87
    ld [hl], a                                    ; $4018: $77
    ld d, h                                       ; $4019: $54
    db $10                                        ; $401a: $10
    inc [hl]                                      ; $401b: $34
    ld b, l                                       ; $401c: $45
    ld [hl], a                                    ; $401d: $77
    adc e                                         ; $401e: $8b
    call c, Call_010_54a8                         ; $401f: $dc $a8 $54
    ld d, l                                       ; $4022: $55
    ld b, l                                       ; $4023: $45
    ld d, h                                       ; $4024: $54
    ld d, [hl]                                    ; $4025: $56
    ld [hl], l                                    ; $4026: $75
    ld h, a                                       ; $4027: $67
    xor e                                         ; $4028: $ab
    xor d                                         ; $4029: $aa
    xor d                                         ; $402a: $aa
    sbc c                                         ; $402b: $99
    sbc c                                         ; $402c: $99
    adc c                                         ; $402d: $89
    ld a, b                                       ; $402e: $78
    sbc d                                         ; $402f: $9a
    xor c                                         ; $4030: $a9
    sbc d                                         ; $4031: $9a
    sbc b                                         ; $4032: $98
    add [hl]                                      ; $4033: $86
    ld h, a                                       ; $4034: $67
    halt                                          ; $4035: $76
    ld h, [hl]                                    ; $4036: $66
    ld h, a                                       ; $4037: $67
    xor h                                         ; $4038: $ac
    db $ec                                        ; $4039: $ec
    cp l                                          ; $403a: $bd
    cp a                                          ; $403b: $bf
    db $ed                                        ; $403c: $ed
    or a                                          ; $403d: $b7
    ld d, a                                       ; $403e: $57
    ld b, e                                       ; $403f: $43
    inc h                                         ; $4040: $24
    ld b, d                                       ; $4041: $42
    dec [hl]                                      ; $4042: $35
    ld b, l                                       ; $4043: $45
    ld h, l                                       ; $4044: $65
    ld l, b                                       ; $4045: $68
    ld l, b                                       ; $4046: $68
    add a                                         ; $4047: $87
    ld d, l                                       ; $4048: $55
    add a                                         ; $4049: $87
    ld d, a                                       ; $404a: $57
    adc c                                         ; $404b: $89
    xor c                                         ; $404c: $a9
    ld [hl], l                                    ; $404d: $75
    inc sp                                        ; $404e: $33
    ld b, l                                       ; $404f: $45
    ld d, a                                       ; $4050: $57
    adc d                                         ; $4051: $8a
    halt                                          ; $4052: $76
    ld d, a                                       ; $4053: $57
    sbc b                                         ; $4054: $98
    cp e                                          ; $4055: $bb
    call z, $87a9                                 ; $4056: $cc $a9 $87
    xor d                                         ; $4059: $aa
    add a                                         ; $405a: $87
    ld d, h                                       ; $405b: $54
    ld b, l                                       ; $405c: $45
    ld a, c                                       ; $405d: $79
    adc c                                         ; $405e: $89
    xor c                                         ; $405f: $a9
    sbc d                                         ; $4060: $9a
    sbc c                                         ; $4061: $99
    adc b                                         ; $4062: $88
    ld l, c                                       ; $4063: $69
    sub [hl]                                      ; $4064: $96
    ld a, c                                       ; $4065: $79
    ld [hl], h                                    ; $4066: $74
    ld h, [hl]                                    ; $4067: $66
    ld l, d                                       ; $4068: $6a
    db $ed                                        ; $4069: $ed
    ret z                                         ; $406a: $c8

    halt                                          ; $406b: $76
    ld d, l                                       ; $406c: $55
    ld b, l                                       ; $406d: $45
    inc [hl]                                      ; $406e: $34
    ld d, a                                       ; $406f: $57
    adc b                                         ; $4070: $88
    add a                                         ; $4071: $87
    adc b                                         ; $4072: $88
    sbc d                                         ; $4073: $9a
    sbc c                                         ; $4074: $99
    sbc c                                         ; $4075: $99
    cp h                                          ; $4076: $bc
    res 5, c                                      ; $4077: $cb $a9
    sub a                                         ; $4079: $97
    ld d, h                                       ; $407a: $54
    ld b, e                                       ; $407b: $43
    inc h                                         ; $407c: $24
    ld b, h                                       ; $407d: $44
    ld b, a                                       ; $407e: $47
    sbc c                                         ; $407f: $99
    sbc c                                         ; $4080: $99
    ld [hl], a                                    ; $4081: $77
    ld a, b                                       ; $4082: $78
    sbc d                                         ; $4083: $9a
    call c, $abbb                                 ; $4084: $dc $bb $ab
    adc b                                         ; $4087: $88
    ld [hl], a                                    ; $4088: $77
    halt                                          ; $4089: $76
    ld d, e                                       ; $408a: $53
    inc de                                        ; $408b: $13
    ld bc, $7636                                  ; $408c: $01 $36 $76
    ld h, l                                       ; $408f: $65
    ld d, l                                       ; $4090: $55
    ld d, [hl]                                    ; $4091: $56
    ld [hl], l                                    ; $4092: $75
    ld l, b                                       ; $4093: $68
    ld a, b                                       ; $4094: $78
    xor e                                         ; $4095: $ab
    xor d                                         ; $4096: $aa
    xor b                                         ; $4097: $a8
    add [hl]                                      ; $4098: $86
    ld l, c                                       ; $4099: $69
    xor e                                         ; $409a: $ab
    cp c                                          ; $409b: $b9
    adc c                                         ; $409c: $89
    sbc d                                         ; $409d: $9a
    sub a                                         ; $409e: $97
    ld l, b                                       ; $409f: $68
    add a                                         ; $40a0: $87
    adc d                                         ; $40a1: $8a
    call z, $98b8                                 ; $40a2: $cc $b8 $98
    add [hl]                                      ; $40a5: $86
    ld l, c                                       ; $40a6: $69
    sbc c                                         ; $40a7: $99
    sbc b                                         ; $40a8: $98
    sbc b                                         ; $40a9: $98
    add a                                         ; $40aa: $87
    ld a, b                                       ; $40ab: $78
    cp e                                          ; $40ac: $bb
    call z, $b9bc                                 ; $40ad: $cc $bc $b9
    ld h, a                                       ; $40b0: $67
    ld h, h                                       ; $40b1: $64
    ld [hl+], a                                   ; $40b2: $22
    inc sp                                        ; $40b3: $33
    inc [hl]                                      ; $40b4: $34
    ld d, [hl]                                    ; $40b5: $56
    ld l, c                                       ; $40b6: $69
    xor c                                         ; $40b7: $a9
    ld a, b                                       ; $40b8: $78
    xor d                                         ; $40b9: $aa
    res 5, c                                      ; $40ba: $cb $a9
    adc b                                         ; $40bc: $88
    adc b                                         ; $40bd: $88
    ld [hl], l                                    ; $40be: $75
    ld h, a                                       ; $40bf: $67
    adc c                                         ; $40c0: $89
    adc b                                         ; $40c1: $88
    sbc c                                         ; $40c2: $99
    ld [hl], a                                    ; $40c3: $77
    ld h, l                                       ; $40c4: $65
    ld b, l                                       ; $40c5: $45
    ld [hl], a                                    ; $40c6: $77
    ld h, [hl]                                    ; $40c7: $66
    adc c                                         ; $40c8: $89
    xor c                                         ; $40c9: $a9

Call_010_40ca:
    add a                                         ; $40ca: $87
    add a                                         ; $40cb: $87
    ld a, b                                       ; $40cc: $78
    sbc b                                         ; $40cd: $98
    adc c                                         ; $40ce: $89
    add a                                         ; $40cf: $87
    add [hl]                                      ; $40d0: $86
    halt                                          ; $40d1: $76
    stop                                          ; $40d2: $10 $00
    nop                                           ; $40d4: $00
    inc b                                         ; $40d5: $04
    ld h, a                                       ; $40d6: $67
    sbc h                                         ; $40d7: $9c
    cp h                                          ; $40d8: $bc
    call z, $dddd                                 ; $40d9: $cc $dd $dd
    call $a8db                                    ; $40dc: $cd $db $a8
    adc b                                         ; $40df: $88
    add a                                         ; $40e0: $87
    ld d, l                                       ; $40e1: $55
    ld b, h                                       ; $40e2: $44
    ld b, h                                       ; $40e3: $44
    ld d, [hl]                                    ; $40e4: $56
    ld a, c                                       ; $40e5: $79
    adc b                                         ; $40e6: $88
    ld [hl], a                                    ; $40e7: $77
    sbc d                                         ; $40e8: $9a
    xor b                                         ; $40e9: $a8
    sbc c                                         ; $40ea: $99
    add [hl]                                      ; $40eb: $86
    adc b                                         ; $40ec: $88
    ld [hl], a                                    ; $40ed: $77
    ld h, e                                       ; $40ee: $63
    ld b, [hl]                                    ; $40ef: $46
    ld h, a                                       ; $40f0: $67
    ld h, [hl]                                    ; $40f1: $66
    ld h, a                                       ; $40f2: $67
    sbc b                                         ; $40f3: $98
    xor d                                         ; $40f4: $aa
    xor d                                         ; $40f5: $aa
    xor d                                         ; $40f6: $aa
    xor e                                         ; $40f7: $ab
    sbc b                                         ; $40f8: $98
    add a                                         ; $40f9: $87
    ld h, [hl]                                    ; $40fa: $66
    ld l, b                                       ; $40fb: $68
    ld h, h                                       ; $40fc: $64
    jr nz, jr_010_4122                            ; $40fd: $20 $23

    ld d, [hl]                                    ; $40ff: $56
    ld h, a                                       ; $4100: $67
    xor c                                         ; $4101: $a9
    sbc b                                         ; $4102: $98
    sbc e                                         ; $4103: $9b
    xor c                                         ; $4104: $a9
    xor d                                         ; $4105: $aa
    sbc b                                         ; $4106: $98
    ld a, b                                       ; $4107: $78
    sbc b                                         ; $4108: $98
    ld h, a                                       ; $4109: $67
    sbc c                                         ; $410a: $99
    xor e                                         ; $410b: $ab
    xor b                                         ; $410c: $a8
    sbc c                                         ; $410d: $99
    sbc c                                         ; $410e: $99
    add a                                         ; $410f: $87
    cp b                                          ; $4110: $b8
    ld l, b                                       ; $4111: $68
    sub [hl]                                      ; $4112: $96
    ld b, l                                       ; $4113: $45
    ld h, l                                       ; $4114: $65
    halt                                          ; $4115: $76
    ld [hl], a                                    ; $4116: $77
    xor h                                         ; $4117: $ac
    and a                                         ; $4118: $a7
    ld d, l                                       ; $4119: $55
    ld b, h                                       ; $411a: $44
    ld h, a                                       ; $411b: $67
    halt                                          ; $411c: $76
    ld h, a                                       ; $411d: $67
    sbc d                                         ; $411e: $9a
    add a                                         ; $411f: $87
    ld d, [hl]                                    ; $4120: $56
    ld [hl], a                                    ; $4121: $77

jr_010_4122:
    ld [hl], a                                    ; $4122: $77
    xor c                                         ; $4123: $a9
    cp e                                          ; $4124: $bb
    xor d                                         ; $4125: $aa
    sbc d                                         ; $4126: $9a
    call z, $76b9                                 ; $4127: $cc $b9 $76
    ld a, c                                       ; $412a: $79
    add [hl]                                      ; $412b: $86
    ld d, l                                       ; $412c: $55
    ld d, h                                       ; $412d: $54
    ld b, e                                       ; $412e: $43
    ld [hl+], a                                   ; $412f: $22
    ld d, a                                       ; $4130: $57
    sbc d                                         ; $4131: $9a
    cp e                                          ; $4132: $bb
    cp d                                          ; $4133: $ba
    cp b                                          ; $4134: $b8
    halt                                          ; $4135: $76
    adc b                                         ; $4136: $88
    adc b                                         ; $4137: $88
    xor h                                         ; $4138: $ac
    sbc b                                         ; $4139: $98
    adc b                                         ; $413a: $88
    sub [hl]                                      ; $413b: $96
    ld h, [hl]                                    ; $413c: $66
    ld a, c                                       ; $413d: $79
    xor d                                         ; $413e: $aa
    xor d                                         ; $413f: $aa
    add l                                         ; $4140: $85
    ld b, e                                       ; $4141: $43
    ld [hl+], a                                   ; $4142: $22
    db $10                                        ; $4143: $10
    ld de, $6824                                  ; $4144: $11 $24 $68
    sbc b                                         ; $4147: $98
    sbc d                                         ; $4148: $9a
    cp c                                          ; $4149: $b9
    ld a, e                                       ; $414a: $7b
    cp h                                          ; $414b: $bc
    cp e                                          ; $414c: $bb
    res 7, c                                      ; $414d: $cb $b9
    sub [hl]                                      ; $414f: $96
    ld h, [hl]                                    ; $4150: $66
    ld b, [hl]                                    ; $4151: $46
    ld h, a                                       ; $4152: $67
    add a                                         ; $4153: $87
    halt                                          ; $4154: $76
    ld h, [hl]                                    ; $4155: $66
    sbc b                                         ; $4156: $98
    adc h                                         ; $4157: $8c
    xor $eb                                       ; $4158: $ee $eb
    sub a                                         ; $415a: $97
    ld d, h                                       ; $415b: $54
    inc sp                                        ; $415c: $33
    ld d, h                                       ; $415d: $54
    ld d, [hl]                                    ; $415e: $56
    ld [hl], a                                    ; $415f: $77
    ld l, b                                       ; $4160: $68
    halt                                          ; $4161: $76
    ld b, h                                       ; $4162: $44
    ld d, [hl]                                    ; $4163: $56
    ld d, a                                       ; $4164: $57
    sbc c                                         ; $4165: $99
    cp b                                          ; $4166: $b8
    ld h, [hl]                                    ; $4167: $66
    ld b, h                                       ; $4168: $44
    ld d, [hl]                                    ; $4169: $56
    ld e, b                                       ; $416a: $58
    call z, $88db                                 ; $416b: $cc $db $88
    adc b                                         ; $416e: $88
    adc c                                         ; $416f: $89
    cp c                                          ; $4170: $b9
    halt                                          ; $4171: $76
    ld d, [hl]                                    ; $4172: $56
    ld h, h                                       ; $4173: $64
    dec [hl]                                      ; $4174: $35
    ld h, e                                       ; $4175: $63
    ld b, a                                       ; $4176: $47
    halt                                          ; $4177: $76
    ld d, [hl]                                    ; $4178: $56
    adc d                                         ; $4179: $8a
    cp d                                          ; $417a: $ba
    cp d                                          ; $417b: $ba
    cp d                                          ; $417c: $ba
    sbc b                                         ; $417d: $98
    sbc c                                         ; $417e: $99
    cp e                                          ; $417f: $bb
    cp h                                          ; $4180: $bc
    call z, $97dc                                 ; $4181: $cc $dc $97
    ld d, l                                       ; $4184: $55
    ld h, [hl]                                    ; $4185: $66
    add a                                         ; $4186: $87
    halt                                          ; $4187: $76
    ld a, b                                       ; $4188: $78
    ld [hl], l                                    ; $4189: $75
    ld d, l                                       ; $418a: $55
    sbc e                                         ; $418b: $9b
    sbc c                                         ; $418c: $99
    sbc c                                         ; $418d: $99
    cp d                                          ; $418e: $ba
    add a                                         ; $418f: $87
    ld d, l                                       ; $4190: $55
    ld d, h                                       ; $4191: $54
    ld [de], a                                    ; $4192: $12
    ld l, c                                       ; $4193: $69
    add [hl]                                      ; $4194: $86
    ld h, h                                       ; $4195: $64
    ld d, a                                       ; $4196: $57
    ld h, [hl]                                    ; $4197: $66
    ld a, c                                       ; $4198: $79
    sbc e                                         ; $4199: $9b
    cp d                                          ; $419a: $ba

Call_010_419b:
    adc b                                         ; $419b: $88
    adc b                                         ; $419c: $88
    xor e                                         ; $419d: $ab
    cp d                                          ; $419e: $ba
    xor b                                         ; $419f: $a8
    add [hl]                                      ; $41a0: $86
    ld h, h                                       ; $41a1: $64
    ld b, [hl]                                    ; $41a2: $46
    ld d, [hl]                                    ; $41a3: $56
    ld h, [hl]                                    ; $41a4: $66
    ld a, b                                       ; $41a5: $78
    sbc c                                         ; $41a6: $99
    sbc c                                         ; $41a7: $99
    add [hl]                                      ; $41a8: $86
    ld [hl], a                                    ; $41a9: $77
    ld [hl], a                                    ; $41aa: $77
    ld [hl], a                                    ; $41ab: $77
    sbc d                                         ; $41ac: $9a
    call $a9cb                                    ; $41ad: $cd $cb $a9
    sbc b                                         ; $41b0: $98
    adc c                                         ; $41b1: $89
    sbc b                                         ; $41b2: $98
    ld [hl], a                                    ; $41b3: $77
    ld [hl], a                                    ; $41b4: $77
    ld [hl], a                                    ; $41b5: $77
    ld h, d                                       ; $41b6: $62
    db $10                                        ; $41b7: $10
    ld [hl+], a                                   ; $41b8: $22
    ld b, [hl]                                    ; $41b9: $46
    ld h, l                                       ; $41ba: $65
    ld d, l                                       ; $41bb: $55
    ld d, [hl]                                    ; $41bc: $56
    ld h, a                                       ; $41bd: $67
    sbc d                                         ; $41be: $9a
    xor d                                         ; $41bf: $aa
    sbc c                                         ; $41c0: $99
    adc c                                         ; $41c1: $89
    xor d                                         ; $41c2: $aa
    add [hl]                                      ; $41c3: $86
    ld [hl], a                                    ; $41c4: $77
    adc c                                         ; $41c5: $89
    xor b                                         ; $41c6: $a8
    adc b                                         ; $41c7: $88
    ld [hl], a                                    ; $41c8: $77
    ld h, [hl]                                    ; $41c9: $66
    ld h, [hl]                                    ; $41ca: $66
    ld [hl], a                                    ; $41cb: $77
    ld [hl], l                                    ; $41cc: $75
    ld h, h                                       ; $41cd: $64
    ld b, h                                       ; $41ce: $44
    ld d, [hl]                                    ; $41cf: $56
    adc e                                         ; $41d0: $8b
    cp e                                          ; $41d1: $bb
    cp c                                          ; $41d2: $b9
    ld [hl], l                                    ; $41d3: $75
    ld h, l                                       ; $41d4: $65
    ld d, a                                       ; $41d5: $57
    adc e                                         ; $41d6: $8b
    db $ed                                        ; $41d7: $ed
    and a                                         ; $41d8: $a7
    ld [hl], a                                    ; $41d9: $77
    ld a, c                                       ; $41da: $79
    xor l                                         ; $41db: $ad
    cp $da                                        ; $41dc: $fe $da
    sbc d                                         ; $41de: $9a
    adc c                                         ; $41df: $89
    add a                                         ; $41e0: $87
    add a                                         ; $41e1: $87
    ld h, h                                       ; $41e2: $64
    ld [hl+], a                                   ; $41e3: $22
    ld d, [hl]                                    ; $41e4: $56
    ld h, a                                       ; $41e5: $67
    adc d                                         ; $41e6: $8a
    jp z, $8978                                   ; $41e7: $ca $78 $89

    add [hl]                                      ; $41ea: $86
    ld h, [hl]                                    ; $41eb: $66
    adc b                                         ; $41ec: $88
    ld [hl], a                                    ; $41ed: $77
    ld h, [hl]                                    ; $41ee: $66
    ld h, l                                       ; $41ef: $65
    ld d, [hl]                                    ; $41f0: $56
    ld l, b                                       ; $41f1: $68
    adc b                                         ; $41f2: $88
    add a                                         ; $41f3: $87
    ld a, d                                       ; $41f4: $7a
    sbc d                                         ; $41f5: $9a
    xor e                                         ; $41f6: $ab
    ret z                                         ; $41f7: $c8

    halt                                          ; $41f8: $76
    ld h, [hl]                                    ; $41f9: $66
    ld h, e                                       ; $41fa: $63
    inc sp                                        ; $41fb: $33
    ld e, b                                       ; $41fc: $58
    adc c                                         ; $41fd: $89
    cp c                                          ; $41fe: $b9
    ld [hl], h                                    ; $41ff: $74
    inc h                                         ; $4200: $24
    ld d, l                                       ; $4201: $55
    add a                                         ; $4202: $87
    ld h, [hl]                                    ; $4203: $66
    ld h, l                                       ; $4204: $65
    ld d, l                                       ; $4205: $55
    ld a, c                                       ; $4206: $79
    cp d                                          ; $4207: $ba
    db $dd                                        ; $4208: $dd
    cp c                                          ; $4209: $b9
    add [hl]                                      ; $420a: $86
    ld a, c                                       ; $420b: $79
    adc d                                         ; $420c: $8a
    sbc b                                         ; $420d: $98
    ld [hl], l                                    ; $420e: $75
    ld b, l                                       ; $420f: $45
    ld h, a                                       ; $4210: $67
    ld [hl], a                                    ; $4211: $77
    add a                                         ; $4212: $87
    ld d, l                                       ; $4213: $55
    ld [hl], a                                    ; $4214: $77
    ld l, b                                       ; $4215: $68
    halt                                          ; $4216: $76
    halt                                          ; $4217: $76
    adc b                                         ; $4218: $88
    ld a, b                                       ; $4219: $78
    adc l                                         ; $421a: $8d
    db $ec                                        ; $421b: $ec
    res 7, d                                      ; $421c: $cb $ba
    add [hl]                                      ; $421e: $86
    ld b, l                                       ; $421f: $45
    sbc b                                         ; $4220: $98
    adc b                                         ; $4221: $88
    ld [hl], l                                    ; $4222: $75
    ld d, [hl]                                    ; $4223: $56
    halt                                          ; $4224: $76
    ld h, [hl]                                    ; $4225: $66
    ld a, b                                       ; $4226: $78
    sbc c                                         ; $4227: $99
    add [hl]                                      ; $4228: $86
    ld h, a                                       ; $4229: $67
    ld h, h                                       ; $422a: $64
    ld d, l                                       ; $422b: $55
    ld h, a                                       ; $422c: $67
    ld h, a                                       ; $422d: $67
    ld [hl], a                                    ; $422e: $77
    adc b                                         ; $422f: $88
    sbc d                                         ; $4230: $9a
    xor b                                         ; $4231: $a8
    ld h, d                                       ; $4232: $62
    ld bc, $8936                                  ; $4233: $01 $36 $89
    xor d                                         ; $4236: $aa
    cp e                                          ; $4237: $bb

Jump_010_4238:
    cp e                                          ; $4238: $bb
    call z, $bbbc                                 ; $4239: $cc $bc $bb
    and a                                         ; $423c: $a7
    ld d, a                                       ; $423d: $57
    add a                                         ; $423e: $87
    add [hl]                                      ; $423f: $86
    inc sp                                        ; $4240: $33
    ld b, l                                       ; $4241: $45
    ld h, l                                       ; $4242: $65
    ld h, a                                       ; $4243: $67
    xor c                                         ; $4244: $a9
    add [hl]                                      ; $4245: $86
    adc b                                         ; $4246: $88
    adc b                                         ; $4247: $88
    cp d                                          ; $4248: $ba
    call z, $aba8                                 ; $4249: $cc $a8 $ab
    jp z, $9a99                                   ; $424c: $ca $99 $9a

    xor b                                         ; $424f: $a8
    sbc b                                         ; $4250: $98
    ld [hl], l                                    ; $4251: $75
    ld l, c                                       ; $4252: $69
    sbc b                                         ; $4253: $98
    ld h, e                                       ; $4254: $63
    inc sp                                        ; $4255: $33
    ld hl, $4511                                  ; $4256: $21 $11 $45
    sbc l                                         ; $4259: $9d
    db $ed                                        ; $425a: $ed
    res 7, e                                      ; $425b: $cb $bb
    res 3, b                                      ; $425d: $cb $98
    ld h, l                                       ; $425f: $65
    ld b, c                                       ; $4260: $41
    inc hl                                        ; $4261: $23
    ld h, [hl]                                    ; $4262: $66
    ld d, h                                       ; $4263: $54
    ld b, e                                       ; $4264: $43
    inc [hl]                                      ; $4265: $34
    ld [hl], a                                    ; $4266: $77
    ld h, [hl]                                    ; $4267: $66
    sbc b                                         ; $4268: $98
    sbc d                                         ; $4269: $9a
    xor d                                         ; $426a: $aa
    sbc c                                         ; $426b: $99
    ld h, l                                       ; $426c: $65
    ld h, [hl]                                    ; $426d: $66
    ld d, h                                       ; $426e: $54
    ld b, [hl]                                    ; $426f: $46
    ld [hl-], a                                   ; $4270: $32
    ld d, h                                       ; $4271: $54
    ld d, e                                       ; $4272: $53
    inc sp                                        ; $4273: $33
    ld b, a                                       ; $4274: $47
    xor c                                         ; $4275: $a9
    xor e                                         ; $4276: $ab
    jp z, $c8bd                                   ; $4277: $ca $bd $c8

    xor e                                         ; $427a: $ab
    cp d                                          ; $427b: $ba
    cp c                                          ; $427c: $b9
    adc c                                         ; $427d: $89
    cp d                                          ; $427e: $ba
    xor b                                         ; $427f: $a8
    adc d                                         ; $4280: $8a
    sub a                                         ; $4281: $97
    xor d                                         ; $4282: $aa
    sbc b                                         ; $4283: $98
    add a                                         ; $4284: $87

Call_010_4285:
    sbc e                                         ; $4285: $9b
    db $ec                                        ; $4286: $ec
    cp d                                          ; $4287: $ba
    xor c                                         ; $4288: $a9
    halt                                          ; $4289: $76
    ld h, l                                       ; $428a: $65
    ld b, [hl]                                    ; $428b: $46
    ld d, l                                       ; $428c: $55
    ld d, [hl]                                    ; $428d: $56
    adc b                                         ; $428e: $88
    sbc d                                         ; $428f: $9a
    xor d                                         ; $4290: $aa
    xor c                                         ; $4291: $a9
    add a                                         ; $4292: $87
    ld a, c                                       ; $4293: $79
    cp d                                          ; $4294: $ba
    cp c                                          ; $4295: $b9
    adc b                                         ; $4296: $88
    ld d, [hl]                                    ; $4297: $56
    ld d, e                                       ; $4298: $53
    dec h                                         ; $4299: $25
    ld l, c                                       ; $429a: $69
    xor c                                         ; $429b: $a9
    cp c                                          ; $429c: $b9
    ld [hl], l                                    ; $429d: $75
    jr nz, jr_010_42e7                            ; $429e: $20 $47

    ld h, e                                       ; $42a0: $63
    inc sp                                        ; $42a1: $33
    ld hl, $3413                                  ; $42a2: $21 $13 $34
    inc [hl]                                      ; $42a5: $34
    ld d, [hl]                                    ; $42a6: $56
    adc c                                         ; $42a7: $89
    ld a, b                                       ; $42a8: $78
    xor e                                         ; $42a9: $ab
    xor h                                         ; $42aa: $ac
    res 5, e                                      ; $42ab: $cb $ab
    add l                                         ; $42ad: $85
    sbc b                                         ; $42ae: $98
    cp e                                          ; $42af: $bb
    jp z, $a6aa                                   ; $42b0: $ca $aa $a6

    ld b, e                                       ; $42b3: $43
    ld h, [hl]                                    ; $42b4: $66
    add [hl]                                      ; $42b5: $86
    ld d, a                                       ; $42b6: $57
    sbc e                                         ; $42b7: $9b
    xor d                                         ; $42b8: $aa
    xor d                                         ; $42b9: $aa
    sbc b                                         ; $42ba: $98
    adc b                                         ; $42bb: $88
    ld [hl], a                                    ; $42bc: $77
    sbc e                                         ; $42bd: $9b
    cp d                                          ; $42be: $ba
    add a                                         ; $42bf: $87
    ld d, h                                       ; $42c0: $54
    ld d, l                                       ; $42c1: $55
    ld h, a                                       ; $42c2: $67
    sbc d                                         ; $42c3: $9a
    ret                                           ; $42c4: $c9


    ld [hl], h                                    ; $42c5: $74
    inc sp                                        ; $42c6: $33
    ld l, c                                       ; $42c7: $69
    and a                                         ; $42c8: $a7
    halt                                          ; $42c9: $76
    ld h, l                                       ; $42ca: $65
    ld a, c                                       ; $42cb: $79
    sbc c                                         ; $42cc: $99
    adc b                                         ; $42cd: $88
    sbc e                                         ; $42ce: $9b
    xor c                                         ; $42cf: $a9
    add [hl]                                      ; $42d0: $86
    ld d, l                                       ; $42d1: $55
    ld b, h                                       ; $42d2: $44
    inc [hl]                                      ; $42d3: $34
    ld h, a                                       ; $42d4: $67
    sbc b                                         ; $42d5: $98
    sbc c                                         ; $42d6: $99
    xor d                                         ; $42d7: $aa
    sub a                                         ; $42d8: $97
    sub a                                         ; $42d9: $97
    ld b, a                                       ; $42da: $47
    sbc d                                         ; $42db: $9a
    add [hl]                                      ; $42dc: $86
    ld [hl], a                                    ; $42dd: $77
    adc d                                         ; $42de: $8a
    xor b                                         ; $42df: $a8
    sbc c                                         ; $42e0: $99
    adc b                                         ; $42e1: $88
    xor c                                         ; $42e2: $a9
    sbc e                                         ; $42e3: $9b
    cp c                                          ; $42e4: $b9
    sbc b                                         ; $42e5: $98
    add a                                         ; $42e6: $87

jr_010_42e7:
    sbc c                                         ; $42e7: $99
    cp b                                          ; $42e8: $b8
    halt                                          ; $42e9: $76
    sub [hl]                                      ; $42ea: $96
    ld h, [hl]                                    ; $42eb: $66
    ld h, [hl]                                    ; $42ec: $66
    ld d, l                                       ; $42ed: $55
    ld b, [hl]                                    ; $42ee: $46
    ld l, b                                       ; $42ef: $68
    sub a                                         ; $42f0: $97
    add e                                         ; $42f1: $83
    ld [hl], $68                                  ; $42f2: $36 $68
    add a                                         ; $42f4: $87
    ld d, h                                       ; $42f5: $54
    ld [hl-], a                                   ; $42f6: $32
    ld [de], a                                    ; $42f7: $12
    inc h                                         ; $42f8: $24
    adc d                                         ; $42f9: $8a
    rst $08                                       ; $42fa: $cf
    ei                                            ; $42fb: $fb
    xor d                                         ; $42fc: $aa
    res 7, h                                      ; $42fd: $cb $bc
    xor c                                         ; $42ff: $a9
    adc b                                         ; $4300: $88
    ld [hl], l                                    ; $4301: $75
    ld b, d                                       ; $4302: $42
    ld bc, $4522                                  ; $4303: $01 $22 $45
    ld b, h                                       ; $4306: $44
    ld a, d                                       ; $4307: $7a
    xor d                                         ; $4308: $aa
    sbc c                                         ; $4309: $99
    cp l                                          ; $430a: $bd
    call c, $bcbb                                 ; $430b: $dc $bb $bc
    cp c                                          ; $430e: $b9
    xor b                                         ; $430f: $a8
    adc b                                         ; $4310: $88
    add h                                         ; $4311: $84
    inc hl                                        ; $4312: $23
    ld b, a                                       ; $4313: $47
    ld l, c                                       ; $4314: $69
    cp [hl]                                       ; $4315: $be
    db $eb                                        ; $4316: $eb
    halt                                          ; $4317: $76
    ld d, l                                       ; $4318: $55
    ld d, l                                       ; $4319: $55
    inc sp                                        ; $431a: $33
    ld hl, $6635                                  ; $431b: $21 $35 $66
    ld b, l                                       ; $431e: $45
    ld e, b                                       ; $431f: $58
    cp e                                          ; $4320: $bb
    cp e                                          ; $4321: $bb
    cp c                                          ; $4322: $b9
    ld a, b                                       ; $4323: $78
    adc b                                         ; $4324: $88
    ld a, b                                       ; $4325: $78
    ld a, b                                       ; $4326: $78
    adc b                                         ; $4327: $88
    add [hl]                                      ; $4328: $86
    ld h, a                                       ; $4329: $67
    xor e                                         ; $432a: $ab
    xor d                                         ; $432b: $aa
    cp e                                          ; $432c: $bb
    call $abca                                    ; $432d: $cd $ca $ab
    sbc d                                         ; $4330: $9a
    ld [hl], a                                    ; $4331: $77
    ld a, b                                       ; $4332: $78
    ld h, l                                       ; $4333: $65
    ld b, h                                       ; $4334: $44
    ld b, h                                       ; $4335: $44
    ld [hl+], a                                   ; $4336: $22
    inc [hl]                                      ; $4337: $34
    inc sp                                        ; $4338: $33
    ld l, c                                       ; $4339: $69
    ld [hl], a                                    ; $433a: $77
    adc c                                         ; $433b: $89
    cp e                                          ; $433c: $bb
    sbc d                                         ; $433d: $9a
    sbc b                                         ; $433e: $98
    sbc c                                         ; $433f: $99
    add a                                         ; $4340: $87
    sbc b                                         ; $4341: $98
    halt                                          ; $4342: $76
    ld h, [hl]                                    ; $4343: $66
    adc b                                         ; $4344: $88
    ld d, [hl]                                    ; $4345: $56
    adc c                                         ; $4346: $89
    xor e                                         ; $4347: $ab

Call_010_4348:
    add [hl]                                      ; $4348: $86
    ld b, e                                       ; $4349: $43
    inc [hl]                                      ; $434a: $34
    ld d, [hl]                                    ; $434b: $56
    ld d, l                                       ; $434c: $55
    ld d, [hl]                                    ; $434d: $56
    ld [hl], l                                    ; $434e: $75
    ld b, l                                       ; $434f: $45
    ld h, a                                       ; $4350: $67
    ld h, [hl]                                    ; $4351: $66
    sbc d                                         ; $4352: $9a
    sbc b                                         ; $4353: $98
    halt                                          ; $4354: $76
    ld h, h                                       ; $4355: $64
    ld h, [hl]                                    ; $4356: $66
    ld b, h                                       ; $4357: $44
    ld a, c                                       ; $4358: $79
    cp h                                          ; $4359: $bc
    adc $cb                                       ; $435a: $ce $cb
    ld a, b                                       ; $435c: $78
    xor e                                         ; $435d: $ab
    xor c                                         ; $435e: $a9
    xor h                                         ; $435f: $ac
    cp d                                          ; $4360: $ba
    sbc b                                         ; $4361: $98
    sbc b                                         ; $4362: $98
    add a                                         ; $4363: $87
    ld a, b                                       ; $4364: $78
    ld h, h                                       ; $4365: $64
    ld d, [hl]                                    ; $4366: $56
    adc b                                         ; $4367: $88
    xor d                                         ; $4368: $aa
    xor d                                         ; $4369: $aa
    call z, $99a9                                 ; $436a: $cc $a9 $99
    add a                                         ; $436d: $87
    add [hl]                                      ; $436e: $86
    ld [hl], a                                    ; $436f: $77
    ld h, l                                       ; $4370: $65
    ld l, b                                       ; $4371: $68
    adc b                                         ; $4372: $88
    halt                                          ; $4373: $76
    ld h, a                                       ; $4374: $67
    adc b                                         ; $4375: $88
    adc b                                         ; $4376: $88
    halt                                          ; $4377: $76
    ld h, h                                       ; $4378: $64
    inc sp                                        ; $4379: $33
    inc hl                                        ; $437a: $23
    inc sp                                        ; $437b: $33
    jr nc, jr_010_43a1                            ; $437c: $30 $23

    ld e, b                                       ; $437e: $58
    add [hl]                                      ; $437f: $86
    ld h, a                                       ; $4380: $67
    ld [hl], a                                    ; $4381: $77
    adc b                                         ; $4382: $88
    xor e                                         ; $4383: $ab

Call_010_4384:
    cp e                                          ; $4384: $bb

Jump_010_4385:
    sbc $fe                                       ; $4385: $de $fe
    rst $28                                       ; $4387: $ef
    db $ec                                        ; $4388: $ec
    xor c                                         ; $4389: $a9
    add a                                         ; $438a: $87
    ld h, [hl]                                    ; $438b: $66
    ld d, e                                       ; $438c: $53
    ld sp, $4513                                  ; $438d: $31 $13 $45
    ld h, [hl]                                    ; $4390: $66
    ld h, l                                       ; $4391: $65
    ld h, [hl]                                    ; $4392: $66
    ld [hl], a                                    ; $4393: $77
    adc c                                         ; $4394: $89
    xor e                                         ; $4395: $ab
    set 1, d                                      ; $4396: $cb $ca
    cp h                                          ; $4398: $bc
    cp c                                          ; $4399: $b9
    adc b                                         ; $439a: $88
    halt                                          ; $439b: $76
    ld d, l                                       ; $439c: $55
    ld d, l                                       ; $439d: $55
    ld d, [hl]                                    ; $439e: $56
    ld a, d                                       ; $439f: $7a
    xor c                                         ; $43a0: $a9

jr_010_43a1:
    add a                                         ; $43a1: $87
    ld h, [hl]                                    ; $43a2: $66
    ld a, b                                       ; $43a3: $78
    sbc e                                         ; $43a4: $9b
    sbc c                                         ; $43a5: $99
    sbc c                                         ; $43a6: $99

Call_010_43a7:
    adc b                                         ; $43a7: $88
    ld h, l                                       ; $43a8: $65
    ld h, a                                       ; $43a9: $67
    ld h, a                                       ; $43aa: $67
    ld h, a                                       ; $43ab: $67
    ld [hl], l                                    ; $43ac: $75
    adc b                                         ; $43ad: $88
    ld a, c                                       ; $43ae: $79
    sbc e                                         ; $43af: $9b
    cp d                                          ; $43b0: $ba
    sbc c                                         ; $43b1: $99
    adc b                                         ; $43b2: $88
    adc c                                         ; $43b3: $89
    adc b                                         ; $43b4: $88
    add a                                         ; $43b5: $87

Call_010_43b6:
    adc b                                         ; $43b6: $88
    sbc b                                         ; $43b7: $98
    ld [hl], l                                    ; $43b8: $75
    ld d, h                                       ; $43b9: $54
    ld [hl], $76                                  ; $43ba: $36 $76
    ld d, h                                       ; $43bc: $54
    ld b, l                                       ; $43bd: $45
    ld d, [hl]                                    ; $43be: $56
    ld l, b                                       ; $43bf: $68
    ld d, l                                       ; $43c0: $55
    ld h, [hl]                                    ; $43c1: $66
    ld h, [hl]                                    ; $43c2: $66
    ld b, e                                       ; $43c3: $43
    inc de                                        ; $43c4: $13
    ld b, h                                       ; $43c5: $44
    ld b, l                                       ; $43c6: $45
    ld l, b                                       ; $43c7: $68
    xor d                                         ; $43c8: $aa
    sbc c                                         ; $43c9: $99
    sbc b                                         ; $43ca: $98
    halt                                          ; $43cb: $76
    ld h, a                                       ; $43cc: $67
    ld a, b                                       ; $43cd: $78
    cp h                                          ; $43ce: $bc
    jp z, $a89a                                   ; $43cf: $ca $9a $a8

    adc c                                         ; $43d2: $89
    cp l                                          ; $43d3: $bd
    cp $de                                        ; $43d4: $fe $de
    db $ec                                        ; $43d6: $ec
    sub a                                         ; $43d7: $97
    ld a, b                                       ; $43d8: $78
    ld [hl], a                                    ; $43d9: $77
    halt                                          ; $43da: $76
    ld h, l                                       ; $43db: $65
    ld h, a                                       ; $43dc: $67
    ld b, e                                       ; $43dd: $43
    scf                                           ; $43de: $37
    xor e                                         ; $43df: $ab
    call z, $edcd                                 ; $43e0: $cc $cd $ed
    res 5, e                                      ; $43e3: $cb $ab
    xor b                                         ; $43e5: $a8
    adc d                                         ; $43e6: $8a
    cp d                                          ; $43e7: $ba
    sbc b                                         ; $43e8: $98
    add a                                         ; $43e9: $87
    ld b, e                                       ; $43ea: $43
    ld b, d                                       ; $43eb: $42
    ld hl, $3412                                  ; $43ec: $21 $12 $34
    ld l, b                                       ; $43ef: $68
    adc c                                         ; $43f0: $89
    sbc d                                         ; $43f1: $9a
    cp d                                          ; $43f2: $ba
    add a                                         ; $43f3: $87
    ld d, h                                       ; $43f4: $54
    ld h, [hl]                                    ; $43f5: $66
    ld [hl], a                                    ; $43f6: $77
    ld h, [hl]                                    ; $43f7: $66
    ld h, h                                       ; $43f8: $64
    ld [hl-], a                                   ; $43f9: $32
    inc hl                                        ; $43fa: $23
    ld b, l                                       ; $43fb: $45
    ld b, d                                       ; $43fc: $42
    inc hl                                        ; $43fd: $23
    ld [hl], $9a                                  ; $43fe: $36 $9a
    cp e                                          ; $4400: $bb
    xor c                                         ; $4401: $a9
    xor h                                         ; $4402: $ac
    cp e                                          ; $4403: $bb
    cp d                                          ; $4404: $ba
    xor e                                         ; $4405: $ab
    cp e                                          ; $4406: $bb
    sbc b                                         ; $4407: $98
    adc b                                         ; $4408: $88
    ld h, e                                       ; $4409: $63
    db $10                                        ; $440a: $10
    ld [de], a                                    ; $440b: $12
    ld b, l                                       ; $440c: $45
    adc d                                         ; $440d: $8a
    sbc d                                         ; $440e: $9a
    call z, $99bb                                 ; $440f: $cc $bb $99
    xor h                                         ; $4412: $ac
    cp $b9                                        ; $4413: $fe $b9
    add a                                         ; $4415: $87
    adc b                                         ; $4416: $88
    ld a, b                                       ; $4417: $78
    ld h, e                                       ; $4418: $63
    inc h                                         ; $4419: $24
    ld h, a                                       ; $441a: $67
    ld a, b                                       ; $441b: $78
    sbc d                                         ; $441c: $9a
    res 7, h                                      ; $441d: $cb $bc
    sub l                                         ; $441f: $95
    ld d, [hl]                                    ; $4420: $56
    halt                                          ; $4421: $76
    ld d, h                                       ; $4422: $54
    ld l, b                                       ; $4423: $68
    sbc c                                         ; $4424: $99
    sbc b                                         ; $4425: $98
    ld h, a                                       ; $4426: $67
    adc c                                         ; $4427: $89
    add a                                         ; $4428: $87
    ld d, [hl]                                    ; $4429: $56
    ld b, l                                       ; $442a: $45
    ld d, l                                       ; $442b: $55
    ld d, l                                       ; $442c: $55
    ld b, l                                       ; $442d: $45
    ld d, [hl]                                    ; $442e: $56
    ld [hl], a                                    ; $442f: $77
    adc b                                         ; $4430: $88
    ld [hl], a                                    ; $4431: $77
    ld h, a                                       ; $4432: $67
    adc b                                         ; $4433: $88
    sbc b                                         ; $4434: $98
    add [hl]                                      ; $4435: $86
    ld h, h                                       ; $4436: $64
    ld e, d                                       ; $4437: $5a
    ret                                           ; $4438: $c9


    ld a, b                                       ; $4439: $78
    ld a, b                                       ; $443a: $78
    ld a, b                                       ; $443b: $78
    adc d                                         ; $443c: $8a
    db $dd                                        ; $443d: $dd
    cp d                                          ; $443e: $ba
    sbc d                                         ; $443f: $9a
    xor b                                         ; $4440: $a8
    adc c                                         ; $4441: $89
    sub a                                         ; $4442: $97
    ld h, [hl]                                    ; $4443: $66
    ld d, l                                       ; $4444: $55
    ld l, b                                       ; $4445: $68
    sbc b                                         ; $4446: $98
    ld h, a                                       ; $4447: $67
    sbc b                                         ; $4448: $98
    adc d                                         ; $4449: $8a
    cp l                                          ; $444a: $bd
    jp z, $6497                                   ; $444b: $ca $97 $64

    ld l, c                                       ; $444e: $69
    sbc e                                         ; $444f: $9b
    cp e                                          ; $4450: $bb
    adc b                                         ; $4451: $88
    xor d                                         ; $4452: $aa
    sub a                                         ; $4453: $97
    ld d, a                                       ; $4454: $57
    add a                                         ; $4455: $87
    ld h, a                                       ; $4456: $67
    add [hl]                                      ; $4457: $86
    ld [hl-], a                                   ; $4458: $32
    inc h                                         ; $4459: $24
    ld d, a                                       ; $445a: $57
    ld h, a                                       ; $445b: $67
    adc d                                         ; $445c: $8a
    xor c                                         ; $445d: $a9
    cp e                                          ; $445e: $bb
    xor b                                         ; $445f: $a8
    add a                                         ; $4460: $87
    adc c                                         ; $4461: $89
    add a                                         ; $4462: $87
    sbc c                                         ; $4463: $99
    xor c                                         ; $4464: $a9
    adc b                                         ; $4465: $88
    ld h, e                                       ; $4466: $63
    ld [hl+], a                                   ; $4467: $22
    ld [de], a                                    ; $4468: $12
    ld [hl+], a                                   ; $4469: $22
    ld [de], a                                    ; $446a: $12
    ld hl, $6824                                  ; $446b: $21 $24 $68
    halt                                          ; $446e: $76
    ld d, a                                       ; $446f: $57
    adc d                                         ; $4470: $8a
    xor e                                         ; $4471: $ab
    db $db                                        ; $4472: $db
    cp c                                          ; $4473: $b9
    sbc b                                         ; $4474: $98
    cp c                                          ; $4475: $b9
    add l                                         ; $4476: $85
    ld h, a                                       ; $4477: $67
    sbc d                                         ; $4478: $9a
    sub a                                         ; $4479: $97
    ld l, b                                       ; $447a: $68
    sbc c                                         ; $447b: $99
    xor h                                         ; $447c: $ac
    jp z, $96a9                                   ; $447d: $ca $a9 $96

    ld l, b                                       ; $4480: $68
    add a                                         ; $4481: $87
    ld h, l                                       ; $4482: $65
    ld h, a                                       ; $4483: $67
    adc c                                         ; $4484: $89
    sbc c                                         ; $4485: $99
    xor d                                         ; $4486: $aa
    cp e                                          ; $4487: $bb
    xor b                                         ; $4488: $a8
    ld h, [hl]                                    ; $4489: $66
    ld d, h                                       ; $448a: $54
    jr nz, jr_010_448d                            ; $448b: $20 $00

jr_010_448d:
    scf                                           ; $448d: $37
    ld h, l                                       ; $448e: $65
    ld d, l                                       ; $448f: $55
    ld h, a                                       ; $4490: $67
    halt                                          ; $4491: $76
    adc c                                         ; $4492: $89
    xor e                                         ; $4493: $ab
    sbc c                                         ; $4494: $99
    xor h                                         ; $4495: $ac
    sbc $da                                       ; $4496: $de $da
    cp d                                          ; $4498: $ba
    add a                                         ; $4499: $87
    adc c                                         ; $449a: $89
    cp e                                          ; $449b: $bb
    cp b                                          ; $449c: $b8
    ld h, [hl]                                    ; $449d: $66
    ld h, h                                       ; $449e: $64
    ld b, [hl]                                    ; $449f: $46
    ld l, c                                       ; $44a0: $69
    sbc b                                         ; $44a1: $98
    halt                                          ; $44a2: $76
    ld d, a                                       ; $44a3: $57
    adc b                                         ; $44a4: $88
    adc b                                         ; $44a5: $88
    and a                                         ; $44a6: $a7
    halt                                          ; $44a7: $76
    ld l, b                                       ; $44a8: $68
    ld a, b                                       ; $44a9: $78
    ld [hl], l                                    ; $44aa: $75

Call_010_44ab:
    ld b, h                                       ; $44ab: $44
    ld h, a                                       ; $44ac: $67
    ld h, [hl]                                    ; $44ad: $66
    ld h, [hl]                                    ; $44ae: $66
    ld d, l                                       ; $44af: $55
    ld h, [hl]                                    ; $44b0: $66
    adc b                                         ; $44b1: $88
    adc b                                         ; $44b2: $88
    ld h, [hl]                                    ; $44b3: $66
    add a                                         ; $44b4: $87
    ld d, l                                       ; $44b5: $55
    ld d, h                                       ; $44b6: $54
    ld d, h                                       ; $44b7: $54
    ld b, d                                       ; $44b8: $42
    ld [hl], $98                                  ; $44b9: $36 $98
    sbc b                                         ; $44bb: $98
    halt                                          ; $44bc: $76
    ld l, b                                       ; $44bd: $68
    xor l                                         ; $44be: $ad
    cp $cb                                        ; $44bf: $fe $cb
    rst $18                                       ; $44c1: $df
    db $db                                        ; $44c2: $db
    sbc c                                         ; $44c3: $99
    xor c                                         ; $44c4: $a9
    add [hl]                                      ; $44c5: $86
    ld h, h                                       ; $44c6: $64
    ld [hl], $89                                  ; $44c7: $36 $89
    sbc b                                         ; $44c9: $98
    sbc c                                         ; $44ca: $99
    sbc b                                         ; $44cb: $98
    ld [hl], a                                    ; $44cc: $77
    halt                                          ; $44cd: $76
    ld d, l                                       ; $44ce: $55
    ld l, b                                       ; $44cf: $68
    sbc h                                         ; $44d0: $9c
    cp $c9                                        ; $44d1: $fe $c9
    sbc c                                         ; $44d3: $99
    sub [hl]                                      ; $44d4: $96
    ld b, e                                       ; $44d5: $43
    ld [hl-], a                                   ; $44d6: $32
    dec [hl]                                      ; $44d7: $35
    ld d, h                                       ; $44d8: $54
    ld h, a                                       ; $44d9: $67
    adc d                                         ; $44da: $8a
    sub a                                         ; $44db: $97
    sbc b                                         ; $44dc: $98
    add a                                         ; $44dd: $87
    ld h, a                                       ; $44de: $67
    ld a, c                                       ; $44df: $79
    xor c                                         ; $44e0: $a9
    sbc d                                         ; $44e1: $9a
    and a                                         ; $44e2: $a7
    ld b, [hl]                                    ; $44e3: $46
    ld h, [hl]                                    ; $44e4: $66
    ld h, [hl]                                    ; $44e5: $66
    ld l, b                                       ; $44e6: $68
    ld [hl], l                                    ; $44e7: $75
    ld d, e                                       ; $44e8: $53
    inc [hl]                                      ; $44e9: $34
    ld l, b                                       ; $44ea: $68
    sbc d                                         ; $44eb: $9a
    call z, $aaba                                 ; $44ec: $cc $ba $aa
    cp e                                          ; $44ef: $bb
    sbc b                                         ; $44f0: $98
    ld a, c                                       ; $44f1: $79
    adc c                                         ; $44f2: $89
    add a                                         ; $44f3: $87
    ld a, b                                       ; $44f4: $78
    ld h, h                                       ; $44f5: $64
    ld hl, $6814                                  ; $44f6: $21 $14 $68
    add a                                         ; $44f9: $87
    ld h, h                                       ; $44fa: $64
    ld b, l                                       ; $44fb: $45
    ld a, b                                       ; $44fc: $78
    add l                                         ; $44fd: $85
    ld b, h                                       ; $44fe: $44
    ld b, l                                       ; $44ff: $45
    adc e                                         ; $4500: $8b
    cp d                                          ; $4501: $ba
    xor e                                         ; $4502: $ab
    xor b                                         ; $4503: $a8
    ld a, b                                       ; $4504: $78
    ld [hl], a                                    ; $4505: $77
    ld h, [hl]                                    ; $4506: $66
    ld a, b                                       ; $4507: $78
    sbc d                                         ; $4508: $9a
    cp l                                          ; $4509: $bd
    rst $28                                       ; $450a: $ef
    res 7, d                                      ; $450b: $cb $ba
    sbc c                                         ; $450d: $99
    add a                                         ; $450e: $87
    ld h, h                                       ; $450f: $64
    ld [hl+], a                                   ; $4510: $22
    inc sp                                        ; $4511: $33
    ld d, [hl]                                    ; $4512: $56
    ld a, b                                       ; $4513: $78
    add a                                         ; $4514: $87
    ld [hl], a                                    ; $4515: $77
    ld h, [hl]                                    ; $4516: $66
    ld h, l                                       ; $4517: $65
    ld h, a                                       ; $4518: $67
    ld [hl], a                                    ; $4519: $77
    xor h                                         ; $451a: $ac
    res 7, c                                      ; $451b: $cb $b9
    xor e                                         ; $451d: $ab
    xor b                                         ; $451e: $a8
    adc b                                         ; $451f: $88
    xor e                                         ; $4520: $ab
    cp d                                          ; $4521: $ba
    add a                                         ; $4522: $87
    ld b, b                                       ; $4523: $40
    ld bc, $3365                                  ; $4524: $01 $65 $33
    ld d, [hl]                                    ; $4527: $56
    ld [hl], a                                    ; $4528: $77
    ld h, [hl]                                    ; $4529: $66
    ld l, b                                       ; $452a: $68
    sbc d                                         ; $452b: $9a
    sbc d                                         ; $452c: $9a
    cp h                                          ; $452d: $bc
    db $dd                                        ; $452e: $dd
    res 0, [hl]                                   ; $452f: $cb $86
    ld h, l                                       ; $4531: $65
    ld d, [hl]                                    ; $4532: $56
    ld [hl], a                                    ; $4533: $77
    add a                                         ; $4534: $87
    ld h, [hl]                                    ; $4535: $66
    ld h, l                                       ; $4536: $65
    ld h, a                                       ; $4537: $67
    adc b                                         ; $4538: $88
    adc b                                         ; $4539: $88
    sbc c                                         ; $453a: $99
    sbc d                                         ; $453b: $9a
    call z, Call_010_74b9                         ; $453c: $cc $b9 $74
    ld [hl-], a                                   ; $453f: $32
    ld b, e                                       ; $4540: $43
    ld hl, $6602                                  ; $4541: $21 $02 $66
    ld [hl], a                                    ; $4544: $77
    ld a, b                                       ; $4545: $78
    sbc c                                         ; $4546: $99
    sbc e                                         ; $4547: $9b
    res 7, e                                      ; $4548: $cb $bb
    xor d                                         ; $454a: $aa
    sbc c                                         ; $454b: $99
    halt                                          ; $454c: $76
    ld a, b                                       ; $454d: $78
    xor b                                         ; $454e: $a8
    ld d, a                                       ; $454f: $57
    ld h, [hl]                                    ; $4550: $66
    adc c                                         ; $4551: $89
    sbc d                                         ; $4552: $9a
    xor d                                         ; $4553: $aa
    xor d                                         ; $4554: $aa
    xor e                                         ; $4555: $ab
    cp e                                          ; $4556: $bb
    xor e                                         ; $4557: $ab
    xor c                                         ; $4558: $a9
    sbc b                                         ; $4559: $98
    ld [hl], a                                    ; $455a: $77
    ld h, [hl]                                    ; $455b: $66
    ld a, d                                       ; $455c: $7a
    add [hl]                                      ; $455d: $86
    ld h, [hl]                                    ; $455e: $66
    ld b, e                                       ; $455f: $43
    inc sp                                        ; $4560: $33
    jr nz, jr_010_4564                            ; $4561: $20 $01

    inc hl                                        ; $4563: $23

jr_010_4564:
    ld b, [hl]                                    ; $4564: $46
    adc b                                         ; $4565: $88
    sbc c                                         ; $4566: $99
    ld a, b                                       ; $4567: $78
    cp h                                          ; $4568: $bc
    db $ed                                        ; $4569: $ed
    db $ec                                        ; $456a: $ec
    xor d                                         ; $456b: $aa
    sbc c                                         ; $456c: $99
    ld h, l                                       ; $456d: $65
    ld d, a                                       ; $456e: $57
    add [hl]                                      ; $456f: $86

Call_010_4570:
    ld h, l                                       ; $4570: $65
    ld d, l                                       ; $4571: $55
    ld h, a                                       ; $4572: $67
    ld [hl], l                                    ; $4573: $75
    ld h, h                                       ; $4574: $64
    inc de                                        ; $4575: $13
    ld [de], a                                    ; $4576: $12
    inc [hl]                                      ; $4577: $34
    ld l, d                                       ; $4578: $6a
    cp e                                          ; $4579: $bb
    cp e                                          ; $457a: $bb
    res 7, d                                      ; $457b: $cb $ba
    sub a                                         ; $457d: $97
    ld a, b                                       ; $457e: $78
    sbc c                                         ; $457f: $99
    sbc e                                         ; $4580: $9b
    call z, $a8dc                                 ; $4581: $cc $dc $a8

Call_010_4584:
    sbc d                                         ; $4584: $9a
    sbc c                                         ; $4585: $99
    ld [hl], l                                    ; $4586: $75
    ld [hl], a                                    ; $4587: $77
    sbc d                                         ; $4588: $9a
    add [hl]                                      ; $4589: $86
    ld [hl-], a                                   ; $458a: $32
    ld hl, $5524                                  ; $458b: $21 $24 $55
    ld d, [hl]                                    ; $458e: $56
    ld h, a                                       ; $458f: $67
    adc d                                         ; $4590: $8a
    cp d                                          ; $4591: $ba
    sbc c                                         ; $4592: $99
    adc b                                         ; $4593: $88
    ld a, b                                       ; $4594: $78
    adc b                                         ; $4595: $88
    sbc c                                         ; $4596: $99
    adc e                                         ; $4597: $8b
    cp h                                          ; $4598: $bc
    cp b                                          ; $4599: $b8
    ld h, a                                       ; $459a: $67
    halt                                          ; $459b: $76
    ld d, l                                       ; $459c: $55
    ld l, c                                       ; $459d: $69
    xor d                                         ; $459e: $aa
    adc c                                         ; $459f: $89
    adc c                                         ; $45a0: $89
    sbc d                                         ; $45a1: $9a
    add l                                         ; $45a2: $85
    inc sp                                        ; $45a3: $33
    ld d, l                                       ; $45a4: $55
    ld d, h                                       ; $45a5: $54
    ld d, [hl]                                    ; $45a6: $56

Call_010_45a7:
    ld a, c                                       ; $45a7: $79
    sbc b                                         ; $45a8: $98
    ld a, b                                       ; $45a9: $78
    add [hl]                                      ; $45aa: $86
    ld b, e                                       ; $45ab: $43
    dec [hl]                                      ; $45ac: $35
    ld h, a                                       ; $45ad: $67
    ld d, [hl]                                    ; $45ae: $56
    ld h, [hl]                                    ; $45af: $66
    ld b, h                                       ; $45b0: $44
    dec [hl]                                      ; $45b1: $35
    adc b                                         ; $45b2: $88
    call z, $ddcc                                 ; $45b3: $cc $cc $dd
    db $dd                                        ; $45b6: $dd
    res 4, a                                      ; $45b7: $cb $a7
    ld d, [hl]                                    ; $45b9: $56
    halt                                          ; $45ba: $76
    ld d, h                                       ; $45bb: $54
    dec [hl]                                      ; $45bc: $35
    halt                                          ; $45bd: $76
    ld d, h                                       ; $45be: $54
    inc [hl]                                      ; $45bf: $34
    ld b, [hl]                                    ; $45c0: $46
    sbc e                                         ; $45c1: $9b
    adc $fe                                       ; $45c2: $ce $fe
    ret                                           ; $45c4: $c9


    xor b                                         ; $45c5: $a8
    cp e                                          ; $45c6: $bb
    cp c                                          ; $45c7: $b9
    ld d, h                                       ; $45c8: $54
    ld d, [hl]                                    ; $45c9: $56
    ld b, a                                       ; $45ca: $47
    ld [hl], h                                    ; $45cb: $74
    ld d, h                                       ; $45cc: $54
    ld b, e                                       ; $45cd: $43
    ld d, l                                       ; $45ce: $55
    ld a, c                                       ; $45cf: $79
    sbc c                                         ; $45d0: $99
    xor d                                         ; $45d1: $aa
    cp l                                          ; $45d2: $bd
    and l                                         ; $45d3: $a5
    ld de, $6813                                  ; $45d4: $11 $13 $68
    add a                                         ; $45d7: $87
    ld d, [hl]                                    ; $45d8: $56
    ld d, [hl]                                    ; $45d9: $56
    adc e                                         ; $45da: $8b
    cp e                                          ; $45db: $bb
    xor c                                         ; $45dc: $a9
    sbc c                                         ; $45dd: $99
    adc b                                         ; $45de: $88
    sbc d                                         ; $45df: $9a
    add a                                         ; $45e0: $87
    ld d, e                                       ; $45e1: $53
    ld b, h                                       ; $45e2: $44
    ld l, c                                       ; $45e3: $69
    xor e                                         ; $45e4: $ab
    xor d                                         ; $45e5: $aa
    add l                                         ; $45e6: $85
    ld b, h                                       ; $45e7: $44
    ld b, h                                       ; $45e8: $44
    ld b, e                                       ; $45e9: $43
    ld d, h                                       ; $45ea: $54
    ld b, l                                       ; $45eb: $45
    adc b                                         ; $45ec: $88
    halt                                          ; $45ed: $76
    ld a, b                                       ; $45ee: $78
    xor d                                         ; $45ef: $aa
    cp d                                          ; $45f0: $ba
    xor c                                         ; $45f1: $a9
    sbc d                                         ; $45f2: $9a
    rst $18                                       ; $45f3: $df
    db $ed                                        ; $45f4: $ed
    ret                                           ; $45f5: $c9


    xor b                                         ; $45f6: $a8
    add a                                         ; $45f7: $87
    halt                                          ; $45f8: $76
    ld d, [hl]                                    ; $45f9: $56
    ld l, b                                       ; $45fa: $68
    xor e                                         ; $45fb: $ab
    cp e                                          ; $45fc: $bb
    xor b                                         ; $45fd: $a8
    ld h, l                                       ; $45fe: $65
    add a                                         ; $45ff: $87
    add a                                         ; $4600: $87
    ld h, h                                       ; $4601: $64
    ld d, h                                       ; $4602: $54
    ld d, [hl]                                    ; $4603: $56
    ld d, l                                       ; $4604: $55
    ld h, l                                       ; $4605: $65
    ld d, a                                       ; $4606: $57
    ld d, h                                       ; $4607: $54
    ld b, l                                       ; $4608: $45
    ld d, l                                       ; $4609: $55
    ld l, b                                       ; $460a: $68
    ld l, b                                       ; $460b: $68
    xor l                                         ; $460c: $ad
    ld [$9979], a                                 ; $460d: $ea $79 $99
    cp d                                          ; $4610: $ba
    halt                                          ; $4611: $76
    ld [hl], a                                    ; $4612: $77
    add [hl]                                      ; $4613: $86
    ld d, [hl]                                    ; $4614: $56
    ld d, e                                       ; $4615: $53
    inc sp                                        ; $4616: $33
    ld b, l                                       ; $4617: $45
    ld d, [hl]                                    ; $4618: $56
    ld a, c                                       ; $4619: $79
    xor c                                         ; $461a: $a9
    xor c                                         ; $461b: $a9
    xor d                                         ; $461c: $aa
    xor d                                         ; $461d: $aa
    res 5, c                                      ; $461e: $cb $a9
    sbc b                                         ; $4620: $98
    sbc e                                         ; $4621: $9b
    cp d                                          ; $4622: $ba
    sbc b                                         ; $4623: $98
    halt                                          ; $4624: $76
    ld h, [hl]                                    ; $4625: $66
    ld h, a                                       ; $4626: $67
    add l                                         ; $4627: $85
    ld d, l                                       ; $4628: $55
    adc c                                         ; $4629: $89
    xor b                                         ; $462a: $a8
    add a                                         ; $462b: $87
    ld [hl], a                                    ; $462c: $77
    adc b                                         ; $462d: $88
    ld [hl], h                                    ; $462e: $74
    ld b, e                                       ; $462f: $43
    ld sp, $2511                                  ; $4630: $31 $11 $25
    adc d                                         ; $4633: $8a
    res 3, b                                      ; $4634: $cb $98
    adc b                                         ; $4636: $88
    adc d                                         ; $4637: $8a
    cp d                                          ; $4638: $ba
    cp h                                          ; $4639: $bc
    sbc $fe                                       ; $463a: $de $fe
    jp z, Jump_010_6575                           ; $463c: $ca $75 $65

    ld h, a                                       ; $463f: $67
    ld l, b                                       ; $4640: $68
    adc b                                         ; $4641: $88
    halt                                          ; $4642: $76
    halt                                          ; $4643: $76
    halt                                          ; $4644: $76
    ld d, l                                       ; $4645: $55
    ld h, [hl]                                    ; $4646: $66
    ld h, [hl]                                    ; $4647: $66
    ld h, l                                       ; $4648: $65
    ld h, [hl]                                    ; $4649: $66
    ld d, l                                       ; $464a: $55
    ld [hl+], a                                   ; $464b: $22
    ld b, [hl]                                    ; $464c: $46
    ld h, [hl]                                    ; $464d: $66
    ld h, a                                       ; $464e: $67
    sbc b                                         ; $464f: $98
    add [hl]                                      ; $4650: $86
    ld d, e                                       ; $4651: $53
    ld b, a                                       ; $4652: $47
    sbc c                                         ; $4653: $99
    add a                                         ; $4654: $87
    ld [hl], l                                    ; $4655: $75
    ld d, l                                       ; $4656: $55
    ld e, b                                       ; $4657: $58
    sbc e                                         ; $4658: $9b
    rst $38                                       ; $4659: $ff
    db $ed                                        ; $465a: $ed
    ret                                           ; $465b: $c9


    res 5, c                                      ; $465c: $cb $a9
    sbc c                                         ; $465e: $99
    ld l, b                                       ; $465f: $68
    adc b                                         ; $4660: $88
    ld [hl], a                                    ; $4661: $77
    adc c                                         ; $4662: $89
    sbc d                                         ; $4663: $9a

Jump_010_4664:
    sub a                                         ; $4664: $97
    ld d, [hl]                                    ; $4665: $56
    adc c                                         ; $4666: $89
    add a                                         ; $4667: $87
    ld h, e                                       ; $4668: $63
    dec [hl]                                      ; $4669: $35
    adc c                                         ; $466a: $89
    xor e                                         ; $466b: $ab
    cp e                                          ; $466c: $bb
    cp d                                          ; $466d: $ba
    sbc b                                         ; $466e: $98
    halt                                          ; $466f: $76
    ld d, e                                       ; $4670: $53
    ld b, l                                       ; $4671: $45
    ld b, [hl]                                    ; $4672: $46
    sbc c                                         ; $4673: $99
    xor c                                         ; $4674: $a9
    sbc c                                         ; $4675: $99
    ld [hl], h                                    ; $4676: $74
    ld d, h                                       ; $4677: $54
    ld [de], a                                    ; $4678: $12
    ld d, l                                       ; $4679: $55
    inc sp                                        ; $467a: $33
    ld d, l                                       ; $467b: $55
    add [hl]                                      ; $467c: $86
    ld a, c                                       ; $467d: $79
    cp c                                          ; $467e: $b9
    ld [hl], a                                    ; $467f: $77
    adc b                                         ; $4680: $88
    ld a, b                                       ; $4681: $78
    xor b                                         ; $4682: $a8
    ld b, l                                       ; $4683: $45
    ld b, h                                       ; $4684: $44
    ld l, b                                       ; $4685: $68
    sbc b                                         ; $4686: $98
    adc b                                         ; $4687: $88
    sbc c                                         ; $4688: $99
    sbc e                                         ; $4689: $9b
    cp c                                          ; $468a: $b9
    ld a, c                                       ; $468b: $79
    sbc b                                         ; $468c: $98
    xor e                                         ; $468d: $ab
    res 2, [hl]                                   ; $468e: $cb $96
    inc sp                                        ; $4690: $33
    ld b, l                                       ; $4691: $45
    ld b, h                                       ; $4692: $44
    dec [hl]                                      ; $4693: $35
    ld b, l                                       ; $4694: $45
    ld l, c                                       ; $4695: $69
    sbc d                                         ; $4696: $9a
    ld h, l                                       ; $4697: $65
    ld d, e                                       ; $4698: $53
    ld l, c                                       ; $4699: $69
    sbc d                                         ; $469a: $9a
    xor c                                         ; $469b: $a9
    xor c                                         ; $469c: $a9
    sbc e                                         ; $469d: $9b
    db $dd                                        ; $469e: $dd
    call c, $fdef                                 ; $469f: $dc $ef $fd
    res 2, [hl]                                   ; $46a2: $cb $96
    ld b, e                                       ; $46a4: $43
    ld b, l                                       ; $46a5: $45
    ld h, [hl]                                    ; $46a6: $66
    ld b, h                                       ; $46a7: $44
    ld hl, $3602                                  ; $46a8: $21 $02 $36
    adc c                                         ; $46ab: $89
    adc b                                         ; $46ac: $88
    adc d                                         ; $46ad: $8a
    sbc c                                         ; $46ae: $99
    adc b                                         ; $46af: $88
    add a                                         ; $46b0: $87
    adc b                                         ; $46b1: $88
    ld a, b                                       ; $46b2: $78
    sbc d                                         ; $46b3: $9a
    cp d                                          ; $46b4: $ba
    sub a                                         ; $46b5: $97
    halt                                          ; $46b6: $76
    ld d, [hl]                                    ; $46b7: $56
    adc b                                         ; $46b8: $88
    adc c                                         ; $46b9: $89
    sbc d                                         ; $46ba: $9a
    sub a                                         ; $46bb: $97
    ld l, b                                       ; $46bc: $68
    ld [hl], a                                    ; $46bd: $77
    ld d, [hl]                                    ; $46be: $56
    ld h, l                                       ; $46bf: $65
    ld h, l                                       ; $46c0: $65
    ld d, h                                       ; $46c1: $54
    ld d, [hl]                                    ; $46c2: $56
    ld h, l                                       ; $46c3: $65
    ld h, [hl]                                    ; $46c4: $66
    add a                                         ; $46c5: $87
    ld [hl], a                                    ; $46c6: $77
    sbc e                                         ; $46c7: $9b
    jp z, $87aa                                   ; $46c8: $ca $aa $87

    ld [hl], a                                    ; $46cb: $77
    adc b                                         ; $46cc: $88
    sbc b                                         ; $46cd: $98
    ld h, [hl]                                    ; $46ce: $66
    ld h, [hl]                                    ; $46cf: $66
    ld h, a                                       ; $46d0: $67
    ld h, [hl]                                    ; $46d1: $66
    ld [hl], h                                    ; $46d2: $74
    ld d, [hl]                                    ; $46d3: $56
    adc c                                         ; $46d4: $89
    sbc e                                         ; $46d5: $9b
    cp [hl]                                       ; $46d6: $be
    cp $cb                                        ; $46d7: $fe $cb
    sbc b                                         ; $46d9: $98
    halt                                          ; $46da: $76
    ld a, b                                       ; $46db: $78
    add a                                         ; $46dc: $87
    sbc b                                         ; $46dd: $98
    adc b                                         ; $46de: $88
    sbc b                                         ; $46df: $98
    add [hl]                                      ; $46e0: $86
    ld b, e                                       ; $46e1: $43
    inc [hl]                                      ; $46e2: $34
    ld b, [hl]                                    ; $46e3: $46
    ld h, [hl]                                    ; $46e4: $66
    ld a, b                                       ; $46e5: $78
    xor b                                         ; $46e6: $a8
    ld h, a                                       ; $46e7: $67
    adc b                                         ; $46e8: $88
    ld l, b                                       ; $46e9: $68
    xor d                                         ; $46ea: $aa
    add a                                         ; $46eb: $87
    ld h, [hl]                                    ; $46ec: $66
    ld h, h                                       ; $46ed: $64
    ld [hl+], a                                   ; $46ee: $22
    inc h                                         ; $46ef: $24
    ld b, h                                       ; $46f0: $44
    ld [hl-], a                                   ; $46f1: $32
    dec [hl]                                      ; $46f2: $35
    ld d, a                                       ; $46f3: $57
    sbc c                                         ; $46f4: $99
    xor d                                         ; $46f5: $aa
    cp e                                          ; $46f6: $bb
    cp h                                          ; $46f7: $bc
    jp z, $a8aa                                   ; $46f8: $ca $aa $a8

    ld h, [hl]                                    ; $46fb: $66
    ld a, b                                       ; $46fc: $78
    adc b                                         ; $46fd: $88
    xor e                                         ; $46fe: $ab
    sub a                                         ; $46ff: $97
    adc c                                         ; $4700: $89
    xor c                                         ; $4701: $a9
    add a                                         ; $4702: $87
    sub a                                         ; $4703: $97
    xor c                                         ; $4704: $a9
    sbc b                                         ; $4705: $98
    ld a, b                                       ; $4706: $78
    ld [hl], a                                    ; $4707: $77
    ld h, a                                       ; $4708: $67
    ld d, h                                       ; $4709: $54
    ld b, l                                       ; $470a: $45
    ld h, a                                       ; $470b: $67
    adc d                                         ; $470c: $8a
    add [hl]                                      ; $470d: $86
    ld a, b                                       ; $470e: $78
    adc c                                         ; $470f: $89
    cp h                                          ; $4710: $bc
    cp e                                          ; $4711: $bb
    adc c                                         ; $4712: $89
    adc b                                         ; $4713: $88
    xor c                                         ; $4714: $a9
    ld a, c                                       ; $4715: $79
    xor e                                         ; $4716: $ab
    sbc b                                         ; $4717: $98
    sbc c                                         ; $4718: $99
    ld h, h                                       ; $4719: $64
    inc sp                                        ; $471a: $33
    ld b, h                                       ; $471b: $44
    ld d, h                                       ; $471c: $54
    ld b, h                                       ; $471d: $44
    inc sp                                        ; $471e: $33
    ld l, b                                       ; $471f: $68
    sbc c                                         ; $4720: $99
    adc c                                         ; $4721: $89
    cp [hl]                                       ; $4722: $be
    db $db                                        ; $4723: $db
    cp b                                          ; $4724: $b8
    sbc d                                         ; $4725: $9a
    ret                                           ; $4726: $c9


    ld [hl], a                                    ; $4727: $77
    dec [hl]                                      ; $4728: $35
    ld a, b                                       ; $4729: $78
    ld h, l                                       ; $472a: $65
    inc sp                                        ; $472b: $33
    ld a, c                                       ; $472c: $79
    sub a                                         ; $472d: $97
    ld d, a                                       ; $472e: $57
    adc c                                         ; $472f: $89
    xor e                                         ; $4730: $ab
    adc $ed                                       ; $4731: $ce $ed
    cp h                                          ; $4733: $bc
    cp c                                          ; $4734: $b9
    xor d                                         ; $4735: $aa
    ld d, e                                       ; $4736: $53
    ld [hl+], a                                   ; $4737: $22
    inc [hl]                                      ; $4738: $34
    ld h, a                                       ; $4739: $67
    ld [hl], a                                    ; $473a: $77
    ld b, h                                       ; $473b: $44
    ld e, c                                       ; $473c: $59
    sbc b                                         ; $473d: $98
    ld d, h                                       ; $473e: $54
    ld d, [hl]                                    ; $473f: $56
    ld l, d                                       ; $4740: $6a
    xor c                                         ; $4741: $a9
    sbc b                                         ; $4742: $98
    ld [hl], a                                    ; $4743: $77
    ld d, [hl]                                    ; $4744: $56
    ld l, b                                       ; $4745: $68
    sbc c                                         ; $4746: $99
    add a                                         ; $4747: $87
    ld h, l                                       ; $4748: $65
    ld d, l                                       ; $4749: $55
    ld d, [hl]                                    ; $474a: $56
    ld h, a                                       ; $474b: $67
    sbc d                                         ; $474c: $9a
    xor e                                         ; $474d: $ab
    xor c                                         ; $474e: $a9
    add a                                         ; $474f: $87
    ld b, e                                       ; $4750: $43
    ld [hl+], a                                   ; $4751: $22
    ld de, $6734                                  ; $4752: $11 $34 $67
    ld h, l                                       ; $4755: $65
    inc sp                                        ; $4756: $33
    inc h                                         ; $4757: $24
    ld a, e                                       ; $4758: $7b
    call $aaba                                    ; $4759: $cd $ba $aa
    cp e                                          ; $475c: $bb
    xor d                                         ; $475d: $aa
    xor e                                         ; $475e: $ab
    call $b8dd                                    ; $475f: $cd $dd $b8
    ld a, b                                       ; $4762: $78
    adc c                                         ; $4763: $89
    xor d                                         ; $4764: $aa
    ld a, d                                       ; $4765: $7a
    jp z, $9898                                   ; $4766: $ca $98 $98

    xor b                                         ; $4769: $a8
    sbc b                                         ; $476a: $98
    adc b                                         ; $476b: $88
    ld [hl], a                                    ; $476c: $77
    add a                                         ; $476d: $87
    ld d, l                                       ; $476e: $55
    ld h, [hl]                                    ; $476f: $66
    adc c                                         ; $4770: $89
    call $85db                                    ; $4771: $cd $db $85
    ld h, [hl]                                    ; $4774: $66
    ld [hl], l                                    ; $4775: $75
    inc [hl]                                      ; $4776: $34
    ld a, d                                       ; $4777: $7a
    adc b                                         ; $4778: $88
    add l                                         ; $4779: $85
    ld h, l                                       ; $477a: $65
    ld b, d                                       ; $477b: $42
    dec h                                         ; $477c: $25
    ld d, l                                       ; $477d: $55
    ld b, [hl]                                    ; $477e: $46
    adc b                                         ; $477f: $88
    add [hl]                                      ; $4780: $86
    ld b, l                                       ; $4781: $45
    ld l, b                                       ; $4782: $68
    xor c                                         ; $4783: $a9
    ld h, l                                       ; $4784: $65
    ld d, [hl]                                    ; $4785: $56
    ld h, l                                       ; $4786: $65
    ld d, [hl]                                    ; $4787: $56
    halt                                          ; $4788: $76
    ld b, c                                       ; $4789: $41
    inc de                                        ; $478a: $13
    sbc l                                         ; $478b: $9d
    call z, $89ba                                 ; $478c: $cc $ba $89
    adc b                                         ; $478f: $88
    xor e                                         ; $4790: $ab
    xor d                                         ; $4791: $aa
    sbc b                                         ; $4792: $98
    cp h                                          ; $4793: $bc
    call Call_010_77ca                            ; $4794: $cd $ca $77
    ld h, e                                       ; $4797: $63
    adc c                                         ; $4798: $89
    add l                                         ; $4799: $85
    inc [hl]                                      ; $479a: $34
    ld h, a                                       ; $479b: $67
    halt                                          ; $479c: $76
    ld [hl], a                                    ; $479d: $77
    ld h, [hl]                                    ; $479e: $66
    adc d                                         ; $479f: $8a
    db $dd                                        ; $47a0: $dd
    db $dd                                        ; $47a1: $dd
    res 5, d                                      ; $47a2: $cb $aa
    sbc c                                         ; $47a4: $99
    add [hl]                                      ; $47a5: $86
    ld d, l                                       ; $47a6: $55
    ld h, l                                       ; $47a7: $65
    ld d, l                                       ; $47a8: $55
    ld h, l                                       ; $47a9: $65
    inc [hl]                                      ; $47aa: $34
    ld d, a                                       ; $47ab: $57
    adc b                                         ; $47ac: $88
    sbc b                                         ; $47ad: $98
    adc b                                         ; $47ae: $88
    sbc c                                         ; $47af: $99
    add l                                         ; $47b0: $85
    ld [hl-], a                                   ; $47b1: $32
    inc de                                        ; $47b2: $13
    ld d, a                                       ; $47b3: $57
    sbc c                                         ; $47b4: $99
    ld h, [hl]                                    ; $47b5: $66
    inc [hl]                                      ; $47b6: $34
    ld d, h                                       ; $47b7: $54
    ld d, a                                       ; $47b8: $57
    xor h                                         ; $47b9: $ac
    xor $ef                                       ; $47ba: $ee $ef
    call c, $a9c9                                 ; $47bc: $dc $c9 $a9
    cp e                                          ; $47bf: $bb
    sbc b                                         ; $47c0: $98
    ld [hl], a                                    ; $47c1: $77
    ld b, e                                       ; $47c2: $43
    inc sp                                        ; $47c3: $33
    ld [hl-], a                                   ; $47c4: $32
    inc h                                         ; $47c5: $24
    adc c                                         ; $47c6: $89
    sbc e                                         ; $47c7: $9b
    xor d                                         ; $47c8: $aa
    xor b                                         ; $47c9: $a8
    halt                                          ; $47ca: $76
    ld d, [hl]                                    ; $47cb: $56
    ld d, l                                       ; $47cc: $55
    ld [hl], a                                    ; $47cd: $77
    adc b                                         ; $47ce: $88
    xor e                                         ; $47cf: $ab
    add a                                         ; $47d0: $87
    ld h, [hl]                                    ; $47d1: $66
    ld e, c                                       ; $47d2: $59
    sbc d                                         ; $47d3: $9a
    call c, $aaa9                                 ; $47d4: $dc $a9 $aa
    xor c                                         ; $47d7: $a9
    sbc b                                         ; $47d8: $98
    ld d, [hl]                                    ; $47d9: $56
    adc b                                         ; $47da: $88
    ld h, [hl]                                    ; $47db: $66
    ld b, e                                       ; $47dc: $43
    ld b, a                                       ; $47dd: $47
    ld [hl], l                                    ; $47de: $75
    ld de, $3423                                  ; $47df: $11 $23 $34
    ld a, c                                       ; $47e2: $79
    sbc c                                         ; $47e3: $99
    xor d                                         ; $47e4: $aa
    adc c                                         ; $47e5: $89
    sbc c                                         ; $47e6: $99
    cp c                                          ; $47e7: $b9
    adc $a8                                       ; $47e8: $ce $a8
    ld h, [hl]                                    ; $47ea: $66
    sbc d                                         ; $47eb: $9a
    sub a                                         ; $47ec: $97
    ld h, [hl]                                    ; $47ed: $66
    ld [hl], a                                    ; $47ee: $77
    adc d                                         ; $47ef: $8a
    cp e                                          ; $47f0: $bb
    cp d                                          ; $47f1: $ba
    add l                                         ; $47f2: $85
    ld [hl-], a                                   ; $47f3: $32
    ld [hl-], a                                   ; $47f4: $32
    dec [hl]                                      ; $47f5: $35
    ld b, h                                       ; $47f6: $44
    halt                                          ; $47f7: $76
    adc b                                         ; $47f8: $88
    sbc b                                         ; $47f9: $98
    xor e                                         ; $47fa: $ab
    xor h                                         ; $47fb: $ac
    res 7, c                                      ; $47fc: $cb $b9
    sub a                                         ; $47fe: $97
    ld h, l                                       ; $47ff: $65
    adc c                                         ; $4800: $89
    cp d                                          ; $4801: $ba
    xor b                                         ; $4802: $a8
    ld [hl], a                                    ; $4803: $77
    ld d, e                                       ; $4804: $53
    ld b, h                                       ; $4805: $44
    ld d, [hl]                                    ; $4806: $56
    ld d, [hl]                                    ; $4807: $56
    ld a, c                                       ; $4808: $79
    adc b                                         ; $4809: $88
    xor d                                         ; $480a: $aa
    sub [hl]                                      ; $480b: $96
    ld [hl], a                                    ; $480c: $77
    ld [hl], l                                    ; $480d: $75
    inc sp                                        ; $480e: $33
    ld d, h                                       ; $480f: $54
    ld h, [hl]                                    ; $4810: $66
    ld h, [hl]                                    ; $4811: $66
    ld [hl], a                                    ; $4812: $77
    ld a, b                                       ; $4813: $78
    sbc b                                         ; $4814: $98
    ld a, b                                       ; $4815: $78
    cp l                                          ; $4816: $bd
    rst $38                                       ; $4817: $ff
    jp z, $98ca                                   ; $4818: $ca $ca $98

    adc c                                         ; $481b: $89
    sbc b                                         ; $481c: $98
    halt                                          ; $481d: $76
    ld d, h                                       ; $481e: $54
    ld b, l                                       ; $481f: $45
    ld d, h                                       ; $4820: $54
    ld b, h                                       ; $4821: $44
    ld h, [hl]                                    ; $4822: $66
    ld [hl], l                                    ; $4823: $75
    ld d, [hl]                                    ; $4824: $56
    adc c                                         ; $4825: $89
    sbc b                                         ; $4826: $98
    sbc b                                         ; $4827: $98
    adc c                                         ; $4828: $89
    adc b                                         ; $4829: $88
    sbc c                                         ; $482a: $99
    sbc b                                         ; $482b: $98
    adc b                                         ; $482c: $88
    add a                                         ; $482d: $87
    ld a, b                                       ; $482e: $78
    ld a, b                                       ; $482f: $78
    sbc d                                         ; $4830: $9a
    add l                                         ; $4831: $85
    ld [hl-], a                                   ; $4832: $32
    inc hl                                        ; $4833: $23
    inc [hl]                                      ; $4834: $34
    ld b, h                                       ; $4835: $44
    ld d, l                                       ; $4836: $55
    ld d, a                                       ; $4837: $57
    sbc h                                         ; $4838: $9c
    cp c                                          ; $4839: $b9
    adc b                                         ; $483a: $88
    adc c                                         ; $483b: $89
    adc c                                         ; $483c: $89
    xor c                                         ; $483d: $a9
    sbc b                                         ; $483e: $98
    adc d                                         ; $483f: $8a
    xor e                                         ; $4840: $ab
    call z, $efbc                                 ; $4841: $cc $bc $ef
    reti                                          ; $4844: $d9


    sbc b                                         ; $4845: $98
    halt                                          ; $4846: $76
    ld [hl], a                                    ; $4847: $77
    ld h, [hl]                                    ; $4848: $66
    ld a, b                                       ; $4849: $78
    ld a, c                                       ; $484a: $79
    ld a, b                                       ; $484b: $78
    ld h, l                                       ; $484c: $65
    inc sp                                        ; $484d: $33
    ld b, d                                       ; $484e: $42
    dec [hl]                                      ; $484f: $35
    add a                                         ; $4850: $87
    sbc c                                         ; $4851: $99
    adc b                                         ; $4852: $88
    sub a                                         ; $4853: $97
    ld [hl], a                                    ; $4854: $77
    ld a, b                                       ; $4855: $78
    sbc b                                         ; $4856: $98
    ld [hl], a                                    ; $4857: $77
    ld [hl], a                                    ; $4858: $77
    ld h, l                                       ; $4859: $65
    dec [hl]                                      ; $485a: $35
    ld [hl], a                                    ; $485b: $77
    ld b, a                                       ; $485c: $47
    sbc e                                         ; $485d: $9b
    cp e                                          ; $485e: $bb
    xor d                                         ; $485f: $aa
    ld h, h                                       ; $4860: $64
    ld [de], a                                    ; $4861: $12
    ld c, c                                       ; $4862: $49
    xor b                                         ; $4863: $a8
    ld d, e                                       ; $4864: $53
    ld d, [hl]                                    ; $4865: $56
    ld d, [hl]                                    ; $4866: $56
    ld h, l                                       ; $4867: $65
    ld h, [hl]                                    ; $4868: $66
    adc b                                         ; $4869: $88
    adc b                                         ; $486a: $88
    sbc c                                         ; $486b: $99
    cp d                                          ; $486c: $ba
    ld a, c                                       ; $486d: $79
    sbc c                                         ; $486e: $99
    cp c                                          ; $486f: $b9
    add a                                         ; $4870: $87
    sbc b                                         ; $4871: $98
    xor e                                         ; $4872: $ab
    xor c                                         ; $4873: $a9
    xor e                                         ; $4874: $ab
    ld a, b                                       ; $4875: $78
    adc b                                         ; $4876: $88
    ld a, e                                       ; $4877: $7b
    adc b                                         ; $4878: $88
    sbc e                                         ; $4879: $9b
    db $ed                                        ; $487a: $ed
    res 5, c                                      ; $487b: $cb $a9
    add a                                         ; $487d: $87
    halt                                          ; $487e: $76
    ld h, l                                       ; $487f: $65
    db $10                                        ; $4880: $10
    inc h                                         ; $4881: $24
    jr nc, jr_010_4885                            ; $4882: $30 $01

    ld [hl+], a                                   ; $4884: $22

jr_010_4885:
    ld [de], a                                    ; $4885: $12
    ld b, l                                       ; $4886: $45
    ld b, [hl]                                    ; $4887: $46
    xor l                                         ; $4888: $ad
    rst $18                                       ; $4889: $df
    db $fd                                        ; $488a: $fd
    xor d                                         ; $488b: $aa
    adc c                                         ; $488c: $89
    ld a, c                                       ; $488d: $79
    halt                                          ; $488e: $76
    adc c                                         ; $488f: $89
    xor c                                         ; $4890: $a9
    halt                                          ; $4891: $76
    ld d, h                                       ; $4892: $54
    inc [hl]                                      ; $4893: $34
    ld d, [hl]                                    ; $4894: $56
    ld [hl], a                                    ; $4895: $77
    sbc e                                         ; $4896: $9b
    xor e                                         ; $4897: $ab
    or a                                          ; $4898: $b7
    ld a, c                                       ; $4899: $79
    cp e                                          ; $489a: $bb
    call $b9dc                                    ; $489b: $cd $dc $b9
    ld [hl], a                                    ; $489e: $77
    ld d, l                                       ; $489f: $55
    ld h, [hl]                                    ; $48a0: $66
    sbc c                                         ; $48a1: $99
    xor c                                         ; $48a2: $a9
    xor c                                         ; $48a3: $a9
    xor d                                         ; $48a4: $aa
    xor d                                         ; $48a5: $aa
    xor c                                         ; $48a6: $a9
    ld [hl], l                                    ; $48a7: $75
    ld d, l                                       ; $48a8: $55
    ld b, e                                       ; $48a9: $43
    jr nc, jr_010_48af                            ; $48aa: $30 $03

    ld d, l                                       ; $48ac: $55
    dec [hl]                                      ; $48ad: $35
    ld h, a                                       ; $48ae: $67

jr_010_48af:
    sbc c                                         ; $48af: $99
    sbc b                                         ; $48b0: $98
    sbc d                                         ; $48b1: $9a
    call z, Call_010_43a7                         ; $48b2: $cc $a7 $43
    dec [hl]                                      ; $48b5: $35
    inc sp                                        ; $48b6: $33
    ld [hl], $88                                  ; $48b7: $36 $88
    ld [hl], l                                    ; $48b9: $75
    ld d, h                                       ; $48ba: $54
    inc [hl]                                      ; $48bb: $34
    adc d                                         ; $48bc: $8a
    cp d                                          ; $48bd: $ba
    sbc e                                         ; $48be: $9b
    res 7, h                                      ; $48bf: $cb $bc
    jp z, Jump_010_7876                           ; $48c1: $ca $76 $78

    add a                                         ; $48c4: $87
    ld l, d                                       ; $48c5: $6a
    sbc b                                         ; $48c6: $98
    halt                                          ; $48c7: $76
    sbc c                                         ; $48c8: $99
    xor d                                         ; $48c9: $aa
    xor c                                         ; $48ca: $a9
    xor l                                         ; $48cb: $ad
    call c, $98dc                                 ; $48cc: $dc $dc $98
    sbc c                                         ; $48cf: $99
    add l                                         ; $48d0: $85
    inc [hl]                                      ; $48d1: $34
    ld b, d                                       ; $48d2: $42
    dec h                                         ; $48d3: $25
    sbc c                                         ; $48d4: $99
    adc b                                         ; $48d5: $88
    adc c                                         ; $48d6: $89
    sbc c                                         ; $48d7: $99
    adc d                                         ; $48d8: $8a
    xor c                                         ; $48d9: $a9
    xor c                                         ; $48da: $a9
    ld [hl], e                                    ; $48db: $73
    ld [de], a                                    ; $48dc: $12
    ld b, h                                       ; $48dd: $44
    inc [hl]                                      ; $48de: $34
    ld d, e                                       ; $48df: $53
    inc hl                                        ; $48e0: $23
    ld b, l                                       ; $48e1: $45
    ld d, h                                       ; $48e2: $54
    ld d, l                                       ; $48e3: $55
    ld e, b                                       ; $48e4: $58
    xor d                                         ; $48e5: $aa
    call $b9cc                                    ; $48e6: $cd $cc $b9
    cp e                                          ; $48e9: $bb
    cp e                                          ; $48ea: $bb
    adc b                                         ; $48eb: $88
    adc b                                         ; $48ec: $88
    xor b                                         ; $48ed: $a8
    ld h, d                                       ; $48ee: $62
    ld [bc], a                                    ; $48ef: $02
    ld [hl-], a                                   ; $48f0: $32
    ld [hl], $75                                  ; $48f1: $36 $75
    ld d, a                                       ; $48f3: $57
    adc c                                         ; $48f4: $89
    sbc h                                         ; $48f5: $9c
    call z, $b99a                                 ; $48f6: $cc $9a $b9
    xor e                                         ; $48f9: $ab
    cp l                                          ; $48fa: $bd
    cp b                                          ; $48fb: $b8
    ld [hl], a                                    ; $48fc: $77
    ld h, l                                       ; $48fd: $65
    ld b, [hl]                                    ; $48fe: $46
    adc c                                         ; $48ff: $89
    add [hl]                                      ; $4900: $86
    ld h, a                                       ; $4901: $67
    adc b                                         ; $4902: $88
    sbc c                                         ; $4903: $99
    sbc c                                         ; $4904: $99
    sbc e                                         ; $4905: $9b
    res 5, c                                      ; $4906: $cb $a9
    halt                                          ; $4908: $76
    ld h, l                                       ; $4909: $65
    ld l, b                                       ; $490a: $68
    halt                                          ; $490b: $76
    adc b                                         ; $490c: $88
    add [hl]                                      ; $490d: $86
    ld d, h                                       ; $490e: $54
    ld b, [hl]                                    ; $490f: $46
    sub a                                         ; $4910: $97
    ld h, [hl]                                    ; $4911: $66
    ld h, [hl]                                    ; $4912: $66
    ld b, l                                       ; $4913: $45
    ld h, a                                       ; $4914: $67
    adc b                                         ; $4915: $88
    sbc b                                         ; $4916: $98
    ld h, l                                       ; $4917: $65
    ld b, a                                       ; $4918: $47
    cp l                                          ; $4919: $bd
    sbc $ce                                       ; $491a: $de $ce
    cp $da                                        ; $491c: $fe $da
    and a                                         ; $491e: $a7
    ld d, h                                       ; $491f: $54
    ld [hl-], a                                   ; $4920: $32
    ld b, l                                       ; $4921: $45
    ld a, b                                       ; $4922: $78
    sub a                                         ; $4923: $97
    ld d, [hl]                                    ; $4924: $56
    ld h, a                                       ; $4925: $67
    adc b                                         ; $4926: $88
    add a                                         ; $4927: $87
    ld b, e                                       ; $4928: $43
    ld b, h                                       ; $4929: $44
    ld h, a                                       ; $492a: $67
    ld h, [hl]                                    ; $492b: $66
    ld h, l                                       ; $492c: $65
    ld d, h                                       ; $492d: $54
    ld b, [hl]                                    ; $492e: $46
    ld a, b                                       ; $492f: $78
    xor b                                         ; $4930: $a8
    sbc b                                         ; $4931: $98
    sbc e                                         ; $4932: $9b
    sbc e                                         ; $4933: $9b
    xor b                                         ; $4934: $a8
    ld h, e                                       ; $4935: $63
    inc [hl]                                      ; $4936: $34
    halt                                          ; $4937: $76
    ld [hl], a                                    ; $4938: $77
    ld d, l                                       ; $4939: $55
    sbc h                                         ; $493a: $9c
    cp c                                          ; $493b: $b9
    ld d, h                                       ; $493c: $54
    ld h, a                                       ; $493d: $67
    adc c                                         ; $493e: $89
    cp c                                          ; $493f: $b9
    sbc h                                         ; $4940: $9c
    cp h                                          ; $4941: $bc
    db $db                                        ; $4942: $db
    xor b                                         ; $4943: $a8
    ld h, [hl]                                    ; $4944: $66
    ld a, c                                       ; $4945: $79
    cp d                                          ; $4946: $ba
    xor b                                         ; $4947: $a8
    adc c                                         ; $4948: $89
    sbc d                                         ; $4949: $9a
    xor b                                         ; $494a: $a8
    adc c                                         ; $494b: $89
    add a                                         ; $494c: $87
    ld a, c                                       ; $494d: $79
    sbc b                                         ; $494e: $98
    ld [hl], l                                    ; $494f: $75
    ld h, [hl]                                    ; $4950: $66
    ld d, h                                       ; $4951: $54
    ld b, h                                       ; $4952: $44
    ld d, [hl]                                    ; $4953: $56
    ld [hl-], a                                   ; $4954: $32
    dec [hl]                                      ; $4955: $35
    adc d                                         ; $4956: $8a
    adc b                                         ; $4957: $88
    xor d                                         ; $4958: $aa
    jp c, $9765                                   ; $4959: $da $65 $97

    ld d, h                                       ; $495c: $54
    ld b, [hl]                                    ; $495d: $46
    ld [hl], a                                    ; $495e: $77
    add a                                         ; $495f: $87
    add [hl]                                      ; $4960: $86
    ld l, d                                       ; $4961: $6a
    jp z, $3376                                   ; $4962: $ca $76 $33

    ld d, h                                       ; $4965: $54
    ld b, l                                       ; $4966: $45
    ld l, b                                       ; $4967: $68
    ld [hl], a                                    ; $4968: $77
    sbc d                                         ; $4969: $9a
    xor c                                         ; $496a: $a9
    ld a, c                                       ; $496b: $79
    cp e                                          ; $496c: $bb
    cp d                                          ; $496d: $ba
    cp l                                          ; $496e: $bd
    rst $00                                       ; $496f: $c7
    adc b                                         ; $4970: $88
    add a                                         ; $4971: $87
    ld d, [hl]                                    ; $4972: $56
    inc sp                                        ; $4973: $33
    ld d, [hl]                                    ; $4974: $56
    ld a, c                                       ; $4975: $79
    xor b                                         ; $4976: $a8
    ld a, c                                       ; $4977: $79
    and a                                         ; $4978: $a7
    ld l, c                                       ; $4979: $69
    xor e                                         ; $497a: $ab
    cp e                                          ; $497b: $bb
    cp b                                          ; $497c: $b8
    halt                                          ; $497d: $76
    ld h, l                                       ; $497e: $65
    ld d, a                                       ; $497f: $57
    adc d                                         ; $4980: $8a
    xor d                                         ; $4981: $aa
    sbc b                                         ; $4982: $98
    ld h, [hl]                                    ; $4983: $66
    ld h, [hl]                                    ; $4984: $66
    ld d, e                                       ; $4985: $53
    ld h, [hl]                                    ; $4986: $66
    ld h, h                                       ; $4987: $64
    jr nz, jr_010_49ad                            ; $4988: $20 $23

    ld b, l                                       ; $498a: $45
    ld h, [hl]                                    ; $498b: $66
    add a                                         ; $498c: $87
    ld d, [hl]                                    ; $498d: $56
    sbc e                                         ; $498e: $9b
    xor c                                         ; $498f: $a9
    xor l                                         ; $4990: $ad
    rst $28                                       ; $4991: $ef
    cp $cc                                        ; $4992: $fe $cc
    cp b                                          ; $4994: $b8
    ld h, l                                       ; $4995: $65
    ld d, [hl]                                    ; $4996: $56
    ld h, a                                       ; $4997: $67
    ld d, [hl]                                    ; $4998: $56
    ld [hl], a                                    ; $4999: $77
    ld h, [hl]                                    ; $499a: $66
    ld h, [hl]                                    ; $499b: $66
    ld h, [hl]                                    ; $499c: $66
    adc b                                         ; $499d: $88
    xor d                                         ; $499e: $aa
    add a                                         ; $499f: $87
    adc b                                         ; $49a0: $88
    sub a                                         ; $49a1: $97
    ld h, [hl]                                    ; $49a2: $66
    ld [hl], a                                    ; $49a3: $77
    sbc d                                         ; $49a4: $9a
    adc b                                         ; $49a5: $88
    xor d                                         ; $49a6: $aa
    adc b                                         ; $49a7: $88
    ld [hl], l                                    ; $49a8: $75
    inc sp                                        ; $49a9: $33
    ld b, d                                       ; $49aa: $42
    dec [hl]                                      ; $49ab: $35
    adc c                                         ; $49ac: $89

jr_010_49ad:
    xor b                                         ; $49ad: $a8
    sbc d                                         ; $49ae: $9a
    db $db                                        ; $49af: $db
    cp c                                          ; $49b0: $b9
    sub a                                         ; $49b1: $97
    ld h, [hl]                                    ; $49b2: $66
    add [hl]                                      ; $49b3: $86
    ld h, a                                       ; $49b4: $67
    ld h, a                                       ; $49b5: $67
    add a                                         ; $49b6: $87
    ld h, [hl]                                    ; $49b7: $66
    halt                                          ; $49b8: $76
    ld l, b                                       ; $49b9: $68
    add a                                         ; $49ba: $87
    ld a, b                                       ; $49bb: $78
    ld h, l                                       ; $49bc: $65
    ld h, a                                       ; $49bd: $67
    ld a, c                                       ; $49be: $79
    cp d                                          ; $49bf: $ba
    sbc c                                         ; $49c0: $99
    add a                                         ; $49c1: $87
    sbc b                                         ; $49c2: $98
    adc c                                         ; $49c3: $89
    sbc h                                         ; $49c4: $9c
    xor e                                         ; $49c5: $ab
    call z, $95db                                 ; $49c6: $cc $db $95
    ld d, a                                       ; $49c9: $57
    ld [hl], h                                    ; $49ca: $74
    ld b, h                                       ; $49cb: $44
    ld b, e                                       ; $49cc: $43
    inc h                                         ; $49cd: $24
    ld b, h                                       ; $49ce: $44
    ld d, l                                       ; $49cf: $55
    adc b                                         ; $49d0: $88
    ld h, [hl]                                    ; $49d1: $66
    ld a, c                                       ; $49d2: $79
    cp e                                          ; $49d3: $bb
    cp [hl]                                       ; $49d4: $be
    db $fd                                        ; $49d5: $fd
    jp c, $a889                                   ; $49d6: $da $89 $a8

    halt                                          ; $49d9: $76
    ld h, l                                       ; $49da: $65
    ld d, a                                       ; $49db: $57
    ld h, [hl]                                    ; $49dc: $66
    ld a, c                                       ; $49dd: $79
    add a                                         ; $49de: $87
    ld d, [hl]                                    ; $49df: $56
    add l                                         ; $49e0: $85
    ld h, [hl]                                    ; $49e1: $66
    ld d, l                                       ; $49e2: $55
    ld b, l                                       ; $49e3: $45
    ld h, [hl]                                    ; $49e4: $66
    ld h, l                                       ; $49e5: $65
    ld b, h                                       ; $49e6: $44
    inc [hl]                                      ; $49e7: $34
    ld a, c                                       ; $49e8: $79
    adc b                                         ; $49e9: $88
    add l                                         ; $49ea: $85
    ld de, $6536                                  ; $49eb: $11 $36 $65
    ld h, a                                       ; $49ee: $67
    sbc d                                         ; $49ef: $9a
    call $ffcd                                    ; $49f0: $cd $cd $ff
    xor $ca                                       ; $49f3: $ee $ca
    xor d                                         ; $49f5: $aa
    rst $28                                       ; $49f6: $ef
    db $ec                                        ; $49f7: $ec
    call z, $ecef                                 ; $49f8: $cc $ef $ec
    xor c                                         ; $49fb: $a9
    adc b                                         ; $49fc: $88
    halt                                          ; $49fd: $76
    ld [hl-], a                                   ; $49fe: $32
    db $10                                        ; $49ff: $10
    inc hl                                        ; $4a00: $23
    ld h, l                                       ; $4a01: $65
    ld b, d                                       ; $4a02: $42
    ld [bc], a                                    ; $4a03: $02
    ld [hl+], a                                   ; $4a04: $22
    ld d, h                                       ; $4a05: $54
    ld b, l                                       ; $4a06: $45
    halt                                          ; $4a07: $76
    ld d, [hl]                                    ; $4a08: $56
    ld a, c                                       ; $4a09: $79
    xor e                                         ; $4a0a: $ab
    cp d                                          ; $4a0b: $ba
    add [hl]                                      ; $4a0c: $86
    ld h, l                                       ; $4a0d: $65
    ld b, l                                       ; $4a0e: $45
    ld h, [hl]                                    ; $4a0f: $66
    ld h, a                                       ; $4a10: $67
    halt                                          ; $4a11: $76
    ld l, b                                       ; $4a12: $68
    ld a, b                                       ; $4a13: $78
    xor b                                         ; $4a14: $a8
    ld [hl], l                                    ; $4a15: $75
    ld h, a                                       ; $4a16: $67
    ld h, l                                       ; $4a17: $65
    adc d                                         ; $4a18: $8a
    cp e                                          ; $4a19: $bb
    cp d                                          ; $4a1a: $ba
    xor b                                         ; $4a1b: $a8
    sbc c                                         ; $4a1c: $99
    xor d                                         ; $4a1d: $aa
    sub [hl]                                      ; $4a1e: $96
    ld d, h                                       ; $4a1f: $54
    adc b                                         ; $4a20: $88
    adc c                                         ; $4a21: $89
    sbc c                                         ; $4a22: $99
    adc b                                         ; $4a23: $88
    ld a, c                                       ; $4a24: $79
    call $a8ec                                    ; $4a25: $cd $ec $a8
    xor c                                         ; $4a28: $a9
    halt                                          ; $4a29: $76
    ld d, [hl]                                    ; $4a2a: $56
    ld l, c                                       ; $4a2b: $69
    sub [hl]                                      ; $4a2c: $96
    ld h, [hl]                                    ; $4a2d: $66
    ld d, h                                       ; $4a2e: $54
    ld d, [hl]                                    ; $4a2f: $56
    ld h, l                                       ; $4a30: $65
    ld d, l                                       ; $4a31: $55
    ld a, c                                       ; $4a32: $79
    cp c                                          ; $4a33: $b9
    halt                                          ; $4a34: $76
    ld b, l                                       ; $4a35: $45
    ld a, b                                       ; $4a36: $78
    ld a, b                                       ; $4a37: $78
    adc c                                         ; $4a38: $89
    add a                                         ; $4a39: $87
    ld a, d                                       ; $4a3a: $7a
    jp z, Jump_010_7799                           ; $4a3b: $ca $99 $77

    xor e                                         ; $4a3e: $ab
    xor d                                         ; $4a3f: $aa
    sbc c                                         ; $4a40: $99
    ld h, l                                       ; $4a41: $65
    ld b, h                                       ; $4a42: $44
    ld d, [hl]                                    ; $4a43: $56
    ld d, a                                       ; $4a44: $57
    ld h, [hl]                                    ; $4a45: $66
    ld d, l                                       ; $4a46: $55
    ld d, a                                       ; $4a47: $57
    adc c                                         ; $4a48: $89
    xor d                                         ; $4a49: $aa
    adc b                                         ; $4a4a: $88
    xor e                                         ; $4a4b: $ab
    call z, $9899                                 ; $4a4c: $cc $99 $98
    ld h, l                                       ; $4a4f: $65
    ld d, h                                       ; $4a50: $54
    ld d, l                                       ; $4a51: $55
    ld b, h                                       ; $4a52: $44
    ld b, [hl]                                    ; $4a53: $46
    sbc b                                         ; $4a54: $98
    ld a, b                                       ; $4a55: $78
    ld h, l                                       ; $4a56: $65
    ld h, a                                       ; $4a57: $67
    adc d                                         ; $4a58: $8a
    cp d                                          ; $4a59: $ba
    sbc b                                         ; $4a5a: $98
    ld h, l                                       ; $4a5b: $65
    ld b, e                                       ; $4a5c: $43
    ld b, [hl]                                    ; $4a5d: $46
    adc c                                         ; $4a5e: $89
    halt                                          ; $4a5f: $76
    ld b, h                                       ; $4a60: $44
    ld a, c                                       ; $4a61: $79
    xor e                                         ; $4a62: $ab
    xor e                                         ; $4a63: $ab
    adc $eb                                       ; $4a64: $ce $eb
    sbc c                                         ; $4a66: $99
    adc b                                         ; $4a67: $88
    adc b                                         ; $4a68: $88
    ld h, h                                       ; $4a69: $64
    inc sp                                        ; $4a6a: $33
    ld b, h                                       ; $4a6b: $44
    ld b, l                                       ; $4a6c: $45
    ld b, [hl]                                    ; $4a6d: $46
    adc c                                         ; $4a6e: $89
    xor e                                         ; $4a6f: $ab
    cp h                                          ; $4a70: $bc
    call z, $7a97                                 ; $4a71: $cc $97 $7a
    cp d                                          ; $4a74: $ba
    sbc b                                         ; $4a75: $98
    sbc d                                         ; $4a76: $9a
    cp h                                          ; $4a77: $bc
    cp e                                          ; $4a78: $bb
    add h                                         ; $4a79: $84
    ld [hl-], a                                   ; $4a7a: $32
    ld hl, $1021                                  ; $4a7b: $21 $21 $10
    ld [de], a                                    ; $4a7e: $12
    inc [hl]                                      ; $4a7f: $34
    adc d                                         ; $4a80: $8a
    db $dd                                        ; $4a81: $dd
    jp z, $bcbb                                   ; $4a82: $ca $bb $bc

    res 3, c                                      ; $4a85: $cb $99
    adc b                                         ; $4a87: $88
    ld [hl], a                                    ; $4a88: $77
    ld d, e                                       ; $4a89: $53
    ld b, h                                       ; $4a8a: $44
    ld d, l                                       ; $4a8b: $55
    adc c                                         ; $4a8c: $89
    adc b                                         ; $4a8d: $88
    ld a, c                                       ; $4a8e: $79
    cp e                                          ; $4a8f: $bb
    and a                                         ; $4a90: $a7
    ld d, l                                       ; $4a91: $55
    ld d, a                                       ; $4a92: $57
    sbc b                                         ; $4a93: $98
    xor h                                         ; $4a94: $ac
    call c, $cbbd                                 ; $4a95: $dc $bd $cb
    sub l                                         ; $4a98: $95
    ld sp, $3413                                  ; $4a99: $31 $13 $34
    ld a, c                                       ; $4a9c: $79
    adc b                                         ; $4a9d: $88
    add a                                         ; $4a9e: $87
    adc c                                         ; $4a9f: $89
    ld h, a                                       ; $4aa0: $67
    adc b                                         ; $4aa1: $88
    cp e                                          ; $4aa2: $bb
    sub a                                         ; $4aa3: $97
    ld d, l                                       ; $4aa4: $55
    ld b, h                                       ; $4aa5: $44
    ld b, h                                       ; $4aa6: $44
    ld b, l                                       ; $4aa7: $45
    ld l, c                                       ; $4aa8: $69
    cp d                                          ; $4aa9: $ba
    halt                                          ; $4aaa: $76
    ld [hl], a                                    ; $4aab: $77
    ld d, l                                       ; $4aac: $55
    ld h, a                                       ; $4aad: $67
    halt                                          ; $4aae: $76
    ld l, d                                       ; $4aaf: $6a
    cp d                                          ; $4ab0: $ba
    xor d                                         ; $4ab1: $aa
    cp e                                          ; $4ab2: $bb
    cp c                                          ; $4ab3: $b9
    adc d                                         ; $4ab4: $8a
    cp d                                          ; $4ab5: $ba
    add l                                         ; $4ab6: $85
    ld [hl-], a                                   ; $4ab7: $32
    inc sp                                        ; $4ab8: $33
    ld d, l                                       ; $4ab9: $55
    inc sp                                        ; $4aba: $33
    ld a, b                                       ; $4abb: $78
    xor d                                         ; $4abc: $aa
    adc d                                         ; $4abd: $8a
    xor c                                         ; $4abe: $a9
    sbc e                                         ; $4abf: $9b
    jp z, $9ab9                                   ; $4ac0: $ca $b9 $9a

    xor c                                         ; $4ac3: $a9
    xor b                                         ; $4ac4: $a8
    ld l, b                                       ; $4ac5: $68
    xor d                                         ; $4ac6: $aa
    sub [hl]                                      ; $4ac7: $96
    ld b, h                                       ; $4ac8: $44
    ld h, [hl]                                    ; $4ac9: $66
    ld b, h                                       ; $4aca: $44
    ld d, l                                       ; $4acb: $55
    ld h, [hl]                                    ; $4acc: $66
    ld d, h                                       ; $4acd: $54
    ld b, a                                       ; $4ace: $47
    ld [hl], a                                    ; $4acf: $77
    adc d                                         ; $4ad0: $8a
    xor e                                         ; $4ad1: $ab
    cp h                                          ; $4ad2: $bc
    call z, Call_010_65b8                         ; $4ad3: $cc $b8 $65
    inc sp                                        ; $4ad6: $33
    ld b, d                                       ; $4ad7: $42
    inc de                                        ; $4ad8: $13
    ld b, l                                       ; $4ad9: $45
    ld h, [hl]                                    ; $4ada: $66
    adc c                                         ; $4adb: $89

jr_010_4adc:
    cp h                                          ; $4adc: $bc
    cp d                                          ; $4add: $ba
    adc b                                         ; $4ade: $88
    ld [hl], l                                    ; $4adf: $75
    add [hl]                                      ; $4ae0: $86
    halt                                          ; $4ae1: $76
    ld d, h                                       ; $4ae2: $54
    ld d, h                                       ; $4ae3: $54
    ld d, l                                       ; $4ae4: $55
    ld h, [hl]                                    ; $4ae5: $66
    sbc l                                         ; $4ae6: $9d
    db $ec                                        ; $4ae7: $ec
    jp z, $99a9                                   ; $4ae8: $ca $a9 $99

    adc b                                         ; $4aeb: $88
    ld h, a                                       ; $4aec: $67
    ld h, l                                       ; $4aed: $65
    ld b, a                                       ; $4aee: $47
    ld a, b                                       ; $4aef: $78
    xor e                                         ; $4af0: $ab
    sub a                                         ; $4af1: $97
    adc b                                         ; $4af2: $88
    sbc b                                         ; $4af3: $98
    sbc d                                         ; $4af4: $9a
    xor c                                         ; $4af5: $a9
    xor b                                         ; $4af6: $a8
    xor b                                         ; $4af7: $a8
    halt                                          ; $4af8: $76
    ld l, b                                       ; $4af9: $68
    add l                                         ; $4afa: $85
    inc [hl]                                      ; $4afb: $34
    ld d, a                                       ; $4afc: $57
    ld [hl], a                                    ; $4afd: $77
    ld h, a                                       ; $4afe: $67
    add a                                         ; $4aff: $87
    add a                                         ; $4b00: $87
    ld b, e                                       ; $4b01: $43
    inc [hl]                                      ; $4b02: $34
    ld h, a                                       ; $4b03: $67
    adc b                                         ; $4b04: $88
    sbc c                                         ; $4b05: $99
    sbc h                                         ; $4b06: $9c
    cp c                                          ; $4b07: $b9
    sbc d                                         ; $4b08: $9a
    xor c                                         ; $4b09: $a9
    ld h, [hl]                                    ; $4b0a: $66
    ld [hl], a                                    ; $4b0b: $77
    add [hl]                                      ; $4b0c: $86
    ld [hl], a                                    ; $4b0d: $77
    adc b                                         ; $4b0e: $88
    adc b                                         ; $4b0f: $88
    adc b                                         ; $4b10: $88
    halt                                          ; $4b11: $76
    adc c                                         ; $4b12: $89
    add a                                         ; $4b13: $87
    xor d                                         ; $4b14: $aa
    cp c                                          ; $4b15: $b9
    adc d                                         ; $4b16: $8a
    adc b                                         ; $4b17: $88
    adc c                                         ; $4b18: $89
    ld [hl], h                                    ; $4b19: $74
    ld d, l                                       ; $4b1a: $55
    ld h, [hl]                                    ; $4b1b: $66
    ld h, h                                       ; $4b1c: $64
    ld b, h                                       ; $4b1d: $44
    ld d, a                                       ; $4b1e: $57
    sbc c                                         ; $4b1f: $99
    ld h, l                                       ; $4b20: $65
    ld d, e                                       ; $4b21: $53
    ld h, a                                       ; $4b22: $67
    cp h                                          ; $4b23: $bc
    cp e                                          ; $4b24: $bb
    call c, $95dc                                 ; $4b25: $dc $dc $95
    ld d, e                                       ; $4b28: $53
    inc [hl]                                      ; $4b29: $34
    ld l, b                                       ; $4b2a: $68
    adc b                                         ; $4b2b: $88
    adc c                                         ; $4b2c: $89
    cp l                                          ; $4b2d: $bd
    xor b                                         ; $4b2e: $a8
    ld d, h                                       ; $4b2f: $54
    ld b, l                                       ; $4b30: $45
    ld h, a                                       ; $4b31: $67
    adc d                                         ; $4b32: $8a
    xor c                                         ; $4b33: $a9
    adc c                                         ; $4b34: $89
    sbc c                                         ; $4b35: $99
    ld h, l                                       ; $4b36: $65
    ld h, l                                       ; $4b37: $65
    adc c                                         ; $4b38: $89
    cp b                                          ; $4b39: $b8
    adc c                                         ; $4b3a: $89
    cp e                                          ; $4b3b: $bb
    xor b                                         ; $4b3c: $a8
    add a                                         ; $4b3d: $87
    ld d, e                                       ; $4b3e: $53
    inc sp                                        ; $4b3f: $33
    jr c, jr_010_4adc                             ; $4b40: $38 $9a

    xor d                                         ; $4b42: $aa
    sub a                                         ; $4b43: $97
    ld [hl], l                                    ; $4b44: $75
    ld b, a                                       ; $4b45: $47
    add a                                         ; $4b46: $87
    ld d, l                                       ; $4b47: $55
    adc c                                         ; $4b48: $89
    sbc b                                         ; $4b49: $98
    xor d                                         ; $4b4a: $aa
    sbc b                                         ; $4b4b: $98
    sbc d                                         ; $4b4c: $9a
    sbc c                                         ; $4b4d: $99
    sbc b                                         ; $4b4e: $98
    cp e                                          ; $4b4f: $bb
    xor c                                         ; $4b50: $a9
    add l                                         ; $4b51: $85
    ld b, [hl]                                    ; $4b52: $46
    sbc e                                         ; $4b53: $9b
    cp c                                          ; $4b54: $b9
    ld h, h                                       ; $4b55: $64
    ld b, e                                       ; $4b56: $43
    ld b, l                                       ; $4b57: $45
    ld d, [hl]                                    ; $4b58: $56
    ld h, h                                       ; $4b59: $64
    ld sp, $4512                                  ; $4b5a: $31 $12 $45
    sbc c                                         ; $4b5d: $99
    sbc c                                         ; $4b5e: $99
    add a                                         ; $4b5f: $87
    add a                                         ; $4b60: $87
    halt                                          ; $4b61: $76
    ld h, a                                       ; $4b62: $67
    ld l, b                                       ; $4b63: $68
    add a                                         ; $4b64: $87
    ld [hl], l                                    ; $4b65: $75
    inc sp                                        ; $4b66: $33
    ld d, [hl]                                    ; $4b67: $56
    ld a, b                                       ; $4b68: $78
    add a                                         ; $4b69: $87
    ld h, a                                       ; $4b6a: $67
    sbc e                                         ; $4b6b: $9b
    call $eeff                                    ; $4b6c: $cd $ff $ee
    jp z, $96ba                                   ; $4b6f: $ca $ba $96

    ld a, c                                       ; $4b72: $79
    sbc b                                         ; $4b73: $98
    xor d                                         ; $4b74: $aa
    sbc c                                         ; $4b75: $99
    adc b                                         ; $4b76: $88
    adc b                                         ; $4b77: $88
    sub a                                         ; $4b78: $97
    ld d, e                                       ; $4b79: $53
    ld b, l                                       ; $4b7a: $45
    ld l, b                                       ; $4b7b: $68
    call z, $99bb                                 ; $4b7c: $cc $bb $99
    cp d                                          ; $4b7f: $ba
    cp c                                          ; $4b80: $b9
    halt                                          ; $4b81: $76
    ld h, [hl]                                    ; $4b82: $66
    ld h, l                                       ; $4b83: $65
    ld h, l                                       ; $4b84: $65
    ld d, [hl]                                    ; $4b85: $56
    ld a, c                                       ; $4b86: $79
    add a                                         ; $4b87: $87
    ld d, c                                       ; $4b88: $51
    ld [hl+], a                                   ; $4b89: $22
    inc [hl]                                      ; $4b8a: $34
    inc [hl]                                      ; $4b8b: $34
    ld h, [hl]                                    ; $4b8c: $66
    sbc c                                         ; $4b8d: $99
    sbc d                                         ; $4b8e: $9a
    res 3, c                                      ; $4b8f: $cb $99
    sbc b                                         ; $4b91: $98
    xor c                                         ; $4b92: $a9
    sbc b                                         ; $4b93: $98
    ld a, b                                       ; $4b94: $78
    ld l, b                                       ; $4b95: $68
    xor d                                         ; $4b96: $aa
    sbc b                                         ; $4b97: $98
    add a                                         ; $4b98: $87
    ld h, h                                       ; $4b99: $64
    inc h                                         ; $4b9a: $24
    ld b, e                                       ; $4b9b: $43
    ld [hl+], a                                   ; $4b9c: $22
    inc hl                                        ; $4b9d: $23
    ld d, l                                       ; $4b9e: $55
    ld h, [hl]                                    ; $4b9f: $66
    ld h, h                                       ; $4ba0: $64
    ld b, l                                       ; $4ba1: $45
    ld b, [hl]                                    ; $4ba2: $46
    ld h, [hl]                                    ; $4ba3: $66
    ld e, b                                       ; $4ba4: $58
    ld [hl], a                                    ; $4ba5: $77
    ld h, a                                       ; $4ba6: $67
    sbc d                                         ; $4ba7: $9a
    cp l                                          ; $4ba8: $bd
    db $ec                                        ; $4ba9: $ec
    call z, $dfcd                                 ; $4baa: $cc $cd $df
    cp $cc                                        ; $4bad: $fe $cc
    sbc $cb                                       ; $4baf: $de $cb
    sbc b                                         ; $4bb1: $98
    ld a, b                                       ; $4bb2: $78
    halt                                          ; $4bb3: $76
    ld h, a                                       ; $4bb4: $67
    adc b                                         ; $4bb5: $88
    sbc d                                         ; $4bb6: $9a
    ld [hl], e                                    ; $4bb7: $73
    ld [hl], $55                                  ; $4bb8: $36 $55
    ld b, e                                       ; $4bba: $43
    ld h, [hl]                                    ; $4bbb: $66
    ld h, [hl]                                    ; $4bbc: $66
    ld hl, $4712                                  ; $4bbd: $21 $12 $47
    adc b                                         ; $4bc0: $88
    sbc d                                         ; $4bc1: $9a
    jp z, $ab9a                                   ; $4bc2: $ca $9a $ab

    cp e                                          ; $4bc5: $bb
    add h                                         ; $4bc6: $84
    inc sp                                        ; $4bc7: $33
    ld b, h                                       ; $4bc8: $44
    ld d, [hl]                                    ; $4bc9: $56
    ld [hl], a                                    ; $4bca: $77
    xor h                                         ; $4bcb: $ac
    sub [hl]                                      ; $4bcc: $96
    ld [hl], a                                    ; $4bcd: $77
    adc b                                         ; $4bce: $88
    adc b                                         ; $4bcf: $88
    xor h                                         ; $4bd0: $ac
    res 7, [hl]                                   ; $4bd1: $cb $be
    db $ed                                        ; $4bd3: $ed
    call z, $88b9                                 ; $4bd4: $cc $b9 $88
    ld [hl], l                                    ; $4bd7: $75
    jr nz, jr_010_4bec                            ; $4bd8: $20 $12

    inc sp                                        ; $4bda: $33
    inc [hl]                                      ; $4bdb: $34
    inc [hl]                                      ; $4bdc: $34
    ld h, l                                       ; $4bdd: $65
    ld d, [hl]                                    ; $4bde: $56
    ld a, b                                       ; $4bdf: $78
    adc b                                         ; $4be0: $88
    cp d                                          ; $4be1: $ba
    xor d                                         ; $4be2: $aa
    cp e                                          ; $4be3: $bb
    sbc b                                         ; $4be4: $98
    add a                                         ; $4be5: $87
    halt                                          ; $4be6: $76
    ld d, l                                       ; $4be7: $55
    ld b, h                                       ; $4be8: $44
    ld d, [hl]                                    ; $4be9: $56
    ld d, l                                       ; $4bea: $55
    ld a, b                                       ; $4beb: $78

jr_010_4bec:
    ld a, c                                       ; $4bec: $79
    ld [hl], a                                    ; $4bed: $77
    adc b                                         ; $4bee: $88
    cp [hl]                                       ; $4bef: $be
    db $ec                                        ; $4bf0: $ec
    cp d                                          ; $4bf1: $ba
    sub a                                         ; $4bf2: $97
    ld d, h                                       ; $4bf3: $54
    ld b, h                                       ; $4bf4: $44
    ld b, e                                       ; $4bf5: $43
    ld hl, $7615                                  ; $4bf6: $21 $15 $76
    ld h, l                                       ; $4bf9: $65
    ld h, a                                       ; $4bfa: $67
    sbc c                                         ; $4bfb: $99
    ld a, b                                       ; $4bfc: $78
    adc b                                         ; $4bfd: $88
    ld a, c                                       ; $4bfe: $79
    add a                                         ; $4bff: $87
    adc c                                         ; $4c00: $89
    cp h                                          ; $4c01: $bc
    adc $cc                                       ; $4c02: $ce $cc
    call $ebfe                                    ; $4c04: $cd $fe $eb
    sbc d                                         ; $4c07: $9a
    adc c                                         ; $4c08: $89
    sbc c                                         ; $4c09: $99
    add h                                         ; $4c0a: $84
    ld [hl+], a                                   ; $4c0b: $22
    inc [hl]                                      ; $4c0c: $34
    ld d, h                                       ; $4c0d: $54
    ld c, b                                       ; $4c0e: $48
    sbc d                                         ; $4c0f: $9a
    sbc b                                         ; $4c10: $98
    ld [hl], a                                    ; $4c11: $77
    ld h, h                                       ; $4c12: $64
    ld [hl-], a                                   ; $4c13: $32
    ld hl, $5724                                  ; $4c14: $21 $24 $57
    adc b                                         ; $4c17: $88
    ld a, b                                       ; $4c18: $78
    sbc c                                         ; $4c19: $99
    xor e                                         ; $4c1a: $ab
    halt                                          ; $4c1b: $76
    ld a, b                                       ; $4c1c: $78
    sbc c                                         ; $4c1d: $99
    xor c                                         ; $4c1e: $a9
    sbc b                                         ; $4c1f: $98
    add a                                         ; $4c20: $87
    ld a, b                                       ; $4c21: $78
    sbc e                                         ; $4c22: $9b
    res 5, e                                      ; $4c23: $cb $ab
    sub a                                         ; $4c25: $97
    ld [hl], a                                    ; $4c26: $77
    ld d, e                                       ; $4c27: $53
    inc de                                        ; $4c28: $13
    scf                                           ; $4c29: $37
    adc d                                         ; $4c2a: $8a
    cp d                                          ; $4c2b: $ba
    xor d                                         ; $4c2c: $aa
    xor e                                         ; $4c2d: $ab
    sbc c                                         ; $4c2e: $99
    add l                                         ; $4c2f: $85
    ld sp, $4502                                  ; $4c30: $31 $02 $45
    ld d, [hl]                                    ; $4c33: $56
    add a                                         ; $4c34: $87
    ld a, d                                       ; $4c35: $7a
    sbc c                                         ; $4c36: $99
    xor d                                         ; $4c37: $aa
    cp e                                          ; $4c38: $bb
    cp c                                          ; $4c39: $b9
    ld a, c                                       ; $4c3a: $79
    cp c                                          ; $4c3b: $b9
    ld [hl], l                                    ; $4c3c: $75
    ld d, [hl]                                    ; $4c3d: $56
    adc b                                         ; $4c3e: $88
    add [hl]                                      ; $4c3f: $86
    ld b, l                                       ; $4c40: $45
    ld d, h                                       ; $4c41: $54
    ld b, l                                       ; $4c42: $45
    ld h, a                                       ; $4c43: $67
    sbc e                                         ; $4c44: $9b
    xor c                                         ; $4c45: $a9
    ld a, d                                       ; $4c46: $7a
    call $87ca                                    ; $4c47: $cd $ca $87
    ld a, b                                       ; $4c4a: $78
    adc b                                         ; $4c4b: $88
    halt                                          ; $4c4c: $76
    ld b, d                                       ; $4c4d: $42
    inc de                                        ; $4c4e: $13
    ld [hl], a                                    ; $4c4f: $77
    sbc l                                         ; $4c50: $9d
    db $fc                                        ; $4c51: $fc
    cp d                                          ; $4c52: $ba
    xor c                                         ; $4c53: $a9
    sub a                                         ; $4c54: $97
    ld h, a                                       ; $4c55: $67
    ld a, b                                       ; $4c56: $78
    ld a, b                                       ; $4c57: $78
    ld [hl], a                                    ; $4c58: $77
    halt                                          ; $4c59: $76
    adc d                                         ; $4c5a: $8a
    sbc d                                         ; $4c5b: $9a
    call c, $bbdc                                 ; $4c5c: $dc $dc $bb
    sbc d                                         ; $4c5f: $9a
    sub a                                         ; $4c60: $97
    adc c                                         ; $4c61: $89
    add a                                         ; $4c62: $87
    ld h, l                                       ; $4c63: $65
    ld sp, $4423                                  ; $4c64: $31 $23 $44
    inc [hl]                                      ; $4c67: $34
    ld [hl-], a                                   ; $4c68: $32
    inc sp                                        ; $4c69: $33
    ld e, b                                       ; $4c6a: $58
    add a                                         ; $4c6b: $87
    adc b                                         ; $4c6c: $88
    ld [hl], a                                    ; $4c6d: $77
    ld b, [hl]                                    ; $4c6e: $46
    adc b                                         ; $4c6f: $88
    ld l, c                                       ; $4c70: $69
    add [hl]                                      ; $4c71: $86
    ld b, [hl]                                    ; $4c72: $46
    halt                                          ; $4c73: $76
    adc c                                         ; $4c74: $89
    ld h, h                                       ; $4c75: $64
    ld l, b                                       ; $4c76: $68
    adc b                                         ; $4c77: $88
    ld a, c                                       ; $4c78: $79
    cp b                                          ; $4c79: $b8
    ld l, c                                       ; $4c7a: $69
    sbc b                                         ; $4c7b: $98
    add a                                         ; $4c7c: $87
    halt                                          ; $4c7d: $76
    add a                                         ; $4c7e: $87
    ld l, b                                       ; $4c7f: $68
    adc b                                         ; $4c80: $88
    and a                                         ; $4c81: $a7
    ld h, a                                       ; $4c82: $67
    add a                                         ; $4c83: $87
    sbc b                                         ; $4c84: $98
    cp h                                          ; $4c85: $bc
    cp e                                          ; $4c86: $bb
    sbc c                                         ; $4c87: $99
    sbc b                                         ; $4c88: $98
    ld h, a                                       ; $4c89: $67
    cp l                                          ; $4c8a: $bd
    ret                                           ; $4c8b: $c9


    add a                                         ; $4c8c: $87
    ld a, c                                       ; $4c8d: $79
    halt                                          ; $4c8e: $76
    ld b, e                                       ; $4c8f: $43
    dec [hl]                                      ; $4c90: $35
    ld d, [hl]                                    ; $4c91: $56
    adc c                                         ; $4c92: $89
    adc b                                         ; $4c93: $88
    add a                                         ; $4c94: $87
    ld b, d                                       ; $4c95: $42
    ld c, c                                       ; $4c96: $49
    sbc c                                         ; $4c97: $99
    sbc d                                         ; $4c98: $9a
    db $dd                                        ; $4c99: $dd
    call c, $baaa                                 ; $4c9a: $dc $aa $ba
    xor d                                         ; $4c9d: $aa
    xor d                                         ; $4c9e: $aa
    xor c                                         ; $4c9f: $a9
    adc b                                         ; $4ca0: $88
    ld [hl], h                                    ; $4ca1: $74
    ld b, l                                       ; $4ca2: $45
    ld d, h                                       ; $4ca3: $54
    ld [hl-], a                                   ; $4ca4: $32
    inc [hl]                                      ; $4ca5: $34
    ld d, l                                       ; $4ca6: $55
    inc sp                                        ; $4ca7: $33
    ld h, a                                       ; $4ca8: $67
    ld h, l                                       ; $4ca9: $65
    ld b, h                                       ; $4caa: $44
    ld d, a                                       ; $4cab: $57
    sbc c                                         ; $4cac: $99
    sbc c                                         ; $4cad: $99
    ld [hl], l                                    ; $4cae: $75
    ld b, [hl]                                    ; $4caf: $46
    ld h, a                                       ; $4cb0: $67
    adc c                                         ; $4cb1: $89
    cp e                                          ; $4cb2: $bb
    db $eb                                        ; $4cb3: $eb
    xor d                                         ; $4cb4: $aa
    cp c                                          ; $4cb5: $b9
    adc e                                         ; $4cb6: $8b
    db $db                                        ; $4cb7: $db
    ld l, b                                       ; $4cb8: $68
    sbc c                                         ; $4cb9: $99
    xor h                                         ; $4cba: $ac
    jp z, $cc9a                                   ; $4cbb: $ca $9a $cc

    and a                                         ; $4cbe: $a7
    halt                                          ; $4cbf: $76
    adc d                                         ; $4cc0: $8a
    xor e                                         ; $4cc1: $ab
    add a                                         ; $4cc2: $87
    halt                                          ; $4cc3: $76
    ld b, d                                       ; $4cc4: $42
    ld b, l                                       ; $4cc5: $45
    ld b, h                                       ; $4cc6: $44
    jr nc, @+$35                                  ; $4cc7: $30 $33

    ld sp, $5625                                  ; $4cc9: $31 $25 $56
    ld [hl], l                                    ; $4ccc: $75
    ld d, l                                       ; $4ccd: $55
    ld d, [hl]                                    ; $4cce: $56
    add a                                         ; $4ccf: $87
    add [hl]                                      ; $4cd0: $86
    ld h, a                                       ; $4cd1: $67
    ld a, b                                       ; $4cd2: $78
    xor h                                         ; $4cd3: $ac
    cp b                                          ; $4cd4: $b8
    ld [hl], h                                    ; $4cd5: $74
    ld b, l                                       ; $4cd6: $45
    ld l, b                                       ; $4cd7: $68
    xor e                                         ; $4cd8: $ab
    cp l                                          ; $4cd9: $bd
    cp h                                          ; $4cda: $bc
    db $db                                        ; $4cdb: $db
    rst $18                                       ; $4cdc: $df
    sbc $b9                                       ; $4cdd: $de $b9
    sbc d                                         ; $4cdf: $9a
    sbc b                                         ; $4ce0: $98
    ld [hl], a                                    ; $4ce1: $77
    ld h, [hl]                                    ; $4ce2: $66
    ld [hl], a                                    ; $4ce3: $77
    ld l, b                                       ; $4ce4: $68
    add a                                         ; $4ce5: $87
    adc b                                         ; $4ce6: $88
    ld d, l                                       ; $4ce7: $55
    ld d, l                                       ; $4ce8: $55
    ld b, e                                       ; $4ce9: $43
    inc hl                                        ; $4cea: $23
    ld a, b                                       ; $4ceb: $78
    sbc c                                         ; $4cec: $99
    adc b                                         ; $4ced: $88
    xor c                                         ; $4cee: $a9
    adc b                                         ; $4cef: $88
    ld d, h                                       ; $4cf0: $54
    ld [hl-], a                                   ; $4cf1: $32
    ld h, a                                       ; $4cf2: $67
    ld [hl], a                                    ; $4cf3: $77
    ld d, a                                       ; $4cf4: $57
    ld [hl], a                                    ; $4cf5: $77
    ld h, h                                       ; $4cf6: $64
    ld [hl-], a                                   ; $4cf7: $32
    inc [hl]                                      ; $4cf8: $34
    ld d, [hl]                                    ; $4cf9: $56
    ld a, d                                       ; $4cfa: $7a
    adc $ff                                       ; $4cfb: $ce $ff
    cp $dd                                        ; $4cfd: $fe $dd
    cp e                                          ; $4cff: $bb
    xor d                                         ; $4d00: $aa
    xor c                                         ; $4d01: $a9
    ld a, b                                       ; $4d02: $78
    adc c                                         ; $4d03: $89
    ld h, l                                       ; $4d04: $65
    ld b, h                                       ; $4d05: $44
    ld d, h                                       ; $4d06: $54
    ld b, c                                       ; $4d07: $41
    inc sp                                        ; $4d08: $33
    ld c, b                                       ; $4d09: $48
    sbc e                                         ; $4d0a: $9b
    xor d                                         ; $4d0b: $aa
    sbc e                                         ; $4d0c: $9b
    jp z, $87aa                                   ; $4d0d: $ca $aa $87

    add l                                         ; $4d10: $85
    ld h, [hl]                                    ; $4d11: $66
    ld h, l                                       ; $4d12: $65
    ld l, b                                       ; $4d13: $68
    sbc c                                         ; $4d14: $99
    xor c                                         ; $4d15: $a9
    adc b                                         ; $4d16: $88
    add a                                         ; $4d17: $87
    ld d, l                                       ; $4d18: $55
    ld d, a                                       ; $4d19: $57
    ld h, a                                       ; $4d1a: $67
    adc b                                         ; $4d1b: $88
    xor d                                         ; $4d1c: $aa
    xor b                                         ; $4d1d: $a8
    halt                                          ; $4d1e: $76
    ld h, a                                       ; $4d1f: $67
    adc e                                         ; $4d20: $8b
    sub a                                         ; $4d21: $97
    sbc c                                         ; $4d22: $99
    sbc d                                         ; $4d23: $9a
    add [hl]                                      ; $4d24: $86
    ld b, h                                       ; $4d25: $44
    ld h, [hl]                                    ; $4d26: $66
    ld d, l                                       ; $4d27: $55
    ld [hl], h                                    ; $4d28: $74
    inc d                                         ; $4d29: $14
    ld d, [hl]                                    ; $4d2a: $56
    ld [hl], a                                    ; $4d2b: $77
    ld [hl], a                                    ; $4d2c: $77
    ld [hl], a                                    ; $4d2d: $77
    ld h, a                                       ; $4d2e: $67
    sub a                                         ; $4d2f: $97
    add a                                         ; $4d30: $87
    ld a, e                                       ; $4d31: $7b
    halt                                          ; $4d32: $76
    ld d, a                                       ; $4d33: $57
    adc b                                         ; $4d34: $88
    halt                                          ; $4d35: $76
    sbc e                                         ; $4d36: $9b
    cp d                                          ; $4d37: $ba
    xor l                                         ; $4d38: $ad
    cp d                                          ; $4d39: $ba
    call $96dc                                    ; $4d3a: $cd $dc $96
    ld l, b                                       ; $4d3d: $68
    add [hl]                                      ; $4d3e: $86
    ld [hl+], a                                   ; $4d3f: $22
    ld h, $89                                     ; $4d40: $26 $89
    sbc b                                         ; $4d42: $98
    sbc c                                         ; $4d43: $99
    sbc d                                         ; $4d44: $9a
    ld [hl], a                                    ; $4d45: $77
    ld b, d                                       ; $4d46: $42
    ld [hl+], a                                   ; $4d47: $22
    inc sp                                        ; $4d48: $33
    ld b, l                                       ; $4d49: $45
    add a                                         ; $4d4a: $87
    ld h, a                                       ; $4d4b: $67
    ld a, b                                       ; $4d4c: $78
    sbc d                                         ; $4d4d: $9a
    ld a, b                                       ; $4d4e: $78
    cp c                                          ; $4d4f: $b9
    adc b                                         ; $4d50: $88
    adc e                                         ; $4d51: $8b
    cp d                                          ; $4d52: $ba
    add [hl]                                      ; $4d53: $86
    ld h, [hl]                                    ; $4d54: $66
    add a                                         ; $4d55: $87
    ld [hl], h                                    ; $4d56: $74
    ld d, l                                       ; $4d57: $55
    ld e, b                                       ; $4d58: $58
    ld a, c                                       ; $4d59: $79
    cp d                                          ; $4d5a: $ba
    cp d                                          ; $4d5b: $ba
    xor c                                         ; $4d5c: $a9
    add a                                         ; $4d5d: $87
    adc d                                         ; $4d5e: $8a
    cp e                                          ; $4d5f: $bb
    res 5, e                                      ; $4d60: $cb $ab
    cp e                                          ; $4d62: $bb
    xor b                                         ; $4d63: $a8
    ld h, h                                       ; $4d64: $64
    ld de, $4523                                  ; $4d65: $11 $23 $45
    ld h, l                                       ; $4d68: $65
    ld h, a                                       ; $4d69: $67
    sbc c                                         ; $4d6a: $99
    xor c                                         ; $4d6b: $a9
    xor e                                         ; $4d6c: $ab
    call z, $ddbb                                 ; $4d6d: $cc $bb $dd
    cp c                                          ; $4d70: $b9
    sbc b                                         ; $4d71: $98
    ld [hl], a                                    ; $4d72: $77
    ld [hl], l                                    ; $4d73: $75
    ld [hl+], a                                   ; $4d74: $22
    ld [de], a                                    ; $4d75: $12
    ld d, l                                       ; $4d76: $55
    ld b, d                                       ; $4d77: $42
    ld [de], a                                    ; $4d78: $12
    nop                                           ; $4d79: $00
    inc [hl]                                      ; $4d7a: $34
    ld d, l                                       ; $4d7b: $55
    ld b, l                                       ; $4d7c: $45
    ld [hl], a                                    ; $4d7d: $77
    ld h, [hl]                                    ; $4d7e: $66
    ld l, b                                       ; $4d7f: $68
    adc c                                         ; $4d80: $89
    ld a, c                                       ; $4d81: $79
    xor e                                         ; $4d82: $ab
    call $ffdd                                    ; $4d83: $cd $dd $ff
    db $db                                        ; $4d86: $db
    cp h                                          ; $4d87: $bc
    cp d                                          ; $4d88: $ba
    sbc d                                         ; $4d89: $9a
    sbc c                                         ; $4d8a: $99
    sbc c                                         ; $4d8b: $99
    xor b                                         ; $4d8c: $a8
    halt                                          ; $4d8d: $76
    inc sp                                        ; $4d8e: $33
    ld b, l                                       ; $4d8f: $45
    adc b                                         ; $4d90: $88
    adc d                                         ; $4d91: $8a
    cp c                                          ; $4d92: $b9
    ld [hl], a                                    ; $4d93: $77
    sbc b                                         ; $4d94: $98
    sbc c                                         ; $4d95: $99
    add a                                         ; $4d96: $87
    ld h, l                                       ; $4d97: $65
    inc sp                                        ; $4d98: $33
    ld [de], a                                    ; $4d99: $12
    ld b, d                                       ; $4d9a: $42
    inc d                                         ; $4d9b: $14
    ld d, [hl]                                    ; $4d9c: $56
    ld [hl], a                                    ; $4d9d: $77
    sbc e                                         ; $4d9e: $9b
    xor e                                         ; $4d9f: $ab
    sbc $ca                                       ; $4da0: $de $ca
    xor e                                         ; $4da2: $ab
    xor d                                         ; $4da3: $aa
    sbc b                                         ; $4da4: $98
    add a                                         ; $4da5: $87
    halt                                          ; $4da6: $76
    ld h, e                                       ; $4da7: $63
    ld [hl+], a                                   ; $4da8: $22
    inc [hl]                                      ; $4da9: $34
    ld d, l                                       ; $4daa: $55
    ld h, a                                       ; $4dab: $67
    ld h, [hl]                                    ; $4dac: $66
    ld a, c                                       ; $4dad: $79
    ld [hl], a                                    ; $4dae: $77
    ld h, a                                       ; $4daf: $67
    ld l, b                                       ; $4db0: $68
    halt                                          ; $4db1: $76
    ld h, [hl]                                    ; $4db2: $66
    ld h, l                                       ; $4db3: $65
    ld h, [hl]                                    ; $4db4: $66
    ld a, d                                       ; $4db5: $7a
    cp e                                          ; $4db6: $bb
    cp e                                          ; $4db7: $bb
    cp d                                          ; $4db8: $ba
    xor c                                         ; $4db9: $a9
    xor c                                         ; $4dba: $a9
    xor l                                         ; $4dbb: $ad
    res 7, d                                      ; $4dbc: $cb $ba
    call $97ca                                    ; $4dbe: $cd $ca $97
    halt                                          ; $4dc1: $76
    ld h, [hl]                                    ; $4dc2: $66
    ld h, h                                       ; $4dc3: $64
    ld d, l                                       ; $4dc4: $55
    ld b, d                                       ; $4dc5: $42
    inc sp                                        ; $4dc6: $33
    inc [hl]                                      ; $4dc7: $34
    ld b, e                                       ; $4dc8: $43
    inc [hl]                                      ; $4dc9: $34
    ld d, [hl]                                    ; $4dca: $56
    ld e, b                                       ; $4dcb: $58
    xor e                                         ; $4dcc: $ab
    cp c                                          ; $4dcd: $b9
    ld [hl], l                                    ; $4dce: $75
    inc sp                                        ; $4dcf: $33
    inc h                                         ; $4dd0: $24
    ld h, [hl]                                    ; $4dd1: $66
    ld h, a                                       ; $4dd2: $67
    adc b                                         ; $4dd3: $88
    adc c                                         ; $4dd4: $89
    sbc b                                         ; $4dd5: $98
    xor h                                         ; $4dd6: $ac
    rst $28                                       ; $4dd7: $ef
    db $ed                                        ; $4dd8: $ed
    res 5, c                                      ; $4dd9: $cb $a9
    sbc d                                         ; $4ddb: $9a
    sub [hl]                                      ; $4ddc: $96
    ld d, l                                       ; $4ddd: $55
    inc [hl]                                      ; $4dde: $34
    ld d, h                                       ; $4ddf: $54
    ld h, a                                       ; $4de0: $67
    sbc e                                         ; $4de1: $9b
    cp e                                          ; $4de2: $bb
    cp e                                          ; $4de3: $bb
    cp d                                          ; $4de4: $ba
    sbc c                                         ; $4de5: $99
    cp l                                          ; $4de6: $bd
    cp e                                          ; $4de7: $bb
    sbc c                                         ; $4de8: $99
    adc b                                         ; $4de9: $88
    ld [hl], l                                    ; $4dea: $75
    ld d, l                                       ; $4deb: $55
    ld d, l                                       ; $4dec: $55
    inc hl                                        ; $4ded: $23
    inc [hl]                                      ; $4dee: $34
    ld hl, $5434                                  ; $4def: $21 $34 $54
    ld b, l                                       ; $4df2: $45
    ld h, l                                       ; $4df3: $65
    ld d, a                                       ; $4df4: $57
    xor h                                         ; $4df5: $ac
    db $dd                                        ; $4df6: $dd
    cp d                                          ; $4df7: $ba
    cp l                                          ; $4df8: $bd
    sub l                                         ; $4df9: $95
    ld b, h                                       ; $4dfa: $44
    ld d, [hl]                                    ; $4dfb: $56
    ld d, [hl]                                    ; $4dfc: $56
    adc b                                         ; $4dfd: $88
    xor c                                         ; $4dfe: $a9
    add a                                         ; $4dff: $87
    add [hl]                                      ; $4e00: $86
    ld d, a                                       ; $4e01: $57
    ld [hl], a                                    ; $4e02: $77
    ld a, b                                       ; $4e03: $78
    ld [hl], a                                    ; $4e04: $77
    ld a, b                                       ; $4e05: $78
    ld h, a                                       ; $4e06: $67
    add a                                         ; $4e07: $87
    ld h, [hl]                                    ; $4e08: $66
    ld h, l                                       ; $4e09: $65
    ld b, l                                       ; $4e0a: $45
    ld [hl], a                                    ; $4e0b: $77
    adc c                                         ; $4e0c: $89
    adc d                                         ; $4e0d: $8a
    call z, $86da                                 ; $4e0e: $cc $da $86
    halt                                          ; $4e11: $76
    ld l, b                                       ; $4e12: $68
    sbc c                                         ; $4e13: $99
    sbc c                                         ; $4e14: $99
    sbc c                                         ; $4e15: $99
    xor c                                         ; $4e16: $a9
    ld [hl], h                                    ; $4e17: $74
    inc [hl]                                      ; $4e18: $34
    ld d, l                                       ; $4e19: $55
    ld a, b                                       ; $4e1a: $78
    adc c                                         ; $4e1b: $89
    and a                                         ; $4e1c: $a7
    adc c                                         ; $4e1d: $89
    xor h                                         ; $4e1e: $ac
    res 7, e                                      ; $4e1f: $cb $bb
    sbc c                                         ; $4e21: $99
    sbc c                                         ; $4e22: $99
    sbc b                                         ; $4e23: $98
    halt                                          ; $4e24: $76
    ld h, [hl]                                    ; $4e25: $66
    ld h, l                                       ; $4e26: $65
    ld d, a                                       ; $4e27: $57
    halt                                          ; $4e28: $76
    ld d, h                                       ; $4e29: $54
    inc [hl]                                      ; $4e2a: $34
    dec [hl]                                      ; $4e2b: $35
    halt                                          ; $4e2c: $76
    adc c                                         ; $4e2d: $89
    sbc c                                         ; $4e2e: $99
    xor h                                         ; $4e2f: $ac
    db $dd                                        ; $4e30: $dd
    res 5, d                                      ; $4e31: $cb $aa
    cp e                                          ; $4e33: $bb
    xor b                                         ; $4e34: $a8
    ld [hl], l                                    ; $4e35: $75
    ld b, e                                       ; $4e36: $43
    ld [hl+], a                                   ; $4e37: $22
    db $10                                        ; $4e38: $10
    ld de, $7745                                  ; $4e39: $11 $45 $77
    sbc b                                         ; $4e3c: $98
    xor e                                         ; $4e3d: $ab
    call z, $87ba                                 ; $4e3e: $cc $ba $87
    ld h, e                                       ; $4e41: $63
    ld d, l                                       ; $4e42: $55
    ld d, l                                       ; $4e43: $55
    ld l, b                                       ; $4e44: $68
    adc b                                         ; $4e45: $88
    adc b                                         ; $4e46: $88
    adc d                                         ; $4e47: $8a
    xor d                                         ; $4e48: $aa
    xor d                                         ; $4e49: $aa
    call z, $9ba8                                 ; $4e4a: $cc $a8 $9b
    cp d                                          ; $4e4d: $ba
    adc c                                         ; $4e4e: $89
    xor d                                         ; $4e4f: $aa
    xor b                                         ; $4e50: $a8
    halt                                          ; $4e51: $76
    ld h, h                                       ; $4e52: $64
    ld b, l                                       ; $4e53: $45
    ld a, b                                       ; $4e54: $78
    ld a, b                                       ; $4e55: $78
    add [hl]                                      ; $4e56: $86
    ld a, b                                       ; $4e57: $78
    sbc b                                         ; $4e58: $98
    ld [hl], a                                    ; $4e59: $77
    sbc d                                         ; $4e5a: $9a
    cp e                                          ; $4e5b: $bb
    sbc c                                         ; $4e5c: $99
    ld [hl], l                                    ; $4e5d: $75
    ld sp, $3112                                  ; $4e5e: $31 $12 $31
    inc de                                        ; $4e61: $13
    ld d, l                                       ; $4e62: $55
    ld [hl], a                                    ; $4e63: $77
    adc c                                         ; $4e64: $89
    sbc c                                         ; $4e65: $99
    cp h                                          ; $4e66: $bc
    res 7, e                                      ; $4e67: $cb $bb
    xor d                                         ; $4e69: $aa
    add h                                         ; $4e6a: $84
    ld [hl+], a                                   ; $4e6b: $22
    ld [hl-], a                                   ; $4e6c: $32
    inc h                                         ; $4e6d: $24
    ld b, [hl]                                    ; $4e6e: $46
    sbc c                                         ; $4e6f: $99
    adc b                                         ; $4e70: $88
    sbc c                                         ; $4e71: $99
    cp l                                          ; $4e72: $bd
    call c, $9987                                 ; $4e73: $dc $87 $99
    sbc b                                         ; $4e76: $98
    adc b                                         ; $4e77: $88
    adc b                                         ; $4e78: $88
    ld [hl], a                                    ; $4e79: $77
    ld d, l                                       ; $4e7a: $55
    ld h, l                                       ; $4e7b: $65
    ld b, e                                       ; $4e7c: $43
    ld d, a                                       ; $4e7d: $57
    sbc e                                         ; $4e7e: $9b
    call z, $edde                                 ; $4e7f: $cc $de $ed
    res 5, c                                      ; $4e82: $cb $a9
    ld [hl], a                                    ; $4e84: $77
    ld [hl], l                                    ; $4e85: $75
    ld h, [hl]                                    ; $4e86: $66
    ld d, l                                       ; $4e87: $55
    ld b, h                                       ; $4e88: $44
    ld b, h                                       ; $4e89: $44
    ld e, b                                       ; $4e8a: $58
    sbc b                                         ; $4e8b: $98
    adc c                                         ; $4e8c: $89
    cp d                                          ; $4e8d: $ba
    xor d                                         ; $4e8e: $aa
    cp d                                          ; $4e8f: $ba
    cp b                                          ; $4e90: $b8
    sbc b                                         ; $4e91: $98
    adc b                                         ; $4e92: $88
    ld h, [hl]                                    ; $4e93: $66
    ld sp, $3401                                  ; $4e94: $31 $01 $34
    dec h                                         ; $4e97: $25
    ld b, h                                       ; $4e98: $44
    ld d, h                                       ; $4e99: $54
    ld b, a                                       ; $4e9a: $47
    xor h                                         ; $4e9b: $ac
    res 3, c                                      ; $4e9c: $cb $99
    xor d                                         ; $4e9e: $aa
    sbc b                                         ; $4e9f: $98
    add a                                         ; $4ea0: $87
    sbc e                                         ; $4ea1: $9b
    jp z, $aba9                                   ; $4ea2: $ca $a9 $ab

    sbc $b8                                       ; $4ea5: $de $b8
    add [hl]                                      ; $4ea7: $86
    ld d, l                                       ; $4ea8: $55
    halt                                          ; $4ea9: $76
    ld a, b                                       ; $4eaa: $78
    ld h, h                                       ; $4eab: $64
    jr nz, jr_010_4ee4                            ; $4eac: $20 $36

    ld a, b                                       ; $4eae: $78
    sbc b                                         ; $4eaf: $98
    adc c                                         ; $4eb0: $89
    xor e                                         ; $4eb1: $ab
    sub a                                         ; $4eb2: $97
    ld a, b                                       ; $4eb3: $78
    adc c                                         ; $4eb4: $89
    cp h                                          ; $4eb5: $bc
    cp l                                          ; $4eb6: $bd
    db $ec                                        ; $4eb7: $ec
    xor c                                         ; $4eb8: $a9
    adc b                                         ; $4eb9: $88
    ld [hl], e                                    ; $4eba: $73
    ld [hl-], a                                   ; $4ebb: $32
    inc sp                                        ; $4ebc: $33
    inc [hl]                                      ; $4ebd: $34
    ld [hl-], a                                   ; $4ebe: $32
    inc [hl]                                      ; $4ebf: $34
    ld h, a                                       ; $4ec0: $67
    ld d, h                                       ; $4ec1: $54
    ld b, [hl]                                    ; $4ec2: $46
    adc b                                         ; $4ec3: $88
    add a                                         ; $4ec4: $87
    ld h, [hl]                                    ; $4ec5: $66
    ld d, h                                       ; $4ec6: $54
    ld d, a                                       ; $4ec7: $57
    xor d                                         ; $4ec8: $aa
    xor c                                         ; $4ec9: $a9
    sbc c                                         ; $4eca: $99
    sbc d                                         ; $4ecb: $9a
    add l                                         ; $4ecc: $85
    ld d, [hl]                                    ; $4ecd: $56
    ld a, b                                       ; $4ece: $78
    xor b                                         ; $4ecf: $a8
    ld d, [hl]                                    ; $4ed0: $56
    ld [hl], a                                    ; $4ed1: $77
    xor l                                         ; $4ed2: $ad
    db $eb                                        ; $4ed3: $eb
    xor d                                         ; $4ed4: $aa
    xor h                                         ; $4ed5: $ac
    sbc c                                         ; $4ed6: $99
    ld [hl], a                                    ; $4ed7: $77
    ld h, [hl]                                    ; $4ed8: $66
    ld h, l                                       ; $4ed9: $65
    ld d, [hl]                                    ; $4eda: $56
    ld h, l                                       ; $4edb: $65
    ld e, d                                       ; $4edc: $5a
    cp d                                          ; $4edd: $ba
    sbc d                                         ; $4ede: $9a
    sub [hl]                                      ; $4edf: $96
    ld h, a                                       ; $4ee0: $67
    sbc d                                         ; $4ee1: $9a
    xor d                                         ; $4ee2: $aa
    ld a, b                                       ; $4ee3: $78

jr_010_4ee4:
    sbc d                                         ; $4ee4: $9a
    ld [hl], a                                    ; $4ee5: $77
    xor c                                         ; $4ee6: $a9
    and a                                         ; $4ee7: $a7
    adc b                                         ; $4ee8: $88
    adc d                                         ; $4ee9: $8a
    cp d                                          ; $4eea: $ba
    xor d                                         ; $4eeb: $aa
    ld a, b                                       ; $4eec: $78
    halt                                          ; $4eed: $76
    ld e, b                                       ; $4eee: $58
    sbc b                                         ; $4eef: $98
    add [hl]                                      ; $4ef0: $86
    ld d, h                                       ; $4ef1: $54
    ld [hl], a                                    ; $4ef2: $77
    ld d, l                                       ; $4ef3: $55
    ld b, e                                       ; $4ef4: $43
    inc [hl]                                      ; $4ef5: $34
    ld b, l                                       ; $4ef6: $45
    ld a, b                                       ; $4ef7: $78
    adc c                                         ; $4ef8: $89
    cp c                                          ; $4ef9: $b9
    sbc d                                         ; $4efa: $9a
    cp e                                          ; $4efb: $bb
    xor d                                         ; $4efc: $aa
    xor b                                         ; $4efd: $a8
    ld h, [hl]                                    ; $4efe: $66
    ld b, h                                       ; $4eff: $44
    ld b, e                                       ; $4f00: $43
    inc sp                                        ; $4f01: $33
    db $10                                        ; $4f02: $10
    inc d                                         ; $4f03: $14
    ld l, b                                       ; $4f04: $68
    sbc b                                         ; $4f05: $98
    halt                                          ; $4f06: $76
    adc d                                         ; $4f07: $8a
    sbc d                                         ; $4f08: $9a
    xor c                                         ; $4f09: $a9
    cp e                                          ; $4f0a: $bb
    and a                                         ; $4f0b: $a7
    adc b                                         ; $4f0c: $88
    halt                                          ; $4f0d: $76
    ld h, a                                       ; $4f0e: $67
    xor c                                         ; $4f0f: $a9
    add a                                         ; $4f10: $87
    ld a, c                                       ; $4f11: $79
    sub a                                         ; $4f12: $97
    ld a, d                                       ; $4f13: $7a
    xor e                                         ; $4f14: $ab
    res 3, c                                      ; $4f15: $cb $99
    xor d                                         ; $4f17: $aa
    xor c                                         ; $4f18: $a9
    ld h, e                                       ; $4f19: $63
    ld [bc], a                                    ; $4f1a: $02
    inc hl                                        ; $4f1b: $23
    dec [hl]                                      ; $4f1c: $35
    ld l, b                                       ; $4f1d: $68
    sbc b                                         ; $4f1e: $98
    xor d                                         ; $4f1f: $aa
    sbc e                                         ; $4f20: $9b
    cp h                                          ; $4f21: $bc
    db $db                                        ; $4f22: $db
    cp l                                          ; $4f23: $bd
    ret                                           ; $4f24: $c9


    add a                                         ; $4f25: $87
    ld h, [hl]                                    ; $4f26: $66
    ld h, [hl]                                    ; $4f27: $66
    ld d, [hl]                                    ; $4f28: $56
    ld d, l                                       ; $4f29: $55
    dec [hl]                                      ; $4f2a: $35
    ld [hl], a                                    ; $4f2b: $77
    ld h, [hl]                                    ; $4f2c: $66
    ld [hl], a                                    ; $4f2d: $77
    adc c                                         ; $4f2e: $89
    sbc d                                         ; $4f2f: $9a
    adc $db                                       ; $4f30: $ce $db
    sub a                                         ; $4f32: $97
    ld h, h                                       ; $4f33: $64
    ld hl, $1202                                  ; $4f34: $21 $02 $12
    ld d, [hl]                                    ; $4f37: $56
    ld d, [hl]                                    ; $4f38: $56
    ld a, b                                       ; $4f39: $78
    add a                                         ; $4f3a: $87
    adc c                                         ; $4f3b: $89
    xor d                                         ; $4f3c: $aa
    xor d                                         ; $4f3d: $aa
    sbc d                                         ; $4f3e: $9a
    adc c                                         ; $4f3f: $89
    sub a                                         ; $4f40: $97
    ld h, [hl]                                    ; $4f41: $66
    ld b, h                                       ; $4f42: $44
    ld b, [hl]                                    ; $4f43: $46
    ld a, c                                       ; $4f44: $79
    sbc e                                         ; $4f45: $9b
    rst $18                                       ; $4f46: $df
    xor $db                                       ; $4f47: $ee $db
    xor e                                         ; $4f49: $ab
    sub [hl]                                      ; $4f4a: $96
    ld d, h                                       ; $4f4b: $54
    ld b, e                                       ; $4f4c: $43
    ld [hl+], a                                   ; $4f4d: $22
    inc h                                         ; $4f4e: $24
    ld a, c                                       ; $4f4f: $79
    xor e                                         ; $4f50: $ab
    xor c                                         ; $4f51: $a9
    adc b                                         ; $4f52: $88
    adc b                                         ; $4f53: $88
    ld [hl], a                                    ; $4f54: $77
    xor e                                         ; $4f55: $ab
    cp d                                          ; $4f56: $ba
    call $85ca                                    ; $4f57: $cd $ca $85
    ld b, l                                       ; $4f5a: $45
    ld d, [hl]                                    ; $4f5b: $56
    ld h, e                                       ; $4f5c: $63
    dec [hl]                                      ; $4f5d: $35
    ld d, l                                       ; $4f5e: $55
    ld d, [hl]                                    ; $4f5f: $56
    ld d, [hl]                                    ; $4f60: $56
    ld a, b                                       ; $4f61: $78
    cp h                                          ; $4f62: $bc
    db $db                                        ; $4f63: $db
    ld h, l                                       ; $4f64: $65
    ld d, e                                       ; $4f65: $53
    ld b, l                                       ; $4f66: $45
    ld b, d                                       ; $4f67: $42
    ld b, [hl]                                    ; $4f68: $46
    ld d, [hl]                                    ; $4f69: $56
    ld h, l                                       ; $4f6a: $65
    sbc e                                         ; $4f6b: $9b
    cp h                                          ; $4f6c: $bc
    jp z, $cbbd                                   ; $4f6d: $ca $bd $cb

    cp c                                          ; $4f70: $b9
    ld l, b                                       ; $4f71: $68
    ld h, [hl]                                    ; $4f72: $66
    ld d, [hl]                                    ; $4f73: $56
    ld b, l                                       ; $4f74: $45
    ld a, c                                       ; $4f75: $79
    cp e                                          ; $4f76: $bb
    xor c                                         ; $4f77: $a9
    add l                                         ; $4f78: $85
    dec [hl]                                      ; $4f79: $35
    ld h, [hl]                                    ; $4f7a: $66
    ld h, l                                       ; $4f7b: $65
    ld a, c                                       ; $4f7c: $79
    sub a                                         ; $4f7d: $97
    adc d                                         ; $4f7e: $8a
    call z, Call_010_4384                         ; $4f7f: $cc $84 $43
    ld [de], a                                    ; $4f82: $12
    ld [hl+], a                                   ; $4f83: $22
    ld e, b                                       ; $4f84: $58
    ld a, d                                       ; $4f85: $7a
    call z, $dccc                                 ; $4f86: $cc $cc $dc
    call z, $98a9                                 ; $4f89: $cc $a9 $98
    ld [hl], a                                    ; $4f8c: $77
    adc d                                         ; $4f8d: $8a
    add [hl]                                      ; $4f8e: $86
    ld h, h                                       ; $4f8f: $64
    ld b, e                                       ; $4f90: $43
    ld [hl+], a                                   ; $4f91: $22
    ld d, [hl]                                    ; $4f92: $56
    ld h, a                                       ; $4f93: $67
    ld a, c                                       ; $4f94: $79
    sub a                                         ; $4f95: $97
    add a                                         ; $4f96: $87
    ld h, [hl]                                    ; $4f97: $66
    ld [hl], a                                    ; $4f98: $77
    ld a, b                                       ; $4f99: $78
    ld a, b                                       ; $4f9a: $78
    cp e                                          ; $4f9b: $bb
    cp d                                          ; $4f9c: $ba
    add a                                         ; $4f9d: $87
    ld e, b                                       ; $4f9e: $58
    adc c                                         ; $4f9f: $89
    add a                                         ; $4fa0: $87
    sbc e                                         ; $4fa1: $9b
    jp z, Jump_010_6875                           ; $4fa2: $ca $75 $68

    xor d                                         ; $4fa5: $aa
    add h                                         ; $4fa6: $84
    inc sp                                        ; $4fa7: $33
    ld h, a                                       ; $4fa8: $67
    ld h, a                                       ; $4fa9: $67
    ld [hl], a                                    ; $4faa: $77
    ld h, a                                       ; $4fab: $67
    xor [hl]                                      ; $4fac: $ae
    res 0, [hl]                                   ; $4fad: $cb $86
    adc c                                         ; $4faf: $89
    ld h, l                                       ; $4fb0: $65
    ld h, l                                       ; $4fb1: $65
    add [hl]                                      ; $4fb2: $86
    halt                                          ; $4fb3: $76
    dec [hl]                                      ; $4fb4: $35
    ld l, c                                       ; $4fb5: $69
    sbc c                                         ; $4fb6: $99
    sub l                                         ; $4fb7: $95
    sbc d                                         ; $4fb8: $9a
    and a                                         ; $4fb9: $a7
    adc d                                         ; $4fba: $8a
    sub l                                         ; $4fbb: $95
    ld l, b                                       ; $4fbc: $68
    sbc b                                         ; $4fbd: $98
    add a                                         ; $4fbe: $87
    adc c                                         ; $4fbf: $89
    sbc d                                         ; $4fc0: $9a
    call Call_010_55a8                            ; $4fc1: $cd $a8 $55
    ld b, l                                       ; $4fc4: $45
    ld b, d                                       ; $4fc5: $42
    ld [hl+], a                                   ; $4fc6: $22
    inc hl                                        ; $4fc7: $23
    inc sp                                        ; $4fc8: $33
    adc c                                         ; $4fc9: $89
    xor c                                         ; $4fca: $a9
    xor b                                         ; $4fcb: $a8
    cp l                                          ; $4fcc: $bd
    db $db                                        ; $4fcd: $db
    cp d                                          ; $4fce: $ba
    xor d                                         ; $4fcf: $aa
    sbc e                                         ; $4fd0: $9b
    jp z, $bc9a                                   ; $4fd1: $ca $9a $bc

    call c, Call_010_4584                         ; $4fd4: $dc $84 $45
    ld d, e                                       ; $4fd7: $53
    ld de, $4122                                  ; $4fd8: $11 $22 $41
    ld [de], a                                    ; $4fdb: $12
    db $10                                        ; $4fdc: $10
    ld [hl], $ab                                  ; $4fdd: $36 $ab
    cp e                                          ; $4fdf: $bb
    xor e                                         ; $4fe0: $ab
    call z, $dcee                                 ; $4fe1: $cc $ee $dc
    db $ec                                        ; $4fe4: $ec
    xor c                                         ; $4fe5: $a9
    sbc b                                         ; $4fe6: $98
    ld h, l                                       ; $4fe7: $65
    ld h, [hl]                                    ; $4fe8: $66
    adc b                                         ; $4fe9: $88
    ld d, h                                       ; $4fea: $54
    ld d, h                                       ; $4feb: $54
    ld b, l                                       ; $4fec: $45
    ld d, [hl]                                    ; $4fed: $56
    adc b                                         ; $4fee: $88
    halt                                          ; $4fef: $76
    adc b                                         ; $4ff0: $88
    add [hl]                                      ; $4ff1: $86
    ld h, h                                       ; $4ff2: $64
    ld [hl-], a                                   ; $4ff3: $32
    inc h                                         ; $4ff4: $24
    ld h, a                                       ; $4ff5: $67
    sbc b                                         ; $4ff6: $98
    ld [hl], a                                    ; $4ff7: $77
    sub a                                         ; $4ff8: $97
    sbc c                                         ; $4ff9: $99
    xor c                                         ; $4ffa: $a9
    add a                                         ; $4ffb: $87
    ld a, b                                       ; $4ffc: $78
    sbc c                                         ; $4ffd: $99
    xor c                                         ; $4ffe: $a9
    xor e                                         ; $4fff: $ab
    cp d                                          ; $5000: $ba
    add a                                         ; $5001: $87
    ld h, a                                       ; $5002: $67
    adc c                                         ; $5003: $89
    halt                                          ; $5004: $76
    ld b, d                                       ; $5005: $42
    ld [hl+], a                                   ; $5006: $22
    inc [hl]                                      ; $5007: $34
    ld d, a                                       ; $5008: $57
    adc c                                         ; $5009: $89
    xor h                                         ; $500a: $ac
    rst $18                                       ; $500b: $df
    cp $dc                                        ; $500c: $fe $dc
    add [hl]                                      ; $500e: $86
    adc b                                         ; $500f: $88
    ld h, l                                       ; $5010: $65
    ld d, [hl]                                    ; $5011: $56
    ld h, [hl]                                    ; $5012: $66
    ld h, [hl]                                    ; $5013: $66
    adc d                                         ; $5014: $8a
    call z, Call_010_76a8                         ; $5015: $cc $a8 $76
    ld h, l                                       ; $5018: $65
    ld b, h                                       ; $5019: $44
    ld b, d                                       ; $501a: $42
    inc sp                                        ; $501b: $33
    ld d, [hl]                                    ; $501c: $56
    sbc e                                         ; $501d: $9b
    cp e                                          ; $501e: $bb
    xor d                                         ; $501f: $aa
    ld l, b                                       ; $5020: $68
    halt                                          ; $5021: $76
    halt                                          ; $5022: $76
    ld [hl], a                                    ; $5023: $77
    ld h, [hl]                                    ; $5024: $66
    ld h, [hl]                                    ; $5025: $66
    adc d                                         ; $5026: $8a
    xor b                                         ; $5027: $a8
    add [hl]                                      ; $5028: $86
    ld b, h                                       ; $5029: $44
    ld [hl-], a                                   ; $502a: $32
    inc h                                         ; $502b: $24
    ld d, a                                       ; $502c: $57
    adc d                                         ; $502d: $8a
    adc $ca                                       ; $502e: $ce $ca
    cp d                                          ; $5030: $ba
    cp e                                          ; $5031: $bb
    sbc e                                         ; $5032: $9b
    xor e                                         ; $5033: $ab
    xor d                                         ; $5034: $aa
    xor d                                         ; $5035: $aa
    xor b                                         ; $5036: $a8
    sbc b                                         ; $5037: $98
    ld l, b                                       ; $5038: $68
    add l                                         ; $5039: $85
    ld d, [hl]                                    ; $503a: $56
    adc b                                         ; $503b: $88
    ld d, h                                       ; $503c: $54
    inc sp                                        ; $503d: $33
    ld b, l                                       ; $503e: $45
    ld d, l                                       ; $503f: $55
    ld h, l                                       ; $5040: $65
    ld a, d                                       ; $5041: $7a
    cp e                                          ; $5042: $bb
    cp l                                          ; $5043: $bd
    sbc c                                         ; $5044: $99
    sbc e                                         ; $5045: $9b
    sbc b                                         ; $5046: $98
    ld d, c                                       ; $5047: $51
    ld de, $3532                                  ; $5048: $11 $32 $35
    ld d, [hl]                                    ; $504b: $56
    adc e                                         ; $504c: $8b
    call $eebc                                    ; $504d: $cd $bc $ee
    ret                                           ; $5050: $c9


    ld h, a                                       ; $5051: $67
    halt                                          ; $5052: $76
    ld h, [hl]                                    ; $5053: $66
    ld a, c                                       ; $5054: $79
    sbc b                                         ; $5055: $98
    ld h, l                                       ; $5056: $65
    ld b, e                                       ; $5057: $43
    ld hl, $6734                                  ; $5058: $21 $34 $67
    ld a, c                                       ; $505b: $79
    add [hl]                                      ; $505c: $86
    sbc b                                         ; $505d: $98
    xor e                                         ; $505e: $ab
    cp e                                          ; $505f: $bb
    cp b                                          ; $5060: $b8
    ld h, [hl]                                    ; $5061: $66
    ld d, d                                       ; $5062: $52
    ld [hl+], a                                   ; $5063: $22
    ld hl, $7904                                  ; $5064: $21 $04 $79
    cp l                                          ; $5067: $bd
    call z, $bbcc                                 ; $5068: $cc $cc $bb
    cp h                                          ; $506b: $bc
    cp d                                          ; $506c: $ba
    adc c                                         ; $506d: $89
    ld [hl], l                                    ; $506e: $75
    ld [hl+], a                                   ; $506f: $22
    scf                                           ; $5070: $37
    adc c                                         ; $5071: $89
    cp e                                          ; $5072: $bb
    rst $18                                       ; $5073: $df
    call z, $dadc                                 ; $5074: $cc $dc $da
    sub a                                         ; $5077: $97
    sbc d                                         ; $5078: $9a
    add [hl]                                      ; $5079: $86
    ld h, e                                       ; $507a: $63
    inc hl                                        ; $507b: $23
    ld h, a                                       ; $507c: $67
    sbc h                                         ; $507d: $9c
    call c, $b9ba                                 ; $507e: $dc $ba $b9
    add [hl]                                      ; $5081: $86
    ld [hl-], a                                   ; $5082: $32
    inc h                                         ; $5083: $24
    inc sp                                        ; $5084: $33
    inc sp                                        ; $5085: $33
    ld h, [hl]                                    ; $5086: $66
    ld h, l                                       ; $5087: $65
    ld l, b                                       ; $5088: $68
    adc c                                         ; $5089: $89
    ld [hl], a                                    ; $508a: $77
    add a                                         ; $508b: $87
    ld a, d                                       ; $508c: $7a
    xor e                                         ; $508d: $ab
    db $dd                                        ; $508e: $dd
    cp d                                          ; $508f: $ba
    xor c                                         ; $5090: $a9
    ld [hl], l                                    ; $5091: $75
    ld d, l                                       ; $5092: $55
    ld b, c                                       ; $5093: $41
    ld bc, $3544                                  ; $5094: $01 $44 $35
    inc [hl]                                      ; $5097: $34
    sbc c                                         ; $5098: $99
    cp d                                          ; $5099: $ba
    ret                                           ; $509a: $c9


    xor h                                         ; $509b: $ac
    xor b                                         ; $509c: $a8
    adc b                                         ; $509d: $88
    ld a, b                                       ; $509e: $78
    ld a, b                                       ; $509f: $78
    adc b                                         ; $50a0: $88
    adc b                                         ; $50a1: $88
    add a                                         ; $50a2: $87
    ld [hl], a                                    ; $50a3: $77
    ld h, h                                       ; $50a4: $64
    ld h, a                                       ; $50a5: $67
    ld d, e                                       ; $50a6: $53
    ld b, l                                       ; $50a7: $45
    add a                                         ; $50a8: $87
    ld l, b                                       ; $50a9: $68
    add a                                         ; $50aa: $87
    sbc d                                         ; $50ab: $9a
    cp h                                          ; $50ac: $bc
    xor h                                         ; $50ad: $ac
    xor d                                         ; $50ae: $aa
    ld [hl], l                                    ; $50af: $75
    ld b, e                                       ; $50b0: $43
    ld b, [hl]                                    ; $50b1: $46
    ld b, h                                       ; $50b2: $44
    ld b, [hl]                                    ; $50b3: $46
    xor d                                         ; $50b4: $aa
    cp h                                          ; $50b5: $bc
    db $ed                                        ; $50b6: $ed
    rst $18                                       ; $50b7: $df
    db $ec                                        ; $50b8: $ec
    cp d                                          ; $50b9: $ba
    xor c                                         ; $50ba: $a9
    adc b                                         ; $50bb: $88
    xor d                                         ; $50bc: $aa
    sub a                                         ; $50bd: $97
    halt                                          ; $50be: $76
    ld a, c                                       ; $50bf: $79
    adc b                                         ; $50c0: $88
    ld a, b                                       ; $50c1: $78
    sbc h                                         ; $50c2: $9c
    jp z, Jump_010_5687                           ; $50c3: $ca $87 $56

    ld h, h                                       ; $50c6: $64
    ld d, a                                       ; $50c7: $57
    inc [hl]                                      ; $50c8: $34
    ld b, h                                       ; $50c9: $44
    ld h, l                                       ; $50ca: $65
    ld b, l                                       ; $50cb: $45
    ld b, h                                       ; $50cc: $44
    ld d, l                                       ; $50cd: $55
    ld h, a                                       ; $50ce: $67
    add a                                         ; $50cf: $87
    adc c                                         ; $50d0: $89
    sub a                                         ; $50d1: $97
    ld d, [hl]                                    ; $50d2: $56
    sub a                                         ; $50d3: $97
    sbc c                                         ; $50d4: $99
    ld [hl], l                                    ; $50d5: $75
    ld b, l                                       ; $50d6: $45
    ld h, [hl]                                    ; $50d7: $66
    ld d, l                                       ; $50d8: $55
    ld d, l                                       ; $50d9: $55
    ld l, b                                       ; $50da: $68
    xor c                                         ; $50db: $a9
    set 3, d                                      ; $50dc: $cb $da
    sub a                                         ; $50de: $97
    ld h, a                                       ; $50df: $67
    sbc b                                         ; $50e0: $98
    ld [hl], l                                    ; $50e1: $75
    ld b, [hl]                                    ; $50e2: $46
    halt                                          ; $50e3: $76
    ld a, b                                       ; $50e4: $78
    sbc e                                         ; $50e5: $9b
    call $cafd                                    ; $50e6: $cd $fd $ca
    add l                                         ; $50e9: $85
    ld d, h                                       ; $50ea: $54
    ld b, l                                       ; $50eb: $45
    ld d, l                                       ; $50ec: $55
    ld b, h                                       ; $50ed: $44
    ld [hl-], a                                   ; $50ee: $32
    inc h                                         ; $50ef: $24
    ld d, a                                       ; $50f0: $57
    ld a, c                                       ; $50f1: $79
    xor c                                         ; $50f2: $a9
    sbc d                                         ; $50f3: $9a
    sbc e                                         ; $50f4: $9b
    xor c                                         ; $50f5: $a9
    adc b                                         ; $50f6: $88
    xor h                                         ; $50f7: $ac
    res 5, c                                      ; $50f8: $cb $a9
    ld [hl], a                                    ; $50fa: $77
    adc c                                         ; $50fb: $89
    sbc d                                         ; $50fc: $9a
    sbc d                                         ; $50fd: $9a
    ld [hl], a                                    ; $50fe: $77
    adc b                                         ; $50ff: $88
    call $dccc                                    ; $5100: $cd $cc $dc
    xor b                                         ; $5103: $a8
    halt                                          ; $5104: $76
    ld b, e                                       ; $5105: $43
    ld de, $2401                                  ; $5106: $11 $01 $24
    ld d, l                                       ; $5109: $55
    ld sp, $6546                                  ; $510a: $31 $46 $65
    ld h, a                                       ; $510d: $67
    add a                                         ; $510e: $87
    ld h, a                                       ; $510f: $67
    add a                                         ; $5110: $87
    ld [hl], a                                    ; $5111: $77
    xor e                                         ; $5112: $ab
    cp h                                          ; $5113: $bc
    cp e                                          ; $5114: $bb
    sbc $fe                                       ; $5115: $de $fe
    db $db                                        ; $5117: $db
    cp d                                          ; $5118: $ba
    sbc b                                         ; $5119: $98
    ld h, [hl]                                    ; $511a: $66
    sbc c                                         ; $511b: $99
    ld [hl], l                                    ; $511c: $75
    ld a, c                                       ; $511d: $79
    add a                                         ; $511e: $87
    ld d, l                                       ; $511f: $55
    ld h, a                                       ; $5120: $67
    ld b, h                                       ; $5121: $44
    inc [hl]                                      ; $5122: $34
    ld a, b                                       ; $5123: $78
    ld [hl], l                                    ; $5124: $75
    ld h, l                                       ; $5125: $65
    ld d, a                                       ; $5126: $57
    add a                                         ; $5127: $87
    ld l, b                                       ; $5128: $68
    ld d, [hl]                                    ; $5129: $56
    ld h, a                                       ; $512a: $67
    ld [hl], a                                    ; $512b: $77
    halt                                          ; $512c: $76
    halt                                          ; $512d: $76
    ld h, l                                       ; $512e: $65
    ld h, a                                       ; $512f: $67
    ld h, [hl]                                    ; $5130: $66
    ld l, b                                       ; $5131: $68
    adc d                                         ; $5132: $8a
    sbc b                                         ; $5133: $98
    adc c                                         ; $5134: $89
    cp c                                          ; $5135: $b9
    ld h, h                                       ; $5136: $64
    ld b, l                                       ; $5137: $45
    ld a, b                                       ; $5138: $78
    xor d                                         ; $5139: $aa
    xor d                                         ; $513a: $aa
    cp h                                          ; $513b: $bc
    cp c                                          ; $513c: $b9
    sbc c                                         ; $513d: $99
    cp e                                          ; $513e: $bb
    call $a8dd                                    ; $513f: $cd $dd $a8
    halt                                          ; $5142: $76
    ld d, l                                       ; $5143: $55
    ld b, e                                       ; $5144: $43
    ld sp, $1400                                  ; $5145: $31 $00 $14
    ld [hl], a                                    ; $5148: $77
    ld a, b                                       ; $5149: $78
    adc d                                         ; $514a: $8a
    call z, $cbcd                                 ; $514b: $cc $cd $cb
    xor c                                         ; $514e: $a9
    adc c                                         ; $514f: $89
    add [hl]                                      ; $5150: $86
    ld h, h                                       ; $5151: $64
    ld [hl+], a                                   ; $5152: $22
    inc sp                                        ; $5153: $33
    ld b, [hl]                                    ; $5154: $46
    adc d                                         ; $5155: $8a
    sbc c                                         ; $5156: $99
    xor e                                         ; $5157: $ab
    rst $18                                       ; $5158: $df
    db $eb                                        ; $5159: $eb
    ret                                           ; $515a: $c9


    halt                                          ; $515b: $76
    ld d, l                                       ; $515c: $55
    halt                                          ; $515d: $76
    ld h, [hl]                                    ; $515e: $66
    ld [hl], a                                    ; $515f: $77
    add a                                         ; $5160: $87
    sbc c                                         ; $5161: $99
    sbc c                                         ; $5162: $99
    halt                                          ; $5163: $76
    ld [hl], l                                    ; $5164: $75
    ld d, h                                       ; $5165: $54
    ld b, d                                       ; $5166: $42
    inc [hl]                                      ; $5167: $34
    ld d, [hl]                                    ; $5168: $56
    ld d, [hl]                                    ; $5169: $56
    ld [hl], a                                    ; $516a: $77
    ld a, c                                       ; $516b: $79
    sbc b                                         ; $516c: $98
    adc b                                         ; $516d: $88
    sbc h                                         ; $516e: $9c
    sbc $ef                                       ; $516f: $de $ef
    cp $cb                                        ; $5171: $fe $cb
    cp d                                          ; $5173: $ba
    add l                                         ; $5174: $85
    ld b, h                                       ; $5175: $44
    ld b, e                                       ; $5176: $43
    ld [hl+], a                                   ; $5177: $22
    ld [hl+], a                                   ; $5178: $22
    inc [hl]                                      ; $5179: $34
    ld b, l                                       ; $517a: $45
    ld [hl], a                                    ; $517b: $77
    ld [hl], a                                    ; $517c: $77
    ld l, b                                       ; $517d: $68
    ld a, b                                       ; $517e: $78
    xor e                                         ; $517f: $ab
    xor c                                         ; $5180: $a9
    ld h, a                                       ; $5181: $67
    ld a, b                                       ; $5182: $78
    ld a, b                                       ; $5183: $78
    sbc b                                         ; $5184: $98
    sbc b                                         ; $5185: $98
    ld [hl], a                                    ; $5186: $77
    ld a, b                                       ; $5187: $78
    xor e                                         ; $5188: $ab
    call z, $aaba                                 ; $5189: $cc $ba $aa
    sub a                                         ; $518c: $97
    ld [hl], a                                    ; $518d: $77
    ld [hl], h                                    ; $518e: $74
    inc [hl]                                      ; $518f: $34
    ld d, h                                       ; $5190: $54
    dec h                                         ; $5191: $25
    dec [hl]                                      ; $5192: $35
    ld h, a                                       ; $5193: $67
    adc c                                         ; $5194: $89
    add a                                         ; $5195: $87
    ld h, [hl]                                    ; $5196: $66
    ld h, l                                       ; $5197: $65
    ld d, h                                       ; $5198: $54
    ld [hl-], a                                   ; $5199: $32
    dec [hl]                                      ; $519a: $35
    ld h, [hl]                                    ; $519b: $66
    ld b, l                                       ; $519c: $45
    ld a, d                                       ; $519d: $7a
    sbc d                                         ; $519e: $9a
    cp [hl]                                       ; $519f: $be
    db $fd                                        ; $51a0: $fd
    cp e                                          ; $51a1: $bb
    adc $dc                                       ; $51a2: $ce $dc
    res 5, b                                      ; $51a4: $cb $a8
    add a                                         ; $51a6: $87
    ld [hl], l                                    ; $51a7: $75
    ld b, h                                       ; $51a8: $44
    ld h, [hl]                                    ; $51a9: $66
    ld h, a                                       ; $51aa: $67
    halt                                          ; $51ab: $76
    ld h, l                                       ; $51ac: $65
    adc e                                         ; $51ad: $8b
    call z, $98ba                                 ; $51ae: $cc $ba $98
    adc b                                         ; $51b1: $88
    add [hl]                                      ; $51b2: $86
    ld [hl-], a                                   ; $51b3: $32
    ld [hl+], a                                   ; $51b4: $22
    ld [de], a                                    ; $51b5: $12
    ld b, a                                       ; $51b6: $47
    ld [hl], a                                    ; $51b7: $77
    ld [hl], a                                    ; $51b8: $77
    sbc b                                         ; $51b9: $98
    sbc d                                         ; $51ba: $9a
    add a                                         ; $51bb: $87
    ld [hl], a                                    ; $51bc: $77
    ld h, l                                       ; $51bd: $65
    ld a, b                                       ; $51be: $78
    halt                                          ; $51bf: $76
    ld h, [hl]                                    ; $51c0: $66
    sbc e                                         ; $51c1: $9b
    cp h                                          ; $51c2: $bc
    ret                                           ; $51c3: $c9


    sbc c                                         ; $51c4: $99
    xor h                                         ; $51c5: $ac
    rst $38                                       ; $51c6: $ff
    cp $ed                                        ; $51c7: $fe $ed
    ret                                           ; $51c9: $c9


    ld h, l                                       ; $51ca: $65
    inc [hl]                                      ; $51cb: $34
    ld sp, $5512                                  ; $51cc: $31 $12 $55
    ld b, e                                       ; $51cf: $43
    ld b, h                                       ; $51d0: $44
    ld b, l                                       ; $51d1: $45
    ld d, [hl]                                    ; $51d2: $56
    adc b                                         ; $51d3: $88
    xor e                                         ; $51d4: $ab
    xor h                                         ; $51d5: $ac
    xor c                                         ; $51d6: $a9
    sbc b                                         ; $51d7: $98
    ld d, e                                       ; $51d8: $53
    dec [hl]                                      ; $51d9: $35
    ld h, [hl]                                    ; $51da: $66
    ld h, a                                       ; $51db: $67
    ld [hl], a                                    ; $51dc: $77
    ld [hl], a                                    ; $51dd: $77
    adc d                                         ; $51de: $8a
    sub a                                         ; $51df: $97
    sbc c                                         ; $51e0: $99
    add a                                         ; $51e1: $87
    ld a, b                                       ; $51e2: $78
    sub a                                         ; $51e3: $97
    ld d, l                                       ; $51e4: $55
    ld b, h                                       ; $51e5: $44
    ld h, a                                       ; $51e6: $67
    adc d                                         ; $51e7: $8a
    cp h                                          ; $51e8: $bc
    sbc $db                                       ; $51e9: $de $db
    res 5, c                                      ; $51eb: $cb $a9
    sbc c                                         ; $51ed: $99
    sub a                                         ; $51ee: $97
    ld h, [hl]                                    ; $51ef: $66
    add [hl]                                      ; $51f0: $86
    ld h, e                                       ; $51f1: $63
    inc hl                                        ; $51f2: $23
    ld de, $7735                                  ; $51f3: $11 $35 $77
    halt                                          ; $51f6: $76
    ld [hl], a                                    ; $51f7: $77
    adc c                                         ; $51f8: $89
    sub a                                         ; $51f9: $97
    sbc b                                         ; $51fa: $98
    halt                                          ; $51fb: $76
    ld h, [hl]                                    ; $51fc: $66
    ld [hl], l                                    ; $51fd: $75
    ld h, [hl]                                    ; $51fe: $66
    ld d, l                                       ; $51ff: $55
    add a                                         ; $5200: $87
    adc b                                         ; $5201: $88
    sbc d                                         ; $5202: $9a
    cp d                                          ; $5203: $ba
    xor d                                         ; $5204: $aa
    sbc c                                         ; $5205: $99
    db $dd                                        ; $5206: $dd
    rst $28                                       ; $5207: $ef
    db $ec                                        ; $5208: $ec
    xor c                                         ; $5209: $a9
    ld [hl], a                                    ; $520a: $77
    halt                                          ; $520b: $76
    ld d, l                                       ; $520c: $55
    ld b, e                                       ; $520d: $43
    inc sp                                        ; $520e: $33
    adc d                                         ; $520f: $8a
    xor c                                         ; $5210: $a9
    ld h, [hl]                                    ; $5211: $66
    ld h, e                                       ; $5212: $63
    ld b, [hl]                                    ; $5213: $46
    ld d, l                                       ; $5214: $55
    ld d, [hl]                                    ; $5215: $56
    adc c                                         ; $5216: $89
    ld a, b                                       ; $5217: $78
    sbc d                                         ; $5218: $9a
    cp e                                          ; $5219: $bb
    cp e                                          ; $521a: $bb
    cp e                                          ; $521b: $bb
    call z, Call_010_77a9                         ; $521c: $cc $a9 $77
    ld h, l                                       ; $521f: $65
    ld h, l                                       ; $5220: $65
    ld sp, $2100                                  ; $5221: $31 $00 $21
    ld [de], a                                    ; $5224: $12
    inc h                                         ; $5225: $24
    ld b, e                                       ; $5226: $43
    ld h, a                                       ; $5227: $67
    ld a, b                                       ; $5228: $78
    sbc d                                         ; $5229: $9a
    sbc $ff                                       ; $522a: $de $ff
    call c, $badd                                 ; $522c: $dc $dd $ba
    sbc b                                         ; $522f: $98
    ld h, l                                       ; $5230: $65
    ld d, h                                       ; $5231: $54
    ld b, a                                       ; $5232: $47
    add a                                         ; $5233: $87
    ld a, c                                       ; $5234: $79
    sbc c                                         ; $5235: $99
    sbc d                                         ; $5236: $9a
    sbc b                                         ; $5237: $98
    adc b                                         ; $5238: $88
    sbc c                                         ; $5239: $99
    adc c                                         ; $523a: $89
    xor e                                         ; $523b: $ab
    db $db                                        ; $523c: $db
    add a                                         ; $523d: $87
    ld [hl], l                                    ; $523e: $75
    ld h, [hl]                                    ; $523f: $66
    ld h, l                                       ; $5240: $65
    ld h, l                                       ; $5241: $65
    ld h, [hl]                                    ; $5242: $66
    halt                                          ; $5243: $76
    ld d, [hl]                                    ; $5244: $56
    ld d, h                                       ; $5245: $54
    inc sp                                        ; $5246: $33
    ld b, [hl]                                    ; $5247: $46
    ld d, l                                       ; $5248: $55
    ld b, l                                       ; $5249: $45
    ld d, h                                       ; $524a: $54
    dec [hl]                                      ; $524b: $35
    ld a, b                                       ; $524c: $78
    sbc b                                         ; $524d: $98
    xor d                                         ; $524e: $aa
    xor d                                         ; $524f: $aa
    cp h                                          ; $5250: $bc
    cp l                                          ; $5251: $bd
    call c, $a9da                                 ; $5252: $dc $da $a9
    ld h, l                                       ; $5255: $65
    ld d, a                                       ; $5256: $57
    ld h, h                                       ; $5257: $64
    ld [hl-], a                                   ; $5258: $32
    ld b, l                                       ; $5259: $45
    ld b, h                                       ; $525a: $44
    ld a, d                                       ; $525b: $7a
    sbc c                                         ; $525c: $99
    call $dbdd                                    ; $525d: $cd $dd $db
    xor c                                         ; $5260: $a9
    sbc b                                         ; $5261: $98
    add [hl]                                      ; $5262: $86
    ld d, l                                       ; $5263: $55
    ld a, b                                       ; $5264: $78
    halt                                          ; $5265: $76
    ld d, [hl]                                    ; $5266: $56
    ld l, b                                       ; $5267: $68
    halt                                          ; $5268: $76
    ld [hl], a                                    ; $5269: $77
    add a                                         ; $526a: $87
    ld a, b                                       ; $526b: $78
    ld [hl], a                                    ; $526c: $77
    adc b                                         ; $526d: $88
    sbc d                                         ; $526e: $9a
    cp h                                          ; $526f: $bc
    db $db                                        ; $5270: $db
    sub a                                         ; $5271: $97
    ld h, a                                       ; $5272: $67
    ld [hl], a                                    ; $5273: $77
    ld [hl], h                                    ; $5274: $74
    ld sp, $2602                                  ; $5275: $31 $02 $26
    adc e                                         ; $5278: $8b
    call z, Call_010_7887                         ; $5279: $cc $87 $78
    xor d                                         ; $527c: $aa
    xor b                                         ; $527d: $a8
    add l                                         ; $527e: $85
    ld d, a                                       ; $527f: $57
    sbc c                                         ; $5280: $99
    sbc c                                         ; $5281: $99
    xor c                                         ; $5282: $a9
    ld d, l                                       ; $5283: $55
    ld d, l                                       ; $5284: $55

Jump_010_5285:
    ld d, e                                       ; $5285: $53
    ld d, l                                       ; $5286: $55
    ld b, h                                       ; $5287: $44
    ld [hl], h                                    ; $5288: $74
    ld d, h                                       ; $5289: $54
    ld d, a                                       ; $528a: $57
    xor c                                         ; $528b: $a9
    xor h                                         ; $528c: $ac
    jp z, $bbbb                                   ; $528d: $ca $bb $bb

    adc b                                         ; $5290: $88
    ld [hl], a                                    ; $5291: $77
    ld [hl], l                                    ; $5292: $75
    ld b, [hl]                                    ; $5293: $46
    ld d, h                                       ; $5294: $54
    inc [hl]                                      ; $5295: $34

Call_010_5296:
    ld a, c                                       ; $5296: $79
    ld h, [hl]                                    ; $5297: $66
    adc d                                         ; $5298: $8a
    xor c                                         ; $5299: $a9
    sbc c                                         ; $529a: $99
    adc b                                         ; $529b: $88
    cp e                                          ; $529c: $bb
    set 1, [hl]                                   ; $529d: $cb $ce
    call z, $94a9                                 ; $529f: $cc $a9 $94
    ld b, e                                       ; $52a2: $43
    ld h, [hl]                                    ; $52a3: $66
    ld [hl], h                                    ; $52a4: $74
    ld d, l                                       ; $52a5: $55
    ld h, a                                       ; $52a6: $67
    ld a, b                                       ; $52a7: $78
    xor d                                         ; $52a8: $aa
    add [hl]                                      ; $52a9: $86
    ld d, l                                       ; $52aa: $55
    ld b, h                                       ; $52ab: $44
    ld h, a                                       ; $52ac: $67
    adc d                                         ; $52ad: $8a
    xor d                                         ; $52ae: $aa
    cp h                                          ; $52af: $bc
    cp e                                          ; $52b0: $bb
    xor c                                         ; $52b1: $a9
    sub a                                         ; $52b2: $97
    ld a, b                                       ; $52b3: $78
    ld [hl], l                                    ; $52b4: $75
    dec [hl]                                      ; $52b5: $35
    ld d, [hl]                                    ; $52b6: $56
    ld d, [hl]                                    ; $52b7: $56
    ld b, h                                       ; $52b8: $44
    ld b, l                                       ; $52b9: $45
    ld d, l                                       ; $52ba: $55
    ld a, b                                       ; $52bb: $78
    xor c                                         ; $52bc: $a9
    xor d                                         ; $52bd: $aa
    cp h                                          ; $52be: $bc
    res 3, c                                      ; $52bf: $cb $99
    xor e                                         ; $52c1: $ab
    cp e                                          ; $52c2: $bb
    cp e                                          ; $52c3: $bb
    xor b                                         ; $52c4: $a8
    halt                                          ; $52c5: $76
    ld b, h                                       ; $52c6: $44
    jr nc, jr_010_52ca                            ; $52c7: $30 $01

    ld b, a                                       ; $52c9: $47

jr_010_52ca:
    add a                                         ; $52ca: $87
    ld a, c                                       ; $52cb: $79
    sbc d                                         ; $52cc: $9a
    xor c                                         ; $52cd: $a9
    sbc b                                         ; $52ce: $98
    ld a, b                                       ; $52cf: $78
    add [hl]                                      ; $52d0: $86
    ld d, l                                       ; $52d1: $55
    ld b, h                                       ; $52d2: $44
    inc [hl]                                      ; $52d3: $34
    ld h, [hl]                                    ; $52d4: $66
    ld h, l                                       ; $52d5: $65
    ld b, l                                       ; $52d6: $45
    adc d                                         ; $52d7: $8a
    cp e                                          ; $52d8: $bb
    call $bbdc                                    ; $52d9: $cd $dc $bb
    cp h                                          ; $52dc: $bc
    cp c                                          ; $52dd: $b9
    adc d                                         ; $52de: $8a
    adc b                                         ; $52df: $88
    add l                                         ; $52e0: $85
    ld h, a                                       ; $52e1: $67
    halt                                          ; $52e2: $76
    adc c                                         ; $52e3: $89
    adc b                                         ; $52e4: $88
    add a                                         ; $52e5: $87
    ld [hl], a                                    ; $52e6: $77
    adc b                                         ; $52e7: $88
    adc b                                         ; $52e8: $88
    ld a, b                                       ; $52e9: $78
    halt                                          ; $52ea: $76
    halt                                          ; $52eb: $76
    halt                                          ; $52ec: $76
    ld b, h                                       ; $52ed: $44
    ld a, b                                       ; $52ee: $78
    ld b, h                                       ; $52ef: $44
    ld d, h                                       ; $52f0: $54
    ld h, a                                       ; $52f1: $67
    adc b                                         ; $52f2: $88
    sub [hl]                                      ; $52f3: $96
    sbc b                                         ; $52f4: $98
    ld h, a                                       ; $52f5: $67
    adc c                                         ; $52f6: $89
    cp e                                          ; $52f7: $bb
    sbc b                                         ; $52f8: $98
    ld a, b                                       ; $52f9: $78
    add l                                         ; $52fa: $85
    ld h, [hl]                                    ; $52fb: $66
    ld [hl], a                                    ; $52fc: $77
    add [hl]                                      ; $52fd: $86
    ld a, b                                       ; $52fe: $78
    sbc e                                         ; $52ff: $9b
    call $97cb                                    ; $5300: $cd $cb $97
    halt                                          ; $5303: $76
    halt                                          ; $5304: $76
    ld l, b                                       ; $5305: $68
    xor e                                         ; $5306: $ab
    cp d                                          ; $5307: $ba
    ld h, h                                       ; $5308: $64
    dec h                                         ; $5309: $25
    ld e, b                                       ; $530a: $58
    ld [hl], a                                    ; $530b: $77
    ld a, c                                       ; $530c: $79
    call z, $98aa                                 ; $530d: $cc $aa $98
    add a                                         ; $5310: $87
    ld h, [hl]                                    ; $5311: $66
    ld h, [hl]                                    ; $5312: $66
    ld h, l                                       ; $5313: $65
    ld d, h                                       ; $5314: $54
    ld b, e                                       ; $5315: $43
    ld e, b                                       ; $5316: $58
    xor d                                         ; $5317: $aa
    xor b                                         ; $5318: $a8
    ld h, a                                       ; $5319: $67
    adc b                                         ; $531a: $88
    ld a, c                                       ; $531b: $79
    adc c                                         ; $531c: $89
    xor d                                         ; $531d: $aa
    sbc c                                         ; $531e: $99
    and a                                         ; $531f: $a7
    ld h, h                                       ; $5320: $64
    ld b, h                                       ; $5321: $44
    inc sp                                        ; $5322: $33
    ld d, [hl]                                    ; $5323: $56
    ld [hl], l                                    ; $5324: $75
    ld d, [hl]                                    ; $5325: $56
    ld h, a                                       ; $5326: $67
    sbc e                                         ; $5327: $9b
    db $dd                                        ; $5328: $dd
    cp c                                          ; $5329: $b9
    sbc e                                         ; $532a: $9b
    call z, $97ba                                 ; $532b: $cc $ba $97
    add a                                         ; $532e: $87
    ld [hl], a                                    ; $532f: $77
    add [hl]                                      ; $5330: $86
    sbc c                                         ; $5331: $99
    add [hl]                                      ; $5332: $86
    ld d, [hl]                                    ; $5333: $56
    halt                                          ; $5334: $76
    ld d, e                                       ; $5335: $53
    db $10                                        ; $5336: $10
    inc hl                                        ; $5337: $23
    ld [hl+], a                                   ; $5338: $22
    ld [hl], $7a                                  ; $5339: $36 $7a
    call $c9ff                                    ; $533b: $cd $ff $c9
    add l                                         ; $533e: $85
    ld a, b                                       ; $533f: $78
    adc d                                         ; $5340: $8a
    or a                                          ; $5341: $b7
    ld l, d                                       ; $5342: $6a
    xor d                                         ; $5343: $aa
    sbc b                                         ; $5344: $98
    add l                                         ; $5345: $85
    add [hl]                                      ; $5346: $86
    ld d, h                                       ; $5347: $54
    ld d, e                                       ; $5348: $53
    ld [hl-], a                                   ; $5349: $32
    ld d, a                                       ; $534a: $57
    xor e                                         ; $534b: $ab
    call $bbec                                    ; $534c: $cd $ec $bb
    cp e                                          ; $534f: $bb
    sub [hl]                                      ; $5350: $96
    ld h, l                                       ; $5351: $65
    ld b, [hl]                                    ; $5352: $46
    ld d, a                                       ; $5353: $57
    adc b                                         ; $5354: $88
    ld h, [hl]                                    ; $5355: $66
    add a                                         ; $5356: $87
    halt                                          ; $5357: $76
    ld h, [hl]                                    ; $5358: $66
    ld l, d                                       ; $5359: $6a
    xor d                                         ; $535a: $aa
    cp c                                          ; $535b: $b9
    ld d, e                                       ; $535c: $53
    ld d, h                                       ; $535d: $54
    inc hl                                        ; $535e: $23
    ld b, a                                       ; $535f: $47
    add a                                         ; $5360: $87
    adc d                                         ; $5361: $8a
    xor b                                         ; $5362: $a8
    adc b                                         ; $5363: $88
    adc b                                         ; $5364: $88
    cp h                                          ; $5365: $bc
    res 5, c                                      ; $5366: $cb $a9
    sub a                                         ; $5368: $97
    ld d, [hl]                                    ; $5369: $56
    ld h, [hl]                                    ; $536a: $66
    ld l, b                                       ; $536b: $68
    sbc b                                         ; $536c: $98
    sub a                                         ; $536d: $97
    ld h, [hl]                                    ; $536e: $66
    ld a, b                                       ; $536f: $78
    cp d                                          ; $5370: $ba
    xor c                                         ; $5371: $a9
    ld h, [hl]                                    ; $5372: $66
    ld h, a                                       ; $5373: $67
    ld b, e                                       ; $5374: $43
    inc hl                                        ; $5375: $23
    ld b, l                                       ; $5376: $45
    ld e, b                                       ; $5377: $58
    sbc b                                         ; $5378: $98
    ld a, c                                       ; $5379: $79
    sbc c                                         ; $537a: $99
    add a                                         ; $537b: $87
    ld a, b                                       ; $537c: $78
    adc b                                         ; $537d: $88
    ld a, b                                       ; $537e: $78
    xor b                                         ; $537f: $a8
    add a                                         ; $5380: $87
    ld h, l                                       ; $5381: $65
    ld d, h                                       ; $5382: $54
    ld d, h                                       ; $5383: $54
    ld b, l                                       ; $5384: $45
    ld b, [hl]                                    ; $5385: $46
    ld [hl], a                                    ; $5386: $77

Jump_010_5387:
    adc e                                         ; $5387: $8b
    call c, $aa98                                 ; $5388: $dc $98 $aa
    ld h, [hl]                                    ; $538b: $66
    ld a, b                                       ; $538c: $78
    sbc d                                         ; $538d: $9a
    adc d                                         ; $538e: $8a
    sbc c                                         ; $538f: $99
    call $fdef                                    ; $5390: $cd $ef $fd
    xor b                                         ; $5393: $a8
    adc c                                         ; $5394: $89
    sub a                                         ; $5395: $97
    ld b, e                                       ; $5396: $43
    ld [hl+], a                                   ; $5397: $22
    inc h                                         ; $5398: $24
    ld sp, $5925                                  ; $5399: $31 $25 $59
    adc d                                         ; $539c: $8a
    sbc d                                         ; $539d: $9a
    sbc c                                         ; $539e: $99
    sbc e                                         ; $539f: $9b
    sbc b                                         ; $53a0: $98
    adc b                                         ; $53a1: $88
    adc c                                         ; $53a2: $89
    xor e                                         ; $53a3: $ab
    cp e                                          ; $53a4: $bb
    sbc b                                         ; $53a5: $98
    ld [hl], a                                    ; $53a6: $77
    halt                                          ; $53a7: $76

Jump_010_53a8:
    ld h, [hl]                                    ; $53a8: $66
    ld h, l                                       ; $53a9: $65
    ld b, e                                       ; $53aa: $43
    inc sp                                        ; $53ab: $33
    ld d, l                                       ; $53ac: $55
    ld h, [hl]                                    ; $53ad: $66
    ld [hl], a                                    ; $53ae: $77
    ld a, d                                       ; $53af: $7a
    cp e                                          ; $53b0: $bb
    cp d                                          ; $53b1: $ba
    sbc c                                         ; $53b2: $99
    sbc c                                         ; $53b3: $99
    ld h, l                                       ; $53b4: $65
    ld h, a                                       ; $53b5: $67
    ld h, [hl]                                    ; $53b6: $66
    ld d, d                                       ; $53b7: $52
    db $10                                        ; $53b8: $10
    ld [bc], a                                    ; $53b9: $02
    ld d, a                                       ; $53ba: $57
    sbc d                                         ; $53bb: $9a
    xor c                                         ; $53bc: $a9
    cp h                                          ; $53bd: $bc
    call $a7db                                    ; $53be: $cd $db $a7
    ld d, e                                       ; $53c1: $53
    inc h                                         ; $53c2: $24
    ld h, [hl]                                    ; $53c3: $66
    ld a, b                                       ; $53c4: $78
    sbc e                                         ; $53c5: $9b
    sbc c                                         ; $53c6: $99
    adc e                                         ; $53c7: $8b
    sbc c                                         ; $53c8: $99
    sub a                                         ; $53c9: $97

Jump_010_53ca:
    ld [hl], a                                    ; $53ca: $77
    adc b                                         ; $53cb: $88
    sbc d                                         ; $53cc: $9a
    xor d                                         ; $53cd: $aa
    sbc d                                         ; $53ce: $9a
    sbc b                                         ; $53cf: $98
    add a                                         ; $53d0: $87
    ld h, [hl]                                    ; $53d1: $66
    ld [hl], a                                    ; $53d2: $77
    sub a                                         ; $53d3: $97
    ld a, b                                       ; $53d4: $78
    adc c                                         ; $53d5: $89
    xor e                                         ; $53d6: $ab
    xor e                                         ; $53d7: $ab
    xor b                                         ; $53d8: $a8
    ld d, l                                       ; $53d9: $55
    ld h, [hl]                                    ; $53da: $66
    ld h, [hl]                                    ; $53db: $66
    ld d, l                                       ; $53dc: $55
    ld d, h                                       ; $53dd: $54
    ld d, h                                       ; $53de: $54
    ld l, b                                       ; $53df: $68
    add [hl]                                      ; $53e0: $86
    ld b, h                                       ; $53e1: $44
    db $10                                        ; $53e2: $10
    ld bc, $4623                                  ; $53e3: $01 $23 $46
    sbc d                                         ; $53e6: $9a
    cp h                                          ; $53e7: $bc
    xor $ed                                       ; $53e8: $ee $ed
    sbc $dd                                       ; $53ea: $de $dd
    jp z, Jump_000_3476                           ; $53ec: $ca $76 $34

    inc [hl]                                      ; $53ef: $34
    ld b, l                                       ; $53f0: $45
    ld d, a                                       ; $53f1: $57
    ld a, b                                       ; $53f2: $78
    ld d, l                                       ; $53f3: $55
    ld d, l                                       ; $53f4: $55
    ld a, b                                       ; $53f5: $78
    adc b                                         ; $53f6: $88
    xor l                                         ; $53f7: $ad
    db $ed                                        ; $53f8: $ed
    res 7, b                                      ; $53f9: $cb $b8
    ld d, h                                       ; $53fb: $54
    inc sp                                        ; $53fc: $33
    inc [hl]                                      ; $53fd: $34
    ld b, [hl]                                    ; $53fe: $46
    ld h, h                                       ; $53ff: $64
    ld b, l                                       ; $5400: $45
    ld l, c                                       ; $5401: $69
    adc c                                         ; $5402: $89
    sbc c                                         ; $5403: $99
    sbc e                                         ; $5404: $9b
    cp d                                          ; $5405: $ba
    adc b                                         ; $5406: $88
    add a                                         ; $5407: $87
    ld [hl], a                                    ; $5408: $77
    add a                                         ; $5409: $87
    add a                                         ; $540a: $87
    halt                                          ; $540b: $76
    ld l, c                                       ; $540c: $69
    cp [hl]                                       ; $540d: $be
    xor $da                                       ; $540e: $ee $da
    sbc b                                         ; $5410: $98
    ld h, [hl]                                    ; $5411: $66
    ld d, l                                       ; $5412: $55
    inc hl                                        ; $5413: $23
    ld b, h                                       ; $5414: $44
    ld h, a                                       ; $5415: $67
    ld a, c                                       ; $5416: $79
    ld h, a                                       ; $5417: $67
    ld [hl], a                                    ; $5418: $77
    adc b                                         ; $5419: $88
    adc b                                         ; $541a: $88
    add a                                         ; $541b: $87
    ld h, a                                       ; $541c: $67
    add l                                         ; $541d: $85
    dec [hl]                                      ; $541e: $35
    ld a, c                                       ; $541f: $79
    sbc c                                         ; $5420: $99
    ld a, c                                       ; $5421: $79
    sub a                                         ; $5422: $97
    ld [hl], a                                    ; $5423: $77
    ld [hl], a                                    ; $5424: $77
    ld h, l                                       ; $5425: $65
    ld h, a                                       ; $5426: $67
    ld a, b                                       ; $5427: $78
    add a                                         ; $5428: $87
    sbc e                                         ; $5429: $9b
    xor h                                         ; $542a: $ac
    cp d                                          ; $542b: $ba
    adc b                                         ; $542c: $88
    ld h, a                                       ; $542d: $67
    halt                                          ; $542e: $76
    ld d, h                                       ; $542f: $54
    ld h, h                                       ; $5430: $64
    ld b, e                                       ; $5431: $43
    inc [hl]                                      ; $5432: $34
    ld h, a                                       ; $5433: $67
    adc b                                         ; $5434: $88
    xor e                                         ; $5435: $ab
    rst $18                                       ; $5436: $df
    rst $38                                       ; $5437: $ff
    jp c, Jump_010_7798                           ; $5438: $da $98 $77

    ld h, a                                       ; $543b: $67
    ld d, [hl]                                    ; $543c: $56
    ld [hl], a                                    ; $543d: $77
    adc c                                         ; $543e: $89
    sbc d                                         ; $543f: $9a
    sbc b                                         ; $5440: $98
    ld a, b                                       ; $5441: $78
    sbc c                                         ; $5442: $99
    adc d                                         ; $5443: $8a
    cp c                                          ; $5444: $b9
    add l                                         ; $5445: $85
    ld d, [hl]                                    ; $5446: $56
    ld b, d                                       ; $5447: $42
    ld [hl+], a                                   ; $5448: $22
    ld b, l                                       ; $5449: $45
    ld b, e                                       ; $544a: $43
    inc [hl]                                      ; $544b: $34
    ld b, l                                       ; $544c: $45
    ld h, [hl]                                    ; $544d: $66
    adc c                                         ; $544e: $89
    sbc c                                         ; $544f: $99
    sbc d                                         ; $5450: $9a
    cp e                                          ; $5451: $bb
    cp c                                          ; $5452: $b9
    adc b                                         ; $5453: $88
    ld d, [hl]                                    ; $5454: $56
    halt                                          ; $5455: $76
    ld [hl], a                                    ; $5456: $77
    ld h, h                                       ; $5457: $64
    ld d, l                                       ; $5458: $55
    ld d, a                                       ; $5459: $57
    adc d                                         ; $545a: $8a
    sbc e                                         ; $545b: $9b
    xor d                                         ; $545c: $aa
    cp c                                          ; $545d: $b9
    sbc c                                         ; $545e: $99
    ld [hl], a                                    ; $545f: $77
    ld h, h                                       ; $5460: $64
    ld b, h                                       ; $5461: $44
    ld b, e                                       ; $5462: $43
    ld b, l                                       ; $5463: $45
    ld a, d                                       ; $5464: $7a
    call $fdee                                    ; $5465: $cd $ee $fd
    cp d                                          ; $5468: $ba
    adc b                                         ; $5469: $88
    ld [hl], a                                    ; $546a: $77
    ld [hl], l                                    ; $546b: $75
    ld d, l                                       ; $546c: $55
    ld b, e                                       ; $546d: $43
    ld h, [hl]                                    ; $546e: $66
    ld d, e                                       ; $546f: $53
    inc sp                                        ; $5470: $33
    ld l, c                                       ; $5471: $69
    cp h                                          ; $5472: $bc
    jp z, Jump_010_5387                           ; $5473: $ca $87 $53

    ld [hl+], a                                   ; $5476: $22
    dec [hl]                                      ; $5477: $35
    sbc c                                         ; $5478: $99
    cp d                                          ; $5479: $ba
    adc b                                         ; $547a: $88
    sbc d                                         ; $547b: $9a
    cp h                                          ; $547c: $bc
    call z, $97da                                 ; $547d: $cc $da $97
    add a                                         ; $5480: $87
    adc c                                         ; $5481: $89
    sbc d                                         ; $5482: $9a
    adc c                                         ; $5483: $89
    sbc e                                         ; $5484: $9b
    xor c                                         ; $5485: $a9
    ld [hl], a                                    ; $5486: $77
    ld h, h                                       ; $5487: $64
    ld b, l                                       ; $5488: $45
    ld b, l                                       ; $5489: $45
    ld h, l                                       ; $548a: $65
    ld d, [hl]                                    ; $548b: $56
    ld h, [hl]                                    ; $548c: $66
    ld [hl], a                                    ; $548d: $77
    adc b                                         ; $548e: $88
    adc c                                         ; $548f: $89
    xor e                                         ; $5490: $ab
    cp c                                          ; $5491: $b9
    sbc c                                         ; $5492: $99
    sub a                                         ; $5493: $97
    ld d, h                                       ; $5494: $54
    inc [hl]                                      ; $5495: $34
    ld d, l                                       ; $5496: $55
    ld d, a                                       ; $5497: $57
    ld a, c                                       ; $5498: $79
    xor e                                         ; $5499: $ab
    cp e                                          ; $549a: $bb
    cp b                                          ; $549b: $b8
    adc b                                         ; $549c: $88
    adc d                                         ; $549d: $8a
    xor d                                         ; $549e: $aa
    sbc b                                         ; $549f: $98
    ld h, e                                       ; $54a0: $63
    nop                                           ; $54a1: $00
    inc h                                         ; $54a2: $24
    ld d, [hl]                                    ; $54a3: $56
    ld a, b                                       ; $54a4: $78

Jump_010_54a5:
    sbc b                                         ; $54a5: $98
    ld a, c                                       ; $54a6: $79
    sbc d                                         ; $54a7: $9a

Call_010_54a8:
    xor d                                         ; $54a8: $aa
    xor e                                         ; $54a9: $ab
    cp d                                          ; $54aa: $ba
    cp e                                          ; $54ab: $bb
    cp d                                          ; $54ac: $ba
    xor b                                         ; $54ad: $a8
    ld [hl], a                                    ; $54ae: $77
    adc b                                         ; $54af: $88
    add [hl]                                      ; $54b0: $86
    ld [hl], a                                    ; $54b1: $77
    adc d                                         ; $54b2: $8a
    xor e                                         ; $54b3: $ab
    jp z, Jump_010_76bb                           ; $54b4: $ca $bb $76

    ld h, l                                       ; $54b7: $65

Call_010_54b8:
    ld d, [hl]                                    ; $54b8: $56
    add a                                         ; $54b9: $87
    ld d, l                                       ; $54ba: $55
    adc b                                         ; $54bb: $88
    ld h, d                                       ; $54bc: $62
    ld hl, $7746                                  ; $54bd: $21 $46 $77
    add a                                         ; $54c0: $87
    ld [hl], a                                    ; $54c1: $77
    ld [hl], a                                    ; $54c2: $77
    add a                                         ; $54c3: $87
    adc b                                         ; $54c4: $88
    ld [hl], a                                    ; $54c5: $77
    adc b                                         ; $54c6: $88
    add a                                         ; $54c7: $87
    ld d, e                                       ; $54c8: $53
    dec h                                         ; $54c9: $25
    adc d                                         ; $54ca: $8a
    xor c                                         ; $54cb: $a9
    add h                                         ; $54cc: $84
    inc [hl]                                      ; $54cd: $34
    ld d, [hl]                                    ; $54ce: $56
    ld d, l                                       ; $54cf: $55
    adc b                                         ; $54d0: $88
    ld [hl], a                                    ; $54d1: $77
    ld a, c                                       ; $54d2: $79
    xor c                                         ; $54d3: $a9
    sbc d                                         ; $54d4: $9a
    res 3, c                                      ; $54d5: $cb $99
    xor e                                         ; $54d7: $ab
    res 3, c                                      ; $54d8: $cb $99
    ld [hl], a                                    ; $54da: $77
    ld a, c                                       ; $54db: $79
    call $bdcc                                    ; $54dc: $cd $cc $bd
    db $ed                                        ; $54df: $ed
    xor e                                         ; $54e0: $ab
    xor c                                         ; $54e1: $a9
    add a                                         ; $54e2: $87
    ld b, h                                       ; $54e3: $44
    ld b, d                                       ; $54e4: $42
    inc d                                         ; $54e5: $14
    ld h, a                                       ; $54e6: $67
    add [hl]                                      ; $54e7: $86
    ld [hl], a                                    ; $54e8: $77
    adc e                                         ; $54e9: $8b
    xor b                                         ; $54ea: $a8
    ld h, [hl]                                    ; $54eb: $66
    ld h, l                                       ; $54ec: $65
    inc sp                                        ; $54ed: $33
    inc hl                                        ; $54ee: $23
    ld c, b                                       ; $54ef: $48
    cp e                                          ; $54f0: $bb
    xor c                                         ; $54f1: $a9
    halt                                          ; $54f2: $76
    ld d, [hl]                                    ; $54f3: $56
    ld a, b                                       ; $54f4: $78
    halt                                          ; $54f5: $76
    ld h, a                                       ; $54f6: $67
    ld [hl], a                                    ; $54f7: $77
    halt                                          ; $54f8: $76
    ld d, [hl]                                    ; $54f9: $56
    ld b, h                                       ; $54fa: $44
    ld d, l                                       ; $54fb: $55
    ld d, l                                       ; $54fc: $55
    ld h, [hl]                                    ; $54fd: $66
    ld a, b                                       ; $54fe: $78
    ld a, c                                       ; $54ff: $79
    cp e                                          ; $5500: $bb
    cp e                                          ; $5501: $bb
    xor c                                         ; $5502: $a9
    ld [hl], a                                    ; $5503: $77
    ld [hl], a                                    ; $5504: $77
    adc b                                         ; $5505: $88
    sbc c                                         ; $5506: $99
    add a                                         ; $5507: $87
    ld h, [hl]                                    ; $5508: $66
    ld h, [hl]                                    ; $5509: $66
    ld h, a                                       ; $550a: $67
    ld a, b                                       ; $550b: $78
    xor l                                         ; $550c: $ad
    rst $28                                       ; $550d: $ef
    db $fd                                        ; $550e: $fd
    cp c                                          ; $550f: $b9
    add [hl]                                      ; $5510: $86
    ld d, l                                       ; $5511: $55
    ld b, a                                       ; $5512: $47
    ld h, a                                       ; $5513: $67
    adc b                                         ; $5514: $88
    add [hl]                                      ; $5515: $86
    inc [hl]                                      ; $5516: $34
    ld [hl], a                                    ; $5517: $77
    adc b                                         ; $5518: $88
    halt                                          ; $5519: $76
    ld [hl], a                                    ; $551a: $77
    sbc e                                         ; $551b: $9b
    xor d                                         ; $551c: $aa
    cp e                                          ; $551d: $bb
    sub [hl]                                      ; $551e: $96
    ld d, e                                       ; $551f: $53
    ld d, l                                       ; $5520: $55
    ld h, h                                       ; $5521: $64
    inc [hl]                                      ; $5522: $34
    ld h, l                                       ; $5523: $65
    ld a, c                                       ; $5524: $79
    xor e                                         ; $5525: $ab
    sbc b                                         ; $5526: $98
    halt                                          ; $5527: $76
    ld b, a                                       ; $5528: $47
    sbc c                                         ; $5529: $99
    xor e                                         ; $552a: $ab
    cp d                                          ; $552b: $ba
    sbc b                                         ; $552c: $98
    add a                                         ; $552d: $87
    ld d, l                                       ; $552e: $55
    ld d, l                                       ; $552f: $55
    ld b, l                                       ; $5530: $45
    ld h, [hl]                                    ; $5531: $66
    ld [hl], l                                    ; $5532: $75
    ld d, [hl]                                    ; $5533: $56
    ld h, [hl]                                    ; $5534: $66
    ld h, a                                       ; $5535: $67
    ld [hl], a                                    ; $5536: $77
    ld a, b                                       ; $5537: $78
    sbc c                                         ; $5538: $99
    adc b                                         ; $5539: $88
    ld a, b                                       ; $553a: $78
    adc d                                         ; $553b: $8a
    cp d                                          ; $553c: $ba
    xor e                                         ; $553d: $ab
    call z, $87b9                                 ; $553e: $cc $b9 $87
    adc c                                         ; $5541: $89
    sbc b                                         ; $5542: $98
    sbc b                                         ; $5543: $98
    ld [hl], a                                    ; $5544: $77
    adc c                                         ; $5545: $89
    adc b                                         ; $5546: $88
    xor d                                         ; $5547: $aa
    adc b                                         ; $5548: $88
    sbc b                                         ; $5549: $98
    add a                                         ; $554a: $87
    ld h, e                                       ; $554b: $63
    nop                                           ; $554c: $00
    ld bc, $5535                                  ; $554d: $01 $35 $55
    ld b, l                                       ; $5550: $45
    ld d, [hl]                                    ; $5551: $56
    ld d, [hl]                                    ; $5552: $56
    adc c                                         ; $5553: $89
    xor e                                         ; $5554: $ab

Call_010_5555:
    sbc $dd                                       ; $5555: $de $dd
    db $dd                                        ; $5557: $dd
    res 0, l                                      ; $5558: $cb $85
    ld b, h                                       ; $555a: $44
    ld b, l                                       ; $555b: $45
    ld d, [hl]                                    ; $555c: $56
    halt                                          ; $555d: $76
    ld d, l                                       ; $555e: $55
    ld h, [hl]                                    ; $555f: $66
    add a                                         ; $5560: $87
    xor h                                         ; $5561: $ac
    xor d                                         ; $5562: $aa
    cp e                                          ; $5563: $bb
    xor c                                         ; $5564: $a9
    adc c                                         ; $5565: $89
    add [hl]                                      ; $5566: $86
    ld d, h                                       ; $5567: $54
    ld d, [hl]                                    ; $5568: $56
    ld [hl], a                                    ; $5569: $77
    xor e                                         ; $556a: $ab
    xor d                                         ; $556b: $aa
    add a                                         ; $556c: $87
    ld d, h                                       ; $556d: $54
    ld b, h                                       ; $556e: $44
    ld b, a                                       ; $556f: $47
    add [hl]                                      ; $5570: $86
    ld b, [hl]                                    ; $5571: $46
    ld a, b                                       ; $5572: $78
    sbc c                                         ; $5573: $99
    sbc d                                         ; $5574: $9a
    cp h                                          ; $5575: $bc
    jp z, $8998                                   ; $5576: $ca $98 $89

    add a                                         ; $5579: $87
    adc c                                         ; $557a: $89
    sbc b                                         ; $557b: $98
    sbc b                                         ; $557c: $98
    ld a, b                                       ; $557d: $78
    adc b                                         ; $557e: $88
    sbc c                                         ; $557f: $99
    add [hl]                                      ; $5580: $86
    halt                                          ; $5581: $76
    ld h, [hl]                                    ; $5582: $66
    ld h, [hl]                                    ; $5583: $66
    ld d, d                                       ; $5584: $52
    ld [de], a                                    ; $5585: $12
    inc sp                                        ; $5586: $33
    ld b, l                                       ; $5587: $45
    ld d, l                                       ; $5588: $55
    ld a, c                                       ; $5589: $79
    sbc d                                         ; $558a: $9a
    adc c                                         ; $558b: $89
    xor d                                         ; $558c: $aa
    call $98aa                                    ; $558d: $cd $aa $98
    adc c                                         ; $5590: $89
    xor d                                         ; $5591: $aa
    add a                                         ; $5592: $87
    ld d, e                                       ; $5593: $53
    dec d                                         ; $5594: $15
    ld h, a                                       ; $5595: $67
    halt                                          ; $5596: $76
    ld [hl], a                                    ; $5597: $77

Jump_010_5598:
    xor e                                         ; $5598: $ab
    xor b                                         ; $5599: $a8
    add a                                         ; $559a: $87
    ld a, b                                       ; $559b: $78
    xor e                                         ; $559c: $ab
    cp e                                          ; $559d: $bb
    cp e                                          ; $559e: $bb
    call c, $87b8                                 ; $559f: $dc $b8 $87
    ld d, e                                       ; $55a2: $53
    ld d, h                                       ; $55a3: $54
    ld e, b                                       ; $55a4: $58
    ld b, l                                       ; $55a5: $45
    ld [hl], a                                    ; $55a6: $77
    adc c                                         ; $55a7: $89

Call_010_55a8:
    sbc c                                         ; $55a8: $99
    sbc c                                         ; $55a9: $99
    ld h, l                                       ; $55aa: $65
    ld b, d                                       ; $55ab: $42
    ld [bc], a                                    ; $55ac: $02
    ld b, [hl]                                    ; $55ad: $46
    cp [hl]                                       ; $55ae: $be
    xor $ca                                       ; $55af: $ee $ca
    cp d                                          ; $55b1: $ba
    xor e                                         ; $55b2: $ab
    xor b                                         ; $55b3: $a8
    add a                                         ; $55b4: $87

Call_010_55b5:
    ld a, d                                       ; $55b5: $7a
    ld [hl], a                                    ; $55b6: $77
    add a                                         ; $55b7: $87
    ld h, [hl]                                    ; $55b8: $66
    ld d, h                                       ; $55b9: $54
    ld d, l                                       ; $55ba: $55
    ld b, d                                       ; $55bb: $42
    ld b, d                                       ; $55bc: $42
    ld b, d                                       ; $55bd: $42
    ld b, l                                       ; $55be: $45
    adc b                                         ; $55bf: $88
    cp e                                          ; $55c0: $bb
    xor b                                         ; $55c1: $a8
    ld [hl], l                                    ; $55c2: $75
    ld a, c                                       ; $55c3: $79
    sbc d                                         ; $55c4: $9a
    sbc d                                         ; $55c5: $9a
    sbc b                                         ; $55c6: $98
    ld h, l                                       ; $55c7: $65
    ld d, l                                       ; $55c8: $55
    inc sp                                        ; $55c9: $33
    ld a, e                                       ; $55ca: $7b
    xor e                                         ; $55cb: $ab
    cp h                                          ; $55cc: $bc
    ret                                           ; $55cd: $c9


    add a                                         ; $55ce: $87
    ld d, h                                       ; $55cf: $54
    ld l, b                                       ; $55d0: $68
    xor d                                         ; $55d1: $aa
    cp h                                          ; $55d2: $bc
    db $dd                                        ; $55d3: $dd
    ret z                                         ; $55d4: $c8

    ld d, e                                       ; $55d5: $53
    dec [hl]                                      ; $55d6: $35
    ld h, a                                       ; $55d7: $67
    ld d, e                                       ; $55d8: $53
    inc hl                                        ; $55d9: $23
    ld d, l                                       ; $55da: $55
    inc [hl]                                      ; $55db: $34
    ld h, a                                       ; $55dc: $67
    adc c                                         ; $55dd: $89
    res 7, h                                      ; $55de: $cb $bc
    db $dd                                        ; $55e0: $dd
    res 2, a                                      ; $55e1: $cb $97
    ld [hl], l                                    ; $55e3: $75
    ld l, b                                       ; $55e4: $68
    ld h, [hl]                                    ; $55e5: $66
    ld b, h                                       ; $55e6: $44
    dec d                                         ; $55e7: $15
    sbc e                                         ; $55e8: $9b
    sbc b                                         ; $55e9: $98
    ld h, [hl]                                    ; $55ea: $66
    ld d, [hl]                                    ; $55eb: $56
    ld h, [hl]                                    ; $55ec: $66
    ld d, [hl]                                    ; $55ed: $56
    adc d                                         ; $55ee: $8a
    xor d                                         ; $55ef: $aa
    add a                                         ; $55f0: $87
    ld a, d                                       ; $55f1: $7a
    sbc c                                         ; $55f2: $99
    ld a, d                                       ; $55f3: $7a
    xor b                                         ; $55f4: $a8
    ld d, e                                       ; $55f5: $53
    inc [hl]                                      ; $55f6: $34
    ld [hl], a                                    ; $55f7: $77
    ld l, c                                       ; $55f8: $69
    sbc c                                         ; $55f9: $99
    cp d                                          ; $55fa: $ba
    sub a                                         ; $55fb: $97
    ld d, h                                       ; $55fc: $54
    ld d, l                                       ; $55fd: $55
    ld [hl], a                                    ; $55fe: $77
    ld a, b                                       ; $55ff: $78
    add a                                         ; $5600: $87
    adc b                                         ; $5601: $88
    ld h, [hl]                                    ; $5602: $66
    ld [hl], a                                    ; $5603: $77
    ld h, [hl]                                    ; $5604: $66
    ld d, h                                       ; $5605: $54
    ld b, [hl]                                    ; $5606: $46
    ld a, c                                       ; $5607: $79
    cp h                                          ; $5608: $bc
    set 1, e                                      ; $5609: $cb $cb
    jp z, $bc8a                                   ; $560b: $ca $8a $bc

    xor d                                         ; $560e: $aa
    add [hl]                                      ; $560f: $86
    ld d, h                                       ; $5610: $54
    ld d, [hl]                                    ; $5611: $56
    ld a, b                                       ; $5612: $78
    add a                                         ; $5613: $87
    adc b                                         ; $5614: $88
    sbc b                                         ; $5615: $98
    add a                                         ; $5616: $87
    ld [hl], l                                    ; $5617: $75
    ld d, [hl]                                    ; $5618: $56
    ld b, l                                       ; $5619: $45
    ld [hl], l                                    ; $561a: $75
    ld h, a                                       ; $561b: $67
    ld [hl], h                                    ; $561c: $74
    jr nc, jr_010_5631                            ; $561d: $30 $12

    inc [hl]                                      ; $561f: $34
    ld b, a                                       ; $5620: $47
    ld h, a                                       ; $5621: $67
    adc c                                         ; $5622: $89
    cp [hl]                                       ; $5623: $be
    ld [$cc9b], a                                 ; $5624: $ea $9b $cc
    set 1, l                                      ; $5627: $cb $cd
    xor c                                         ; $5629: $a9
    sbc d                                         ; $562a: $9a
    sub a                                         ; $562b: $97
    ld h, h                                       ; $562c: $64
    ld sp, $3312                                  ; $562d: $31 $12 $33
    ld d, a                                       ; $5630: $57

jr_010_5631:
    add a                                         ; $5631: $87
    ld h, a                                       ; $5632: $67
    sbc c                                         ; $5633: $99
    xor b                                         ; $5634: $a8
    ld [hl], a                                    ; $5635: $77
    sbc d                                         ; $5636: $9a
    sbc c                                         ; $5637: $99
    ld h, [hl]                                    ; $5638: $66
    ld b, [hl]                                    ; $5639: $46
    ld b, [hl]                                    ; $563a: $46
    adc b                                         ; $563b: $88
    sbc d                                         ; $563c: $9a
    xor h                                         ; $563d: $ac
    xor b                                         ; $563e: $a8
    add l                                         ; $563f: $85
    inc sp                                        ; $5640: $33
    dec [hl]                                      ; $5641: $35
    ld h, a                                       ; $5642: $67
    ld a, b                                       ; $5643: $78
    xor b                                         ; $5644: $a8
    ld h, l                                       ; $5645: $65
    dec [hl]                                      ; $5646: $35
    adc c                                         ; $5647: $89
    sbc d                                         ; $5648: $9a
    cp d                                          ; $5649: $ba
    xor d                                         ; $564a: $aa
    sbc b                                         ; $564b: $98
    sbc d                                         ; $564c: $9a
    call $99ba                                    ; $564d: $cd $ba $99
    sub a                                         ; $5650: $97
    ld [hl], h                                    ; $5651: $74
    ld b, e                                       ; $5652: $43
    ld [hl], $67                                  ; $5653: $36 $67
    add [hl]                                      ; $5655: $86
    ld l, b                                       ; $5656: $68
    sbc e                                         ; $5657: $9b
    cp c                                          ; $5658: $b9
    ld a, b                                       ; $5659: $78
    xor d                                         ; $565a: $aa
    xor c                                         ; $565b: $a9
    ld a, b                                       ; $565c: $78
    ld [hl], a                                    ; $565d: $77
    ld d, [hl]                                    ; $565e: $56
    ld b, h                                       ; $565f: $44
    ld b, a                                       ; $5660: $47
    sbc e                                         ; $5661: $9b
    and [hl]                                      ; $5662: $a6
    halt                                          ; $5663: $76
    ld h, a                                       ; $5664: $67
    ld l, b                                       ; $5665: $68
    sbc d                                         ; $5666: $9a
    ld h, h                                       ; $5667: $64
    ld h, h                                       ; $5668: $64
    ld b, h                                       ; $5669: $44
    ld de, $4445                                  ; $566a: $11 $45 $44
    ld d, [hl]                                    ; $566d: $56
    xor h                                         ; $566e: $ac
    res 5, c                                      ; $566f: $cb $a9
    xor e                                         ; $5671: $ab
    xor d                                         ; $5672: $aa
    sbc c                                         ; $5673: $99
    xor c                                         ; $5674: $a9

Call_010_5675:
Jump_010_5675:
    adc b                                         ; $5675: $88

Jump_010_5676:
    ld d, l                                       ; $5676: $55
    ld b, l                                       ; $5677: $45
    ld d, a                                       ; $5678: $57
    adc c                                         ; $5679: $89
    adc c                                         ; $567a: $89
    adc c                                         ; $567b: $89
    cp d                                          ; $567c: $ba
    xor d                                         ; $567d: $aa
    cp h                                          ; $567e: $bc
    db $db                                        ; $567f: $db
    sbc c                                         ; $5680: $99
    cp e                                          ; $5681: $bb
    ld [hl], a                                    ; $5682: $77
    add a                                         ; $5683: $87

Call_010_5684:
    ld d, h                                       ; $5684: $54
    ld d, l                                       ; $5685: $55
    ld d, l                                       ; $5686: $55

Jump_010_5687:
    ld l, b                                       ; $5687: $68
    add a                                         ; $5688: $87
    ld h, [hl]                                    ; $5689: $66
    ld h, [hl]                                    ; $568a: $66
    ld h, a                                       ; $568b: $67
    adc b                                         ; $568c: $88
    halt                                          ; $568d: $76
    ld d, l                                       ; $568e: $55
    ld h, l                                       ; $568f: $65
    ld d, a                                       ; $5690: $57
    adc c                                         ; $5691: $89
    xor c                                         ; $5692: $a9
    sbc c                                         ; $5693: $99
    adc b                                         ; $5694: $88
    halt                                          ; $5695: $76

Call_010_5696:
    ld h, l                                       ; $5696: $65
    ld b, h                                       ; $5697: $44
    ld b, a                                       ; $5698: $47
    adc c                                         ; $5699: $89
    sbc b                                         ; $569a: $98
    ld [hl], a                                    ; $569b: $77
    add a                                         ; $569c: $87
    halt                                          ; $569d: $76
    adc c                                         ; $569e: $89
    xor d                                         ; $569f: $aa
    xor c                                         ; $56a0: $a9
    adc c                                         ; $56a1: $89
    adc $ff                                       ; $56a2: $ce $ff
    jp z, Jump_010_7788                           ; $56a4: $ca $88 $77

    ld [hl], a                                    ; $56a7: $77
    ld d, [hl]                                    ; $56a8: $56
    ld [hl], a                                    ; $56a9: $77
    halt                                          ; $56aa: $76
    ld l, b                                       ; $56ab: $68
    xor e                                         ; $56ac: $ab
    cp c                                          ; $56ad: $b9
    sbc b                                         ; $56ae: $98
    ld d, l                                       ; $56af: $55
    ld d, l                                       ; $56b0: $55
    ld b, d                                       ; $56b1: $42
    ld [hl-], a                                   ; $56b2: $32
    ld de, $5523                                  ; $56b3: $11 $23 $55
    ld b, l                                       ; $56b6: $45
    ld h, a                                       ; $56b7: $67
    adc d                                         ; $56b8: $8a
    call c, $99c9                                 ; $56b9: $dc $c9 $99
    sbc d                                         ; $56bc: $9a
    sbc b                                         ; $56bd: $98
    ld b, e                                       ; $56be: $43
    inc [hl]                                      ; $56bf: $34
    ld b, h                                       ; $56c0: $44
    ld d, [hl]                                    ; $56c1: $56
    ld h, [hl]                                    ; $56c2: $66
    adc d                                         ; $56c3: $8a
    cp e                                          ; $56c4: $bb
    cp h                                          ; $56c5: $bc
    db $ed                                        ; $56c6: $ed
    res 7, e                                      ; $56c7: $cb $bb
    cp d                                          ; $56c9: $ba
    xor c                                         ; $56ca: $a9
    sub a                                         ; $56cb: $97
    ld h, a                                       ; $56cc: $67
    add a                                         ; $56cd: $87
    ld h, [hl]                                    ; $56ce: $66
    ld d, l                                       ; $56cf: $55
    ld d, [hl]                                    ; $56d0: $56
    adc b                                         ; $56d1: $88
    ld a, b                                       ; $56d2: $78
    ld a, b                                       ; $56d3: $78
    adc d                                         ; $56d4: $8a
    cp e                                          ; $56d5: $bb
    call $c8ee                                    ; $56d6: $cd $ee $c8
    ld h, e                                       ; $56d9: $63
    ld [hl+], a                                   ; $56da: $22
    ld [bc], a                                    ; $56db: $02
    inc hl                                        ; $56dc: $23
    inc sp                                        ; $56dd: $33
    ld b, l                                       ; $56de: $45
    ld h, h                                       ; $56df: $64
    ld b, l                                       ; $56e0: $45
    ld e, b                                       ; $56e1: $58
    add a                                         ; $56e2: $87
    adc c                                         ; $56e3: $89
    xor h                                         ; $56e4: $ac
    xor b                                         ; $56e5: $a8
    halt                                          ; $56e6: $76
    ld h, a                                       ; $56e7: $67
    ld h, [hl]                                    ; $56e8: $66
    halt                                          ; $56e9: $76
    ld h, a                                       ; $56ea: $67
    sbc c                                         ; $56eb: $99
    xor e                                         ; $56ec: $ab
    xor c                                         ; $56ed: $a9
    adc b                                         ; $56ee: $88
    adc b                                         ; $56ef: $88
    add a                                         ; $56f0: $87
    sbc b                                         ; $56f1: $98
    xor c                                         ; $56f2: $a9
    xor d                                         ; $56f3: $aa
    add l                                         ; $56f4: $85
    ld b, l                                       ; $56f5: $45
    ld [hl], a                                    ; $56f6: $77
    ld d, [hl]                                    ; $56f7: $56
    ld d, [hl]                                    ; $56f8: $56
    ld a, c                                       ; $56f9: $79
    xor h                                         ; $56fa: $ac
    xor $ef                                       ; $56fb: $ee $ef
    db $ed                                        ; $56fd: $ed
    ret                                           ; $56fe: $c9


    ld [hl], l                                    ; $56ff: $75
    ld d, l                                       ; $5700: $55
    ld d, l                                       ; $5701: $55
    ld h, [hl]                                    ; $5702: $66
    ld h, l                                       ; $5703: $65
    inc sp                                        ; $5704: $33
    ld d, l                                       ; $5705: $55
    ld a, c                                       ; $5706: $79
    add a                                         ; $5707: $87
    ld b, h                                       ; $5708: $44
    ld b, [hl]                                    ; $5709: $46
    add a                                         ; $570a: $87
    ld h, l                                       ; $570b: $65
    ld d, h                                       ; $570c: $54
    ld d, l                                       ; $570d: $55
    adc d                                         ; $570e: $8a
    xor d                                         ; $570f: $aa
    add h                                         ; $5710: $84
    ld d, l                                       ; $5711: $55
    ld d, [hl]                                    ; $5712: $56
    ld d, e                                       ; $5713: $53
    ld [hl+], a                                   ; $5714: $22
    inc h                                         ; $5715: $24
    ld d, [hl]                                    ; $5716: $56
    adc b                                         ; $5717: $88
    ld l, b                                       ; $5718: $68
    sbc d                                         ; $5719: $9a
    xor c                                         ; $571a: $a9
    xor d                                         ; $571b: $aa
    call z, $cdcb                                 ; $571c: $cc $cb $cd
    set 1, h                                      ; $571f: $cb $cc
    cp h                                          ; $5721: $bc
    sbc d                                         ; $5722: $9a
    sbc b                                         ; $5723: $98
    adc c                                         ; $5724: $89
    add a                                         ; $5725: $87
    ld [hl], a                                    ; $5726: $77
    halt                                          ; $5727: $76
    ld e, b                                       ; $5728: $58
    cp e                                          ; $5729: $bb
    xor $eb                                       ; $572a: $ee $eb
    ld [hl], h                                    ; $572c: $74
    ld d, d                                       ; $572d: $52
    inc [hl]                                      ; $572e: $34
    ld d, [hl]                                    ; $572f: $56
    ld h, l                                       ; $5730: $65
    ld d, a                                       ; $5731: $57
    ld [hl], a                                    ; $5732: $77
    ld a, b                                       ; $5733: $78
    halt                                          ; $5734: $76
    ld h, a                                       ; $5735: $67
    ld [hl], l                                    ; $5736: $75
    ld d, l                                       ; $5737: $55
    ld h, l                                       ; $5738: $65
    ld d, h                                       ; $5739: $54
    ld b, e                                       ; $573a: $43
    ld b, l                                       ; $573b: $45
    halt                                          ; $573c: $76
    ld d, [hl]                                    ; $573d: $56
    ld a, d                                       ; $573e: $7a
    cp e                                          ; $573f: $bb
    jp z, $bb99                                   ; $5740: $ca $99 $bb

    call z, $88b9                                 ; $5743: $cc $b9 $88
    sub a                                         ; $5746: $97
    ld d, l                                       ; $5747: $55
    ld [hl-], a                                   ; $5748: $32
    inc hl                                        ; $5749: $23
    inc sp                                        ; $574a: $33
    ld [de], a                                    ; $574b: $12
    ld d, h                                       ; $574c: $54
    ld b, [hl]                                    ; $574d: $46
    sbc e                                         ; $574e: $9b
    xor b                                         ; $574f: $a8
    sbc b                                         ; $5750: $98
    sbc c                                         ; $5751: $99
    sbc h                                         ; $5752: $9c
    res 3, c                                      ; $5753: $cb $99
    add [hl]                                      ; $5755: $86
    ld h, h                                       ; $5756: $64
    ld b, h                                       ; $5757: $44
    ld h, [hl]                                    ; $5758: $66
    sbc e                                         ; $5759: $9b
    sbc $ff                                       ; $575a: $de $ff
    db $ec                                        ; $575c: $ec
    cp e                                          ; $575d: $bb
    sbc b                                         ; $575e: $98
    sbc e                                         ; $575f: $9b
    xor c                                         ; $5760: $a9
    ld h, [hl]                                    ; $5761: $66
    ld d, l                                       ; $5762: $55
    ld e, b                                       ; $5763: $58
    adc b                                         ; $5764: $88
    ld [hl], a                                    ; $5765: $77
    ld h, l                                       ; $5766: $65
    ld d, h                                       ; $5767: $54
    ld b, h                                       ; $5768: $44
    ld d, h                                       ; $5769: $54
    ld d, a                                       ; $576a: $57
    ld [hl], l                                    ; $576b: $75
    ld [hl], a                                    ; $576c: $77
    ld d, l                                       ; $576d: $55
    ld [hl], a                                    ; $576e: $77
    ld h, a                                       ; $576f: $67
    add [hl]                                      ; $5770: $86
    ld d, l                                       ; $5771: $55
    ld d, h                                       ; $5772: $54
    ld b, h                                       ; $5773: $44
    ld b, h                                       ; $5774: $44
    ld b, e                                       ; $5775: $43
    inc [hl]                                      ; $5776: $34
    ld d, l                                       ; $5777: $55
    ld l, b                                       ; $5778: $68
    sbc b                                         ; $5779: $98
    adc d                                         ; $577a: $8a
    cp d                                          ; $577b: $ba
    res 5, e                                      ; $577c: $cb $ab
    cp l                                          ; $577e: $bd
    db $dd                                        ; $577f: $dd
    cp $eb                                        ; $5780: $fe $eb
    and a                                         ; $5782: $a7
    ld h, [hl]                                    ; $5783: $66
    ld h, [hl]                                    ; $5784: $66
    ld d, [hl]                                    ; $5785: $56
    ld h, [hl]                                    ; $5786: $66
    sbc c                                         ; $5787: $99
    sbc c                                         ; $5788: $99
    xor c                                         ; $5789: $a9
    sbc b                                         ; $578a: $98
    ld a, b                                       ; $578b: $78
    ld [hl], a                                    ; $578c: $77
    adc c                                         ; $578d: $89
    xor d                                         ; $578e: $aa
    sbc c                                         ; $578f: $99
    sbc b                                         ; $5790: $98
    ld d, h                                       ; $5791: $54
    ld d, l                                       ; $5792: $55
    inc [hl]                                      ; $5793: $34
    ld b, h                                       ; $5794: $44
    ld d, l                                       ; $5795: $55
    ld a, c                                       ; $5796: $79

Jump_010_5797:
    xor e                                         ; $5797: $ab
    cp e                                          ; $5798: $bb
    add a                                         ; $5799: $87
    halt                                          ; $579a: $76
    ld [hl], a                                    ; $579b: $77
    halt                                          ; $579c: $76
    inc [hl]                                      ; $579d: $34
    inc [hl]                                      ; $579e: $34
    dec [hl]                                      ; $579f: $35
    adc b                                         ; $57a0: $88
    adc b                                         ; $57a1: $88
    ld h, l                                       ; $57a2: $65
    ld b, h                                       ; $57a3: $44
    ld a, d                                       ; $57a4: $7a
    xor d                                         ; $57a5: $aa
    sbc c                                         ; $57a6: $99
    sbc b                                         ; $57a7: $98
    halt                                          ; $57a8: $76
    ld h, a                                       ; $57a9: $67
    adc d                                         ; $57aa: $8a
    adc $ee                                       ; $57ab: $ce $ee
    call c, $97ba                                 ; $57ad: $dc $ba $97
    ld h, a                                       ; $57b0: $67
    add [hl]                                      ; $57b1: $86
    ld b, e                                       ; $57b2: $43
    inc hl                                        ; $57b3: $23
    inc sp                                        ; $57b4: $33
    dec [hl]                                      ; $57b5: $35
    ld d, [hl]                                    ; $57b6: $56
    sbc c                                         ; $57b7: $99
    xor d                                         ; $57b8: $aa
    xor e                                         ; $57b9: $ab
    xor c                                         ; $57ba: $a9
    xor h                                         ; $57bb: $ac
    jp z, Jump_010_7799                           ; $57bc: $ca $99 $77

    ld l, b                                       ; $57bf: $68
    add [hl]                                      ; $57c0: $86
    ld h, h                                       ; $57c1: $64
    ld b, h                                       ; $57c2: $44
    ld d, l                                       ; $57c3: $55
    jr nz, jr_010_57c8                            ; $57c4: $20 $02

    ld [de], a                                    ; $57c6: $12
    ld e, b                                       ; $57c7: $58

jr_010_57c8:
    sbc e                                         ; $57c8: $9b
    db $ec                                        ; $57c9: $ec
    or a                                          ; $57ca: $b7
    ld h, [hl]                                    ; $57cb: $66
    ld [hl], a                                    ; $57cc: $77
    ld a, b                                       ; $57cd: $78
    sub a                                         ; $57ce: $97
    halt                                          ; $57cf: $76
    add a                                         ; $57d0: $87
    halt                                          ; $57d1: $76
    halt                                          ; $57d2: $76
    ld l, b                                       ; $57d3: $68
    halt                                          ; $57d4: $76
    ld h, [hl]                                    ; $57d5: $66
    sbc e                                         ; $57d6: $9b
    sbc l                                         ; $57d7: $9d
    call c, $86ca                                 ; $57d8: $dc $ca $86
    ld d, h                                       ; $57db: $54
    ld d, l                                       ; $57dc: $55
    adc e                                         ; $57dd: $8b
    call z, $cabb                                 ; $57de: $cc $bb $ca
    sbc b                                         ; $57e1: $98
    adc c                                         ; $57e2: $89
    sbc e                                         ; $57e3: $9b
    cp d                                          ; $57e4: $ba
    xor e                                         ; $57e5: $ab
    cp c                                          ; $57e6: $b9
    ld [hl], l                                    ; $57e7: $75
    ld d, l                                       ; $57e8: $55
    ld h, [hl]                                    ; $57e9: $66
    ld a, c                                       ; $57ea: $79
    sbc e                                         ; $57eb: $9b
    ret z                                         ; $57ec: $c8

    ld h, a                                       ; $57ed: $67
    sbc b                                         ; $57ee: $98
    add [hl]                                      ; $57ef: $86
    sub [hl]                                      ; $57f0: $96
    ld a, b                                       ; $57f1: $78
    xor c                                         ; $57f2: $a9
    sbc c                                         ; $57f3: $99
    sbc b                                         ; $57f4: $98
    ld h, [hl]                                    ; $57f5: $66
    ld h, [hl]                                    ; $57f6: $66
    ld h, l                                       ; $57f7: $65
    ld d, l                                       ; $57f8: $55
    ld h, h                                       ; $57f9: $64
    inc hl                                        ; $57fa: $23
    ld d, d                                       ; $57fb: $52
    ld [hl+], a                                   ; $57fc: $22
    dec h                                         ; $57fd: $25
    ld h, a                                       ; $57fe: $67
    ld a, b                                       ; $57ff: $78
    sub a                                         ; $5800: $97
    ld d, h                                       ; $5801: $54
    ld d, [hl]                                    ; $5802: $56
    sbc e                                         ; $5803: $9b
    add a                                         ; $5804: $87
    halt                                          ; $5805: $76
    adc c                                         ; $5806: $89
    sbc h                                         ; $5807: $9c
    db $ed                                        ; $5808: $ed
    reti                                          ; $5809: $d9


    ld d, e                                       ; $580a: $53
    inc [hl]                                      ; $580b: $34
    ld [hl-], a                                   ; $580c: $32
    ld [hl+], a                                   ; $580d: $22
    jr nz, jr_010_5835                            ; $580e: $20 $25

    xor e                                         ; $5810: $ab
    db $dd                                        ; $5811: $dd
    db $ed                                        ; $5812: $ed
    call c, $dceb                                 ; $5813: $dc $eb $dc
    call c, $b9bb                                 ; $5816: $dc $bb $b9
    ld h, l                                       ; $5819: $65
    halt                                          ; $581a: $76
    ld h, h                                       ; $581b: $64
    ld b, [hl]                                    ; $581c: $46
    ld a, b                                       ; $581d: $78
    ld h, [hl]                                    ; $581e: $66
    ld l, b                                       ; $581f: $68
    xor c                                         ; $5820: $a9
    add [hl]                                      ; $5821: $86
    ld h, [hl]                                    ; $5822: $66
    ld h, a                                       ; $5823: $67
    ld h, l                                       ; $5824: $65
    ld d, [hl]                                    ; $5825: $56
    ld l, b                                       ; $5826: $68
    sbc c                                         ; $5827: $99
    xor d                                         ; $5828: $aa
    xor b                                         ; $5829: $a8
    ld h, e                                       ; $582a: $63
    inc d                                         ; $582b: $14
    ld e, b                                       ; $582c: $58
    cp e                                          ; $582d: $bb
    xor c                                         ; $582e: $a9
    sbc b                                         ; $582f: $98
    sub a                                         ; $5830: $97
    add h                                         ; $5831: $84
    dec [hl]                                      ; $5832: $35
    ld a, c                                       ; $5833: $79
    sbc d                                         ; $5834: $9a

jr_010_5835:
    adc d                                         ; $5835: $8a
    add [hl]                                      ; $5836: $86
    ld h, [hl]                                    ; $5837: $66
    ld h, [hl]                                    ; $5838: $66
    ld d, l                                       ; $5839: $55
    add a                                         ; $583a: $87
    ld a, c                                       ; $583b: $79
    xor d                                         ; $583c: $aa
    call z, $c8dd                                 ; $583d: $cc $dd $c8
    sbc b                                         ; $5840: $98
    ld d, a                                       ; $5841: $57
    adc b                                         ; $5842: $88
    sbc d                                         ; $5843: $9a
    ld a, b                                       ; $5844: $78
    add l                                         ; $5845: $85
    ld h, h                                       ; $5846: $64
    ld b, h                                       ; $5847: $44
    ld b, e                                       ; $5848: $43
    ld [hl-], a                                   ; $5849: $32
    inc hl                                        ; $584a: $23
    ld d, [hl]                                    ; $584b: $56
    ld [hl], a                                    ; $584c: $77
    ld h, a                                       ; $584d: $67
    ld h, [hl]                                    ; $584e: $66
    sbc e                                         ; $584f: $9b
    adc $ee                                       ; $5850: $ce $ee
    db $db                                        ; $5852: $db
    cp h                                          ; $5853: $bc
    cp e                                          ; $5854: $bb
    cp c                                          ; $5855: $b9
    ld a, c                                       ; $5856: $79
    ld h, a                                       ; $5857: $67
    ld [hl], l                                    ; $5858: $75
    ld [de], a                                    ; $5859: $12
    dec [hl]                                      ; $585a: $35
    ld b, c                                       ; $585b: $41
    ld [de], a                                    ; $585c: $12
    ld b, h                                       ; $585d: $44
    ld d, l                                       ; $585e: $55
    ld h, a                                       ; $585f: $67
    adc c                                         ; $5860: $89
    xor e                                         ; $5861: $ab
    xor d                                         ; $5862: $aa
    sbc c                                         ; $5863: $99
    xor e                                         ; $5864: $ab
    cp d                                          ; $5865: $ba
    cp c                                          ; $5866: $b9
    sbc b                                         ; $5867: $98
    xor c                                         ; $5868: $a9
    sbc c                                         ; $5869: $99
    sbc c                                         ; $586a: $99
    halt                                          ; $586b: $76
    ld d, l                                       ; $586c: $55
    ld d, h                                       ; $586d: $54
    jr nz, jr_010_5871                            ; $586e: $20 $01

    ld [hl+], a                                   ; $5870: $22

jr_010_5871:
    ld l, b                                       ; $5871: $68
    xor [hl]                                      ; $5872: $ae
    db $ed                                        ; $5873: $ed
    call c, $bdbb                                 ; $5874: $dc $bb $bd
    cp d                                          ; $5877: $ba
    sub a                                         ; $5878: $97
    ld h, [hl]                                    ; $5879: $66
    ld h, l                                       ; $587a: $65
    inc sp                                        ; $587b: $33
    ld [hl-], a                                   ; $587c: $32
    ld d, e                                       ; $587d: $53
    ld b, a                                       ; $587e: $47
    ld a, b                                       ; $587f: $78
    ld h, h                                       ; $5880: $64
    ld d, l                                       ; $5881: $55
    ld a, b                                       ; $5882: $78
    adc b                                         ; $5883: $88
    cp b                                          ; $5884: $b8
    ld h, l                                       ; $5885: $65
    ld b, h                                       ; $5886: $44
    ld d, [hl]                                    ; $5887: $56
    ld h, [hl]                                    ; $5888: $66
    ld l, b                                       ; $5889: $68
    xor d                                         ; $588a: $aa
    sbc c                                         ; $588b: $99
    adc b                                         ; $588c: $88
    ld [hl], a                                    ; $588d: $77
    ld a, c                                       ; $588e: $79
    xor e                                         ; $588f: $ab
    cp l                                          ; $5890: $bd
    call z, Call_010_7999                         ; $5891: $cc $99 $79
    ld a, b                                       ; $5894: $78
    ld [hl], a                                    ; $5895: $77
    ld a, c                                       ; $5896: $79
    sbc b                                         ; $5897: $98
    ld h, l                                       ; $5898: $65
    ld d, h                                       ; $5899: $54
    ld b, h                                       ; $589a: $44
    ld b, l                                       ; $589b: $45
    ld l, b                                       ; $589c: $68
    sbc d                                         ; $589d: $9a
    cp e                                          ; $589e: $bb
    sub a                                         ; $589f: $97
    adc d                                         ; $58a0: $8a
    adc b                                         ; $58a1: $88
    add a                                         ; $58a2: $87
    ld a, c                                       ; $58a3: $79
    xor e                                         ; $58a4: $ab
    sbc $ca                                       ; $58a5: $de $ca
    ld [hl], a                                    ; $58a7: $77
    ld [hl], l                                    ; $58a8: $75
    ld h, l                                       ; $58a9: $65
    ld h, a                                       ; $58aa: $67
    ld h, l                                       ; $58ab: $65
    ld h, a                                       ; $58ac: $67
    ld h, l                                       ; $58ad: $65
    ld b, e                                       ; $58ae: $43
    ld b, h                                       ; $58af: $44
    ld b, [hl]                                    ; $58b0: $46
    add [hl]                                      ; $58b1: $86
    ld h, a                                       ; $58b2: $67
    ld a, d                                       ; $58b3: $7a
    res 3, b                                      ; $58b4: $cb $98
    ld [hl], a                                    ; $58b6: $77
    sbc b                                         ; $58b7: $98
    ld [hl], a                                    ; $58b8: $77
    adc b                                         ; $58b9: $88
    ld [hl], a                                    ; $58ba: $77
    add a                                         ; $58bb: $87
    add a                                         ; $58bc: $87
    ld a, b                                       ; $58bd: $78
    and a                                         ; $58be: $a7
    ld a, b                                       ; $58bf: $78
    adc b                                         ; $58c0: $88
    ld a, b                                       ; $58c1: $78
    xor e                                         ; $58c2: $ab
    xor e                                         ; $58c3: $ab
    sbc b                                         ; $58c4: $98
    ld h, [hl]                                    ; $58c5: $66
    adc b                                         ; $58c6: $88
    adc b                                         ; $58c7: $88
    add a                                         ; $58c8: $87
    halt                                          ; $58c9: $76
    ld d, h                                       ; $58ca: $54
    ld b, h                                       ; $58cb: $44
    ld b, h                                       ; $58cc: $44
    ld d, [hl]                                    ; $58cd: $56
    ld h, a                                       ; $58ce: $67
    adc c                                         ; $58cf: $89
    cp h                                          ; $58d0: $bc
    cp e                                          ; $58d1: $bb
    sbc b                                         ; $58d2: $98
    adc b                                         ; $58d3: $88
    adc c                                         ; $58d4: $89
    ld a, b                                       ; $58d5: $78
    sbc d                                         ; $58d6: $9a
    xor d                                         ; $58d7: $aa
    xor c                                         ; $58d8: $a9
    sbc e                                         ; $58d9: $9b
    cp e                                          ; $58da: $bb
    xor b                                         ; $58db: $a8
    adc c                                         ; $58dc: $89
    ld [hl], l                                    ; $58dd: $75
    ld d, [hl]                                    ; $58de: $56
    ld h, l                                       ; $58df: $65
    ld d, l                                       ; $58e0: $55
    ld h, a                                       ; $58e1: $67
    ld a, b                                       ; $58e2: $78
    adc b                                         ; $58e3: $88
    ld h, [hl]                                    ; $58e4: $66
    ld d, h                                       ; $58e5: $54
    ld [hl-], a                                   ; $58e6: $32
    inc sp                                        ; $58e7: $33
    ld h, [hl]                                    ; $58e8: $66
    ld h, a                                       ; $58e9: $67
    ld a, b                                       ; $58ea: $78
    add a                                         ; $58eb: $87
    ld a, b                                       ; $58ec: $78
    sbc c                                         ; $58ed: $99
    sbc d                                         ; $58ee: $9a
    cp d                                          ; $58ef: $ba
    adc b                                         ; $58f0: $88
    sbc c                                         ; $58f1: $99
    sbc c                                         ; $58f2: $99
    sbc e                                         ; $58f3: $9b
    call c, $8aa9                                 ; $58f4: $dc $a9 $8a
    xor c                                         ; $58f7: $a9
    ld a, b                                       ; $58f8: $78
    ld [hl], l                                    ; $58f9: $75
    ld d, h                                       ; $58fa: $54
    ld b, l                                       ; $58fb: $45
    ld b, d                                       ; $58fc: $42
    inc h                                         ; $58fd: $24
    ld d, [hl]                                    ; $58fe: $56
    ld [hl], a                                    ; $58ff: $77
    sbc e                                         ; $5900: $9b
    cp c                                          ; $5901: $b9
    cp e                                          ; $5902: $bb
    sbc b                                         ; $5903: $98
    halt                                          ; $5904: $76
    ld d, [hl]                                    ; $5905: $56
    ld d, [hl]                                    ; $5906: $56
    halt                                          ; $5907: $76
    ld h, [hl]                                    ; $5908: $66
    ld [hl], a                                    ; $5909: $77
    ld [hl], a                                    ; $590a: $77
    ld [hl], a                                    ; $590b: $77
    ld a, b                                       ; $590c: $78
    adc c                                         ; $590d: $89
    xor c                                         ; $590e: $a9
    adc c                                         ; $590f: $89
    cp d                                          ; $5910: $ba
    cp d                                          ; $5911: $ba
    sbc b                                         ; $5912: $98
    sbc b                                         ; $5913: $98
    add a                                         ; $5914: $87
    ld h, l                                       ; $5915: $65
    ld d, a                                       ; $5916: $57
    ld [hl], a                                    ; $5917: $77
    ld [hl], a                                    ; $5918: $77
    halt                                          ; $5919: $76
    ld h, l                                       ; $591a: $65
    ld d, [hl]                                    ; $591b: $56
    ld [hl], a                                    ; $591c: $77
    halt                                          ; $591d: $76
    ld h, a                                       ; $591e: $67
    adc c                                         ; $591f: $89
    cp d                                          ; $5920: $ba
    sbc d                                         ; $5921: $9a
    sbc b                                         ; $5922: $98
    sbc b                                         ; $5923: $98
    xor c                                         ; $5924: $a9
    add a                                         ; $5925: $87
    add a                                         ; $5926: $87
    ld h, [hl]                                    ; $5927: $66
    ld d, h                                       ; $5928: $54
    ld d, l                                       ; $5929: $55
    ld h, h                                       ; $592a: $64
    inc sp                                        ; $592b: $33
    dec [hl]                                      ; $592c: $35
    ld l, b                                       ; $592d: $68
    xor d                                         ; $592e: $aa
    cp e                                          ; $592f: $bb
    cp d                                          ; $5930: $ba
    sbc c                                         ; $5931: $99
    sbc b                                         ; $5932: $98
    adc c                                         ; $5933: $89
    adc b                                         ; $5934: $88
    adc c                                         ; $5935: $89
    adc c                                         ; $5936: $89
    adc b                                         ; $5937: $88
    adc b                                         ; $5938: $88
    sbc b                                         ; $5939: $98
    adc b                                         ; $593a: $88
    sub a                                         ; $593b: $97
    ld [hl], a                                    ; $593c: $77
    ld a, b                                       ; $593d: $78
    adc b                                         ; $593e: $88
    add a                                         ; $593f: $87
    add a                                         ; $5940: $87
    ld h, [hl]                                    ; $5941: $66
    ld a, b                                       ; $5942: $78
    sbc b                                         ; $5943: $98
    adc b                                         ; $5944: $88
    sbc c                                         ; $5945: $99
    sbc d                                         ; $5946: $9a
    sub a                                         ; $5947: $97
    adc b                                         ; $5948: $88
    add a                                         ; $5949: $87
    halt                                          ; $594a: $76
    ld [hl], a                                    ; $594b: $77
    ld a, b                                       ; $594c: $78
    adc b                                         ; $594d: $88
    ld [hl], a                                    ; $594e: $77
    ld h, a                                       ; $594f: $67
    add a                                         ; $5950: $87
    ld a, b                                       ; $5951: $78
    ld [hl], a                                    ; $5952: $77
    ld h, [hl]                                    ; $5953: $66
    ld h, [hl]                                    ; $5954: $66
    ld a, b                                       ; $5955: $78
    ld [hl], a                                    ; $5956: $77
    ld h, [hl]                                    ; $5957: $66
    ld h, [hl]                                    ; $5958: $66
    ld h, [hl]                                    ; $5959: $66
    ld a, b                                       ; $595a: $78
    adc d                                         ; $595b: $8a
    xor d                                         ; $595c: $aa
    sub a                                         ; $595d: $97
    ld [hl], a                                    ; $595e: $77
    adc b                                         ; $595f: $88
    add a                                         ; $5960: $87
    sbc b                                         ; $5961: $98
    sbc b                                         ; $5962: $98
    sbc b                                         ; $5963: $98
    add [hl]                                      ; $5964: $86
    ld d, l                                       ; $5965: $55
    ld d, l                                       ; $5966: $55
    ld d, [hl]                                    ; $5967: $56
    ld h, [hl]                                    ; $5968: $66
    ld [hl], a                                    ; $5969: $77
    ld a, b                                       ; $596a: $78
    sbc c                                         ; $596b: $99
    adc b                                         ; $596c: $88
    adc b                                         ; $596d: $88
    adc b                                         ; $596e: $88
    adc b                                         ; $596f: $88
    adc c                                         ; $5970: $89
    adc b                                         ; $5971: $88
    adc b                                         ; $5972: $88
    adc b                                         ; $5973: $88
    adc c                                         ; $5974: $89
    sbc b                                         ; $5975: $98
    add a                                         ; $5976: $87
    ld [hl], a                                    ; $5977: $77
    ld [hl], a                                    ; $5978: $77
    adc b                                         ; $5979: $88
    adc b                                         ; $597a: $88
    adc c                                         ; $597b: $89
    sbc c                                         ; $597c: $99
    sbc c                                         ; $597d: $99
    adc b                                         ; $597e: $88
    adc b                                         ; $597f: $88
    sbc c                                         ; $5980: $99
    sbc b                                         ; $5981: $98
    adc b                                         ; $5982: $88
    adc b                                         ; $5983: $88
    adc b                                         ; $5984: $88
    ld [hl], a                                    ; $5985: $77
    halt                                          ; $5986: $76
    ld h, [hl]                                    ; $5987: $66
    ld h, [hl]                                    ; $5988: $66
    ld h, [hl]                                    ; $5989: $66
    ld h, [hl]                                    ; $598a: $66
    halt                                          ; $598b: $76
    ld h, a                                       ; $598c: $67
    ld a, b                                       ; $598d: $78
    adc b                                         ; $598e: $88
    adc b                                         ; $598f: $88
    add a                                         ; $5990: $87
    adc b                                         ; $5991: $88
    adc b                                         ; $5992: $88
    adc b                                         ; $5993: $88
    sbc b                                         ; $5994: $98
    adc b                                         ; $5995: $88
    adc b                                         ; $5996: $88
    adc b                                         ; $5997: $88
    add a                                         ; $5998: $87
    add a                                         ; $5999: $87
    ld [hl], a                                    ; $599a: $77
    add a                                         ; $599b: $87
    ld [hl], a                                    ; $599c: $77
    ld [hl], a                                    ; $599d: $77
    adc b                                         ; $599e: $88
    adc b                                         ; $599f: $88
    adc b                                         ; $59a0: $88
    add a                                         ; $59a1: $87
    adc b                                         ; $59a2: $88
    add a                                         ; $59a3: $87
    ld [hl], a                                    ; $59a4: $77
    ld [hl], a                                    ; $59a5: $77
    ld [hl], a                                    ; $59a6: $77
    ld [hl], a                                    ; $59a7: $77
    ld [hl], a                                    ; $59a8: $77
    ld h, [hl]                                    ; $59a9: $66
    ld h, a                                       ; $59aa: $67
    ld [hl], a                                    ; $59ab: $77
    adc b                                         ; $59ac: $88
    adc c                                         ; $59ad: $89
    sbc c                                         ; $59ae: $99
    sbc c                                         ; $59af: $99
    sbc b                                         ; $59b0: $98
    add a                                         ; $59b1: $87
    ld [hl], a                                    ; $59b2: $77
    ld a, b                                       ; $59b3: $78
    adc b                                         ; $59b4: $88
    ld [hl], a                                    ; $59b5: $77
    ld [hl], a                                    ; $59b6: $77
    ld [hl], a                                    ; $59b7: $77
    ld [hl], a                                    ; $59b8: $77
    ld [hl], a                                    ; $59b9: $77
    ld a, b                                       ; $59ba: $78
    adc b                                         ; $59bb: $88
    ld a, b                                       ; $59bc: $78
    ld a, b                                       ; $59bd: $78
    ld [hl], a                                    ; $59be: $77
    adc b                                         ; $59bf: $88
    adc b                                         ; $59c0: $88
    adc b                                         ; $59c1: $88
    adc b                                         ; $59c2: $88
    ld a, b                                       ; $59c3: $78
    adc b                                         ; $59c4: $88
    adc b                                         ; $59c5: $88
    adc b                                         ; $59c6: $88
    adc b                                         ; $59c7: $88
    add a                                         ; $59c8: $87
    ld [hl], a                                    ; $59c9: $77
    ld [hl], a                                    ; $59ca: $77
    ld [hl], a                                    ; $59cb: $77
    ld [hl], a                                    ; $59cc: $77
    adc b                                         ; $59cd: $88
    adc b                                         ; $59ce: $88
    adc b                                         ; $59cf: $88
    adc b                                         ; $59d0: $88
    add a                                         ; $59d1: $87
    adc b                                         ; $59d2: $88
    add a                                         ; $59d3: $87
    ld [hl], a                                    ; $59d4: $77
    ld [hl], a                                    ; $59d5: $77
    ld [hl], a                                    ; $59d6: $77
    ld a, b                                       ; $59d7: $78
    adc b                                         ; $59d8: $88
    ld [hl], a                                    ; $59d9: $77
    ld [hl], a                                    ; $59da: $77
    ld [hl], a                                    ; $59db: $77
    ld a, b                                       ; $59dc: $78
    adc b                                         ; $59dd: $88
    adc b                                         ; $59de: $88
    adc b                                         ; $59df: $88
    adc b                                         ; $59e0: $88
    adc b                                         ; $59e1: $88
    adc b                                         ; $59e2: $88
    ld [hl], a                                    ; $59e3: $77
    ld a, b                                       ; $59e4: $78
    adc b                                         ; $59e5: $88
    add a                                         ; $59e6: $87
    ld [hl], a                                    ; $59e7: $77
    ld [hl], a                                    ; $59e8: $77
    ld [hl], a                                    ; $59e9: $77
    ld a, b                                       ; $59ea: $78
    adc b                                         ; $59eb: $88
    add a                                         ; $59ec: $87
    ld [hl], a                                    ; $59ed: $77
    ld a, b                                       ; $59ee: $78
    add a                                         ; $59ef: $87
    adc b                                         ; $59f0: $88
    adc b                                         ; $59f1: $88
    adc b                                         ; $59f2: $88
    adc b                                         ; $59f3: $88
    adc b                                         ; $59f4: $88
    adc b                                         ; $59f5: $88
    adc b                                         ; $59f6: $88
    adc b                                         ; $59f7: $88
    adc b                                         ; $59f8: $88
    adc b                                         ; $59f9: $88
    adc b                                         ; $59fa: $88
    adc b                                         ; $59fb: $88
    adc b                                         ; $59fc: $88
    adc b                                         ; $59fd: $88
    adc b                                         ; $59fe: $88
    adc b                                         ; $59ff: $88

    db $87, $88, $87, $77, $78, $77, $78, $88, $78, $77, $78, $87, $88, $77, $78, $87

    add a                                         ; $5a10: $87
    adc b                                         ; $5a11: $88
    adc b                                         ; $5a12: $88
    ld [hl], a                                    ; $5a13: $77
    adc b                                         ; $5a14: $88
    ld [hl], a                                    ; $5a15: $77
    adc b                                         ; $5a16: $88
    ld [hl], a                                    ; $5a17: $77
    adc b                                         ; $5a18: $88
    ld [hl], a                                    ; $5a19: $77
    add a                                         ; $5a1a: $87
    ld a, b                                       ; $5a1b: $78
    add a                                         ; $5a1c: $87
    ld a, b                                       ; $5a1d: $78
    adc b                                         ; $5a1e: $88
    ld [hl], a                                    ; $5a1f: $77
    add a                                         ; $5a20: $87
    ld a, b                                       ; $5a21: $78
    add a                                         ; $5a22: $87
    ld a, b                                       ; $5a23: $78
    adc b                                         ; $5a24: $88
    adc b                                         ; $5a25: $88
    add a                                         ; $5a26: $87
    ld a, b                                       ; $5a27: $78
    add a                                         ; $5a28: $87
    ld a, b                                       ; $5a29: $78
    ld [hl], a                                    ; $5a2a: $77
    ld a, b                                       ; $5a2b: $78
    add a                                         ; $5a2c: $87
    adc b                                         ; $5a2d: $88
    ld [hl], a                                    ; $5a2e: $77
    add a                                         ; $5a2f: $87
    add a                                         ; $5a30: $87
    adc b                                         ; $5a31: $88
    ld [hl], a                                    ; $5a32: $77
    adc b                                         ; $5a33: $88
    add a                                         ; $5a34: $87
    adc b                                         ; $5a35: $88
    ld [hl], a                                    ; $5a36: $77
    add a                                         ; $5a37: $87
    ld a, b                                       ; $5a38: $78
    sbc b                                         ; $5a39: $98
    ld [hl], a                                    ; $5a3a: $77
    add a                                         ; $5a3b: $87
    ld a, b                                       ; $5a3c: $78
    adc b                                         ; $5a3d: $88
    ld [hl], a                                    ; $5a3e: $77
    ld [hl], a                                    ; $5a3f: $77
    adc c                                         ; $5a40: $89
    add [hl]                                      ; $5a41: $86
    ld l, b                                       ; $5a42: $68
    add a                                         ; $5a43: $87
    ld l, b                                       ; $5a44: $68
    sub a                                         ; $5a45: $97
    ld a, b                                       ; $5a46: $78
    add a                                         ; $5a47: $87
    ld a, b                                       ; $5a48: $78
    add a                                         ; $5a49: $87
    adc b                                         ; $5a4a: $88
    adc b                                         ; $5a4b: $88
    add a                                         ; $5a4c: $87
    ld h, [hl]                                    ; $5a4d: $66
    adc b                                         ; $5a4e: $88
    ld [hl], a                                    ; $5a4f: $77
    adc b                                         ; $5a50: $88
    add a                                         ; $5a51: $87
    add a                                         ; $5a52: $87
    ld l, b                                       ; $5a53: $68
    sbc b                                         ; $5a54: $98
    ld [hl], a                                    ; $5a55: $77
    adc b                                         ; $5a56: $88
    ld [hl], a                                    ; $5a57: $77
    sbc b                                         ; $5a58: $98
    ld [hl], a                                    ; $5a59: $77
    ld a, b                                       ; $5a5a: $78
    ld a, b                                       ; $5a5b: $78
    add a                                         ; $5a5c: $87
    ld a, b                                       ; $5a5d: $78
    sbc b                                         ; $5a5e: $98
    ld a, b                                       ; $5a5f: $78
    add [hl]                                      ; $5a60: $86
    ld l, b                                       ; $5a61: $68
    ld [hl], a                                    ; $5a62: $77
    ld a, b                                       ; $5a63: $78
    add a                                         ; $5a64: $87
    sbc c                                         ; $5a65: $99
    add [hl]                                      ; $5a66: $86
    ld a, b                                       ; $5a67: $78
    sbc b                                         ; $5a68: $98
    adc b                                         ; $5a69: $88
    ld h, [hl]                                    ; $5a6a: $66
    ld a, b                                       ; $5a6b: $78
    ld [hl], a                                    ; $5a6c: $77
    adc b                                         ; $5a6d: $88
    add a                                         ; $5a6e: $87
    add a                                         ; $5a6f: $87
    ld h, a                                       ; $5a70: $67
    adc b                                         ; $5a71: $88
    ld [hl], a                                    ; $5a72: $77
    ld a, b                                       ; $5a73: $78
    adc c                                         ; $5a74: $89
    add a                                         ; $5a75: $87
    ld a, c                                       ; $5a76: $79
    sbc b                                         ; $5a77: $98
    ld d, [hl]                                    ; $5a78: $56
    ld a, b                                       ; $5a79: $78
    sbc c                                         ; $5a7a: $99
    add [hl]                                      ; $5a7b: $86
    ld l, b                                       ; $5a7c: $68
    halt                                          ; $5a7d: $76
    ld a, c                                       ; $5a7e: $79
    sbc b                                         ; $5a7f: $98
    adc c                                         ; $5a80: $89
    halt                                          ; $5a81: $76
    ld [hl], a                                    ; $5a82: $77
    ld [hl], a                                    ; $5a83: $77
    sbc e                                         ; $5a84: $9b
    add [hl]                                      ; $5a85: $86
    ld h, a                                       ; $5a86: $67
    ld l, b                                       ; $5a87: $68
    xor c                                         ; $5a88: $a9
    ld [hl], a                                    ; $5a89: $77
    add a                                         ; $5a8a: $87
    adc b                                         ; $5a8b: $88
    sub a                                         ; $5a8c: $97
    ld d, [hl]                                    ; $5a8d: $56
    sbc e                                         ; $5a8e: $9b
    add [hl]                                      ; $5a8f: $86
    ld l, b                                       ; $5a90: $68
    ld h, a                                       ; $5a91: $67
    adc b                                         ; $5a92: $88
    ld [hl], a                                    ; $5a93: $77
    xor d                                         ; $5a94: $aa
    ld a, b                                       ; $5a95: $78
    ld l, b                                       ; $5a96: $68
    ld l, c                                       ; $5a97: $69
    halt                                          ; $5a98: $76
    ld a, d                                       ; $5a99: $7a
    sub [hl]                                      ; $5a9a: $96
    ld b, [hl]                                    ; $5a9b: $46
    ld [hl], a                                    ; $5a9c: $77
    adc c                                         ; $5a9d: $89
    xor d                                         ; $5a9e: $aa
    ld [hl], a                                    ; $5a9f: $77
    ld h, l                                       ; $5aa0: $65
    ld d, a                                       ; $5aa1: $57
    adc c                                         ; $5aa2: $89
    xor c                                         ; $5aa3: $a9
    add [hl]                                      ; $5aa4: $86
    ld h, l                                       ; $5aa5: $65
    add a                                         ; $5aa6: $87
    adc d                                         ; $5aa7: $8a
    add a                                         ; $5aa8: $87
    ld a, b                                       ; $5aa9: $78
    halt                                          ; $5aaa: $76
    ld [hl], a                                    ; $5aab: $77
    ld a, d                                       ; $5aac: $7a
    and a                                         ; $5aad: $a7
    ld [hl], a                                    ; $5aae: $77
    add a                                         ; $5aaf: $87
    ld h, a                                       ; $5ab0: $67
    adc b                                         ; $5ab1: $88
    halt                                          ; $5ab2: $76
    ld a, d                                       ; $5ab3: $7a
    sbc b                                         ; $5ab4: $98
    add a                                         ; $5ab5: $87
    halt                                          ; $5ab6: $76
    ld l, b                                       ; $5ab7: $68
    sbc c                                         ; $5ab8: $99
    sbc b                                         ; $5ab9: $98
    ld [hl], a                                    ; $5aba: $77
    ld [hl], l                                    ; $5abb: $75
    ld l, d                                       ; $5abc: $6a
    add [hl]                                      ; $5abd: $86
    ld l, d                                       ; $5abe: $6a
    or [hl]                                       ; $5abf: $b6
    ld b, a                                       ; $5ac0: $47
    adc b                                         ; $5ac1: $88
    sbc b                                         ; $5ac2: $98
    ld [hl], a                                    ; $5ac3: $77
    ld a, b                                       ; $5ac4: $78
    add a                                         ; $5ac5: $87
    halt                                          ; $5ac6: $76
    ld l, c                                       ; $5ac7: $69
    xor b                                         ; $5ac8: $a8
    ld a, b                                       ; $5ac9: $78
    adc b                                         ; $5aca: $88
    ld d, l                                       ; $5acb: $55
    ld a, b                                       ; $5acc: $78
    ld [hl], a                                    ; $5acd: $77
    adc b                                         ; $5ace: $88
    ld h, a                                       ; $5acf: $67
    xor c                                         ; $5ad0: $a9
    halt                                          ; $5ad1: $76
    ld [hl], l                                    ; $5ad2: $75
    ld a, c                                       ; $5ad3: $79
    add a                                         ; $5ad4: $87
    ld a, d                                       ; $5ad5: $7a
    and a                                         ; $5ad6: $a7
    ld e, b                                       ; $5ad7: $58
    sbc b                                         ; $5ad8: $98
    add a                                         ; $5ad9: $87
    ld h, [hl]                                    ; $5ada: $66
    ld a, e                                       ; $5adb: $7b
    sub [hl]                                      ; $5adc: $96
    ld h, a                                       ; $5add: $67
    adc b                                         ; $5ade: $88
    adc c                                         ; $5adf: $89
    add l                                         ; $5ae0: $85
    sbc c                                         ; $5ae1: $99
    ld h, h                                       ; $5ae2: $64
    adc b                                         ; $5ae3: $88
    ld a, d                                       ; $5ae4: $7a
    rst $00                                       ; $5ae5: $c7
    ld b, a                                       ; $5ae6: $47
    ld [hl], l                                    ; $5ae7: $75
    ld a, c                                       ; $5ae8: $79
    adc c                                         ; $5ae9: $89
    xor c                                         ; $5aea: $a9
    sub [hl]                                      ; $5aeb: $96
    ld h, a                                       ; $5aec: $67
    ld h, [hl]                                    ; $5aed: $66
    add [hl]                                      ; $5aee: $86
    ld l, d                                       ; $5aef: $6a
    cp c                                          ; $5af0: $b9
    adc b                                         ; $5af1: $88
    ld h, h                                       ; $5af2: $64
    ld l, e                                       ; $5af3: $6b
    sub a                                         ; $5af4: $97
    ld a, d                                       ; $5af5: $7a
    sub a                                         ; $5af6: $97
    ld h, l                                       ; $5af7: $65
    ld d, [hl]                                    ; $5af8: $56
    sbc c                                         ; $5af9: $99
    ld d, [hl]                                    ; $5afa: $56
    add [hl]                                      ; $5afb: $86
    ld c, d                                       ; $5afc: $4a
    and a                                         ; $5afd: $a7
    sbc d                                         ; $5afe: $9a
    add a                                         ; $5aff: $87
    sbc l                                         ; $5b00: $9d
    add h                                         ; $5b01: $84
    ld h, a                                       ; $5b02: $67
    ld l, b                                       ; $5b03: $68
    or a                                          ; $5b04: $b7
    ld l, e                                       ; $5b05: $6b
    push bc                                       ; $5b06: $c5
    ld c, b                                       ; $5b07: $48
    add a                                         ; $5b08: $87
    ld d, h                                       ; $5b09: $54
    ld l, c                                       ; $5b0a: $69
    cp e                                          ; $5b0b: $bb
    add a                                         ; $5b0c: $87
    ld [hl], a                                    ; $5b0d: $77
    add l                                         ; $5b0e: $85
    ld d, l                                       ; $5b0f: $55
    cp d                                          ; $5b10: $ba
    ld a, c                                       ; $5b11: $79
    ld d, l                                       ; $5b12: $55
    xor c                                         ; $5b13: $a9
    sbc c                                         ; $5b14: $99
    ld h, [hl]                                    ; $5b15: $66
    ld h, l                                       ; $5b16: $65
    sbc e                                         ; $5b17: $9b
    sub [hl]                                      ; $5b18: $96
    ld b, l                                       ; $5b19: $45
    ld h, l                                       ; $5b1a: $65
    adc h                                         ; $5b1b: $8c
    and [hl]                                      ; $5b1c: $a6
    ld l, d                                       ; $5b1d: $6a
    ld h, h                                       ; $5b1e: $64
    ld l, e                                       ; $5b1f: $6b
    reti                                          ; $5b20: $d9


    sub [hl]                                      ; $5b21: $96
    ld b, a                                       ; $5b22: $47
    add a                                         ; $5b23: $87
    ld l, c                                       ; $5b24: $69
    and l                                         ; $5b25: $a5
    ld c, d                                       ; $5b26: $4a
    sub [hl]                                      ; $5b27: $96
    ld a, c                                       ; $5b28: $79
    ld [hl], l                                    ; $5b29: $75
    ld a, c                                       ; $5b2a: $79
    ld a, d                                       ; $5b2b: $7a
    or a                                          ; $5b2c: $b7
    ld h, a                                       ; $5b2d: $67
    adc b                                         ; $5b2e: $88
    ld [hl], a                                    ; $5b2f: $77
    add [hl]                                      ; $5b30: $86
    adc b                                         ; $5b31: $88
    add a                                         ; $5b32: $87
    ld l, c                                       ; $5b33: $69
    db $db                                        ; $5b34: $db
    ld h, h                                       ; $5b35: $64
    ld [hl], a                                    ; $5b36: $77
    add [hl]                                      ; $5b37: $86
    adc d                                         ; $5b38: $8a
    ld h, l                                       ; $5b39: $65
    ld a, c                                       ; $5b3a: $79
    xor c                                         ; $5b3b: $a9
    ld l, b                                       ; $5b3c: $68
    ld d, h                                       ; $5b3d: $54
    ld a, b                                       ; $5b3e: $78
    adc d                                         ; $5b3f: $8a
    add a                                         ; $5b40: $87
    ld h, a                                       ; $5b41: $67
    add l                                         ; $5b42: $85
    adc d                                         ; $5b43: $8a
    halt                                          ; $5b44: $76
    adc b                                         ; $5b45: $88
    ld h, l                                       ; $5b46: $65

jr_010_5b47:
    ld [hl], h                                    ; $5b47: $74
    ld l, d                                       ; $5b48: $6a
    ld [hl], l                                    ; $5b49: $75
    xor d                                         ; $5b4a: $aa
    sub a                                         ; $5b4b: $97
    ld h, a                                       ; $5b4c: $67
    sbc d                                         ; $5b4d: $9a
    sub [hl]                                      ; $5b4e: $96
    ld a, b                                       ; $5b4f: $78
    add [hl]                                      ; $5b50: $86
    ld [hl], a                                    ; $5b51: $77
    sbc d                                         ; $5b52: $9a
    ld a, b                                       ; $5b53: $78
    ld [hl], a                                    ; $5b54: $77
    ld l, b                                       ; $5b55: $68
    and [hl]                                      ; $5b56: $a6
    ld l, c                                       ; $5b57: $69
    ld [hl], d                                    ; $5b58: $72
    ld e, h                                       ; $5b59: $5c
    res 2, h                                      ; $5b5a: $cb $94
    ld [hl], $67                                  ; $5b5c: $36 $67
    adc d                                         ; $5b5e: $8a
    reti                                          ; $5b5f: $d9


    add h                                         ; $5b60: $84
    ld e, b                                       ; $5b61: $58
    adc b                                         ; $5b62: $88
    add a                                         ; $5b63: $87
    ld h, [hl]                                    ; $5b64: $66
    ld h, a                                       ; $5b65: $67
    sub [hl]                                      ; $5b66: $96
    ld l, d                                       ; $5b67: $6a
    xor c                                         ; $5b68: $a9
    add a                                         ; $5b69: $87
    cp e                                          ; $5b6a: $bb
    ld d, l                                       ; $5b6b: $55
    ld [hl], l                                    ; $5b6c: $75
    ld h, a                                       ; $5b6d: $67
    cp l                                          ; $5b6e: $bd
    sub h                                         ; $5b6f: $94
    ld e, c                                       ; $5b70: $59
    sbc b                                         ; $5b71: $98
    ld [hl], a                                    ; $5b72: $77
    ld d, [hl]                                    ; $5b73: $56
    xor b                                         ; $5b74: $a8
    ld l, b                                       ; $5b75: $68

Jump_010_5b76:
    ld h, a                                       ; $5b76: $67
    sub a                                         ; $5b77: $97
    ld b, [hl]                                    ; $5b78: $46
    sbc c                                         ; $5b79: $99
    adc c                                         ; $5b7a: $89
    ld h, h                                       ; $5b7b: $64
    ld e, c                                       ; $5b7c: $59
    adc e                                         ; $5b7d: $8b
    db $eb                                        ; $5b7e: $eb
    ld d, [hl]                                    ; $5b7f: $56
    ld h, l                                       ; $5b80: $65
    ld d, [hl]                                    ; $5b81: $56
    halt                                          ; $5b82: $76
    ld l, d                                       ; $5b83: $6a
    jp z, Jump_010_739a                           ; $5b84: $ca $9a $73

    ld [hl], $98                                  ; $5b87: $36 $98
    call c, Call_010_45a7                         ; $5b89: $dc $a7 $45
    ld d, [hl]                                    ; $5b8c: $56
    jr c, jr_010_5b47                             ; $5b8d: $38 $b8

    ld a, c                                       ; $5b8f: $79
    ld d, [hl]                                    ; $5b90: $56
    push de                                       ; $5b91: $d5
    inc [hl]                                      ; $5b92: $34
    ld e, c                                       ; $5b93: $59
    call c, Call_010_62a8                         ; $5b94: $dc $a8 $62
    inc de                                        ; $5b97: $13

jr_010_5b98:
    ld c, b                                       ; $5b98: $48
    call $98a7                                    ; $5b99: $cd $a7 $98
    ld b, a                                       ; $5b9c: $47
    xor b                                         ; $5b9d: $a8
    ld l, b                                       ; $5b9e: $68
    or l                                          ; $5b9f: $b5
    sbc d                                         ; $5ba0: $9a
    ld a, b                                       ; $5ba1: $78
    sub l                                         ; $5ba2: $95
    ld a, [hl-]                                   ; $5ba3: $3a
    sbc b                                         ; $5ba4: $98
    sub a                                         ; $5ba5: $97
    ld c, b                                       ; $5ba6: $48
    ret z                                         ; $5ba7: $c8

    inc sp                                        ; $5ba8: $33
    adc d                                         ; $5ba9: $8a
    sbc c                                         ; $5baa: $99
    adc d                                         ; $5bab: $8a
    ld [hl], h                                    ; $5bac: $74
    ld l, b                                       ; $5bad: $68
    add a                                         ; $5bae: $87
    xor e                                         ; $5baf: $ab
    adc b                                         ; $5bb0: $88
    add l                                         ; $5bb1: $85
    ld b, a                                       ; $5bb2: $47
    ld a, e                                       ; $5bb3: $7b
    rst $00                                       ; $5bb4: $c7
    ld b, l                                       ; $5bb5: $45
    sub [hl]                                      ; $5bb6: $96
    ld b, e                                       ; $5bb7: $43
    ld a, h                                       ; $5bb8: $7c
    sub $6a                                       ; $5bb9: $d6 $6a
    ld [hl], a                                    ; $5bbb: $77
    add h                                         ; $5bbc: $84
    ld c, d                                       ; $5bbd: $4a
    adc c                                         ; $5bbe: $89
    or [hl]                                       ; $5bbf: $b6
    ld d, [hl]                                    ; $5bc0: $56
    ld a, b                                       ; $5bc1: $78
    adc b                                         ; $5bc2: $88
    ld d, a                                       ; $5bc3: $57
    sbc d                                         ; $5bc4: $9a
    sbc d                                         ; $5bc5: $9a
    ld h, e                                       ; $5bc6: $63
    xor [hl]                                      ; $5bc7: $ae
    add a                                         ; $5bc8: $87
    ld [hl], a                                    ; $5bc9: $77
    add [hl]                                      ; $5bca: $86
    ld d, e                                       ; $5bcb: $53
    ld c, c                                       ; $5bcc: $49
    cp a                                          ; $5bcd: $bf
    jp Jump_010_4238                              ; $5bce: $c3 $38 $42


    ld [hl], a                                    ; $5bd1: $77
    ld a, h                                       ; $5bd2: $7c
    ret                                           ; $5bd3: $c9


    add [hl]                                      ; $5bd4: $86
    inc hl                                        ; $5bd5: $23
    xor c                                         ; $5bd6: $a9
    adc e                                         ; $5bd7: $8b
    sub l                                         ; $5bd8: $95
    ld c, e                                       ; $5bd9: $4b
    xor b                                         ; $5bda: $a8
    or a                                          ; $5bdb: $b7
    ld h, $88                                     ; $5bdc: $26 $88
    jp z, $8764                                   ; $5bde: $ca $64 $87

    ld a, b                                       ; $5be1: $78
    halt                                          ; $5be2: $76
    adc d                                         ; $5be3: $8a
    cp d                                          ; $5be4: $ba
    ld h, l                                       ; $5be5: $65
    ld [hl], h                                    ; $5be6: $74
    ld l, b                                       ; $5be7: $68
    xor e                                         ; $5be8: $ab
    ld a, b                                       ; $5be9: $78
    adc c                                         ; $5bea: $89
    add d                                         ; $5beb: $82
    jr c, jr_010_5b98                             ; $5bec: $38 $aa

    sbc b                                         ; $5bee: $98
    ld h, a                                       ; $5bef: $67
    ld h, l                                       ; $5bf0: $65
    ld d, a                                       ; $5bf1: $57
    and a                                         ; $5bf2: $a7
    ld c, c                                       ; $5bf3: $49
    ret z                                         ; $5bf4: $c8

    ld e, b                                       ; $5bf5: $58
    ld l, c                                       ; $5bf6: $69
    sub a                                         ; $5bf7: $97
    ld d, l                                       ; $5bf8: $55
    add a                                         ; $5bf9: $87
    sbc h                                         ; $5bfa: $9c
    and l                                         ; $5bfb: $a5
    ld a, h                                       ; $5bfc: $7c
    sub l                                         ; $5bfd: $95
    adc b                                         ; $5bfe: $88
    ld h, [hl]                                    ; $5bff: $66
    ld h, [hl]                                    ; $5c00: $66
    ld l, b                                       ; $5c01: $68
    reti                                          ; $5c02: $d9


    ld h, a                                       ; $5c03: $67
    ld a, d                                       ; $5c04: $7a
    cp b                                          ; $5c05: $b8
    ld h, a                                       ; $5c06: $67
    ld [hl], a                                    ; $5c07: $77
    ld d, l                                       ; $5c08: $55
    adc c                                         ; $5c09: $89
    sbc d                                         ; $5c0a: $9a
    halt                                          ; $5c0b: $76
    ld [hl], l                                    ; $5c0c: $75
    ld c, c                                       ; $5c0d: $49
    ld h, l                                       ; $5c0e: $65
    adc c                                         ; $5c0f: $89
    adc c                                         ; $5c10: $89
    db $db                                        ; $5c11: $db
    add [hl]                                      ; $5c12: $86
    halt                                          ; $5c13: $76
    add a                                         ; $5c14: $87
    ld b, [hl]                                    ; $5c15: $46
    adc b                                         ; $5c16: $88
    bit 4, l                                      ; $5c17: $cb $65
    ld l, d                                       ; $5c19: $6a
    add a                                         ; $5c1a: $87
    halt                                          ; $5c1b: $76
    ld h, l                                       ; $5c1c: $65
    ld c, d                                       ; $5c1d: $4a
    adc c                                         ; $5c1e: $89
    add e                                         ; $5c1f: $83
    ld e, c                                       ; $5c20: $59
    ld b, h                                       ; $5c21: $44
    adc c                                         ; $5c22: $89
    add a                                         ; $5c23: $87
    xor l                                         ; $5c24: $ad
    or h                                          ; $5c25: $b4
    ld l, b                                       ; $5c26: $68
    ld d, d                                       ; $5c27: $52
    ld c, c                                       ; $5c28: $49
    cp l                                          ; $5c29: $bd
    add [hl]                                      ; $5c2a: $86
    ld a, b                                       ; $5c2b: $78
    and [hl]                                      ; $5c2c: $a6
    ld b, [hl]                                    ; $5c2d: $46
    cp l                                          ; $5c2e: $bd
    add l                                         ; $5c2f: $85
    adc c                                         ; $5c30: $89
    ld [hl], a                                    ; $5c31: $77
    cp b                                          ; $5c32: $b8
    ld h, a                                       ; $5c33: $67
    adc b                                         ; $5c34: $88
    ld h, a                                       ; $5c35: $67
    ld h, [hl]                                    ; $5c36: $66
    sbc c                                         ; $5c37: $99
    ld h, [hl]                                    ; $5c38: $66
    xor e                                         ; $5c39: $ab
    sub e                                         ; $5c3a: $93
    add hl, sp                                    ; $5c3b: $39
    ld d, e                                       ; $5c3c: $53
    cp l                                          ; $5c3d: $bd
    sub a                                         ; $5c3e: $97
    ld b, l                                       ; $5c3f: $45
    add a                                         ; $5c40: $87
    sbc c                                         ; $5c41: $99
    sbc c                                         ; $5c42: $99
    xor h                                         ; $5c43: $ac
    add d                                         ; $5c44: $82
    daa                                           ; $5c45: $27
    ld h, h                                       ; $5c46: $64
    ld a, c                                       ; $5c47: $79
    ld a, c                                       ; $5c48: $79
    xor d                                         ; $5c49: $aa
    ld a, b                                       ; $5c4a: $78
    ld [hl], h                                    ; $5c4b: $74
    ld e, b                                       ; $5c4c: $58
    db $db                                        ; $5c4d: $db
    ld d, e                                       ; $5c4e: $53
    ld l, b                                       ; $5c4f: $68
    sbc c                                         ; $5c50: $99
    sbc c                                         ; $5c51: $99
    sbc e                                         ; $5c52: $9b
    adc b                                         ; $5c53: $88
    and d                                         ; $5c54: $a2

jr_010_5c55:
    dec h                                         ; $5c55: $25
    adc b                                         ; $5c56: $88
    xor b                                         ; $5c57: $a8
    ld a, l                                       ; $5c58: $7d
    or a                                          ; $5c59: $b7
    sub a                                         ; $5c5a: $97
    db $10                                        ; $5c5b: $10
    ld a, b                                       ; $5c5c: $78
    sbc e                                         ; $5c5d: $9b
    add $36                                       ; $5c5e: $c6 $36
    xor e                                         ; $5c60: $ab
    sub l                                         ; $5c61: $95
    ld a, h                                       ; $5c62: $7c
    ld a, b                                       ; $5c63: $78
    add l                                         ; $5c64: $85
    ld d, l                                       ; $5c65: $55
    ld h, [hl]                                    ; $5c66: $66
    xor e                                         ; $5c67: $ab
    cp e                                          ; $5c68: $bb
    add h                                         ; $5c69: $84
    inc sp                                        ; $5c6a: $33
    ld l, b                                       ; $5c6b: $68
    adc b                                         ; $5c6c: $88
    adc d                                         ; $5c6d: $8a
    xor c                                         ; $5c6e: $a9
    add l                                         ; $5c6f: $85
    dec [hl]                                      ; $5c70: $35
    adc e                                         ; $5c71: $8b
    add a                                         ; $5c72: $87
    ld l, b                                       ; $5c73: $68
    or [hl]                                       ; $5c74: $b6
    inc [hl]                                      ; $5c75: $34
    ld e, c                                       ; $5c76: $59
    call z, Call_010_77b8                         ; $5c77: $cc $b8 $77
    ld h, l                                       ; $5c7a: $65
    ld a, c                                       ; $5c7b: $79
    add [hl]                                      ; $5c7c: $86
    ld a, b                                       ; $5c7d: $78
    ld a, e                                       ; $5c7e: $7b
    res 1, d                                      ; $5c7f: $cb $8a
    sub h                                         ; $5c81: $94
    inc [hl]                                      ; $5c82: $34
    ld c, e                                       ; $5c83: $4b
    sbc b                                         ; $5c84: $98
    or a                                          ; $5c85: $b7
    inc hl                                        ; $5c86: $23
    jp z, Jump_010_6767                           ; $5c87: $ca $67 $67

    ld d, l                                       ; $5c8a: $55
    halt                                          ; $5c8b: $76
    sbc a                                         ; $5c8c: $9f
    ret c                                         ; $5c8d: $d8

    ld b, e                                       ; $5c8e: $43
    ld a, b                                       ; $5c8f: $78
    cp h                                          ; $5c90: $bc
    ld b, h                                       ; $5c91: $44
    cp e                                          ; $5c92: $bb
    ld d, [hl]                                    ; $5c93: $56
    and a                                         ; $5c94: $a7
    ld c, d                                       ; $5c95: $4a
    adc b                                         ; $5c96: $88
    and a                                         ; $5c97: $a7
    ld a, b                                       ; $5c98: $78
    add e                                         ; $5c99: $83
    jr jr_010_5c55                                ; $5c9a: $18 $b9

    xor e                                         ; $5c9c: $ab
    add a                                         ; $5c9d: $87
    adc e                                         ; $5c9e: $8b
    add e                                         ; $5c9f: $83
    inc hl                                        ; $5ca0: $23
    adc a                                         ; $5ca1: $8f
    push bc                                       ; $5ca2: $c5
    ld h, [hl]                                    ; $5ca3: $66
    ld d, e                                       ; $5ca4: $53
    ld c, b                                       ; $5ca5: $48
    cp [hl]                                       ; $5ca6: $be
    xor e                                         ; $5ca7: $ab
    sub d                                         ; $5ca8: $92
    dec h                                         ; $5ca9: $25
    ld a, c                                       ; $5caa: $79
    and a                                         ; $5cab: $a7
    ld a, e                                       ; $5cac: $7b
    sub a                                         ; $5cad: $97
    xor c                                         ; $5cae: $a9
    ld h, l                                       ; $5caf: $65
    dec h                                         ; $5cb0: $25
    cp $64                                        ; $5cb1: $fe $64
    ld h, a                                       ; $5cb3: $67
    ld h, l                                       ; $5cb4: $65
    add a                                         ; $5cb5: $87
    call z, Call_010_5555                         ; $5cb6: $cc $55 $55
    ld l, b                                       ; $5cb9: $68
    ld [hl], l                                    ; $5cba: $75
    adc c                                         ; $5cbb: $89
    xor d                                         ; $5cbc: $aa
    ld [hl], d                                    ; $5cbd: $72
    ld c, e                                       ; $5cbe: $4b
    and a                                         ; $5cbf: $a7
    ld l, b                                       ; $5cc0: $68
    ld l, b                                       ; $5cc1: $68
    and l                                         ; $5cc2: $a5
    ld h, a                                       ; $5cc3: $67
    ld c, b                                       ; $5cc4: $48
    jp c, Jump_010_7866                           ; $5cc5: $da $66 $78

    ld a, c                                       ; $5cc8: $79
    ld [hl], h                                    ; $5cc9: $74
    rla                                           ; $5cca: $17
    call z, $87c9                                 ; $5ccb: $cc $c9 $87
    ld h, l                                       ; $5cce: $65
    ld h, [hl]                                    ; $5ccf: $66
    sbc e                                         ; $5cd0: $9b
    add a                                         ; $5cd1: $87
    ld a, c                                       ; $5cd2: $79
    add a                                         ; $5cd3: $87
    sbc c                                         ; $5cd4: $99
    ld h, a                                       ; $5cd5: $67
    adc b                                         ; $5cd6: $88
    ld [hl], a                                    ; $5cd7: $77
    ld a, c                                       ; $5cd8: $79
    ld d, a                                       ; $5cd9: $57
    ld e, b                                       ; $5cda: $58
    sbc b                                         ; $5cdb: $98
    ld h, h                                       ; $5cdc: $64
    ld e, b                                       ; $5cdd: $58
    add [hl]                                      ; $5cde: $86
    ld l, c                                       ; $5cdf: $69
    call Call_010_67b5                            ; $5ce0: $cd $b5 $67
    ld [hl], $9a                                  ; $5ce3: $36 $9a
    sub a                                         ; $5ce5: $97
    xor c                                         ; $5ce6: $a9
    ld b, l                                       ; $5ce7: $45
    ld d, a                                       ; $5ce8: $57
    jp z, $ec46                                   ; $5ce9: $ca $46 $ec

    ld h, h                                       ; $5cec: $64
    scf                                           ; $5ced: $37
    xor d                                         ; $5cee: $aa
    ld h, [hl]                                    ; $5cef: $66
    sub [hl]                                      ; $5cf0: $96
    ld l, c                                       ; $5cf1: $69
    xor c                                         ; $5cf2: $a9
    ld d, [hl]                                    ; $5cf3: $56
    ld a, b                                       ; $5cf4: $78
    sbc d                                         ; $5cf5: $9a
    ld h, e                                       ; $5cf6: $63
    ld l, b                                       ; $5cf7: $68
    ld l, c                                       ; $5cf8: $69
    and a                                         ; $5cf9: $a7
    ld a, b                                       ; $5cfa: $78
    sbc b                                         ; $5cfb: $98
    ld h, a                                       ; $5cfc: $67
    halt                                          ; $5cfd: $76
    xor e                                         ; $5cfe: $ab
    ld h, l                                       ; $5cff: $65
    xor c                                         ; $5d00: $a9
    ld h, [hl]                                    ; $5d01: $66
    ld d, [hl]                                    ; $5d02: $56
    ld a, d                                       ; $5d03: $7a
    xor e                                         ; $5d04: $ab
    bit 6, e                                      ; $5d05: $cb $73
    ld h, [hl]                                    ; $5d07: $66
    ld c, b                                       ; $5d08: $48
    db $ec                                        ; $5d09: $ec
    sbc c                                         ; $5d0a: $99
    ld [hl], c                                    ; $5d0b: $71
    jr z, jr_010_5d84                             ; $5d0c: $28 $76

    sbc e                                         ; $5d0e: $9b
    or a                                          ; $5d0f: $b7
    ld h, [hl]                                    ; $5d10: $66
    ld d, a                                       ; $5d11: $57
    adc b                                         ; $5d12: $88
    ld l, d                                       ; $5d13: $6a
    or a                                          ; $5d14: $b7
    ld a, c                                       ; $5d15: $79
    ld [hl], l                                    ; $5d16: $75
    ld b, h                                       ; $5d17: $44
    ld l, b                                       ; $5d18: $68
    ei                                            ; $5d19: $fb
    ld b, h                                       ; $5d1a: $44
    ld [hl], l                                    ; $5d1b: $75
    ld l, [hl]                                    ; $5d1c: $6e
    and h                                         ; $5d1d: $a4
    add hl, sp                                    ; $5d1e: $39
    and l                                         ; $5d1f: $a5
    ld l, e                                       ; $5d20: $6b
    and l                                         ; $5d21: $a5
    ld [hl], a                                    ; $5d22: $77
    ld b, a                                       ; $5d23: $47
    cp c                                          ; $5d24: $b9
    ld h, l                                       ; $5d25: $65
    sbc b                                         ; $5d26: $98
    ld a, d                                       ; $5d27: $7a
    or [hl]                                       ; $5d28: $b6
    ld b, [hl]                                    ; $5d29: $46
    ld a, b                                       ; $5d2a: $78
    sbc b                                         ; $5d2b: $98
    ld b, e                                       ; $5d2c: $43
    ld c, h                                       ; $5d2d: $4c
    rst $00                                       ; $5d2e: $c7
    adc c                                         ; $5d2f: $89
    ld b, [hl]                                    ; $5d30: $46
    xor d                                         ; $5d31: $aa
    sub a                                         ; $5d32: $97
    sbc d                                         ; $5d33: $9a
    add a                                         ; $5d34: $87
    ld d, h                                       ; $5d35: $54
    ld [hl], a                                    ; $5d36: $77
    ld a, b                                       ; $5d37: $78
    add a                                         ; $5d38: $87
    sbc d                                         ; $5d39: $9a
    ld [hl], e                                    ; $5d3a: $73
    ld a, [hl-]                                   ; $5d3b: $3a
    reti                                          ; $5d3c: $d9


    ld a, b                                       ; $5d3d: $78
    add h                                         ; $5d3e: $84
    ld c, h                                       ; $5d3f: $4c
    push bc                                       ; $5d40: $c5
    dec [hl]                                      ; $5d41: $35
    ld h, a                                       ; $5d42: $67
    xor h                                         ; $5d43: $ac
    sbc b                                         ; $5d44: $98
    ld d, l                                       ; $5d45: $55
    ld d, a                                       ; $5d46: $57
    ld a, d                                       ; $5d47: $7a
    rst $10                                       ; $5d48: $d7
    ld e, b                                       ; $5d49: $58
    sub h                                         ; $5d4a: $94
    dec sp                                        ; $5d4b: $3b
    add $68                                       ; $5d4c: $c6 $68
    ld [hl], a                                    ; $5d4e: $77
    ld [hl], h                                    ; $5d4f: $74
    ld c, d                                       ; $5d50: $4a
    cp h                                          ; $5d51: $bc
    sub h                                         ; $5d52: $94
    ld l, e                                       ; $5d53: $6b
    cp b                                          ; $5d54: $b8
    ld [hl-], a                                   ; $5d55: $32
    ld l, c                                       ; $5d56: $69
    cp e                                          ; $5d57: $bb
    sub a                                         ; $5d58: $97
    ld d, e                                       ; $5d59: $53
    add a                                         ; $5d5a: $87
    adc b                                         ; $5d5b: $88
    cp h                                          ; $5d5c: $bc
    ld [hl], h                                    ; $5d5d: $74
    ld b, e                                       ; $5d5e: $43
    ld l, b                                       ; $5d5f: $68
    sub h                                         ; $5d60: $94
    dec sp                                        ; $5d61: $3b
    ld [$7676], a                                 ; $5d62: $ea $76 $76
    ld b, a                                       ; $5d65: $47
    adc $c9                                       ; $5d66: $ce $c9
    ld b, l                                       ; $5d68: $45
    ld h, d                                       ; $5d69: $62
    ld e, h                                       ; $5d6a: $5c
    and a                                         ; $5d6b: $a7
    cp h                                          ; $5d6c: $bc
    ld [hl-], a                                   ; $5d6d: $32
    ld e, d                                       ; $5d6e: $5a
    xor b                                         ; $5d6f: $a8
    ld e, b                                       ; $5d70: $58
    xor d                                         ; $5d71: $aa
    sbc c                                         ; $5d72: $99
    sub [hl]                                      ; $5d73: $96
    ld [hl+], a                                   ; $5d74: $22
    adc c                                         ; $5d75: $89
    adc c                                         ; $5d76: $89
    cp c                                          ; $5d77: $b9
    ld h, a                                       ; $5d78: $67
    ld [hl], e                                    ; $5d79: $73
    ld [hl], $ba                                  ; $5d7a: $36 $ba
    adc c                                         ; $5d7c: $89
    add e                                         ; $5d7d: $83
    ld d, [hl]                                    ; $5d7e: $56
    ld h, l                                       ; $5d7f: $65
    add a                                         ; $5d80: $87
    cp l                                          ; $5d81: $bd
    and h                                         ; $5d82: $a4
    ld a, d                                       ; $5d83: $7a

jr_010_5d84:
    call nz, $9d44                                ; $5d84: $c4 $44 $9d
    cp d                                          ; $5d87: $ba
    ld h, e                                       ; $5d88: $63
    ld a, c                                       ; $5d89: $79
    sub a                                         ; $5d8a: $97
    ld d, a                                       ; $5d8b: $57
    sbc d                                         ; $5d8c: $9a
    cp b                                          ; $5d8d: $b8
    ld b, [hl]                                    ; $5d8e: $46
    adc e                                         ; $5d8f: $8b
    add a                                         ; $5d90: $87
    ld h, l                                       ; $5d91: $65
    inc [hl]                                      ; $5d92: $34
    adc e                                         ; $5d93: $8b
    add [hl]                                      ; $5d94: $86
    ld l, d                                       ; $5d95: $6a
    add $38                                       ; $5d96: $c6 $38
    ld [hl], e                                    ; $5d98: $73
    ld l, e                                       ; $5d99: $6b
    ret z                                         ; $5d9a: $c8

    sbc d                                         ; $5d9b: $9a
    or h                                          ; $5d9c: $b4
    dec d                                         ; $5d9d: $15
    adc d                                         ; $5d9e: $8a
    sub [hl]                                      ; $5d9f: $96
    xor e                                         ; $5da0: $ab
    ld h, [hl]                                    ; $5da1: $66
    add a                                         ; $5da2: $87
    ld h, [hl]                                    ; $5da3: $66
    and a                                         ; $5da4: $a7
    ld l, c                                       ; $5da5: $69
    jp c, Jump_010_4664                           ; $5da6: $da $64 $46

    ld h, h                                       ; $5da9: $64
    xor a                                         ; $5daa: $af
    add [hl]                                      ; $5dab: $86
    adc b                                         ; $5dac: $88
    sub a                                         ; $5dad: $97
    ld e, c                                       ; $5dae: $59
    add [hl]                                      ; $5daf: $86
    ld e, b                                       ; $5db0: $58
    sub a                                         ; $5db1: $97
    adc h                                         ; $5db2: $8c
    rst $00                                       ; $5db3: $c7
    ld d, [hl]                                    ; $5db4: $56
    ld h, h                                       ; $5db5: $64
    ld l, b                                       ; $5db6: $68
    add [hl]                                      ; $5db7: $86
    ld l, e                                       ; $5db8: $6b
    and [hl]                                      ; $5db9: $a6
    ld h, a                                       ; $5dba: $67
    sbc b                                         ; $5dbb: $98
    ld [hl], e                                    ; $5dbc: $73
    adc c                                         ; $5dbd: $89
    ld a, c                                       ; $5dbe: $79
    jp z, Jump_010_6763                           ; $5dbf: $ca $63 $67

    ld b, h                                       ; $5dc2: $44
    cp h                                          ; $5dc3: $bc
    cp c                                          ; $5dc4: $b9
    adc b                                         ; $5dc5: $88
    ld h, l                                       ; $5dc6: $65
    adc b                                         ; $5dc7: $88
    ld b, e                                       ; $5dc8: $43
    cp [hl]                                       ; $5dc9: $be
    and a                                         ; $5dca: $a7
    ld h, a                                       ; $5dcb: $67
    jr nz, jr_010_5e39                            ; $5dcc: $20 $6b

    or [hl]                                       ; $5dce: $b6
    ld a, l                                       ; $5dcf: $7d
    and h                                         ; $5dd0: $a4
    rlca                                          ; $5dd1: $07
    sub l                                         ; $5dd2: $95
    ld a, d                                       ; $5dd3: $7a
    xor b                                         ; $5dd4: $a8
    adc b                                         ; $5dd5: $88
    halt                                          ; $5dd6: $76
    sbc c                                         ; $5dd7: $99
    sub [hl]                                      ; $5dd8: $96
    ld b, h                                       ; $5dd9: $44
    adc $a5                                       ; $5dda: $ce $a5
    ld d, h                                       ; $5ddc: $54
    dec [hl]                                      ; $5ddd: $35
    cp [hl]                                       ; $5dde: $be
    rst $00                                       ; $5ddf: $c7
    ld d, [hl]                                    ; $5de0: $56
    ld [hl], a                                    ; $5de1: $77
    sbc c                                         ; $5de2: $99
    ld d, h                                       ; $5de3: $54
    ld a, b                                       ; $5de4: $78
    ld h, [hl]                                    ; $5de5: $66
    cp c                                          ; $5de6: $b9
    halt                                          ; $5de7: $76
    ld c, b                                       ; $5de8: $48
    sbc b                                         ; $5de9: $98
    cp e                                          ; $5dea: $bb
    add l                                         ; $5deb: $85
    ld e, b                                       ; $5dec: $58
    ld [hl], l                                    ; $5ded: $75
    sbc e                                         ; $5dee: $9b
    sub [hl]                                      ; $5def: $96
    ld h, a                                       ; $5df0: $67
    ld l, c                                       ; $5df1: $69
    xor b                                         ; $5df2: $a8
    ld d, l                                       ; $5df3: $55
    adc b                                         ; $5df4: $88
    ld [hl], a                                    ; $5df5: $77
    ld l, d                                       ; $5df6: $6a
    sub [hl]                                      ; $5df7: $96
    ld d, a                                       ; $5df8: $57
    add a                                         ; $5df9: $87
    ld h, a                                       ; $5dfa: $67
    xor c                                         ; $5dfb: $a9
    ld b, h                                       ; $5dfc: $44
    adc d                                         ; $5dfd: $8a
    add a                                         ; $5dfe: $87
    adc b                                         ; $5dff: $88
    ld d, a                                       ; $5e00: $57
    cp c                                          ; $5e01: $b9
    ld l, b                                       ; $5e02: $68
    sbc b                                         ; $5e03: $98
    ld d, a                                       ; $5e04: $57
    xor l                                         ; $5e05: $ad
    ld [hl], e                                    ; $5e06: $73
    ld d, a                                       ; $5e07: $57
    or a                                          ; $5e08: $b7
    ld a, [hl-]                                   ; $5e09: $3a
    rst $00                                       ; $5e0a: $c7
    xor c                                         ; $5e0b: $a9
    inc hl                                        ; $5e0c: $23
    adc c                                         ; $5e0d: $89
    sub a                                         ; $5e0e: $97
    sub a                                         ; $5e0f: $97
    sub [hl]                                      ; $5e10: $96
    ld a, b                                       ; $5e11: $78
    ld l, b                                       ; $5e12: $68
    adc b                                         ; $5e13: $88
    halt                                          ; $5e14: $76
    rst $08                                       ; $5e15: $cf
    ld [hl], c                                    ; $5e16: $71
    ld h, $f9                                     ; $5e17: $26 $f9
    rla                                           ; $5e19: $17
    add l                                         ; $5e1a: $85
    xor e                                         ; $5e1b: $ab
    ld h, a                                       ; $5e1c: $67
    xor c                                         ; $5e1d: $a9
    add l                                         ; $5e1e: $85
    ld l, d                                       ; $5e1f: $6a
    add l                                         ; $5e20: $85
    ld d, [hl]                                    ; $5e21: $56
    cp e                                          ; $5e22: $bb
    ld h, [hl]                                    ; $5e23: $66
    sub a                                         ; $5e24: $97
    ld h, a                                       ; $5e25: $67
    ld [hl], l                                    ; $5e26: $75
    xor [hl]                                      ; $5e27: $ae
    ld d, d                                       ; $5e28: $52
    adc c                                         ; $5e29: $89
    ld a, c                                       ; $5e2a: $79
    sbc d                                         ; $5e2b: $9a
    add [hl]                                      ; $5e2c: $86
    ld d, l                                       ; $5e2d: $55
    adc c                                         ; $5e2e: $89
    add a                                         ; $5e2f: $87
    add a                                         ; $5e30: $87
    ld a, c                                       ; $5e31: $79
    and a                                         ; $5e32: $a7
    ld a, c                                       ; $5e33: $79
    ld [hl], l                                    ; $5e34: $75
    ld e, c                                       ; $5e35: $59
    xor b                                         ; $5e36: $a8
    ld a, d                                       ; $5e37: $7a
    halt                                          ; $5e38: $76

jr_010_5e39:
    ld b, l                                       ; $5e39: $45
    adc c                                         ; $5e3a: $89
    add l                                         ; $5e3b: $85
    ld h, [hl]                                    ; $5e3c: $66
    cp c                                          ; $5e3d: $b9
    cp d                                          ; $5e3e: $ba
    add l                                         ; $5e3f: $85
    add a                                         ; $5e40: $87
    ld d, l                                       ; $5e41: $55
    db $db                                        ; $5e42: $db
    ld d, l                                       ; $5e43: $55
    adc b                                         ; $5e44: $88
    ld h, l                                       ; $5e45: $65
    sub a                                         ; $5e46: $97
    ld d, [hl]                                    ; $5e47: $56
    ld a, c                                       ; $5e48: $79
    sub a                                         ; $5e49: $97
    ld a, d                                       ; $5e4a: $7a
    add a                                         ; $5e4b: $87
    ld [hl], l                                    ; $5e4c: $75
    scf                                           ; $5e4d: $37
    cp d                                          ; $5e4e: $ba
    sub a                                         ; $5e4f: $97
    jp c, $8b41                                   ; $5e50: $da $41 $8b

    add a                                         ; $5e53: $87
    halt                                          ; $5e54: $76
    ld a, d                                       ; $5e55: $7a
    add sp, $42                                   ; $5e56: $e8 $42
    ld sp, $da9f                                  ; $5e58: $31 $9f $da
    xor h                                         ; $5e5b: $ac
    ld [hl], c                                    ; $5e5c: $71
    daa                                           ; $5e5d: $27
    ld h, l                                       ; $5e5e: $65
    ld a, h                                       ; $5e5f: $7c
    add $46                                       ; $5e60: $c6 $46
    ld h, h                                       ; $5e62: $64
    ld d, a                                       ; $5e63: $57
    xor d                                         ; $5e64: $aa
    xor [hl]                                      ; $5e65: $ae
    ld [hl], l                                    ; $5e66: $75
    sbc h                                         ; $5e67: $9c
    add h                                         ; $5e68: $84
    ld a, e                                       ; $5e69: $7b
    or l                                          ; $5e6a: $b5
    ld l, d                                       ; $5e6b: $6a
    ld [hl], c                                    ; $5e6c: $71
    ld a, l                                       ; $5e6d: $7d
    and a                                         ; $5e6e: $a7
    ld l, c                                       ; $5e6f: $69
    sub [hl]                                      ; $5e70: $96
    xor h                                         ; $5e71: $ac
    ld h, b                                       ; $5e72: $60
    ld c, c                                       ; $5e73: $49
    ld h, a                                       ; $5e74: $67
    xor [hl]                                      ; $5e75: $ae
    jp nz, Jump_010_6727                          ; $5e76: $c2 $27 $67

    add l                                         ; $5e79: $85
    adc c                                         ; $5e7a: $89
    jp hl                                         ; $5e7b: $e9


    ld d, h                                       ; $5e7c: $54
    sbc c                                         ; $5e7d: $99
    ld b, a                                       ; $5e7e: $47
    xor b                                         ; $5e7f: $a8
    adc b                                         ; $5e80: $88
    cp l                                          ; $5e81: $bd
    ld d, d                                       ; $5e82: $52
    ld b, d                                       ; $5e83: $42
    ld a, e                                       ; $5e84: $7b
    db $ed                                        ; $5e85: $ed
    ld [hl], l                                    ; $5e86: $75
    ld d, [hl]                                    ; $5e87: $56
    ld e, b                                       ; $5e88: $58
    ld a, c                                       ; $5e89: $79
    call z, $0586                                 ; $5e8a: $cc $86 $05
    ld l, b                                       ; $5e8d: $68
    cp d                                          ; $5e8e: $ba
    ld d, h                                       ; $5e8f: $54
    xor e                                         ; $5e90: $ab
    ld h, h                                       ; $5e91: $64
    ld e, e                                       ; $5e92: $5b
    add h                                         ; $5e93: $84
    adc d                                         ; $5e94: $8a
    xor b                                         ; $5e95: $a8
    ld h, [hl]                                    ; $5e96: $66
    ld [hl], h                                    ; $5e97: $74
    adc e                                         ; $5e98: $8b
    cp h                                          ; $5e99: $bc
    reti                                          ; $5e9a: $d9


    inc hl                                        ; $5e9b: $23
    ld l, c                                       ; $5e9c: $69
    or a                                          ; $5e9d: $b7
    ld a, b                                       ; $5e9e: $78
    ld d, l                                       ; $5e9f: $55
    adc b                                         ; $5ea0: $88
    add l                                         ; $5ea1: $85
    sbc e                                         ; $5ea2: $9b
    ld d, [hl]                                    ; $5ea3: $56
    adc d                                         ; $5ea4: $8a
    adc b                                         ; $5ea5: $88
    sub a                                         ; $5ea6: $97
    ld h, a                                       ; $5ea7: $67
    ld a, c                                       ; $5ea8: $79
    ld h, a                                       ; $5ea9: $67
    add a                                         ; $5eaa: $87
    ld [hl], a                                    ; $5eab: $77
    ld l, d                                       ; $5eac: $6a
    rst $00                                       ; $5ead: $c7
    ld e, b                                       ; $5eae: $58
    ld [hl], l                                    ; $5eaf: $75
    ld h, a                                       ; $5eb0: $67
    cp l                                          ; $5eb1: $bd
    ld [hl], l                                    ; $5eb2: $75
    ld c, b                                       ; $5eb3: $48
    cp d                                          ; $5eb4: $ba
    inc [hl]                                      ; $5eb5: $34
    ld l, b                                       ; $5eb6: $68
    sbc d                                         ; $5eb7: $9a
    sbc c                                         ; $5eb8: $99
    ld [hl], l                                    ; $5eb9: $75
    ld a, b                                       ; $5eba: $78
    adc e                                         ; $5ebb: $8b
    sbc b                                         ; $5ebc: $98
    halt                                          ; $5ebd: $76
    ld [hl], l                                    ; $5ebe: $75
    ld d, l                                       ; $5ebf: $55
    ld h, a                                       ; $5ec0: $67
    cp h                                          ; $5ec1: $bc
    add l                                         ; $5ec2: $85
    ld l, d                                       ; $5ec3: $6a
    and l                                         ; $5ec4: $a5
    ld b, a                                       ; $5ec5: $47
    sbc e                                         ; $5ec6: $9b
    and a                                         ; $5ec7: $a7
    ld d, h                                       ; $5ec8: $54
    reti                                          ; $5ec9: $d9


    ld e, b                                       ; $5eca: $58
    add h                                         ; $5ecb: $84
    ld l, h                                       ; $5ecc: $6c
    sub e                                         ; $5ecd: $93
    ld h, a                                       ; $5ece: $67
    adc b                                         ; $5ecf: $88
    ld h, a                                       ; $5ed0: $67
    sub [hl]                                      ; $5ed1: $96
    xor b                                         ; $5ed2: $a8
    ld c, b                                       ; $5ed3: $48
    sbc c                                         ; $5ed4: $99
    and a                                         ; $5ed5: $a7
    ld a, c                                       ; $5ed6: $79
    sub l                                         ; $5ed7: $95
    ld b, a                                       ; $5ed8: $47
    adc d                                         ; $5ed9: $8a
    sbc d                                         ; $5eda: $9a
    ld [hl], b                                    ; $5edb: $70
    ld e, d                                       ; $5edc: $5a
    cp e                                          ; $5edd: $bb
    ld hl, sp+$24                                 ; $5ede: $f8 $24
    ld b, [hl]                                    ; $5ee0: $46
    sbc e                                         ; $5ee1: $9b
    ld d, l                                       ; $5ee2: $55
    adc e                                         ; $5ee3: $8b
    ld [hl], a                                    ; $5ee4: $77
    ret z                                         ; $5ee5: $c8

    ld d, l                                       ; $5ee6: $55
    add [hl]                                      ; $5ee7: $86
    scf                                           ; $5ee8: $37
    ret                                           ; $5ee9: $c9


    adc e                                         ; $5eea: $8b
    or [hl]                                       ; $5eeb: $b6
    dec h                                         ; $5eec: $25
    ld l, b                                       ; $5eed: $68
    xor e                                         ; $5eee: $ab
    sub a                                         ; $5eef: $97
    ld h, e                                       ; $5ef0: $63
    jr c, jr_010_5f5c                             ; $5ef1: $38 $69

    cp e                                          ; $5ef3: $bb
    cp e                                          ; $5ef4: $bb
    ld [hl], d                                    ; $5ef5: $72
    ld d, $69                                     ; $5ef6: $16 $69
    xor c                                         ; $5ef8: $a9
    xor b                                         ; $5ef9: $a8
    add l                                         ; $5efa: $85
    ld d, a                                       ; $5efb: $57
    ld d, [hl]                                    ; $5efc: $56
    cp d                                          ; $5efd: $ba
    halt                                          ; $5efe: $76
    ld h, a                                       ; $5eff: $67
    ld h, a                                       ; $5f00: $67
    sbc b                                         ; $5f01: $98
    adc c                                         ; $5f02: $89
    and a                                         ; $5f03: $a7
    ld a, e                                       ; $5f04: $7b
    sbc b                                         ; $5f05: $98
    ld d, [hl]                                    ; $5f06: $56
    ld a, b                                       ; $5f07: $78
    sub [hl]                                      ; $5f08: $96
    ld l, c                                       ; $5f09: $69
    ld h, a                                       ; $5f0a: $67
    ld h, [hl]                                    ; $5f0b: $66
    sbc e                                         ; $5f0c: $9b
    halt                                          ; $5f0d: $76
    sbc d                                         ; $5f0e: $9a
    ld d, e                                       ; $5f0f: $53
    ld c, b                                       ; $5f10: $48
    sbc d                                         ; $5f11: $9a
    or a                                          ; $5f12: $b7
    ld d, [hl]                                    ; $5f13: $56
    ld d, [hl]                                    ; $5f14: $56
    add [hl]                                      ; $5f15: $86

jr_010_5f16:
    adc a                                         ; $5f16: $8f
    jp hl                                         ; $5f17: $e9


    ld b, c                                       ; $5f18: $41
    add hl, sp                                    ; $5f19: $39
    or e                                          ; $5f1a: $b3
    ld a, [hl-]                                   ; $5f1b: $3a
    ld hl, sp+$28                                 ; $5f1c: $f8 $28
    and [hl]                                      ; $5f1e: $a6
    ld e, d                                       ; $5f1f: $5a
    or l                                          ; $5f20: $b5
    ld e, d                                       ; $5f21: $5a
    ld [hl], l                                    ; $5f22: $75
    adc b                                         ; $5f23: $88
    sbc b                                         ; $5f24: $98
    sub a                                         ; $5f25: $97
    ld [hl], a                                    ; $5f26: $77
    ld h, a                                       ; $5f27: $67
    cp d                                          ; $5f28: $ba
    ld [hl], l                                    ; $5f29: $75
    ld a, c                                       ; $5f2a: $79
    xor c                                         ; $5f2b: $a9
    ld a, b                                       ; $5f2c: $78
    add h                                         ; $5f2d: $84
    ld c, b                                       ; $5f2e: $48
    sbc b                                         ; $5f2f: $98
    xor l                                         ; $5f30: $ad
    or [hl]                                       ; $5f31: $b6
    ld hl, $8768                                  ; $5f32: $21 $68 $87
    sbc d                                         ; $5f35: $9a
    sub l                                         ; $5f36: $95
    ld a, c                                       ; $5f37: $79
    ld [hl], h                                    ; $5f38: $74
    ld e, b                                       ; $5f39: $58
    adc e                                         ; $5f3a: $8b
    add a                                         ; $5f3b: $87
    add h                                         ; $5f3c: $84
    ld l, b                                       ; $5f3d: $68
    ld l, d                                       ; $5f3e: $6a
    ret z                                         ; $5f3f: $c8

    ld h, a                                       ; $5f40: $67
    xor c                                         ; $5f41: $a9
    add l                                         ; $5f42: $85
    ld a, d                                       ; $5f43: $7a
    adc c                                         ; $5f44: $89
    add l                                         ; $5f45: $85
    sbc b                                         ; $5f46: $98
    ld a, b                                       ; $5f47: $78
    ld a, b                                       ; $5f48: $78
    add h                                         ; $5f49: $84
    ld b, [hl]                                    ; $5f4a: $46
    add a                                         ; $5f4b: $87
    sbc d                                         ; $5f4c: $9a
    sbc b                                         ; $5f4d: $98
    sbc b                                         ; $5f4e: $98
    adc b                                         ; $5f4f: $88
    sub [hl]                                      ; $5f50: $96
    jr c, jr_010_5fba                             ; $5f51: $38 $67

    sub a                                         ; $5f53: $97
    sub a                                         ; $5f54: $97
    ld a, c                                       ; $5f55: $79
    ld d, l                                       ; $5f56: $55
    add a                                         ; $5f57: $87
    ld a, d                                       ; $5f58: $7a
    cp c                                          ; $5f59: $b9
    ld [hl], l                                    ; $5f5a: $75
    ld [hl], a                                    ; $5f5b: $77

jr_010_5f5c:
    ld h, l                                       ; $5f5c: $65
    adc e                                         ; $5f5d: $8b
    and l                                         ; $5f5e: $a5
    ld d, a                                       ; $5f5f: $57
    sbc d                                         ; $5f60: $9a
    add [hl]                                      ; $5f61: $86
    adc b                                         ; $5f62: $88
    adc b                                         ; $5f63: $88
    ld d, l                                       ; $5f64: $55
    ld a, c                                       ; $5f65: $79
    cp d                                          ; $5f66: $ba
    ld d, h                                       ; $5f67: $54
    sub a                                         ; $5f68: $97
    ld b, [hl]                                    ; $5f69: $46
    xor h                                         ; $5f6a: $ac
    cp e                                          ; $5f6b: $bb
    add [hl]                                      ; $5f6c: $86
    add a                                         ; $5f6d: $87
    ld b, a                                       ; $5f6e: $47
    adc d                                         ; $5f6f: $8a
    ret                                           ; $5f70: $c9


    adc b                                         ; $5f71: $88
    ld b, h                                       ; $5f72: $44
    ld d, h                                       ; $5f73: $54
    ld l, c                                       ; $5f74: $69
    sbc h                                         ; $5f75: $9c
    cp c                                          ; $5f76: $b9
    add a                                         ; $5f77: $87
    inc hl                                        ; $5f78: $23
    jr c, jr_010_5f16                             ; $5f79: $38 $9b

    ret z                                         ; $5f7b: $c8

    ld [hl], a                                    ; $5f7c: $77
    inc [hl]                                      ; $5f7d: $34
    ld h, l                                       ; $5f7e: $65
    call $a5ac                                    ; $5f7f: $cd $ac $a5
    ld b, h                                       ; $5f82: $44
    jr z, jr_010_5ffc                             ; $5f83: $28 $77

    cp c                                          ; $5f85: $b9
    ld a, b                                       ; $5f86: $78
    ld h, [hl]                                    ; $5f87: $66
    ld d, [hl]                                    ; $5f88: $56
    xor c                                         ; $5f89: $a9
    ld a, b                                       ; $5f8a: $78
    cp b                                          ; $5f8b: $b8
    ld d, a                                       ; $5f8c: $57
    ld a, c                                       ; $5f8d: $79
    add l                                         ; $5f8e: $85
    sbc e                                         ; $5f8f: $9b
    or [hl]                                       ; $5f90: $b6
    dec [hl]                                      ; $5f91: $35
    ld d, [hl]                                    ; $5f92: $56
    ld a, d                                       ; $5f93: $7a
    res 3, c                                      ; $5f94: $cb $99
    add e                                         ; $5f96: $83
    sub a                                         ; $5f97: $97
    add l                                         ; $5f98: $85
    ld c, b                                       ; $5f99: $48

jr_010_5f9a:
    ld d, l                                       ; $5f9a: $55
    adc $20                                       ; $5f9b: $ce $20
    adc h                                         ; $5f9d: $8c
    or h                                          ; $5f9e: $b4
    ld l, c                                       ; $5f9f: $69
    xor c                                         ; $5fa0: $a9
    ld [hl], $95                                  ; $5fa1: $36 $95
    ld l, c                                       ; $5fa3: $69
    cp c                                          ; $5fa4: $b9
    xor b                                         ; $5fa5: $a8
    ld h, h                                       ; $5fa6: $64
    ld h, [hl]                                    ; $5fa7: $66
    ld d, a                                       ; $5fa8: $57
    db $dd                                        ; $5fa9: $dd
    sbc d                                         ; $5faa: $9a
    add a                                         ; $5fab: $87
    ld [hl+], a                                   ; $5fac: $22
    ld c, e                                       ; $5fad: $4b
    adc l                                         ; $5fae: $8d
    and l                                         ; $5faf: $a5
    ld h, a                                       ; $5fb0: $67
    sub l                                         ; $5fb1: $95
    ld [hl], a                                    ; $5fb2: $77
    ld e, b                                       ; $5fb3: $58
    or [hl]                                       ; $5fb4: $b6

jr_010_5fb5:
    ld l, b                                       ; $5fb5: $68
    ld h, a                                       ; $5fb6: $67
    add [hl]                                      ; $5fb7: $86
    sbc e                                         ; $5fb8: $9b
    xor c                                         ; $5fb9: $a9

jr_010_5fba:
    adc b                                         ; $5fba: $88
    ld [hl], l                                    ; $5fbb: $75
    ld e, b                                       ; $5fbc: $58
    xor d                                         ; $5fbd: $aa
    and h                                         ; $5fbe: $a4
    ld c, c                                       ; $5fbf: $49
    sbc b                                         ; $5fc0: $98
    ld [hl], a                                    ; $5fc1: $77
    ld h, a                                       ; $5fc2: $67
    halt                                          ; $5fc3: $76
    add d                                         ; $5fc4: $82
    ld l, c                                       ; $5fc5: $69
    adc b                                         ; $5fc6: $88
    adc b                                         ; $5fc7: $88
    adc d                                         ; $5fc8: $8a
    sub a                                         ; $5fc9: $97
    sub l                                         ; $5fca: $95
    ld d, a                                       ; $5fcb: $57
    add a                                         ; $5fcc: $87
    ld l, b                                       ; $5fcd: $68
    ld h, [hl]                                    ; $5fce: $66
    cp e                                          ; $5fcf: $bb
    ld d, h                                       ; $5fd0: $54
    ret                                           ; $5fd1: $c9


    ld e, b                                       ; $5fd2: $58
    sbc b                                         ; $5fd3: $98
    ld [hl], a                                    ; $5fd4: $77
    add [hl]                                      ; $5fd5: $86
    ld a, b                                       ; $5fd6: $78
    ld a, e                                       ; $5fd7: $7b
    sub e                                         ; $5fd8: $93
    scf                                           ; $5fd9: $37
    add a                                         ; $5fda: $87
    sbc e                                         ; $5fdb: $9b
    add h                                         ; $5fdc: $84
    ld h, [hl]                                    ; $5fdd: $66
    adc d                                         ; $5fde: $8a
    and [hl]                                      ; $5fdf: $a6
    ld e, b                                       ; $5fe0: $58
    sub [hl]                                      ; $5fe1: $96
    ld e, c                                       ; $5fe2: $59
    sbc b                                         ; $5fe3: $98
    sbc l                                         ; $5fe4: $9d
    sub [hl]                                      ; $5fe5: $96
    ld h, l                                       ; $5fe6: $65
    ld d, a                                       ; $5fe7: $57
    and h                                         ; $5fe8: $a4
    ld a, [hl]                                    ; $5fe9: $7e
    cp b                                          ; $5fea: $b8
    add l                                         ; $5feb: $85
    inc d                                         ; $5fec: $14
    and a                                         ; $5fed: $a7
    ld c, c                                       ; $5fee: $49
    reti                                          ; $5fef: $d9


    xor c                                         ; $5ff0: $a9
    ld b, b                                       ; $5ff1: $40

jr_010_5ff2:
    ld c, d                                       ; $5ff2: $4a
    xor e                                         ; $5ff3: $ab
    ld sp, hl                                     ; $5ff4: $f9
    halt                                          ; $5ff5: $76
    ld h, h                                       ; $5ff6: $64
    ld c, b                                       ; $5ff7: $48
    ld l, b                                       ; $5ff8: $68
    res 5, c                                      ; $5ff9: $cb $a9
    adc b                                         ; $5ffb: $88

jr_010_5ffc:
    ld b, b                                       ; $5ffc: $40
    ld c, d                                       ; $5ffd: $4a
    cp d                                          ; $5ffe: $ba
    sbc d                                         ; $5fff: $9a
    add a                                         ; $6000: $87
    ld b, h                                       ; $6001: $44
    ld d, a                                       ; $6002: $57
    sbc e                                         ; $6003: $9b
    add $33                                       ; $6004: $c6 $33
    jr z, jr_010_5fb5                             ; $6006: $28 $ad

    or l                                          ; $6008: $b5
    ld a, e                                       ; $6009: $7b
    ld [hl], d                                    ; $600a: $72
    ld c, d                                       ; $600b: $4a
    sbc d                                         ; $600c: $9a
    cp e                                          ; $600d: $bb
    add [hl]                                      ; $600e: $86
    add h                                         ; $600f: $84
    jr c, jr_010_5f9a                             ; $6010: $38 $88

    res 0, l                                      ; $6012: $cb $85
    ld d, a                                       ; $6014: $57
    ld h, l                                       ; $6015: $65
    ld h, [hl]                                    ; $6016: $66
    ld l, d                                       ; $6017: $6a
    db $fd                                        ; $6018: $fd
    ld d, d                                       ; $6019: $52
    ld b, l                                       ; $601a: $45
    ld l, c                                       ; $601b: $69
    sub a                                         ; $601c: $97
    ld a, c                                       ; $601d: $79
    db $db                                        ; $601e: $db
    ld [hl], l                                    ; $601f: $75
    ld b, [hl]                                    ; $6020: $46
    sub a                                         ; $6021: $97
    ld l, e                                       ; $6022: $6b
    xor b                                         ; $6023: $a8
    sub a                                         ; $6024: $97
    ld d, h                                       ; $6025: $54
    jr c, jr_010_5ff2                             ; $6026: $38 $ca

    xor b                                         ; $6028: $a8
    ld b, l                                       ; $6029: $45
    ld h, l                                       ; $602a: $65
    adc b                                         ; $602b: $88
    xor d                                         ; $602c: $aa
    dec [hl]                                      ; $602d: $35
    ld h, l                                       ; $602e: $65
    adc c                                         ; $602f: $89
    or a                                          ; $6030: $b7
    ld e, b                                       ; $6031: $58
    xor b                                         ; $6032: $a8
    adc b                                         ; $6033: $88
    ld [hl], a                                    ; $6034: $77
    ld l, b                                       ; $6035: $68
    xor d                                         ; $6036: $aa
    xor d                                         ; $6037: $aa
    add [hl]                                      ; $6038: $86
    ld l, b                                       ; $6039: $68
    xor c                                         ; $603a: $a9
    ld b, l                                       ; $603b: $45
    cp c                                          ; $603c: $b9
    ld b, e                                       ; $603d: $43
    adc b                                         ; $603e: $88

jr_010_603f:
    adc e                                         ; $603f: $8b
    add [hl]                                      ; $6040: $86
    ld l, b                                       ; $6041: $68
    add l                                         ; $6042: $85
    ld e, c                                       ; $6043: $59
    xor d                                         ; $6044: $aa
    sbc b                                         ; $6045: $98
    ld [hl], a                                    ; $6046: $77
    ld h, l                                       ; $6047: $65
    sbc e                                         ; $6048: $9b
    xor e                                         ; $6049: $ab
    ld [hl], h                                    ; $604a: $74
    ld h, l                                       ; $604b: $65
    ld a, c                                       ; $604c: $79
    ld [hl], a                                    ; $604d: $77
    adc b                                         ; $604e: $88
    ld d, [hl]                                    ; $604f: $56
    xor d                                         ; $6050: $aa
    add [hl]                                      ; $6051: $86
    sbc h                                         ; $6052: $9c
    add [hl]                                      ; $6053: $86
    ld d, e                                       ; $6054: $53
    ld b, h                                       ; $6055: $44
    ld l, b                                       ; $6056: $68
    call c, Call_010_7597                         ; $6057: $dc $97 $75
    ld [hl], d                                    ; $605a: $72
    ld c, c                                       ; $605b: $49
    ld l, d                                       ; $605c: $6a
    db $ed                                        ; $605d: $ed
    and h                                         ; $605e: $a4
    halt                                          ; $605f: $76
    ld b, [hl]                                    ; $6060: $46
    adc d                                         ; $6061: $8a
    adc b                                         ; $6062: $88
    sbc e                                         ; $6063: $9b
    rst $00                                       ; $6064: $c7
    ld de, $a749                                  ; $6065: $11 $49 $a7
    cp d                                          ; $6068: $ba
    sbc b                                         ; $6069: $98
    ld h, e                                       ; $606a: $63
    ld [hl], $ab                                  ; $606b: $36 $ab
    xor b                                         ; $606d: $a8
    ld h, a                                       ; $606e: $67
    inc sp                                        ; $606f: $33
    ld e, e                                       ; $6070: $5b
    cp c                                          ; $6071: $b9
    xor e                                         ; $6072: $ab
    sub h                                         ; $6073: $94
    inc h                                         ; $6074: $24
    ld l, d                                       ; $6075: $6a
    jp z, Jump_010_5797                           ; $6076: $ca $97 $57

    ld d, a                                       ; $6079: $57
    sbc b                                         ; $607a: $98
    ld l, b                                       ; $607b: $68
    and $76                                       ; $607c: $e6 $76
    ld h, [hl]                                    ; $607e: $66
    ld b, [hl]                                    ; $607f: $46
    add a                                         ; $6080: $87
    db $dd                                        ; $6081: $dd
    halt                                          ; $6082: $76
    ld b, h                                       ; $6083: $44
    adc b                                         ; $6084: $88
    sbc c                                         ; $6085: $99
    adc c                                         ; $6086: $89
    ld d, h                                       ; $6087: $54
    sbc b                                         ; $6088: $98
    ld a, b                                       ; $6089: $78
    ld h, l                                       ; $608a: $65
    cp h                                          ; $608b: $bc
    xor b                                         ; $608c: $a8
    ld h, l                                       ; $608d: $65
    adc b                                         ; $608e: $88
    ld h, d                                       ; $608f: $62
    ld h, a                                       ; $6090: $67
    ld a, e                                       ; $6091: $7b
    or [hl]                                       ; $6092: $b6
    add [hl]                                      ; $6093: $86
    ld b, e                                       ; $6094: $43
    jr c, jr_010_603f                             ; $6095: $38 $a8

    add sp, -$76                                  ; $6097: $e8 $8a
    ld d, [hl]                                    ; $6099: $56
    ld d, h                                       ; $609a: $54
    xor b                                         ; $609b: $a8
    adc b                                         ; $609c: $88
    ld l, e                                       ; $609d: $6b
    bit 6, l                                      ; $609e: $cb $75
    ld h, l                                       ; $60a0: $65
    ld d, h                                       ; $60a1: $54
    ld l, h                                       ; $60a2: $6c
    db $db                                        ; $60a3: $db
    add [hl]                                      ; $60a4: $86
    ld h, h                                       ; $60a5: $64
    ld l, b                                       ; $60a6: $68
    ld h, a                                       ; $60a7: $67
    sbc d                                         ; $60a8: $9a
    sub a                                         ; $60a9: $97
    ld [hl], a                                    ; $60aa: $77
    add [hl]                                      ; $60ab: $86
    add a                                         ; $60ac: $87
    ld a, d                                       ; $60ad: $7a
    ret c                                         ; $60ae: $d8

    ld b, e                                       ; $60af: $43
    ld l, b                                       ; $60b0: $68
    sbc e                                         ; $60b1: $9b
    sbc c                                         ; $60b2: $99
    add l                                         ; $60b3: $85
    ld d, a                                       ; $60b4: $57
    halt                                          ; $60b5: $76
    sbc d                                         ; $60b6: $9a
    and a                                         ; $60b7: $a7
    ld d, l                                       ; $60b8: $55
    ld b, [hl]                                    ; $60b9: $46
    xor d                                         ; $60ba: $aa
    cp e                                          ; $60bb: $bb
    ld a, b                                       ; $60bc: $78
    add e                                         ; $60bd: $83
    ld b, l                                       ; $60be: $45
    adc b                                         ; $60bf: $88
    adc h                                         ; $60c0: $8c
    bit 2, h                                      ; $60c1: $cb $54
    ld h, [hl]                                    ; $60c3: $66
    ld b, d                                       ; $60c4: $42
    adc c                                         ; $60c5: $89
    sbc e                                         ; $60c6: $9b
    cp d                                          ; $60c7: $ba
    sub [hl]                                      ; $60c8: $96
    jr nz, jr_010_6136                            ; $60c9: $20 $6b

    xor d                                         ; $60cb: $aa
    cp c                                          ; $60cc: $b9
    sub l                                         ; $60cd: $95
    ld [hl], $76                                  ; $60ce: $36 $76
    sbc e                                         ; $60d0: $9b
    add a                                         ; $60d1: $87
    sbc b                                         ; $60d2: $98
    sub [hl]                                      ; $60d3: $96
    dec h                                         ; $60d4: $25
    xor e                                         ; $60d5: $ab
    sub a                                         ; $60d6: $97
    adc b                                         ; $60d7: $88
    ld h, [hl]                                    ; $60d8: $66
    adc b                                         ; $60d9: $88
    adc b                                         ; $60da: $88
    xor c                                         ; $60db: $a9
    inc [hl]                                      ; $60dc: $34
    ld a, h                                       ; $60dd: $7c
    and h                                         ; $60de: $a4
    adc d                                         ; $60df: $8a
    add a                                         ; $60e0: $87
    adc b                                         ; $60e1: $88
    sbc b                                         ; $60e2: $98
    halt                                          ; $60e3: $76
    ld d, [hl]                                    ; $60e4: $56
    ld a, d                                       ; $60e5: $7a
    sbc c                                         ; $60e6: $99
    ld d, l                                       ; $60e7: $55
    ld h, h                                       ; $60e8: $64
    ld l, d                                       ; $60e9: $6a
    add [hl]                                      ; $60ea: $86
    adc b                                         ; $60eb: $88
    ret                                           ; $60ec: $c9


    inc sp                                        ; $60ed: $33
    dec [hl]                                      ; $60ee: $35
    xor b                                         ; $60ef: $a8
    xor e                                         ; $60f0: $ab
    adc b                                         ; $60f1: $88
    sbc b                                         ; $60f2: $98
    halt                                          ; $60f3: $76
    ld d, [hl]                                    ; $60f4: $56
    sbc c                                         ; $60f5: $99
    cp d                                          ; $60f6: $ba
    ld h, a                                       ; $60f7: $67
    add l                                         ; $60f8: $85
    ld d, [hl]                                    ; $60f9: $56
    adc e                                         ; $60fa: $8b
    add a                                         ; $60fb: $87
    sbc e                                         ; $60fc: $9b
    sub a                                         ; $60fd: $97
    ld [hl], d                                    ; $60fe: $72
    scf                                           ; $60ff: $37
    ld l, d                                       ; $6100: $6a
    or l                                          ; $6101: $b5
    adc l                                         ; $6102: $8d
    or e                                          ; $6103: $b3
    dec b                                         ; $6104: $05
    sbc c                                         ; $6105: $99
    xor l                                         ; $6106: $ad
    and a                                         ; $6107: $a7
    ld [hl], h                                    ; $6108: $74
    ld [hl], $ba                                  ; $6109: $36 $ba
    xor h                                         ; $610b: $ac
    sub a                                         ; $610c: $97
    ld b, d                                       ; $610d: $42
    ld d, a                                       ; $610e: $57
    sbc e                                         ; $610f: $9b
    call c, Call_010_7765                         ; $6110: $dc $65 $77
    sub [hl]                                      ; $6113: $96
    ld [hl], l                                    ; $6114: $75
    daa                                           ; $6115: $27
    sbc e                                         ; $6116: $9b
    cp b                                          ; $6117: $b8
    ld [hl], l                                    ; $6118: $75
    ld d, [hl]                                    ; $6119: $56
    ld h, a                                       ; $611a: $67
    ld l, c                                       ; $611b: $69
    ret z                                         ; $611c: $c8

    add a                                         ; $611d: $87
    halt                                          ; $611e: $76
    ld e, b                                       ; $611f: $58
    cp e                                          ; $6120: $bb
    sub a                                         ; $6121: $97
    ld b, d                                       ; $6122: $42
    ld b, l                                       ; $6123: $45
    ld a, c                                       ; $6124: $79
    cp e                                          ; $6125: $bb
    cp c                                          ; $6126: $b9
    ld [hl], l                                    ; $6127: $75
    ld d, [hl]                                    ; $6128: $56
    ld a, b                                       ; $6129: $78
    ld l, d                                       ; $612a: $6a
    xor c                                         ; $612b: $a9
    cp c                                          ; $612c: $b9
    ld d, l                                       ; $612d: $55
    dec [hl]                                      ; $612e: $35
    cp d                                          ; $612f: $ba
    sub a                                         ; $6130: $97
    add h                                         ; $6131: $84
    ld l, d                                       ; $6132: $6a
    ld d, d                                       ; $6133: $52
    sbc l                                         ; $6134: $9d
    ret z                                         ; $6135: $c8

jr_010_6136:
    ld h, h                                       ; $6136: $64
    ld h, [hl]                                    ; $6137: $66
    ld c, b                                       ; $6138: $48
    sbc c                                         ; $6139: $99
    adc b                                         ; $613a: $88
    add l                                         ; $613b: $85
    sbc l                                         ; $613c: $9d
    add h                                         ; $613d: $84
    add [hl]                                      ; $613e: $86
    ld [hl], $a9                                  ; $613f: $36 $a9
    ld d, h                                       ; $6141: $54
    sub [hl]                                      ; $6142: $96
    ld a, e                                       ; $6143: $7b
    xor b                                         ; $6144: $a8
    ld [hl], l                                    ; $6145: $75
    ld l, b                                       ; $6146: $68
    xor d                                         ; $6147: $aa
    sbc b                                         ; $6148: $98
    ld a, b                                       ; $6149: $78
    ld h, a                                       ; $614a: $67
    sub [hl]                                      ; $614b: $96
    ld b, a                                       ; $614c: $47
    adc b                                         ; $614d: $88
    ld a, c                                       ; $614e: $79
    and [hl]                                      ; $614f: $a6
    sbc b                                         ; $6150: $98
    ld e, c                                       ; $6151: $59
    sub [hl]                                      ; $6152: $96
    ld [hl], l                                    ; $6153: $75
    ld d, [hl]                                    ; $6154: $56
    cp c                                          ; $6155: $b9
    ld a, c                                       ; $6156: $79
    ld [hl], a                                    ; $6157: $77
    ld d, l                                       ; $6158: $55
    sbc b                                         ; $6159: $98
    sbc d                                         ; $615a: $9a
    ld [hl], l                                    ; $615b: $75
    ld a, d                                       ; $615c: $7a
    halt                                          ; $615d: $76
    ld [hl], a                                    ; $615e: $77
    ld a, d                                       ; $615f: $7a
    xor b                                         ; $6160: $a8
    and l                                         ; $6161: $a5
    sbc d                                         ; $6162: $9a
    jr nc, jr_010_61af                            ; $6163: $30 $4a

    jp c, Jump_010_74bb                           ; $6165: $da $bb $74

    sub [hl]                                      ; $6168: $96
    ld c, b                                       ; $6169: $48
    sub [hl]                                      ; $616a: $96
    adc e                                         ; $616b: $8b
    xor d                                         ; $616c: $aa
    add e                                         ; $616d: $83
    halt                                          ; $616e: $76
    ld h, [hl]                                    ; $616f: $66
    ld l, d                                       ; $6170: $6a
    xor b                                         ; $6171: $a8
    ld h, l                                       ; $6172: $65
    inc [hl]                                      ; $6173: $34
    sbc l                                         ; $6174: $9d
    db $db                                        ; $6175: $db
    sub [hl]                                      ; $6176: $96
    ld b, c                                       ; $6177: $41
    scf                                           ; $6178: $37
    xor a                                         ; $6179: $af
    reti                                          ; $617a: $d9


    ld h, e                                       ; $617b: $63
    ld d, a                                       ; $617c: $57
    add a                                         ; $617d: $87
    ld h, a                                       ; $617e: $67
    cp l                                          ; $617f: $bd
    rst $20                                       ; $6180: $e7
    ld hl, $9649                                  ; $6181: $21 $49 $96
    adc l                                         ; $6184: $8d
    sub [hl]                                      ; $6185: $96
    ld d, l                                       ; $6186: $55
    ld h, l                                       ; $6187: $65
    ld a, d                                       ; $6188: $7a
    cp d                                          ; $6189: $ba
    ld a, c                                       ; $618a: $79
    sub [hl]                                      ; $618b: $96
    ld h, h                                       ; $618c: $64
    ld l, c                                       ; $618d: $69
    ld a, d                                       ; $618e: $7a
    call c, Call_010_6286                         ; $618f: $dc $86 $62
    ld c, d                                       ; $6192: $4a
    sbc c                                         ; $6193: $99
    adc c                                         ; $6194: $89
    and [hl]                                      ; $6195: $a6
    ld [hl], l                                    ; $6196: $75
    dec [hl]                                      ; $6197: $35
    sbc h                                         ; $6198: $9c
    bit 2, d                                      ; $6199: $cb $52
    ld a, b                                       ; $619b: $78
    adc d                                         ; $619c: $8a
    sbc b                                         ; $619d: $98
    ld b, d                                       ; $619e: $42
    ld l, b                                       ; $619f: $68
    sbc c                                         ; $61a0: $99
    sbc c                                         ; $61a1: $99
    sbc b                                         ; $61a2: $98
    ld l, c                                       ; $61a3: $69
    ld b, d                                       ; $61a4: $42
    ld l, b                                       ; $61a5: $68
    cp e                                          ; $61a6: $bb
    sub $25                                       ; $61a7: $d6 $25
    halt                                          ; $61a9: $76
    adc b                                         ; $61aa: $88
    halt                                          ; $61ab: $76
    ld d, a                                       ; $61ac: $57
    cp d                                          ; $61ad: $ba
    ld h, l                                       ; $61ae: $65

jr_010_61af:
    ld l, c                                       ; $61af: $69
    cp b                                          ; $61b0: $b8
    ld d, a                                       ; $61b1: $57
    sbc d                                         ; $61b2: $9a
    add [hl]                                      ; $61b3: $86
    ld d, [hl]                                    ; $61b4: $56
    ld [hl], a                                    ; $61b5: $77
    xor b                                         ; $61b6: $a8
    ld a, e                                       ; $61b7: $7b
    ld [hl], l                                    ; $61b8: $75
    ld h, l                                       ; $61b9: $65
    ld a, l                                       ; $61ba: $7d

jr_010_61bb:
    jp c, Jump_010_5285                           ; $61bb: $da $85 $52

    ld d, e                                       ; $61be: $53
    sbc h                                         ; $61bf: $9c
    call c, Call_010_6297                         ; $61c0: $dc $97 $62
    inc d                                         ; $61c3: $14
    ld e, c                                       ; $61c4: $59
    call c, $84bb                                 ; $61c5: $dc $bb $84
    ld [hl-], a                                   ; $61c8: $32
    ld b, [hl]                                    ; $61c9: $46
    call z, $67bb                                 ; $61ca: $cc $bb $67
    ld b, l                                       ; $61cd: $45
    ld a, d                                       ; $61ce: $7a
    xor b                                         ; $61cf: $a8
    ld b, l                                       ; $61d0: $45
    adc b                                         ; $61d1: $88
    xor b                                         ; $61d2: $a8
    add [hl]                                      ; $61d3: $86
    ld h, a                                       ; $61d4: $67
    ld a, b                                       ; $61d5: $78
    ld [hl], a                                    ; $61d6: $77
    ld [hl], a                                    ; $61d7: $77
    sbc c                                         ; $61d8: $99
    adc c                                         ; $61d9: $89
    and a                                         ; $61da: $a7
    sbc c                                         ; $61db: $99
    ld d, h                                       ; $61dc: $54
    ld b, l                                       ; $61dd: $45
    ld a, e                                       ; $61de: $7b
    cp c                                          ; $61df: $b9
    ld h, a                                       ; $61e0: $67
    ld d, a                                       ; $61e1: $57
    adc e                                         ; $61e2: $8b
    xor c                                         ; $61e3: $a9
    adc b                                         ; $61e4: $88
    ld b, l                                       ; $61e5: $45
    ld a, c                                       ; $61e6: $79
    ld [hl], a                                    ; $61e7: $77
    add a                                         ; $61e8: $87
    and l                                         ; $61e9: $a5
    ld a, c                                       ; $61ea: $79
    xor d                                         ; $61eb: $aa
    ld l, c                                       ; $61ec: $69
    ld b, l                                       ; $61ed: $45
    and [hl]                                      ; $61ee: $a6
    ld c, b                                       ; $61ef: $48
    ret                                           ; $61f0: $c9


    ld h, a                                       ; $61f1: $67
    ld h, l                                       ; $61f2: $65
    ld b, l                                       ; $61f3: $45
    sbc c                                         ; $61f4: $99
    xor c                                         ; $61f5: $a9
    xor d                                         ; $61f6: $aa
    ld [hl], a                                    ; $61f7: $77
    and a                                         ; $61f8: $a7
    ld sp, $cc6b                                  ; $61f9: $31 $6b $cc
    sbc b                                         ; $61fc: $98
    add l                                         ; $61fd: $85
    ld b, l                                       ; $61fe: $45
    daa                                           ; $61ff: $27
    cp c                                          ; $6200: $b9
    adc d                                         ; $6201: $8a
    xor d                                         ; $6202: $aa
    xor b                                         ; $6203: $a8
    ld [hl-], a                                   ; $6204: $32
    dec [hl]                                      ; $6205: $35
    cp e                                          ; $6206: $bb
    ret                                           ; $6207: $c9


    ld [hl], l                                    ; $6208: $75
    sub [hl]                                      ; $6209: $96
    sbc e                                         ; $620a: $9b
    xor e                                         ; $620b: $ab
    ld d, [hl]                                    ; $620c: $56
    ld d, h                                       ; $620d: $54
    adc c                                         ; $620e: $89
    add [hl]                                      ; $620f: $86
    ld h, l                                       ; $6210: $65
    halt                                          ; $6211: $76
    ld l, c                                       ; $6212: $69
    cp d                                          ; $6213: $ba
    xor b                                         ; $6214: $a8
    ld [hl], l                                    ; $6215: $75
    jr z, jr_010_61bb                             ; $6216: $28 $a3

    add hl, hl                                    ; $6218: $29
    call Call_010_78c7                            ; $6219: $cd $c7 $78
    ld a, b                                       ; $621c: $78
    ld d, b                                       ; $621d: $50
    ld e, d                                       ; $621e: $5a
    cp h                                          ; $621f: $bc
    xor b                                         ; $6220: $a8
    and a                                         ; $6221: $a7
    inc sp                                        ; $6222: $33
    ld c, e                                       ; $6223: $4b
    ret                                           ; $6224: $c9


    ld d, l                                       ; $6225: $55
    ld a, b                                       ; $6226: $78
    ld [hl], a                                    ; $6227: $77
    ld [hl], a                                    ; $6228: $77
    adc d                                         ; $6229: $8a
    adc d                                         ; $622a: $8a
    cp e                                          ; $622b: $bb
    ld [hl], h                                    ; $622c: $74
    scf                                           ; $622d: $37
    sub [hl]                                      ; $622e: $96
    ld a, d                                       ; $622f: $7a
    add [hl]                                      ; $6230: $86
    ld a, b                                       ; $6231: $78
    adc c                                         ; $6232: $89
    ld a, b                                       ; $6233: $78
    and [hl]                                      ; $6234: $a6
    ld d, [hl]                                    ; $6235: $56
    ld b, [hl]                                    ; $6236: $46
    jp z, $33ba                                   ; $6237: $ca $ba $33

    ld e, b                                       ; $623a: $58
    ld [hl], a                                    ; $623b: $77
    ld a, c                                       ; $623c: $79
    call z, Call_010_40ca                         ; $623d: $cc $ca $40
    dec h                                         ; $6240: $25
    adc e                                         ; $6241: $8b
    xor c                                         ; $6242: $a9
    xor c                                         ; $6243: $a9
    adc b                                         ; $6244: $88
    ld b, c                                       ; $6245: $41
    ld l, b                                       ; $6246: $68
    ld a, d                                       ; $6247: $7a
    bit 6, l                                      ; $6248: $cb $75
    sbc b                                         ; $624a: $98
    inc de                                        ; $624b: $13
    adc e                                         ; $624c: $8b

jr_010_624d:
    add a                                         ; $624d: $87
    cp b                                          ; $624e: $b8
    ld e, c                                       ; $624f: $59
    add l                                         ; $6250: $85
    ld l, b                                       ; $6251: $68
    cp e                                          ; $6252: $bb
    ld [hl], h                                    ; $6253: $74
    ld [hl], a                                    ; $6254: $77
    ld e, b                                       ; $6255: $58
    sbc b                                         ; $6256: $98
    adc c                                         ; $6257: $89
    sub [hl]                                      ; $6258: $96
    ld d, a                                       ; $6259: $57
    ld h, a                                       ; $625a: $67
    sbc d                                         ; $625b: $9a
    jp z, Jump_010_4385                           ; $625c: $ca $85 $43

    ld [hl], a                                    ; $625f: $77
    ld l, b                                       ; $6260: $68
    cp e                                          ; $6261: $bb
    add a                                         ; $6262: $87
    ld h, h                                       ; $6263: $64
    ld d, a                                       ; $6264: $57
    add a                                         ; $6265: $87
    cp e                                          ; $6266: $bb
    ld [hl], e                                    ; $6267: $73
    inc sp                                        ; $6268: $33
    cp a                                          ; $6269: $bf
    sub d                                         ; $626a: $92
    dec hl                                        ; $626b: $2b
    jp c, Jump_010_7b64                           ; $626c: $da $64 $7b

    rst $00                                       ; $626f: $c7
    inc [hl]                                      ; $6270: $34
    ld e, b                                       ; $6271: $58
    ld a, c                                       ; $6272: $79
    or [hl]                                       ; $6273: $b6
    jr c, @-$35                                   ; $6274: $38 $c9

    ld a, d                                       ; $6276: $7a
    sub e                                         ; $6277: $93
    ld h, a                                       ; $6278: $67
    ld b, [hl]                                    ; $6279: $46
    xor c                                         ; $627a: $a9
    ld d, h                                       ; $627b: $54
    xor l                                         ; $627c: $ad
    ld h, l                                       ; $627d: $65
    adc c                                         ; $627e: $89
    xor b                                         ; $627f: $a8
    add a                                         ; $6280: $87
    ld h, a                                       ; $6281: $67
    xor d                                         ; $6282: $aa
    sbc d                                         ; $6283: $9a
    sub [hl]                                      ; $6284: $96
    ld d, e                                       ; $6285: $53

Call_010_6286:
    ld c, h                                       ; $6286: $4c
    ret z                                         ; $6287: $c8

    add a                                         ; $6288: $87
    xor c                                         ; $6289: $a9
    ld b, e                                       ; $628a: $43
    inc hl                                        ; $628b: $23
    ld l, e                                       ; $628c: $6b
    ret c                                         ; $628d: $d8

    sbc c                                         ; $628e: $99
    add a                                         ; $628f: $87
    inc hl                                        ; $6290: $23
    ld d, a                                       ; $6291: $57
    cp d                                          ; $6292: $ba
    xor l                                         ; $6293: $ad
    sub e                                         ; $6294: $93
    inc bc                                        ; $6295: $03
    adc d                                         ; $6296: $8a

Call_010_6297:
    call c, $96db                                 ; $6297: $dc $db $96
    db $10                                        ; $629a: $10
    scf                                           ; $629b: $37
    xor d                                         ; $629c: $aa
    xor d                                         ; $629d: $aa
    xor b                                         ; $629e: $a8
    ld d, [hl]                                    ; $629f: $56
    add h                                         ; $62a0: $84
    jr z, jr_010_624d                             ; $62a1: $28 $aa

    rst $00                                       ; $62a3: $c7
    halt                                          ; $62a4: $76
    ld e, e                                       ; $62a5: $5b
    ld d, a                                       ; $62a6: $57
    dec h                                         ; $62a7: $25

Call_010_62a8:
    ret                                           ; $62a8: $c9


    xor c                                         ; $62a9: $a9
    ld l, c                                       ; $62aa: $69
    ld b, d                                       ; $62ab: $42
    adc d                                         ; $62ac: $8a
    and a                                         ; $62ad: $a7
    ld [hl], a                                    ; $62ae: $77
    ld e, b                                       ; $62af: $58
    ld h, l                                       ; $62b0: $65
    or a                                          ; $62b1: $b7
    jp hl                                         ; $62b2: $e9


    ld b, h                                       ; $62b3: $44
    ld d, [hl]                                    ; $62b4: $56
    add [hl]                                      ; $62b5: $86
    ld a, b                                       ; $62b6: $78
    adc $53                                       ; $62b7: $ce $53
    ld e, b                                       ; $62b9: $58
    add a                                         ; $62ba: $87
    adc c                                         ; $62bb: $89
    xor b                                         ; $62bc: $a8
    adc b                                         ; $62bd: $88
    add [hl]                                      ; $62be: $86
    adc c                                         ; $62bf: $89
    add a                                         ; $62c0: $87
    adc e                                         ; $62c1: $8b
    sub [hl]                                      ; $62c2: $96
    ld e, d                                       ; $62c3: $5a
    sub e                                         ; $62c4: $93
    ld e, b                                       ; $62c5: $58
    sbc e                                         ; $62c6: $9b
    sbc b                                         ; $62c7: $98
    add [hl]                                      ; $62c8: $86
    sub a                                         ; $62c9: $97
    ld l, b                                       ; $62ca: $68
    ld b, h                                       ; $62cb: $44
    add [hl]                                      ; $62cc: $86
    ld a, d                                       ; $62cd: $7a
    ld [hl], a                                    ; $62ce: $77
    xor b                                         ; $62cf: $a8
    ld b, l                                       ; $62d0: $45
    sub l                                         ; $62d1: $95
    ld a, b                                       ; $62d2: $78
    ld a, c                                       ; $62d3: $79
    call Call_010_75b9                            ; $62d4: $cd $b9 $75
    ld b, d                                       ; $62d7: $42
    ld d, a                                       ; $62d8: $57
    sbc [hl]                                      ; $62d9: $9e
    db $fc                                        ; $62da: $fc
    add d                                         ; $62db: $82
    ld b, l                                       ; $62dc: $45
    ld a, b                                       ; $62dd: $78
    ld l, d                                       ; $62de: $6a
    xor c                                         ; $62df: $a9
    sub l                                         ; $62e0: $95
    inc hl                                        ; $62e1: $23
    ld a, e                                       ; $62e2: $7b
    xor e                                         ; $62e3: $ab
    and e                                         ; $62e4: $a3
    ld bc, $ea5b                                  ; $62e5: $01 $5b $ea
    ld l, c                                       ; $62e8: $69
    add $14                                       ; $62e9: $c6 $14
    sbc l                                         ; $62eb: $9d
    sub [hl]                                      ; $62ec: $96
    xor e                                         ; $62ed: $ab
    halt                                          ; $62ee: $76
    ld [hl], l                                    ; $62ef: $75
    ld b, h                                       ; $62f0: $44
    ld l, c                                       ; $62f1: $69
    cp h                                          ; $62f2: $bc
    or l                                          ; $62f3: $b5
    ld e, c                                       ; $62f4: $59
    sbc b                                         ; $62f5: $98
    ld b, e                                       ; $62f6: $43
    ld e, c                                       ; $62f7: $59
    jp hl                                         ; $62f8: $e9


    ld [hl], a                                    ; $62f9: $77
    ld [hl], a                                    ; $62fa: $77
    ld [hl], a                                    ; $62fb: $77
    halt                                          ; $62fc: $76
    sbc e                                         ; $62fd: $9b
    and [hl]                                      ; $62fe: $a6
    ld e, d                                       ; $62ff: $5a
    xor b                                         ; $6300: $a8
    ld h, e                                       ; $6301: $63
    ld a, h                                       ; $6302: $7c
    or a                                          ; $6303: $b7
    halt                                          ; $6304: $76
    ld d, h                                       ; $6305: $54
    ld h, h                                       ; $6306: $64
    sbc d                                         ; $6307: $9a
    jp z, Jump_010_54a5                           ; $6308: $ca $a5 $54

    ld e, b                                       ; $630b: $58
    sub a                                         ; $630c: $97
    sbc e                                         ; $630d: $9b
    and [hl]                                      ; $630e: $a6
    ld h, l                                       ; $630f: $65
    ld d, a                                       ; $6310: $57
    ld a, d                                       ; $6311: $7a
    cp c                                          ; $6312: $b9
    ld [hl], l                                    ; $6313: $75
    adc b                                         ; $6314: $88
    ld h, a                                       ; $6315: $67
    xor l                                         ; $6316: $ad
    ret z                                         ; $6317: $c8

    ld b, e                                       ; $6318: $43
    ld h, [hl]                                    ; $6319: $66
    halt                                          ; $631a: $76
    adc d                                         ; $631b: $8a
    cp c                                          ; $631c: $b9
    ld e, b                                       ; $631d: $58
    ld h, [hl]                                    ; $631e: $66
    ld e, b                                       ; $631f: $58
    sub [hl]                                      ; $6320: $96
    ld [hl], a                                    ; $6321: $77
    ld a, c                                       ; $6322: $79
    ld [hl], a                                    ; $6323: $77
    ld a, c                                       ; $6324: $79
    cp d                                          ; $6325: $ba
    add d                                         ; $6326: $82
    add hl, bc                                    ; $6327: $09
    ld sp, hl                                     ; $6328: $f9
    ld l, e                                       ; $6329: $6b
    ld [hl], c                                    ; $632a: $71
    adc l                                         ; $632b: $8d
    ld b, a                                       ; $632c: $47
    xor d                                         ; $632d: $aa
    halt                                          ; $632e: $76
    ld c, d                                       ; $632f: $4a
    xor h                                         ; $6330: $ac
    sub d                                         ; $6331: $92
    jr z, jr_010_63ab                             ; $6332: $28 $77

    call Call_010_5296                            ; $6334: $cd $96 $52
    ld h, [hl]                                    ; $6337: $66
    ld [hl], $cb                                  ; $6338: $36 $cb
    adc c                                         ; $633a: $89
    or [hl]                                       ; $633b: $b6
    ld b, d                                       ; $633c: $42
    dec h                                         ; $633d: $25
    sbc l                                         ; $633e: $9d
    jp z, Jump_010_7787                           ; $633f: $ca $87 $77

    xor b                                         ; $6342: $a8
    ld e, c                                       ; $6343: $59
    and a                                         ; $6344: $a7
    add a                                         ; $6345: $87
    ld h, l                                       ; $6346: $65
    ld a, e                                       ; $6347: $7b
    ld a, c                                       ; $6348: $79
    xor d                                         ; $6349: $aa
    halt                                          ; $634a: $76
    ld [hl], h                                    ; $634b: $74
    ld d, $9b                                     ; $634c: $16 $9b
    db $fc                                        ; $634e: $fc
    ld d, h                                       ; $634f: $54
    ld h, h                                       ; $6350: $64
    ld c, b                                       ; $6351: $48
    ld l, c                                       ; $6352: $69
    xor e                                         ; $6353: $ab
    rst $00                                       ; $6354: $c7
    ld d, h                                       ; $6355: $54
    ld e, d                                       ; $6356: $5a
    cp b                                          ; $6357: $b8
    sub l                                         ; $6358: $95
    ld a, c                                       ; $6359: $79
    ld a, b                                       ; $635a: $78
    ld d, [hl]                                    ; $635b: $56
    ld d, [hl]                                    ; $635c: $56
    call z, Call_010_67a7                         ; $635d: $cc $a7 $67
    ld d, l                                       ; $6360: $55
    ld d, [hl]                                    ; $6361: $56
    adc d                                         ; $6362: $8a
    sbc l                                         ; $6363: $9d

Jump_010_6364:
    push de                                       ; $6364: $d5
    inc de                                        ; $6365: $13
    ld h, [hl]                                    ; $6366: $66
    ld c, d                                       ; $6367: $4a
    ei                                            ; $6368: $fb
    ld a, b                                       ; $6369: $78
    ld d, e                                       ; $636a: $53
    ld e, b                                       ; $636b: $58
    adc d                                         ; $636c: $8a
    ret                                           ; $636d: $c9


    ld [hl], $87                                  ; $636e: $36 $87
    adc b                                         ; $6370: $88
    sbc e                                         ; $6371: $9b
    add e                                         ; $6372: $83
    inc d                                         ; $6373: $14

jr_010_6374:
    adc d                                         ; $6374: $8a
    sbc d                                         ; $6375: $9a
    cp c                                          ; $6376: $b9
    adc c                                         ; $6377: $89
    ld h, e                                       ; $6378: $63
    ld b, [hl]                                    ; $6379: $46
    sbc d                                         ; $637a: $9a
    adc e                                         ; $637b: $8b
    and h                                         ; $637c: $a4
    inc sp                                        ; $637d: $33
    ld l, d                                       ; $637e: $6a
    cp c                                          ; $637f: $b9
    adc c                                         ; $6380: $89
    add [hl]                                      ; $6381: $86
    sbc b                                         ; $6382: $98
    ld l, b                                       ; $6383: $68
    ld e, b                                       ; $6384: $58
    sub a                                         ; $6385: $97
    ld [hl], h                                    ; $6386: $74
    ld l, c                                       ; $6387: $69
    halt                                          ; $6388: $76
    ld a, e                                       ; $6389: $7b
    db $db                                        ; $638a: $db
    ld h, h                                       ; $638b: $64
    ld b, d                                       ; $638c: $42
    adc [hl]                                      ; $638d: $8e
    add c                                         ; $638e: $81
    sbc l                                         ; $638f: $9d
    adc b                                         ; $6390: $88
    ld h, d                                       ; $6391: $62
    ld e, h                                       ; $6392: $5c
    and h                                         ; $6393: $a4
    ld e, b                                       ; $6394: $58
    xor d                                         ; $6395: $aa
    add a                                         ; $6396: $87
    add [hl]                                      ; $6397: $86
    ld b, h                                       ; $6398: $44
    adc e                                         ; $6399: $8b
    sbc d                                         ; $639a: $9a
    sbc c                                         ; $639b: $99
    ld b, d                                       ; $639c: $42
    xor e                                         ; $639d: $ab
    add h                                         ; $639e: $84
    ld a, e                                       ; $639f: $7b

jr_010_63a0:
    sbc d                                         ; $63a0: $9a
    sub h                                         ; $63a1: $94
    ld h, h                                       ; $63a2: $64
    jr jr_010_63a0                                ; $63a3: $18 $fb

    ld d, l                                       ; $63a5: $55
    adc c                                         ; $63a6: $89
    adc b                                         ; $63a7: $88
    add [hl]                                      ; $63a8: $86
    ld e, b                                       ; $63a9: $58
    add [hl]                                      ; $63aa: $86

jr_010_63ab:
    adc b                                         ; $63ab: $88
    sbc b                                         ; $63ac: $98
    xor c                                         ; $63ad: $a9
    ld h, a                                       ; $63ae: $67
    sbc b                                         ; $63af: $98
    ld d, b                                       ; $63b0: $50
    ld c, e                                       ; $63b1: $4b
    rst $10                                       ; $63b2: $d7
    ld a, e                                       ; $63b3: $7b
    add e                                         ; $63b4: $83
    ld e, c                                       ; $63b5: $59
    ld a, b                                       ; $63b6: $78
    xor b                                         ; $63b7: $a8
    ld l, b                                       ; $63b8: $68
    add [hl]                                      ; $63b9: $86
    adc b                                         ; $63ba: $88
    ld h, a                                       ; $63bb: $67
    ld a, b                                       ; $63bc: $78
    halt                                          ; $63bd: $76
    ld [hl], a                                    ; $63be: $77
    ld h, a                                       ; $63bf: $67
    sbc c                                         ; $63c0: $99
    add a                                         ; $63c1: $87
    ld [hl], a                                    ; $63c2: $77
    ld h, [hl]                                    ; $63c3: $66
    ld c, d                                       ; $63c4: $4a
    ret z                                         ; $63c5: $c8

    add [hl]                                      ; $63c6: $86
    ld l, d                                       ; $63c7: $6a
    ld d, h                                       ; $63c8: $54
    jr c, jr_010_6374                             ; $63c9: $38 $a9

    adc $c6                                       ; $63cb: $ce $c6
    inc hl                                        ; $63cd: $23
    dec h                                         ; $63ce: $25
    ld a, c                                       ; $63cf: $79
    db $ed                                        ; $63d0: $ed
    xor b                                         ; $63d1: $a8
    ld h, h                                       ; $63d2: $64
    inc sp                                        ; $63d3: $33
    ld e, b                                       ; $63d4: $58
    cp [hl]                                       ; $63d5: $be
    ret                                           ; $63d6: $c9


    ld h, h                                       ; $63d7: $64
    ld b, l                                       ; $63d8: $45
    ld d, a                                       ; $63d9: $57
    cp d                                          ; $63da: $ba
    adc c                                         ; $63db: $89
    ld [hl], l                                    ; $63dc: $75
    ld b, l                                       ; $63dd: $45
    sbc c                                         ; $63de: $99
    xor d                                         ; $63df: $aa
    sbc b                                         ; $63e0: $98
    ld d, l                                       ; $63e1: $55
    ld a, b                                       ; $63e2: $78
    adc c                                         ; $63e3: $89
    sbc b                                         ; $63e4: $98
    sbc c                                         ; $63e5: $99
    sbc b                                         ; $63e6: $98
    ld d, h                                       ; $63e7: $54
    ld b, [hl]                                    ; $63e8: $46
    sbc e                                         ; $63e9: $9b
    ret                                           ; $63ea: $c9


    add a                                         ; $63eb: $87
    ld h, h                                       ; $63ec: $64
    ld b, a                                       ; $63ed: $47
    ld [hl], a                                    ; $63ee: $77
    xor l                                         ; $63ef: $ad
    push bc                                       ; $63f0: $c5
    dec h                                         ; $63f1: $25
    ld d, l                                       ; $63f2: $55
    adc e                                         ; $63f3: $8b
    ld a, b                                       ; $63f4: $78
    res 2, [hl]                                   ; $63f5: $cb $96
    halt                                          ; $63f7: $76
    inc h                                         ; $63f8: $24
    xor e                                         ; $63f9: $ab
    call z, Call_010_5696                         ; $63fa: $cc $96 $56
    ld b, a                                       ; $63fd: $47
    ld h, [hl]                                    ; $63fe: $66
    cp c                                          ; $63ff: $b9
    ld l, h                                       ; $6400: $6c
    and [hl]                                      ; $6401: $a6
    ld h, [hl]                                    ; $6402: $66
    ld d, h                                       ; $6403: $54
    sbc h                                         ; $6404: $9c
    add [hl]                                      ; $6405: $86
    ld l, b                                       ; $6406: $68
    inc [hl]                                      ; $6407: $34
    adc c                                         ; $6408: $89
    cp h                                          ; $6409: $bc
    ld h, [hl]                                    ; $640a: $66
    ld d, e                                       ; $640b: $53
    ld l, c                                       ; $640c: $69
    xor c                                         ; $640d: $a9
    ld h, l                                       ; $640e: $65
    ld a, d                                       ; $640f: $7a
    xor c                                         ; $6410: $a9
    and [hl]                                      ; $6411: $a6
    ld h, [hl]                                    ; $6412: $66
    ld d, a                                       ; $6413: $57
    add a                                         ; $6414: $87
    adc d                                         ; $6415: $8a
    add l                                         ; $6416: $85
    ld a, c                                       ; $6417: $79
    ld a, b                                       ; $6418: $78
    jp z, Jump_010_6766                           ; $6419: $ca $66 $67

    sub [hl]                                      ; $641c: $96
    ld h, l                                       ; $641d: $65
    ld a, e                                       ; $641e: $7b
    sub a                                         ; $641f: $97
    ld e, b                                       ; $6420: $58
    sbc e                                         ; $6421: $9b
    add h                                         ; $6422: $84
    ld [hl], a                                    ; $6423: $77
    ld l, d                                       ; $6424: $6a
    sbc b                                         ; $6425: $98
    xor c                                         ; $6426: $a9
    and [hl]                                      ; $6427: $a6
    db $10                                        ; $6428: $10
    ld e, e                                       ; $6429: $5b
    call z, Call_010_419b                         ; $642a: $cc $9b $41
    ld l, b                                       ; $642d: $68
    xor c                                         ; $642e: $a9
    ld a, d                                       ; $642f: $7a
    ld h, h                                       ; $6430: $64
    adc h                                         ; $6431: $8c
    or [hl]                                       ; $6432: $b6
    ld l, b                                       ; $6433: $68
    add a                                         ; $6434: $87
    ld [hl], a                                    ; $6435: $77
    ld b, [hl]                                    ; $6436: $46
    sbc d                                         ; $6437: $9a
    xor e                                         ; $6438: $ab
    halt                                          ; $6439: $76
    ld a, b                                       ; $643a: $78
    ld h, d                                       ; $643b: $62
    ld l, d                                       ; $643c: $6a
    ld [hl], l                                    ; $643d: $75
    adc d                                         ; $643e: $8a
    sub l                                         ; $643f: $95
    cp e                                          ; $6440: $bb
    halt                                          ; $6441: $76
    inc sp                                        ; $6442: $33
    ld b, l                                       ; $6443: $45
    xor l                                         ; $6444: $ad
    jp c, Jump_010_6535                           ; $6445: $da $35 $65

    ld [hl], l                                    ; $6448: $75
    ld l, c                                       ; $6449: $69
    adc d                                         ; $644a: $8a
    call c, Call_000_3640                         ; $644b: $dc $40 $36
    sbc e                                         ; $644e: $9b
    cp h                                          ; $644f: $bc
    xor d                                         ; $6450: $aa
    add h                                         ; $6451: $84
    ld hl, $fd7d                                  ; $6452: $21 $7d $fd
    and [hl]                                      ; $6455: $a6
    ld [hl-], a                                   ; $6456: $32
    ld d, h                                       ; $6457: $54
    xor h                                         ; $6458: $ac
    adc c                                         ; $6459: $89
    and [hl]                                      ; $645a: $a6
    ld h, l                                       ; $645b: $65
    add a                                         ; $645c: $87
    ld d, a                                       ; $645d: $57
    ld d, a                                       ; $645e: $57
    xor d                                         ; $645f: $aa
    adc b                                         ; $6460: $88
    sub a                                         ; $6461: $97
    ld d, l                                       ; $6462: $55
    ld l, d                                       ; $6463: $6a
    cp h                                          ; $6464: $bc
    cp b                                          ; $6465: $b8
    ld [hl], l                                    ; $6466: $75
    inc de                                        ; $6467: $13
    ld l, e                                       ; $6468: $6b
    add sp, $59                                   ; $6469: $e8 $59
    xor b                                         ; $646b: $a8
    halt                                          ; $646c: $76
    ld b, h                                       ; $646d: $44
    add a                                         ; $646e: $87
    call $8488                                    ; $646f: $cd $88 $84
    ld b, l                                       ; $6472: $45
    adc l                                         ; $6473: $8d
    sub $38                                       ; $6474: $d6 $38
    ld h, l                                       ; $6476: $65
    ld a, c                                       ; $6477: $79
    ret                                           ; $6478: $c9


    ld h, h                                       ; $6479: $64
    ld b, h                                       ; $647a: $44
    ld a, e                                       ; $647b: $7b
    cp c                                          ; $647c: $b9
    ld [hl], h                                    ; $647d: $74
    ld d, a                                       ; $647e: $57
    ld d, [hl]                                    ; $647f: $56
    ld l, e                                       ; $6480: $6b
    call nz, $988d                                ; $6481: $c4 $8d $98
    ld d, h                                       ; $6484: $54
    dec [hl]                                      ; $6485: $35
    cp l                                          ; $6486: $bd
    or [hl]                                       ; $6487: $b6
    ld l, d                                       ; $6488: $6a
    ld [hl], d                                    ; $6489: $72
    ld c, d                                       ; $648a: $4a
    ret z                                         ; $648b: $c8

    ld a, d                                       ; $648c: $7a
    ld [hl], h                                    ; $648d: $74
    ld l, c                                       ; $648e: $69
    sbc b                                         ; $648f: $98
    adc c                                         ; $6490: $89
    adc b                                         ; $6491: $88
    ld h, e                                       ; $6492: $63
    dec [hl]                                      ; $6493: $35
    cp h                                          ; $6494: $bc
    ld d, h                                       ; $6495: $54
    call c, Call_010_6543                         ; $6496: $dc $43 $65
    ld l, h                                       ; $6499: $6c
    add $47                                       ; $649a: $c6 $47
    cp b                                          ; $649c: $b8
    ld h, a                                       ; $649d: $67
    sbc b                                         ; $649e: $98
    ld l, c                                       ; $649f: $69
    call c, Call_010_6a42                         ; $64a0: $dc $42 $6a
    sub l                                         ; $64a3: $95
    sbc e                                         ; $64a4: $9b
    ld d, e                                       ; $64a5: $53
    ld a, c                                       ; $64a6: $79
    add l                                         ; $64a7: $85
    ld a, e                                       ; $64a8: $7b
    sub a                                         ; $64a9: $97
    ld d, l                                       ; $64aa: $55
    adc c                                         ; $64ab: $89
    ld [hl], d                                    ; $64ac: $72
    ld l, c                                       ; $64ad: $69
    adc c                                         ; $64ae: $89
    sbc d                                         ; $64af: $9a
    cp c                                          ; $64b0: $b9
    ld h, d                                       ; $64b1: $62
    dec [hl]                                      ; $64b2: $35
    adc l                                         ; $64b3: $8d
    cp b                                          ; $64b4: $b8
    add [hl]                                      ; $64b5: $86
    adc b                                         ; $64b6: $88
    ld d, l                                       ; $64b7: $55
    ld c, b                                       ; $64b8: $48
    xor [hl]                                      ; $64b9: $ae
    rst $30                                       ; $64ba: $f7
    ld [hl-], a                                   ; $64bb: $32
    ld h, a                                       ; $64bc: $67
    ld l, b                                       ; $64bd: $68
    xor d                                         ; $64be: $aa
    or a                                          ; $64bf: $b7
    add l                                         ; $64c0: $85
    inc d                                         ; $64c1: $14
    adc d                                         ; $64c2: $8a
    cp c                                          ; $64c3: $b9
    cp c                                          ; $64c4: $b9
    ld b, h                                       ; $64c5: $44
    ld b, [hl]                                    ; $64c6: $46
    ld h, l                                       ; $64c7: $65
    adc e                                         ; $64c8: $8b
    xor c                                         ; $64c9: $a9
    sub [hl]                                      ; $64ca: $96
    ld b, [hl]                                    ; $64cb: $46
    ld d, l                                       ; $64cc: $55
    adc c                                         ; $64cd: $89
    call Call_010_6786                            ; $64ce: $cd $86 $67
    add [hl]                                      ; $64d1: $86
    halt                                          ; $64d2: $76
    adc h                                         ; $64d3: $8c
    cp c                                          ; $64d4: $b9
    add a                                         ; $64d5: $87
    ld h, [hl]                                    ; $64d6: $66
    add l                                         ; $64d7: $85
    ld a, b                                       ; $64d8: $78
    ld c, b                                       ; $64d9: $48
    adc h                                         ; $64da: $8c
    rst $20                                       ; $64db: $e7
    ld b, h                                       ; $64dc: $44
    ld d, a                                       ; $64dd: $57
    sbc d                                         ; $64de: $9a
    ld a, b                                       ; $64df: $78
    add a                                         ; $64e0: $87
    add h                                         ; $64e1: $84
    ld c, b                                       ; $64e2: $48
    xor e                                         ; $64e3: $ab
    sub a                                         ; $64e4: $97
    inc sp                                        ; $64e5: $33
    ld l, b                                       ; $64e6: $68
    ld [hl], a                                    ; $64e7: $77
    sbc h                                         ; $64e8: $9c
    ld [hl], e                                    ; $64e9: $73
    adc b                                         ; $64ea: $88
    ld l, c                                       ; $64eb: $69
    ld a, d                                       ; $64ec: $7a
    cp b                                          ; $64ed: $b8
    ld d, d                                       ; $64ee: $52
    ld e, b                                       ; $64ef: $58
    sbc c                                         ; $64f0: $99
    ld a, e                                       ; $64f1: $7b
    and [hl]                                      ; $64f2: $a6
    ld d, [hl]                                    ; $64f3: $56
    ld [hl], a                                    ; $64f4: $77
    ld h, a                                       ; $64f5: $67
    adc e                                         ; $64f6: $8b
    sub h                                         ; $64f7: $94
    ld l, c                                       ; $64f8: $69
    ld [hl], a                                    ; $64f9: $77
    adc c                                         ; $64fa: $89
    ret                                           ; $64fb: $c9


    sub [hl]                                      ; $64fc: $96
    ld b, h                                       ; $64fd: $44
    ld a, c                                       ; $64fe: $79
    adc b                                         ; $64ff: $88
    and a                                         ; $6500: $a7
    ld h, a                                       ; $6501: $67
    ld a, c                                       ; $6502: $79
    adc c                                         ; $6503: $89
    add a                                         ; $6504: $87
    sbc b                                         ; $6505: $98
    ld a, b                                       ; $6506: $78
    ld h, l                                       ; $6507: $65
    ld e, b                                       ; $6508: $58
    xor b                                         ; $6509: $a8
    ld a, c                                       ; $650a: $79
    sub [hl]                                      ; $650b: $96
    ld d, a                                       ; $650c: $57
    adc d                                         ; $650d: $8a
    ld h, h                                       ; $650e: $64
    cp h                                          ; $650f: $bc
    cp d                                          ; $6510: $ba
    add a                                         ; $6511: $87
    dec h                                         ; $6512: $25
    ld e, e                                       ; $6513: $5b
    ld hl, sp+$13                                 ; $6514: $f8 $13
    cp [hl]                                       ; $6516: $be
    ld d, d                                       ; $6517: $52

jr_010_6518:
    ld l, [hl]                                    ; $6518: $6e
    db $d3                                        ; $6519: $d3
    ld a, [hl+]                                   ; $651a: $2a
    sub h                                         ; $651b: $94
    ld [hl], $99                                  ; $651c: $36 $99
    adc c                                         ; $651e: $89
    cp h                                          ; $651f: $bc
    sub a                                         ; $6520: $97
    db $10                                        ; $6521: $10
    ld l, c                                       ; $6522: $69
    sbc h                                         ; $6523: $9c
    jp z, $3485                                   ; $6524: $ca $85 $34

    sub a                                         ; $6527: $97
    ld e, d                                       ; $6528: $5a
    call Call_000_3197                            ; $6529: $cd $97 $31
    ld a, b                                       ; $652c: $78
    adc c                                         ; $652d: $89
    add a                                         ; $652e: $87
    ld a, b                                       ; $652f: $78
    sbc b                                         ; $6530: $98
    ld h, [hl]                                    ; $6531: $66
    ld h, l                                       ; $6532: $65
    adc e                                         ; $6533: $8b
    adc c                                         ; $6534: $89

Jump_010_6535:
    xor b                                         ; $6535: $a8
    ld [hl], l                                    ; $6536: $75
    add a                                         ; $6537: $87
    ld h, [hl]                                    ; $6538: $66
    adc c                                         ; $6539: $89
    adc c                                         ; $653a: $89
    sub a                                         ; $653b: $97
    ld h, [hl]                                    ; $653c: $66
    ld l, c                                       ; $653d: $69
    ld [hl], h                                    ; $653e: $74
    sbc l                                         ; $653f: $9d
    or a                                          ; $6540: $b7
    ld b, h                                       ; $6541: $44
    ld e, c                                       ; $6542: $59

Call_010_6543:
    cp c                                          ; $6543: $b9
    add l                                         ; $6544: $85
    ld a, c                                       ; $6545: $79
    ld h, a                                       ; $6546: $67
    ld [hl], a                                    ; $6547: $77
    xor d                                         ; $6548: $aa
    ld [hl], l                                    ; $6549: $75
    ld d, a                                       ; $654a: $57
    ld c, c                                       ; $654b: $49
    jp z, $3496                                   ; $654c: $ca $96 $34

    ld a, c                                       ; $654f: $79
    adc b                                         ; $6550: $88
    adc b                                         ; $6551: $88
    and a                                         ; $6552: $a7
    ld [hl], h                                    ; $6553: $74
    ld d, [hl]                                    ; $6554: $56
    xor e                                         ; $6555: $ab
    and a                                         ; $6556: $a7
    ld a, c                                       ; $6557: $79
    add d                                         ; $6558: $82
    jr c, jr_010_6518                             ; $6559: $38 $bd

    ret                                           ; $655b: $c9


    ld h, c                                       ; $655c: $61
    daa                                           ; $655d: $27
    halt                                          ; $655e: $76
    ld a, h                                       ; $655f: $7c
    jp c, $2965                                   ; $6560: $da $65 $29

    ld [hl], l                                    ; $6563: $75
    adc b                                         ; $6564: $88
    xor c                                         ; $6565: $a9
    ld h, l                                       ; $6566: $65

Jump_010_6567:
    ld d, a                                       ; $6567: $57
    adc e                                         ; $6568: $8b
    reti                                          ; $6569: $d9


    sub [hl]                                      ; $656a: $96
    ld h, h                                       ; $656b: $64
    ld b, a                                       ; $656c: $47
    adc h                                         ; $656d: $8c
    halt                                          ; $656e: $76
    res 0, l                                      ; $656f: $cb $85
    ld b, h                                       ; $6571: $44
    ld h, a                                       ; $6572: $67
    adc d                                         ; $6573: $8a
    cp e                                          ; $6574: $bb

Jump_010_6575:
    sbc b                                         ; $6575: $98
    ld d, h                                       ; $6576: $54
    ld d, [hl]                                    ; $6577: $56
    ld [hl], a                                    ; $6578: $77
    adc d                                         ; $6579: $8a
    cp e                                          ; $657a: $bb
    ld h, h                                       ; $657b: $64
    ld d, [hl]                                    ; $657c: $56
    add l                                         ; $657d: $85
    sbc l                                         ; $657e: $9d
    cp e                                          ; $657f: $bb
    add l                                         ; $6580: $85
    ld b, h                                       ; $6581: $44
    dec [hl]                                      ; $6582: $35
    sbc d                                         ; $6583: $9a
    xor h                                         ; $6584: $ac
    sub l                                         ; $6585: $95
    ld sp, $a979                                  ; $6586: $31 $79 $a9
    sub a                                         ; $6589: $97
    dec [hl]                                      ; $658a: $35
    ld a, b                                       ; $658b: $78
    ld a, d                                       ; $658c: $7a
    cp e                                          ; $658d: $bb
    xor c                                         ; $658e: $a9
    ld l, b                                       ; $658f: $68
    ld l, c                                       ; $6590: $69
    ld h, h                                       ; $6591: $64
    sbc c                                         ; $6592: $99
    xor c                                         ; $6593: $a9
    adc d                                         ; $6594: $8a
    sbc b                                         ; $6595: $98
    adc c                                         ; $6596: $89
    ld h, e                                       ; $6597: $63
    ld e, c                                       ; $6598: $59
    add a                                         ; $6599: $87
    adc b                                         ; $659a: $88
    halt                                          ; $659b: $76
    ld a, b                                       ; $659c: $78
    xor d                                         ; $659d: $aa
    ld h, h                                       ; $659e: $64
    ld h, [hl]                                    ; $659f: $66
    xor c                                         ; $65a0: $a9
    ld h, a                                       ; $65a1: $67
    ld h, a                                       ; $65a2: $67
    sbc d                                         ; $65a3: $9a
    sub a                                         ; $65a4: $97
    bit 4, h                                      ; $65a5: $cb $64
    scf                                           ; $65a7: $37

Call_010_65a8:
    sbc b                                         ; $65a8: $98
    xor d                                         ; $65a9: $aa
    sub a                                         ; $65aa: $97
    halt                                          ; $65ab: $76
    ld d, a                                       ; $65ac: $57
    ld a, b                                       ; $65ad: $78
    add a                                         ; $65ae: $87
    ld a, b                                       ; $65af: $78
    adc c                                         ; $65b0: $89
    ret z                                         ; $65b1: $c8

    ld b, d                                       ; $65b2: $42
    ld h, a                                       ; $65b3: $67
    adc c                                         ; $65b4: $89
    xor [hl]                                      ; $65b5: $ae
    sub l                                         ; $65b6: $95
    ld [hl], a                                    ; $65b7: $77

Call_010_65b8:
    ld h, e                                       ; $65b8: $63
    ld e, b                                       ; $65b9: $58
    cp l                                          ; $65ba: $bd
    and h                                         ; $65bb: $a4
    inc [hl]                                      ; $65bc: $34
    ld a, c                                       ; $65bd: $79
    sbc d                                         ; $65be: $9a
    sbc c                                         ; $65bf: $99
    sbc d                                         ; $65c0: $9a
    ld [hl], d                                    ; $65c1: $72
    inc d                                         ; $65c2: $14
    xor d                                         ; $65c3: $aa
    adc h                                         ; $65c4: $8c
    xor c                                         ; $65c5: $a9
    ld [hl], h                                    ; $65c6: $74
    ld l, b                                       ; $65c7: $68
    add l                                         ; $65c8: $85
    ld d, a                                       ; $65c9: $57
    adc h                                         ; $65ca: $8c
    ret                                           ; $65cb: $c9


    halt                                          ; $65cc: $76
    ld h, l                                       ; $65cd: $65
    sbc c                                         ; $65ce: $99
    adc b                                         ; $65cf: $88
    xor d                                         ; $65d0: $aa
    sub [hl]                                      ; $65d1: $96
    inc sp                                        ; $65d2: $33
    ld e, c                                       ; $65d3: $59
    db $dd                                        ; $65d4: $dd
    sub a                                         ; $65d5: $97
    ld d, d                                       ; $65d6: $52
    ld d, [hl]                                    ; $65d7: $56
    ld c, b                                       ; $65d8: $48
    db $eb                                        ; $65d9: $eb
    sbc b                                         ; $65da: $98
    add e                                         ; $65db: $83
    scf                                           ; $65dc: $37
    ld [hl], a                                    ; $65dd: $77
    cp c                                          ; $65de: $b9
    add l                                         ; $65df: $85
    add [hl]                                      ; $65e0: $86
    sbc c                                         ; $65e1: $99
    inc l                                         ; $65e2: $2c
    cp e                                          ; $65e3: $bb
    ld [hl], h                                    ; $65e4: $74
    ld h, a                                       ; $65e5: $67
    ld e, d                                       ; $65e6: $5a
    ld d, d                                       ; $65e7: $52
    sbc l                                         ; $65e8: $9d
    and l                                         ; $65e9: $a5
    adc c                                         ; $65ea: $89
    halt                                          ; $65eb: $76
    ld d, [hl]                                    ; $65ec: $56
    ld h, [hl]                                    ; $65ed: $66
    sbc c                                         ; $65ee: $99
    sbc l                                         ; $65ef: $9d
    sbc c                                         ; $65f0: $99
    ld h, b                                       ; $65f1: $60
    ld e, l                                       ; $65f2: $5d
    ret                                           ; $65f3: $c9


    ld d, a                                       ; $65f4: $57
    ld h, a                                       ; $65f5: $67
    sub [hl]                                      ; $65f6: $96
    add [hl]                                      ; $65f7: $86
    ld [hl], a                                    ; $65f8: $77
    ld a, b                                       ; $65f9: $78
    ld a, c                                       ; $65fa: $79
    ld d, l                                       ; $65fb: $55
    sbc c                                         ; $65fc: $99
    cp c                                          ; $65fd: $b9
    inc sp                                        ; $65fe: $33
    ld l, b                                       ; $65ff: $68
    ld l, e                                       ; $6600: $6b
    ld [$11b9], a                                 ; $6601: $ea $b9 $11
    ld h, [hl]                                    ; $6604: $66
    cp a                                          ; $6605: $bf
    ret                                           ; $6606: $c9


    add h                                         ; $6607: $84
    daa                                           ; $6608: $27
    add e                                         ; $6609: $83
    adc d                                         ; $660a: $8a
    adc e                                         ; $660b: $8b
    ld e, b                                       ; $660c: $58
    xor d                                         ; $660d: $aa
    sub a                                         ; $660e: $97
    ret                                           ; $660f: $c9


    ld d, h                                       ; $6610: $54
    ld b, d                                       ; $6611: $42
    ld e, c                                       ; $6612: $59
    and a                                         ; $6613: $a7
    ld a, d                                       ; $6614: $7a
    xor b                                         ; $6615: $a8
    adc c                                         ; $6616: $89
    adc b                                         ; $6617: $88
    adc b                                         ; $6618: $88
    ld [hl], e                                    ; $6619: $73
    ld b, l                                       ; $661a: $45
    sbc b                                         ; $661b: $98
    ld a, d                                       ; $661c: $7a
    ret                                           ; $661d: $c9


    ld h, h                                       ; $661e: $64
    adc c                                         ; $661f: $89
    sbc e                                         ; $6620: $9b
    and l                                         ; $6621: $a5
    halt                                          ; $6622: $76
    adc d                                         ; $6623: $8a
    ld h, a                                       ; $6624: $67
    ld d, e                                       ; $6625: $53
    ld a, b                                       ; $6626: $78
    sub l                                         ; $6627: $95
    sbc b                                         ; $6628: $98
    ld e, d                                       ; $6629: $5a
    cp c                                          ; $662a: $b9
    sbc b                                         ; $662b: $98
    ld h, e                                       ; $662c: $63
    ld c, e                                       ; $662d: $4b
    xor b                                         ; $662e: $a8
    add a                                         ; $662f: $87
    adc b                                         ; $6630: $88
    add l                                         ; $6631: $85
    ld a, e                                       ; $6632: $7b
    ret z                                         ; $6633: $c8

    adc c                                         ; $6634: $89
    inc [hl]                                      ; $6635: $34
    ld d, a                                       ; $6636: $57
    xor c                                         ; $6637: $a9
    sbc d                                         ; $6638: $9a
    sbc b                                         ; $6639: $98
    ld l, c                                       ; $663a: $69
    add a                                         ; $663b: $87
    inc sp                                        ; $663c: $33
    adc h                                         ; $663d: $8c
    and a                                         ; $663e: $a7
    ld d, a                                       ; $663f: $57
    sbc c                                         ; $6640: $99
    ld d, l                                       ; $6641: $55
    ld a, c                                       ; $6642: $79
    xor b                                         ; $6643: $a8
    ld [hl], l                                    ; $6644: $75
    sbc c                                         ; $6645: $99
    ld d, l                                       ; $6646: $55
    adc [hl]                                      ; $6647: $8e
    ld h, h                                       ; $6648: $64
    add a                                         ; $6649: $87
    ld l, b                                       ; $664a: $68
    sbc h                                         ; $664b: $9c
    add $47                                       ; $664c: $c6 $47
    add [hl]                                      ; $664e: $86
    ld b, a                                       ; $664f: $47
    adc d                                         ; $6650: $8a
    xor e                                         ; $6651: $ab
    or [hl]                                       ; $6652: $b6
    ld [bc], a                                    ; $6653: $02
    xor c                                         ; $6654: $a9
    ld c, d                                       ; $6655: $4a
    add sp, $59                                   ; $6656: $e8 $59
    add $47                                       ; $6658: $c6 $47
    ld a, b                                       ; $665a: $78
    sbc b                                         ; $665b: $98
    add a                                         ; $665c: $87
    ld d, h                                       ; $665d: $54
    ld l, b                                       ; $665e: $68
    ld l, b                                       ; $665f: $68
    sbc d                                         ; $6660: $9a
    rst $00                                       ; $6661: $c7
    sbc e                                         ; $6662: $9b
    ld b, e                                       ; $6663: $43
    inc sp                                        ; $6664: $33
    xor e                                         ; $6665: $ab
    adc b                                         ; $6666: $88
    xor d                                         ; $6667: $aa
    ld [hl], a                                    ; $6668: $77
    add l                                         ; $6669: $85
    ld [hl], $9a                                  ; $666a: $36 $9a
    jp c, $a559                                   ; $666c: $da $59 $a5

    inc h                                         ; $666f: $24
    call Call_010_44ab                            ; $6670: $cd $ab $44
    ld d, [hl]                                    ; $6673: $56
    ld a, e                                       ; $6674: $7b
    sbc h                                         ; $6675: $9c
    cp e                                          ; $6676: $bb
    ld [hl], h                                    ; $6677: $74
    halt                                          ; $6678: $76
    dec h                                         ; $6679: $25
    sbc d                                         ; $667a: $9a
    add [hl]                                      ; $667b: $86
    sbc b                                         ; $667c: $98
    ld e, c                                       ; $667d: $59
    adc c                                         ; $667e: $89
    cp b                                          ; $667f: $b8
    ld d, [hl]                                    ; $6680: $56
    jr nc, jr_010_66ff                            ; $6681: $30 $7c

    cp h                                          ; $6683: $bc
    add a                                         ; $6684: $87
    ld d, l                                       ; $6685: $55
    halt                                          ; $6686: $76
    sbc c                                         ; $6687: $99
    adc e                                         ; $6688: $8b
    ld h, l                                       ; $6689: $65
    ld e, b                                       ; $668a: $58
    and a                                         ; $668b: $a7
    ld d, a                                       ; $668c: $57
    xor e                                         ; $668d: $ab
    xor c                                         ; $668e: $a9
    ld d, e                                       ; $668f: $53
    sbc e                                         ; $6690: $9b
    add [hl]                                      ; $6691: $86
    ld e, b                                       ; $6692: $58
    xor c                                         ; $6693: $a9
    sub l                                         ; $6694: $95
    dec h                                         ; $6695: $25
    adc b                                         ; $6696: $88
    adc e                                         ; $6697: $8b
    or [hl]                                       ; $6698: $b6
    ld e, b                                       ; $6699: $58
    ld e, b                                       ; $669a: $58
    ld [hl], a                                    ; $669b: $77
    xor l                                         ; $669c: $ad
    cp b                                          ; $669d: $b8
    add a                                         ; $669e: $87
    ld hl, $8c48                                  ; $669f: $21 $48 $8c
    db $eb                                        ; $66a2: $eb
    and a                                         ; $66a3: $a7
    ld [hl], $55                                  ; $66a4: $36 $55
    adc b                                         ; $66a6: $88
    sbc d                                         ; $66a7: $9a
    sbc c                                         ; $66a8: $99
    adc c                                         ; $66a9: $89
    add d                                         ; $66aa: $82
    dec h                                         ; $66ab: $25
    adc d                                         ; $66ac: $8a
    cp [hl]                                       ; $66ad: $be
    xor b                                         ; $66ae: $a8
    ld b, b                                       ; $66af: $40
    dec d                                         ; $66b0: $15
    cp [hl]                                       ; $66b1: $be
    jp c, $3341                                   ; $66b2: $da $41 $33

    ld b, a                                       ; $66b5: $47

Jump_010_66b6:
    cp a                                          ; $66b6: $bf
    reti                                          ; $66b7: $d9


    add h                                         ; $66b8: $84
    ld [hl-], a                                   ; $66b9: $32
    ld e, b                                       ; $66ba: $58
    sbc c                                         ; $66bb: $99
    jp z, Jump_010_5675                           ; $66bc: $ca $75 $56

    add a                                         ; $66bf: $87
    adc d                                         ; $66c0: $8a
    cp d                                          ; $66c1: $ba
    ld h, [hl]                                    ; $66c2: $66
    ld h, l                                       ; $66c3: $65
    ld l, d                                       ; $66c4: $6a
    adc d                                         ; $66c5: $8a
    and l                                         ; $66c6: $a5
    ld [hl], a                                    ; $66c7: $77
    ld a, b                                       ; $66c8: $78
    ld [hl], l                                    ; $66c9: $75
    ld h, l                                       ; $66ca: $65

Call_010_66cb:
    sub a                                         ; $66cb: $97
    ld c, b                                       ; $66cc: $48
    ld a, e                                       ; $66cd: $7b
    cp b                                          ; $66ce: $b8
    sbc c                                         ; $66cf: $99
    add l                                         ; $66d0: $85
    ld d, l                                       ; $66d1: $55
    adc d                                         ; $66d2: $8a
    halt                                          ; $66d3: $76
    adc c                                         ; $66d4: $89
    cp b                                          ; $66d5: $b8
    ld h, l                                       ; $66d6: $65
    ld h, [hl]                                    ; $66d7: $66
    ld [hl], a                                    ; $66d8: $77
    ret                                           ; $66d9: $c9


    halt                                          ; $66da: $76
    ld b, a                                       ; $66db: $47
    sbc b                                         ; $66dc: $98
    ld [hl], l                                    ; $66dd: $75
    cp e                                          ; $66de: $bb
    ld [hl], h                                    ; $66df: $74
    scf                                           ; $66e0: $37
    sbc c                                         ; $66e1: $99
    xor d                                         ; $66e2: $aa
    sub [hl]                                      ; $66e3: $96
    ld c, b                                       ; $66e4: $48
    ld [hl], e                                    ; $66e5: $73
    ld e, c                                       ; $66e6: $59
    call c, $6985                                 ; $66e7: $dc $85 $69
    ld h, h                                       ; $66ea: $64
    adc c                                         ; $66eb: $89
    sbc d                                         ; $66ec: $9a
    and a                                         ; $66ed: $a7
    ld [hl], a                                    ; $66ee: $77
    ld b, d                                       ; $66ef: $42
    adc c                                         ; $66f0: $89
    or a                                          ; $66f1: $b7
    adc d                                         ; $66f2: $8a
    add h                                         ; $66f3: $84
    ld b, a                                       ; $66f4: $47
    inc [hl]                                      ; $66f5: $34
    adc e                                         ; $66f6: $8b
    sbc b                                         ; $66f7: $98
    sbc d                                         ; $66f8: $9a
    ld [hl], e                                    ; $66f9: $73
    sbc c                                         ; $66fa: $99
    ld h, a                                       ; $66fb: $67
    adc h                                         ; $66fc: $8c
    or [hl]                                       ; $66fd: $b6
    halt                                          ; $66fe: $76

jr_010_66ff:
    ld [hl], a                                    ; $66ff: $77
    ld l, b                                       ; $6700: $68
    ld a, c                                       ; $6701: $79
    xor b                                         ; $6702: $a8
    add l                                         ; $6703: $85
    ld a, c                                       ; $6704: $79
    ld [hl], a                                    ; $6705: $77
    ld l, c                                       ; $6706: $69
    add a                                         ; $6707: $87
    sbc e                                         ; $6708: $9b
    add h                                         ; $6709: $84
    ld hl, $56be                                  ; $670a: $21 $be $56
    xor b                                         ; $670d: $a8
    ld c, c                                       ; $670e: $49
    sub l                                         ; $670f: $95
    adc b                                         ; $6710: $88
    jp z, Jump_010_6767                           ; $6711: $ca $67 $67

    ld a, d                                       ; $6714: $7a
    and a                                         ; $6715: $a7
    sub a                                         ; $6716: $97
    ld h, a                                       ; $6717: $67
    ld l, b                                       ; $6718: $68
    sbc b                                         ; $6719: $98
    sbc e                                         ; $671a: $9b
    and h                                         ; $671b: $a4
    ld c, c                                       ; $671c: $49
    ld d, [hl]                                    ; $671d: $56
    add l                                         ; $671e: $85
    adc e                                         ; $671f: $8b
    add $25                                       ; $6720: $c6 $25
    ld b, [hl]                                    ; $6722: $46
    xor b                                         ; $6723: $a8
    cp h                                          ; $6724: $bc
    sub a                                         ; $6725: $97
    dec [hl]                                      ; $6726: $35

Jump_010_6727:
    adc b                                         ; $6727: $88
    ld h, a                                       ; $6728: $67
    and a                                         ; $6729: $a7
    ld a, d                                       ; $672a: $7a
    sub [hl]                                      ; $672b: $96
    add l                                         ; $672c: $85
    ld d, a                                       ; $672d: $57
    sbc e                                         ; $672e: $9b
    cp d                                          ; $672f: $ba
    add d                                         ; $6730: $82
    ld d, [hl]                                    ; $6731: $56
    sbc e                                         ; $6732: $9b
    adc b                                         ; $6733: $88
    ld a, c                                       ; $6734: $79
    add l                                         ; $6735: $85
    ld h, a                                       ; $6736: $67
    ld a, b                                       ; $6737: $78
    adc b                                         ; $6738: $88
    and a                                         ; $6739: $a7
    ld l, c                                       ; $673a: $69
    sub a                                         ; $673b: $97
    ld b, e                                       ; $673c: $43
    sbc h                                         ; $673d: $9c
    xor d                                         ; $673e: $aa
    adc b                                         ; $673f: $88
    ld h, h                                       ; $6740: $64
    adc d                                         ; $6741: $8a
    ld c, c                                       ; $6742: $49
    bit 4, d                                      ; $6743: $cb $62
    inc hl                                        ; $6745: $23
    adc h                                         ; $6746: $8c
    cp c                                          ; $6747: $b9
    adc c                                         ; $6748: $89
    ld [hl], l                                    ; $6749: $75
    ld d, d                                       ; $674a: $52
    ld a, c                                       ; $674b: $79
    adc c                                         ; $674c: $89
    call z, Call_010_5675                         ; $674d: $cc $75 $56
    xor e                                         ; $6750: $ab
    ld h, [hl]                                    ; $6751: $66
    ld h, a                                       ; $6752: $67
    ld a, d                                       ; $6753: $7a
    jp z, Jump_010_6875                           ; $6754: $ca $75 $68

    sub a                                         ; $6757: $97
    ld b, e                                       ; $6758: $43
    ld e, b                                       ; $6759: $58
    adc e                                         ; $675a: $8b
    adc b                                         ; $675b: $88
    sbc b                                         ; $675c: $98
    sub h                                         ; $675d: $94
    ld l, c                                       ; $675e: $69
    ld a, b                                       ; $675f: $78
    ld d, l                                       ; $6760: $55
    cp e                                          ; $6761: $bb
    ld d, d                                       ; $6762: $52

Jump_010_6763:
    scf                                           ; $6763: $37
    xor b                                         ; $6764: $a8
    ld l, b                                       ; $6765: $68

Jump_010_6766:
    cp l                                          ; $6766: $bd

Jump_010_6767:
    or h                                          ; $6767: $b4
    scf                                           ; $6768: $37
    adc c                                         ; $6769: $89
    adc b                                         ; $676a: $88
    sbc c                                         ; $676b: $99
    ld [hl], h                                    ; $676c: $74
    ld a, d                                       ; $676d: $7a
    ld c, b                                       ; $676e: $48
    xor e                                         ; $676f: $ab
    sub l                                         ; $6770: $95
    ld b, a                                       ; $6771: $47
    adc d                                         ; $6772: $8a
    adc b                                         ; $6773: $88
    adc c                                         ; $6774: $89
    or a                                          ; $6775: $b7
    inc hl                                        ; $6776: $23
    ld l, c                                       ; $6777: $69
    and a                                         ; $6778: $a7
    ld a, d                                       ; $6779: $7a
    cp c                                          ; $677a: $b9
    ld a, c                                       ; $677b: $79
    ld h, l                                       ; $677c: $65
    ld b, e                                       ; $677d: $43
    adc e                                         ; $677e: $8b
    db $ec                                        ; $677f: $ec
    add e                                         ; $6780: $83
    ld [hl-], a                                   ; $6781: $32
    ld e, c                                       ; $6782: $59
    sbc d                                         ; $6783: $9a
    adc b                                         ; $6784: $88
    add l                                         ; $6785: $85

Call_010_6786:
    ld h, a                                       ; $6786: $67

Call_010_6787:
    ld h, d                                       ; $6787: $62
    ld e, e                                       ; $6788: $5b
    db $ec                                        ; $6789: $ec
    xor d                                         ; $678a: $aa
    ld [hl], d                                    ; $678b: $72
    ld [hl-], a                                   ; $678c: $32
    ld b, a                                       ; $678d: $47
    cp h                                          ; $678e: $bc
    call c, $8c41                                 ; $678f: $dc $41 $8c
    sub e                                         ; $6792: $93
    ld l, l                                       ; $6793: $6d
    sbc b                                         ; $6794: $98
    sbc c                                         ; $6795: $99
    ld h, [hl]                                    ; $6796: $66
    ld [hl], l                                    ; $6797: $75
    ld h, $77                                     ; $6798: $26 $77
    call z, Call_000_3298                         ; $679a: $cc $98 $32
    ld a, c                                       ; $679d: $79
    sbc b                                         ; $679e: $98
    xor b                                         ; $679f: $a8
    cp b                                          ; $67a0: $b8
    scf                                           ; $67a1: $37
    ld d, [hl]                                    ; $67a2: $56
    sub e                                         ; $67a3: $93
    ld c, e                                       ; $67a4: $4b
    res 7, c                                      ; $67a5: $cb $b9

Call_010_67a7:
    ld [hl], h                                    ; $67a7: $74
    ld b, e                                       ; $67a8: $43
    ld c, b                                       ; $67a9: $48
    cp e                                          ; $67aa: $bb
    sub h                                         ; $67ab: $94
    ld l, d                                       ; $67ac: $6a
    xor d                                         ; $67ad: $aa
    ld b, c                                       ; $67ae: $41
    ld e, e                                       ; $67af: $5b
    ei                                            ; $67b0: $fb
    add a                                         ; $67b1: $87
    add [hl]                                      ; $67b2: $86
    ld b, [hl]                                    ; $67b3: $46
    ld a, b                                       ; $67b4: $78

Call_010_67b5:
    and a                                         ; $67b5: $a7
    sbc c                                         ; $67b6: $99
    ld [hl], a                                    ; $67b7: $77
    ld d, [hl]                                    ; $67b8: $56
    ld [hl], a                                    ; $67b9: $77
    jp z, Jump_010_5b76                           ; $67ba: $ca $76 $5b

    add l                                         ; $67bd: $85
    halt                                          ; $67be: $76
    ld h, [hl]                                    ; $67bf: $66
    ld l, c                                       ; $67c0: $69
    ld a, b                                       ; $67c1: $78
    and h                                         ; $67c2: $a4
    ld d, a                                       ; $67c3: $57
    sbc b                                         ; $67c4: $98
    ld h, l                                       ; $67c5: $65
    ld e, d                                       ; $67c6: $5a
    cp d                                          ; $67c7: $ba
    and [hl]                                      ; $67c8: $a6
    inc [hl]                                      ; $67c9: $34
    ld l, d                                       ; $67ca: $6a
    call z, Call_010_55b5                         ; $67cb: $cc $b5 $55
    ld d, a                                       ; $67ce: $57
    add a                                         ; $67cf: $87
    adc h                                         ; $67d0: $8c
    sbc c                                         ; $67d1: $99
    or a                                          ; $67d2: $b7
    dec h                                         ; $67d3: $25
    ld a, e                                       ; $67d4: $7b
    sub a                                         ; $67d5: $97
    sub l                                         ; $67d6: $95
    ld d, l                                       ; $67d7: $55
    ld l, b                                       ; $67d8: $68
    ld a, d                                       ; $67d9: $7a

jr_010_67da:
    cp c                                          ; $67da: $b9
    or a                                          ; $67db: $b7
    ld d, [hl]                                    ; $67dc: $56
    ld d, [hl]                                    ; $67dd: $56
    ld a, d                                       ; $67de: $7a
    jp c, Jump_010_7853                           ; $67df: $da $53 $78

    ld a, b                                       ; $67e2: $78
    ld d, l                                       ; $67e3: $55
    adc b                                         ; $67e4: $88
    adc b                                         ; $67e5: $88
    add a                                         ; $67e6: $87
    ld h, a                                       ; $67e7: $67
    ld [hl], l                                    ; $67e8: $75
    sub [hl]                                      ; $67e9: $96
    ld l, c                                       ; $67ea: $69
    sbc e                                         ; $67eb: $9b
    ld [hl], e                                    ; $67ec: $73
    ld a, b                                       ; $67ed: $78
    sbc c                                         ; $67ee: $99
    ld l, d                                       ; $67ef: $6a
    adc d                                         ; $67f0: $8a
    and l                                         ; $67f1: $a5
    ld b, a                                       ; $67f2: $47
    xor e                                         ; $67f3: $ab
    ld h, a                                       ; $67f4: $67
    ld a, b                                       ; $67f5: $78
    add l                                         ; $67f6: $85
    ld c, b                                       ; $67f7: $48
    xor c                                         ; $67f8: $a9
    and a                                         ; $67f9: $a7
    ld e, b                                       ; $67fa: $58
    cp c                                          ; $67fb: $b9
    halt                                          ; $67fc: $76
    ld c, b                                       ; $67fd: $48
    ld b, [hl]                                    ; $67fe: $46
    ld h, l                                       ; $67ff: $65
    res 3, e                                      ; $6800: $cb $9b
    ld a, b                                       ; $6802: $78
    ld [hl], h                                    ; $6803: $74
    ld [hl], l                                    ; $6804: $75
    ld b, [hl]                                    ; $6805: $46
    xor a                                         ; $6806: $af
    call nc, Call_010_4348                        ; $6807: $d4 $48 $43
    ld a, d                                       ; $680a: $7a
    ld a, d                                       ; $680b: $7a
    jp z, Jump_010_6364                           ; $680c: $ca $64 $63

    ld l, c                                       ; $680f: $69
    sbc d                                         ; $6810: $9a
    ld a, b                                       ; $6811: $78
    cp c                                          ; $6812: $b9
    add a                                         ; $6813: $87
    ld l, b                                       ; $6814: $68
    adc c                                         ; $6815: $89
    add [hl]                                      ; $6816: $86
    halt                                          ; $6817: $76
    sbc c                                         ; $6818: $99
    add a                                         ; $6819: $87
    add a                                         ; $681a: $87
    adc e                                         ; $681b: $8b
    xor b                                         ; $681c: $a8
    ld h, [hl]                                    ; $681d: $66
    ld h, a                                       ; $681e: $67
    sbc e                                         ; $681f: $9b
    and [hl]                                      ; $6820: $a6
    ld h, l                                       ; $6821: $65
    jr c, jr_010_67da                             ; $6822: $38 $b6

    ld b, e                                       ; $6824: $43
    xor [hl]                                      ; $6825: $ae
    ld [hl], a                                    ; $6826: $77
    add a                                         ; $6827: $87
    ld e, c                                       ; $6828: $59
    and h                                         ; $6829: $a4
    ld a, b                                       ; $682a: $78
    ld l, b                                       ; $682b: $68
    xor d                                         ; $682c: $aa
    add a                                         ; $682d: $87
    ld [hl], $ba                                  ; $682e: $36 $ba
    ld h, l                                       ; $6830: $65

jr_010_6831:
    sub a                                         ; $6831: $97
    ld b, h                                       ; $6832: $44
    sbc l                                         ; $6833: $9d
    or e                                          ; $6834: $b3
    ld a, e                                       ; $6835: $7b
    add a                                         ; $6836: $87
    sbc b                                         ; $6837: $98
    halt                                          ; $6838: $76
    add a                                         ; $6839: $87
    halt                                          ; $683a: $76
    ld b, a                                       ; $683b: $47
    and l                                         ; $683c: $a5
    ld a, h                                       ; $683d: $7c
    cp d                                          ; $683e: $ba
    adc d                                         ; $683f: $8a
    add b                                         ; $6840: $80
    ld c, c                                       ; $6841: $49
    add [hl]                                      ; $6842: $86
    ld l, l                                       ; $6843: $6d
    or h                                          ; $6844: $b4
    ld b, a                                       ; $6845: $47
    ld [hl], $9a                                  ; $6846: $36 $9a
    db $dd                                        ; $6848: $dd
    ld [hl], l                                    ; $6849: $75
    ld e, b                                       ; $684a: $58
    and h                                         ; $684b: $a4
    ld b, [hl]                                    ; $684c: $46
    adc d                                         ; $684d: $8a
    adc d                                         ; $684e: $8a
    or [hl]                                       ; $684f: $b6
    ld b, a                                       ; $6850: $47
    halt                                          ; $6851: $76
    cp d                                          ; $6852: $ba
    halt                                          ; $6853: $76
    adc b                                         ; $6854: $88
    halt                                          ; $6855: $76
    ld d, [hl]                                    ; $6856: $56
    xor d                                         ; $6857: $aa
    add a                                         ; $6858: $87
    add [hl]                                      ; $6859: $86
    ld [hl], a                                    ; $685a: $77
    ld h, l                                       ; $685b: $65
    adc l                                         ; $685c: $8d
    add sp, $43                                   ; $685d: $e8 $43
    ld b, l                                       ; $685f: $45
    ld e, c                                       ; $6860: $59
    call z, $8ab5                                 ; $6861: $cc $b5 $8a
    adc c                                         ; $6864: $89
    add hl, bc                                    ; $6865: $09
    ld [hl], l                                    ; $6866: $75
    push bc                                       ; $6867: $c5
    ld l, e                                       ; $6868: $6b
    halt                                          ; $6869: $76
    sbc c                                         ; $686a: $99
    add a                                         ; $686b: $87
    add [hl]                                      ; $686c: $86
    adc d                                         ; $686d: $8a
    ld [hl], l                                    ; $686e: $75
    ld l, b                                       ; $686f: $68
    xor d                                         ; $6870: $aa
    ld [hl], l                                    ; $6871: $75
    ld b, [hl]                                    ; $6872: $46
    xor c                                         ; $6873: $a9
    ld a, h                                       ; $6874: $7c

Jump_010_6875:
    jp $9a48                                      ; $6875: $c3 $48 $9a


    adc b                                         ; $6878: $88
    add h                                         ; $6879: $84
    ld h, $89                                     ; $687a: $26 $89
    sbc d                                         ; $687c: $9a
    ret                                           ; $687d: $c9


    sub [hl]                                      ; $687e: $96
    ld l, d                                       ; $687f: $6a
    and e                                         ; $6880: $a3
    add hl, de                                    ; $6881: $19
    cp e                                          ; $6882: $bb
    add e                                         ; $6883: $83
    jr c, jr_010_6831                             ; $6884: $38 $ab

    xor c                                         ; $6886: $a9
    add a                                         ; $6887: $87
    ld e, b                                       ; $6888: $58
    add d                                         ; $6889: $82
    ld h, a                                       ; $688a: $67
    inc h                                         ; $688b: $24
    sbc e                                         ; $688c: $9b
    res 4, a                                      ; $688d: $cb $a7
    add [hl]                                      ; $688f: $86
    dec h                                         ; $6890: $25
    ld h, h                                       ; $6891: $64
    xor d                                         ; $6892: $aa
    rst $10                                       ; $6893: $d7
    ld a, b                                       ; $6894: $78
    ld d, e                                       ; $6895: $53
    ld [hl], l                                    ; $6896: $75
    ld h, a                                       ; $6897: $67
    xor l                                         ; $6898: $ad
    rst $10                                       ; $6899: $d7
    ld b, h                                       ; $689a: $44
    inc [hl]                                      ; $689b: $34
    ld a, c                                       ; $689c: $79
    sbc d                                         ; $689d: $9a
    sbc b                                         ; $689e: $98
    ld l, c                                       ; $689f: $69
    ld h, l                                       ; $68a0: $65
    and l                                         ; $68a1: $a5
    ld a, h                                       ; $68a2: $7c
    and a                                         ; $68a3: $a7
    ld d, h                                       ; $68a4: $54
    ld h, h                                       ; $68a5: $64
    ld a, c                                       ; $68a6: $79
    ld a, d                                       ; $68a7: $7a
    jp c, Jump_010_66b6                           ; $68a8: $da $b6 $66

    inc sp                                        ; $68ab: $33
    ld l, h                                       ; $68ac: $6c
    ret                                           ; $68ad: $c9


    add h                                         ; $68ae: $84
    ld e, c                                       ; $68af: $59
    adc c                                         ; $68b0: $89
    cp c                                          ; $68b1: $b9
    xor h                                         ; $68b2: $ac
    and l                                         ; $68b3: $a5
    ld b, c                                       ; $68b4: $41
    ld a, [hl-]                                   ; $68b5: $3a
    xor c                                         ; $68b6: $a9
    ret c                                         ; $68b7: $d8

    and a                                         ; $68b8: $a7
    ld b, [hl]                                    ; $68b9: $46
    ld h, l                                       ; $68ba: $65
    sbc d                                         ; $68bb: $9a
    sub [hl]                                      ; $68bc: $96
    ld d, a                                       ; $68bd: $57
    ld b, [hl]                                    ; $68be: $46
    adc b                                         ; $68bf: $88
    cp h                                          ; $68c0: $bc
    or l                                          ; $68c1: $b5
    ld d, l                                       ; $68c2: $55
    ld h, [hl]                                    ; $68c3: $66
    ld a, e                                       ; $68c4: $7b
    cp b                                          ; $68c5: $b8
    add l                                         ; $68c6: $85
    dec [hl]                                      ; $68c7: $35
    ld l, c                                       ; $68c8: $69
    sbc d                                         ; $68c9: $9a
    add [hl]                                      ; $68ca: $86
    cp d                                          ; $68cb: $ba
    halt                                          ; $68cc: $76
    ld d, a                                       ; $68cd: $57
    and e                                         ; $68ce: $a3
    ld b, a                                       ; $68cf: $47
    ret                                           ; $68d0: $c9


    ld l, c                                       ; $68d1: $69
    ld [hl], $65                                  ; $68d2: $36 $65
    ld a, e                                       ; $68d4: $7b
    and l                                         ; $68d5: $a5
    sbc b                                         ; $68d6: $98
    ld a, b                                       ; $68d7: $78
    ld d, a                                       ; $68d8: $57
    add l                                         ; $68d9: $85
    ld l, d                                       ; $68da: $6a
    xor d                                         ; $68db: $aa
    ld h, [hl]                                    ; $68dc: $66
    ld c, d                                       ; $68dd: $4a
    reti                                          ; $68de: $d9


    sub h                                         ; $68df: $94
    ld e, d                                       ; $68e0: $5a
    ld [hl], h                                    ; $68e1: $74
    ld a, b                                       ; $68e2: $78
    xor l                                         ; $68e3: $ad
    add sp, $33                                   ; $68e4: $e8 $33
    ld d, a                                       ; $68e6: $57
    ld h, [hl]                                    ; $68e7: $66
    or [hl]                                       ; $68e8: $b6
    adc h                                         ; $68e9: $8c
    add [hl]                                      ; $68ea: $86
    ld e, c                                       ; $68eb: $59
    halt                                          ; $68ec: $76
    ld a, b                                       ; $68ed: $78
    cp h                                          ; $68ee: $bc
    ld d, [hl]                                    ; $68ef: $56
    ld d, h                                       ; $68f0: $54
    sbc c                                         ; $68f1: $99
    ld h, h                                       ; $68f2: $64
    sbc c                                         ; $68f3: $99
    ld a, d                                       ; $68f4: $7a
    add a                                         ; $68f5: $87
    sub [hl]                                      ; $68f6: $96
    ld b, [hl]                                    ; $68f7: $46
    sbc b                                         ; $68f8: $98
    cp d                                          ; $68f9: $ba
    dec h                                         ; $68fa: $25
    ld d, l                                       ; $68fb: $55
    xor e                                         ; $68fc: $ab
    cp e                                          ; $68fd: $bb
    ld a, b                                       ; $68fe: $78
    ld [hl], a                                    ; $68ff: $77
    add l                                         ; $6900: $85
    ld d, a                                       ; $6901: $57
    add a                                         ; $6902: $87
    adc d                                         ; $6903: $8a
    sbc c                                         ; $6904: $99
    add h                                         ; $6905: $84
    ld l, c                                       ; $6906: $69
    ld [hl], l                                    ; $6907: $75
    ld l, c                                       ; $6908: $69
    ld a, c                                       ; $6909: $79
    and l                                         ; $690a: $a5
    halt                                          ; $690b: $76
    ld c, b                                       ; $690c: $48
    ld a, d                                       ; $690d: $7a
    xor d                                         ; $690e: $aa
    ret                                           ; $690f: $c9


    add l                                         ; $6910: $85
    inc d                                         ; $6911: $14
    dec [hl]                                      ; $6912: $35
    rst $18                                       ; $6913: $df
    xor e                                         ; $6914: $ab
    halt                                          ; $6915: $76
    halt                                          ; $6916: $76
    ld h, [hl]                                    ; $6917: $66
    ld h, a                                       ; $6918: $67
    sbc h                                         ; $6919: $9c
    xor b                                         ; $691a: $a8
    halt                                          ; $691b: $76
    ld b, h                                       ; $691c: $44
    adc c                                         ; $691d: $89
    cp c                                          ; $691e: $b9
    sbc b                                         ; $691f: $98
    adc h                                         ; $6920: $8c
    ld h, e                                       ; $6921: $63
    ld b, h                                       ; $6922: $44
    ld l, b                                       ; $6923: $68
    and a                                         ; $6924: $a7
    sbc h                                         ; $6925: $9c
    add e                                         ; $6926: $83
    add a                                         ; $6927: $87
    ld d, [hl]                                    ; $6928: $56
    adc d                                         ; $6929: $8a
    sub l                                         ; $692a: $95
    ld [hl], a                                    ; $692b: $77
    add [hl]                                      ; $692c: $86
    ld [hl], a                                    ; $692d: $77
    ld a, c                                       ; $692e: $79
    xor c                                         ; $692f: $a9
    ld h, h                                       ; $6930: $64
    ld [hl], a                                    ; $6931: $77
    inc hl                                        ; $6932: $23
    xor [hl]                                      ; $6933: $ae
    xor d                                         ; $6934: $aa
    sub l                                         ; $6935: $95
    ld h, l                                       ; $6936: $65
    ld e, b                                       ; $6937: $58
    sbc c                                         ; $6938: $99
    cp d                                          ; $6939: $ba
    halt                                          ; $693a: $76
    ld d, l                                       ; $693b: $55
    adc c                                         ; $693c: $89
    ld a, d                                       ; $693d: $7a
    add a                                         ; $693e: $87
    adc b                                         ; $693f: $88
    add a                                         ; $6940: $87
    halt                                          ; $6941: $76
    ld e, b                                       ; $6942: $58
    add [hl]                                      ; $6943: $86
    ld a, b                                       ; $6944: $78
    xor d                                         ; $6945: $aa
    ld [hl], a                                    ; $6946: $77
    sbc b                                         ; $6947: $98
    ld d, a                                       ; $6948: $57
    sbc d                                         ; $6949: $9a
    sub [hl]                                      ; $694a: $96
    ld b, a                                       ; $694b: $47
    ld e, d                                       ; $694c: $5a
    sbc b                                         ; $694d: $98
    ld h, l                                       ; $694e: $65
    adc c                                         ; $694f: $89
    adc e                                         ; $6950: $8b
    sbc b                                         ; $6951: $98
    sub [hl]                                      ; $6952: $96
    ld h, e                                       ; $6953: $63

Jump_010_6954:
    add hl, hl                                    ; $6954: $29
    db $db                                        ; $6955: $db
    ld [hl], a                                    ; $6956: $77
    halt                                          ; $6957: $76
    xor c                                         ; $6958: $a9
    ld a, c                                       ; $6959: $79
    ld [hl], a                                    ; $695a: $77
    adc b                                         ; $695b: $88
    sub a                                         ; $695c: $97
    ld b, a                                       ; $695d: $47
    halt                                          ; $695e: $76
    ld a, d                                       ; $695f: $7a
    sbc b                                         ; $6960: $98
    add e                                         ; $6961: $83
    add hl, sp                                    ; $6962: $39
    ld a, c                                       ; $6963: $79
    xor b                                         ; $6964: $a8
    ld [hl], l                                    ; $6965: $75
    ld h, l                                       ; $6966: $65
    ld [hl], a                                    ; $6967: $77
    add a                                         ; $6968: $87
    ld a, d                                       ; $6969: $7a
    jp z, Jump_010_53ca                           ; $696a: $ca $ca $53

    scf                                           ; $696d: $37
    ld [hl], a                                    ; $696e: $77
    xor h                                         ; $696f: $ac
    reti                                          ; $6970: $d9


    ld b, e                                       ; $6971: $43
    sbc b                                         ; $6972: $98
    ld [de], a                                    ; $6973: $12
    cp d                                          ; $6974: $ba
    ld a, d                                       ; $6975: $7a
    adc b                                         ; $6976: $88
    ld [hl], l                                    ; $6977: $75
    ld h, e                                       ; $6978: $63
    sbc d                                         ; $6979: $9a
    cp e                                          ; $697a: $bb
    ld [hl], l                                    ; $697b: $75
    ld d, l                                       ; $697c: $55
    ld h, [hl]                                    ; $697d: $66
    add [hl]                                      ; $697e: $86
    cp l                                          ; $697f: $bd
    ld d, [hl]                                    ; $6980: $56
    sbc d                                         ; $6981: $9a
    sub l                                         ; $6982: $95
    ld c, b                                       ; $6983: $48
    call z, Call_010_4285                         ; $6984: $cc $85 $42
    ld a, d                                       ; $6987: $7a
    xor e                                         ; $6988: $ab
    jp z, Jump_000_3354                           ; $6989: $ca $54 $33

    ld h, a                                       ; $698c: $67
    sbc e                                         ; $698d: $9b
    sbc c                                         ; $698e: $99
    ld [hl], a                                    ; $698f: $77
    add [hl]                                      ; $6990: $86
    sub h                                         ; $6991: $94
    daa                                           ; $6992: $27
    sbc e                                         ; $6993: $9b
    xor c                                         ; $6994: $a9
    and a                                         ; $6995: $a7
    ld a, c                                       ; $6996: $79
    ld h, l                                       ; $6997: $65
    ld a, c                                       ; $6998: $79
    add [hl]                                      ; $6999: $86
    adc c                                         ; $699a: $89
    sbc c                                         ; $699b: $99
    ld [hl], l                                    ; $699c: $75
    ld b, a                                       ; $699d: $47
    adc c                                         ; $699e: $89
    ld [hl], a                                    ; $699f: $77
    or [hl]                                       ; $69a0: $b6
    ld l, b                                       ; $69a1: $68
    halt                                          ; $69a2: $76
    ld e, b                                       ; $69a3: $58
    ld [$857a], a                                 ; $69a4: $ea $7a $85
    ld [hl], e                                    ; $69a7: $73
    ld e, e                                       ; $69a8: $5b
    db $ec                                        ; $69a9: $ec
    ld [hl], a                                    ; $69aa: $77
    ld h, [hl]                                    ; $69ab: $66
    sub [hl]                                      ; $69ac: $96
    ld l, c                                       ; $69ad: $69
    adc b                                         ; $69ae: $88
    ld [hl], a                                    ; $69af: $77
    add l                                         ; $69b0: $85
    ld l, b                                       ; $69b1: $68
    and [hl]                                      ; $69b2: $a6
    ld e, c                                       ; $69b3: $59
    and a                                         ; $69b4: $a7
    ld c, b                                       ; $69b5: $48
    sbc c                                         ; $69b6: $99
    inc [hl]                                      ; $69b7: $34
    halt                                          ; $69b8: $76
    ld a, h                                       ; $69b9: $7c
    ret z                                         ; $69ba: $c8

    sub a                                         ; $69bb: $97
    ld h, h                                       ; $69bc: $64
    inc bc                                        ; $69bd: $03
    adc e                                         ; $69be: $8b
    db $dd                                        ; $69bf: $dd
    db $fc                                        ; $69c0: $fc
    ld d, b                                       ; $69c1: $50
    ld c, b                                       ; $69c2: $48
    ld [hl], a                                    ; $69c3: $77
    xor e                                         ; $69c4: $ab
    sub [hl]                                      ; $69c5: $96
    ld l, b                                       ; $69c6: $68
    xor c                                         ; $69c7: $a9
    ld b, e                                       ; $69c8: $43
    ld d, l                                       ; $69c9: $55
    adc d                                         ; $69ca: $8a
    sbc b                                         ; $69cb: $98
    adc c                                         ; $69cc: $89
    ld [hl], l                                    ; $69cd: $75
    ld d, l                                       ; $69ce: $55
    adc e                                         ; $69cf: $8b
    adc b                                         ; $69d0: $88
    add [hl]                                      ; $69d1: $86
    ld h, l                                       ; $69d2: $65
    ld b, d                                       ; $69d3: $42
    ld a, h                                       ; $69d4: $7c
    cp b                                          ; $69d5: $b8
    sbc e                                         ; $69d6: $9b
    add l                                         ; $69d7: $85
    ld h, a                                       ; $69d8: $67
    ld l, d                                       ; $69d9: $6a
    ret z                                         ; $69da: $c8

    ld h, l                                       ; $69db: $65
    ld a, b                                       ; $69dc: $78
    xor c                                         ; $69dd: $a9
    ld l, b                                       ; $69de: $68
    ld l, d                                       ; $69df: $6a
    sub [hl]                                      ; $69e0: $96
    adc b                                         ; $69e1: $88
    jr c, jr_010_6a5f                             ; $69e2: $38 $7b

    xor d                                         ; $69e4: $aa
    ld [hl], e                                    ; $69e5: $73
    dec b                                         ; $69e6: $05
    xor h                                         ; $69e7: $ac
    sub h                                         ; $69e8: $94
    ld a, d                                       ; $69e9: $7a
    sub l                                         ; $69ea: $95

jr_010_69eb:
    ld l, d                                       ; $69eb: $6a
    ret                                           ; $69ec: $c9


    ld d, e                                       ; $69ed: $53
    adc c                                         ; $69ee: $89
    ld h, $af                                     ; $69ef: $26 $af
    sub [hl]                                      ; $69f1: $96
    inc sp                                        ; $69f2: $33
    ld a, e                                       ; $69f3: $7b
    rst $00                                       ; $69f4: $c7
    adc d                                         ; $69f5: $8a
    ld a, b                                       ; $69f6: $78
    adc b                                         ; $69f7: $88
    ld d, h                                       ; $69f8: $54
    ld b, [hl]                                    ; $69f9: $46
    ld a, [hl]                                    ; $69fa: $7e
    and c                                         ; $69fb: $a1
    ld l, l                                       ; $69fc: $6d
    add $49                                       ; $69fd: $c6 $49
    db $db                                        ; $69ff: $db
    jr nc, jr_010_6a6c                            ; $6a00: $30 $6a

    ld [hl], l                                    ; $6a02: $75
    sbc d                                         ; $6a03: $9a
    add a                                         ; $6a04: $87
    sbc d                                         ; $6a05: $9a
    ld [hl], l                                    ; $6a06: $75
    add a                                         ; $6a07: $87
    ld [de], a                                    ; $6a08: $12
    ld l, e                                       ; $6a09: $6b
    res 6, a                                      ; $6a0a: $cb $b7
    adc c                                         ; $6a0c: $89
    ld b, c                                       ; $6a0d: $41
    jr jr_010_69eb                                ; $6a0e: $18 $db

    add a                                         ; $6a10: $87
    adc b                                         ; $6a11: $88
    ld h, [hl]                                    ; $6a12: $66
    inc h                                         ; $6a13: $24
    cp h                                          ; $6a14: $bc
    call Call_010_54b8                            ; $6a15: $cd $b8 $54
    ld [hl], $67                                  ; $6a18: $36 $67
    db $db                                        ; $6a1a: $db
    halt                                          ; $6a1b: $76
    add a                                         ; $6a1c: $87
    halt                                          ; $6a1d: $76
    ld [hl], h                                    ; $6a1e: $74
    adc c                                         ; $6a1f: $89
    sbc b                                         ; $6a20: $98
    ld l, b                                       ; $6a21: $68
    ld h, l                                       ; $6a22: $65
    and a                                         ; $6a23: $a7
    ld [hl], a                                    ; $6a24: $77
    ld l, b                                       ; $6a25: $68
    ld [hl], a                                    ; $6a26: $77
    ld h, [hl]                                    ; $6a27: $66
    sbc b                                         ; $6a28: $98
    ld h, a                                       ; $6a29: $67
    sbc e                                         ; $6a2a: $9b
    sub l                                         ; $6a2b: $95
    ld l, c                                       ; $6a2c: $69
    sub [hl]                                      ; $6a2d: $96
    adc c                                         ; $6a2e: $89
    sbc c                                         ; $6a2f: $99
    sbc b                                         ; $6a30: $98
    ld h, l                                       ; $6a31: $65
    xor b                                         ; $6a32: $a8
    ld a, d                                       ; $6a33: $7a
    sbc b                                         ; $6a34: $98
    scf                                           ; $6a35: $37
    reti                                          ; $6a36: $d9


    inc hl                                        ; $6a37: $23
    xor l                                         ; $6a38: $ad
    ld b, c                                       ; $6a39: $41
    cp l                                          ; $6a3a: $bd
    sub l                                         ; $6a3b: $95
    inc [hl]                                      ; $6a3c: $34
    ld c, b                                       ; $6a3d: $48
    xor c                                         ; $6a3e: $a9
    sbc d                                         ; $6a3f: $9a
    sub [hl]                                      ; $6a40: $96
    ld l, c                                       ; $6a41: $69

Call_010_6a42:
    ld h, e                                       ; $6a42: $63
    ld b, a                                       ; $6a43: $47
    cp c                                          ; $6a44: $b9
    sbc b                                         ; $6a45: $98
    sbc d                                         ; $6a46: $9a
    ld d, a                                       ; $6a47: $57
    add h                                         ; $6a48: $84
    ld a, d                                       ; $6a49: $7a
    sub l                                         ; $6a4a: $95
    ld l, c                                       ; $6a4b: $69
    xor c                                         ; $6a4c: $a9
    ld d, [hl]                                    ; $6a4d: $56
    adc d                                         ; $6a4e: $8a
    and h                                         ; $6a4f: $a4
    ld b, [hl]                                    ; $6a50: $46
    ld a, b                                       ; $6a51: $78
    ld h, [hl]                                    ; $6a52: $66
    adc d                                         ; $6a53: $8a
    xor e                                         ; $6a54: $ab
    jp z, $4386                                   ; $6a55: $ca $86 $43

    ld b, a                                       ; $6a58: $47
    sbc c                                         ; $6a59: $99
    ld a, e                                       ; $6a5a: $7b
    call z, Call_010_4570                         ; $6a5b: $cc $70 $45
    ld d, [hl]                                    ; $6a5e: $56

jr_010_6a5f:
    sbc l                                         ; $6a5f: $9d
    sbc c                                         ; $6a60: $99
    and [hl]                                      ; $6a61: $a6

jr_010_6a62:
    ld d, l                                       ; $6a62: $55
    ld b, a                                       ; $6a63: $47
    ld l, c                                       ; $6a64: $69
    res 7, b                                      ; $6a65: $cb $b8
    add [hl]                                      ; $6a67: $86
    ld [de], a                                    ; $6a68: $12
    ld l, e                                       ; $6a69: $6b
    db $db                                        ; $6a6a: $db
    cp d                                          ; $6a6b: $ba

jr_010_6a6c:
    sbc c                                         ; $6a6c: $99
    halt                                          ; $6a6d: $76
    inc sp                                        ; $6a6e: $33
    ld d, [hl]                                    ; $6a6f: $56
    xor d                                         ; $6a70: $aa
    sbc d                                         ; $6a71: $9a
    adc e                                         ; $6a72: $8b
    ld h, h                                       ; $6a73: $64
    adc d                                         ; $6a74: $8a
    ld [hl], e                                    ; $6a75: $73
    scf                                           ; $6a76: $37
    sbc [hl]                                      ; $6a77: $9e
    sub e                                         ; $6a78: $93
    jr c, jr_010_6a62                             ; $6a79: $38 $e7

    scf                                           ; $6a7b: $37
    ld h, a                                       ; $6a7c: $67
    xor e                                         ; $6a7d: $ab
    ld h, e                                       ; $6a7e: $63
    ld h, a                                       ; $6a7f: $67
    ld l, d                                       ; $6a80: $6a
    sbc b                                         ; $6a81: $98
    ld l, c                                       ; $6a82: $69
    ret z                                         ; $6a83: $c8

    ld [hl], a                                    ; $6a84: $77
    ld d, a                                       ; $6a85: $57
    ld h, e                                       ; $6a86: $63
    ld l, b                                       ; $6a87: $68
    ld a, b                                       ; $6a88: $78
    xor b                                         ; $6a89: $a8
    adc l                                         ; $6a8a: $8d
    sbc d                                         ; $6a8b: $9a
    sub [hl]                                      ; $6a8c: $96
    add l                                         ; $6a8d: $85
    ld h, [hl]                                    ; $6a8e: $66
    ld l, b                                       ; $6a8f: $68
    adc d                                         ; $6a90: $8a
    adc b                                         ; $6a91: $88
    xor d                                         ; $6a92: $aa
    sub a                                         ; $6a93: $97
    ld d, [hl]                                    ; $6a94: $56
    ld [hl-], a                                   ; $6a95: $32
    adc c                                         ; $6a96: $89
    xor c                                         ; $6a97: $a9
    xor b                                         ; $6a98: $a8
    ld h, $6a                                     ; $6a99: $26 $6a
    or a                                          ; $6a9b: $b7
    xor d                                         ; $6a9c: $aa
    ld b, l                                       ; $6a9d: $45
    ld e, b                                       ; $6a9e: $58
    add h                                         ; $6a9f: $84
    adc c                                         ; $6aa0: $89
    xor e                                         ; $6aa1: $ab
    xor h                                         ; $6aa2: $ac
    add d                                         ; $6aa3: $82
    ld l, b                                       ; $6aa4: $68
    add [hl]                                      ; $6aa5: $86
    ld l, c                                       ; $6aa6: $69
    ld l, c                                       ; $6aa7: $69
    sub [hl]                                      ; $6aa8: $96
    ld h, a                                       ; $6aa9: $67
    xor e                                         ; $6aaa: $ab
    adc h                                         ; $6aab: $8c
    or l                                          ; $6aac: $b5
    ld b, h                                       ; $6aad: $44
    dec [hl]                                      ; $6aae: $35
    ld e, e                                       ; $6aaf: $5b
    sbc $77                                       ; $6ab0: $de $77
    ld h, e                                       ; $6ab2: $63
    ld d, [hl]                                    ; $6ab3: $56
    ld h, a                                       ; $6ab4: $67
    ld l, b                                       ; $6ab5: $68
    ld h, l                                       ; $6ab6: $65
    ld a, c                                       ; $6ab7: $79
    cp c                                          ; $6ab8: $b9
    ld d, [hl]                                    ; $6ab9: $56
    ld l, h                                       ; $6aba: $6c
    or h                                          ; $6abb: $b4
    ld h, a                                       ; $6abc: $67
    ld d, l                                       ; $6abd: $55
    ld a, c                                       ; $6abe: $79
    sbc h                                         ; $6abf: $9c
    ret c                                         ; $6ac0: $d8

    ld h, h                                       ; $6ac1: $64
    add a                                         ; $6ac2: $87
    xor c                                         ; $6ac3: $a9
    ld h, a                                       ; $6ac4: $67
    xor b                                         ; $6ac5: $a8
    sub a                                         ; $6ac6: $97
    ld h, [hl]                                    ; $6ac7: $66
    ld d, a                                       ; $6ac8: $57
    and a                                         ; $6ac9: $a7
    ld l, c                                       ; $6aca: $69
    sub h                                         ; $6acb: $94
    scf                                           ; $6acc: $37
    ld a, c                                       ; $6acd: $79
    ret                                           ; $6ace: $c9


    add [hl]                                      ; $6acf: $86
    ld l, c                                       ; $6ad0: $69
    ld [hl], a                                    ; $6ad1: $77
    adc b                                         ; $6ad2: $88
    ld [hl], l                                    ; $6ad3: $75
    adc b                                         ; $6ad4: $88
    xor l                                         ; $6ad5: $ad
    xor b                                         ; $6ad6: $a8
    ld d, l                                       ; $6ad7: $55
    adc b                                         ; $6ad8: $88
    halt                                          ; $6ad9: $76
    daa                                           ; $6ada: $27
    cp d                                          ; $6adb: $ba
    sub l                                         ; $6adc: $95
    ld h, a                                       ; $6add: $67
    ld h, [hl]                                    ; $6ade: $66
    halt                                          ; $6adf: $76
    xor h                                         ; $6ae0: $ac
    sub [hl]                                      ; $6ae1: $96
    ld d, a                                       ; $6ae2: $57
    xor b                                         ; $6ae3: $a8
    ld h, [hl]                                    ; $6ae4: $66
    ld e, b                                       ; $6ae5: $58
    cp d                                          ; $6ae6: $ba
    sbc d                                         ; $6ae7: $9a
    ld h, [hl]                                    ; $6ae8: $66
    ld h, e                                       ; $6ae9: $63
    daa                                           ; $6aea: $27
    rst $00                                       ; $6aeb: $c7
    ld a, c                                       ; $6aec: $79
    ld a, d                                       ; $6aed: $7a
    add l                                         ; $6aee: $85
    ld [hl], l                                    ; $6aef: $75
    ld d, a                                       ; $6af0: $57
    sbc d                                         ; $6af1: $9a
    sub [hl]                                      ; $6af2: $96
    ld b, a                                       ; $6af3: $47
    add e                                         ; $6af4: $83
    ld e, h                                       ; $6af5: $5c
    db $ec                                        ; $6af6: $ec
    add l                                         ; $6af7: $85
    ld h, l                                       ; $6af8: $65
    ld [hl], l                                    ; $6af9: $75
    ld c, c                                       ; $6afa: $49
    adc d                                         ; $6afb: $8a
    res 2, l                                      ; $6afc: $cb $95
    ld h, l                                       ; $6afe: $65
    ld c, c                                       ; $6aff: $49
    sub a                                         ; $6b00: $97
    adc d                                         ; $6b01: $8a
    add h                                         ; $6b02: $84
    scf                                           ; $6b03: $37
    ld l, b                                       ; $6b04: $68
    xor b                                         ; $6b05: $a8
    jp z, $35a7                                   ; $6b06: $ca $a7 $35

    ld b, l                                       ; $6b09: $45
    ld l, b                                       ; $6b0a: $68
    sbc b                                         ; $6b0b: $98
    xor [hl]                                      ; $6b0c: $ae
    sub [hl]                                      ; $6b0d: $96
    ld b, d                                       ; $6b0e: $42
    ld b, [hl]                                    ; $6b0f: $46
    res 0, l                                      ; $6b10: $cb $85
    ld l, d                                       ; $6b12: $6a
    sbc e                                         ; $6b13: $9b
    or a                                          ; $6b14: $b7
    add a                                         ; $6b15: $87
    ld d, a                                       ; $6b16: $57
    sub [hl]                                      ; $6b17: $96
    ld a, d                                       ; $6b18: $7a
    sub [hl]                                      ; $6b19: $96
    ld d, a                                       ; $6b1a: $57
    sbc b                                         ; $6b1b: $98
    ld [hl], a                                    ; $6b1c: $77
    sbc d                                         ; $6b1d: $9a
    jp z, $0741                                   ; $6b1e: $ca $41 $07

    cp d                                          ; $6b21: $ba
    xor d                                         ; $6b22: $aa
    halt                                          ; $6b23: $76
    ld b, l                                       ; $6b24: $45
    adc b                                         ; $6b25: $88
    ld h, a                                       ; $6b26: $67
    ld a, c                                       ; $6b27: $79
    adc b                                         ; $6b28: $88
    sub [hl]                                      ; $6b29: $96
    ld d, [hl]                                    ; $6b2a: $56
    sbc c                                         ; $6b2b: $99
    xor e                                         ; $6b2c: $ab
    add [hl]                                      ; $6b2d: $86
    ld [hl], l                                    ; $6b2e: $75
    ld b, h                                       ; $6b2f: $44
    ld c, d                                       ; $6b30: $4a
    db $fc                                        ; $6b31: $fc
    xor c                                         ; $6b32: $a9
    add a                                         ; $6b33: $87
    ld b, l                                       ; $6b34: $45
    ld a, b                                       ; $6b35: $78
    ld h, [hl]                                    ; $6b36: $66
    sbc b                                         ; $6b37: $98
    ld l, e                                       ; $6b38: $6b
    or [hl]                                       ; $6b39: $b6
    ld l, b                                       ; $6b3a: $68
    sub a                                         ; $6b3b: $97
    ld [hl], a                                    ; $6b3c: $77
    ld h, l                                       ; $6b3d: $65
    ld d, a                                       ; $6b3e: $57
    xor d                                         ; $6b3f: $aa
    cp e                                          ; $6b40: $bb
    ld h, a                                       ; $6b41: $67
    add a                                         ; $6b42: $87
    ld d, [hl]                                    ; $6b43: $56
    ld d, h                                       ; $6b44: $54
    sbc l                                         ; $6b45: $9d
    cp b                                          ; $6b46: $b8
    ld [hl], l                                    ; $6b47: $75
    ld e, b                                       ; $6b48: $58
    sub a                                         ; $6b49: $97
    ld a, c                                       ; $6b4a: $79
    xor d                                         ; $6b4b: $aa
    halt                                          ; $6b4c: $76
    ld h, [hl]                                    ; $6b4d: $66
    add l                                         ; $6b4e: $85
    ld l, h                                       ; $6b4f: $6c
    db $db                                        ; $6b50: $db
    ld [hl], l                                    ; $6b51: $75
    ld h, l                                       ; $6b52: $65
    ld [hl], a                                    ; $6b53: $77
    ld b, h                                       ; $6b54: $44
    ld l, d                                       ; $6b55: $6a
    xor b                                         ; $6b56: $a8
    adc c                                         ; $6b57: $89
    ld l, d                                       ; $6b58: $6a
    add a                                         ; $6b59: $87
    ld [hl], a                                    ; $6b5a: $77
    ld d, e                                       ; $6b5b: $53
    ld [hl], a                                    ; $6b5c: $77
    adc c                                         ; $6b5d: $89
    ld [hl], a                                    ; $6b5e: $77
    sbc b                                         ; $6b5f: $98
    adc h                                         ; $6b60: $8c
    rst $30                                       ; $6b61: $f7
    ld h, $54                                     ; $6b62: $26 $54
    ld a, c                                       ; $6b64: $79
    xor b                                         ; $6b65: $a8
    xor d                                         ; $6b66: $aa
    ld d, a                                       ; $6b67: $57
    ld h, [hl]                                    ; $6b68: $66
    jp z, Jump_010_6954                           ; $6b69: $ca $54 $69

    ld [hl], a                                    ; $6b6c: $77
    ld l, b                                       ; $6b6d: $68
    and a                                         ; $6b6e: $a7

jr_010_6b6f:
    ld a, b                                       ; $6b6f: $78
    cp c                                          ; $6b70: $b9
    add l                                         ; $6b71: $85
    ld d, a                                       ; $6b72: $57
    ld h, a                                       ; $6b73: $67
    sbc b                                         ; $6b74: $98
    adc b                                         ; $6b75: $88
    sbc d                                         ; $6b76: $9a
    adc b                                         ; $6b77: $88
    and [hl]                                      ; $6b78: $a6
    ld b, h                                       ; $6b79: $44
    ld [hl], $99                                  ; $6b7a: $36 $99
    cp e                                          ; $6b7c: $bb
    cp c                                          ; $6b7d: $b9
    sub l                                         ; $6b7e: $95
    ld d, l                                       ; $6b7f: $55
    ld h, a                                       ; $6b80: $67
    adc d                                         ; $6b81: $8a
    jp z, Jump_010_6567                           ; $6b82: $ca $67 $65

    ld d, a                                       ; $6b85: $57
    xor h                                         ; $6b86: $ac
    ret z                                         ; $6b87: $c8

    ld d, l                                       ; $6b88: $55
    ld b, h                                       ; $6b89: $44
    ld c, b                                       ; $6b8a: $48
    xor c                                         ; $6b8b: $a9
    sbc b                                         ; $6b8c: $98
    db $dd                                        ; $6b8d: $dd
    and [hl]                                      ; $6b8e: $a6
    ld sp, $bc04                                  ; $6b8f: $31 $04 $bc
    ld d, h                                       ; $6b92: $54
    ld a, h                                       ; $6b93: $7c
    sub a                                         ; $6b94: $97
    and [hl]                                      ; $6b95: $a6
    jr c, jr_010_6b6f                             ; $6b96: $38 $d7

    ld d, a                                       ; $6b98: $57
    ld h, $88                                     ; $6b99: $26 $88
    cp l                                          ; $6b9b: $bd
    res 0, [hl]                                   ; $6b9c: $cb $86
    ld b, [hl]                                    ; $6b9e: $46
    ld d, l                                       ; $6b9f: $55
    ld d, e                                       ; $6ba0: $53
    ld e, e                                       ; $6ba1: $5b
    cp d                                          ; $6ba2: $ba
    sbc b                                         ; $6ba3: $98
    add a                                         ; $6ba4: $87
    ld d, h                                       ; $6ba5: $54
    ld h, l                                       ; $6ba6: $65
    ld a, d                                       ; $6ba7: $7a
    cp h                                          ; $6ba8: $bc
    sbc c                                         ; $6ba9: $99
    ld h, l                                       ; $6baa: $65
    add h                                         ; $6bab: $84
    ld l, h                                       ; $6bac: $6c
    xor b                                         ; $6bad: $a8
    ld l, c                                       ; $6bae: $69
    or a                                          ; $6baf: $b7
    inc sp                                        ; $6bb0: $33
    ld e, c                                       ; $6bb1: $59
    cp d                                          ; $6bb2: $ba
    xor b                                         ; $6bb3: $a8
    halt                                          ; $6bb4: $76
    ld a, b                                       ; $6bb5: $78
    ld h, e                                       ; $6bb6: $63
    ld a, b                                       ; $6bb7: $78
    ld a, e                                       ; $6bb8: $7b
    ld [$4466], a                                 ; $6bb9: $ea $66 $44
    ld a, c                                       ; $6bbc: $79
    xor d                                         ; $6bbd: $aa
    rst $00                                       ; $6bbe: $c7
    inc hl                                        ; $6bbf: $23
    daa                                           ; $6bc0: $27
    cp l                                          ; $6bc1: $bd
    db $db                                        ; $6bc2: $db
    ld [hl], l                                    ; $6bc3: $75
    ld d, e                                       ; $6bc4: $53
    ld c, b                                       ; $6bc5: $48
    sub [hl]                                      ; $6bc6: $96
    ld a, d                                       ; $6bc7: $7a
    call Call_010_43b6                            ; $6bc8: $cd $b6 $43
    inc [hl]                                      ; $6bcb: $34
    ld [hl], a                                    ; $6bcc: $77
    xor c                                         ; $6bcd: $a9
    and a                                         ; $6bce: $a7
    ld d, [hl]                                    ; $6bcf: $56
    adc c                                         ; $6bd0: $89
    ld a, d                                       ; $6bd1: $7a
    jp z, Jump_010_7877                           ; $6bd2: $ca $77 $78

    inc [hl]                                      ; $6bd5: $34
    ld b, [hl]                                    ; $6bd6: $46
    xor l                                         ; $6bd7: $ad
    sub l                                         ; $6bd8: $95
    xor d                                         ; $6bd9: $aa
    and a                                         ; $6bda: $a7
    ld d, [hl]                                    ; $6bdb: $56
    ld [hl-], a                                   ; $6bdc: $32
    sbc l                                         ; $6bdd: $9d
    ld d, [hl]                                    ; $6bde: $56
    db $ec                                        ; $6bdf: $ec
    sub l                                         ; $6be0: $95
    ld b, a                                       ; $6be1: $47
    or a                                          ; $6be2: $b7
    ld h, $87                                     ; $6be3: $26 $87
    sub a                                         ; $6be5: $97
    adc h                                         ; $6be6: $8c
    adc c                                         ; $6be7: $89
    ld [hl], h                                    ; $6be8: $74
    and a                                         ; $6be9: $a7
    ld d, a                                       ; $6bea: $57
    ld d, [hl]                                    ; $6beb: $56
    ld b, a                                       ; $6bec: $47
    xor a                                         ; $6bed: $af
    or a                                          ; $6bee: $b7
    ld h, a                                       ; $6bef: $67
    add [hl]                                      ; $6bf0: $86
    ld [hl], h                                    ; $6bf1: $74
    ld h, $ba                                     ; $6bf2: $26 $ba
    ld h, a                                       ; $6bf4: $67
    cp b                                          ; $6bf5: $b8
    dec sp                                        ; $6bf6: $3b
    call Call_000_24c8                            ; $6bf7: $cd $c8 $24
    ld d, l                                       ; $6bfa: $55
    ld l, b                                       ; $6bfb: $68
    cp c                                          ; $6bfc: $b9
    ld l, c                                       ; $6bfd: $69
    ld [hl], a                                    ; $6bfe: $77
    xor e                                         ; $6bff: $ab
    xor b                                         ; $6c00: $a8
    ld h, l                                       ; $6c01: $65
    inc [hl]                                      ; $6c02: $34
    adc c                                         ; $6c03: $89
    sbc d                                         ; $6c04: $9a
    cp d                                          ; $6c05: $ba
    ld h, l                                       ; $6c06: $65
    ld d, l                                       ; $6c07: $55
    adc c                                         ; $6c08: $89
    xor d                                         ; $6c09: $aa
    halt                                          ; $6c0a: $76
    xor c                                         ; $6c0b: $a9
    ld d, e                                       ; $6c0c: $53
    ld e, b                                       ; $6c0d: $58
    sbc c                                         ; $6c0e: $99
    ld [hl], h                                    ; $6c0f: $74
    ld h, a                                       ; $6c10: $67
    ld a, b                                       ; $6c11: $78
    adc c                                         ; $6c12: $89
    xor c                                         ; $6c13: $a9
    sbc d                                         ; $6c14: $9a
    rst $00                                       ; $6c15: $c7
    jr nc, jr_010_6c8e                            ; $6c16: $30 $76

    ld a, [de]                                    ; $6c18: $1a
    db $eb                                        ; $6c19: $eb
    adc d                                         ; $6c1a: $8a
    add [hl]                                      ; $6c1b: $86
    ld b, h                                       ; $6c1c: $44
    adc l                                         ; $6c1d: $8d
    or [hl]                                       ; $6c1e: $b6
    ld d, [hl]                                    ; $6c1f: $56
    add l                                         ; $6c20: $85
    ld e, c                                       ; $6c21: $59
    sbc e                                         ; $6c22: $9b
    ld [$3742], a                                 ; $6c23: $ea $42 $37
    sub a                                         ; $6c26: $97
    ld c, b                                       ; $6c27: $48
    sbc b                                         ; $6c28: $98
    ld h, a                                       ; $6c29: $67
    sub [hl]                                      ; $6c2a: $96
    ld [hl], a                                    ; $6c2b: $77
    xor c                                         ; $6c2c: $a9
    ld b, l                                       ; $6c2d: $45
    ld h, a                                       ; $6c2e: $67
    xor b                                         ; $6c2f: $a8
    adc b                                         ; $6c30: $88
    ld a, b                                       ; $6c31: $78
    xor d                                         ; $6c32: $aa
    and [hl]                                      ; $6c33: $a6
    ld h, [hl]                                    ; $6c34: $66
    ld [hl], a                                    ; $6c35: $77
    sbc c                                         ; $6c36: $99
    adc b                                         ; $6c37: $88
    ld l, b                                       ; $6c38: $68
    add a                                         ; $6c39: $87
    sbc d                                         ; $6c3a: $9a
    add a                                         ; $6c3b: $87
    add [hl]                                      ; $6c3c: $86
    ld [hl], a                                    ; $6c3d: $77
    sbc c                                         ; $6c3e: $99
    ld d, e                                       ; $6c3f: $53
    adc d                                         ; $6c40: $8a
    and a                                         ; $6c41: $a7
    ld h, [hl]                                    ; $6c42: $66
    ld [hl], a                                    ; $6c43: $77
    ld h, a                                       ; $6c44: $67
    sbc b                                         ; $6c45: $98
    ld [hl], a                                    ; $6c46: $77
    sub a                                         ; $6c47: $97
    ld a, e                                       ; $6c48: $7b
    add [hl]                                      ; $6c49: $86
    sbc b                                         ; $6c4a: $98
    ld h, a                                       ; $6c4b: $67
    ld l, b                                       ; $6c4c: $68
    xor b                                         ; $6c4d: $a8
    ld h, l                                       ; $6c4e: $65
    ld a, b                                       ; $6c4f: $78
    xor d                                         ; $6c50: $aa
    add h                                         ; $6c51: $84
    ld d, [hl]                                    ; $6c52: $56
    xor h                                         ; $6c53: $ac
    call Call_010_5684                            ; $6c54: $cd $84 $56
    ld d, l                                       ; $6c57: $55
    ld h, [hl]                                    ; $6c58: $66
    xor e                                         ; $6c59: $ab
    and a                                         ; $6c5a: $a7
    ld a, b                                       ; $6c5b: $78
    ld d, h                                       ; $6c5c: $54
    ld e, b                                       ; $6c5d: $58
    xor d                                         ; $6c5e: $aa
    sub a                                         ; $6c5f: $97
    add [hl]                                      ; $6c60: $86
    ld d, a                                       ; $6c61: $57
    ld h, [hl]                                    ; $6c62: $66
    adc e                                         ; $6c63: $8b
    and a                                         ; $6c64: $a7
    xor d                                         ; $6c65: $aa
    ld [hl], a                                    ; $6c66: $77
    ld [hl], e                                    ; $6c67: $73
    ld h, a                                       ; $6c68: $67
    xor h                                         ; $6c69: $ac
    or a                                          ; $6c6a: $b7
    sub [hl]                                      ; $6c6b: $96
    ld b, l                                       ; $6c6c: $45
    dec [hl]                                      ; $6c6d: $35
    cp [hl]                                       ; $6c6e: $be
    or a                                          ; $6c6f: $b7
    ld d, l                                       ; $6c70: $55
    ld e, b                                       ; $6c71: $58
    ret z                                         ; $6c72: $c8

    ld l, c                                       ; $6c73: $69
    sub a                                         ; $6c74: $97
    cp c                                          ; $6c75: $b9
    ld d, a                                       ; $6c76: $57
    ld [hl], e                                    ; $6c77: $73
    ld l, b                                       ; $6c78: $68
    sbc b                                         ; $6c79: $98
    ld [hl], a                                    ; $6c7a: $77
    ld e, b                                       ; $6c7b: $58
    sub [hl]                                      ; $6c7c: $96
    sub a                                         ; $6c7d: $97
    ld h, [hl]                                    ; $6c7e: $66
    halt                                          ; $6c7f: $76
    adc d                                         ; $6c80: $8a
    sbc c                                         ; $6c81: $99
    xor b                                         ; $6c82: $a8
    ld [hl], h                                    ; $6c83: $74
    ld b, [hl]                                    ; $6c84: $46
    sbc d                                         ; $6c85: $9a
    xor c                                         ; $6c86: $a9
    add [hl]                                      ; $6c87: $86
    ld h, a                                       ; $6c88: $67
    ld [hl], a                                    ; $6c89: $77
    sbc b                                         ; $6c8a: $98
    xor b                                         ; $6c8b: $a8
    add [hl]                                      ; $6c8c: $86
    ld d, [hl]                                    ; $6c8d: $56

jr_010_6c8e:
    ld l, b                                       ; $6c8e: $68
    adc d                                         ; $6c8f: $8a
    xor b                                         ; $6c90: $a8
    sbc d                                         ; $6c91: $9a
    add [hl]                                      ; $6c92: $86
    ld d, l                                       ; $6c93: $55
    dec h                                         ; $6c94: $25
    ld a, d                                       ; $6c95: $7a
    reti                                          ; $6c96: $d9


    halt                                          ; $6c97: $76
    add [hl]                                      ; $6c98: $86
    ld e, b                                       ; $6c99: $58
    cp e                                          ; $6c9a: $bb
    ld [hl], a                                    ; $6c9b: $77
    ld d, h                                       ; $6c9c: $54
    ld l, b                                       ; $6c9d: $68
    ld [hl], l                                    ; $6c9e: $75
    adc h                                         ; $6c9f: $8c
    call z, Call_000_31a6                         ; $6ca0: $cc $a6 $31
    ld e, b                                       ; $6ca3: $58
    ld [hl], a                                    ; $6ca4: $77
    cp d                                          ; $6ca5: $ba
    or a                                          ; $6ca6: $b7
    ld h, a                                       ; $6ca7: $67
    ld [hl], a                                    ; $6ca8: $77
    cp e                                          ; $6ca9: $bb
    add a                                         ; $6caa: $87
    ld h, [hl]                                    ; $6cab: $66
    ld d, [hl]                                    ; $6cac: $56
    ld [hl], a                                    ; $6cad: $77
    ld a, c                                       ; $6cae: $79
    sbc b                                         ; $6caf: $98
    and a                                         ; $6cb0: $a7
    ld h, a                                       ; $6cb1: $67
    ld sp, $dc6b                                  ; $6cb2: $31 $6b $dc
    add l                                         ; $6cb5: $85
    adc c                                         ; $6cb6: $89
    ld [hl], h                                    ; $6cb7: $74
    ld b, h                                       ; $6cb8: $44
    adc d                                         ; $6cb9: $8a
    xor c                                         ; $6cba: $a9
    ld d, [hl]                                    ; $6cbb: $56
    add a                                         ; $6cbc: $87
    halt                                          ; $6cbd: $76
    ld l, h                                       ; $6cbe: $6c
    sub l                                         ; $6cbf: $95
    add a                                         ; $6cc0: $87
    ld d, [hl]                                    ; $6cc1: $56
    sbc d                                         ; $6cc2: $9a
    sub a                                         ; $6cc3: $97
    sbc b                                         ; $6cc4: $98
    ld a, b                                       ; $6cc5: $78
    adc c                                         ; $6cc6: $89
    sub a                                         ; $6cc7: $97
    ld d, h                                       ; $6cc8: $54
    ld h, l                                       ; $6cc9: $65
    adc e                                         ; $6cca: $8b
    ld [hl], h                                    ; $6ccb: $74
    ld l, c                                       ; $6ccc: $69
    add sp, -$7b                                  ; $6ccd: $e8 $85
    ld d, a                                       ; $6ccf: $57
    adc c                                         ; $6cd0: $89
    cp h                                          ; $6cd1: $bc
    and [hl]                                      ; $6cd2: $a6
    ld d, l                                       ; $6cd3: $55
    ld d, [hl]                                    ; $6cd4: $56
    sbc b                                         ; $6cd5: $98
    adc c                                         ; $6cd6: $89
    sbc d                                         ; $6cd7: $9a
    sub a                                         ; $6cd8: $97
    ld h, h                                       ; $6cd9: $64
    ld [hl], $8a                                  ; $6cda: $36 $8a
    cp e                                          ; $6cdc: $bb
    ret z                                         ; $6cdd: $c8

    ld d, h                                       ; $6cde: $54
    ld b, [hl]                                    ; $6cdf: $46
    sbc e                                         ; $6ce0: $9b
    xor e                                         ; $6ce1: $ab
    xor b                                         ; $6ce2: $a8
    ld d, l                                       ; $6ce3: $55
    ld d, h                                       ; $6ce4: $54
    ld d, a                                       ; $6ce5: $57
    xor [hl]                                      ; $6ce6: $ae
    rst $00                                       ; $6ce7: $c7
    ld d, d                                       ; $6ce8: $52
    ld b, a                                       ; $6ce9: $47
    adc e                                         ; $6cea: $8b
    cp b                                          ; $6ceb: $b8
    ld [hl], l                                    ; $6cec: $75
    ld b, a                                       ; $6ced: $47
    sbc c                                         ; $6cee: $99
    ld [hl], a                                    ; $6cef: $77
    adc c                                         ; $6cf0: $89
    sbc c                                         ; $6cf1: $99
    halt                                          ; $6cf2: $76
    add a                                         ; $6cf3: $87
    ld b, h                                       ; $6cf4: $44
    sbc c                                         ; $6cf5: $99
    ld a, d                                       ; $6cf6: $7a
    rst $00                                       ; $6cf7: $c7
    ld b, h                                       ; $6cf8: $44
    ld a, b                                       ; $6cf9: $78
    ld h, l                                       ; $6cfa: $65
    ld h, a                                       ; $6cfb: $67
    ld a, c                                       ; $6cfc: $79
    cp e                                          ; $6cfd: $bb
    and [hl]                                      ; $6cfe: $a6
    ld d, h                                       ; $6cff: $54
    ld c, c                                       ; $6d00: $49
    ld a, c                                       ; $6d01: $79
    xor b                                         ; $6d02: $a8
    ld h, [hl]                                    ; $6d03: $66
    ld a, b                                       ; $6d04: $78
    add a                                         ; $6d05: $87
    adc c                                         ; $6d06: $89
    ld [hl], h                                    ; $6d07: $74
    ld h, a                                       ; $6d08: $67
    adc d                                         ; $6d09: $8a
    ld d, h                                       ; $6d0a: $54
    adc b                                         ; $6d0b: $88
    xor e                                         ; $6d0c: $ab
    ld [hl], a                                    ; $6d0d: $77
    sub a                                         ; $6d0e: $97
    ld d, d                                       ; $6d0f: $52
    ld l, d                                       ; $6d10: $6a
    ld [hl], h                                    ; $6d11: $74
    adc [hl]                                      ; $6d12: $8e
    sub $4c                                       ; $6d13: $d6 $4c
    or l                                          ; $6d15: $b5
    ld d, [hl]                                    ; $6d16: $56
    ld b, h                                       ; $6d17: $44
    cp [hl]                                       ; $6d18: $be
    and h                                         ; $6d19: $a4
    ld b, [hl]                                    ; $6d1a: $46
    adc e                                         ; $6d1b: $8b
    add a                                         ; $6d1c: $87
    call z, $34a6                                 ; $6d1d: $cc $a6 $34
    inc d                                         ; $6d20: $14
    cp h                                          ; $6d21: $bc
    and [hl]                                      ; $6d22: $a6
    sbc d                                         ; $6d23: $9a
    ld h, h                                       ; $6d24: $64
    ld b, a                                       ; $6d25: $47
    ld [hl], a                                    ; $6d26: $77
    xor c                                         ; $6d27: $a9
    halt                                          ; $6d28: $76
    ld a, c                                       ; $6d29: $79
    add [hl]                                      ; $6d2a: $86
    ld l, b                                       ; $6d2b: $68
    cp c                                          ; $6d2c: $b9
    cp d                                          ; $6d2d: $ba
    ld h, e                                       ; $6d2e: $63
    ld b, h                                       ; $6d2f: $44
    adc d                                         ; $6d30: $8a
    xor e                                         ; $6d31: $ab
    or a                                          ; $6d32: $b7
    halt                                          ; $6d33: $76
    ld h, [hl]                                    ; $6d34: $66
    ld b, [hl]                                    ; $6d35: $46
    adc c                                         ; $6d36: $89
    sbc d                                         ; $6d37: $9a
    sub a                                         ; $6d38: $97
    ld h, [hl]                                    ; $6d39: $66
    ld h, a                                       ; $6d3a: $67
    ld d, a                                       ; $6d3b: $57
    ld a, b                                       ; $6d3c: $78
    sbc b                                         ; $6d3d: $98
    xor d                                         ; $6d3e: $aa
    ld [hl], a                                    ; $6d3f: $77
    ld h, [hl]                                    ; $6d40: $66
    adc b                                         ; $6d41: $88
    add [hl]                                      ; $6d42: $86
    ld a, b                                       ; $6d43: $78
    add [hl]                                      ; $6d44: $86
    ld l, d                                       ; $6d45: $6a
    xor d                                         ; $6d46: $aa
    or a                                          ; $6d47: $b7
    ld a, b                                       ; $6d48: $78
    ld h, [hl]                                    ; $6d49: $66
    ld [hl], a                                    ; $6d4a: $77
    halt                                          ; $6d4b: $76
    sbc b                                         ; $6d4c: $98
    adc c                                         ; $6d4d: $89
    xor e                                         ; $6d4e: $ab
    halt                                          ; $6d4f: $76
    ld h, h                                       ; $6d50: $64
    ld d, [hl]                                    ; $6d51: $56
    ld a, b                                       ; $6d52: $78
    adc b                                         ; $6d53: $88
    adc c                                         ; $6d54: $89
    cp c                                          ; $6d55: $b9
    ld e, b                                       ; $6d56: $58
    sub l                                         ; $6d57: $95
    ld c, b                                       ; $6d58: $48
    cp e                                          ; $6d59: $bb
    ld [hl], l                                    ; $6d5a: $75
    ld h, a                                       ; $6d5b: $67
    sub a                                         ; $6d5c: $97
    ld h, l                                       ; $6d5d: $65
    xor h                                         ; $6d5e: $ac
    ld [hl], h                                    ; $6d5f: $74
    ld d, l                                       ; $6d60: $55
    ld d, [hl]                                    ; $6d61: $56
    xor d                                         ; $6d62: $aa
    xor c                                         ; $6d63: $a9
    sub [hl]                                      ; $6d64: $96
    ld a, b                                       ; $6d65: $78
    ld d, d                                       ; $6d66: $52
    ld c, e                                       ; $6d67: $4b
    jp z, $6498                                   ; $6d68: $ca $98 $64

    scf                                           ; $6d6b: $37
    adc c                                         ; $6d6c: $89
    res 0, a                                      ; $6d6d: $cb $87
    ld d, [hl]                                    ; $6d6f: $56
    ld h, l                                       ; $6d70: $65
    add a                                         ; $6d71: $87
    adc e                                         ; $6d72: $8b
    or a                                          ; $6d73: $b7
    ld l, c                                       ; $6d74: $69
    add [hl]                                      ; $6d75: $86
    ld h, [hl]                                    ; $6d76: $66
    ld a, c                                       ; $6d77: $79
    cp b                                          ; $6d78: $b8
    adc c                                         ; $6d79: $89
    ld [hl], h                                    ; $6d7a: $74
    ld d, l                                       ; $6d7b: $55
    ld d, [hl]                                    ; $6d7c: $56
    sbc h                                         ; $6d7d: $9c
    cp b                                          ; $6d7e: $b8
    halt                                          ; $6d7f: $76
    ld d, [hl]                                    ; $6d80: $56
    adc d                                         ; $6d81: $8a
    sbc c                                         ; $6d82: $99
    adc b                                         ; $6d83: $88
    sub a                                         ; $6d84: $97
    ld h, h                                       ; $6d85: $64
    ld e, c                                       ; $6d86: $59
    xor b                                         ; $6d87: $a8
    xor b                                         ; $6d88: $a8
    add [hl]                                      ; $6d89: $86
    ld l, b                                       ; $6d8a: $68
    ld d, l                                       ; $6d8b: $55
    sbc b                                         ; $6d8c: $98
    halt                                          ; $6d8d: $76
    ld a, b                                       ; $6d8e: $78
    adc c                                         ; $6d8f: $89
    xor c                                         ; $6d90: $a9
    add [hl]                                      ; $6d91: $86
    ld c, b                                       ; $6d92: $48
    add a                                         ; $6d93: $87
    ld l, b                                       ; $6d94: $68
    sbc c                                         ; $6d95: $99
    sub a                                         ; $6d96: $97
    ld h, [hl]                                    ; $6d97: $66
    sub [hl]                                      ; $6d98: $96
    ld h, a                                       ; $6d99: $67
    ld a, c                                       ; $6d9a: $79
    sub [hl]                                      ; $6d9b: $96
    ld a, c                                       ; $6d9c: $79
    adc b                                         ; $6d9d: $88
    ld [hl], l                                    ; $6d9e: $75
    sbc l                                         ; $6d9f: $9d
    xor b                                         ; $6da0: $a8
    ld d, e                                       ; $6da1: $53
    scf                                           ; $6da2: $37
    sbc b                                         ; $6da3: $98
    adc c                                         ; $6da4: $89
    sub a                                         ; $6da5: $97
    ld l, d                                       ; $6da6: $6a
    sub a                                         ; $6da7: $97
    ld d, l                                       ; $6da8: $55
    ld a, d                                       ; $6da9: $7a
    xor c                                         ; $6daa: $a9
    add h                                         ; $6dab: $84
    ld [hl], $b8                                  ; $6dac: $36 $b8
    ld [hl], a                                    ; $6dae: $77
    sbc c                                         ; $6daf: $99
    adc b                                         ; $6db0: $88
    halt                                          ; $6db1: $76
    ld h, l                                       ; $6db2: $65
    sbc e                                         ; $6db3: $9b
    sbc c                                         ; $6db4: $99
    cp c                                          ; $6db5: $b9
    ld b, h                                       ; $6db6: $44
    inc [hl]                                      ; $6db7: $34
    sbc e                                         ; $6db8: $9b
    xor d                                         ; $6db9: $aa
    halt                                          ; $6dba: $76
    adc c                                         ; $6dbb: $89
    ld [hl], h                                    ; $6dbc: $74
    ld c, b                                       ; $6dbd: $48
    xor c                                         ; $6dbe: $a9
    ld d, l                                       ; $6dbf: $55
    adc b                                         ; $6dc0: $88
    ld [hl], l                                    ; $6dc1: $75
    ld l, d                                       ; $6dc2: $6a
    cp e                                          ; $6dc3: $bb
    sub [hl]                                      ; $6dc4: $96
    ld d, [hl]                                    ; $6dc5: $56
    ld l, c                                       ; $6dc6: $69
    sub a                                         ; $6dc7: $97
    ld l, c                                       ; $6dc8: $69
    sbc d                                         ; $6dc9: $9a
    add a                                         ; $6dca: $87
    ld h, l                                       ; $6dcb: $65
    ld a, b                                       ; $6dcc: $78
    xor d                                         ; $6dcd: $aa
    ld [hl], l                                    ; $6dce: $75
    ld h, a                                       ; $6dcf: $67
    add a                                         ; $6dd0: $87
    sbc h                                         ; $6dd1: $9c
    ld h, e                                       ; $6dd2: $63
    ld l, b                                       ; $6dd3: $68
    sbc b                                         ; $6dd4: $98
    ld [hl], a                                    ; $6dd5: $77
    ld e, b                                       ; $6dd6: $58
    adc b                                         ; $6dd7: $88
    sub a                                         ; $6dd8: $97
    ld a, b                                       ; $6dd9: $78
    ld [hl], a                                    ; $6dda: $77
    halt                                          ; $6ddb: $76
    adc d                                         ; $6ddc: $8a
    ld [hl], a                                    ; $6ddd: $77
    ld a, b                                       ; $6dde: $78
    ld [hl], a                                    ; $6ddf: $77
    add a                                         ; $6de0: $87
    ld l, c                                       ; $6de1: $69
    xor b                                         ; $6de2: $a8
    ld [hl], a                                    ; $6de3: $77
    add a                                         ; $6de4: $87
    ld a, e                                       ; $6de5: $7b
    and [hl]                                      ; $6de6: $a6
    ld [hl], a                                    ; $6de7: $77
    ld h, l                                       ; $6de8: $65
    ld d, [hl]                                    ; $6de9: $56
    sbc b                                         ; $6dea: $98
    ld l, c                                       ; $6deb: $69
    xor c                                         ; $6dec: $a9
    ld b, [hl]                                    ; $6ded: $46
    sbc b                                         ; $6dee: $98
    ld a, b                                       ; $6def: $78
    sbc d                                         ; $6df0: $9a
    ld [hl], l                                    ; $6df1: $75
    ld d, h                                       ; $6df2: $54
    ld h, [hl]                                    ; $6df3: $66
    adc e                                         ; $6df4: $8b
    cp d                                          ; $6df5: $ba
    ld a, b                                       ; $6df6: $78
    ld h, l                                       ; $6df7: $65
    ld b, h                                       ; $6df8: $44
    ld a, e                                       ; $6df9: $7b
    db $db                                        ; $6dfa: $db
    halt                                          ; $6dfb: $76
    ld h, a                                       ; $6dfc: $67
    sub a                                         ; $6dfd: $97
    ld [hl], $88                                  ; $6dfe: $36 $88
    ret z                                         ; $6e00: $c8

    ld a, b                                       ; $6e01: $78
    sbc d                                         ; $6e02: $9a
    adc b                                         ; $6e03: $88
    ld [hl], a                                    ; $6e04: $77
    ld [hl], a                                    ; $6e05: $77
    halt                                          ; $6e06: $76
    and l                                         ; $6e07: $a5
    ld l, b                                       ; $6e08: $68
    ld a, b                                       ; $6e09: $78
    jp z, Jump_010_5676                           ; $6e0a: $ca $76 $56

    ld h, h                                       ; $6e0d: $64
    ld l, d                                       ; $6e0e: $6a
    res 4, [hl]                                   ; $6e0f: $cb $a6
    ld b, [hl]                                    ; $6e11: $46
    ld [hl], h                                    ; $6e12: $74
    ld l, c                                       ; $6e13: $69
    cp c                                          ; $6e14: $b9
    add [hl]                                      ; $6e15: $86
    ld h, a                                       ; $6e16: $67
    sbc h                                         ; $6e17: $9c
    add $47                                       ; $6e18: $c6 $47
    ld h, [hl]                                    ; $6e1a: $66
    sbc e                                         ; $6e1b: $9b
    sub a                                         ; $6e1c: $97
    halt                                          ; $6e1d: $76
    add l                                         ; $6e1e: $85
    ld e, b                                       ; $6e1f: $58
    adc c                                         ; $6e20: $89
    sbc b                                         ; $6e21: $98
    xor c                                         ; $6e22: $a9
    ld h, l                                       ; $6e23: $65
    adc c                                         ; $6e24: $89
    ld h, l                                       ; $6e25: $65
    ld a, b                                       ; $6e26: $78
    adc c                                         ; $6e27: $89
    sub [hl]                                      ; $6e28: $96
    halt                                          ; $6e29: $76
    add a                                         ; $6e2a: $87
    ld [hl], $87                                  ; $6e2b: $36 $87
    sbc d                                         ; $6e2d: $9a
    add a                                         ; $6e2e: $87
    add a                                         ; $6e2f: $87
    call z, Call_010_6787                         ; $6e30: $cc $87 $67
    ld b, e                                       ; $6e33: $43
    ld c, b                                       ; $6e34: $48
    call z, $87ba                                 ; $6e35: $cc $ba $87
    ld h, [hl]                                    ; $6e38: $66
    inc sp                                        ; $6e39: $33
    ld d, [hl]                                    ; $6e3a: $56
    sbc h                                         ; $6e3b: $9c
    jp z, Jump_010_6567                           ; $6e3c: $ca $67 $65

    ld e, b                                       ; $6e3f: $58
    add a                                         ; $6e40: $87
    sbc c                                         ; $6e41: $99
    sub a                                         ; $6e42: $97
    xor c                                         ; $6e43: $a9
    ld h, l                                       ; $6e44: $65
    ld b, [hl]                                    ; $6e45: $46
    sbc e                                         ; $6e46: $9b
    add a                                         ; $6e47: $87
    ld h, [hl]                                    ; $6e48: $66
    ld l, b                                       ; $6e49: $68
    adc b                                         ; $6e4a: $88
    add a                                         ; $6e4b: $87
    adc b                                         ; $6e4c: $88
    ld a, b                                       ; $6e4d: $78
    sbc b                                         ; $6e4e: $98
    adc b                                         ; $6e4f: $88
    add a                                         ; $6e50: $87
    ld a, b                                       ; $6e51: $78
    ld [hl], a                                    ; $6e52: $77
    adc b                                         ; $6e53: $88
    ld [hl], a                                    ; $6e54: $77
    adc c                                         ; $6e55: $89
    halt                                          ; $6e56: $76
    ld l, c                                       ; $6e57: $69
    sub a                                         ; $6e58: $97
    halt                                          ; $6e59: $76
    sbc d                                         ; $6e5a: $9a
    add a                                         ; $6e5b: $87
    ld d, a                                       ; $6e5c: $57
    ld d, [hl]                                    ; $6e5d: $56
    add a                                         ; $6e5e: $87
    adc b                                         ; $6e5f: $88
    and a                                         ; $6e60: $a7
    ld [hl], a                                    ; $6e61: $77
    adc c                                         ; $6e62: $89
    add [hl]                                      ; $6e63: $86
    ld d, a                                       ; $6e64: $57
    ld [hl], a                                    ; $6e65: $77
    sub l                                         ; $6e66: $95
    ld e, d                                       ; $6e67: $5a
    cp d                                          ; $6e68: $ba
    ld a, d                                       ; $6e69: $7a
    sub [hl]                                      ; $6e6a: $96
    ld h, l                                       ; $6e6b: $65
    add [hl]                                      ; $6e6c: $86
    adc c                                         ; $6e6d: $89
    halt                                          ; $6e6e: $76
    sbc d                                         ; $6e6f: $9a
    and a                                         ; $6e70: $a7
    adc d                                         ; $6e71: $8a
    add [hl]                                      ; $6e72: $86
    ld h, l                                       ; $6e73: $65
    ld d, a                                       ; $6e74: $57
    adc b                                         ; $6e75: $88
    sbc d                                         ; $6e76: $9a
    xor c                                         ; $6e77: $a9
    add [hl]                                      ; $6e78: $86
    ld d, l                                       ; $6e79: $55
    ld h, a                                       ; $6e7a: $67
    xor c                                         ; $6e7b: $a9
    ld h, l                                       ; $6e7c: $65
    cp h                                          ; $6e7d: $bc
    xor b                                         ; $6e7e: $a8
    ld b, h                                       ; $6e7f: $44
    adc b                                         ; $6e80: $88
    ld e, c                                       ; $6e81: $59
    adc d                                         ; $6e82: $8a
    sub l                                         ; $6e83: $95
    adc c                                         ; $6e84: $89
    halt                                          ; $6e85: $76
    ld e, d                                       ; $6e86: $5a
    cp c                                          ; $6e87: $b9
    sbc b                                         ; $6e88: $98
    ld h, e                                       ; $6e89: $63
    ld b, [hl]                                    ; $6e8a: $46
    ld a, c                                       ; $6e8b: $79
    xor d                                         ; $6e8c: $aa
    adc b                                         ; $6e8d: $88
    ld a, b                                       ; $6e8e: $78
    ld [hl], l                                    ; $6e8f: $75
    add a                                         ; $6e90: $87
    sbc d                                         ; $6e91: $9a
    ld h, l                                       ; $6e92: $65
    ld a, d                                       ; $6e93: $7a
    add l                                         ; $6e94: $85
    ld a, b                                       ; $6e95: $78
    adc b                                         ; $6e96: $88
    ld d, [hl]                                    ; $6e97: $56
    ld h, a                                       ; $6e98: $67
    adc c                                         ; $6e99: $89
    ld a, c                                       ; $6e9a: $79
    xor e                                         ; $6e9b: $ab
    xor b                                         ; $6e9c: $a8
    ld h, h                                       ; $6e9d: $64
    ld h, a                                       ; $6e9e: $67
    ld h, [hl]                                    ; $6e9f: $66
    sbc e                                         ; $6ea0: $9b
    sub a                                         ; $6ea1: $97
    ld a, b                                       ; $6ea2: $78
    add a                                         ; $6ea3: $87
    adc c                                         ; $6ea4: $89
    ld h, [hl]                                    ; $6ea5: $66
    ld a, b                                       ; $6ea6: $78
    adc b                                         ; $6ea7: $88
    sub a                                         ; $6ea8: $97
    ld h, a                                       ; $6ea9: $67
    sbc b                                         ; $6eaa: $98
    halt                                          ; $6eab: $76
    ld a, b                                       ; $6eac: $78
    ld h, [hl]                                    ; $6ead: $66
    ld l, c                                       ; $6eae: $69
    cp e                                          ; $6eaf: $bb
    and [hl]                                      ; $6eb0: $a6
    adc b                                         ; $6eb1: $88
    ld [hl], a                                    ; $6eb2: $77
    ld h, [hl]                                    ; $6eb3: $66
    ld [hl], a                                    ; $6eb4: $77
    xor e                                         ; $6eb5: $ab
    adc c                                         ; $6eb6: $89
    sub a                                         ; $6eb7: $97
    ld d, l                                       ; $6eb8: $55
    adc c                                         ; $6eb9: $89
    halt                                          ; $6eba: $76
    ld a, c                                       ; $6ebb: $79
    add [hl]                                      ; $6ebc: $86
    ld h, [hl]                                    ; $6ebd: $66
    ld l, c                                       ; $6ebe: $69
    sbc b                                         ; $6ebf: $98
    ld h, a                                       ; $6ec0: $67
    ld h, [hl]                                    ; $6ec1: $66
    ld h, a                                       ; $6ec2: $67
    adc e                                         ; $6ec3: $8b
    cp c                                          ; $6ec4: $b9
    ld [hl], e                                    ; $6ec5: $73
    ld e, c                                       ; $6ec6: $59
    sbc c                                         ; $6ec7: $99
    sbc c                                         ; $6ec8: $99
    add [hl]                                      ; $6ec9: $86
    ld d, h                                       ; $6eca: $54
    ld d, [hl]                                    ; $6ecb: $56
    ld a, d                                       ; $6ecc: $7a
    cp c                                          ; $6ecd: $b9
    ld a, b                                       ; $6ece: $78
    add a                                         ; $6ecf: $87
    sub [hl]                                      ; $6ed0: $96
    ld l, b                                       ; $6ed1: $68
    ld h, a                                       ; $6ed2: $67
    ld a, b                                       ; $6ed3: $78
    sbc c                                         ; $6ed4: $99
    add [hl]                                      ; $6ed5: $86
    ld l, c                                       ; $6ed6: $69
    ld h, a                                       ; $6ed7: $67
    adc c                                         ; $6ed8: $89
    and [hl]                                      ; $6ed9: $a6
    ld e, b                                       ; $6eda: $58
    sub a                                         ; $6edb: $97
    add a                                         ; $6edc: $87
    sbc h                                         ; $6edd: $9c
    add h                                         ; $6ede: $84
    inc h                                         ; $6edf: $24
    adc b                                         ; $6ee0: $88
    sbc e                                         ; $6ee1: $9b
    xor c                                         ; $6ee2: $a9
    sbc b                                         ; $6ee3: $98
    halt                                          ; $6ee4: $76
    ld h, l                                       ; $6ee5: $65
    ld a, b                                       ; $6ee6: $78
    ld [hl], a                                    ; $6ee7: $77
    add a                                         ; $6ee8: $87
    xor c                                         ; $6ee9: $a9
    ld [hl], l                                    ; $6eea: $75
    ld a, d                                       ; $6eeb: $7a
    or [hl]                                       ; $6eec: $b6
    halt                                          ; $6eed: $76
    ld h, a                                       ; $6eee: $67
    ld e, b                                       ; $6eef: $58
    ret                                           ; $6ef0: $c9


    adc e                                         ; $6ef1: $8b
    sub l                                         ; $6ef2: $95
    ld b, h                                       ; $6ef3: $44
    ld h, [hl]                                    ; $6ef4: $66
    ld d, a                                       ; $6ef5: $57
    xor d                                         ; $6ef6: $aa
    adc c                                         ; $6ef7: $89
    sub a                                         ; $6ef8: $97
    ld h, a                                       ; $6ef9: $67
    ld h, a                                       ; $6efa: $67
    and [hl]                                      ; $6efb: $a6
    ld a, b                                       ; $6efc: $78
    ld [hl], h                                    ; $6efd: $74
    ld e, b                                       ; $6efe: $58
    cp e                                          ; $6eff: $bb
    sub [hl]                                      ; $6f00: $96
    xor c                                         ; $6f01: $a9
    add a                                         ; $6f02: $87
    ld b, l                                       ; $6f03: $45
    ld h, [hl]                                    ; $6f04: $66
    adc d                                         ; $6f05: $8a
    xor d                                         ; $6f06: $aa
    add a                                         ; $6f07: $87
    ld h, [hl]                                    ; $6f08: $66
    adc d                                         ; $6f09: $8a
    and a                                         ; $6f0a: $a7
    ld d, a                                       ; $6f0b: $57
    add a                                         ; $6f0c: $87
    sbc c                                         ; $6f0d: $99
    ld h, a                                       ; $6f0e: $67
    sbc b                                         ; $6f0f: $98
    add a                                         ; $6f10: $87
    halt                                          ; $6f11: $76
    ld h, a                                       ; $6f12: $67
    adc c                                         ; $6f13: $89
    ld l, b                                       ; $6f14: $68
    sbc b                                         ; $6f15: $98
    ld [hl], a                                    ; $6f16: $77
    ld [hl], a                                    ; $6f17: $77
    sbc c                                         ; $6f18: $99
    sub [hl]                                      ; $6f19: $96
    ld b, l                                       ; $6f1a: $45
    halt                                          ; $6f1b: $76
    ld a, d                                       ; $6f1c: $7a
    xor c                                         ; $6f1d: $a9
    adc c                                         ; $6f1e: $89
    add l                                         ; $6f1f: $85
    ld h, [hl]                                    ; $6f20: $66
    ld a, [hl-]                                   ; $6f21: $3a
    sbc h                                         ; $6f22: $9c
    sub a                                         ; $6f23: $97
    ld d, l                                       ; $6f24: $55
    adc b                                         ; $6f25: $88
    ld a, b                                       ; $6f26: $78
    ld [hl], h                                    ; $6f27: $74
    adc d                                         ; $6f28: $8a
    and [hl]                                      ; $6f29: $a6
    ld a, c                                       ; $6f2a: $79
    ld a, b                                       ; $6f2b: $78
    ld a, b                                       ; $6f2c: $78
    adc b                                         ; $6f2d: $88
    ld [hl], l                                    ; $6f2e: $75
    ld d, a                                       ; $6f2f: $57
    add l                                         ; $6f30: $85
    adc c                                         ; $6f31: $89
    adc c                                         ; $6f32: $89
    sbc c                                         ; $6f33: $99
    ld l, b                                       ; $6f34: $68
    adc b                                         ; $6f35: $88
    add a                                         ; $6f36: $87
    halt                                          ; $6f37: $76
    ld a, b                                       ; $6f38: $78
    adc b                                         ; $6f39: $88
    add a                                         ; $6f3a: $87
    ld l, b                                       ; $6f3b: $68
    or a                                          ; $6f3c: $b7
    ld [hl], a                                    ; $6f3d: $77
    ld b, [hl]                                    ; $6f3e: $46
    adc b                                         ; $6f3f: $88
    xor c                                         ; $6f40: $a9
    ld [hl], a                                    ; $6f41: $77
    ld a, b                                       ; $6f42: $78
    ld h, [hl]                                    ; $6f43: $66
    ld a, b                                       ; $6f44: $78
    ld [hl], a                                    ; $6f45: $77
    adc b                                         ; $6f46: $88
    adc b                                         ; $6f47: $88
    add a                                         ; $6f48: $87
    adc b                                         ; $6f49: $88
    ld h, [hl]                                    ; $6f4a: $66
    adc c                                         ; $6f4b: $89
    adc b                                         ; $6f4c: $88
    add [hl]                                      ; $6f4d: $86
    ld h, [hl]                                    ; $6f4e: $66
    ld a, c                                       ; $6f4f: $79
    adc b                                         ; $6f50: $88
    sbc c                                         ; $6f51: $99
    sub a                                         ; $6f52: $97
    ld h, [hl]                                    ; $6f53: $66
    ld h, l                                       ; $6f54: $65
    ld l, b                                       ; $6f55: $68
    sbc d                                         ; $6f56: $9a
    xor b                                         ; $6f57: $a8
    ld [hl], a                                    ; $6f58: $77
    ld d, l                                       ; $6f59: $55
    adc b                                         ; $6f5a: $88
    adc c                                         ; $6f5b: $89
    add [hl]                                      ; $6f5c: $86
    ld d, [hl]                                    ; $6f5d: $56
    xor l                                         ; $6f5e: $ad
    sub l                                         ; $6f5f: $95
    adc b                                         ; $6f60: $88
    sub [hl]                                      ; $6f61: $96
    ld b, [hl]                                    ; $6f62: $46
    ld a, d                                       ; $6f63: $7a
    adc c                                         ; $6f64: $89
    cp c                                          ; $6f65: $b9
    halt                                          ; $6f66: $76
    ld a, b                                       ; $6f67: $78
    ld h, [hl]                                    ; $6f68: $66
    add a                                         ; $6f69: $87
    ld a, b                                       ; $6f6a: $78
    sbc b                                         ; $6f6b: $98
    ld b, a                                       ; $6f6c: $47
    jp z, $6876                                   ; $6f6d: $ca $76 $68

    add h                                         ; $6f70: $84
    ld e, b                                       ; $6f71: $58
    sbc c                                         ; $6f72: $99
    adc c                                         ; $6f73: $89
    sbc b                                         ; $6f74: $98
    ld [hl], l                                    ; $6f75: $75
    ld d, [hl]                                    ; $6f76: $56
    ld e, b                                       ; $6f77: $58
    xor b                                         ; $6f78: $a8
    sbc c                                         ; $6f79: $99
    ld h, a                                       ; $6f7a: $67
    ld [hl], a                                    ; $6f7b: $77
    adc b                                         ; $6f7c: $88
    or a                                          ; $6f7d: $b7
    ld l, c                                       ; $6f7e: $69
    and [hl]                                      ; $6f7f: $a6
    ld h, a                                       ; $6f80: $67
    ld h, h                                       ; $6f81: $64
    ld [hl], a                                    ; $6f82: $77
    cp h                                          ; $6f83: $bc
    and a                                         ; $6f84: $a7
    add [hl]                                      ; $6f85: $86
    ld e, b                                       ; $6f86: $58
    sbc b                                         ; $6f87: $98
    adc b                                         ; $6f88: $88
    sbc b                                         ; $6f89: $98
    add a                                         ; $6f8a: $87
    ld b, [hl]                                    ; $6f8b: $46
    ld h, a                                       ; $6f8c: $67
    cp d                                          ; $6f8d: $ba
    xor c                                         ; $6f8e: $a9
    ld h, l                                       ; $6f8f: $65
    adc d                                         ; $6f90: $8a
    ld h, a                                       ; $6f91: $67
    ld a, c                                       ; $6f92: $79
    ld a, c                                       ; $6f93: $79
    ld [hl], l                                    ; $6f94: $75
    ld d, a                                       ; $6f95: $57
    adc b                                         ; $6f96: $88
    ld h, a                                       ; $6f97: $67
    sbc c                                         ; $6f98: $99
    sbc b                                         ; $6f99: $98
    ld [hl], a                                    ; $6f9a: $77
    ld d, l                                       ; $6f9b: $55
    ld [hl], a                                    ; $6f9c: $77
    adc d                                         ; $6f9d: $8a
    sub l                                         ; $6f9e: $95
    ld l, b                                       ; $6f9f: $68
    sbc b                                         ; $6fa0: $98
    add a                                         ; $6fa1: $87
    ld d, a                                       ; $6fa2: $57
    adc b                                         ; $6fa3: $88
    sbc b                                         ; $6fa4: $98
    ld h, l                                       ; $6fa5: $65
    adc e                                         ; $6fa6: $8b
    cp c                                          ; $6fa7: $b9
    add l                                         ; $6fa8: $85
    ld [hl], $78                                  ; $6fa9: $36 $78
    add a                                         ; $6fab: $87
    ld a, c                                       ; $6fac: $79
    xor b                                         ; $6fad: $a8
    ld a, b                                       ; $6fae: $78
    adc b                                         ; $6faf: $88
    add [hl]                                      ; $6fb0: $86
    ld d, a                                       ; $6fb1: $57
    xor c                                         ; $6fb2: $a9
    adc b                                         ; $6fb3: $88
    adc b                                         ; $6fb4: $88
    add [hl]                                      ; $6fb5: $86
    ld a, c                                       ; $6fb6: $79
    halt                                          ; $6fb7: $76
    ld [hl], l                                    ; $6fb8: $75
    ld a, d                                       ; $6fb9: $7a
    cp b                                          ; $6fba: $b8
    sbc c                                         ; $6fbb: $99
    ld [hl], a                                    ; $6fbc: $77
    ld b, [hl]                                    ; $6fbd: $46
    sbc c                                         ; $6fbe: $99
    ld h, a                                       ; $6fbf: $67
    sub a                                         ; $6fc0: $97
    sbc d                                         ; $6fc1: $9a
    halt                                          ; $6fc2: $76
    ld a, c                                       ; $6fc3: $79
    adc b                                         ; $6fc4: $88
    adc b                                         ; $6fc5: $88
    ld h, l                                       ; $6fc6: $65
    ld h, a                                       ; $6fc7: $67
    ld a, c                                       ; $6fc8: $79
    cp b                                          ; $6fc9: $b8
    add a                                         ; $6fca: $87
    ld h, a                                       ; $6fcb: $67
    adc b                                         ; $6fcc: $88
    ld h, [hl]                                    ; $6fcd: $66
    ld a, c                                       ; $6fce: $79
    sbc c                                         ; $6fcf: $99
    sbc b                                         ; $6fd0: $98
    add l                                         ; $6fd1: $85
    ld h, a                                       ; $6fd2: $67
    ld d, a                                       ; $6fd3: $57
    xor e                                         ; $6fd4: $ab
    sub a                                         ; $6fd5: $97
    ld h, [hl]                                    ; $6fd6: $66
    ld h, a                                       ; $6fd7: $67
    ld a, b                                       ; $6fd8: $78
    xor e                                         ; $6fd9: $ab
    and a                                         ; $6fda: $a7
    ld d, h                                       ; $6fdb: $54
    ld e, b                                       ; $6fdc: $58
    add [hl]                                      ; $6fdd: $86
    adc d                                         ; $6fde: $8a
    cp c                                          ; $6fdf: $b9
    add a                                         ; $6fe0: $87
    halt                                          ; $6fe1: $76
    ld e, b                                       ; $6fe2: $58
    sbc c                                         ; $6fe3: $99
    and [hl]                                      ; $6fe4: $a6
    ld h, [hl]                                    ; $6fe5: $66
    ld h, l                                       ; $6fe6: $65
    ld h, a                                       ; $6fe7: $67
    xor e                                         ; $6fe8: $ab
    cp c                                          ; $6fe9: $b9
    halt                                          ; $6fea: $76
    ld b, h                                       ; $6feb: $44
    ld d, a                                       ; $6fec: $57
    sbc c                                         ; $6fed: $99
    xor h                                         ; $6fee: $ac
    and [hl]                                      ; $6fef: $a6
    adc b                                         ; $6ff0: $88
    ld h, h                                       ; $6ff1: $64
    ld e, b                                       ; $6ff2: $58
    adc d                                         ; $6ff3: $8a
    and a                                         ; $6ff4: $a7
    ld a, c                                       ; $6ff5: $79
    add a                                         ; $6ff6: $87
    add a                                         ; $6ff7: $87
    ld l, b                                       ; $6ff8: $68
    sbc c                                         ; $6ff9: $99
    add [hl]                                      ; $6ffa: $86
    ld d, a                                       ; $6ffb: $57
    ld [hl], a                                    ; $6ffc: $77
    sbc h                                         ; $6ffd: $9c
    add a                                         ; $6ffe: $87
    sub [hl]                                      ; $6fff: $96
    ld [hl], $67                                  ; $7000: $36 $67
    xor c                                         ; $7002: $a9
    ld a, c                                       ; $7003: $79
    and [hl]                                      ; $7004: $a6
    ld l, b                                       ; $7005: $68
    ld h, a                                       ; $7006: $67
    ld [hl], l                                    ; $7007: $75
    ld h, a                                       ; $7008: $67
    ld a, d                                       ; $7009: $7a
    cp d                                          ; $700a: $ba
    xor b                                         ; $700b: $a8
    add a                                         ; $700c: $87
    ld d, l                                       ; $700d: $55
    ld d, a                                       ; $700e: $57
    xor c                                         ; $700f: $a9
    sbc e                                         ; $7010: $9b
    add [hl]                                      ; $7011: $86
    ld h, a                                       ; $7012: $67
    ld h, [hl]                                    ; $7013: $66
    ld h, [hl]                                    ; $7014: $66
    sbc d                                         ; $7015: $9a
    adc b                                         ; $7016: $88
    sbc b                                         ; $7017: $98
    ld d, h                                       ; $7018: $54
    ld e, c                                       ; $7019: $59
    sbc c                                         ; $701a: $99
    add a                                         ; $701b: $87
    add l                                         ; $701c: $85
    ld [hl], $89                                  ; $701d: $36 $89
    xor b                                         ; $701f: $a8
    adc b                                         ; $7020: $88
    adc c                                         ; $7021: $89
    halt                                          ; $7022: $76
    ld h, l                                       ; $7023: $65
    ld e, c                                       ; $7024: $59
    sbc c                                         ; $7025: $99
    sub a                                         ; $7026: $97
    ld c, b                                       ; $7027: $48
    sbc b                                         ; $7028: $98
    sbc b                                         ; $7029: $98
    inc [hl]                                      ; $702a: $34
    sbc c                                         ; $702b: $99
    sbc c                                         ; $702c: $99
    ld h, a                                       ; $702d: $67
    add a                                         ; $702e: $87
    ld a, b                                       ; $702f: $78
    sbc b                                         ; $7030: $98
    sbc b                                         ; $7031: $98
    ld h, a                                       ; $7032: $67
    add [hl]                                      ; $7033: $86
    ld a, c                                       ; $7034: $79
    adc c                                         ; $7035: $89
    add a                                         ; $7036: $87
    adc b                                         ; $7037: $88
    ld a, b                                       ; $7038: $78
    ld a, b                                       ; $7039: $78
    ld [hl], a                                    ; $703a: $77
    add a                                         ; $703b: $87
    add [hl]                                      ; $703c: $86
    ld [hl], a                                    ; $703d: $77
    adc d                                         ; $703e: $8a
    xor c                                         ; $703f: $a9
    add a                                         ; $7040: $87
    ld b, l                                       ; $7041: $45
    ld [hl], a                                    ; $7042: $77
    ld h, a                                       ; $7043: $67
    sbc e                                         ; $7044: $9b
    and a                                         ; $7045: $a7
    ld d, [hl]                                    ; $7046: $56
    adc b                                         ; $7047: $88
    halt                                          ; $7048: $76
    halt                                          ; $7049: $76
    adc b                                         ; $704a: $88
    adc c                                         ; $704b: $89
    adc c                                         ; $704c: $89
    add [hl]                                      ; $704d: $86
    ld h, [hl]                                    ; $704e: $66
    ld d, h                                       ; $704f: $54
    adc d                                         ; $7050: $8a
    xor d                                         ; $7051: $aa
    and a                                         ; $7052: $a7
    add a                                         ; $7053: $87
    ld l, b                                       ; $7054: $68
    adc b                                         ; $7055: $88
    ld [hl], a                                    ; $7056: $77
    ld [hl], a                                    ; $7057: $77
    adc b                                         ; $7058: $88
    adc c                                         ; $7059: $89
    ld [hl], a                                    ; $705a: $77
    add a                                         ; $705b: $87
    adc b                                         ; $705c: $88
    adc b                                         ; $705d: $88
    ld h, [hl]                                    ; $705e: $66
    add a                                         ; $705f: $87
    add a                                         ; $7060: $87
    ld a, c                                       ; $7061: $79
    sbc c                                         ; $7062: $99
    add l                                         ; $7063: $85
    ld d, [hl]                                    ; $7064: $56
    ld d, l                                       ; $7065: $55
    adc e                                         ; $7066: $8b
    bit 6, [hl]                                   ; $7067: $cb $76
    halt                                          ; $7069: $76
    ld d, a                                       ; $706a: $57
    halt                                          ; $706b: $76
    ld a, b                                       ; $706c: $78
    adc c                                         ; $706d: $89
    add a                                         ; $706e: $87
    ld [hl], a                                    ; $706f: $77
    ld h, a                                       ; $7070: $67
    adc c                                         ; $7071: $89
    xor b                                         ; $7072: $a8
    ld d, l                                       ; $7073: $55
    ld h, a                                       ; $7074: $67
    ld a, c                                       ; $7075: $79
    sbc c                                         ; $7076: $99
    add a                                         ; $7077: $87
    ld h, [hl]                                    ; $7078: $66
    add a                                         ; $7079: $87
    ld a, b                                       ; $707a: $78
    ld a, c                                       ; $707b: $79
    add [hl]                                      ; $707c: $86
    sbc b                                         ; $707d: $98
    ld h, [hl]                                    ; $707e: $66
    adc b                                         ; $707f: $88
    adc b                                         ; $7080: $88
    adc b                                         ; $7081: $88
    add [hl]                                      ; $7082: $86
    ld l, b                                       ; $7083: $68
    adc d                                         ; $7084: $8a
    and [hl]                                      ; $7085: $a6
    ld d, l                                       ; $7086: $55
    ld l, c                                       ; $7087: $69
    sub a                                         ; $7088: $97
    ld a, c                                       ; $7089: $79
    halt                                          ; $708a: $76
    ld [hl], a                                    ; $708b: $77
    ld h, a                                       ; $708c: $67
    sub [hl]                                      ; $708d: $96
    ld a, b                                       ; $708e: $78
    adc b                                         ; $708f: $88
    add a                                         ; $7090: $87
    adc b                                         ; $7091: $88
    ld a, b                                       ; $7092: $78
    ld [hl], a                                    ; $7093: $77
    sbc d                                         ; $7094: $9a
    add h                                         ; $7095: $84
    ld c, b                                       ; $7096: $48
    sbc c                                         ; $7097: $99
    add [hl]                                      ; $7098: $86
    ld [hl], a                                    ; $7099: $77
    xor c                                         ; $709a: $a9
    halt                                          ; $709b: $76
    ld b, l                                       ; $709c: $45
    sbc d                                         ; $709d: $9a
    xor c                                         ; $709e: $a9
    ld h, l                                       ; $709f: $65
    ld d, [hl]                                    ; $70a0: $56
    ld a, b                                       ; $70a1: $78
    adc c                                         ; $70a2: $89
    xor c                                         ; $70a3: $a9
    adc b                                         ; $70a4: $88
    ld h, h                                       ; $70a5: $64
    ld h, a                                       ; $70a6: $67
    ld e, b                                       ; $70a7: $58
    xor e                                         ; $70a8: $ab
    xor b                                         ; $70a9: $a8
    ld d, l                                       ; $70aa: $55
    ld h, [hl]                                    ; $70ab: $66
    adc c                                         ; $70ac: $89
    ld a, b                                       ; $70ad: $78
    sbc b                                         ; $70ae: $98
    xor b                                         ; $70af: $a8
    add a                                         ; $70b0: $87
    add [hl]                                      ; $70b1: $86
    ld [hl], a                                    ; $70b2: $77
    ld a, d                                       ; $70b3: $7a
    add a                                         ; $70b4: $87
    adc b                                         ; $70b5: $88
    ld h, a                                       ; $70b6: $67
    xor c                                         ; $70b7: $a9
    adc c                                         ; $70b8: $89
    adc c                                         ; $70b9: $89
    halt                                          ; $70ba: $76
    ld a, b                                       ; $70bb: $78
    ld h, a                                       ; $70bc: $67
    ld a, b                                       ; $70bd: $78
    sbc c                                         ; $70be: $99
    ld a, b                                       ; $70bf: $78
    add l                                         ; $70c0: $85
    ld [hl], a                                    ; $70c1: $77
    ld h, a                                       ; $70c2: $67
    add [hl]                                      ; $70c3: $86
    adc d                                         ; $70c4: $8a
    sub a                                         ; $70c5: $97
    sub a                                         ; $70c6: $97
    adc d                                         ; $70c7: $8a
    ld h, [hl]                                    ; $70c8: $66
    ld d, h                                       ; $70c9: $54
    adc d                                         ; $70ca: $8a
    adc c                                         ; $70cb: $89
    adc d                                         ; $70cc: $8a
    sub [hl]                                      ; $70cd: $96
    ld a, b                                       ; $70ce: $78
    adc b                                         ; $70cf: $88
    ld d, l                                       ; $70d0: $55
    ld l, c                                       ; $70d1: $69
    sub a                                         ; $70d2: $97
    ld a, b                                       ; $70d3: $78
    adc b                                         ; $70d4: $88
    adc b                                         ; $70d5: $88
    add a                                         ; $70d6: $87
    ld [hl], a                                    ; $70d7: $77
    ld [hl], a                                    ; $70d8: $77
    adc b                                         ; $70d9: $88
    adc b                                         ; $70da: $88
    adc b                                         ; $70db: $88
    add a                                         ; $70dc: $87
    ld h, a                                       ; $70dd: $67
    adc c                                         ; $70de: $89
    sub [hl]                                      ; $70df: $96
    ld e, b                                       ; $70e0: $58
    sbc b                                         ; $70e1: $98
    sub a                                         ; $70e2: $97
    adc b                                         ; $70e3: $88
    ld h, [hl]                                    ; $70e4: $66
    adc b                                         ; $70e5: $88
    sbc b                                         ; $70e6: $98
    ld h, [hl]                                    ; $70e7: $66
    adc c                                         ; $70e8: $89
    adc b                                         ; $70e9: $88
    ld h, l                                       ; $70ea: $65
    ld a, b                                       ; $70eb: $78
    ld a, b                                       ; $70ec: $78
    ld a, c                                       ; $70ed: $79
    sbc b                                         ; $70ee: $98
    ld [hl], a                                    ; $70ef: $77
    sbc b                                         ; $70f0: $98
    halt                                          ; $70f1: $76
    ld [hl], a                                    ; $70f2: $77
    ld [hl], a                                    ; $70f3: $77
    xor d                                         ; $70f4: $aa
    sbc b                                         ; $70f5: $98
    ld h, [hl]                                    ; $70f6: $66
    ld l, b                                       ; $70f7: $68
    ld [hl], a                                    ; $70f8: $77
    ld [hl], a                                    ; $70f9: $77
    sbc d                                         ; $70fa: $9a
    and [hl]                                      ; $70fb: $a6
    ld b, l                                       ; $70fc: $45
    ld [hl], a                                    ; $70fd: $77
    ld l, c                                       ; $70fe: $69
    and a                                         ; $70ff: $a7
    ld h, [hl]                                    ; $7100: $66
    sbc d                                         ; $7101: $9a
    sub a                                         ; $7102: $97
    ld [hl], a                                    ; $7103: $77
    ld a, b                                       ; $7104: $78
    add [hl]                                      ; $7105: $86
    ld [hl], a                                    ; $7106: $77
    ld a, c                                       ; $7107: $79
    sbc c                                         ; $7108: $99
    ld [hl], e                                    ; $7109: $73
    ld e, d                                       ; $710a: $5a
    ret z                                         ; $710b: $c8

    ld b, a                                       ; $710c: $47
    and a                                         ; $710d: $a7
    ld e, d                                       ; $710e: $5a
    and [hl]                                      ; $710f: $a6
    ld h, a                                       ; $7110: $67
    adc b                                         ; $7111: $88
    ld d, h                                       ; $7112: $54
    ld a, d                                       ; $7113: $7a
    adc c                                         ; $7114: $89
    sbc b                                         ; $7115: $98
    ld [hl], a                                    ; $7116: $77
    ld a, c                                       ; $7117: $79
    sub a                                         ; $7118: $97
    add a                                         ; $7119: $87
    ld h, l                                       ; $711a: $65
    ld l, b                                       ; $711b: $68
    xor d                                         ; $711c: $aa
    adc b                                         ; $711d: $88
    xor b                                         ; $711e: $a8
    ld b, a                                       ; $711f: $47
    ld h, [hl]                                    ; $7120: $66
    adc b                                         ; $7121: $88
    sbc d                                         ; $7122: $9a
    sbc b                                         ; $7123: $98
    ld [hl], l                                    ; $7124: $75
    ld a, b                                       ; $7125: $78
    halt                                          ; $7126: $76
    ld a, b                                       ; $7127: $78
    add a                                         ; $7128: $87
    ld [hl], a                                    ; $7129: $77
    sbc b                                         ; $712a: $98
    ld a, c                                       ; $712b: $79
    adc b                                         ; $712c: $88
    add l                                         ; $712d: $85
    ld c, b                                       ; $712e: $48
    ld [hl], a                                    ; $712f: $77
    sbc d                                         ; $7130: $9a
    sbc c                                         ; $7131: $99
    ld [hl], a                                    ; $7132: $77
    ld [hl], l                                    ; $7133: $75
    ld [hl], a                                    ; $7134: $77
    ld a, b                                       ; $7135: $78
    sbc b                                         ; $7136: $98
    adc b                                         ; $7137: $88
    adc b                                         ; $7138: $88
    sbc b                                         ; $7139: $98
    ld h, a                                       ; $713a: $67
    ld [hl], a                                    ; $713b: $77
    ld [hl], a                                    ; $713c: $77
    ld h, a                                       ; $713d: $67
    ld h, a                                       ; $713e: $67
    sbc b                                         ; $713f: $98
    adc d                                         ; $7140: $8a
    xor b                                         ; $7141: $a8
    ld h, [hl]                                    ; $7142: $66
    ld h, a                                       ; $7143: $67
    halt                                          ; $7144: $76
    ld [hl], a                                    ; $7145: $77
    xor e                                         ; $7146: $ab
    sub a                                         ; $7147: $97
    halt                                          ; $7148: $76
    ld d, [hl]                                    ; $7149: $56
    halt                                          ; $714a: $76
    adc c                                         ; $714b: $89
    add a                                         ; $714c: $87
    adc b                                         ; $714d: $88
    add a                                         ; $714e: $87
    ld a, c                                       ; $714f: $79
    add a                                         ; $7150: $87
    ld [hl], a                                    ; $7151: $77
    adc c                                         ; $7152: $89
    add [hl]                                      ; $7153: $86
    halt                                          ; $7154: $76
    ld a, d                                       ; $7155: $7a
    and a                                         ; $7156: $a7
    ld h, [hl]                                    ; $7157: $66
    ld a, c                                       ; $7158: $79
    sbc b                                         ; $7159: $98
    sub a                                         ; $715a: $97
    ld h, a                                       ; $715b: $67
    ld h, [hl]                                    ; $715c: $66
    ld a, c                                       ; $715d: $79
    sbc b                                         ; $715e: $98
    ld [hl], a                                    ; $715f: $77
    ld h, [hl]                                    ; $7160: $66
    ld h, a                                       ; $7161: $67
    adc b                                         ; $7162: $88
    sbc c                                         ; $7163: $99
    sbc b                                         ; $7164: $98
    add [hl]                                      ; $7165: $86
    ld d, l                                       ; $7166: $55
    ld a, b                                       ; $7167: $78
    sbc d                                         ; $7168: $9a
    add l                                         ; $7169: $85
    ld d, a                                       ; $716a: $57
    ld [hl], a                                    ; $716b: $77
    ld [hl], a                                    ; $716c: $77
    ld [hl], a                                    ; $716d: $77
    adc d                                         ; $716e: $8a
    sub a                                         ; $716f: $97
    add [hl]                                      ; $7170: $86
    adc b                                         ; $7171: $88
    ld [hl], a                                    ; $7172: $77
    adc d                                         ; $7173: $8a
    adc b                                         ; $7174: $88
    ld [hl], a                                    ; $7175: $77
    ld a, b                                       ; $7176: $78
    ld [hl], a                                    ; $7177: $77
    add a                                         ; $7178: $87
    ld a, b                                       ; $7179: $78
    ld a, b                                       ; $717a: $78
    add [hl]                                      ; $717b: $86
    halt                                          ; $717c: $76
    ld l, c                                       ; $717d: $69
    sub a                                         ; $717e: $97
    add [hl]                                      ; $717f: $86
    ld l, b                                       ; $7180: $68
    ld [hl], a                                    ; $7181: $77
    xor d                                         ; $7182: $aa
    adc b                                         ; $7183: $88
    ld h, l                                       ; $7184: $65
    ld h, a                                       ; $7185: $67
    ld a, c                                       ; $7186: $79
    sbc b                                         ; $7187: $98
    sub a                                         ; $7188: $97
    ld d, a                                       ; $7189: $57
    sub a                                         ; $718a: $97
    add a                                         ; $718b: $87
    adc c                                         ; $718c: $89
    add [hl]                                      ; $718d: $86
    ld a, b                                       ; $718e: $78
    ld l, b                                       ; $718f: $68
    sbc b                                         ; $7190: $98
    sbc c                                         ; $7191: $99
    adc b                                         ; $7192: $88
    ld h, [hl]                                    ; $7193: $66
    ld h, a                                       ; $7194: $67
    adc c                                         ; $7195: $89
    add a                                         ; $7196: $87
    sbc b                                         ; $7197: $98
    ld a, b                                       ; $7198: $78
    halt                                          ; $7199: $76
    halt                                          ; $719a: $76
    add a                                         ; $719b: $87
    ld [hl], a                                    ; $719c: $77
    ld [hl], a                                    ; $719d: $77
    sbc d                                         ; $719e: $9a
    sub a                                         ; $719f: $97
    adc b                                         ; $71a0: $88
    halt                                          ; $71a1: $76
    ld d, [hl]                                    ; $71a2: $56
    sbc b                                         ; $71a3: $98
    ld l, c                                       ; $71a4: $69
    sbc c                                         ; $71a5: $99
    sub a                                         ; $71a6: $97
    halt                                          ; $71a7: $76
    ld d, l                                       ; $71a8: $55
    adc b                                         ; $71a9: $88
    xor c                                         ; $71aa: $a9
    sbc c                                         ; $71ab: $99
    add [hl]                                      ; $71ac: $86
    ld l, b                                       ; $71ad: $68
    adc b                                         ; $71ae: $88
    ld [hl], a                                    ; $71af: $77
    adc b                                         ; $71b0: $88
    add a                                         ; $71b1: $87
    ld [hl], a                                    ; $71b2: $77
    ld a, b                                       ; $71b3: $78
    ld a, c                                       ; $71b4: $79
    sbc b                                         ; $71b5: $98
    sub l                                         ; $71b6: $95
    ld b, [hl]                                    ; $71b7: $46
    ld [hl], a                                    ; $71b8: $77
    adc b                                         ; $71b9: $88
    xor d                                         ; $71ba: $aa
    add a                                         ; $71bb: $87
    ld h, [hl]                                    ; $71bc: $66
    ld [hl], a                                    ; $71bd: $77
    ld h, a                                       ; $71be: $67
    adc c                                         ; $71bf: $89
    sbc c                                         ; $71c0: $99
    adc c                                         ; $71c1: $89
    add l                                         ; $71c2: $85
    ld d, a                                       ; $71c3: $57
    adc b                                         ; $71c4: $88
    add a                                         ; $71c5: $87
    ld h, a                                       ; $71c6: $67
    ld a, c                                       ; $71c7: $79
    sbc b                                         ; $71c8: $98
    ld a, b                                       ; $71c9: $78
    add a                                         ; $71ca: $87
    ld [hl], l                                    ; $71cb: $75
    ld a, b                                       ; $71cc: $78
    ld [hl], a                                    ; $71cd: $77
    sbc c                                         ; $71ce: $99
    ld [hl], a                                    ; $71cf: $77
    add [hl]                                      ; $71d0: $86
    ld a, b                                       ; $71d1: $78
    sbc c                                         ; $71d2: $99
    ld h, a                                       ; $71d3: $67
    halt                                          ; $71d4: $76
    ld a, b                                       ; $71d5: $78
    add a                                         ; $71d6: $87
    ld a, c                                       ; $71d7: $79
    xor b                                         ; $71d8: $a8
    ld [hl], l                                    ; $71d9: $75
    ld d, [hl]                                    ; $71da: $56
    adc c                                         ; $71db: $89
    sbc b                                         ; $71dc: $98
    ld a, c                                       ; $71dd: $79
    sbc b                                         ; $71de: $98
    halt                                          ; $71df: $76
    ld h, a                                       ; $71e0: $67
    ld [hl], a                                    ; $71e1: $77
    adc c                                         ; $71e2: $89
    add a                                         ; $71e3: $87
    ld [hl], l                                    ; $71e4: $75
    ld a, c                                       ; $71e5: $79
    adc b                                         ; $71e6: $88
    and a                                         ; $71e7: $a7
    ld d, [hl]                                    ; $71e8: $56
    ld [hl], a                                    ; $71e9: $77
    ld a, b                                       ; $71ea: $78
    xor c                                         ; $71eb: $a9
    halt                                          ; $71ec: $76
    ld l, c                                       ; $71ed: $69
    and a                                         ; $71ee: $a7
    ld d, [hl]                                    ; $71ef: $56
    adc c                                         ; $71f0: $89
    sub a                                         ; $71f1: $97
    ld h, a                                       ; $71f2: $67
    sbc b                                         ; $71f3: $98
    ld l, c                                       ; $71f4: $69
    sub a                                         ; $71f5: $97
    ld [hl], a                                    ; $71f6: $77
    adc b                                         ; $71f7: $88
    adc b                                         ; $71f8: $88
    ld a, b                                       ; $71f9: $78
    adc b                                         ; $71fa: $88
    adc b                                         ; $71fb: $88
    adc b                                         ; $71fc: $88
    ld h, [hl]                                    ; $71fd: $66
    ld [hl], a                                    ; $71fe: $77
    adc b                                         ; $71ff: $88
    adc c                                         ; $7200: $89
    adc b                                         ; $7201: $88
    add a                                         ; $7202: $87
    ld d, a                                       ; $7203: $57
    add a                                         ; $7204: $87
    ld a, c                                       ; $7205: $79
    adc b                                         ; $7206: $88
    halt                                          ; $7207: $76
    ld [hl], a                                    ; $7208: $77
    ld a, c                                       ; $7209: $79
    sbc b                                         ; $720a: $98
    add a                                         ; $720b: $87
    ld a, b                                       ; $720c: $78
    halt                                          ; $720d: $76
    sbc c                                         ; $720e: $99
    adc b                                         ; $720f: $88
    adc b                                         ; $7210: $88
    halt                                          ; $7211: $76
    adc c                                         ; $7212: $89
    ld a, b                                       ; $7213: $78
    xor c                                         ; $7214: $a9
    add [hl]                                      ; $7215: $86
    ld h, [hl]                                    ; $7216: $66
    ld h, a                                       ; $7217: $67
    sbc c                                         ; $7218: $99
    sbc b                                         ; $7219: $98
    ld [hl], a                                    ; $721a: $77
    ld [hl], a                                    ; $721b: $77
    ld d, [hl]                                    ; $721c: $56
    ld a, b                                       ; $721d: $78
    xor d                                         ; $721e: $aa
    sbc b                                         ; $721f: $98
    add [hl]                                      ; $7220: $86
    ld h, a                                       ; $7221: $67
    ld [hl], a                                    ; $7222: $77
    adc c                                         ; $7223: $89
    xor b                                         ; $7224: $a8
    ld [hl], a                                    ; $7225: $77
    ld [hl], a                                    ; $7226: $77
    ld a, b                                       ; $7227: $78
    sbc b                                         ; $7228: $98
    ld [hl], a                                    ; $7229: $77
    ld l, b                                       ; $722a: $68
    add a                                         ; $722b: $87
    ld l, b                                       ; $722c: $68
    halt                                          ; $722d: $76
    sbc c                                         ; $722e: $99
    sbc b                                         ; $722f: $98
    ld h, a                                       ; $7230: $67
    add [hl]                                      ; $7231: $86
    ld l, b                                       ; $7232: $68
    sbc c                                         ; $7233: $99
    ld [hl], a                                    ; $7234: $77
    ld a, b                                       ; $7235: $78
    ld [hl], a                                    ; $7236: $77
    adc b                                         ; $7237: $88
    ld [hl], a                                    ; $7238: $77
    halt                                          ; $7239: $76
    adc c                                         ; $723a: $89
    adc b                                         ; $723b: $88
    sbc c                                         ; $723c: $99
    add a                                         ; $723d: $87
    ld h, [hl]                                    ; $723e: $66
    halt                                          ; $723f: $76
    adc b                                         ; $7240: $88
    adc c                                         ; $7241: $89
    adc b                                         ; $7242: $88
    sub [hl]                                      ; $7243: $96
    ld [hl], a                                    ; $7244: $77
    adc b                                         ; $7245: $88
    sbc b                                         ; $7246: $98
    ld [hl], a                                    ; $7247: $77
    halt                                          ; $7248: $76
    ld [hl], a                                    ; $7249: $77
    ld [hl], a                                    ; $724a: $77
    adc c                                         ; $724b: $89
    xor c                                         ; $724c: $a9
    add [hl]                                      ; $724d: $86
    ld d, [hl]                                    ; $724e: $56
    ld l, b                                       ; $724f: $68
    adc c                                         ; $7250: $89
    sbc b                                         ; $7251: $98
    sub [hl]                                      ; $7252: $96
    ld d, a                                       ; $7253: $57
    ld [hl], a                                    ; $7254: $77
    ld a, b                                       ; $7255: $78
    adc c                                         ; $7256: $89
    add [hl]                                      ; $7257: $86
    ld a, b                                       ; $7258: $78
    sbc b                                         ; $7259: $98
    ld [hl], a                                    ; $725a: $77
    ld [hl], a                                    ; $725b: $77
    ld [hl], a                                    ; $725c: $77
    ld [hl], a                                    ; $725d: $77
    sbc c                                         ; $725e: $99
    sbc b                                         ; $725f: $98
    adc b                                         ; $7260: $88
    add [hl]                                      ; $7261: $86
    ld h, [hl]                                    ; $7262: $66
    adc c                                         ; $7263: $89
    adc b                                         ; $7264: $88
    sbc c                                         ; $7265: $99
    sbc b                                         ; $7266: $98
    ld h, [hl]                                    ; $7267: $66
    ld l, b                                       ; $7268: $68
    ld [hl], a                                    ; $7269: $77
    ld [hl], a                                    ; $726a: $77
    adc b                                         ; $726b: $88
    ld [hl], a                                    ; $726c: $77
    adc c                                         ; $726d: $89
    sbc b                                         ; $726e: $98
    ld [hl], a                                    ; $726f: $77
    add [hl]                                      ; $7270: $86
    ld h, [hl]                                    ; $7271: $66
    ld a, c                                       ; $7272: $79
    sbc c                                         ; $7273: $99
    sbc b                                         ; $7274: $98
    ld [hl], a                                    ; $7275: $77
    ld [hl], a                                    ; $7276: $77
    ld h, a                                       ; $7277: $67
    adc b                                         ; $7278: $88
    adc c                                         ; $7279: $89
    sbc c                                         ; $727a: $99
    halt                                          ; $727b: $76
    ld [hl], a                                    ; $727c: $77
    adc b                                         ; $727d: $88
    add a                                         ; $727e: $87
    ld a, b                                       ; $727f: $78
    add a                                         ; $7280: $87
    ld [hl], a                                    ; $7281: $77
    adc c                                         ; $7282: $89
    sub a                                         ; $7283: $97
    add a                                         ; $7284: $87
    ld [hl], a                                    ; $7285: $77
    ld h, a                                       ; $7286: $67
    ld a, b                                       ; $7287: $78
    add a                                         ; $7288: $87
    ld a, b                                       ; $7289: $78
    add a                                         ; $728a: $87
    ld a, b                                       ; $728b: $78
    ld a, b                                       ; $728c: $78
    add a                                         ; $728d: $87
    ld a, b                                       ; $728e: $78
    add [hl]                                      ; $728f: $86
    ld h, a                                       ; $7290: $67
    sbc d                                         ; $7291: $9a
    sub a                                         ; $7292: $97
    ld [hl], a                                    ; $7293: $77
    halt                                          ; $7294: $76
    halt                                          ; $7295: $76
    ld a, c                                       ; $7296: $79
    sbc c                                         ; $7297: $99
    ld a, b                                       ; $7298: $78
    add a                                         ; $7299: $87
    ld h, [hl]                                    ; $729a: $66
    ld a, c                                       ; $729b: $79
    adc b                                         ; $729c: $88
    adc b                                         ; $729d: $88
    adc b                                         ; $729e: $88
    add [hl]                                      ; $729f: $86
    adc b                                         ; $72a0: $88
    adc b                                         ; $72a1: $88
    halt                                          ; $72a2: $76
    ld [hl], a                                    ; $72a3: $77
    ld [hl], a                                    ; $72a4: $77
    ld a, b                                       ; $72a5: $78
    sbc b                                         ; $72a6: $98
    add a                                         ; $72a7: $87
    halt                                          ; $72a8: $76
    ld h, a                                       ; $72a9: $67
    ld a, b                                       ; $72aa: $78
    sbc c                                         ; $72ab: $99
    sbc b                                         ; $72ac: $98
    ld h, a                                       ; $72ad: $67
    ld h, a                                       ; $72ae: $67
    ld a, b                                       ; $72af: $78
    adc c                                         ; $72b0: $89
    ld [hl], a                                    ; $72b1: $77
    ld [hl], a                                    ; $72b2: $77
    sbc c                                         ; $72b3: $99
    add a                                         ; $72b4: $87
    sbc c                                         ; $72b5: $99
    add a                                         ; $72b6: $87
    ld d, l                                       ; $72b7: $55
    ld a, b                                       ; $72b8: $78
    sbc b                                         ; $72b9: $98
    adc b                                         ; $72ba: $88
    ld [hl], a                                    ; $72bb: $77
    sbc b                                         ; $72bc: $98
    ld h, [hl]                                    ; $72bd: $66
    ld [hl], a                                    ; $72be: $77
    adc c                                         ; $72bf: $89
    add a                                         ; $72c0: $87
    add a                                         ; $72c1: $87
    add a                                         ; $72c2: $87
    ld [hl], a                                    ; $72c3: $77
    adc b                                         ; $72c4: $88
    adc b                                         ; $72c5: $88
    ld [hl], a                                    ; $72c6: $77
    ld h, a                                       ; $72c7: $67
    add a                                         ; $72c8: $87
    adc b                                         ; $72c9: $88
    adc c                                         ; $72ca: $89
    add a                                         ; $72cb: $87
    ld [hl], a                                    ; $72cc: $77
    ld l, b                                       ; $72cd: $68
    ld [hl], a                                    ; $72ce: $77
    sbc b                                         ; $72cf: $98
    adc b                                         ; $72d0: $88
    adc b                                         ; $72d1: $88
    add [hl]                                      ; $72d2: $86
    ld a, b                                       ; $72d3: $78
    adc b                                         ; $72d4: $88
    ld [hl], a                                    ; $72d5: $77
    ld [hl], a                                    ; $72d6: $77
    adc c                                         ; $72d7: $89
    sbc b                                         ; $72d8: $98
    halt                                          ; $72d9: $76
    ld h, a                                       ; $72da: $67
    add a                                         ; $72db: $87
    ld a, b                                       ; $72dc: $78
    adc b                                         ; $72dd: $88
    adc b                                         ; $72de: $88
    halt                                          ; $72df: $76
    adc b                                         ; $72e0: $88
    ld [hl], a                                    ; $72e1: $77
    adc c                                         ; $72e2: $89
    sbc b                                         ; $72e3: $98
    halt                                          ; $72e4: $76
    ld h, a                                       ; $72e5: $67
    adc c                                         ; $72e6: $89
    sbc b                                         ; $72e7: $98
    add a                                         ; $72e8: $87
    ld [hl], a                                    ; $72e9: $77
    ld l, c                                       ; $72ea: $69
    add a                                         ; $72eb: $87
    ld a, c                                       ; $72ec: $79
    adc b                                         ; $72ed: $88
    ld [hl], a                                    ; $72ee: $77
    add [hl]                                      ; $72ef: $86
    adc c                                         ; $72f0: $89
    ld [hl], a                                    ; $72f1: $77
    ld [hl], a                                    ; $72f2: $77
    ld a, b                                       ; $72f3: $78
    ld [hl], a                                    ; $72f4: $77
    ld [hl], a                                    ; $72f5: $77
    adc b                                         ; $72f6: $88
    adc b                                         ; $72f7: $88
    halt                                          ; $72f8: $76
    ld [hl], a                                    ; $72f9: $77
    adc b                                         ; $72fa: $88
    halt                                          ; $72fb: $76
    sbc c                                         ; $72fc: $99
    adc b                                         ; $72fd: $88
    ld h, [hl]                                    ; $72fe: $66
    adc b                                         ; $72ff: $88
    adc b                                         ; $7300: $88
    ld a, b                                       ; $7301: $78
    sbc b                                         ; $7302: $98
    ld d, a                                       ; $7303: $57
    ld a, b                                       ; $7304: $78
    sbc b                                         ; $7305: $98
    add a                                         ; $7306: $87
    ld h, [hl]                                    ; $7307: $66
    ld [hl], a                                    ; $7308: $77
    ld [hl], a                                    ; $7309: $77
    adc c                                         ; $730a: $89
    adc c                                         ; $730b: $89
    sub a                                         ; $730c: $97
    ld a, b                                       ; $730d: $78
    ld d, a                                       ; $730e: $57
    add a                                         ; $730f: $87
    sbc b                                         ; $7310: $98
    ld a, b                                       ; $7311: $78
    adc b                                         ; $7312: $88
    add a                                         ; $7313: $87
    ld l, b                                       ; $7314: $68
    ld [hl], a                                    ; $7315: $77
    add a                                         ; $7316: $87
    ld a, b                                       ; $7317: $78
    ld [hl], a                                    ; $7318: $77
    adc b                                         ; $7319: $88
    sbc c                                         ; $731a: $99
    halt                                          ; $731b: $76
    halt                                          ; $731c: $76
    ld l, c                                       ; $731d: $69
    sbc b                                         ; $731e: $98
    add a                                         ; $731f: $87
    add a                                         ; $7320: $87
    ld a, b                                       ; $7321: $78
    ld [hl], a                                    ; $7322: $77
    ld a, b                                       ; $7323: $78
    adc c                                         ; $7324: $89
    halt                                          ; $7325: $76
    adc b                                         ; $7326: $88
    ld a, b                                       ; $7327: $78
    ld [hl], a                                    ; $7328: $77
    adc b                                         ; $7329: $88
    add [hl]                                      ; $732a: $86
    ld d, a                                       ; $732b: $57
    add a                                         ; $732c: $87
    adc b                                         ; $732d: $88
    ld a, b                                       ; $732e: $78
    add [hl]                                      ; $732f: $86
    add a                                         ; $7330: $87
    ld [hl], a                                    ; $7331: $77
    adc b                                         ; $7332: $88
    ld a, b                                       ; $7333: $78
    add a                                         ; $7334: $87
    ld h, [hl]                                    ; $7335: $66
    add a                                         ; $7336: $87
    adc c                                         ; $7337: $89
    adc b                                         ; $7338: $88
    add a                                         ; $7339: $87
    ld [hl], a                                    ; $733a: $77
    ld a, b                                       ; $733b: $78
    adc b                                         ; $733c: $88
    ld a, b                                       ; $733d: $78
    sbc b                                         ; $733e: $98
    ld [hl], a                                    ; $733f: $77
    adc b                                         ; $7340: $88
    ld [hl], a                                    ; $7341: $77
    ld [hl], a                                    ; $7342: $77
    adc b                                         ; $7343: $88
    adc b                                         ; $7344: $88
    ld [hl], a                                    ; $7345: $77
    ld a, b                                       ; $7346: $78
    ld a, b                                       ; $7347: $78
    add a                                         ; $7348: $87
    ld [hl], a                                    ; $7349: $77
    ld a, b                                       ; $734a: $78
    ld [hl], a                                    ; $734b: $77
    adc c                                         ; $734c: $89
    adc b                                         ; $734d: $88
    ld [hl], a                                    ; $734e: $77
    ld [hl], a                                    ; $734f: $77
    adc b                                         ; $7350: $88
    sbc b                                         ; $7351: $98
    adc b                                         ; $7352: $88
    ld [hl], a                                    ; $7353: $77
    ld a, b                                       ; $7354: $78
    ld [hl], a                                    ; $7355: $77
    add a                                         ; $7356: $87
    adc b                                         ; $7357: $88
    ld [hl], a                                    ; $7358: $77
    add a                                         ; $7359: $87
    ld a, b                                       ; $735a: $78
    adc b                                         ; $735b: $88
    ld [hl], a                                    ; $735c: $77
    ld [hl], a                                    ; $735d: $77
    ld [hl], a                                    ; $735e: $77
    ld [hl], a                                    ; $735f: $77
    adc b                                         ; $7360: $88
    adc c                                         ; $7361: $89
    sub a                                         ; $7362: $97
    ld h, a                                       ; $7363: $67
    ld [hl], a                                    ; $7364: $77
    ld a, b                                       ; $7365: $78
    adc b                                         ; $7366: $88
    ld a, b                                       ; $7367: $78
    adc b                                         ; $7368: $88
    adc b                                         ; $7369: $88
    ld a, b                                       ; $736a: $78
    halt                                          ; $736b: $76
    ld a, b                                       ; $736c: $78
    adc b                                         ; $736d: $88
    ld [hl], a                                    ; $736e: $77
    adc b                                         ; $736f: $88
    adc b                                         ; $7370: $88
    ld [hl], a                                    ; $7371: $77
    ld [hl], a                                    ; $7372: $77
    ld [hl], a                                    ; $7373: $77
    ld h, a                                       ; $7374: $67
    adc b                                         ; $7375: $88
    adc b                                         ; $7376: $88
    adc c                                         ; $7377: $89
    halt                                          ; $7378: $76
    ld [hl], a                                    ; $7379: $77
    adc b                                         ; $737a: $88
    ld [hl], a                                    ; $737b: $77
    adc b                                         ; $737c: $88
    adc b                                         ; $737d: $88
    ld [hl], a                                    ; $737e: $77
    adc b                                         ; $737f: $88
    add a                                         ; $7380: $87
    ld [hl], a                                    ; $7381: $77
    ld [hl], a                                    ; $7382: $77
    adc b                                         ; $7383: $88
    adc b                                         ; $7384: $88
    add [hl]                                      ; $7385: $86
    ld h, a                                       ; $7386: $67
    ld a, b                                       ; $7387: $78
    ld [hl], a                                    ; $7388: $77
    adc c                                         ; $7389: $89
    ld a, b                                       ; $738a: $78
    ld [hl], a                                    ; $738b: $77
    ld [hl], a                                    ; $738c: $77
    ld a, b                                       ; $738d: $78
    sbc b                                         ; $738e: $98
    adc b                                         ; $738f: $88
    add a                                         ; $7390: $87
    ld [hl], a                                    ; $7391: $77
    adc b                                         ; $7392: $88
    adc c                                         ; $7393: $89
    add a                                         ; $7394: $87
    ld a, b                                       ; $7395: $78
    ld [hl], a                                    ; $7396: $77
    ld [hl], a                                    ; $7397: $77
    ld a, b                                       ; $7398: $78
    adc b                                         ; $7399: $88

Jump_010_739a:
    add a                                         ; $739a: $87
    adc b                                         ; $739b: $88
    ld [hl], a                                    ; $739c: $77
    ld [hl], a                                    ; $739d: $77
    ld [hl], a                                    ; $739e: $77
    ld h, a                                       ; $739f: $67
    add a                                         ; $73a0: $87
    adc c                                         ; $73a1: $89
    adc c                                         ; $73a2: $89
    add a                                         ; $73a3: $87
    ld h, [hl]                                    ; $73a4: $66
    ld a, b                                       ; $73a5: $78
    adc b                                         ; $73a6: $88
    adc b                                         ; $73a7: $88
    sbc c                                         ; $73a8: $99
    ld h, [hl]                                    ; $73a9: $66
    ld [hl], a                                    ; $73aa: $77
    ld a, b                                       ; $73ab: $78
    ld [hl], a                                    ; $73ac: $77
    adc b                                         ; $73ad: $88
    ld [hl], a                                    ; $73ae: $77
    ld [hl], a                                    ; $73af: $77
    adc b                                         ; $73b0: $88
    adc b                                         ; $73b1: $88
    ld [hl], a                                    ; $73b2: $77
    ld [hl], a                                    ; $73b3: $77
    ld [hl], a                                    ; $73b4: $77
    ld [hl], a                                    ; $73b5: $77
    adc b                                         ; $73b6: $88
    adc b                                         ; $73b7: $88
    adc b                                         ; $73b8: $88
    halt                                          ; $73b9: $76
    ld h, a                                       ; $73ba: $67
    adc b                                         ; $73bb: $88
    add a                                         ; $73bc: $87
    adc c                                         ; $73bd: $89
    add a                                         ; $73be: $87
    ld [hl], a                                    ; $73bf: $77
    adc b                                         ; $73c0: $88
    ld a, b                                       ; $73c1: $78
    add a                                         ; $73c2: $87
    ld a, b                                       ; $73c3: $78
    adc c                                         ; $73c4: $89
    sub a                                         ; $73c5: $97
    ld [hl], a                                    ; $73c6: $77
    ld h, a                                       ; $73c7: $67
    ld [hl], a                                    ; $73c8: $77
    ld a, b                                       ; $73c9: $78
    adc b                                         ; $73ca: $88
    sbc b                                         ; $73cb: $98
    ld [hl], a                                    ; $73cc: $77
    ld a, b                                       ; $73cd: $78
    add a                                         ; $73ce: $87
    ld [hl], a                                    ; $73cf: $77
    adc b                                         ; $73d0: $88
    add a                                         ; $73d1: $87
    ld a, b                                       ; $73d2: $78
    adc b                                         ; $73d3: $88
    ld [hl], a                                    ; $73d4: $77
    adc c                                         ; $73d5: $89
    ld [hl], a                                    ; $73d6: $77
    ld [hl], a                                    ; $73d7: $77
    ld a, b                                       ; $73d8: $78
    adc b                                         ; $73d9: $88
    adc b                                         ; $73da: $88
    add a                                         ; $73db: $87
    ld a, b                                       ; $73dc: $78
    ld [hl], a                                    ; $73dd: $77
    ld [hl], a                                    ; $73de: $77
    adc c                                         ; $73df: $89
    add a                                         ; $73e0: $87
    ld a, b                                       ; $73e1: $78
    ld a, b                                       ; $73e2: $78
    add a                                         ; $73e3: $87
    ld a, b                                       ; $73e4: $78
    ld a, b                                       ; $73e5: $78
    ld [hl], a                                    ; $73e6: $77
    ld [hl], a                                    ; $73e7: $77
    ld a, b                                       ; $73e8: $78
    sbc b                                         ; $73e9: $98
    add a                                         ; $73ea: $87
    ld h, a                                       ; $73eb: $67
    halt                                          ; $73ec: $76
    ld a, b                                       ; $73ed: $78
    adc c                                         ; $73ee: $89
    adc b                                         ; $73ef: $88
    add a                                         ; $73f0: $87
    ld [hl], a                                    ; $73f1: $77
    ld a, b                                       ; $73f2: $78
    sbc b                                         ; $73f3: $98
    ld a, b                                       ; $73f4: $78
    ld [hl], a                                    ; $73f5: $77
    ld [hl], a                                    ; $73f6: $77
    ld a, b                                       ; $73f7: $78
    sbc b                                         ; $73f8: $98
    add a                                         ; $73f9: $87
    ld a, b                                       ; $73fa: $78
    ld [hl], a                                    ; $73fb: $77
    halt                                          ; $73fc: $76
    ld a, c                                       ; $73fd: $79
    sbc b                                         ; $73fe: $98
    ld [hl], a                                    ; $73ff: $77
    add a                                         ; $7400: $87
    ld [hl], a                                    ; $7401: $77
    ld [hl], a                                    ; $7402: $77
    adc b                                         ; $7403: $88
    adc b                                         ; $7404: $88
    ld [hl], a                                    ; $7405: $77
    ld [hl], a                                    ; $7406: $77
    ld [hl], a                                    ; $7407: $77
    add a                                         ; $7408: $87
    ld a, b                                       ; $7409: $78
    ld [hl], a                                    ; $740a: $77
    ld [hl], a                                    ; $740b: $77
    adc b                                         ; $740c: $88
    adc b                                         ; $740d: $88
    add a                                         ; $740e: $87
    ld a, b                                       ; $740f: $78
    adc b                                         ; $7410: $88
    adc b                                         ; $7411: $88
    ld a, b                                       ; $7412: $78
    ld [hl], a                                    ; $7413: $77
    adc b                                         ; $7414: $88
    adc b                                         ; $7415: $88
    adc b                                         ; $7416: $88
    add a                                         ; $7417: $87
    ld h, a                                       ; $7418: $67
    ld [hl], a                                    ; $7419: $77
    adc b                                         ; $741a: $88
    ld a, b                                       ; $741b: $78
    adc b                                         ; $741c: $88
    add [hl]                                      ; $741d: $86
    ld [hl], a                                    ; $741e: $77
    ld h, a                                       ; $741f: $67
    adc b                                         ; $7420: $88
    sbc c                                         ; $7421: $99
    add a                                         ; $7422: $87
    ld [hl], a                                    ; $7423: $77
    ld [hl], a                                    ; $7424: $77
    ld a, b                                       ; $7425: $78
    sbc b                                         ; $7426: $98
    add a                                         ; $7427: $87
    adc b                                         ; $7428: $88
    ld [hl], a                                    ; $7429: $77
    adc b                                         ; $742a: $88
    adc b                                         ; $742b: $88
    add [hl]                                      ; $742c: $86
    ld a, b                                       ; $742d: $78
    adc b                                         ; $742e: $88
    ld [hl], a                                    ; $742f: $77
    sbc b                                         ; $7430: $98
    ld [hl], a                                    ; $7431: $77
    ld h, [hl]                                    ; $7432: $66
    ld [hl], a                                    ; $7433: $77
    ld a, b                                       ; $7434: $78
    adc b                                         ; $7435: $88
    add a                                         ; $7436: $87
    ld a, b                                       ; $7437: $78
    ld [hl], a                                    ; $7438: $77
    adc b                                         ; $7439: $88
    adc b                                         ; $743a: $88
    halt                                          ; $743b: $76
    ld [hl], a                                    ; $743c: $77
    adc b                                         ; $743d: $88
    add a                                         ; $743e: $87
    adc b                                         ; $743f: $88
    add a                                         ; $7440: $87
    ld [hl], a                                    ; $7441: $77
    adc b                                         ; $7442: $88
    ld [hl], a                                    ; $7443: $77
    adc b                                         ; $7444: $88
    add a                                         ; $7445: $87
    ld a, b                                       ; $7446: $78
    add a                                         ; $7447: $87
    add a                                         ; $7448: $87
    ld a, b                                       ; $7449: $78
    ld a, b                                       ; $744a: $78
    add a                                         ; $744b: $87
    ld [hl], a                                    ; $744c: $77
    ld [hl], a                                    ; $744d: $77
    adc b                                         ; $744e: $88
    adc b                                         ; $744f: $88
    add a                                         ; $7450: $87
    ld [hl], a                                    ; $7451: $77
    ld a, b                                       ; $7452: $78
    adc b                                         ; $7453: $88
    add a                                         ; $7454: $87
    ld a, b                                       ; $7455: $78
    ld a, b                                       ; $7456: $78
    add a                                         ; $7457: $87
    ld a, b                                       ; $7458: $78
    adc b                                         ; $7459: $88
    add a                                         ; $745a: $87
    ld [hl], a                                    ; $745b: $77
    ld a, b                                       ; $745c: $78
    add a                                         ; $745d: $87
    ld a, b                                       ; $745e: $78
    halt                                          ; $745f: $76
    add a                                         ; $7460: $87
    ld a, b                                       ; $7461: $78
    adc b                                         ; $7462: $88
    adc b                                         ; $7463: $88
    ld [hl], a                                    ; $7464: $77
    adc b                                         ; $7465: $88
    halt                                          ; $7466: $76
    ld a, b                                       ; $7467: $78
    adc b                                         ; $7468: $88
    adc b                                         ; $7469: $88
    ld [hl], a                                    ; $746a: $77
    adc b                                         ; $746b: $88
    adc b                                         ; $746c: $88
    ld [hl], a                                    ; $746d: $77
    ld [hl], a                                    ; $746e: $77
    ld [hl], a                                    ; $746f: $77
    adc b                                         ; $7470: $88
    ld a, b                                       ; $7471: $78
    adc b                                         ; $7472: $88
    ld [hl], a                                    ; $7473: $77
    ld a, b                                       ; $7474: $78
    adc b                                         ; $7475: $88
    ld [hl], a                                    ; $7476: $77
    ld [hl], a                                    ; $7477: $77
    add a                                         ; $7478: $87
    adc b                                         ; $7479: $88
    ld [hl], a                                    ; $747a: $77
    ld [hl], a                                    ; $747b: $77
    adc b                                         ; $747c: $88
    adc b                                         ; $747d: $88
    ld [hl], a                                    ; $747e: $77
    ld a, b                                       ; $747f: $78
    adc b                                         ; $7480: $88
    add a                                         ; $7481: $87
    ld [hl], a                                    ; $7482: $77
    ld [hl], a                                    ; $7483: $77
    ld [hl], a                                    ; $7484: $77
    adc b                                         ; $7485: $88
    adc b                                         ; $7486: $88
    add a                                         ; $7487: $87
    ld [hl], a                                    ; $7488: $77
    ld [hl], a                                    ; $7489: $77
    ld [hl], a                                    ; $748a: $77
    adc b                                         ; $748b: $88
    adc b                                         ; $748c: $88
    add a                                         ; $748d: $87
    ld [hl], a                                    ; $748e: $77
    ld a, b                                       ; $748f: $78
    add a                                         ; $7490: $87
    ld [hl], a                                    ; $7491: $77
    ld [hl], a                                    ; $7492: $77
    ld a, b                                       ; $7493: $78
    adc b                                         ; $7494: $88
    adc b                                         ; $7495: $88
    ld [hl], a                                    ; $7496: $77
    ld [hl], a                                    ; $7497: $77
    ld a, b                                       ; $7498: $78
    add a                                         ; $7499: $87
    adc b                                         ; $749a: $88
    ld [hl], a                                    ; $749b: $77
    add a                                         ; $749c: $87
    adc b                                         ; $749d: $88
    ld a, b                                       ; $749e: $78
    ld [hl], a                                    ; $749f: $77
    add a                                         ; $74a0: $87
    ld [hl], a                                    ; $74a1: $77
    adc b                                         ; $74a2: $88
    adc b                                         ; $74a3: $88
    add a                                         ; $74a4: $87
    ld [hl], a                                    ; $74a5: $77
    ld [hl], a                                    ; $74a6: $77
    ld a, b                                       ; $74a7: $78
    adc b                                         ; $74a8: $88
    adc b                                         ; $74a9: $88
    ld [hl], a                                    ; $74aa: $77
    ld a, b                                       ; $74ab: $78
    adc b                                         ; $74ac: $88
    adc b                                         ; $74ad: $88
    add a                                         ; $74ae: $87
    ld [hl], a                                    ; $74af: $77
    add a                                         ; $74b0: $87
    ld [hl], a                                    ; $74b1: $77
    adc b                                         ; $74b2: $88
    adc b                                         ; $74b3: $88
    add a                                         ; $74b4: $87
    ld [hl], a                                    ; $74b5: $77
    ld [hl], a                                    ; $74b6: $77
    ld a, b                                       ; $74b7: $78
    add a                                         ; $74b8: $87

Call_010_74b9:
    ld a, b                                       ; $74b9: $78
    ld [hl], a                                    ; $74ba: $77

Jump_010_74bb:
    add a                                         ; $74bb: $87
    ld a, b                                       ; $74bc: $78
    add a                                         ; $74bd: $87
    ld [hl], a                                    ; $74be: $77
    ld a, b                                       ; $74bf: $78
    add a                                         ; $74c0: $87
    adc b                                         ; $74c1: $88
    adc b                                         ; $74c2: $88
    add a                                         ; $74c3: $87
    ld [hl], a                                    ; $74c4: $77
    ld [hl], a                                    ; $74c5: $77
    add a                                         ; $74c6: $87
    adc b                                         ; $74c7: $88
    ld a, b                                       ; $74c8: $78
    ld [hl], a                                    ; $74c9: $77
    add a                                         ; $74ca: $87
    ld a, b                                       ; $74cb: $78
    add a                                         ; $74cc: $87
    adc b                                         ; $74cd: $88
    add a                                         ; $74ce: $87
    adc b                                         ; $74cf: $88
    adc b                                         ; $74d0: $88
    adc b                                         ; $74d1: $88
    ld [hl], a                                    ; $74d2: $77
    ld a, b                                       ; $74d3: $78
    ld a, b                                       ; $74d4: $78
    add a                                         ; $74d5: $87
    ld [hl], a                                    ; $74d6: $77
    adc b                                         ; $74d7: $88
    add a                                         ; $74d8: $87
    ld [hl], a                                    ; $74d9: $77
    ld [hl], a                                    ; $74da: $77
    ld [hl], a                                    ; $74db: $77
    adc b                                         ; $74dc: $88
    ld [hl], a                                    ; $74dd: $77
    adc b                                         ; $74de: $88
    adc b                                         ; $74df: $88
    add a                                         ; $74e0: $87
    ld [hl], a                                    ; $74e1: $77
    ld [hl], a                                    ; $74e2: $77
    ld a, b                                       ; $74e3: $78
    adc b                                         ; $74e4: $88
    add a                                         ; $74e5: $87
    adc b                                         ; $74e6: $88
    ld [hl], a                                    ; $74e7: $77
    ld [hl], a                                    ; $74e8: $77
    adc b                                         ; $74e9: $88
    adc b                                         ; $74ea: $88
    add a                                         ; $74eb: $87
    ld a, b                                       ; $74ec: $78
    adc b                                         ; $74ed: $88
    add a                                         ; $74ee: $87
    ld [hl], a                                    ; $74ef: $77
    adc b                                         ; $74f0: $88
    add a                                         ; $74f1: $87
    ld [hl], a                                    ; $74f2: $77
    add a                                         ; $74f3: $87
    adc b                                         ; $74f4: $88
    add a                                         ; $74f5: $87
    ld a, b                                       ; $74f6: $78
    add a                                         ; $74f7: $87
    ld [hl], a                                    ; $74f8: $77
    adc b                                         ; $74f9: $88
    adc b                                         ; $74fa: $88
    add a                                         ; $74fb: $87
    ld [hl], a                                    ; $74fc: $77
    adc b                                         ; $74fd: $88
    ld a, b                                       ; $74fe: $78
    adc b                                         ; $74ff: $88
    adc b                                         ; $7500: $88
    add a                                         ; $7501: $87
    ld [hl], a                                    ; $7502: $77
    adc b                                         ; $7503: $88
    ld [hl], a                                    ; $7504: $77
    adc b                                         ; $7505: $88
    add a                                         ; $7506: $87
    add a                                         ; $7507: $87
    adc b                                         ; $7508: $88
    adc b                                         ; $7509: $88
    ld [hl], a                                    ; $750a: $77
    ld [hl], a                                    ; $750b: $77
    ld a, b                                       ; $750c: $78
    ld [hl], a                                    ; $750d: $77
    adc b                                         ; $750e: $88
    add a                                         ; $750f: $87
    add a                                         ; $7510: $87
    ld [hl], a                                    ; $7511: $77
    ld a, b                                       ; $7512: $78
    adc b                                         ; $7513: $88
    adc b                                         ; $7514: $88
    ld [hl], a                                    ; $7515: $77
    ld a, b                                       ; $7516: $78
    adc b                                         ; $7517: $88
    add a                                         ; $7518: $87
    ld [hl], a                                    ; $7519: $77
    ld [hl], a                                    ; $751a: $77
    ld [hl], a                                    ; $751b: $77
    adc b                                         ; $751c: $88
    add a                                         ; $751d: $87
    ld a, b                                       ; $751e: $78
    add a                                         ; $751f: $87
    add a                                         ; $7520: $87
    add a                                         ; $7521: $87
    ld a, b                                       ; $7522: $78
    ld [hl], a                                    ; $7523: $77
    adc b                                         ; $7524: $88
    add a                                         ; $7525: $87
    ld a, b                                       ; $7526: $78
    ld a, b                                       ; $7527: $78
    add a                                         ; $7528: $87
    ld [hl], a                                    ; $7529: $77
    adc b                                         ; $752a: $88
    adc b                                         ; $752b: $88
    adc b                                         ; $752c: $88
    adc b                                         ; $752d: $88
    ld [hl], a                                    ; $752e: $77
    ld [hl], a                                    ; $752f: $77
    adc b                                         ; $7530: $88
    ld [hl], a                                    ; $7531: $77
    ld a, b                                       ; $7532: $78
    adc b                                         ; $7533: $88
    ld [hl], a                                    ; $7534: $77
    adc b                                         ; $7535: $88
    adc b                                         ; $7536: $88
    ld [hl], a                                    ; $7537: $77
    ld [hl], a                                    ; $7538: $77
    ld a, b                                       ; $7539: $78
    ld a, b                                       ; $753a: $78
    adc b                                         ; $753b: $88
    adc b                                         ; $753c: $88
    ld [hl], a                                    ; $753d: $77
    ld [hl], a                                    ; $753e: $77
    adc b                                         ; $753f: $88
    add a                                         ; $7540: $87
    adc b                                         ; $7541: $88
    ld [hl], a                                    ; $7542: $77
    adc b                                         ; $7543: $88
    add a                                         ; $7544: $87
    ld [hl], a                                    ; $7545: $77
    ld [hl], a                                    ; $7546: $77
    ld [hl], a                                    ; $7547: $77
    ld a, b                                       ; $7548: $78
    adc b                                         ; $7549: $88
    adc b                                         ; $754a: $88
    adc b                                         ; $754b: $88
    ld [hl], a                                    ; $754c: $77
    adc b                                         ; $754d: $88
    ld a, b                                       ; $754e: $78
    add a                                         ; $754f: $87
    add a                                         ; $7550: $87
    ld a, b                                       ; $7551: $78
    add a                                         ; $7552: $87
    adc b                                         ; $7553: $88
    ld [hl], a                                    ; $7554: $77
    ld a, b                                       ; $7555: $78
    add a                                         ; $7556: $87
    ld a, b                                       ; $7557: $78
    adc b                                         ; $7558: $88
    add a                                         ; $7559: $87
    ld [hl], a                                    ; $755a: $77
    ld [hl], a                                    ; $755b: $77
    ld [hl], a                                    ; $755c: $77
    adc b                                         ; $755d: $88
    add a                                         ; $755e: $87
    ld [hl], a                                    ; $755f: $77
    add a                                         ; $7560: $87
    ld [hl], a                                    ; $7561: $77
    adc b                                         ; $7562: $88
    add a                                         ; $7563: $87
    ld [hl], a                                    ; $7564: $77
    ld [hl], a                                    ; $7565: $77
    adc b                                         ; $7566: $88
    adc b                                         ; $7567: $88
    add a                                         ; $7568: $87
    ld [hl], a                                    ; $7569: $77
    ld [hl], a                                    ; $756a: $77
    ld a, b                                       ; $756b: $78
    adc b                                         ; $756c: $88
    adc b                                         ; $756d: $88
    add a                                         ; $756e: $87
    ld [hl], a                                    ; $756f: $77
    add a                                         ; $7570: $87
    ld a, b                                       ; $7571: $78
    adc b                                         ; $7572: $88
    add a                                         ; $7573: $87
    adc b                                         ; $7574: $88
    adc b                                         ; $7575: $88
    add a                                         ; $7576: $87
    ld [hl], a                                    ; $7577: $77
    ld a, b                                       ; $7578: $78
    add a                                         ; $7579: $87
    ld a, b                                       ; $757a: $78
    adc b                                         ; $757b: $88
    add a                                         ; $757c: $87
    ld [hl], a                                    ; $757d: $77
    ld a, b                                       ; $757e: $78
    add a                                         ; $757f: $87
    adc b                                         ; $7580: $88
    add a                                         ; $7581: $87
    ld [hl], a                                    ; $7582: $77
    ld a, b                                       ; $7583: $78
    adc b                                         ; $7584: $88
    ld [hl], a                                    ; $7585: $77
    adc b                                         ; $7586: $88
    ld a, b                                       ; $7587: $78
    ld a, b                                       ; $7588: $78
    adc b                                         ; $7589: $88
    add a                                         ; $758a: $87
    adc b                                         ; $758b: $88
    add a                                         ; $758c: $87
    ld a, b                                       ; $758d: $78
    ld [hl], a                                    ; $758e: $77
    ld [hl], a                                    ; $758f: $77
    adc b                                         ; $7590: $88
    add a                                         ; $7591: $87
    adc b                                         ; $7592: $88
    ld [hl], a                                    ; $7593: $77
    add a                                         ; $7594: $87
    adc b                                         ; $7595: $88
    ld [hl], a                                    ; $7596: $77

Call_010_7597:
    ld a, b                                       ; $7597: $78
    ld [hl], a                                    ; $7598: $77
    adc b                                         ; $7599: $88
    add a                                         ; $759a: $87
    ld [hl], a                                    ; $759b: $77
    ld [hl], a                                    ; $759c: $77
    adc b                                         ; $759d: $88
    adc b                                         ; $759e: $88
    ld [hl], a                                    ; $759f: $77
    adc b                                         ; $75a0: $88
    add a                                         ; $75a1: $87
    ld [hl], a                                    ; $75a2: $77
    add a                                         ; $75a3: $87
    ld [hl], a                                    ; $75a4: $77
    adc b                                         ; $75a5: $88
    add a                                         ; $75a6: $87
    adc b                                         ; $75a7: $88
    ld a, b                                       ; $75a8: $78
    ld [hl], a                                    ; $75a9: $77
    ld a, b                                       ; $75aa: $78
    adc b                                         ; $75ab: $88
    adc b                                         ; $75ac: $88
    add a                                         ; $75ad: $87
    ld [hl], a                                    ; $75ae: $77
    adc b                                         ; $75af: $88
    add a                                         ; $75b0: $87
    ld [hl], a                                    ; $75b1: $77
    add a                                         ; $75b2: $87
    ld [hl], a                                    ; $75b3: $77
    ld a, b                                       ; $75b4: $78
    adc b                                         ; $75b5: $88
    adc b                                         ; $75b6: $88
    ld [hl], a                                    ; $75b7: $77
    ld [hl], a                                    ; $75b8: $77

Call_010_75b9:
    ld [hl], a                                    ; $75b9: $77
    ld [hl], a                                    ; $75ba: $77
    adc b                                         ; $75bb: $88
    adc b                                         ; $75bc: $88
    adc b                                         ; $75bd: $88
    ld [hl], a                                    ; $75be: $77
    ld [hl], a                                    ; $75bf: $77
    add a                                         ; $75c0: $87
    add a                                         ; $75c1: $87
    adc b                                         ; $75c2: $88
    ld [hl], a                                    ; $75c3: $77
    adc b                                         ; $75c4: $88
    adc b                                         ; $75c5: $88
    ld [hl], a                                    ; $75c6: $77
    ld [hl], a                                    ; $75c7: $77
    ld [hl], a                                    ; $75c8: $77
    ld [hl], a                                    ; $75c9: $77
    adc b                                         ; $75ca: $88
    adc b                                         ; $75cb: $88
    adc b                                         ; $75cc: $88
    ld [hl], a                                    ; $75cd: $77
    ld [hl], a                                    ; $75ce: $77
    ld [hl], a                                    ; $75cf: $77
    adc b                                         ; $75d0: $88
    add a                                         ; $75d1: $87
    ld a, b                                       ; $75d2: $78
    ld [hl], a                                    ; $75d3: $77
    adc b                                         ; $75d4: $88
    add a                                         ; $75d5: $87
    ld a, b                                       ; $75d6: $78
    ld [hl], a                                    ; $75d7: $77
    ld a, b                                       ; $75d8: $78
    adc b                                         ; $75d9: $88
    adc b                                         ; $75da: $88
    ld [hl], a                                    ; $75db: $77
    add a                                         ; $75dc: $87
    ld [hl], a                                    ; $75dd: $77
    ld a, b                                       ; $75de: $78
    adc b                                         ; $75df: $88
    adc b                                         ; $75e0: $88
    ld [hl], a                                    ; $75e1: $77
    ld [hl], a                                    ; $75e2: $77
    adc b                                         ; $75e3: $88
    adc b                                         ; $75e4: $88
    adc b                                         ; $75e5: $88
    ld [hl], a                                    ; $75e6: $77
    ld [hl], a                                    ; $75e7: $77
    adc b                                         ; $75e8: $88
    adc b                                         ; $75e9: $88
    ld [hl], a                                    ; $75ea: $77
    ld [hl], a                                    ; $75eb: $77
    ld a, b                                       ; $75ec: $78
    adc b                                         ; $75ed: $88
    adc b                                         ; $75ee: $88
    adc b                                         ; $75ef: $88
    add a                                         ; $75f0: $87
    ld [hl], a                                    ; $75f1: $77
    ld a, b                                       ; $75f2: $78
    adc b                                         ; $75f3: $88
    add a                                         ; $75f4: $87
    ld a, b                                       ; $75f5: $78
    ld [hl], a                                    ; $75f6: $77
    adc b                                         ; $75f7: $88
    adc b                                         ; $75f8: $88
    add a                                         ; $75f9: $87
    ld [hl], a                                    ; $75fa: $77
    ld a, b                                       ; $75fb: $78
    adc b                                         ; $75fc: $88
    add a                                         ; $75fd: $87
    ld [hl], a                                    ; $75fe: $77
    adc b                                         ; $75ff: $88
    add a                                         ; $7600: $87
    ld a, b                                       ; $7601: $78
    adc b                                         ; $7602: $88
    add a                                         ; $7603: $87
    add a                                         ; $7604: $87
    adc b                                         ; $7605: $88
    adc b                                         ; $7606: $88
    adc b                                         ; $7607: $88
    adc b                                         ; $7608: $88
    adc b                                         ; $7609: $88
    adc b                                         ; $760a: $88
    adc b                                         ; $760b: $88
    adc b                                         ; $760c: $88
    adc b                                         ; $760d: $88
    adc b                                         ; $760e: $88
    adc b                                         ; $760f: $88
    adc b                                         ; $7610: $88
    adc b                                         ; $7611: $88
    adc b                                         ; $7612: $88
    adc b                                         ; $7613: $88
    adc b                                         ; $7614: $88
    adc b                                         ; $7615: $88
    adc b                                         ; $7616: $88
    adc b                                         ; $7617: $88
    adc b                                         ; $7618: $88
    adc b                                         ; $7619: $88
    adc b                                         ; $761a: $88
    adc b                                         ; $761b: $88
    adc b                                         ; $761c: $88
    adc b                                         ; $761d: $88
    adc b                                         ; $761e: $88
    adc b                                         ; $761f: $88

    db $87, $77, $78, $78, $78, $77, $77, $77, $77, $88, $88, $88, $87, $88, $88, $88

    adc b                                         ; $7630: $88
    adc c                                         ; $7631: $89
    adc c                                         ; $7632: $89
    adc b                                         ; $7633: $88
    adc b                                         ; $7634: $88
    adc b                                         ; $7635: $88
    ld a, b                                       ; $7636: $78
    ld [hl], a                                    ; $7637: $77
    add a                                         ; $7638: $87
    ld h, a                                       ; $7639: $67
    halt                                          ; $763a: $76
    ld [hl], a                                    ; $763b: $77
    ld a, b                                       ; $763c: $78
    add a                                         ; $763d: $87
    add [hl]                                      ; $763e: $86
    ld b, h                                       ; $763f: $44
    ld b, l                                       ; $7640: $45
    ld h, a                                       ; $7641: $67
    sbc d                                         ; $7642: $9a
    cp e                                          ; $7643: $bb
    and a                                         ; $7644: $a7
    ld [hl], a                                    ; $7645: $77
    ld a, b                                       ; $7646: $78
    adc c                                         ; $7647: $89
    xor b                                         ; $7648: $a8
    add a                                         ; $7649: $87
    ld h, a                                       ; $764a: $67
    ld [hl], a                                    ; $764b: $77
    ld a, b                                       ; $764c: $78
    add a                                         ; $764d: $87
    ld h, a                                       ; $764e: $67
    halt                                          ; $764f: $76
    add a                                         ; $7650: $87
    ld a, b                                       ; $7651: $78
    ld h, a                                       ; $7652: $67
    ld [hl], a                                    ; $7653: $77
    adc b                                         ; $7654: $88
    sbc d                                         ; $7655: $9a
    xor b                                         ; $7656: $a8
    ld [hl], l                                    ; $7657: $75
    ld d, l                                       ; $7658: $55
    ld d, l                                       ; $7659: $55
    ld h, a                                       ; $765a: $67
    adc c                                         ; $765b: $89
    cp [hl]                                       ; $765c: $be
    rst $28                                       ; $765d: $ef
    call c, $86aa                                 ; $765e: $dc $aa $86
    ld d, h                                       ; $7661: $54
    ld d, h                                       ; $7662: $54
    ld [hl+], a                                   ; $7663: $22
    ld b, l                                       ; $7664: $45
    ld d, [hl]                                    ; $7665: $56
    ld l, b                                       ; $7666: $68
    ld [hl], a                                    ; $7667: $77
    ld [hl], a                                    ; $7668: $77
    ld h, [hl]                                    ; $7669: $66
    ld d, h                                       ; $766a: $54
    ld d, a                                       ; $766b: $57
    sbc b                                         ; $766c: $98
    adc d                                         ; $766d: $8a
    cp h                                          ; $766e: $bc
    xor $dc                                       ; $766f: $ee $dc
    res 5, e                                      ; $7671: $cb $ab
    xor e                                         ; $7673: $ab
    xor c                                         ; $7674: $a9
    sbc b                                         ; $7675: $98
    ld [hl], a                                    ; $7676: $77
    ld [hl], a                                    ; $7677: $77
    add [hl]                                      ; $7678: $86
    ld b, h                                       ; $7679: $44
    inc sp                                        ; $767a: $33
    inc sp                                        ; $767b: $33
    ld b, h                                       ; $767c: $44
    ld d, l                                       ; $767d: $55
    inc [hl]                                      ; $767e: $34
    ld b, e                                       ; $767f: $43
    ld b, l                                       ; $7680: $45
    ld d, h                                       ; $7681: $54
    ld b, h                                       ; $7682: $44
    ld d, h                                       ; $7683: $54
    ld b, a                                       ; $7684: $47
    ld a, c                                       ; $7685: $79
    sbc d                                         ; $7686: $9a
    call $cbcc                                    ; $7687: $cd $cc $cb
    xor d                                         ; $768a: $aa
    sbc e                                         ; $768b: $9b
    cp e                                          ; $768c: $bb
    call z, $99a9                                 ; $768d: $cc $a9 $99
    sbc b                                         ; $7690: $98
    sbc c                                         ; $7691: $99
    halt                                          ; $7692: $76
    ld h, [hl]                                    ; $7693: $66
    ld d, h                                       ; $7694: $54
    ld b, h                                       ; $7695: $44
    dec [hl]                                      ; $7696: $35
    ld b, l                                       ; $7697: $45
    ld h, [hl]                                    ; $7698: $66
    ld [hl], a                                    ; $7699: $77
    ld a, b                                       ; $769a: $78
    ld [hl], a                                    ; $769b: $77
    adc b                                         ; $769c: $88
    adc c                                         ; $769d: $89
    sbc c                                         ; $769e: $99
    adc c                                         ; $769f: $89
    sbc c                                         ; $76a0: $99
    sbc b                                         ; $76a1: $98
    add a                                         ; $76a2: $87
    adc b                                         ; $76a3: $88
    adc b                                         ; $76a4: $88
    ld [hl], a                                    ; $76a5: $77
    sub a                                         ; $76a6: $97
    ld l, b                                       ; $76a7: $68

Call_010_76a8:
    adc c                                         ; $76a8: $89
    sub a                                         ; $76a9: $97
    ld a, b                                       ; $76aa: $78
    ld [hl], a                                    ; $76ab: $77
    adc b                                         ; $76ac: $88
    xor d                                         ; $76ad: $aa
    sbc c                                         ; $76ae: $99
    adc b                                         ; $76af: $88
    ld h, [hl]                                    ; $76b0: $66
    add l                                         ; $76b1: $85
    ld h, h                                       ; $76b2: $64
    ld l, b                                       ; $76b3: $68
    ld a, b                                       ; $76b4: $78
    ld h, l                                       ; $76b5: $65
    inc sp                                        ; $76b6: $33
    ld [hl-], a                                   ; $76b7: $32
    ld [hl], $66                                  ; $76b8: $36 $66
    add a                                         ; $76ba: $87

Jump_010_76bb:
    ld [hl], a                                    ; $76bb: $77
    ld a, b                                       ; $76bc: $78
    ld [hl], a                                    ; $76bd: $77
    adc b                                         ; $76be: $88
    adc c                                         ; $76bf: $89
    cp h                                          ; $76c0: $bc
    sbc d                                         ; $76c1: $9a
    ld a, b                                       ; $76c2: $78
    adc c                                         ; $76c3: $89
    adc c                                         ; $76c4: $89
    adc c                                         ; $76c5: $89
    sbc b                                         ; $76c6: $98
    adc b                                         ; $76c7: $88
    ld [hl], a                                    ; $76c8: $77
    xor d                                         ; $76c9: $aa
    sbc c                                         ; $76ca: $99
    sub a                                         ; $76cb: $97
    ld h, l                                       ; $76cc: $65
    ld h, h                                       ; $76cd: $64
    ld b, e                                       ; $76ce: $43
    ld b, l                                       ; $76cf: $45
    ld sp, $6936                                  ; $76d0: $31 $36 $69
    xor c                                         ; $76d3: $a9
    sbc c                                         ; $76d4: $99
    add a                                         ; $76d5: $87
    ld a, d                                       ; $76d6: $7a
    call z, $aaeb                                 ; $76d7: $cc $eb $aa
    call $9c99                                    ; $76da: $cd $99 $9c
    xor d                                         ; $76dd: $aa
    ld a, b                                       ; $76de: $78
    ld a, b                                       ; $76df: $78
    ld h, [hl]                                    ; $76e0: $66
    ld d, h                                       ; $76e1: $54
    ld d, l                                       ; $76e2: $55
    ld [hl], a                                    ; $76e3: $77
    ld l, b                                       ; $76e4: $68
    sub a                                         ; $76e5: $97
    ld d, [hl]                                    ; $76e6: $56
    halt                                          ; $76e7: $76
    ld d, [hl]                                    ; $76e8: $56
    ld h, [hl]                                    ; $76e9: $66
    ld a, c                                       ; $76ea: $79
    ld [hl], a                                    ; $76eb: $77
    sub a                                         ; $76ec: $97
    sbc b                                         ; $76ed: $98
    adc d                                         ; $76ee: $8a
    adc d                                         ; $76ef: $8a
    cp e                                          ; $76f0: $bb
    res 4, a                                      ; $76f1: $cb $a7
    add [hl]                                      ; $76f3: $86
    ld h, h                                       ; $76f4: $64
    ld b, d                                       ; $76f5: $42
    jr nz, jr_010_76f9                            ; $76f6: $20 $01

    inc h                                         ; $76f8: $24

jr_010_76f9:
    ld d, l                                       ; $76f9: $55
    ld b, a                                       ; $76fa: $47
    adc b                                         ; $76fb: $88
    adc b                                         ; $76fc: $88
    xor h                                         ; $76fd: $ac
    cp d                                          ; $76fe: $ba
    cp c                                          ; $76ff: $b9
    add [hl]                                      ; $7700: $86
    ld h, l                                       ; $7701: $65
    inc [hl]                                      ; $7702: $34
    ld b, l                                       ; $7703: $45
    ld l, c                                       ; $7704: $69
    sbc h                                         ; $7705: $9c
    ret                                           ; $7706: $c9


    and l                                         ; $7707: $a5
    ld h, l                                       ; $7708: $65
    ld h, a                                       ; $7709: $67
    sbc d                                         ; $770a: $9a
    cp d                                          ; $770b: $ba
    call z, $97bb                                 ; $770c: $cc $bb $97
    ld d, a                                       ; $770f: $57
    adc b                                         ; $7710: $88
    ld h, [hl]                                    ; $7711: $66
    ld h, e                                       ; $7712: $63
    inc [hl]                                      ; $7713: $34
    ld b, h                                       ; $7714: $44
    inc sp                                        ; $7715: $33
    ld b, l                                       ; $7716: $45
    ld h, a                                       ; $7717: $67
    ld a, c                                       ; $7718: $79
    cp e                                          ; $7719: $bb
    cp e                                          ; $771a: $bb
    sbc $fe                                       ; $771b: $de $fe
    rst $28                                       ; $771d: $ef
    db $ed                                        ; $771e: $ed
    call c, $aacc                                 ; $771f: $dc $cc $aa
    add a                                         ; $7722: $87
    halt                                          ; $7723: $76
    ld h, l                                       ; $7724: $65
    ld b, h                                       ; $7725: $44
    ld [hl-], a                                   ; $7726: $32
    ld [hl+], a                                   ; $7727: $22
    ld [de], a                                    ; $7728: $12
    ld de, $2423                                  ; $7729: $11 $23 $24
    ld b, l                                       ; $772c: $45
    ld d, l                                       ; $772d: $55
    ld h, [hl]                                    ; $772e: $66
    ld a, b                                       ; $772f: $78
    sbc d                                         ; $7730: $9a
    cp d                                          ; $7731: $ba
    cp e                                          ; $7732: $bb
    call z, $bbbb                                 ; $7733: $cc $bb $bb
    cp d                                          ; $7736: $ba
    sbc c                                         ; $7737: $99
    add a                                         ; $7738: $87
    adc b                                         ; $7739: $88
    sbc d                                         ; $773a: $9a
    xor d                                         ; $773b: $aa
    sbc c                                         ; $773c: $99
    ld [hl], a                                    ; $773d: $77
    ld a, b                                       ; $773e: $78
    add [hl]                                      ; $773f: $86
    add a                                         ; $7740: $87
    halt                                          ; $7741: $76
    ld [hl], a                                    ; $7742: $77
    ld h, l                                       ; $7743: $65
    ld h, l                                       ; $7744: $65
    ld d, h                                       ; $7745: $54
    ld d, l                                       ; $7746: $55
    ld b, a                                       ; $7747: $47
    ld a, b                                       ; $7748: $78
    adc b                                         ; $7749: $88
    sbc c                                         ; $774a: $99
    sbc b                                         ; $774b: $98
    ld h, [hl]                                    ; $774c: $66
    ld b, h                                       ; $774d: $44
    ld d, [hl]                                    ; $774e: $56
    ld [hl], a                                    ; $774f: $77
    sbc c                                         ; $7750: $99
    adc d                                         ; $7751: $8a
    sbc b                                         ; $7752: $98
    ld a, b                                       ; $7753: $78
    adc d                                         ; $7754: $8a
    sbc d                                         ; $7755: $9a
    xor d                                         ; $7756: $aa
    sbc c                                         ; $7757: $99
    adc b                                         ; $7758: $88
    adc b                                         ; $7759: $88
    adc b                                         ; $775a: $88
    adc b                                         ; $775b: $88
    ld [hl], l                                    ; $775c: $75
    ld d, h                                       ; $775d: $54
    ld d, h                                       ; $775e: $54
    dec [hl]                                      ; $775f: $35
    ld h, a                                       ; $7760: $67
    ld a, c                                       ; $7761: $79
    xor c                                         ; $7762: $a9
    sbc c                                         ; $7763: $99
    adc b                                         ; $7764: $88

Call_010_7765:
    sbc c                                         ; $7765: $99
    xor c                                         ; $7766: $a9
    sbc b                                         ; $7767: $98
    ld a, b                                       ; $7768: $78
    ld [hl], a                                    ; $7769: $77
    halt                                          ; $776a: $76
    ld h, a                                       ; $776b: $67
    ld a, b                                       ; $776c: $78
    adc d                                         ; $776d: $8a
    sbc c                                         ; $776e: $99
    adc c                                         ; $776f: $89
    add a                                         ; $7770: $87
    ld h, a                                       ; $7771: $67
    adc b                                         ; $7772: $88
    ld a, b                                       ; $7773: $78
    adc b                                         ; $7774: $88
    adc b                                         ; $7775: $88
    adc d                                         ; $7776: $8a
    xor c                                         ; $7777: $a9
    sbc b                                         ; $7778: $98
    ld a, c                                       ; $7779: $79
    add a                                         ; $777a: $87
    ld h, [hl]                                    ; $777b: $66
    ld h, [hl]                                    ; $777c: $66
    ld h, a                                       ; $777d: $67
    ld h, l                                       ; $777e: $65
    ld [hl], l                                    ; $777f: $75
    add l                                         ; $7780: $85
    ld h, l                                       ; $7781: $65
    ld h, a                                       ; $7782: $67
    add a                                         ; $7783: $87
    sbc d                                         ; $7784: $9a
    xor d                                         ; $7785: $aa
    xor e                                         ; $7786: $ab

Jump_010_7787:
    sbc b                                         ; $7787: $98

Jump_010_7788:
    adc b                                         ; $7788: $88
    halt                                          ; $7789: $76
    sbc d                                         ; $778a: $9a
    add a                                         ; $778b: $87
    ld h, [hl]                                    ; $778c: $66
    ld h, [hl]                                    ; $778d: $66
    ld d, [hl]                                    ; $778e: $56
    add a                                         ; $778f: $87
    ld d, h                                       ; $7790: $54
    ld [hl-], a                                   ; $7791: $32
    ld [hl], $98                                  ; $7792: $36 $98
    adc b                                         ; $7794: $88
    add a                                         ; $7795: $87
    ld h, [hl]                                    ; $7796: $66
    ld a, b                                       ; $7797: $78

Jump_010_7798:
    adc c                                         ; $7798: $89

Jump_010_7799:
    halt                                          ; $7799: $76
    halt                                          ; $779a: $76
    adc d                                         ; $779b: $8a
    sbc e                                         ; $779c: $9b
    res 7, l                                      ; $779d: $cb $bd
    db $db                                        ; $779f: $db
    xor d                                         ; $77a0: $aa
    adc c                                         ; $77a1: $89
    cp e                                          ; $77a2: $bb
    sbc d                                         ; $77a3: $9a
    xor b                                         ; $77a4: $a8
    ld h, h                                       ; $77a5: $64
    ld [hl-], a                                   ; $77a6: $32
    inc [hl]                                      ; $77a7: $34
    ld c, c                                       ; $77a8: $49

Call_010_77a9:
    adc d                                         ; $77a9: $8a
    sbc c                                         ; $77aa: $99
    xor e                                         ; $77ab: $ab
    add a                                         ; $77ac: $87
    halt                                          ; $77ad: $76
    ld [hl], h                                    ; $77ae: $74
    ld d, e                                       ; $77af: $53
    ld d, h                                       ; $77b0: $54
    dec [hl]                                      ; $77b1: $35
    ld d, l                                       ; $77b2: $55
    ld h, a                                       ; $77b3: $67
    ld [hl], l                                    ; $77b4: $75
    ld d, l                                       ; $77b5: $55
    ld b, l                                       ; $77b6: $45
    ld a, b                                       ; $77b7: $78

Call_010_77b8:
    ld [hl], a                                    ; $77b8: $77
    adc c                                         ; $77b9: $89
    xor d                                         ; $77ba: $aa
    xor c                                         ; $77bb: $a9
    xor d                                         ; $77bc: $aa
    xor c                                         ; $77bd: $a9
    sub a                                         ; $77be: $97
    adc b                                         ; $77bf: $88
    adc c                                         ; $77c0: $89
    xor d                                         ; $77c1: $aa
    xor e                                         ; $77c2: $ab
    res 5, e                                      ; $77c3: $cb $ab
    cp e                                          ; $77c5: $bb
    sbc b                                         ; $77c6: $98
    halt                                          ; $77c7: $76
    ld b, [hl]                                    ; $77c8: $46
    ld h, [hl]                                    ; $77c9: $66

Call_010_77ca:
    ld l, b                                       ; $77ca: $68
    adc b                                         ; $77cb: $88
    ld [hl], a                                    ; $77cc: $77
    halt                                          ; $77cd: $76
    ld d, l                                       ; $77ce: $55
    ld d, [hl]                                    ; $77cf: $56
    ld d, l                                       ; $77d0: $55
    ld d, l                                       ; $77d1: $55
    ld h, l                                       ; $77d2: $65
    ld d, l                                       ; $77d3: $55
    ld d, [hl]                                    ; $77d4: $56
    ld a, c                                       ; $77d5: $79
    ld [hl], a                                    ; $77d6: $77
    ld a, c                                       ; $77d7: $79
    ld h, a                                       ; $77d8: $67
    ld l, b                                       ; $77d9: $68
    ld h, [hl]                                    ; $77da: $66
    ld [hl], l                                    ; $77db: $75
    halt                                          ; $77dc: $76
    ld l, b                                       ; $77dd: $68
    xor d                                         ; $77de: $aa
    xor d                                         ; $77df: $aa
    cp d                                          ; $77e0: $ba
    xor h                                         ; $77e1: $ac
    cp e                                          ; $77e2: $bb
    xor b                                         ; $77e3: $a8
    halt                                          ; $77e4: $76
    ld h, a                                       ; $77e5: $67
    adc b                                         ; $77e6: $88
    xor b                                         ; $77e7: $a8
    ld a, b                                       ; $77e8: $78
    ld d, a                                       ; $77e9: $57
    ld h, a                                       ; $77ea: $67
    ld a, c                                       ; $77eb: $79
    sbc e                                         ; $77ec: $9b
    sbc c                                         ; $77ed: $99
    adc c                                         ; $77ee: $89
    sbc c                                         ; $77ef: $99
    add [hl]                                      ; $77f0: $86
    ld h, [hl]                                    ; $77f1: $66
    ld h, h                                       ; $77f2: $64
    inc sp                                        ; $77f3: $33
    dec [hl]                                      ; $77f4: $35
    ld a, b                                       ; $77f5: $78
    xor c                                         ; $77f6: $a9
    ld [hl], l                                    ; $77f7: $75
    ld e, c                                       ; $77f8: $59
    cp d                                          ; $77f9: $ba
    adc e                                         ; $77fa: $8b
    res 3, d                                      ; $77fb: $cb $9a
    sbc b                                         ; $77fd: $98
    cp b                                          ; $77fe: $b8
    ld a, b                                       ; $77ff: $78
    sbc b                                         ; $7800: $98
    sub a                                         ; $7801: $97
    ld d, l                                       ; $7802: $55
    ld d, l                                       ; $7803: $55
    ld d, d                                       ; $7804: $52
    inc sp                                        ; $7805: $33
    dec d                                         ; $7806: $15
    ld h, h                                       ; $7807: $64
    ld l, b                                       ; $7808: $68
    sbc c                                         ; $7809: $99
    xor c                                         ; $780a: $a9
    add a                                         ; $780b: $87
    ld h, [hl]                                    ; $780c: $66
    ld d, [hl]                                    ; $780d: $56
    ld h, l                                       ; $780e: $65
    ld d, [hl]                                    ; $780f: $56
    ld d, l                                       ; $7810: $55
    ld h, [hl]                                    ; $7811: $66
    ld h, [hl]                                    ; $7812: $66
    ld h, a                                       ; $7813: $67
    ld a, b                                       ; $7814: $78
    add a                                         ; $7815: $87
    adc d                                         ; $7816: $8a
    xor e                                         ; $7817: $ab
    cp e                                          ; $7818: $bb
    call c, $eedd                                 ; $7819: $dc $dd $ee
    db $db                                        ; $781c: $db
    cp h                                          ; $781d: $bc
    xor b                                         ; $781e: $a8
    ld [hl], a                                    ; $781f: $77
    adc b                                         ; $7820: $88
    adc b                                         ; $7821: $88
    add a                                         ; $7822: $87
    adc b                                         ; $7823: $88
    xor c                                         ; $7824: $a9
    add [hl]                                      ; $7825: $86
    ld b, e                                       ; $7826: $43
    ld [hl-], a                                   ; $7827: $32
    ld bc, $5435                                  ; $7828: $01 $35 $54
    ld b, h                                       ; $782b: $44
    ld b, e                                       ; $782c: $43
    inc [hl]                                      ; $782d: $34
    ld h, l                                       ; $782e: $65
    ld h, [hl]                                    ; $782f: $66
    adc b                                         ; $7830: $88
    adc c                                         ; $7831: $89
    cp h                                          ; $7832: $bc
    res 5, c                                      ; $7833: $cb $a9
    adc d                                         ; $7835: $8a
    xor c                                         ; $7836: $a9
    call $bbca                                    ; $7837: $cd $ca $bb
    sbc h                                         ; $783a: $9c
    cp c                                          ; $783b: $b9
    adc c                                         ; $783c: $89
    xor b                                         ; $783d: $a8
    ld a, b                                       ; $783e: $78
    ld a, b                                       ; $783f: $78
    adc b                                         ; $7840: $88
    adc b                                         ; $7841: $88
    add a                                         ; $7842: $87
    halt                                          ; $7843: $76
    ld [hl], a                                    ; $7844: $77
    ld h, h                                       ; $7845: $64
    ld d, h                                       ; $7846: $54
    ld d, l                                       ; $7847: $55
    ld d, l                                       ; $7848: $55
    ld d, l                                       ; $7849: $55
    ld d, l                                       ; $784a: $55
    ld d, h                                       ; $784b: $54
    ld b, l                                       ; $784c: $45
    ld a, c                                       ; $784d: $79
    ld a, b                                       ; $784e: $78
    sbc c                                         ; $784f: $99
    adc b                                         ; $7850: $88
    sbc d                                         ; $7851: $9a
    sub a                                         ; $7852: $97

Jump_010_7853:
    halt                                          ; $7853: $76
    ld h, [hl]                                    ; $7854: $66
    xor d                                         ; $7855: $aa
    cp h                                          ; $7856: $bc
    cp l                                          ; $7857: $bd
    jp c, Jump_010_5598                           ; $7858: $da $98 $55

    ld d, [hl]                                    ; $785b: $56
    ld d, h                                       ; $785c: $54
    ld l, c                                       ; $785d: $69
    ld d, h                                       ; $785e: $54
    ld sp, $4802                                  ; $785f: $31 $02 $48
    sbc h                                         ; $7862: $9c
    set 1, e                                      ; $7863: $cb $cb
    cp b                                          ; $7865: $b8

Jump_010_7866:
    sub a                                         ; $7866: $97
    ld d, h                                       ; $7867: $54
    ld b, e                                       ; $7868: $43
    halt                                          ; $7869: $76
    ld h, l                                       ; $786a: $65
    ld d, a                                       ; $786b: $57
    sbc b                                         ; $786c: $98
    ld a, c                                       ; $786d: $79
    sbc d                                         ; $786e: $9a
    cp e                                          ; $786f: $bb
    sbc d                                         ; $7870: $9a
    sbc b                                         ; $7871: $98
    sbc c                                         ; $7872: $99
    cp h                                          ; $7873: $bc
    cp c                                          ; $7874: $b9
    adc b                                         ; $7875: $88

Jump_010_7876:
    ld h, [hl]                                    ; $7876: $66

Jump_010_7877:
    ld h, [hl]                                    ; $7877: $66
    halt                                          ; $7878: $76
    halt                                          ; $7879: $76
    ld h, [hl]                                    ; $787a: $66
    ld h, a                                       ; $787b: $67
    ld a, b                                       ; $787c: $78
    ld h, [hl]                                    ; $787d: $66
    ld h, [hl]                                    ; $787e: $66
    halt                                          ; $787f: $76
    add [hl]                                      ; $7880: $86
    halt                                          ; $7881: $76
    adc d                                         ; $7882: $8a
    xor d                                         ; $7883: $aa
    sbc b                                         ; $7884: $98
    adc d                                         ; $7885: $8a
    xor e                                         ; $7886: $ab

Call_010_7887:
    cp e                                          ; $7887: $bb
    sub a                                         ; $7888: $97
    ld a, b                                       ; $7889: $78
    adc b                                         ; $788a: $88
    xor d                                         ; $788b: $aa
    adc b                                         ; $788c: $88
    ld [hl], l                                    ; $788d: $75
    halt                                          ; $788e: $76
    add a                                         ; $788f: $87
    sbc b                                         ; $7890: $98
    adc b                                         ; $7891: $88
    ld h, a                                       ; $7892: $67
    ld a, b                                       ; $7893: $78
    sbc d                                         ; $7894: $9a
    add a                                         ; $7895: $87
    ld [hl], l                                    ; $7896: $75
    ld d, h                                       ; $7897: $54
    ld b, h                                       ; $7898: $44
    ld b, l                                       ; $7899: $45
    ld b, l                                       ; $789a: $45
    ld b, l                                       ; $789b: $45
    ld h, a                                       ; $789c: $67
    ld a, b                                       ; $789d: $78
    sbc b                                         ; $789e: $98
    sbc c                                         ; $789f: $99
    xor d                                         ; $78a0: $aa
    sbc c                                         ; $78a1: $99
    sbc b                                         ; $78a2: $98
    sbc b                                         ; $78a3: $98
    sbc c                                         ; $78a4: $99
    adc c                                         ; $78a5: $89
    add a                                         ; $78a6: $87
    ld d, [hl]                                    ; $78a7: $56
    ld l, b                                       ; $78a8: $68
    halt                                          ; $78a9: $76
    ld h, h                                       ; $78aa: $64
    ld b, l                                       ; $78ab: $45
    ld a, b                                       ; $78ac: $78
    sbc e                                         ; $78ad: $9b
    xor b                                         ; $78ae: $a8
    ld d, l                                       ; $78af: $55
    ld l, b                                       ; $78b0: $68
    adc c                                         ; $78b1: $89
    xor b                                         ; $78b2: $a8
    ld h, [hl]                                    ; $78b3: $66
    ld h, h                                       ; $78b4: $64
    ld d, [hl]                                    ; $78b5: $56
    ld h, [hl]                                    ; $78b6: $66
    ld a, b                                       ; $78b7: $78
    xor [hl]                                      ; $78b8: $ae

Call_010_78b9:
    db $fd                                        ; $78b9: $fd
    cp d                                          ; $78ba: $ba
    cp c                                          ; $78bb: $b9
    halt                                          ; $78bc: $76
    ld h, h                                       ; $78bd: $64
    ld h, a                                       ; $78be: $67
    sbc c                                         ; $78bf: $99
    adc b                                         ; $78c0: $88
    adc b                                         ; $78c1: $88
    halt                                          ; $78c2: $76
    ld d, h                                       ; $78c3: $54
    ld d, l                                       ; $78c4: $55
    ld h, l                                       ; $78c5: $65
    ld b, e                                       ; $78c6: $43

Call_010_78c7:
    inc hl                                        ; $78c7: $23
    ld d, [hl]                                    ; $78c8: $56
    ld a, c                                       ; $78c9: $79
    ld h, l                                       ; $78ca: $65
    ld [hl], a                                    ; $78cb: $77
    adc d                                         ; $78cc: $8a
    call z, $fdcc                                 ; $78cd: $cc $cc $fd
    sbc $ff                                       ; $78d0: $de $ff
    db $ed                                        ; $78d2: $ed
    res 0, [hl]                                   ; $78d3: $cb $86
    ld d, h                                       ; $78d5: $54
    inc [hl]                                      ; $78d6: $34
    ld b, h                                       ; $78d7: $44
    ld [hl-], a                                   ; $78d8: $32
    inc hl                                        ; $78d9: $23
    ld [hl+], a                                   ; $78da: $22
    inc [hl]                                      ; $78db: $34
    ld b, l                                       ; $78dc: $45
    ld h, [hl]                                    ; $78dd: $66
    ld d, l                                       ; $78de: $55
    ld b, l                                       ; $78df: $45
    ld h, [hl]                                    ; $78e0: $66
    adc b                                         ; $78e1: $88
    adc d                                         ; $78e2: $8a
    xor h                                         ; $78e3: $ac
    res 5, c                                      ; $78e4: $cb $a9
    cp d                                          ; $78e6: $ba
    xor c                                         ; $78e7: $a9
    sbc b                                         ; $78e8: $98
    adc b                                         ; $78e9: $88
    ld [hl], l                                    ; $78ea: $75
    ld hl, $3612                                  ; $78eb: $21 $12 $36
    adc b                                         ; $78ee: $88
    adc c                                         ; $78ef: $89
    sbc b                                         ; $78f0: $98
    ld [hl], a                                    ; $78f1: $77
    add a                                         ; $78f2: $87
    sbc d                                         ; $78f3: $9a
    call c, $aacc                                 ; $78f4: $dc $cc $aa
    adc b                                         ; $78f7: $88
    sbc c                                         ; $78f8: $99
    adc d                                         ; $78f9: $8a
    xor c                                         ; $78fa: $a9
    xor b                                         ; $78fb: $a8
    adc b                                         ; $78fc: $88
    ld [hl], a                                    ; $78fd: $77
    sbc c                                         ; $78fe: $99
    cp e                                          ; $78ff: $bb
    sbc c                                         ; $7900: $99
    ld [hl], a                                    ; $7901: $77
    ld d, e                                       ; $7902: $53
    ld b, h                                       ; $7903: $44
    ld h, a                                       ; $7904: $67
    ld a, b                                       ; $7905: $78
    sbc c                                         ; $7906: $99
    cp h                                          ; $7907: $bc
    cp d                                          ; $7908: $ba
    sbc c                                         ; $7909: $99
    halt                                          ; $790a: $76
    ld d, h                                       ; $790b: $54
    ld [hl-], a                                   ; $790c: $32
    ld hl, $0111                                  ; $790d: $21 $11 $01
    ld [bc], a                                    ; $7910: $02
    inc [hl]                                      ; $7911: $34
    ld l, c                                       ; $7912: $69
    xor e                                         ; $7913: $ab
    cp h                                          ; $7914: $bc
    call z, $ddde                                 ; $7915: $cc $de $dd
    call $badc                                    ; $7918: $cd $dc $ba
    cp e                                          ; $791b: $bb
    cp d                                          ; $791c: $ba
    sbc b                                         ; $791d: $98
    halt                                          ; $791e: $76
    ld [hl], a                                    ; $791f: $77
    ld h, l                                       ; $7920: $65
    ld d, l                                       ; $7921: $55
    ld b, h                                       ; $7922: $44
    ld d, h                                       ; $7923: $54
    ld b, h                                       ; $7924: $44
    ld b, h                                       ; $7925: $44
    ld b, l                                       ; $7926: $45
    ld h, l                                       ; $7927: $65
    ld d, [hl]                                    ; $7928: $56
    ld h, a                                       ; $7929: $67
    ld a, b                                       ; $792a: $78
    adc c                                         ; $792b: $89
    sbc c                                         ; $792c: $99
    sbc c                                         ; $792d: $99
    cp h                                          ; $792e: $bc
    jp z, $9aaa                                   ; $792f: $ca $aa $9a

    xor d                                         ; $7932: $aa
    xor d                                         ; $7933: $aa
    sbc c                                         ; $7934: $99
    ld a, b                                       ; $7935: $78
    ld [hl], a                                    ; $7936: $77
    ld h, [hl]                                    ; $7937: $66
    ld h, a                                       ; $7938: $67
    add a                                         ; $7939: $87
    adc b                                         ; $793a: $88
    adc d                                         ; $793b: $8a
    xor d                                         ; $793c: $aa
    xor c                                         ; $793d: $a9
    sub a                                         ; $793e: $97
    ld [hl], l                                    ; $793f: $75
    ld d, h                                       ; $7940: $54
    inc [hl]                                      ; $7941: $34
    ld b, h                                       ; $7942: $44
    ld d, l                                       ; $7943: $55
    ld h, [hl]                                    ; $7944: $66
    ld h, a                                       ; $7945: $67
    ld a, b                                       ; $7946: $78
    ld [hl], a                                    ; $7947: $77
    ld h, [hl]                                    ; $7948: $66
    ld d, l                                       ; $7949: $55
    ld d, a                                       ; $794a: $57
    ld h, a                                       ; $794b: $67
    adc c                                         ; $794c: $89
    xor e                                         ; $794d: $ab
    cp d                                          ; $794e: $ba
    sbc c                                         ; $794f: $99
    xor d                                         ; $7950: $aa
    xor c                                         ; $7951: $a9
    add [hl]                                      ; $7952: $86
    halt                                          ; $7953: $76
    ld [hl], a                                    ; $7954: $77
    ld h, [hl]                                    ; $7955: $66
    ld d, l                                       ; $7956: $55
    ld d, l                                       ; $7957: $55
    adc d                                         ; $7958: $8a
    cp h                                          ; $7959: $bc
    call c, $87ba                                 ; $795a: $dc $ba $87
    ld [hl], a                                    ; $795d: $77
    ld h, [hl]                                    ; $795e: $66
    ld d, h                                       ; $795f: $54
    ld b, l                                       ; $7960: $45
    ld h, [hl]                                    ; $7961: $66
    ld [hl], a                                    ; $7962: $77
    adc b                                         ; $7963: $88
    adc b                                         ; $7964: $88
    adc b                                         ; $7965: $88
    sub a                                         ; $7966: $97
    ld [hl], a                                    ; $7967: $77
    adc b                                         ; $7968: $88
    add [hl]                                      ; $7969: $86
    ld d, l                                       ; $796a: $55
    ld d, a                                       ; $796b: $57
    adc d                                         ; $796c: $8a
    cp d                                          ; $796d: $ba
    sbc b                                         ; $796e: $98
    adc b                                         ; $796f: $88
    sbc c                                         ; $7970: $99
    add a                                         ; $7971: $87
    ld d, h                                       ; $7972: $54
    ld b, h                                       ; $7973: $44
    ld b, h                                       ; $7974: $44
    ld b, e                                       ; $7975: $43
    ld b, l                                       ; $7976: $45
    ld h, a                                       ; $7977: $67
    adc c                                         ; $7978: $89
    sbc d                                         ; $7979: $9a
    sbc b                                         ; $797a: $98
    sbc d                                         ; $797b: $9a
    adc b                                         ; $797c: $88
    ld a, b                                       ; $797d: $78
    sbc c                                         ; $797e: $99
    xor e                                         ; $797f: $ab
    set 1, [hl]                                   ; $7980: $cb $ce
    cp $ee                                        ; $7982: $fe $ee
    res 2, a                                      ; $7984: $cb $97
    ld d, h                                       ; $7986: $54
    dec [hl]                                      ; $7987: $35
    ld [hl-], a                                   ; $7988: $32
    ld [hl+], a                                   ; $7989: $22
    ld de, $2401                                  ; $798a: $11 $01 $24
    ld b, [hl]                                    ; $798d: $46
    ld h, a                                       ; $798e: $67
    adc c                                         ; $798f: $89
    sbc c                                         ; $7990: $99
    xor e                                         ; $7991: $ab
    db $dd                                        ; $7992: $dd
    call c, $b9cc                                 ; $7993: $dc $cc $b9
    halt                                          ; $7996: $76
    ld h, a                                       ; $7997: $67
    add a                                         ; $7998: $87

Call_010_7999:
    halt                                          ; $7999: $76
    ld a, b                                       ; $799a: $78
    adc b                                         ; $799b: $88
    ld h, [hl]                                    ; $799c: $66
    ld h, a                                       ; $799d: $67
    ld [hl], a                                    ; $799e: $77
    ld [hl], a                                    ; $799f: $77
    adc b                                         ; $79a0: $88
    ld h, [hl]                                    ; $79a1: $66
    ld h, [hl]                                    ; $79a2: $66
    ld h, a                                       ; $79a3: $67
    ld [hl], a                                    ; $79a4: $77
    ld [hl], a                                    ; $79a5: $77
    ld h, [hl]                                    ; $79a6: $66
    ld h, [hl]                                    ; $79a7: $66
    ld [hl], a                                    ; $79a8: $77
    halt                                          ; $79a9: $76
    ld [hl], a                                    ; $79aa: $77
    ld a, b                                       ; $79ab: $78
    sbc c                                         ; $79ac: $99
    xor d                                         ; $79ad: $aa
    cp h                                          ; $79ae: $bc
    res 3, d                                      ; $79af: $cb $9a
    cp c                                          ; $79b1: $b9
    sbc b                                         ; $79b2: $98
    sbc d                                         ; $79b3: $9a
    call $b9cc                                    ; $79b4: $cd $cc $b9
    add a                                         ; $79b7: $87
    ld b, e                                       ; $79b8: $43
    jr nz, jr_010_79cc                            ; $79b9: $20 $11

    ld [bc], a                                    ; $79bb: $02
    dec [hl]                                      ; $79bc: $35
    ld d, l                                       ; $79bd: $55
    ld d, l                                       ; $79be: $55
    ld d, [hl]                                    ; $79bf: $56
    ld l, b                                       ; $79c0: $68
    sbc d                                         ; $79c1: $9a
    xor c                                         ; $79c2: $a9
    ld a, b                                       ; $79c3: $78
    sbc d                                         ; $79c4: $9a
    sbc b                                         ; $79c5: $98
    ld a, b                                       ; $79c6: $78
    add a                                         ; $79c7: $87
    ld [hl], a                                    ; $79c8: $77
    sbc c                                         ; $79c9: $99
    ld a, b                                       ; $79ca: $78
    sbc d                                         ; $79cb: $9a

jr_010_79cc:
    sbc b                                         ; $79cc: $98
    sbc c                                         ; $79cd: $99
    add a                                         ; $79ce: $87
    ld [hl], a                                    ; $79cf: $77
    ld h, [hl]                                    ; $79d0: $66
    ld h, a                                       ; $79d1: $67
    ld a, c                                       ; $79d2: $79
    sbc b                                         ; $79d3: $98
    sbc c                                         ; $79d4: $99
    sbc e                                         ; $79d5: $9b
    cp e                                          ; $79d6: $bb
    cp e                                          ; $79d7: $bb
    cp d                                          ; $79d8: $ba
    add [hl]                                      ; $79d9: $86
    ld d, l                                       ; $79da: $55
    ld sp, $5724                                  ; $79db: $31 $24 $57
    adc e                                         ; $79de: $8b
    cp h                                          ; $79df: $bc
    res 7, c                                      ; $79e0: $cb $b9
    add l                                         ; $79e2: $85
    ld [hl-], a                                   ; $79e3: $32
    ld de, $4423                                  ; $79e4: $11 $23 $44
    ld d, l                                       ; $79e7: $55
    ld h, [hl]                                    ; $79e8: $66
    adc d                                         ; $79e9: $8a
    call $aadb                                    ; $79ea: $cd $db $aa
    cp l                                          ; $79ed: $bd
    sbc $ca                                       ; $79ee: $de $ca
    adc b                                         ; $79f0: $88
    add a                                         ; $79f1: $87
    ld a, b                                       ; $79f2: $78
    add [hl]                                      ; $79f3: $86
    ld h, [hl]                                    ; $79f4: $66
    ld a, b                                       ; $79f5: $78
    adc c                                         ; $79f6: $89
    sbc c                                         ; $79f7: $99
    add [hl]                                      ; $79f8: $86
    ld d, h                                       ; $79f9: $54
    ld b, h                                       ; $79fa: $44
    ld b, e                                       ; $79fb: $43
    inc sp                                        ; $79fc: $33
    ld b, [hl]                                    ; $79fd: $46
    adc c                                         ; $79fe: $89
    adc b                                         ; $79ff: $88
    add [hl]                                      ; $7a00: $86
    ld [hl], a                                    ; $7a01: $77
    ld [hl], a                                    ; $7a02: $77
    ld h, h                                       ; $7a03: $64
    ld b, l                                       ; $7a04: $45
    ld d, l                                       ; $7a05: $55
    adc e                                         ; $7a06: $8b
    call c, $98cb                                 ; $7a07: $dc $cb $98
    adc b                                         ; $7a0a: $88
    add [hl]                                      ; $7a0b: $86
    ld d, [hl]                                    ; $7a0c: $56
    ld [hl], a                                    ; $7a0d: $77
    halt                                          ; $7a0e: $76
    adc d                                         ; $7a0f: $8a
    xor c                                         ; $7a10: $a9
    add a                                         ; $7a11: $87
    ld a, b                                       ; $7a12: $78
    adc d                                         ; $7a13: $8a
    xor c                                         ; $7a14: $a9
    adc b                                         ; $7a15: $88
    ld a, b                                       ; $7a16: $78
    xor d                                         ; $7a17: $aa
    sbc d                                         ; $7a18: $9a
    sbc b                                         ; $7a19: $98
    adc b                                         ; $7a1a: $88
    adc c                                         ; $7a1b: $89
    adc c                                         ; $7a1c: $89
    add a                                         ; $7a1d: $87
    ld e, b                                       ; $7a1e: $58
    adc c                                         ; $7a1f: $89
    sbc b                                         ; $7a20: $98
    sub [hl]                                      ; $7a21: $96
    ld [hl], l                                    ; $7a22: $75
    ld d, l                                       ; $7a23: $55
    ld d, l                                       ; $7a24: $55
    ld [hl-], a                                   ; $7a25: $32
    ld [hl+], a                                   ; $7a26: $22
    inc hl                                        ; $7a27: $23
    inc sp                                        ; $7a28: $33
    ld d, a                                       ; $7a29: $57
    adc d                                         ; $7a2a: $8a
    cp e                                          ; $7a2b: $bb
    call $a9cb                                    ; $7a2c: $cd $cb $a9
    adc b                                         ; $7a2f: $88
    ld h, a                                       ; $7a30: $67
    ld [hl], a                                    ; $7a31: $77
    ld h, [hl]                                    ; $7a32: $66
    ld d, l                                       ; $7a33: $55
    ld d, h                                       ; $7a34: $54
    ld d, l                                       ; $7a35: $55
    ld h, a                                       ; $7a36: $67
    adc b                                         ; $7a37: $88
    adc c                                         ; $7a38: $89
    sbc d                                         ; $7a39: $9a
    xor d                                         ; $7a3a: $aa
    sbc d                                         ; $7a3b: $9a
    sbc c                                         ; $7a3c: $99
    xor d                                         ; $7a3d: $aa
    xor c                                         ; $7a3e: $a9
    sbc c                                         ; $7a3f: $99
    sbc c                                         ; $7a40: $99
    adc b                                         ; $7a41: $88
    adc b                                         ; $7a42: $88
    sbc c                                         ; $7a43: $99
    ld a, b                                       ; $7a44: $78
    sbc d                                         ; $7a45: $9a
    add a                                         ; $7a46: $87
    ld [hl], a                                    ; $7a47: $77
    halt                                          ; $7a48: $76
    ld h, [hl]                                    ; $7a49: $66
    ld a, b                                       ; $7a4a: $78
    adc b                                         ; $7a4b: $88
    adc b                                         ; $7a4c: $88
    adc b                                         ; $7a4d: $88
    adc b                                         ; $7a4e: $88
    sbc c                                         ; $7a4f: $99
    add [hl]                                      ; $7a50: $86
    ld b, d                                       ; $7a51: $42
    inc hl                                        ; $7a52: $23
    ld [hl+], a                                   ; $7a53: $22
    ld e, c                                       ; $7a54: $59
    sbc $ee                                       ; $7a55: $de $ee
    call c, Call_000_3286                         ; $7a57: $dc $86 $32
    ld d, a                                       ; $7a5a: $57
    ld d, l                                       ; $7a5b: $55
    ld b, e                                       ; $7a5c: $43
    inc sp                                        ; $7a5d: $33
    dec [hl]                                      ; $7a5e: $35
    ld h, a                                       ; $7a5f: $67
    adc b                                         ; $7a60: $88
    xor e                                         ; $7a61: $ab
    cp e                                          ; $7a62: $bb
    xor c                                         ; $7a63: $a9
    sbc b                                         ; $7a64: $98
    adc c                                         ; $7a65: $89
    adc c                                         ; $7a66: $89
    adc c                                         ; $7a67: $89
    sub a                                         ; $7a68: $97
    ld a, b                                       ; $7a69: $78
    sub [hl]                                      ; $7a6a: $96
    inc [hl]                                      ; $7a6b: $34
    ld [hl-], a                                   ; $7a6c: $32
    dec [hl]                                      ; $7a6d: $35
    ld h, a                                       ; $7a6e: $67
    ld d, a                                       ; $7a6f: $57
    sbc c                                         ; $7a70: $99
    xor e                                         ; $7a71: $ab
    cp c                                          ; $7a72: $b9
    xor c                                         ; $7a73: $a9
    cp h                                          ; $7a74: $bc
    cp c                                          ; $7a75: $b9
    sbc b                                         ; $7a76: $98
    halt                                          ; $7a77: $76
    halt                                          ; $7a78: $76
    ld d, d                                       ; $7a79: $52
    ld hl, $4612                                  ; $7a7a: $21 $12 $46
    sbc c                                         ; $7a7d: $99
    sbc c                                         ; $7a7e: $99
    sbc c                                         ; $7a7f: $99
    xor d                                         ; $7a80: $aa
    ld h, l                                       ; $7a81: $65
    ld b, l                                       ; $7a82: $45
    ld a, b                                       ; $7a83: $78
    cp l                                          ; $7a84: $bd
    cp $fe                                        ; $7a85: $fe $fe
    reti                                          ; $7a87: $d9


    halt                                          ; $7a88: $76
    ld [hl], a                                    ; $7a89: $77
    adc c                                         ; $7a8a: $89
    xor e                                         ; $7a8b: $ab
    xor d                                         ; $7a8c: $aa
    call $caed                                    ; $7a8d: $cd $ed $ca
    add a                                         ; $7a90: $87
    ld d, e                                       ; $7a91: $53
    ld [hl+], a                                   ; $7a92: $22
    inc sp                                        ; $7a93: $33
    inc sp                                        ; $7a94: $33
    ld [hl+], a                                   ; $7a95: $22
    ld hl, $4623                                  ; $7a96: $21 $23 $46
    ld a, b                                       ; $7a99: $78
    adc b                                         ; $7a9a: $88
    sbc d                                         ; $7a9b: $9a
    xor e                                         ; $7a9c: $ab
    cp e                                          ; $7a9d: $bb
    cp e                                          ; $7a9e: $bb
    xor d                                         ; $7a9f: $aa
    adc b                                         ; $7aa0: $88
    add a                                         ; $7aa1: $87
    ld h, [hl]                                    ; $7aa2: $66
    halt                                          ; $7aa3: $76
    ld b, e                                       ; $7aa4: $43
    inc hl                                        ; $7aa5: $23
    ld b, l                                       ; $7aa6: $45
    ld a, b                                       ; $7aa7: $78
    adc c                                         ; $7aa8: $89
    xor d                                         ; $7aa9: $aa
    adc b                                         ; $7aaa: $88
    add a                                         ; $7aab: $87
    adc b                                         ; $7aac: $88
    sbc c                                         ; $7aad: $99
    sbc b                                         ; $7aae: $98
    adc c                                         ; $7aaf: $89
    sbc b                                         ; $7ab0: $98
    adc b                                         ; $7ab1: $88
    adc c                                         ; $7ab2: $89
    sbc c                                         ; $7ab3: $99
    sub a                                         ; $7ab4: $97
    ld [hl], a                                    ; $7ab5: $77
    adc b                                         ; $7ab6: $88
    adc b                                         ; $7ab7: $88
    adc b                                         ; $7ab8: $88
    ld [hl], a                                    ; $7ab9: $77
    ld h, l                                       ; $7aba: $65
    ld d, [hl]                                    ; $7abb: $56
    ld h, [hl]                                    ; $7abc: $66
    ld h, [hl]                                    ; $7abd: $66
    ld [hl], a                                    ; $7abe: $77
    halt                                          ; $7abf: $76
    add a                                         ; $7ac0: $87
    halt                                          ; $7ac1: $76
    ld h, [hl]                                    ; $7ac2: $66
    ld h, [hl]                                    ; $7ac3: $66
    ld h, [hl]                                    ; $7ac4: $66
    ld h, l                                       ; $7ac5: $65
    ld h, [hl]                                    ; $7ac6: $66
    ld h, [hl]                                    ; $7ac7: $66
    ld h, [hl]                                    ; $7ac8: $66
    ld h, a                                       ; $7ac9: $67
    halt                                          ; $7aca: $76
    ld h, a                                       ; $7acb: $67
    ld a, c                                       ; $7acc: $79
    sbc d                                         ; $7acd: $9a
    sbc c                                         ; $7ace: $99
    sbc e                                         ; $7acf: $9b
    xor c                                         ; $7ad0: $a9
    xor d                                         ; $7ad1: $aa
    xor c                                         ; $7ad2: $a9
    add a                                         ; $7ad3: $87
    ld h, l                                       ; $7ad4: $65
    ld d, l                                       ; $7ad5: $55
    ld b, h                                       ; $7ad6: $44
    ld d, l                                       ; $7ad7: $55
    ld a, b                                       ; $7ad8: $78
    xor d                                         ; $7ad9: $aa
    sbc d                                         ; $7ada: $9a
    xor c                                         ; $7adb: $a9
    xor d                                         ; $7adc: $aa
    cp d                                          ; $7add: $ba
    xor d                                         ; $7ade: $aa
    xor e                                         ; $7adf: $ab
    xor d                                         ; $7ae0: $aa
    xor h                                         ; $7ae1: $ac
    xor $ee                                       ; $7ae2: $ee $ee
    call c, $a9cb                                 ; $7ae4: $dc $cb $a9
    sbc b                                         ; $7ae7: $98
    ld [hl], a                                    ; $7ae8: $77
    adc b                                         ; $7ae9: $88
    halt                                          ; $7aea: $76
    ld h, [hl]                                    ; $7aeb: $66
    ld b, d                                       ; $7aec: $42
    ld [hl+], a                                   ; $7aed: $22
    inc hl                                        ; $7aee: $23
    inc sp                                        ; $7aef: $33
    ld b, l                                       ; $7af0: $45
    ld h, [hl]                                    ; $7af1: $66
    ld d, [hl]                                    ; $7af2: $56
    ld h, [hl]                                    ; $7af3: $66
    ld a, b                                       ; $7af4: $78
    add a                                         ; $7af5: $87
    ld h, a                                       ; $7af6: $67
    ld h, [hl]                                    ; $7af7: $66
    ld h, a                                       ; $7af8: $67
    adc b                                         ; $7af9: $88
    sbc c                                         ; $7afa: $99
    sbc c                                         ; $7afb: $99
    sbc c                                         ; $7afc: $99
    adc b                                         ; $7afd: $88
    ld a, b                                       ; $7afe: $78
    adc b                                         ; $7aff: $88
    adc b                                         ; $7b00: $88
    ld d, e                                       ; $7b01: $53
    ld d, e                                       ; $7b02: $53
    ld de, $5723                                  ; $7b03: $11 $23 $57
    ld a, b                                       ; $7b06: $78
    sbc b                                         ; $7b07: $98
    xor e                                         ; $7b08: $ab
    sbc b                                         ; $7b09: $98
    sbc c                                         ; $7b0a: $99
    xor d                                         ; $7b0b: $aa
    xor c                                         ; $7b0c: $a9
    halt                                          ; $7b0d: $76
    ld h, a                                       ; $7b0e: $67
    ld h, l                                       ; $7b0f: $65
    ld d, h                                       ; $7b10: $54
    ld sp, $2421                                  ; $7b11: $31 $21 $24
    ld b, a                                       ; $7b14: $47
    adc b                                         ; $7b15: $88
    adc b                                         ; $7b16: $88
    cp l                                          ; $7b17: $bd
    rst $18                                       ; $7b18: $df
    cp $fe                                        ; $7b19: $fe $fe
    sbc $ef                                       ; $7b1b: $de $ef
    cp $cb                                        ; $7b1d: $fe $cb
    sub a                                         ; $7b1f: $97
    add l                                         ; $7b20: $85
    ld d, l                                       ; $7b21: $55
    ld d, l                                       ; $7b22: $55
    ld h, [hl]                                    ; $7b23: $66
    ld d, h                                       ; $7b24: $54
    ld b, h                                       ; $7b25: $44
    ld b, l                                       ; $7b26: $45
    ld d, h                                       ; $7b27: $54
    ld b, h                                       ; $7b28: $44
    ld b, h                                       ; $7b29: $44
    dec [hl]                                      ; $7b2a: $35
    ld h, [hl]                                    ; $7b2b: $66
    ld [hl], a                                    ; $7b2c: $77
    ld [hl], a                                    ; $7b2d: $77
    adc d                                         ; $7b2e: $8a
    xor d                                         ; $7b2f: $aa
    xor d                                         ; $7b30: $aa
    cp e                                          ; $7b31: $bb
    cp e                                          ; $7b32: $bb
    xor d                                         ; $7b33: $aa
    xor b                                         ; $7b34: $a8
    ld [hl], a                                    ; $7b35: $77
    ld h, a                                       ; $7b36: $67
    ld h, l                                       ; $7b37: $65
    ld d, l                                       ; $7b38: $55
    ld d, [hl]                                    ; $7b39: $56
    ld a, b                                       ; $7b3a: $78
    adc c                                         ; $7b3b: $89
    adc c                                         ; $7b3c: $89
    sbc e                                         ; $7b3d: $9b
    cp h                                          ; $7b3e: $bc
    cp h                                          ; $7b3f: $bc
    call $87a8                                    ; $7b40: $cd $a8 $87
    ld d, [hl]                                    ; $7b43: $56
    ld b, h                                       ; $7b44: $44
    ld hl, $3523                                  ; $7b45: $21 $23 $35
    ld [hl], a                                    ; $7b48: $77
    ld a, b                                       ; $7b49: $78
    sbc c                                         ; $7b4a: $99
    sbc c                                         ; $7b4b: $99
    add a                                         ; $7b4c: $87
    ld [hl], a                                    ; $7b4d: $77
    sbc c                                         ; $7b4e: $99
    xor d                                         ; $7b4f: $aa
    xor c                                         ; $7b50: $a9
    adc b                                         ; $7b51: $88
    add a                                         ; $7b52: $87
    ld h, [hl]                                    ; $7b53: $66
    ld d, l                                       ; $7b54: $55
    inc sp                                        ; $7b55: $33
    ld b, h                                       ; $7b56: $44
    ld d, [hl]                                    ; $7b57: $56
    ld h, l                                       ; $7b58: $65
    ld b, l                                       ; $7b59: $45
    ld h, a                                       ; $7b5a: $67
    add a                                         ; $7b5b: $87
    ld h, [hl]                                    ; $7b5c: $66
    halt                                          ; $7b5d: $76
    ld l, b                                       ; $7b5e: $68
    sbc d                                         ; $7b5f: $9a
    cp e                                          ; $7b60: $bb
    cp c                                          ; $7b61: $b9
    xor d                                         ; $7b62: $aa
    sbc d                                         ; $7b63: $9a

Jump_010_7b64:
    sbc b                                         ; $7b64: $98
    adc c                                         ; $7b65: $89
    adc b                                         ; $7b66: $88
    adc d                                         ; $7b67: $8a
    sbc c                                         ; $7b68: $99
    add [hl]                                      ; $7b69: $86
    ld a, b                                       ; $7b6a: $78
    adc b                                         ; $7b6b: $88
    add a                                         ; $7b6c: $87
    ld [hl], a                                    ; $7b6d: $77
    halt                                          ; $7b6e: $76
    ld d, h                                       ; $7b6f: $54
    ld d, a                                       ; $7b70: $57
    add a                                         ; $7b71: $87
    adc c                                         ; $7b72: $89
    sbc c                                         ; $7b73: $99
    sbc b                                         ; $7b74: $98
    sbc d                                         ; $7b75: $9a
    cp e                                          ; $7b76: $bb
    cp e                                          ; $7b77: $bb
    cp h                                          ; $7b78: $bc
    call z, $88a9                                 ; $7b79: $cc $a9 $88
    ld [hl], a                                    ; $7b7c: $77
    ld [hl], a                                    ; $7b7d: $77
    halt                                          ; $7b7e: $76
    ld h, l                                       ; $7b7f: $65
    ld d, e                                       ; $7b80: $53
    ld [hl-], a                                   ; $7b81: $32
    inc de                                        ; $7b82: $13
    inc sp                                        ; $7b83: $33
    ld d, [hl]                                    ; $7b84: $56
    ld h, h                                       ; $7b85: $64
    ld d, l                                       ; $7b86: $55
    ld d, [hl]                                    ; $7b87: $56
    ld h, [hl]                                    ; $7b88: $66
    ld a, c                                       ; $7b89: $79
    adc c                                         ; $7b8a: $89
    cp e                                          ; $7b8b: $bb
    res 7, e                                      ; $7b8c: $cb $bb
    jp z, $99a9                                   ; $7b8e: $ca $a9 $99

    halt                                          ; $7b91: $76
    ld h, a                                       ; $7b92: $67
    ld [hl], a                                    ; $7b93: $77
    halt                                          ; $7b94: $76
    ld h, [hl]                                    ; $7b95: $66
    ld b, l                                       ; $7b96: $45
    ld d, l                                       ; $7b97: $55
    ld h, a                                       ; $7b98: $67
    sbc c                                         ; $7b99: $99
    adc b                                         ; $7b9a: $88
    adc c                                         ; $7b9b: $89
    adc b                                         ; $7b9c: $88
    halt                                          ; $7b9d: $76
    ld h, [hl]                                    ; $7b9e: $66
    ld [hl], a                                    ; $7b9f: $77
    adc b                                         ; $7ba0: $88
    ld a, b                                       ; $7ba1: $78
    add a                                         ; $7ba2: $87
    ld h, h                                       ; $7ba3: $64
    ld b, l                                       ; $7ba4: $45
    ld a, b                                       ; $7ba5: $78
    sub a                                         ; $7ba6: $97
    add a                                         ; $7ba7: $87
    adc b                                         ; $7ba8: $88
    ld h, a                                       ; $7ba9: $67
    adc b                                         ; $7baa: $88
    ld [hl], a                                    ; $7bab: $77
    ld a, b                                       ; $7bac: $78
    adc b                                         ; $7bad: $88
    sub a                                         ; $7bae: $97
    ld [hl], l                                    ; $7baf: $75
    ld b, l                                       ; $7bb0: $45
    ld a, d                                       ; $7bb1: $7a
    cp h                                          ; $7bb2: $bc
    cp d                                          ; $7bb3: $ba
    sbc c                                         ; $7bb4: $99
    sbc d                                         ; $7bb5: $9a
    cp d                                          ; $7bb6: $ba
    adc b                                         ; $7bb7: $88
    sbc c                                         ; $7bb8: $99
    adc c                                         ; $7bb9: $89
    xor e                                         ; $7bba: $ab
    cp l                                          ; $7bbb: $bd
    res 5, b                                      ; $7bbc: $cb $a8
    sbc d                                         ; $7bbe: $9a
    xor d                                         ; $7bbf: $aa
    xor b                                         ; $7bc0: $a8
    ld h, l                                       ; $7bc1: $65
    ld d, e                                       ; $7bc2: $53
    ld [hl-], a                                   ; $7bc3: $32
    inc de                                        ; $7bc4: $13
    ld h, a                                       ; $7bc5: $67
    sbc d                                         ; $7bc6: $9a
    sbc b                                         ; $7bc7: $98
    add a                                         ; $7bc8: $87
    ld h, [hl]                                    ; $7bc9: $66
    ld h, a                                       ; $7bca: $67
    ld [hl], a                                    ; $7bcb: $77
    halt                                          ; $7bcc: $76
    ld h, a                                       ; $7bcd: $67
    ld h, a                                       ; $7bce: $67
    ld a, b                                       ; $7bcf: $78
    add a                                         ; $7bd0: $87
    sbc b                                         ; $7bd1: $98
    halt                                          ; $7bd2: $76
    ld [hl], a                                    ; $7bd3: $77
    adc c                                         ; $7bd4: $89
    sbc b                                         ; $7bd5: $98
    ld a, b                                       ; $7bd6: $78
    adc c                                         ; $7bd7: $89
    sbc c                                         ; $7bd8: $99
    halt                                          ; $7bd9: $76
    ld h, [hl]                                    ; $7bda: $66
    ld h, a                                       ; $7bdb: $67
    add a                                         ; $7bdc: $87
    ld h, a                                       ; $7bdd: $67
    ld [hl], a                                    ; $7bde: $77
    ld h, a                                       ; $7bdf: $67
    add a                                         ; $7be0: $87
    adc d                                         ; $7be1: $8a
    xor e                                         ; $7be2: $ab
    xor c                                         ; $7be3: $a9
    adc b                                         ; $7be4: $88
    ld h, a                                       ; $7be5: $67
    ld h, l                                       ; $7be6: $65
    ld b, l                                       ; $7be7: $45
    ld h, h                                       ; $7be8: $64
    ld h, [hl]                                    ; $7be9: $66
    ld h, [hl]                                    ; $7bea: $66
    ld h, l                                       ; $7beb: $65
    ld b, l                                       ; $7bec: $45
    ld d, l                                       ; $7bed: $55
    ld d, [hl]                                    ; $7bee: $56
    ld d, h                                       ; $7bef: $54
    ld d, [hl]                                    ; $7bf0: $56
    ld h, a                                       ; $7bf1: $67
    ld [hl], a                                    ; $7bf2: $77
    ld h, [hl]                                    ; $7bf3: $66
    adc b                                         ; $7bf4: $88
    adc d                                         ; $7bf5: $8a
    xor d                                         ; $7bf6: $aa
    xor c                                         ; $7bf7: $a9
    sbc c                                         ; $7bf8: $99
    sbc c                                         ; $7bf9: $99
    sbc c                                         ; $7bfa: $99
    sbc d                                         ; $7bfb: $9a
    xor c                                         ; $7bfc: $a9
    xor b                                         ; $7bfd: $a8
    adc b                                         ; $7bfe: $88
    adc b                                         ; $7bff: $88
    adc d                                         ; $7c00: $8a
    xor d                                         ; $7c01: $aa
    sub [hl]                                      ; $7c02: $96
    ld h, [hl]                                    ; $7c03: $66
    ld a, b                                       ; $7c04: $78
    adc c                                         ; $7c05: $89
    adc b                                         ; $7c06: $88
    adc b                                         ; $7c07: $88
    xor e                                         ; $7c08: $ab
    res 7, h                                      ; $7c09: $cb $bc
    cp e                                          ; $7c0b: $bb
    sbc b                                         ; $7c0c: $98
    sbc b                                         ; $7c0d: $98
    adc d                                         ; $7c0e: $8a
    cp c                                          ; $7c0f: $b9
    sbc b                                         ; $7c10: $98
    ld [hl], a                                    ; $7c11: $77
    ld a, c                                       ; $7c12: $79
    adc b                                         ; $7c13: $88
    ld h, [hl]                                    ; $7c14: $66
    ld d, h                                       ; $7c15: $54
    ld b, e                                       ; $7c16: $43
    ld b, h                                       ; $7c17: $44
    ld [hl-], a                                   ; $7c18: $32
    dec h                                         ; $7c19: $25
    ld d, l                                       ; $7c1a: $55
    ld d, l                                       ; $7c1b: $55
    ld h, a                                       ; $7c1c: $67
    ld a, b                                       ; $7c1d: $78
    sbc d                                         ; $7c1e: $9a
    xor c                                         ; $7c1f: $a9
    xor d                                         ; $7c20: $aa
    adc b                                         ; $7c21: $88
    ld a, b                                       ; $7c22: $78
    ld a, b                                       ; $7c23: $78
    sbc d                                         ; $7c24: $9a
    cp e                                          ; $7c25: $bb
    call z, $9abb                                 ; $7c26: $cc $bb $9a
    xor d                                         ; $7c29: $aa
    xor c                                         ; $7c2a: $a9
    add [hl]                                      ; $7c2b: $86
    ld d, [hl]                                    ; $7c2c: $56
    ld [hl], a                                    ; $7c2d: $77
    ld h, [hl]                                    ; $7c2e: $66
    ld h, a                                       ; $7c2f: $67
    adc b                                         ; $7c30: $88
    adc b                                         ; $7c31: $88
    halt                                          ; $7c32: $76
    ld d, l                                       ; $7c33: $55
    ld [hl-], a                                   ; $7c34: $32
    ld [hl-], a                                   ; $7c35: $32
    ld [hl+], a                                   ; $7c36: $22
    ld [hl-], a                                   ; $7c37: $32
    inc h                                         ; $7c38: $24
    ld d, [hl]                                    ; $7c39: $56
    ld h, [hl]                                    ; $7c3a: $66
    ld l, b                                       ; $7c3b: $68
    xor d                                         ; $7c3c: $aa
    sbc c                                         ; $7c3d: $99
    sbc c                                         ; $7c3e: $99
    add a                                         ; $7c3f: $87
    adc b                                         ; $7c40: $88
    ld [hl], a                                    ; $7c41: $77
    ld a, c                                       ; $7c42: $79
    sub a                                         ; $7c43: $97
    ld a, c                                       ; $7c44: $79
    sub [hl]                                      ; $7c45: $96
    ld d, l                                       ; $7c46: $55
    ld d, [hl]                                    ; $7c47: $56
    halt                                          ; $7c48: $76
    ld a, b                                       ; $7c49: $78
    ld [hl], a                                    ; $7c4a: $77
    ld e, b                                       ; $7c4b: $58
    adc b                                         ; $7c4c: $88
    xor e                                         ; $7c4d: $ab
    cp l                                          ; $7c4e: $bd
    call $caec                                    ; $7c4f: $cd $ec $ca
    sbc c                                         ; $7c52: $99
    ld a, b                                       ; $7c53: $78
    adc b                                         ; $7c54: $88
    ld h, l                                       ; $7c55: $65
    ld h, l                                       ; $7c56: $65
    ld b, l                                       ; $7c57: $45
    ld b, a                                       ; $7c58: $47
    add a                                         ; $7c59: $87
    ld h, [hl]                                    ; $7c5a: $66
    halt                                          ; $7c5b: $76
    ld b, l                                       ; $7c5c: $45
    ld h, l                                       ; $7c5d: $65
    ld a, b                                       ; $7c5e: $78
    adc c                                         ; $7c5f: $89
    sub [hl]                                      ; $7c60: $96
    ld d, e                                       ; $7c61: $53
    ld b, l                                       ; $7c62: $45
    ld d, a                                       ; $7c63: $57
    call $bccb                                    ; $7c64: $cd $cb $bc
    xor b                                         ; $7c67: $a8
    ld h, l                                       ; $7c68: $65
    ld a, c                                       ; $7c69: $79
    xor e                                         ; $7c6a: $ab
    xor d                                         ; $7c6b: $aa
    ld h, [hl]                                    ; $7c6c: $66
    ld h, l                                       ; $7c6d: $65
    ld b, [hl]                                    ; $7c6e: $46
    ld h, a                                       ; $7c6f: $67
    sbc e                                         ; $7c70: $9b
    add [hl]                                      ; $7c71: $86
    adc c                                         ; $7c72: $89
    add a                                         ; $7c73: $87
    ld [hl], a                                    ; $7c74: $77
    add a                                         ; $7c75: $87
    adc c                                         ; $7c76: $89
    sub a                                         ; $7c77: $97
    xor e                                         ; $7c78: $ab
    sbc c                                         ; $7c79: $99
    sbc e                                         ; $7c7a: $9b
    sbc b                                         ; $7c7b: $98
    ld l, b                                       ; $7c7c: $68
    jp z, $cc68                                   ; $7c7d: $ca $68 $cc

    sub [hl]                                      ; $7c80: $96
    ld h, [hl]                                    ; $7c81: $66
    ld [hl], a                                    ; $7c82: $77
    ld h, d                                       ; $7c83: $62
    ld [bc], a                                    ; $7c84: $02
    ld b, e                                       ; $7c85: $43
    ld e, b                                       ; $7c86: $58
    sbc d                                         ; $7c87: $9a
    db $dd                                        ; $7c88: $dd
    ret                                           ; $7c89: $c9


    adc c                                         ; $7c8a: $89
    sub a                                         ; $7c8b: $97
    ld b, d                                       ; $7c8c: $42
    ld b, [hl]                                    ; $7c8d: $46
    ld l, c                                       ; $7c8e: $69
    xor e                                         ; $7c8f: $ab
    xor d                                         ; $7c90: $aa
    sbc c                                         ; $7c91: $99
    ld [hl], a                                    ; $7c92: $77
    halt                                          ; $7c93: $76
    ld [hl], a                                    ; $7c94: $77
    add a                                         ; $7c95: $87
    ld a, b                                       ; $7c96: $78
    halt                                          ; $7c97: $76
    ld h, [hl]                                    ; $7c98: $66
    halt                                          ; $7c99: $76
    ld h, l                                       ; $7c9a: $65
    ld d, h                                       ; $7c9b: $54
    ld d, a                                       ; $7c9c: $57
    ld h, [hl]                                    ; $7c9d: $66
    ld h, [hl]                                    ; $7c9e: $66
    halt                                          ; $7c9f: $76
    add [hl]                                      ; $7ca0: $86
    ld l, c                                       ; $7ca1: $69
    cp c                                          ; $7ca2: $b9
    adc b                                         ; $7ca3: $88
    sbc c                                         ; $7ca4: $99
    ld [hl], a                                    ; $7ca5: $77
    halt                                          ; $7ca6: $76
    ld d, a                                       ; $7ca7: $57
    ld d, a                                       ; $7ca8: $57
    ld [hl], l                                    ; $7ca9: $75
    ld h, a                                       ; $7caa: $67
    ld [hl], a                                    ; $7cab: $77
    halt                                          ; $7cac: $76
    ld b, l                                       ; $7cad: $45
    ld h, a                                       ; $7cae: $67
    add a                                         ; $7caf: $87
    add [hl]                                      ; $7cb0: $86
    add a                                         ; $7cb1: $87
    ld [hl], a                                    ; $7cb2: $77
    ld h, a                                       ; $7cb3: $67
    ld h, a                                       ; $7cb4: $67
    ld h, [hl]                                    ; $7cb5: $66
    adc b                                         ; $7cb6: $88
    ld d, l                                       ; $7cb7: $55
    ld h, a                                       ; $7cb8: $67
    ld [hl], a                                    ; $7cb9: $77
    ld l, b                                       ; $7cba: $68
    adc c                                         ; $7cbb: $89
    sbc c                                         ; $7cbc: $99
    sbc b                                         ; $7cbd: $98
    adc b                                         ; $7cbe: $88
    adc c                                         ; $7cbf: $89
    sub a                                         ; $7cc0: $97
    ld [hl], a                                    ; $7cc1: $77
    sbc d                                         ; $7cc2: $9a
    call Call_010_65a8                            ; $7cc3: $cd $a8 $65
    ld d, a                                       ; $7cc6: $57
    adc c                                         ; $7cc7: $89
    cp l                                          ; $7cc8: $bd
    call c, $86ca                                 ; $7cc9: $dc $ca $86
    ld d, l                                       ; $7ccc: $55
    ld b, h                                       ; $7ccd: $44
    ld b, l                                       ; $7cce: $45
    halt                                          ; $7ccf: $76
    ld d, [hl]                                    ; $7cd0: $56
    ld h, [hl]                                    ; $7cd1: $66
    ld l, b                                       ; $7cd2: $68
    sbc b                                         ; $7cd3: $98
    sbc d                                         ; $7cd4: $9a
    call $deed                                    ; $7cd5: $cd $ed $de
    cp $db                                        ; $7cd8: $fe $db
    adc c                                         ; $7cda: $89
    sub [hl]                                      ; $7cdb: $96
    ld d, l                                       ; $7cdc: $55
    ld a, d                                       ; $7cdd: $7a
    sub a                                         ; $7cde: $97
    ld [hl], a                                    ; $7cdf: $77
    ld h, [hl]                                    ; $7ce0: $66
    ld [hl], a                                    ; $7ce1: $77
    halt                                          ; $7ce2: $76
    adc b                                         ; $7ce3: $88
    ld a, b                                       ; $7ce4: $78
    add a                                         ; $7ce5: $87
    adc b                                         ; $7ce6: $88
    sbc b                                         ; $7ce7: $98
    adc c                                         ; $7ce8: $89
    cp e                                          ; $7ce9: $bb
    sbc b                                         ; $7cea: $98
    sbc b                                         ; $7ceb: $98
    halt                                          ; $7cec: $76
    ld d, l                                       ; $7ced: $55
    ld h, [hl]                                    ; $7cee: $66
    ld d, l                                       ; $7cef: $55
    ld h, [hl]                                    ; $7cf0: $66
    ld d, h                                       ; $7cf1: $54
    ld d, l                                       ; $7cf2: $55
    ld d, h                                       ; $7cf3: $54
    ld h, l                                       ; $7cf4: $65
    ld [hl], a                                    ; $7cf5: $77
    ld h, [hl]                                    ; $7cf6: $66
    ld b, h                                       ; $7cf7: $44
    ld b, e                                       ; $7cf8: $43
    ld b, h                                       ; $7cf9: $44
    ld d, [hl]                                    ; $7cfa: $56
    ld b, l                                       ; $7cfb: $45
    ld d, h                                       ; $7cfc: $54
    ld d, [hl]                                    ; $7cfd: $56
    ld d, l                                       ; $7cfe: $55
    ld h, [hl]                                    ; $7cff: $66
    ld h, l                                       ; $7d00: $65
    ld b, [hl]                                    ; $7d01: $46
    adc b                                         ; $7d02: $88
    sbc c                                         ; $7d03: $99
    add a                                         ; $7d04: $87
    ld [hl], a                                    ; $7d05: $77
    ld a, c                                       ; $7d06: $79
    add [hl]                                      ; $7d07: $86
    ld a, c                                       ; $7d08: $79
    add l                                         ; $7d09: $85
    ld d, a                                       ; $7d0a: $57
    ld [hl], h                                    ; $7d0b: $74
    ld [hl], a                                    ; $7d0c: $77
    halt                                          ; $7d0d: $76
    ld d, [hl]                                    ; $7d0e: $56
    ld l, b                                       ; $7d0f: $68
    ld e, c                                       ; $7d10: $59
    xor c                                         ; $7d11: $a9
    ld l, c                                       ; $7d12: $69
    sub a                                         ; $7d13: $97
    adc d                                         ; $7d14: $8a
    sub a                                         ; $7d15: $97
    ld h, a                                       ; $7d16: $67
    add h                                         ; $7d17: $84
    ld d, [hl]                                    ; $7d18: $56
    ld h, [hl]                                    ; $7d19: $66
    xor c                                         ; $7d1a: $a9
    sub [hl]                                      ; $7d1b: $96
    ld a, b                                       ; $7d1c: $78
    call z, Call_010_66cb                         ; $7d1d: $cc $cb $66
    dec [hl]                                      ; $7d20: $35
    xor e                                         ; $7d21: $ab
    rst $18                                       ; $7d22: $df
    db $eb                                        ; $7d23: $eb
    sbc d                                         ; $7d24: $9a
    cp l                                          ; $7d25: $bd
    db $db                                        ; $7d26: $db
    xor c                                         ; $7d27: $a9
    adc b                                         ; $7d28: $88
    ld a, b                                       ; $7d29: $78
    adc c                                         ; $7d2a: $89
    sub a                                         ; $7d2b: $97
    sbc d                                         ; $7d2c: $9a
    cp e                                          ; $7d2d: $bb
    xor b                                         ; $7d2e: $a8
    halt                                          ; $7d2f: $76
    sbc d                                         ; $7d30: $9a
    sbc e                                         ; $7d31: $9b
    xor c                                         ; $7d32: $a9
    ld d, e                                       ; $7d33: $53
    ld a, b                                       ; $7d34: $78
    sbc c                                         ; $7d35: $99
    ld a, d                                       ; $7d36: $7a
    halt                                          ; $7d37: $76
    ld [hl], a                                    ; $7d38: $77
    adc c                                         ; $7d39: $89
    sub a                                         ; $7d3a: $97
    ld h, a                                       ; $7d3b: $67
    add a                                         ; $7d3c: $87
    halt                                          ; $7d3d: $76
    halt                                          ; $7d3e: $76
    ld a, c                                       ; $7d3f: $79
    sbc c                                         ; $7d40: $99
    add [hl]                                      ; $7d41: $86
    halt                                          ; $7d42: $76
    adc b                                         ; $7d43: $88
    ld h, l                                       ; $7d44: $65
    ld d, l                                       ; $7d45: $55
    ld [hl], h                                    ; $7d46: $74
    ld d, a                                       ; $7d47: $57
    adc b                                         ; $7d48: $88
    xor b                                         ; $7d49: $a8
    adc c                                         ; $7d4a: $89
    xor b                                         ; $7d4b: $a8
    xor d                                         ; $7d4c: $aa
    xor d                                         ; $7d4d: $aa
    and a                                         ; $7d4e: $a7
    adc c                                         ; $7d4f: $89
    add a                                         ; $7d50: $87
    ld a, b                                       ; $7d51: $78
    add a                                         ; $7d52: $87
    ld h, l                                       ; $7d53: $65
    ld d, l                                       ; $7d54: $55
    ld d, l                                       ; $7d55: $55
    ld d, l                                       ; $7d56: $55
    ld b, e                                       ; $7d57: $43
    ld b, l                                       ; $7d58: $45
    ld d, h                                       ; $7d59: $54
    inc sp                                        ; $7d5a: $33
    inc [hl]                                      ; $7d5b: $34
    ld h, a                                       ; $7d5c: $67
    add a                                         ; $7d5d: $87
    halt                                          ; $7d5e: $76
    add a                                         ; $7d5f: $87
    ld h, l                                       ; $7d60: $65
    ld h, [hl]                                    ; $7d61: $66
    ld h, l                                       ; $7d62: $65
    ld d, [hl]                                    ; $7d63: $56
    adc c                                         ; $7d64: $89
    sbc b                                         ; $7d65: $98
    sbc c                                         ; $7d66: $99
    xor e                                         ; $7d67: $ab
    cp d                                          ; $7d68: $ba
    sbc b                                         ; $7d69: $98
    sub a                                         ; $7d6a: $97
    ld a, b                                       ; $7d6b: $78
    adc b                                         ; $7d6c: $88
    adc b                                         ; $7d6d: $88
    ld h, a                                       ; $7d6e: $67
    ld h, l                                       ; $7d6f: $65
    add [hl]                                      ; $7d70: $86
    ld h, l                                       ; $7d71: $65
    ld l, b                                       ; $7d72: $68
    halt                                          ; $7d73: $76
    ld a, b                                       ; $7d74: $78
    sbc c                                         ; $7d75: $99
    sbc c                                         ; $7d76: $99
    sbc c                                         ; $7d77: $99
    xor c                                         ; $7d78: $a9
    adc b                                         ; $7d79: $88
    adc c                                         ; $7d7a: $89
    sbc c                                         ; $7d7b: $99
    sbc d                                         ; $7d7c: $9a
    sbc c                                         ; $7d7d: $99
    sub a                                         ; $7d7e: $97
    adc b                                         ; $7d7f: $88
    adc b                                         ; $7d80: $88
    add a                                         ; $7d81: $87
    adc b                                         ; $7d82: $88
    adc c                                         ; $7d83: $89
    adc b                                         ; $7d84: $88
    sbc b                                         ; $7d85: $98
    sbc b                                         ; $7d86: $98
    ld [hl], a                                    ; $7d87: $77
    ld [hl], a                                    ; $7d88: $77
    ld [hl], a                                    ; $7d89: $77
    ld h, [hl]                                    ; $7d8a: $66
    ld [hl], a                                    ; $7d8b: $77
    ld h, [hl]                                    ; $7d8c: $66
    ld [hl], a                                    ; $7d8d: $77
    halt                                          ; $7d8e: $76
    ld h, a                                       ; $7d8f: $67
    adc b                                         ; $7d90: $88
    add a                                         ; $7d91: $87
    ld a, b                                       ; $7d92: $78
    adc b                                         ; $7d93: $88
    sbc d                                         ; $7d94: $9a
    cp b                                          ; $7d95: $b8
    adc c                                         ; $7d96: $89
    add [hl]                                      ; $7d97: $86
    jr nz, jr_010_7dac                            ; $7d98: $20 $12

    ld d, l                                       ; $7d9a: $55
    adc c                                         ; $7d9b: $89
    xor e                                         ; $7d9c: $ab
    rst $18                                       ; $7d9d: $df
    cp $ec                                        ; $7d9e: $fe $ec
    sub l                                         ; $7da0: $95
    ld de, $2322                                  ; $7da1: $11 $22 $23
    ld d, [hl]                                    ; $7da4: $56
    ld h, a                                       ; $7da5: $67
    sbc c                                         ; $7da6: $99
    ld h, h                                       ; $7da7: $64
    ld d, l                                       ; $7da8: $55
    ld b, h                                       ; $7da9: $44
    ld l, c                                       ; $7daa: $69
    sbc d                                         ; $7dab: $9a

jr_010_7dac:
    sbc c                                         ; $7dac: $99
    xor h                                         ; $7dad: $ac
    cp c                                          ; $7dae: $b9
    halt                                          ; $7daf: $76
    ld h, [hl]                                    ; $7db0: $66
    add a                                         ; $7db1: $87
    ld a, c                                       ; $7db2: $79
    sbc c                                         ; $7db3: $99
    add a                                         ; $7db4: $87
    add [hl]                                      ; $7db5: $86
    ld h, [hl]                                    ; $7db6: $66
    ld a, b                                       ; $7db7: $78
    halt                                          ; $7db8: $76
    ld h, a                                       ; $7db9: $67
    adc b                                         ; $7dba: $88
    cp e                                          ; $7dbb: $bb
    sbc b                                         ; $7dbc: $98
    ld [hl], l                                    ; $7dbd: $75
    ld d, h                                       ; $7dbe: $54
    ld e, b                                       ; $7dbf: $58
    sbc d                                         ; $7dc0: $9a
    cp d                                          ; $7dc1: $ba
    xor d                                         ; $7dc2: $aa
    cp h                                          ; $7dc3: $bc
    res 7, h                                      ; $7dc4: $cb $bc
    call c, Call_010_76a8                         ; $7dc6: $dc $a8 $76
    ld d, h                                       ; $7dc9: $54
    ld sp, $2210                                  ; $7dca: $31 $10 $22
    inc h                                         ; $7dcd: $24
    ld b, [hl]                                    ; $7dce: $46
    sbc c                                         ; $7dcf: $99
    add a                                         ; $7dd0: $87
    sbc e                                         ; $7dd1: $9b
    call $ccdd                                    ; $7dd2: $cd $dd $cc
    call z, Call_010_78b9                         ; $7dd5: $cc $b9 $78
    add [hl]                                      ; $7dd8: $86
    ld d, l                                       ; $7dd9: $55
    ld b, e                                       ; $7dda: $43
    inc sp                                        ; $7ddb: $33
    ld b, h                                       ; $7ddc: $44
    ld a, b                                       ; $7ddd: $78
    xor c                                         ; $7dde: $a9
    cp b                                          ; $7ddf: $b8
    sbc d                                         ; $7de0: $9a
    xor d                                         ; $7de1: $aa
    sbc c                                         ; $7de2: $99
    cp l                                          ; $7de3: $bd
    cp b                                          ; $7de4: $b8
    ld h, l                                       ; $7de5: $65
    ld b, h                                       ; $7de6: $44
    ld [hl-], a                                   ; $7de7: $32
    ld b, [hl]                                    ; $7de8: $46
    ld h, [hl]                                    ; $7de9: $66
    ld h, [hl]                                    ; $7dea: $66
    ld d, l                                       ; $7deb: $55
    inc [hl]                                      ; $7dec: $34
    ld b, e                                       ; $7ded: $43
    inc sp                                        ; $7dee: $33
    ld d, [hl]                                    ; $7def: $56
    add a                                         ; $7df0: $87
    ld a, b                                       ; $7df1: $78
    ld b, d                                       ; $7df2: $42
    inc de                                        ; $7df3: $13
    ld b, h                                       ; $7df4: $44
    ld h, [hl]                                    ; $7df5: $66
    sbc b                                         ; $7df6: $98
    sbc d                                         ; $7df7: $9a
    xor e                                         ; $7df8: $ab
    cp d                                          ; $7df9: $ba
    add [hl]                                      ; $7dfa: $86
    ld a, c                                       ; $7dfb: $79
    ld [hl], a                                    ; $7dfc: $77
    ld a, c                                       ; $7dfd: $79
    res 7, e                                      ; $7dfe: $cb $bb
    cp d                                          ; $7e00: $ba
    sbc c                                         ; $7e01: $99
    sbc d                                         ; $7e02: $9a
    sbc b                                         ; $7e03: $98
    sbc e                                         ; $7e04: $9b
    cp h                                          ; $7e05: $bc
    sbc $de                                       ; $7e06: $de $de
    sbc $ec                                       ; $7e08: $de $ec
    and a                                         ; $7e0a: $a7
    adc b                                         ; $7e0b: $88
    add a                                         ; $7e0c: $87
    ld h, l                                       ; $7e0d: $65
    ld h, [hl]                                    ; $7e0e: $66
    ld d, [hl]                                    ; $7e0f: $56
    ld h, [hl]                                    ; $7e10: $66
    ld h, a                                       ; $7e11: $67
    sbc d                                         ; $7e12: $9a
    adc b                                         ; $7e13: $88
    ld a, b                                       ; $7e14: $78
    halt                                          ; $7e15: $76
    adc b                                         ; $7e16: $88
    ld [hl], l                                    ; $7e17: $75
    halt                                          ; $7e18: $76
    ld h, h                                       ; $7e19: $64
    ld [hl+], a                                   ; $7e1a: $22
    inc sp                                        ; $7e1b: $33
    ld b, h                                       ; $7e1c: $44
    ld h, [hl]                                    ; $7e1d: $66
    ld [hl], a                                    ; $7e1e: $77
    ld a, b                                       ; $7e1f: $78
    adc d                                         ; $7e20: $8a
    cp d                                          ; $7e21: $ba
    xor h                                         ; $7e22: $ac
    db $ed                                        ; $7e23: $ed
    call c, $99bb                                 ; $7e24: $dc $bb $99
    sub a                                         ; $7e27: $97
    adc b                                         ; $7e28: $88
    sbc c                                         ; $7e29: $99
    halt                                          ; $7e2a: $76
    ld [hl], a                                    ; $7e2b: $77
    ld [hl], a                                    ; $7e2c: $77
    halt                                          ; $7e2d: $76
    ld h, [hl]                                    ; $7e2e: $66
    ld h, [hl]                                    ; $7e2f: $66
    ld b, h                                       ; $7e30: $44
    ld b, e                                       ; $7e31: $43
    ld [de], a                                    ; $7e32: $12
    inc hl                                        ; $7e33: $23
    inc sp                                        ; $7e34: $33
    ld b, h                                       ; $7e35: $44
    ld b, h                                       ; $7e36: $44
    ld [hl+], a                                   ; $7e37: $22
    ld d, l                                       ; $7e38: $55
    ld h, h                                       ; $7e39: $64
    inc hl                                        ; $7e3a: $23
    ld d, h                                       ; $7e3b: $54
    ld h, [hl]                                    ; $7e3c: $66
    ld [hl], l                                    ; $7e3d: $75
    ld d, e                                       ; $7e3e: $53
    halt                                          ; $7e3f: $76
    ld d, a                                       ; $7e40: $57
    sbc c                                         ; $7e41: $99
    sub a                                         ; $7e42: $97
    ld a, b                                       ; $7e43: $78
    add a                                         ; $7e44: $87
    sub [hl]                                      ; $7e45: $96
    halt                                          ; $7e46: $76
    adc b                                         ; $7e47: $88
    ld h, l                                       ; $7e48: $65
    ld a, c                                       ; $7e49: $79
    sub [hl]                                      ; $7e4a: $96
    ld a, b                                       ; $7e4b: $78
    ld a, c                                       ; $7e4c: $79
    xor l                                         ; $7e4d: $ad
    cp e                                          ; $7e4e: $bb
    res 5, d                                      ; $7e4f: $cb $aa
    sbc b                                         ; $7e51: $98
    adc c                                         ; $7e52: $89
    cp c                                          ; $7e53: $b9
    xor e                                         ; $7e54: $ab
    cp l                                          ; $7e55: $bd
    db $eb                                        ; $7e56: $eb
    cp h                                          ; $7e57: $bc
    cp e                                          ; $7e58: $bb
    xor h                                         ; $7e59: $ac
    cp d                                          ; $7e5a: $ba
    sbc b                                         ; $7e5b: $98
    adc b                                         ; $7e5c: $88
    sbc b                                         ; $7e5d: $98
    sbc d                                         ; $7e5e: $9a
    db $dd                                        ; $7e5f: $dd
    sbc $ff                                       ; $7e60: $de $ff
    jp z, Jump_010_53a8                           ; $7e62: $ca $a8 $53

    ld b, h                                       ; $7e65: $44
    inc [hl]                                      ; $7e66: $34
    ld d, l                                       ; $7e67: $55
    ld a, b                                       ; $7e68: $78
    sbc c                                         ; $7e69: $99
    add a                                         ; $7e6a: $87
    ld h, [hl]                                    ; $7e6b: $66
    ld sp, $3310                                  ; $7e6c: $31 $10 $33
    ld b, l                                       ; $7e6f: $45
    ld d, l                                       ; $7e70: $55
    ld d, h                                       ; $7e71: $54
    ld b, h                                       ; $7e72: $44
    ld b, h                                       ; $7e73: $44
    inc hl                                        ; $7e74: $23
    ld d, l                                       ; $7e75: $55
    ld [hl], a                                    ; $7e76: $77
    ld [hl], a                                    ; $7e77: $77
    ld [hl], a                                    ; $7e78: $77
    ld d, l                                       ; $7e79: $55
    ld d, h                                       ; $7e7a: $54
    ld b, e                                       ; $7e7b: $43
    ld d, [hl]                                    ; $7e7c: $56
    ld h, l                                       ; $7e7d: $65
    ld h, a                                       ; $7e7e: $67
    add a                                         ; $7e7f: $87
    ld h, a                                       ; $7e80: $67
    adc b                                         ; $7e81: $88
    ld h, l                                       ; $7e82: $65
    inc sp                                        ; $7e83: $33
    ld b, a                                       ; $7e84: $47
    sub a                                         ; $7e85: $97
    ld h, a                                       ; $7e86: $67
    ld [hl], h                                    ; $7e87: $74
    inc [hl]                                      ; $7e88: $34
    ld d, [hl]                                    ; $7e89: $56
    add a                                         ; $7e8a: $87
    ld b, h                                       ; $7e8b: $44
    ld d, a                                       ; $7e8c: $57
    sbc h                                         ; $7e8d: $9c
    jp z, $88b9                                   ; $7e8e: $ca $b9 $88

    sbc b                                         ; $7e91: $98
    sbc c                                         ; $7e92: $99
    xor c                                         ; $7e93: $a9
    add a                                         ; $7e94: $87
    halt                                          ; $7e95: $76
    ld l, b                                       ; $7e96: $68
    xor d                                         ; $7e97: $aa
    cp e                                          ; $7e98: $bb
    db $dd                                        ; $7e99: $dd
    cp $eb                                        ; $7e9a: $fe $eb
    sub a                                         ; $7e9c: $97
    ld h, a                                       ; $7e9d: $67
    adc c                                         ; $7e9e: $89
    halt                                          ; $7e9f: $76
    sbc c                                         ; $7ea0: $99
    sbc c                                         ; $7ea1: $99
    xor h                                         ; $7ea2: $ac
    rst $38                                       ; $7ea3: $ff
    call c, $cccd                                 ; $7ea4: $dc $cd $cc
    rst $08                                       ; $7ea7: $cf
    db $ec                                        ; $7ea8: $ec
    call z, $8a97                                 ; $7ea9: $cc $97 $8a
    xor e                                         ; $7eac: $ab
    xor e                                         ; $7ead: $ab
    cp e                                          ; $7eae: $bb
    sbc b                                         ; $7eaf: $98
    ld h, l                                       ; $7eb0: $65
    ld d, e                                       ; $7eb1: $53
    ld [hl+], a                                   ; $7eb2: $22
    inc sp                                        ; $7eb3: $33
    ld hl, $3323                                  ; $7eb4: $21 $23 $33
    ld b, [hl]                                    ; $7eb7: $46
    ld [hl], a                                    ; $7eb8: $77
    sbc c                                         ; $7eb9: $99
    and a                                         ; $7eba: $a7
    adc c                                         ; $7ebb: $89
    xor e                                         ; $7ebc: $ab
    xor d                                         ; $7ebd: $aa
    cp d                                          ; $7ebe: $ba
    xor c                                         ; $7ebf: $a9
    xor d                                         ; $7ec0: $aa
    xor b                                         ; $7ec1: $a8
    ld [hl], a                                    ; $7ec2: $77
    ld h, h                                       ; $7ec3: $64
    ld [hl+], a                                   ; $7ec4: $22
    ld hl, $3323                                  ; $7ec5: $21 $23 $33
    inc hl                                        ; $7ec8: $23
    ld b, h                                       ; $7ec9: $44
    ld d, [hl]                                    ; $7eca: $56
    ld a, c                                       ; $7ecb: $79
    adc c                                         ; $7ecc: $89
    sbc c                                         ; $7ecd: $99
    ld [hl], l                                    ; $7ece: $75
    inc h                                         ; $7ecf: $24
    jr nz, jr_010_7ef4                            ; $7ed0: $20 $22

    inc [hl]                                      ; $7ed2: $34
    ld b, [hl]                                    ; $7ed3: $46
    adc b                                         ; $7ed4: $88
    adc b                                         ; $7ed5: $88
    ld h, [hl]                                    ; $7ed6: $66
    ld h, a                                       ; $7ed7: $67
    ld [hl], a                                    ; $7ed8: $77
    ld h, l                                       ; $7ed9: $65
    ld b, e                                       ; $7eda: $43
    inc sp                                        ; $7edb: $33
    inc hl                                        ; $7edc: $23
    ld d, [hl]                                    ; $7edd: $56
    halt                                          ; $7ede: $76
    ld h, [hl]                                    ; $7edf: $66
    ld h, a                                       ; $7ee0: $67
    ld h, l                                       ; $7ee1: $65
    ld a, b                                       ; $7ee2: $78
    sbc c                                         ; $7ee3: $99
    xor d                                         ; $7ee4: $aa
    sbc d                                         ; $7ee5: $9a
    cp e                                          ; $7ee6: $bb
    call $dded                                    ; $7ee7: $cd $ed $dd
    call $eddd                                    ; $7eea: $cd $dd $ed
    res 7, e                                      ; $7eed: $cb $bb
    call $aaca                                    ; $7eef: $cd $ca $aa
    cp d                                          ; $7ef2: $ba
    xor b                                         ; $7ef3: $a8

jr_010_7ef4:
    adc b                                         ; $7ef4: $88
    ld [hl], a                                    ; $7ef5: $77
    adc c                                         ; $7ef6: $89
    xor c                                         ; $7ef7: $a9
    adc b                                         ; $7ef8: $88
    add a                                         ; $7ef9: $87
    ld [hl], a                                    ; $7efa: $77
    ld a, b                                       ; $7efb: $78
    sbc b                                         ; $7efc: $98
    ld [hl], a                                    ; $7efd: $77
    ld a, b                                       ; $7efe: $78
    xor c                                         ; $7eff: $a9
    add a                                         ; $7f00: $87
    ld a, c                                       ; $7f01: $79
    sbc c                                         ; $7f02: $99
    adc b                                         ; $7f03: $88
    adc b                                         ; $7f04: $88
    sbc d                                         ; $7f05: $9a
    cp e                                          ; $7f06: $bb
    cp d                                          ; $7f07: $ba
    xor c                                         ; $7f08: $a9
    sbc c                                         ; $7f09: $99
    sbc c                                         ; $7f0a: $99
    sbc b                                         ; $7f0b: $98
    ld [hl], a                                    ; $7f0c: $77
    ld a, b                                       ; $7f0d: $78
    sbc c                                         ; $7f0e: $99
    sbc b                                         ; $7f0f: $98
    sbc d                                         ; $7f10: $9a
    add a                                         ; $7f11: $87
    ld [hl], a                                    ; $7f12: $77
    ld a, b                                       ; $7f13: $78
    ld h, h                                       ; $7f14: $64
    ld b, h                                       ; $7f15: $44
    ld b, h                                       ; $7f16: $44
    ld b, h                                       ; $7f17: $44
    ld d, e                                       ; $7f18: $53
    ld [hl+], a                                   ; $7f19: $22
    inc sp                                        ; $7f1a: $33
    ld hl, $2312                                  ; $7f1b: $21 $12 $23
    ld d, [hl]                                    ; $7f1e: $56
    ld h, l                                       ; $7f1f: $65
    ld d, [hl]                                    ; $7f20: $56
    ld d, e                                       ; $7f21: $53
    ld [hl+], a                                   ; $7f22: $22
    ld de, $5623                                  ; $7f23: $11 $23 $56
    ld d, [hl]                                    ; $7f26: $56
    ld d, [hl]                                    ; $7f27: $56
    ld h, a                                       ; $7f28: $67
    add a                                         ; $7f29: $87
    ld a, b                                       ; $7f2a: $78
    adc b                                         ; $7f2b: $88
    adc b                                         ; $7f2c: $88
    add a                                         ; $7f2d: $87
    ld a, b                                       ; $7f2e: $78
    adc b                                         ; $7f2f: $88
    add a                                         ; $7f30: $87
    sbc c                                         ; $7f31: $99
    sbc c                                         ; $7f32: $99
    xor h                                         ; $7f33: $ac
    xor e                                         ; $7f34: $ab
    call $eeee                                    ; $7f35: $cd $ee $ee
    call c, $98aa                                 ; $7f38: $dc $aa $98
    ld [hl], a                                    ; $7f3b: $77
    ld [hl], a                                    ; $7f3c: $77
    adc d                                         ; $7f3d: $8a
    cp e                                          ; $7f3e: $bb
    call z, $ccbd                                 ; $7f3f: $cc $bd $cc
    cp d                                          ; $7f42: $ba
    xor e                                         ; $7f43: $ab
    xor b                                         ; $7f44: $a8
    ld [hl], a                                    ; $7f45: $77
    ld a, c                                       ; $7f46: $79
    xor d                                         ; $7f47: $aa
    cp d                                          ; $7f48: $ba
    xor e                                         ; $7f49: $ab
    xor c                                         ; $7f4a: $a9
    sbc c                                         ; $7f4b: $99
    add a                                         ; $7f4c: $87
    ld a, b                                       ; $7f4d: $78
    adc b                                         ; $7f4e: $88
    ld [hl], a                                    ; $7f4f: $77
    ld h, [hl]                                    ; $7f50: $66
    ld h, [hl]                                    ; $7f51: $66
    ld d, l                                       ; $7f52: $55
    ld d, d                                       ; $7f53: $52
    ld [hl+], a                                   ; $7f54: $22
    ld [hl+], a                                   ; $7f55: $22
    ld [hl+], a                                   ; $7f56: $22
    ld [hl+], a                                   ; $7f57: $22
    ld b, l                                       ; $7f58: $45
    ld h, [hl]                                    ; $7f59: $66
    ld [hl], a                                    ; $7f5a: $77
    ld [hl], a                                    ; $7f5b: $77
    adc b                                         ; $7f5c: $88
    add a                                         ; $7f5d: $87
    ld d, h                                       ; $7f5e: $54
    ld b, [hl]                                    ; $7f5f: $46
    ld d, l                                       ; $7f60: $55
    ld h, a                                       ; $7f61: $67
    ld a, b                                       ; $7f62: $78
    halt                                          ; $7f63: $76
    ld d, [hl]                                    ; $7f64: $56
    ld h, l                                       ; $7f65: $65
    ld d, l                                       ; $7f66: $55
    ld l, b                                       ; $7f67: $68
    sbc c                                         ; $7f68: $99
    adc b                                         ; $7f69: $88
    ld a, b                                       ; $7f6a: $78
    ld h, l                                       ; $7f6b: $65
    ld h, [hl]                                    ; $7f6c: $66
    adc c                                         ; $7f6d: $89
    sbc c                                         ; $7f6e: $99
    cp e                                          ; $7f6f: $bb
    cp d                                          ; $7f70: $ba
    sbc d                                         ; $7f71: $9a
    sbc b                                         ; $7f72: $98
    ld d, e                                       ; $7f73: $53
    ld [de], a                                    ; $7f74: $12
    ld b, e                                       ; $7f75: $43
    ld h, l                                       ; $7f76: $65
    ld d, l                                       ; $7f77: $55
    ld d, a                                       ; $7f78: $57
    ld h, a                                       ; $7f79: $67
    adc b                                         ; $7f7a: $88
    ld a, b                                       ; $7f7b: $78
    cp l                                          ; $7f7c: $bd
    call $bcdb                                    ; $7f7d: $cd $db $bc
    set 3, [hl]                                   ; $7f80: $cb $de
    db $ed                                        ; $7f82: $ed
    db $dd                                        ; $7f83: $dd
    call $9acb                                    ; $7f84: $cd $cb $9a
    xor c                                         ; $7f87: $a9
    sbc b                                         ; $7f88: $98
    adc b                                         ; $7f89: $88
    adc b                                         ; $7f8a: $88
    ld a, b                                       ; $7f8b: $78
    ld a, b                                       ; $7f8c: $78
    sbc b                                         ; $7f8d: $98
    adc c                                         ; $7f8e: $89
    sbc d                                         ; $7f8f: $9a
    xor b                                         ; $7f90: $a8
    ld [hl], a                                    ; $7f91: $77
    adc b                                         ; $7f92: $88
    sbc e                                         ; $7f93: $9b
    xor e                                         ; $7f94: $ab
    xor b                                         ; $7f95: $a8
    ld b, e                                       ; $7f96: $43
    inc sp                                        ; $7f97: $33
    ld b, a                                       ; $7f98: $47
    adc c                                         ; $7f99: $89
    adc c                                         ; $7f9a: $89
    adc b                                         ; $7f9b: $88
    add l                                         ; $7f9c: $85
    ld b, e                                       ; $7f9d: $43
    ld [de], a                                    ; $7f9e: $12
    inc hl                                        ; $7f9f: $23
    inc [hl]                                      ; $7fa0: $34
    ld d, l                                       ; $7fa1: $55
    ld b, a                                       ; $7fa2: $47
    ld [hl], l                                    ; $7fa3: $75
    ld d, h                                       ; $7fa4: $54
    ld b, h                                       ; $7fa5: $44
    ld d, l                                       ; $7fa6: $55
    ld c, b                                       ; $7fa7: $48
    sbc h                                         ; $7fa8: $9c
    db $db                                        ; $7fa9: $db
    sbc c                                         ; $7faa: $99
    add a                                         ; $7fab: $87
    ld [hl], l                                    ; $7fac: $75
    ld d, h                                       ; $7fad: $54
    ld b, l                                       ; $7fae: $45
    ld d, [hl]                                    ; $7faf: $56
    ld h, l                                       ; $7fb0: $65
    ld h, [hl]                                    ; $7fb1: $66
    ld d, l                                       ; $7fb2: $55
    ld d, [hl]                                    ; $7fb3: $56
    ld h, a                                       ; $7fb4: $67
    adc b                                         ; $7fb5: $88
    sub a                                         ; $7fb6: $97
    halt                                          ; $7fb7: $76
    halt                                          ; $7fb8: $76
    ld h, l                                       ; $7fb9: $65
    ld d, [hl]                                    ; $7fba: $56
    halt                                          ; $7fbb: $76
    ld h, l                                       ; $7fbc: $65
    inc sp                                        ; $7fbd: $33
    ld b, h                                       ; $7fbe: $44
    ld b, l                                       ; $7fbf: $45
    ld l, b                                       ; $7fc0: $68
    adc b                                         ; $7fc1: $88
    add a                                         ; $7fc2: $87
    adc b                                         ; $7fc3: $88
    adc b                                         ; $7fc4: $88
    sbc c                                         ; $7fc5: $99
    adc b                                         ; $7fc6: $88
    adc c                                         ; $7fc7: $89
    xor d                                         ; $7fc8: $aa
    cp l                                          ; $7fc9: $bd
    rst $18                                       ; $7fca: $df
    cp $ff                                        ; $7fcb: $fe $ff
    db $ed                                        ; $7fcd: $ed
    cp h                                          ; $7fce: $bc
    call z, $aaba                                 ; $7fcf: $cc $ba $aa
    sbc b                                         ; $7fd2: $98
    sbc b                                         ; $7fd3: $98
    ld [hl], a                                    ; $7fd4: $77
    ld h, a                                       ; $7fd5: $67
    adc b                                         ; $7fd6: $88
    xor d                                         ; $7fd7: $aa
    cp e                                          ; $7fd8: $bb
    cp c                                          ; $7fd9: $b9
    sbc b                                         ; $7fda: $98
    adc b                                         ; $7fdb: $88
    add [hl]                                      ; $7fdc: $86
    ld d, h                                       ; $7fdd: $54
    inc sp                                        ; $7fde: $33
    inc [hl]                                      ; $7fdf: $34
    ld d, l                                       ; $7fe0: $55
    adc c                                         ; $7fe1: $89
    sbc c                                         ; $7fe2: $99
    sbc d                                         ; $7fe3: $9a
    xor c                                         ; $7fe4: $a9
    xor e                                         ; $7fe5: $ab
    cp d                                          ; $7fe6: $ba
    xor d                                         ; $7fe7: $aa
    sbc c                                         ; $7fe8: $99
    sbc c                                         ; $7fe9: $99
    adc b                                         ; $7fea: $88
    halt                                          ; $7feb: $76
    ld h, [hl]                                    ; $7fec: $66
    ld d, l                                       ; $7fed: $55
    ld h, l                                       ; $7fee: $65
    ld d, l                                       ; $7fef: $55
    ld b, h                                       ; $7ff0: $44
    ld b, h                                       ; $7ff1: $44
    ld [hl-], a                                   ; $7ff2: $32
    inc hl                                        ; $7ff3: $23
    ld [hl-], a                                   ; $7ff4: $32
    ld de, $3212                                  ; $7ff5: $11 $12 $32
    ld de, $0011                                  ; $7ff8: $11 $11 $00
    nop                                           ; $7ffb: $00
    inc hl                                        ; $7ffc: $23
    ld b, [hl]                                    ; $7ffd: $46
    ld h, a                                       ; $7ffe: $67
    adc b                                         ; $7fff: $88
