; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    sbc b                                         ; $4000: $98
    adc b                                         ; $4001: $88
    adc b                                         ; $4002: $88
    adc b                                         ; $4003: $88
    adc b                                         ; $4004: $88
    adc b                                         ; $4005: $88
    sbc b                                         ; $4006: $98
    sbc c                                         ; $4007: $99
    adc b                                         ; $4008: $88
    ld [hl], a                                    ; $4009: $77
    ld a, b                                       ; $400a: $78
    sbc c                                         ; $400b: $99
    sbc c                                         ; $400c: $99
    adc b                                         ; $400d: $88
    adc b                                         ; $400e: $88
    sbc d                                         ; $400f: $9a
    cp e                                          ; $4010: $bb
    cp d                                          ; $4011: $ba
    xor d                                         ; $4012: $aa
    cp e                                          ; $4013: $bb
    cp e                                          ; $4014: $bb
    cp d                                          ; $4015: $ba
    xor e                                         ; $4016: $ab
    cp e                                          ; $4017: $bb
    cp e                                          ; $4018: $bb
    cp e                                          ; $4019: $bb
    call $eedd                                    ; $401a: $cd $dd $ee
    rst $38                                       ; $401d: $ff
    xor $dd                                       ; $401e: $ee $dd
    call z, $bbcc                                 ; $4020: $cc $cc $bb
    call z, $bacb                                 ; $4023: $cc $cb $ba
    add a                                         ; $4026: $87
    halt                                          ; $4027: $76
    ld h, [hl]                                    ; $4028: $66
    ld [hl], a                                    ; $4029: $77
    ld a, b                                       ; $402a: $78
    ld [hl], a                                    ; $402b: $77
    ld [hl], l                                    ; $402c: $75
    ld b, h                                       ; $402d: $44
    ld d, e                                       ; $402e: $53
    inc h                                         ; $402f: $24
    ld b, l                                       ; $4030: $45
    ld d, [hl]                                    ; $4031: $56
    ld h, a                                       ; $4032: $67
    ld h, a                                       ; $4033: $67
    ld h, h                                       ; $4034: $64
    ld b, e                                       ; $4035: $43
    ld hl, $4534                                  ; $4036: $21 $34 $45
    ld b, d                                       ; $4039: $42
    ld hl, $1122                                  ; $403a: $21 $22 $11
    ld [hl+], a                                   ; $403d: $22
    ld de, $4513                                  ; $403e: $11 $13 $45
    ld h, a                                       ; $4041: $67
    ld [hl], a                                    ; $4042: $77
    sub [hl]                                      ; $4043: $96
    ld d, h                                       ; $4044: $54
    ld b, h                                       ; $4045: $44
    inc [hl]                                      ; $4046: $34
    ld [hl], a                                    ; $4047: $77
    halt                                          ; $4048: $76
    ld h, l                                       ; $4049: $65
    ld h, a                                       ; $404a: $67
    ld a, b                                       ; $404b: $78
    ld h, l                                       ; $404c: $65
    ld d, [hl]                                    ; $404d: $56
    ld b, l                                       ; $404e: $45
    ld l, b                                       ; $404f: $68
    add [hl]                                      ; $4050: $86
    ld d, l                                       ; $4051: $55
    ld h, a                                       ; $4052: $67
    adc b                                         ; $4053: $88
    ld [hl], a                                    ; $4054: $77
    ld h, [hl]                                    ; $4055: $66
    ld h, l                                       ; $4056: $65
    ld h, [hl]                                    ; $4057: $66
    ld a, b                                       ; $4058: $78
    adc b                                         ; $4059: $88
    adc b                                         ; $405a: $88
    ld a, b                                       ; $405b: $78
    xor d                                         ; $405c: $aa
    db $dd                                        ; $405d: $dd
    cp l                                          ; $405e: $bd
    call $dcef                                    ; $405f: $cd $ef $dc
    call c, $abba                                 ; $4062: $dc $ba $ab
    xor e                                         ; $4065: $ab
    xor d                                         ; $4066: $aa
    xor d                                         ; $4067: $aa
    cp e                                          ; $4068: $bb
    call z, $ddcd                                 ; $4069: $cc $cd $dd
    call c, $ccde                                 ; $406c: $dc $de $cc
    call z, $cbcc                                 ; $406f: $cc $cc $cb
    cp h                                          ; $4072: $bc
    res 7, h                                      ; $4073: $cb $bc
    call z, $ccdc                                 ; $4075: $cc $dc $cc
    jp z, $98ab                                   ; $4078: $ca $ab $98

    sbc c                                         ; $407b: $99
    sbc d                                         ; $407c: $9a
    sbc b                                         ; $407d: $98
    ld [hl], l                                    ; $407e: $75
    ld d, h                                       ; $407f: $54
    ld d, [hl]                                    ; $4080: $56
    ld d, h                                       ; $4081: $54
    inc hl                                        ; $4082: $23
    inc sp                                        ; $4083: $33
    ld b, h                                       ; $4084: $44
    ld d, l                                       ; $4085: $55
    ld b, h                                       ; $4086: $44
    ld b, h                                       ; $4087: $44
    ld b, h                                       ; $4088: $44
    ld b, l                                       ; $4089: $45
    ld d, [hl]                                    ; $408a: $56
    ld h, l                                       ; $408b: $65
    ld d, h                                       ; $408c: $54
    ld sp, $1111                                  ; $408d: $31 $11 $11
    ld [de], a                                    ; $4090: $12
    ld de, $5733                                  ; $4091: $11 $33 $57
    ld h, l                                       ; $4094: $65
    ld d, l                                       ; $4095: $55
    ld b, h                                       ; $4096: $44
    ld b, e                                       ; $4097: $43
    inc sp                                        ; $4098: $33
    inc sp                                        ; $4099: $33
    ld b, l                                       ; $409a: $45
    ld h, [hl]                                    ; $409b: $66
    ld h, [hl]                                    ; $409c: $66
    ld h, [hl]                                    ; $409d: $66
    ld h, [hl]                                    ; $409e: $66
    ld h, a                                       ; $409f: $67
    adc b                                         ; $40a0: $88
    sbc c                                         ; $40a1: $99
    adc c                                         ; $40a2: $89
    halt                                          ; $40a3: $76
    ld d, l                                       ; $40a4: $55
    ld h, [hl]                                    ; $40a5: $66
    ld h, a                                       ; $40a6: $67
    add a                                         ; $40a7: $87
    adc d                                         ; $40a8: $8a
    sbc d                                         ; $40a9: $9a
    sbc b                                         ; $40aa: $98
    adc c                                         ; $40ab: $89
    sbc b                                         ; $40ac: $98
    ld a, b                                       ; $40ad: $78
    xor d                                         ; $40ae: $aa
    sbc c                                         ; $40af: $99
    adc c                                         ; $40b0: $89
    sbc c                                         ; $40b1: $99
    adc b                                         ; $40b2: $88
    add a                                         ; $40b3: $87
    ld [hl], a                                    ; $40b4: $77
    ld a, c                                       ; $40b5: $79
    xor c                                         ; $40b6: $a9
    xor d                                         ; $40b7: $aa
    xor d                                         ; $40b8: $aa
    sbc c                                         ; $40b9: $99
    sbc d                                         ; $40ba: $9a
    cp e                                          ; $40bb: $bb
    cp e                                          ; $40bc: $bb
    xor d                                         ; $40bd: $aa
    sbc b                                         ; $40be: $98
    sbc c                                         ; $40bf: $99
    adc c                                         ; $40c0: $89
    xor e                                         ; $40c1: $ab
    xor d                                         ; $40c2: $aa
    xor c                                         ; $40c3: $a9
    sbc c                                         ; $40c4: $99
    sbc d                                         ; $40c5: $9a
    xor d                                         ; $40c6: $aa
    xor d                                         ; $40c7: $aa
    cp e                                          ; $40c8: $bb
    cp e                                          ; $40c9: $bb
    cp e                                          ; $40ca: $bb
    sbc c                                         ; $40cb: $99
    adc b                                         ; $40cc: $88
    adc c                                         ; $40cd: $89
    xor c                                         ; $40ce: $a9
    add a                                         ; $40cf: $87
    adc b                                         ; $40d0: $88
    sbc d                                         ; $40d1: $9a
    xor c                                         ; $40d2: $a9
    add a                                         ; $40d3: $87
    add a                                         ; $40d4: $87
    ld d, [hl]                                    ; $40d5: $56
    ld d, a                                       ; $40d6: $57
    sbc c                                         ; $40d7: $99
    xor e                                         ; $40d8: $ab
    cp e                                          ; $40d9: $bb
    sbc c                                         ; $40da: $99
    xor d                                         ; $40db: $aa
    add [hl]                                      ; $40dc: $86
    ld d, l                                       ; $40dd: $55
    ld d, h                                       ; $40de: $54
    ld b, h                                       ; $40df: $44
    ld h, [hl]                                    ; $40e0: $66
    ld h, l                                       ; $40e1: $65
    ld b, e                                       ; $40e2: $43
    ld [hl], $75                                  ; $40e3: $36 $75
    ld d, d                                       ; $40e5: $52
    ld [de], a                                    ; $40e6: $12
    ld bc, $5622                                  ; $40e7: $01 $22 $56
    adc c                                         ; $40ea: $89
    cp e                                          ; $40eb: $bb
    res 3, d                                      ; $40ec: $cb $9a
    halt                                          ; $40ee: $76
    ld h, l                                       ; $40ef: $65
    ld h, [hl]                                    ; $40f0: $66
    ld a, b                                       ; $40f1: $78
    halt                                          ; $40f2: $76
    ld h, a                                       ; $40f3: $67
    ld a, b                                       ; $40f4: $78
    adc b                                         ; $40f5: $88
    xor c                                         ; $40f6: $a9
    sbc c                                         ; $40f7: $99
    add a                                         ; $40f8: $87
    ld [hl], a                                    ; $40f9: $77
    adc c                                         ; $40fa: $89
    xor b                                         ; $40fb: $a8
    ld [hl], a                                    ; $40fc: $77
    ld [hl], a                                    ; $40fd: $77
    add a                                         ; $40fe: $87
    ld a, b                                       ; $40ff: $78
    ld h, l                                       ; $4100: $65
    ld b, l                                       ; $4101: $45
    ld h, l                                       ; $4102: $65
    ld d, l                                       ; $4103: $55
    ld d, l                                       ; $4104: $55
    ld h, a                                       ; $4105: $67
    ld a, b                                       ; $4106: $78
    sbc b                                         ; $4107: $98
    ld [hl], a                                    ; $4108: $77
    ld [hl], a                                    ; $4109: $77
    ld h, [hl]                                    ; $410a: $66
    ld l, b                                       ; $410b: $68
    sbc c                                         ; $410c: $99
    xor e                                         ; $410d: $ab
    xor c                                         ; $410e: $a9
    xor c                                         ; $410f: $a9
    sbc c                                         ; $4110: $99
    sbc c                                         ; $4111: $99
    sbc d                                         ; $4112: $9a
    cp d                                          ; $4113: $ba
    xor d                                         ; $4114: $aa
    add a                                         ; $4115: $87
    ld [hl], a                                    ; $4116: $77
    ld d, [hl]                                    ; $4117: $56
    add [hl]                                      ; $4118: $86
    ld h, [hl]                                    ; $4119: $66
    ld [hl], a                                    ; $411a: $77
    ld [hl], a                                    ; $411b: $77
    ld a, b                                       ; $411c: $78
    sbc d                                         ; $411d: $9a
    xor c                                         ; $411e: $a9
    sbc b                                         ; $411f: $98
    add a                                         ; $4120: $87
    ld [hl], a                                    ; $4121: $77
    sbc c                                         ; $4122: $99
    sbc c                                         ; $4123: $99
    sbc c                                         ; $4124: $99
    sbc c                                         ; $4125: $99
    halt                                          ; $4126: $76
    ld h, a                                       ; $4127: $67
    ld [hl], a                                    ; $4128: $77
    ld [hl], a                                    ; $4129: $77
    add a                                         ; $412a: $87
    adc b                                         ; $412b: $88
    halt                                          ; $412c: $76
    ld [hl], a                                    ; $412d: $77
    ld d, [hl]                                    ; $412e: $56
    ld d, [hl]                                    ; $412f: $56
    add l                                         ; $4130: $85
    halt                                          ; $4131: $76
    ld [hl], a                                    ; $4132: $77
    ld [hl], a                                    ; $4133: $77
    ld a, b                                       ; $4134: $78
    adc b                                         ; $4135: $88
    ld h, [hl]                                    ; $4136: $66
    ld [hl], a                                    ; $4137: $77
    add a                                         ; $4138: $87
    add a                                         ; $4139: $87
    halt                                          ; $413a: $76
    ld d, l                                       ; $413b: $55
    ld b, d                                       ; $413c: $42
    ld [hl+], a                                   ; $413d: $22
    ld [hl+], a                                   ; $413e: $22
    inc [hl]                                      ; $413f: $34
    ld b, l                                       ; $4140: $45
    ld h, [hl]                                    ; $4141: $66
    ld a, b                                       ; $4142: $78
    halt                                          ; $4143: $76
    ld a, b                                       ; $4144: $78
    sbc b                                         ; $4145: $98
    xor d                                         ; $4146: $aa
    xor d                                         ; $4147: $aa
    cp d                                          ; $4148: $ba
    xor c                                         ; $4149: $a9
    sbc c                                         ; $414a: $99
    xor c                                         ; $414b: $a9
    xor d                                         ; $414c: $aa
    adc b                                         ; $414d: $88
    ld [hl], a                                    ; $414e: $77
    halt                                          ; $414f: $76
    adc b                                         ; $4150: $88
    adc b                                         ; $4151: $88
    sbc d                                         ; $4152: $9a
    xor c                                         ; $4153: $a9
    sbc c                                         ; $4154: $99
    sbc b                                         ; $4155: $98
    add a                                         ; $4156: $87
    ld h, [hl]                                    ; $4157: $66
    adc c                                         ; $4158: $89
    adc c                                         ; $4159: $89
    adc b                                         ; $415a: $88
    add a                                         ; $415b: $87
    ld h, a                                       ; $415c: $67
    adc b                                         ; $415d: $88
    xor e                                         ; $415e: $ab
    cp h                                          ; $415f: $bc
    sbc $ed                                       ; $4160: $de $ed
    cp c                                          ; $4162: $b9
    add a                                         ; $4163: $87
    adc c                                         ; $4164: $89
    cp e                                          ; $4165: $bb
    cp c                                          ; $4166: $b9
    xor e                                         ; $4167: $ab
    xor b                                         ; $4168: $a8
    ld h, [hl]                                    ; $4169: $66
    ld d, [hl]                                    ; $416a: $56
    ld h, [hl]                                    ; $416b: $66
    ld h, a                                       ; $416c: $67
    sbc c                                         ; $416d: $99
    adc b                                         ; $416e: $88
    sbc d                                         ; $416f: $9a
    cp d                                          ; $4170: $ba
    cp h                                          ; $4171: $bc
    call c, Call_011_4397                         ; $4172: $dc $97 $43
    inc sp                                        ; $4175: $33
    ld [hl-], a                                   ; $4176: $32
    db $10                                        ; $4177: $10
    ld bc, $4612                                  ; $4178: $01 $12 $46
    adc d                                         ; $417b: $8a
    cp e                                          ; $417c: $bb
    xor c                                         ; $417d: $a9
    sbc c                                         ; $417e: $99
    add [hl]                                      ; $417f: $86
    ld h, [hl]                                    ; $4180: $66
    ld d, h                                       ; $4181: $54
    ld b, e                                       ; $4182: $43
    inc [hl]                                      ; $4183: $34
    ld d, [hl]                                    ; $4184: $56
    ld [hl], a                                    ; $4185: $77
    ld h, l                                       ; $4186: $65
    ld h, l                                       ; $4187: $65
    ld b, h                                       ; $4188: $44
    ld l, b                                       ; $4189: $68
    sbc d                                         ; $418a: $9a
    cp h                                          ; $418b: $bc
    bit 6, h                                      ; $418c: $cb $74
    ld d, [hl]                                    ; $418e: $56
    add a                                         ; $418f: $87
    adc d                                         ; $4190: $8a
    cp e                                          ; $4191: $bb
    cp d                                          ; $4192: $ba
    adc b                                         ; $4193: $88
    ld a, b                                       ; $4194: $78
    add a                                         ; $4195: $87
    ld h, [hl]                                    ; $4196: $66
    ld h, [hl]                                    ; $4197: $66
    ld h, [hl]                                    ; $4198: $66
    ld h, l                                       ; $4199: $65
    ld b, h                                       ; $419a: $44
    ld b, e                                       ; $419b: $43
    ld sp, $1100                                  ; $419c: $31 $00 $11
    inc de                                        ; $419f: $13
    ld b, l                                       ; $41a0: $45
    ld h, [hl]                                    ; $41a1: $66
    ld [hl], a                                    ; $41a2: $77
    ld a, b                                       ; $41a3: $78
    ld a, b                                       ; $41a4: $78
    sbc c                                         ; $41a5: $99
    sbc c                                         ; $41a6: $99
    sbc d                                         ; $41a7: $9a
    cp e                                          ; $41a8: $bb
    cp e                                          ; $41a9: $bb
    call z, $b9cc                                 ; $41aa: $cc $cc $b9
    sbc c                                         ; $41ad: $99
    sbc d                                         ; $41ae: $9a
    xor d                                         ; $41af: $aa
    cp e                                          ; $41b0: $bb
    call z, $bdcc                                 ; $41b1: $cc $cc $bd
    db $dd                                        ; $41b4: $dd
    db $dd                                        ; $41b5: $dd
    cp b                                          ; $41b6: $b8
    ld [hl], a                                    ; $41b7: $77
    ld a, c                                       ; $41b8: $79
    xor c                                         ; $41b9: $a9
    add a                                         ; $41ba: $87
    add a                                         ; $41bb: $87
    ld h, [hl]                                    ; $41bc: $66
    ld [hl], a                                    ; $41bd: $77
    add a                                         ; $41be: $87
    halt                                          ; $41bf: $76
    ld [hl-], a                                   ; $41c0: $32
    inc [hl]                                      ; $41c1: $34
    ld d, [hl]                                    ; $41c2: $56
    adc e                                         ; $41c3: $8b
    call $ecff                                    ; $41c4: $cd $ff $ec
    cp e                                          ; $41c7: $bb
    res 3, b                                      ; $41c8: $cb $98
    ld [hl], a                                    ; $41ca: $77
    ld [hl], a                                    ; $41cb: $77
    adc b                                         ; $41cc: $88
    xor e                                         ; $41cd: $ab
    xor e                                         ; $41ce: $ab
    or a                                          ; $41cf: $b7
    ld h, [hl]                                    ; $41d0: $66
    ld h, h                                       ; $41d1: $64
    inc sp                                        ; $41d2: $33
    inc hl                                        ; $41d3: $23
    ld d, l                                       ; $41d4: $55
    ld d, [hl]                                    ; $41d5: $56
    ld h, l                                       ; $41d6: $65
    halt                                          ; $41d7: $76
    ld d, h                                       ; $41d8: $54
    ld h, l                                       ; $41d9: $65
    ld b, l                                       ; $41da: $45
    ld d, [hl]                                    ; $41db: $56
    ld d, l                                       ; $41dc: $55
    ld d, [hl]                                    ; $41dd: $56
    ld [hl], a                                    ; $41de: $77
    ld a, c                                       ; $41df: $79
    add a                                         ; $41e0: $87
    ld d, h                                       ; $41e1: $54
    ld b, h                                       ; $41e2: $44
    ld [hl-], a                                   ; $41e3: $32
    jr nz, jr_011_41f8                            ; $41e4: $20 $12

    ld b, [hl]                                    ; $41e6: $46
    ld a, c                                       ; $41e7: $79
    sbc c                                         ; $41e8: $99
    sbc b                                         ; $41e9: $98
    adc b                                         ; $41ea: $88
    adc c                                         ; $41eb: $89
    xor d                                         ; $41ec: $aa
    sbc b                                         ; $41ed: $98
    halt                                          ; $41ee: $76
    ld d, h                                       ; $41ef: $54
    ld b, h                                       ; $41f0: $44
    ld b, h                                       ; $41f1: $44
    ld b, h                                       ; $41f2: $44
    ld b, h                                       ; $41f3: $44
    ld b, h                                       ; $41f4: $44
    ld b, l                                       ; $41f5: $45
    ld h, l                                       ; $41f6: $65
    ld l, c                                       ; $41f7: $69

jr_011_41f8:
    adc b                                         ; $41f8: $88
    adc c                                         ; $41f9: $89
    xor e                                         ; $41fa: $ab
    call z, $efcd                                 ; $41fb: $cc $cd $ef
    rst $38                                       ; $41fe: $ff
    cp $ca                                        ; $41ff: $fe $ca
    cp e                                          ; $4201: $bb
    xor d                                         ; $4202: $aa
    xor d                                         ; $4203: $aa
    sbc c                                         ; $4204: $99
    adc b                                         ; $4205: $88
    halt                                          ; $4206: $76
    ld [hl], a                                    ; $4207: $77
    ld [hl], a                                    ; $4208: $77
    ld h, l                                       ; $4209: $65
    ld d, [hl]                                    ; $420a: $56
    ld a, b                                       ; $420b: $78
    adc b                                         ; $420c: $88
    add a                                         ; $420d: $87
    ld d, l                                       ; $420e: $55
    ld d, h                                       ; $420f: $54
    ld b, h                                       ; $4210: $44
    ld d, [hl]                                    ; $4211: $56
    halt                                          ; $4212: $76
    ld h, [hl]                                    ; $4213: $66
    ld h, [hl]                                    ; $4214: $66
    ld h, l                                       ; $4215: $65
    ld d, [hl]                                    ; $4216: $56
    ld a, b                                       ; $4217: $78
    add a                                         ; $4218: $87
    adc c                                         ; $4219: $89
    xor d                                         ; $421a: $aa
    xor c                                         ; $421b: $a9
    xor d                                         ; $421c: $aa
    cp e                                          ; $421d: $bb
    xor c                                         ; $421e: $a9
    sbc d                                         ; $421f: $9a
    xor d                                         ; $4220: $aa
    cp e                                          ; $4221: $bb
    xor d                                         ; $4222: $aa
    xor b                                         ; $4223: $a8
    adc b                                         ; $4224: $88
    sbc b                                         ; $4225: $98
    sbc b                                         ; $4226: $98
    ld h, a                                       ; $4227: $67
    adc b                                         ; $4228: $88
    adc c                                         ; $4229: $89
    add l                                         ; $422a: $85
    ld b, e                                       ; $422b: $43
    ld hl, $3423                                  ; $422c: $21 $23 $34
    ld d, l                                       ; $422f: $55
    ld b, h                                       ; $4230: $44
    ld d, e                                       ; $4231: $53
    inc [hl]                                      ; $4232: $34
    inc sp                                        ; $4233: $33
    ld d, [hl]                                    ; $4234: $56
    ld d, l                                       ; $4235: $55
    ld d, l                                       ; $4236: $55
    ld h, a                                       ; $4237: $67
    ld a, c                                       ; $4238: $79
    sbc d                                         ; $4239: $9a
    cp d                                          ; $423a: $ba
    sbc d                                         ; $423b: $9a
    xor c                                         ; $423c: $a9
    xor d                                         ; $423d: $aa
    xor c                                         ; $423e: $a9
    sbc c                                         ; $423f: $99
    add a                                         ; $4240: $87
    ld h, l                                       ; $4241: $65
    ld d, l                                       ; $4242: $55
    ld d, l                                       ; $4243: $55
    ld h, [hl]                                    ; $4244: $66
    halt                                          ; $4245: $76
    ld a, b                                       ; $4246: $78
    sbc c                                         ; $4247: $99
    sbc d                                         ; $4248: $9a
    xor e                                         ; $4249: $ab
    cp h                                          ; $424a: $bc
    res 5, d                                      ; $424b: $cb $aa
    xor e                                         ; $424d: $ab
    call z, $99cb                                 ; $424e: $cc $cb $99
    sbc c                                         ; $4251: $99
    adc b                                         ; $4252: $88
    add a                                         ; $4253: $87
    adc c                                         ; $4254: $89
    adc d                                         ; $4255: $8a
    xor e                                         ; $4256: $ab
    xor e                                         ; $4257: $ab
    res 7, e                                      ; $4258: $cb $bb
    jp z, $5586                                   ; $425a: $ca $86 $55

    ld h, a                                       ; $425d: $67
    ld [hl], a                                    ; $425e: $77
    halt                                          ; $425f: $76
    ld d, e                                       ; $4260: $53
    inc sp                                        ; $4261: $33
    inc [hl]                                      ; $4262: $34
    ld h, [hl]                                    ; $4263: $66
    ld h, [hl]                                    ; $4264: $66
    ld d, l                                       ; $4265: $55
    ld d, h                                       ; $4266: $54
    ld d, h                                       ; $4267: $54
    ld b, h                                       ; $4268: $44
    ld d, a                                       ; $4269: $57
    sbc d                                         ; $426a: $9a
    sbc c                                         ; $426b: $99
    sbc b                                         ; $426c: $98
    ld h, l                                       ; $426d: $65
    ld b, e                                       ; $426e: $43
    ld b, d                                       ; $426f: $42
    ld bc, $4423                                  ; $4270: $01 $23 $44
    inc sp                                        ; $4273: $33
    ld b, h                                       ; $4274: $44
    ld b, e                                       ; $4275: $43
    inc [hl]                                      ; $4276: $34
    ld d, [hl]                                    ; $4277: $56
    ld d, l                                       ; $4278: $55
    ld h, a                                       ; $4279: $67
    halt                                          ; $427a: $76
    ld h, [hl]                                    ; $427b: $66
    ld h, a                                       ; $427c: $67
    ld h, [hl]                                    ; $427d: $66
    ld h, a                                       ; $427e: $67
    add a                                         ; $427f: $87
    add a                                         ; $4280: $87
    ld [hl], a                                    ; $4281: $77
    adc b                                         ; $4282: $88
    sbc c                                         ; $4283: $99
    sbc b                                         ; $4284: $98
    halt                                          ; $4285: $76
    ld h, [hl]                                    ; $4286: $66
    ld a, c                                       ; $4287: $79
    xor e                                         ; $4288: $ab
    cp l                                          ; $4289: $bd
    db $dd                                        ; $428a: $dd
    res 5, c                                      ; $428b: $cb $a9
    sbc c                                         ; $428d: $99
    xor e                                         ; $428e: $ab
    cp e                                          ; $428f: $bb
    xor d                                         ; $4290: $aa
    sbc b                                         ; $4291: $98
    halt                                          ; $4292: $76
    ld [hl], a                                    ; $4293: $77
    adc c                                         ; $4294: $89
    sbc d                                         ; $4295: $9a
    xor h                                         ; $4296: $ac
    cp e                                          ; $4297: $bb
    call $efde                                    ; $4298: $cd $de $ef
    rst $38                                       ; $429b: $ff
    cp $dd                                        ; $429c: $fe $dd
    res 3, c                                      ; $429e: $cb $99
    xor e                                         ; $42a0: $ab
    xor b                                         ; $42a1: $a8
    add a                                         ; $42a2: $87
    ld [hl], a                                    ; $42a3: $77
    ld a, c                                       ; $42a4: $79
    xor d                                         ; $42a5: $aa
    xor c                                         ; $42a6: $a9
    xor e                                         ; $42a7: $ab
    xor c                                         ; $42a8: $a9
    adc b                                         ; $42a9: $88
    sbc d                                         ; $42aa: $9a
    xor b                                         ; $42ab: $a8
    add a                                         ; $42ac: $87
    ld h, [hl]                                    ; $42ad: $66
    ld d, h                                       ; $42ae: $54
    ld [hl-], a                                   ; $42af: $32
    nop                                           ; $42b0: $00
    ld de, $4423                                  ; $42b1: $11 $23 $44
    ld d, l                                       ; $42b4: $55
    ld d, l                                       ; $42b5: $55
    ld d, [hl]                                    ; $42b6: $56
    ld h, l                                       ; $42b7: $65
    ld d, h                                       ; $42b8: $54
    inc [hl]                                      ; $42b9: $34
    ld b, l                                       ; $42ba: $45
    ld d, [hl]                                    ; $42bb: $56
    ld h, a                                       ; $42bc: $67
    add a                                         ; $42bd: $87
    ld a, b                                       ; $42be: $78
    ld a, b                                       ; $42bf: $78
    adc b                                         ; $42c0: $88
    halt                                          ; $42c1: $76
    ld h, [hl]                                    ; $42c2: $66
    ld d, [hl]                                    ; $42c3: $56
    ld h, a                                       ; $42c4: $67
    ld h, l                                       ; $42c5: $65
    inc sp                                        ; $42c6: $33
    ld [hl-], a                                   ; $42c7: $32
    ld [hl+], a                                   ; $42c8: $22
    ld de, $2222                                  ; $42c9: $11 $22 $22
    ld b, l                                       ; $42cc: $45
    ld h, [hl]                                    ; $42cd: $66
    ld [hl], a                                    ; $42ce: $77
    ld h, l                                       ; $42cf: $65
    ld h, a                                       ; $42d0: $67
    adc c                                         ; $42d1: $89
    adc b                                         ; $42d2: $88
    ld h, [hl]                                    ; $42d3: $66
    ld h, [hl]                                    ; $42d4: $66
    ld a, b                                       ; $42d5: $78
    add a                                         ; $42d6: $87
    add a                                         ; $42d7: $87
    ld [hl], a                                    ; $42d8: $77
    adc b                                         ; $42d9: $88
    sbc d                                         ; $42da: $9a
    sbc c                                         ; $42db: $99
    adc b                                         ; $42dc: $88
    sbc b                                         ; $42dd: $98
    adc d                                         ; $42de: $8a
    cp h                                          ; $42df: $bc
    call z, $babb                                 ; $42e0: $cc $bb $ba
    sbc c                                         ; $42e3: $99
    sbc d                                         ; $42e4: $9a
    set 1, h                                      ; $42e5: $cb $cc
    cp d                                          ; $42e7: $ba
    xor e                                         ; $42e8: $ab
    cp l                                          ; $42e9: $bd
    db $ed                                        ; $42ea: $ed
    call z, $ccdc                                 ; $42eb: $cc $dc $cc
    cp c                                          ; $42ee: $b9
    adc c                                         ; $42ef: $89
    xor h                                         ; $42f0: $ac
    res 4, a                                      ; $42f1: $cb $a7
    ld a, b                                       ; $42f3: $78
    sbc c                                         ; $42f4: $99
    sub a                                         ; $42f5: $97
    ld h, a                                       ; $42f6: $67
    adc d                                         ; $42f7: $8a
    xor e                                         ; $42f8: $ab
    adc $da                                       ; $42f9: $ce $da
    xor b                                         ; $42fb: $a8
    ld [hl], l                                    ; $42fc: $75
    ld b, h                                       ; $42fd: $44
    ld b, h                                       ; $42fe: $44
    inc sp                                        ; $42ff: $33
    ld b, h                                       ; $4300: $44
    ld [hl-], a                                   ; $4301: $32
    dec [hl]                                      ; $4302: $35
    ld h, [hl]                                    ; $4303: $66
    ld a, b                                       ; $4304: $78
    adc d                                         ; $4305: $8a
    cp e                                          ; $4306: $bb
    xor b                                         ; $4307: $a8
    ld a, b                                       ; $4308: $78
    ld [hl], a                                    ; $4309: $77
    adc d                                         ; $430a: $8a
    xor d                                         ; $430b: $aa
    xor e                                         ; $430c: $ab
    xor e                                         ; $430d: $ab
    cp b                                          ; $430e: $b8
    ld [hl], a                                    ; $430f: $77
    ld h, l                                       ; $4310: $65
    ld h, [hl]                                    ; $4311: $66
    ld h, [hl]                                    ; $4312: $66
    ld h, l                                       ; $4313: $65
    inc sp                                        ; $4314: $33
    ld [hl-], a                                   ; $4315: $32
    ld b, [hl]                                    ; $4316: $46
    ld d, h                                       ; $4317: $54
    ld d, l                                       ; $4318: $55
    ld h, a                                       ; $4319: $67
    halt                                          ; $431a: $76
    ld h, [hl]                                    ; $431b: $66
    ld d, l                                       ; $431c: $55
    ld h, a                                       ; $431d: $67
    ld h, l                                       ; $431e: $65
    ld d, l                                       ; $431f: $55
    ld d, h                                       ; $4320: $54
    inc sp                                        ; $4321: $33
    ld b, h                                       ; $4322: $44
    dec [hl]                                      ; $4323: $35
    ld h, a                                       ; $4324: $67
    ld a, b                                       ; $4325: $78
    cp d                                          ; $4326: $ba
    sbc c                                         ; $4327: $99
    sbc c                                         ; $4328: $99
    sbc b                                         ; $4329: $98
    adc b                                         ; $432a: $88
    add a                                         ; $432b: $87
    ld h, [hl]                                    ; $432c: $66
    ld [hl], a                                    ; $432d: $77
    ld [hl], a                                    ; $432e: $77
    ld a, b                                       ; $432f: $78
    adc d                                         ; $4330: $8a
    cp d                                          ; $4331: $ba
    sub a                                         ; $4332: $97
    ld h, l                                       ; $4333: $65
    ld b, h                                       ; $4334: $44
    ld b, h                                       ; $4335: $44
    ld b, l                                       ; $4336: $45
    ld l, b                                       ; $4337: $68
    xor e                                         ; $4338: $ab
    sbc $ec                                       ; $4339: $de $ec
    db $db                                        ; $433b: $db
    cp e                                          ; $433c: $bb
    xor d                                         ; $433d: $aa
    sbc c                                         ; $433e: $99
    add [hl]                                      ; $433f: $86
    ld d, a                                       ; $4340: $57
    ld b, h                                       ; $4341: $44
    ld b, h                                       ; $4342: $44
    ld h, a                                       ; $4343: $67
    adc e                                         ; $4344: $8b
    sbc $ec                                       ; $4345: $de $ec
    xor d                                         ; $4347: $aa
    adc c                                         ; $4348: $89
    adc b                                         ; $4349: $88
    sbc c                                         ; $434a: $99
    ld l, b                                       ; $434b: $68
    xor d                                         ; $434c: $aa
    adc c                                         ; $434d: $89
    xor c                                         ; $434e: $a9
    sbc b                                         ; $434f: $98
    ld h, [hl]                                    ; $4350: $66
    ld d, h                                       ; $4351: $54
    ld h, l                                       ; $4352: $65
    ld d, l                                       ; $4353: $55
    ld h, l                                       ; $4354: $65
    ld [hl-], a                                   ; $4355: $32
    ld [hl+], a                                   ; $4356: $22
    dec [hl]                                      ; $4357: $35
    ld h, h                                       ; $4358: $64
    ld b, l                                       ; $4359: $45
    ld d, l                                       ; $435a: $55
    ld d, l                                       ; $435b: $55
    ld d, [hl]                                    ; $435c: $56
    ld d, l                                       ; $435d: $55
    ld h, a                                       ; $435e: $67
    ld h, a                                       ; $435f: $67
    add a                                         ; $4360: $87
    ld [hl], a                                    ; $4361: $77
    add a                                         ; $4362: $87
    ld h, [hl]                                    ; $4363: $66
    ld d, [hl]                                    ; $4364: $56
    ld d, [hl]                                    ; $4365: $56

Jump_011_4366:
    adc b                                         ; $4366: $88
    halt                                          ; $4367: $76
    ld d, [hl]                                    ; $4368: $56
    ld l, b                                       ; $4369: $68
    adc d                                         ; $436a: $8a
    xor e                                         ; $436b: $ab
    xor d                                         ; $436c: $aa
    sub a                                         ; $436d: $97
    ld [hl], a                                    ; $436e: $77
    ld h, [hl]                                    ; $436f: $66
    adc c                                         ; $4370: $89
    xor e                                         ; $4371: $ab
    cp d                                          ; $4372: $ba
    cp d                                          ; $4373: $ba
    sub a                                         ; $4374: $97
    ld l, b                                       ; $4375: $68
    sbc d                                         ; $4376: $9a
    xor e                                         ; $4377: $ab
    rst $08                                       ; $4378: $cf
    rst $38                                       ; $4379: $ff
    db $ec                                        ; $437a: $ec
    cp d                                          ; $437b: $ba
    sbc b                                         ; $437c: $98
    ld [hl], a                                    ; $437d: $77
    halt                                          ; $437e: $76
    ld [hl], a                                    ; $437f: $77
    sbc b                                         ; $4380: $98
    ld h, [hl]                                    ; $4381: $66
    ld a, c                                       ; $4382: $79
    xor c                                         ; $4383: $a9
    xor d                                         ; $4384: $aa
    sbc d                                         ; $4385: $9a
    sbc e                                         ; $4386: $9b
    db $db                                        ; $4387: $db
    and a                                         ; $4388: $a7
    ld a, b                                       ; $4389: $78
    ld [hl], l                                    ; $438a: $75
    ld l, b                                       ; $438b: $68
    add a                                         ; $438c: $87
    xor d                                         ; $438d: $aa
    sbc d                                         ; $438e: $9a
    sbc b                                         ; $438f: $98
    sbc c                                         ; $4390: $99
    adc b                                         ; $4391: $88
    adc b                                         ; $4392: $88
    ld a, b                                       ; $4393: $78
    ld l, b                                       ; $4394: $68
    add a                                         ; $4395: $87
    halt                                          ; $4396: $76

Call_011_4397:
    ld h, h                                       ; $4397: $64
    ld d, h                                       ; $4398: $54
    ld d, a                                       ; $4399: $57
    halt                                          ; $439a: $76
    ld d, [hl]                                    ; $439b: $56
    ld h, l                                       ; $439c: $65
    ld b, d                                       ; $439d: $42
    ld d, h                                       ; $439e: $54
    ld d, a                                       ; $439f: $57
    add a                                         ; $43a0: $87
    ld d, [hl]                                    ; $43a1: $56
    ld d, d                                       ; $43a2: $52
    inc de                                        ; $43a3: $13
    inc sp                                        ; $43a4: $33
    inc [hl]                                      ; $43a5: $34
    ld d, h                                       ; $43a6: $54
    ld b, l                                       ; $43a7: $45
    ld b, l                                       ; $43a8: $45
    ld d, l                                       ; $43a9: $55
    ld h, h                                       ; $43aa: $64
    inc [hl]                                      ; $43ab: $34
    ld h, l                                       ; $43ac: $65
    ld d, a                                       ; $43ad: $57
    adc d                                         ; $43ae: $8a
    xor d                                         ; $43af: $aa
    xor h                                         ; $43b0: $ac
    db $dd                                        ; $43b1: $dd
    call c, Call_011_7798                         ; $43b2: $dc $98 $77
    ld d, e                                       ; $43b5: $53
    inc sp                                        ; $43b6: $33
    inc sp                                        ; $43b7: $33
    ld b, l                                       ; $43b8: $45
    ld h, l                                       ; $43b9: $65
    ld h, a                                       ; $43ba: $67
    halt                                          ; $43bb: $76
    ld d, l                                       ; $43bc: $55
    ld d, h                                       ; $43bd: $54
    ld d, [hl]                                    ; $43be: $56
    adc c                                         ; $43bf: $89
    adc c                                         ; $43c0: $89
    sbc c                                         ; $43c1: $99
    adc c                                         ; $43c2: $89
    cp e                                          ; $43c3: $bb
    xor e                                         ; $43c4: $ab
    sbc b                                         ; $43c5: $98
    xor c                                         ; $43c6: $a9
    sbc c                                         ; $43c7: $99
    ld [hl], a                                    ; $43c8: $77
    ld [hl], a                                    ; $43c9: $77
    ld a, c                                       ; $43ca: $79
    xor d                                         ; $43cb: $aa
    sbc c                                         ; $43cc: $99
    sbc e                                         ; $43cd: $9b
    sbc c                                         ; $43ce: $99
    xor d                                         ; $43cf: $aa
    sbc d                                         ; $43d0: $9a
    xor e                                         ; $43d1: $ab
    cp e                                          ; $43d2: $bb
    cp d                                          ; $43d3: $ba
    xor c                                         ; $43d4: $a9
    sub a                                         ; $43d5: $97
    ld a, b                                       ; $43d6: $78
    sbc c                                         ; $43d7: $99
    add a                                         ; $43d8: $87
    ld a, b                                       ; $43d9: $78
    adc b                                         ; $43da: $88
    adc b                                         ; $43db: $88
    halt                                          ; $43dc: $76
    adc b                                         ; $43dd: $88
    sbc d                                         ; $43de: $9a
    sbc b                                         ; $43df: $98
    add a                                         ; $43e0: $87
    adc c                                         ; $43e1: $89
    xor c                                         ; $43e2: $a9
    sbc d                                         ; $43e3: $9a
    xor d                                         ; $43e4: $aa
    sbc c                                         ; $43e5: $99
    sbc c                                         ; $43e6: $99
    xor d                                         ; $43e7: $aa
    xor c                                         ; $43e8: $a9
    sbc c                                         ; $43e9: $99
    add l                                         ; $43ea: $85
    db $10                                        ; $43eb: $10
    ld hl, $4603                                  ; $43ec: $21 $03 $46
    add a                                         ; $43ef: $87
    adc b                                         ; $43f0: $88
    sbc d                                         ; $43f1: $9a
    rst $08                                       ; $43f2: $cf
    jp z, $98aa                                   ; $43f3: $ca $aa $98

    ld h, [hl]                                    ; $43f6: $66
    ld b, d                                       ; $43f7: $42
    inc [hl]                                      ; $43f8: $34
    ld de, $bb39                                  ; $43f9: $11 $39 $bb
    adc b                                         ; $43fc: $88
    add [hl]                                      ; $43fd: $86
    ld d, l                                       ; $43fe: $55
    ld d, [hl]                                    ; $43ff: $56
    adc c                                         ; $4400: $89
    sbc d                                         ; $4401: $9a
    call z, $97aa                                 ; $4402: $cc $aa $97
    sbc b                                         ; $4405: $98
    ld [hl], h                                    ; $4406: $74
    ld b, l                                       ; $4407: $45
    inc sp                                        ; $4408: $33
    inc h                                         ; $4409: $24
    ld b, l                                       ; $440a: $45
    ld h, a                                       ; $440b: $67
    ld [hl], a                                    ; $440c: $77
    ld d, a                                       ; $440d: $57
    sbc b                                         ; $440e: $98
    adc d                                         ; $440f: $8a
    or a                                          ; $4410: $b7
    ld b, h                                       ; $4411: $44
    ld h, a                                       ; $4412: $67
    add l                                         ; $4413: $85
    ld sp, $6425                                  ; $4414: $31 $25 $64
    ld b, [hl]                                    ; $4417: $46
    xor [hl]                                      ; $4418: $ae
    call Call_011_67ec                            ; $4419: $cd $ec $67
    xor h                                         ; $441c: $ac
    call z, $abdc                                 ; $441d: $cc $dc $ab
    and [hl]                                      ; $4420: $a6
    ld h, [hl]                                    ; $4421: $66
    ld d, l                                       ; $4422: $55
    sbc c                                         ; $4423: $99
    ld [hl], h                                    ; $4424: $74
    ld b, l                                       ; $4425: $45
    ld h, [hl]                                    ; $4426: $66
    ld a, b                                       ; $4427: $78
    adc b                                         ; $4428: $88
    add a                                         ; $4429: $87
    sbc b                                         ; $442a: $98
    ld h, [hl]                                    ; $442b: $66
    ld h, a                                       ; $442c: $67
    ld h, a                                       ; $442d: $67
    xor d                                         ; $442e: $aa
    cp e                                          ; $442f: $bb
    call Call_011_66b9                            ; $4430: $cd $b9 $66
    ld h, [hl]                                    ; $4433: $66
    inc [hl]                                      ; $4434: $34
    ld l, b                                       ; $4435: $68
    sub e                                         ; $4436: $93
    ld hl, $7935                                  ; $4437: $21 $35 $79
    cp l                                          ; $443a: $bd
    sbc $ff                                       ; $443b: $de $ff
    db $fc                                        ; $443d: $fc
    cp e                                          ; $443e: $bb
    cp c                                          ; $443f: $b9
    sub h                                         ; $4440: $94
    ld [de], a                                    ; $4441: $12
    ld [hl+], a                                   ; $4442: $22
    ld b, h                                       ; $4443: $44
    ld d, a                                       ; $4444: $57
    sbc c                                         ; $4445: $99
    xor e                                         ; $4446: $ab
    sbc b                                         ; $4447: $98
    ld [hl], l                                    ; $4448: $75
    ld l, b                                       ; $4449: $68
    sbc d                                         ; $444a: $9a
    add [hl]                                      ; $444b: $86
    ld d, e                                       ; $444c: $53
    ld [hl+], a                                   ; $444d: $22
    ld [hl+], a                                   ; $444e: $22
    ld hl, $4412                                  ; $444f: $21 $12 $44
    ld d, [hl]                                    ; $4452: $56
    ld a, b                                       ; $4453: $78
    sbc d                                         ; $4454: $9a
    sbc b                                         ; $4455: $98
    adc b                                         ; $4456: $88
    sbc c                                         ; $4457: $99
    sbc d                                         ; $4458: $9a
    cp e                                          ; $4459: $bb
    cp e                                          ; $445a: $bb
    xor d                                         ; $445b: $aa
    cp e                                          ; $445c: $bb
    xor e                                         ; $445d: $ab
    call z, $a9aa                                 ; $445e: $cc $aa $a9
    sbc c                                         ; $4461: $99
    add a                                         ; $4462: $87
    ld h, [hl]                                    ; $4463: $66
    ld h, l                                       ; $4464: $65
    ld d, l                                       ; $4465: $55
    ld d, l                                       ; $4466: $55
    ld d, h                                       ; $4467: $54
    ld d, a                                       ; $4468: $57
    ld a, c                                       ; $4469: $79
    xor c                                         ; $446a: $a9
    sbc c                                         ; $446b: $99
    add [hl]                                      ; $446c: $86
    ld d, l                                       ; $446d: $55
    ld h, a                                       ; $446e: $67
    adc c                                         ; $446f: $89
    sbc d                                         ; $4470: $9a
    xor d                                         ; $4471: $aa
    xor c                                         ; $4472: $a9
    adc b                                         ; $4473: $88
    adc b                                         ; $4474: $88
    halt                                          ; $4475: $76
    ld d, h                                       ; $4476: $54
    ld d, l                                       ; $4477: $55
    ld d, [hl]                                    ; $4478: $56
    ld [hl], a                                    ; $4479: $77
    ld a, b                                       ; $447a: $78
    adc c                                         ; $447b: $89
    add a                                         ; $447c: $87
    ld a, b                                       ; $447d: $78
    adc c                                         ; $447e: $89
    sbc c                                         ; $447f: $99
    adc b                                         ; $4480: $88
    adc b                                         ; $4481: $88
    ld [hl], a                                    ; $4482: $77
    adc b                                         ; $4483: $88
    add a                                         ; $4484: $87
    ld [hl], a                                    ; $4485: $77
    halt                                          ; $4486: $76
    ld h, a                                       ; $4487: $67
    sbc d                                         ; $4488: $9a
    sbc c                                         ; $4489: $99
    add [hl]                                      ; $448a: $86
    ld h, l                                       ; $448b: $65
    ld b, l                                       ; $448c: $45
    ld d, [hl]                                    ; $448d: $56
    ld h, l                                       ; $448e: $65
    ld d, h                                       ; $448f: $54
    ld b, l                                       ; $4490: $45
    ld l, b                                       ; $4491: $68
    sbc d                                         ; $4492: $9a
    xor c                                         ; $4493: $a9
    adc b                                         ; $4494: $88
    adc b                                         ; $4495: $88
    ld a, c                                       ; $4496: $79
    sbc b                                         ; $4497: $98
    ld l, b                                       ; $4498: $68
    ld a, b                                       ; $4499: $78
    sbc c                                         ; $449a: $99
    xor c                                         ; $449b: $a9
    add a                                         ; $449c: $87
    adc c                                         ; $449d: $89
    sbc b                                         ; $449e: $98
    sbc c                                         ; $449f: $99
    add a                                         ; $44a0: $87
    adc b                                         ; $44a1: $88
    ld a, b                                       ; $44a2: $78
    sbc b                                         ; $44a3: $98
    add a                                         ; $44a4: $87
    ld a, b                                       ; $44a5: $78
    ld a, c                                       ; $44a6: $79
    sbc c                                         ; $44a7: $99
    sbc b                                         ; $44a8: $98
    sbc c                                         ; $44a9: $99
    adc c                                         ; $44aa: $89
    sbc c                                         ; $44ab: $99
    xor c                                         ; $44ac: $a9
    adc b                                         ; $44ad: $88
    ld d, [hl]                                    ; $44ae: $56
    ld l, b                                       ; $44af: $68
    adc d                                         ; $44b0: $8a
    add [hl]                                      ; $44b1: $86
    ld h, [hl]                                    ; $44b2: $66
    ld h, [hl]                                    ; $44b3: $66
    ld h, a                                       ; $44b4: $67
    ld [hl], l                                    ; $44b5: $75
    ld h, l                                       ; $44b6: $65
    ld b, [hl]                                    ; $44b7: $46
    ld d, [hl]                                    ; $44b8: $56
    adc b                                         ; $44b9: $88
    adc b                                         ; $44ba: $88
    adc c                                         ; $44bb: $89
    adc c                                         ; $44bc: $89
    cp e                                          ; $44bd: $bb
    db $dd                                        ; $44be: $dd
    xor c                                         ; $44bf: $a9
    add a                                         ; $44c0: $87
    adc b                                         ; $44c1: $88
    add a                                         ; $44c2: $87
    adc b                                         ; $44c3: $88
    halt                                          ; $44c4: $76
    ld h, l                                       ; $44c5: $65
    dec [hl]                                      ; $44c6: $35
    ld [hl], l                                    ; $44c7: $75
    ld e, b                                       ; $44c8: $58
    sbc c                                         ; $44c9: $99
    adc b                                         ; $44ca: $88
    halt                                          ; $44cb: $76
    adc b                                         ; $44cc: $88
    ld [hl], l                                    ; $44cd: $75
    ld d, l                                       ; $44ce: $55
    ld d, h                                       ; $44cf: $54
    ld d, l                                       ; $44d0: $55
    ld d, [hl]                                    ; $44d1: $56
    ld d, l                                       ; $44d2: $55
    ld d, e                                       ; $44d3: $53
    inc [hl]                                      ; $44d4: $34
    ld h, l                                       ; $44d5: $65
    ld d, [hl]                                    ; $44d6: $56
    ld h, l                                       ; $44d7: $65
    ld h, [hl]                                    ; $44d8: $66
    ld b, h                                       ; $44d9: $44
    ld b, e                                       ; $44da: $43
    ld h, l                                       ; $44db: $65
    ld d, d                                       ; $44dc: $52
    ld b, h                                       ; $44dd: $44
    halt                                          ; $44de: $76
    sbc c                                         ; $44df: $99
    adc b                                         ; $44e0: $88
    ld [hl], a                                    ; $44e1: $77
    sbc e                                         ; $44e2: $9b
    call c, $bbcb                                 ; $44e3: $dc $cb $bb
    cp e                                          ; $44e6: $bb
    res 7, e                                      ; $44e7: $cb $bb
    cp e                                          ; $44e9: $bb
    cp d                                          ; $44ea: $ba
    xor d                                         ; $44eb: $aa
    xor c                                         ; $44ec: $a9
    add a                                         ; $44ed: $87
    ld [hl], a                                    ; $44ee: $77
    ld [hl], a                                    ; $44ef: $77
    adc c                                         ; $44f0: $89
    sbc d                                         ; $44f1: $9a
    xor d                                         ; $44f2: $aa
    xor c                                         ; $44f3: $a9
    ld [hl], a                                    ; $44f4: $77
    adc c                                         ; $44f5: $89
    sbc b                                         ; $44f6: $98
    sbc c                                         ; $44f7: $99
    sbc b                                         ; $44f8: $98
    sbc c                                         ; $44f9: $99
    adc b                                         ; $44fa: $88
    sbc c                                         ; $44fb: $99
    ld [hl], d                                    ; $44fc: $72
    ld [de], a                                    ; $44fd: $12
    ld e, b                                       ; $44fe: $58
    ld h, h                                       ; $44ff: $64
    ld h, a                                       ; $4500: $67
    adc c                                         ; $4501: $89
    xor e                                         ; $4502: $ab
    rst $28                                       ; $4503: $ef
    jp c, $b99a                                   ; $4504: $da $9a $b9

    sbc h                                         ; $4507: $9c
    rst $00                                       ; $4508: $c7
    ld b, e                                       ; $4509: $43
    ld b, a                                       ; $450a: $47
    ld [hl], a                                    ; $450b: $77
    sbc c                                         ; $450c: $99
    halt                                          ; $450d: $76
    ld h, [hl]                                    ; $450e: $66
    ld d, l                                       ; $450f: $55
    ld d, l                                       ; $4510: $55
    ld a, c                                       ; $4511: $79
    add l                                         ; $4512: $85
    ld h, a                                       ; $4513: $67
    halt                                          ; $4514: $76
    ld b, h                                       ; $4515: $44
    ld b, e                                       ; $4516: $43
    inc hl                                        ; $4517: $23
    ld b, [hl]                                    ; $4518: $46
    sbc c                                         ; $4519: $99
    xor d                                         ; $451a: $aa
    res 3, b                                      ; $451b: $cb $98
    halt                                          ; $451d: $76
    ld a, c                                       ; $451e: $79
    cp e                                          ; $451f: $bb
    xor h                                         ; $4520: $ac
    db $db                                        ; $4521: $db
    sbc b                                         ; $4522: $98
    add a                                         ; $4523: $87
    ld h, [hl]                                    ; $4524: $66
    ld d, [hl]                                    ; $4525: $56
    ld h, l                                       ; $4526: $65
    ld d, l                                       ; $4527: $55
    ld d, e                                       ; $4528: $53
    ld [hl+], a                                   ; $4529: $22
    ld hl, $1100                                  ; $452a: $21 $00 $11
    ld bc, $5534                                  ; $452d: $01 $34 $55
    ld h, a                                       ; $4530: $67
    add a                                         ; $4531: $87
    xor c                                         ; $4532: $a9
    sbc c                                         ; $4533: $99
    sbc b                                         ; $4534: $98
    adc c                                         ; $4535: $89
    cp e                                          ; $4536: $bb
    cp e                                          ; $4537: $bb
    xor d                                         ; $4538: $aa
    cp h                                          ; $4539: $bc
    call $dded                                    ; $453a: $cd $ed $dd
    call z, $bcbb                                 ; $453d: $cc $bb $bc
    res 3, c                                      ; $4540: $cb $99
    sbc c                                         ; $4542: $99
    adc c                                         ; $4543: $89
    xor c                                         ; $4544: $a9
    add a                                         ; $4545: $87
    ld h, l                                       ; $4546: $65
    ld d, l                                       ; $4547: $55
    ld h, a                                       ; $4548: $67
    sbc c                                         ; $4549: $99
    adc b                                         ; $454a: $88
    ld a, b                                       ; $454b: $78
    ld [hl], l                                    ; $454c: $75
    ld d, [hl]                                    ; $454d: $56
    ld d, h                                       ; $454e: $54
    ld b, [hl]                                    ; $454f: $46
    add l                                         ; $4550: $85
    ld b, h                                       ; $4551: $44
    ld b, e                                       ; $4552: $43
    dec [hl]                                      ; $4553: $35
    ld a, b                                       ; $4554: $78
    sbc d                                         ; $4555: $9a
    cp h                                          ; $4556: $bc
    res 2, a                                      ; $4557: $cb $97
    adc b                                         ; $4559: $88
    halt                                          ; $455a: $76
    ld [hl], a                                    ; $455b: $77
    ld [hl], a                                    ; $455c: $77
    ld h, [hl]                                    ; $455d: $66
    ld [hl], a                                    ; $455e: $77
    ld h, h                                       ; $455f: $64
    ld [hl+], a                                   ; $4560: $22
    inc [hl]                                      ; $4561: $34
    ld b, e                                       ; $4562: $43
    inc h                                         ; $4563: $24
    ld b, h                                       ; $4564: $44
    ld b, e                                       ; $4565: $43
    ld d, [hl]                                    ; $4566: $56
    ld l, b                                       ; $4567: $68
    xor d                                         ; $4568: $aa
    cp [hl]                                       ; $4569: $be
    db $dd                                        ; $456a: $dd
    ret                                           ; $456b: $c9


    sbc b                                         ; $456c: $98
    adc b                                         ; $456d: $88
    adc b                                         ; $456e: $88
    adc c                                         ; $456f: $89
    add h                                         ; $4570: $84
    ld b, [hl]                                    ; $4571: $46
    ld h, l                                       ; $4572: $65
    ld l, b                                       ; $4573: $68
    sbc c                                         ; $4574: $99
    xor c                                         ; $4575: $a9
    ld h, [hl]                                    ; $4576: $66
    ld h, [hl]                                    ; $4577: $66
    ld a, b                                       ; $4578: $78
    adc b                                         ; $4579: $88
    sbc c                                         ; $457a: $99
    sbc c                                         ; $457b: $99
    sbc b                                         ; $457c: $98
    sbc c                                         ; $457d: $99
    ld [hl], a                                    ; $457e: $77
    adc b                                         ; $457f: $88
    adc c                                         ; $4580: $89
    cp h                                          ; $4581: $bc
    cp e                                          ; $4582: $bb
    xor c                                         ; $4583: $a9
    halt                                          ; $4584: $76
    add a                                         ; $4585: $87
    ld l, b                                       ; $4586: $68
    xor d                                         ; $4587: $aa
    sbc d                                         ; $4588: $9a
    sub [hl]                                      ; $4589: $96
    ld a, b                                       ; $458a: $78
    ld a, c                                       ; $458b: $79
    xor c                                         ; $458c: $a9
    xor e                                         ; $458d: $ab
    call $edef                                    ; $458e: $cd $ef $ed
    cp c                                          ; $4591: $b9
    adc b                                         ; $4592: $88
    adc b                                         ; $4593: $88
    ld [hl], a                                    ; $4594: $77
    adc b                                         ; $4595: $88
    ld d, l                                       ; $4596: $55
    ld d, a                                       ; $4597: $57
    ld h, l                                       ; $4598: $65
    ld d, l                                       ; $4599: $55
    ld d, [hl]                                    ; $459a: $56
    halt                                          ; $459b: $76
    ld [hl], a                                    ; $459c: $77
    halt                                          ; $459d: $76
    ld b, e                                       ; $459e: $43
    ld d, a                                       ; $459f: $57
    add a                                         ; $45a0: $87
    ld [hl], a                                    ; $45a1: $77
    ld d, h                                       ; $45a2: $54
    ld b, h                                       ; $45a3: $44
    ld h, l                                       ; $45a4: $65
    ld [hl], a                                    ; $45a5: $77
    ld [hl], a                                    ; $45a6: $77
    ld [hl], a                                    ; $45a7: $77
    adc c                                         ; $45a8: $89
    sbc c                                         ; $45a9: $99
    add a                                         ; $45aa: $87
    ld [hl], a                                    ; $45ab: $77
    halt                                          ; $45ac: $76
    ld d, l                                       ; $45ad: $55
    ld d, l                                       ; $45ae: $55
    ld h, a                                       ; $45af: $67
    add a                                         ; $45b0: $87
    halt                                          ; $45b1: $76
    ld h, [hl]                                    ; $45b2: $66
    ld h, [hl]                                    ; $45b3: $66
    ld d, l                                       ; $45b4: $55
    ld d, l                                       ; $45b5: $55
    ld b, e                                       ; $45b6: $43
    dec [hl]                                      ; $45b7: $35
    ld b, c                                       ; $45b8: $41
    ld [hl+], a                                   ; $45b9: $22
    inc h                                         ; $45ba: $24
    dec [hl]                                      ; $45bb: $35
    ld d, a                                       ; $45bc: $57
    adc b                                         ; $45bd: $88
    ld h, [hl]                                    ; $45be: $66
    adc c                                         ; $45bf: $89
    add [hl]                                      ; $45c0: $86
    ld h, [hl]                                    ; $45c1: $66
    ld [hl], a                                    ; $45c2: $77
    ld l, b                                       ; $45c3: $68
    xor h                                         ; $45c4: $ac
    set 1, h                                      ; $45c5: $cb $cc
    cp e                                          ; $45c7: $bb
    cp e                                          ; $45c8: $bb
    call z, $99bb                                 ; $45c9: $cc $bb $99
    sbc b                                         ; $45cc: $98
    sbc c                                         ; $45cd: $99
    adc b                                         ; $45ce: $88
    adc b                                         ; $45cf: $88
    sbc d                                         ; $45d0: $9a
    xor e                                         ; $45d1: $ab
    cp h                                          ; $45d2: $bc
    res 5, d                                      ; $45d3: $cb $aa
    sbc c                                         ; $45d5: $99
    sbc e                                         ; $45d6: $9b
    xor d                                         ; $45d7: $aa
    cp e                                          ; $45d8: $bb
    sbc c                                         ; $45d9: $99
    adc b                                         ; $45da: $88
    add a                                         ; $45db: $87
    adc c                                         ; $45dc: $89
    sbc b                                         ; $45dd: $98
    adc b                                         ; $45de: $88
    adc b                                         ; $45df: $88
    add a                                         ; $45e0: $87
    adc b                                         ; $45e1: $88
    adc b                                         ; $45e2: $88
    sbc d                                         ; $45e3: $9a
    xor b                                         ; $45e4: $a8
    adc c                                         ; $45e5: $89
    adc c                                         ; $45e6: $89
    sbc c                                         ; $45e7: $99
    adc b                                         ; $45e8: $88
    adc b                                         ; $45e9: $88
    adc d                                         ; $45ea: $8a
    sbc c                                         ; $45eb: $99
    adc b                                         ; $45ec: $88
    adc b                                         ; $45ed: $88
    halt                                          ; $45ee: $76
    ld d, [hl]                                    ; $45ef: $56
    ld d, h                                       ; $45f0: $54
    ld d, l                                       ; $45f1: $55
    ld d, l                                       ; $45f2: $55
    ld b, e                                       ; $45f3: $43
    ld [hl-], a                                   ; $45f4: $32
    inc de                                        ; $45f5: $13
    inc sp                                        ; $45f6: $33
    inc [hl]                                      ; $45f7: $34
    ld b, h                                       ; $45f8: $44
    ld l, b                                       ; $45f9: $68
    adc b                                         ; $45fa: $88
    ld [hl], l                                    ; $45fb: $75
    ld d, h                                       ; $45fc: $54
    ld d, l                                       ; $45fd: $55
    ld h, a                                       ; $45fe: $67
    halt                                          ; $45ff: $76
    ld d, l                                       ; $4600: $55
    ld d, l                                       ; $4601: $55
    inc sp                                        ; $4602: $33
    inc sp                                        ; $4603: $33
    ld a, b                                       ; $4604: $78
    sbc b                                         ; $4605: $98
    sbc c                                         ; $4606: $99
    add a                                         ; $4607: $87
    ld h, l                                       ; $4608: $65
    ld d, h                                       ; $4609: $54
    ld b, l                                       ; $460a: $45
    ld h, l                                       ; $460b: $65
    ld a, d                                       ; $460c: $7a
    xor c                                         ; $460d: $a9
    xor c                                         ; $460e: $a9
    ld h, [hl]                                    ; $460f: $66
    ld b, l                                       ; $4610: $45
    ld h, a                                       ; $4611: $67
    adc h                                         ; $4612: $8c
    db $db                                        ; $4613: $db
    cp c                                          ; $4614: $b9
    sbc c                                         ; $4615: $99
    sbc d                                         ; $4616: $9a
    xor b                                         ; $4617: $a8
    ld a, b                                       ; $4618: $78
    sub a                                         ; $4619: $97
    ld a, b                                       ; $461a: $78
    xor l                                         ; $461b: $ad
    db $ec                                        ; $461c: $ec
    cp d                                          ; $461d: $ba
    sbc b                                         ; $461e: $98
    adc d                                         ; $461f: $8a
    cp e                                          ; $4620: $bb
    cp d                                          ; $4621: $ba
    sbc c                                         ; $4622: $99
    sub a                                         ; $4623: $97
    sbc c                                         ; $4624: $99
    xor e                                         ; $4625: $ab
    ret                                           ; $4626: $c9


    sbc d                                         ; $4627: $9a
    sub a                                         ; $4628: $97
    ld a, c                                       ; $4629: $79
    cp l                                          ; $462a: $bd
    cp d                                          ; $462b: $ba
    xor e                                         ; $462c: $ab
    sbc b                                         ; $462d: $98
    add a                                         ; $462e: $87
    adc b                                         ; $462f: $88
    adc b                                         ; $4630: $88
    sbc b                                         ; $4631: $98
    halt                                          ; $4632: $76
    halt                                          ; $4633: $76
    ld h, a                                       ; $4634: $67
    add a                                         ; $4635: $87
    ld a, b                                       ; $4636: $78
    ld a, b                                       ; $4637: $78
    halt                                          ; $4638: $76
    ld a, b                                       ; $4639: $78
    ld [hl], a                                    ; $463a: $77
    add a                                         ; $463b: $87
    halt                                          ; $463c: $76
    ld h, [hl]                                    ; $463d: $66
    ld d, l                                       ; $463e: $55
    inc [hl]                                      ; $463f: $34
    ld d, [hl]                                    ; $4640: $56
    ld d, [hl]                                    ; $4641: $56
    adc b                                         ; $4642: $88
    ld [hl], a                                    ; $4643: $77
    ld d, l                                       ; $4644: $55
    ld h, [hl]                                    ; $4645: $66
    ld h, h                                       ; $4646: $64
    ld b, l                                       ; $4647: $45
    ld h, [hl]                                    ; $4648: $66
    halt                                          ; $4649: $76
    ld h, a                                       ; $464a: $67
    halt                                          ; $464b: $76
    ld a, b                                       ; $464c: $78
    adc c                                         ; $464d: $89
    ld [hl], l                                    ; $464e: $75
    ld d, [hl]                                    ; $464f: $56
    adc b                                         ; $4650: $88
    ld h, a                                       ; $4651: $67
    adc b                                         ; $4652: $88
    ld [hl], a                                    ; $4653: $77
    ld h, a                                       ; $4654: $67
    adc d                                         ; $4655: $8a
    xor b                                         ; $4656: $a8
    halt                                          ; $4657: $76
    ld h, [hl]                                    ; $4658: $66
    ld d, h                                       ; $4659: $54
    ld d, l                                       ; $465a: $55
    ld h, l                                       ; $465b: $65
    ld d, l                                       ; $465c: $55
    ld h, l                                       ; $465d: $65
    ld h, a                                       ; $465e: $67
    ld a, c                                       ; $465f: $79
    xor d                                         ; $4660: $aa
    call $99ca                                    ; $4661: $cd $ca $99
    and [hl]                                      ; $4664: $a6
    ld a, c                                       ; $4665: $79
    adc b                                         ; $4666: $88
    sbc e                                         ; $4667: $9b
    cp b                                          ; $4668: $b8
    ld h, [hl]                                    ; $4669: $66
    ld [hl], l                                    ; $466a: $75
    ld b, e                                       ; $466b: $43
    ld d, a                                       ; $466c: $57
    xor c                                         ; $466d: $a9
    xor e                                         ; $466e: $ab
    xor c                                         ; $466f: $a9
    add a                                         ; $4670: $87
    halt                                          ; $4671: $76
    ld l, c                                       ; $4672: $69
    xor d                                         ; $4673: $aa
    cp l                                          ; $4674: $bd
    jp z, $a8ab                                   ; $4675: $ca $ab $a8

    adc c                                         ; $4678: $89
    sbc c                                         ; $4679: $99
    add a                                         ; $467a: $87
    ld a, b                                       ; $467b: $78
    sbc c                                         ; $467c: $99
    xor c                                         ; $467d: $a9
    sbc b                                         ; $467e: $98
    adc b                                         ; $467f: $88
    add [hl]                                      ; $4680: $86
    ld d, [hl]                                    ; $4681: $56
    ld d, h                                       ; $4682: $54
    ld b, h                                       ; $4683: $44
    inc sp                                        ; $4684: $33
    ld b, l                                       ; $4685: $45
    ld b, h                                       ; $4686: $44
    ld b, h                                       ; $4687: $44
    ld d, l                                       ; $4688: $55
    ld h, a                                       ; $4689: $67
    ld h, [hl]                                    ; $468a: $66
    ld d, [hl]                                    ; $468b: $56
    adc c                                         ; $468c: $89
    sbc b                                         ; $468d: $98
    halt                                          ; $468e: $76
    ld h, h                                       ; $468f: $64
    ld d, a                                       ; $4690: $57
    sbc c                                         ; $4691: $99
    xor d                                         ; $4692: $aa
    cp c                                          ; $4693: $b9
    adc b                                         ; $4694: $88
    sbc b                                         ; $4695: $98
    ld a, c                                       ; $4696: $79
    sbc b                                         ; $4697: $98
    adc b                                         ; $4698: $88
    adc b                                         ; $4699: $88
    sbc c                                         ; $469a: $99
    adc b                                         ; $469b: $88
    ld [hl], a                                    ; $469c: $77
    ld d, e                                       ; $469d: $53
    dec [hl]                                      ; $469e: $35
    halt                                          ; $469f: $76
    ld b, a                                       ; $46a0: $47
    ld a, b                                       ; $46a1: $78
    sbc d                                         ; $46a2: $9a
    sub a                                         ; $46a3: $97
    add a                                         ; $46a4: $87
    ld h, a                                       ; $46a5: $67
    sbc d                                         ; $46a6: $9a
    sbc d                                         ; $46a7: $9a
    sub a                                         ; $46a8: $97
    ld a, b                                       ; $46a9: $78
    adc c                                         ; $46aa: $89
    adc $ed                                       ; $46ab: $ce $ed
    xor b                                         ; $46ad: $a8
    ld h, a                                       ; $46ae: $67
    adc c                                         ; $46af: $89
    cp e                                          ; $46b0: $bb
    cp e                                          ; $46b1: $bb
    xor d                                         ; $46b2: $aa
    cp c                                          ; $46b3: $b9
    sbc e                                         ; $46b4: $9b
    sbc d                                         ; $46b5: $9a
    add [hl]                                      ; $46b6: $86
    ld b, h                                       ; $46b7: $44
    ld b, h                                       ; $46b8: $44
    ld b, l                                       ; $46b9: $45
    ld [hl+], a                                   ; $46ba: $22
    ld b, a                                       ; $46bb: $47
    ld h, [hl]                                    ; $46bc: $66
    ld h, l                                       ; $46bd: $65
    ld d, a                                       ; $46be: $57
    ld h, a                                       ; $46bf: $67
    ld h, h                                       ; $46c0: $64
    ld d, l                                       ; $46c1: $55
    ld d, a                                       ; $46c2: $57
    ld a, b                                       ; $46c3: $78
    ld h, [hl]                                    ; $46c4: $66
    ld [hl], a                                    ; $46c5: $77
    ld l, b                                       ; $46c6: $68
    ld [hl], l                                    ; $46c7: $75
    ld h, a                                       ; $46c8: $67
    sbc h                                         ; $46c9: $9c
    jp z, $b9aa                                   ; $46ca: $ca $aa $b9

    sbc c                                         ; $46cd: $99
    xor b                                         ; $46ce: $a8
    ld d, [hl]                                    ; $46cf: $56
    ld h, h                                       ; $46d0: $64
    ld b, l                                       ; $46d1: $45
    ld b, l                                       ; $46d2: $45
    ld d, [hl]                                    ; $46d3: $56
    ld d, h                                       ; $46d4: $54
    ld d, a                                       ; $46d5: $57
    adc b                                         ; $46d6: $88
    adc b                                         ; $46d7: $88
    adc b                                         ; $46d8: $88
    adc c                                         ; $46d9: $89
    adc b                                         ; $46da: $88
    add a                                         ; $46db: $87
    ld h, l                                       ; $46dc: $65
    ld b, a                                       ; $46dd: $47
    sub a                                         ; $46de: $97
    ld b, a                                       ; $46df: $47
    sbc b                                         ; $46e0: $98
    sbc e                                         ; $46e1: $9b
    cp d                                          ; $46e2: $ba
    sub a                                         ; $46e3: $97
    sbc d                                         ; $46e4: $9a
    adc c                                         ; $46e5: $89
    xor c                                         ; $46e6: $a9
    sbc c                                         ; $46e7: $99
    xor d                                         ; $46e8: $aa
    sbc d                                         ; $46e9: $9a
    xor d                                         ; $46ea: $aa
    cp e                                          ; $46eb: $bb
    xor d                                         ; $46ec: $aa
    xor d                                         ; $46ed: $aa
    add a                                         ; $46ee: $87
    ld d, h                                       ; $46ef: $54
    ld d, h                                       ; $46f0: $54
    ld d, [hl]                                    ; $46f1: $56
    ld d, [hl]                                    ; $46f2: $56
    ld a, c                                       ; $46f3: $79
    cp d                                          ; $46f4: $ba
    add [hl]                                      ; $46f5: $86
    ld d, h                                       ; $46f6: $54
    ld b, [hl]                                    ; $46f7: $46
    sbc d                                         ; $46f8: $9a
    sub a                                         ; $46f9: $97
    ld d, a                                       ; $46fa: $57
    sbc c                                         ; $46fb: $99
    adc d                                         ; $46fc: $8a
    res 3, d                                      ; $46fd: $cb $9a
    xor c                                         ; $46ff: $a9
    add a                                         ; $4700: $87
    ld h, h                                       ; $4701: $64
    ld [hl], $66                                  ; $4702: $36 $66
    ld h, l                                       ; $4704: $65
    ld h, [hl]                                    ; $4705: $66
    ld d, l                                       ; $4706: $55
    inc sp                                        ; $4707: $33
    ld b, h                                       ; $4708: $44
    ld d, a                                       ; $4709: $57
    add l                                         ; $470a: $85
    ld a, c                                       ; $470b: $79
    xor d                                         ; $470c: $aa
    xor d                                         ; $470d: $aa
    ld [hl], a                                    ; $470e: $77
    adc b                                         ; $470f: $88
    add [hl]                                      ; $4710: $86
    ld d, a                                       ; $4711: $57
    ld a, b                                       ; $4712: $78
    add a                                         ; $4713: $87
    adc c                                         ; $4714: $89
    sbc c                                         ; $4715: $99
    sbc e                                         ; $4716: $9b
    ret                                           ; $4717: $c9


    ld h, [hl]                                    ; $4718: $66
    ld h, a                                       ; $4719: $67
    ld a, b                                       ; $471a: $78
    adc b                                         ; $471b: $88
    xor e                                         ; $471c: $ab
    cp h                                          ; $471d: $bc
    call z, $8898                                 ; $471e: $cc $98 $88
    add a                                         ; $4721: $87
    ld h, h                                       ; $4722: $64
    ld [hl-], a                                   ; $4723: $32
    ld e, b                                       ; $4724: $58
    ld a, c                                       ; $4725: $79
    xor c                                         ; $4726: $a9
    add l                                         ; $4727: $85
    ld d, a                                       ; $4728: $57
    ld b, c                                       ; $4729: $41
    ld de, $4821                                  ; $472a: $11 $21 $48
    xor c                                         ; $472d: $a9
    xor e                                         ; $472e: $ab
    cp d                                          ; $472f: $ba
    xor e                                         ; $4730: $ab
    sub a                                         ; $4731: $97
    ld b, l                                       ; $4732: $45
    ld h, l                                       ; $4733: $65
    ld h, [hl]                                    ; $4734: $66
    ld d, [hl]                                    ; $4735: $56
    ld d, h                                       ; $4736: $54
    ld h, a                                       ; $4737: $67
    adc c                                         ; $4738: $89
    cp l                                          ; $4739: $bd
    call z, $a9ba                                 ; $473a: $cc $ba $a9
    halt                                          ; $473d: $76
    adc d                                         ; $473e: $8a
    sub a                                         ; $473f: $97
    inc [hl]                                      ; $4740: $34
    ld [hl], a                                    ; $4741: $77
    ld h, [hl]                                    ; $4742: $66
    adc d                                         ; $4743: $8a
    cp c                                          ; $4744: $b9
    halt                                          ; $4745: $76
    adc b                                         ; $4746: $88
    ld a, c                                       ; $4747: $79
    sbc b                                         ; $4748: $98
    sbc c                                         ; $4749: $99
    sub a                                         ; $474a: $97
    add a                                         ; $474b: $87
    ld h, a                                       ; $474c: $67
    ld [hl], a                                    ; $474d: $77
    adc d                                         ; $474e: $8a
    sbc c                                         ; $474f: $99
    sbc e                                         ; $4750: $9b
    cp d                                          ; $4751: $ba
    sbc b                                         ; $4752: $98
    ld a, c                                       ; $4753: $79
    sbc c                                         ; $4754: $99
    sbc c                                         ; $4755: $99
    halt                                          ; $4756: $76
    ld h, [hl]                                    ; $4757: $66
    ld d, h                                       ; $4758: $54
    ld b, h                                       ; $4759: $44
    ld h, l                                       ; $475a: $65
    ld d, l                                       ; $475b: $55
    ld h, [hl]                                    ; $475c: $66
    ld a, b                                       ; $475d: $78
    add a                                         ; $475e: $87
    ld d, [hl]                                    ; $475f: $56
    add a                                         ; $4760: $87
    ld a, b                                       ; $4761: $78
    ld [hl], a                                    ; $4762: $77
    ld a, b                                       ; $4763: $78
    sbc b                                         ; $4764: $98
    sub a                                         ; $4765: $97
    ld [hl], a                                    ; $4766: $77
    ld h, h                                       ; $4767: $64
    dec [hl]                                      ; $4768: $35
    ld l, b                                       ; $4769: $68
    xor e                                         ; $476a: $ab
    call z, $a9a9                                 ; $476b: $cc $a9 $a9
    adc b                                         ; $476e: $88
    add a                                         ; $476f: $87
    ld d, h                                       ; $4770: $54
    ld d, a                                       ; $4771: $57
    sbc e                                         ; $4772: $9b
    sub [hl]                                      ; $4773: $96
    ld [hl], a                                    ; $4774: $77
    ld h, [hl]                                    ; $4775: $66
    adc c                                         ; $4776: $89
    xor e                                         ; $4777: $ab
    cp d                                          ; $4778: $ba
    sbc c                                         ; $4779: $99
    xor c                                         ; $477a: $a9
    sbc c                                         ; $477b: $99
    ld a, b                                       ; $477c: $78
    xor d                                         ; $477d: $aa
    xor c                                         ; $477e: $a9
    add a                                         ; $477f: $87
    ld h, [hl]                                    ; $4780: $66
    ld d, l                                       ; $4781: $55
    inc sp                                        ; $4782: $33
    ld b, l                                       ; $4783: $45
    ld h, [hl]                                    ; $4784: $66
    ld e, b                                       ; $4785: $58
    sub a                                         ; $4786: $97
    ld d, a                                       ; $4787: $57
    sbc c                                         ; $4788: $99
    sbc b                                         ; $4789: $98
    adc c                                         ; $478a: $89
    add a                                         ; $478b: $87
    xor c                                         ; $478c: $a9
    ld a, c                                       ; $478d: $79
    xor d                                         ; $478e: $aa
    call Call_011_76b8                            ; $478f: $cd $b8 $76
    ld l, b                                       ; $4792: $68
    add [hl]                                      ; $4793: $86
    ld l, b                                       ; $4794: $68
    sbc c                                         ; $4795: $99
    sbc d                                         ; $4796: $9a
    sub a                                         ; $4797: $97
    adc c                                         ; $4798: $89
    sub a                                         ; $4799: $97
    adc b                                         ; $479a: $88
    ld [hl], l                                    ; $479b: $75
    ld b, h                                       ; $479c: $44
    ld b, a                                       ; $479d: $47
    ld h, a                                       ; $479e: $67
    ld [hl], a                                    ; $479f: $77
    ld d, l                                       ; $47a0: $55
    ld h, l                                       ; $47a1: $65
    ld h, a                                       ; $47a2: $67
    sbc d                                         ; $47a3: $9a
    sbc b                                         ; $47a4: $98
    halt                                          ; $47a5: $76
    ld h, l                                       ; $47a6: $65
    ld d, l                                       ; $47a7: $55
    ld d, [hl]                                    ; $47a8: $56
    ld [hl], a                                    ; $47a9: $77
    ld h, l                                       ; $47aa: $65
    ld d, l                                       ; $47ab: $55
    ld l, c                                       ; $47ac: $69
    sub a                                         ; $47ad: $97
    adc h                                         ; $47ae: $8c
    sub l                                         ; $47af: $95
    jr nz, jr_011_47b3                            ; $47b0: $20 $01

    dec h                                         ; $47b2: $25

jr_011_47b3:
    ld l, b                                       ; $47b3: $68
    call $eecc                                    ; $47b4: $cd $cc $ee
    cp c                                          ; $47b7: $b9
    ld [hl], h                                    ; $47b8: $74
    ld b, e                                       ; $47b9: $43
    ld [hl+], a                                   ; $47ba: $22
    inc h                                         ; $47bb: $24
    ld l, b                                       ; $47bc: $68
    add a                                         ; $47bd: $87
    ld a, b                                       ; $47be: $78
    sbc c                                         ; $47bf: $99
    sbc e                                         ; $47c0: $9b
    jp z, $8698                                   ; $47c1: $ca $98 $86

    ld b, h                                       ; $47c4: $44
    ld d, a                                       ; $47c5: $57
    xor e                                         ; $47c6: $ab
    cp d                                          ; $47c7: $ba
    sbc d                                         ; $47c8: $9a
    cp h                                          ; $47c9: $bc
    sbc $cd                                       ; $47ca: $de $cd
    cp h                                          ; $47cc: $bc
    xor c                                         ; $47cd: $a9
    add a                                         ; $47ce: $87
    ld h, h                                       ; $47cf: $64
    ld b, e                                       ; $47d0: $43
    inc hl                                        ; $47d1: $23
    inc [hl]                                      ; $47d2: $34
    ld h, l                                       ; $47d3: $65
    ld [hl], a                                    ; $47d4: $77
    ld h, a                                       ; $47d5: $67
    ld a, b                                       ; $47d6: $78
    sbc d                                         ; $47d7: $9a
    xor h                                         ; $47d8: $ac
    cp e                                          ; $47d9: $bb
    sub a                                         ; $47da: $97
    ld a, b                                       ; $47db: $78
    ld a, b                                       ; $47dc: $78
    sbc c                                         ; $47dd: $99
    ld [hl], a                                    ; $47de: $77
    adc b                                         ; $47df: $88
    sbc b                                         ; $47e0: $98
    sbc d                                         ; $47e1: $9a
    xor c                                         ; $47e2: $a9
    sbc c                                         ; $47e3: $99
    adc b                                         ; $47e4: $88
    sbc b                                         ; $47e5: $98
    adc b                                         ; $47e6: $88
    adc b                                         ; $47e7: $88
    adc c                                         ; $47e8: $89
    xor e                                         ; $47e9: $ab
    sub a                                         ; $47ea: $97
    halt                                          ; $47eb: $76
    ld d, l                                       ; $47ec: $55
    ld h, a                                       ; $47ed: $67
    adc c                                         ; $47ee: $89
    sbc b                                         ; $47ef: $98
    add a                                         ; $47f0: $87
    ld h, [hl]                                    ; $47f1: $66
    ld d, h                                       ; $47f2: $54
    inc sp                                        ; $47f3: $33
    ld [hl-], a                                   ; $47f4: $32
    ld [hl+], a                                   ; $47f5: $22
    ld b, [hl]                                    ; $47f6: $46
    ld h, a                                       ; $47f7: $67
    ld a, b                                       ; $47f8: $78
    sbc b                                         ; $47f9: $98
    adc b                                         ; $47fa: $88
    xor e                                         ; $47fb: $ab
    sub a                                         ; $47fc: $97
    ld h, h                                       ; $47fd: $64
    dec [hl]                                      ; $47fe: $35
    ld a, b                                       ; $47ff: $78
    xor e                                         ; $4800: $ab
    xor d                                         ; $4801: $aa
    cp d                                          ; $4802: $ba
    sbc c                                         ; $4803: $99
    add [hl]                                      ; $4804: $86
    ld b, h                                       ; $4805: $44
    ld b, l                                       ; $4806: $45
    ld h, a                                       ; $4807: $67
    ld [hl], a                                    ; $4808: $77
    ld h, l                                       ; $4809: $65
    ld h, a                                       ; $480a: $67
    ld b, e                                       ; $480b: $43
    ld h, [hl]                                    ; $480c: $66
    ld [hl], a                                    ; $480d: $77
    sbc d                                         ; $480e: $9a
    xor d                                         ; $480f: $aa
    xor c                                         ; $4810: $a9
    sbc c                                         ; $4811: $99
    sbc c                                         ; $4812: $99
    cp e                                          ; $4813: $bb
    xor c                                         ; $4814: $a9
    add [hl]                                      ; $4815: $86
    adc b                                         ; $4816: $88
    adc b                                         ; $4817: $88
    sbc c                                         ; $4818: $99
    xor e                                         ; $4819: $ab
    cp c                                          ; $481a: $b9
    ld [hl], l                                    ; $481b: $75
    ld h, [hl]                                    ; $481c: $66
    ld a, b                                       ; $481d: $78
    adc c                                         ; $481e: $89
    adc b                                         ; $481f: $88
    ld h, [hl]                                    ; $4820: $66
    ld h, l                                       ; $4821: $65
    ld d, h                                       ; $4822: $54
    ld d, [hl]                                    ; $4823: $56
    ld a, b                                       ; $4824: $78
    sbc b                                         ; $4825: $98
    adc b                                         ; $4826: $88
    sbc c                                         ; $4827: $99
    adc b                                         ; $4828: $88
    add a                                         ; $4829: $87
    ld [hl], a                                    ; $482a: $77
    adc b                                         ; $482b: $88
    sbc c                                         ; $482c: $99
    xor c                                         ; $482d: $a9
    adc b                                         ; $482e: $88
    add a                                         ; $482f: $87
    adc c                                         ; $4830: $89
    sbc c                                         ; $4831: $99
    sbc c                                         ; $4832: $99
    xor c                                         ; $4833: $a9
    add [hl]                                      ; $4834: $86
    ld h, [hl]                                    ; $4835: $66
    ld d, l                                       ; $4836: $55
    ld a, c                                       ; $4837: $79
    sub [hl]                                      ; $4838: $96
    ld b, e                                       ; $4839: $43
    db $10                                        ; $483a: $10
    ld bc, $8a35                                  ; $483b: $01 $35 $8a
    xor e                                         ; $483e: $ab
    xor b                                         ; $483f: $a8
    add a                                         ; $4840: $87
    ld d, h                                       ; $4841: $54
    inc sp                                        ; $4842: $33
    ld d, a                                       ; $4843: $57
    halt                                          ; $4844: $76
    ld h, l                                       ; $4845: $65
    ld h, [hl]                                    ; $4846: $66
    adc b                                         ; $4847: $88
    sbc c                                         ; $4848: $99
    xor d                                         ; $4849: $aa
    sbc b                                         ; $484a: $98
    sbc c                                         ; $484b: $99
    cp e                                          ; $484c: $bb
    xor h                                         ; $484d: $ac
    cp d                                          ; $484e: $ba
    xor d                                         ; $484f: $aa
    xor h                                         ; $4850: $ac
    jp z, $aabb                                   ; $4851: $ca $bb $aa

    xor e                                         ; $4854: $ab
    res 1, b                                      ; $4855: $cb $88
    halt                                          ; $4857: $76
    ld h, l                                       ; $4858: $65
    ld d, [hl]                                    ; $4859: $56
    ld h, a                                       ; $485a: $67
    ld [hl], a                                    ; $485b: $77
    ld [hl], a                                    ; $485c: $77
    ld [hl], a                                    ; $485d: $77
    halt                                          ; $485e: $76
    ld d, [hl]                                    ; $485f: $56
    ld l, b                                       ; $4860: $68
    cp e                                          ; $4861: $bb
    cp l                                          ; $4862: $bd
    db $db                                        ; $4863: $db
    xor d                                         ; $4864: $aa
    xor c                                         ; $4865: $a9
    xor d                                         ; $4866: $aa
    xor c                                         ; $4867: $a9
    xor d                                         ; $4868: $aa
    sub a                                         ; $4869: $97
    ld a, c                                       ; $486a: $79
    cp e                                          ; $486b: $bb
    xor c                                         ; $486c: $a9
    halt                                          ; $486d: $76
    ld d, l                                       ; $486e: $55
    ld b, l                                       ; $486f: $45
    ld h, [hl]                                    ; $4870: $66
    ld h, l                                       ; $4871: $65
    ld h, [hl]                                    ; $4872: $66
    ld h, [hl]                                    ; $4873: $66
    ld d, h                                       ; $4874: $54
    ld b, h                                       ; $4875: $44
    ld d, [hl]                                    ; $4876: $56
    adc b                                         ; $4877: $88
    ld [hl], a                                    ; $4878: $77
    halt                                          ; $4879: $76
    ld h, [hl]                                    ; $487a: $66
    ld h, [hl]                                    ; $487b: $66
    ld h, l                                       ; $487c: $65
    ld d, l                                       ; $487d: $55
    ld d, l                                       ; $487e: $55
    ld h, [hl]                                    ; $487f: $66
    add [hl]                                      ; $4880: $86
    ld a, b                                       ; $4881: $78
    xor d                                         ; $4882: $aa
    sbc c                                         ; $4883: $99
    xor d                                         ; $4884: $aa
    adc c                                         ; $4885: $89
    adc b                                         ; $4886: $88
    add [hl]                                      ; $4887: $86
    halt                                          ; $4888: $76
    ld h, h                                       ; $4889: $64
    ld [hl+], a                                   ; $488a: $22
    ld hl, $0100                                  ; $488b: $21 $00 $01
    inc hl                                        ; $488e: $23
    ld b, l                                       ; $488f: $45
    ld h, a                                       ; $4890: $67
    ld [hl], a                                    ; $4891: $77
    adc c                                         ; $4892: $89
    add a                                         ; $4893: $87
    ld d, l                                       ; $4894: $55
    ld l, b                                       ; $4895: $68
    sbc c                                         ; $4896: $99
    xor h                                         ; $4897: $ac
    cp d                                          ; $4898: $ba
    xor e                                         ; $4899: $ab
    xor d                                         ; $489a: $aa
    add a                                         ; $489b: $87
    adc d                                         ; $489c: $8a
    sbc c                                         ; $489d: $99
    xor e                                         ; $489e: $ab
    cp e                                          ; $489f: $bb
    xor d                                         ; $48a0: $aa
    cp c                                          ; $48a1: $b9
    sbc c                                         ; $48a2: $99
    sbc d                                         ; $48a3: $9a
    cp c                                          ; $48a4: $b9
    sbc c                                         ; $48a5: $99
    cp d                                          ; $48a6: $ba
    xor e                                         ; $48a7: $ab
    res 7, e                                      ; $48a8: $cb $bb
    xor b                                         ; $48aa: $a8
    ld h, l                                       ; $48ab: $65
    ld h, l                                       ; $48ac: $65
    ld b, h                                       ; $48ad: $44
    ld b, [hl]                                    ; $48ae: $46
    sbc c                                         ; $48af: $99
    xor d                                         ; $48b0: $aa
    xor c                                         ; $48b1: $a9
    adc b                                         ; $48b2: $88
    adc b                                         ; $48b3: $88
    adc b                                         ; $48b4: $88
    ld [hl], a                                    ; $48b5: $77
    ld a, b                                       ; $48b6: $78
    sbc b                                         ; $48b7: $98
    adc b                                         ; $48b8: $88
    sbc c                                         ; $48b9: $99
    xor c                                         ; $48ba: $a9
    xor e                                         ; $48bb: $ab
    xor c                                         ; $48bc: $a9
    adc c                                         ; $48bd: $89
    adc b                                         ; $48be: $88
    ld h, [hl]                                    ; $48bf: $66
    add [hl]                                      ; $48c0: $86
    ld h, l                                       ; $48c1: $65
    ld b, h                                       ; $48c2: $44
    ld b, l                                       ; $48c3: $45
    halt                                          ; $48c4: $76
    ld d, l                                       ; $48c5: $55
    ld d, l                                       ; $48c6: $55
    ld h, l                                       ; $48c7: $65
    ld sp, $2300                                  ; $48c8: $31 $00 $23
    ld b, h                                       ; $48cb: $44
    ld [hl-], a                                   ; $48cc: $32
    ld [hl-], a                                   ; $48cd: $32
    inc de                                        ; $48ce: $13
    ld b, e                                       ; $48cf: $43
    inc sp                                        ; $48d0: $33
    ld d, a                                       ; $48d1: $57
    add a                                         ; $48d2: $87
    adc b                                         ; $48d3: $88
    sbc d                                         ; $48d4: $9a
    xor c                                         ; $48d5: $a9
    xor e                                         ; $48d6: $ab
    xor d                                         ; $48d7: $aa
    set 1, d                                      ; $48d8: $cb $ca
    sbc c                                         ; $48da: $99
    xor d                                         ; $48db: $aa
    xor e                                         ; $48dc: $ab
    jp z, $abaa                                   ; $48dd: $ca $aa $ab

    xor c                                         ; $48e0: $a9
    add a                                         ; $48e1: $87
    ld a, b                                       ; $48e2: $78
    sbc e                                         ; $48e3: $9b
    db $dd                                        ; $48e4: $dd
    cp e                                          ; $48e5: $bb
    call z, $bbcb                                 ; $48e6: $cc $cb $bb
    res 5, c                                      ; $48e9: $cb $a9
    adc b                                         ; $48eb: $88
    halt                                          ; $48ec: $76
    ld d, l                                       ; $48ed: $55
    ld b, l                                       ; $48ee: $45
    ld h, a                                       ; $48ef: $67
    sbc d                                         ; $48f0: $9a
    xor c                                         ; $48f1: $a9
    adc b                                         ; $48f2: $88
    ld b, e                                       ; $48f3: $43
    ld b, e                                       ; $48f4: $43
    dec h                                         ; $48f5: $25
    add a                                         ; $48f6: $87
    adc b                                         ; $48f7: $88
    sbc c                                         ; $48f8: $99
    xor d                                         ; $48f9: $aa
    sbc d                                         ; $48fa: $9a
    xor c                                         ; $48fb: $a9
    adc c                                         ; $48fc: $89
    xor d                                         ; $48fd: $aa
    sbc b                                         ; $48fe: $98
    add a                                         ; $48ff: $87
    ld h, [hl]                                    ; $4900: $66
    ld sp, $2211                                  ; $4901: $31 $11 $22
    inc h                                         ; $4904: $24
    ld d, [hl]                                    ; $4905: $56
    ld h, a                                       ; $4906: $67
    sbc e                                         ; $4907: $9b
    res 3, c                                      ; $4908: $cb $99
    xor e                                         ; $490a: $ab
    call $badc                                    ; $490b: $cd $dc $ba
    sbc b                                         ; $490e: $98
    add [hl]                                      ; $490f: $86
    ld h, a                                       ; $4910: $67
    halt                                          ; $4911: $76
    ld [hl-], a                                   ; $4912: $32
    ld [hl-], a                                   ; $4913: $32
    ld [de], a                                    ; $4914: $12
    inc h                                         ; $4915: $24
    ld d, [hl]                                    ; $4916: $56
    ld a, b                                       ; $4917: $78
    xor d                                         ; $4918: $aa
    xor c                                         ; $4919: $a9
    adc b                                         ; $491a: $88
    halt                                          ; $491b: $76
    ld h, l                                       ; $491c: $65
    ld d, a                                       ; $491d: $57
    ld h, [hl]                                    ; $491e: $66
    ld h, [hl]                                    ; $491f: $66
    ld d, h                                       ; $4920: $54
    ld d, a                                       ; $4921: $57
    sub a                                         ; $4922: $97
    ld d, h                                       ; $4923: $54
    ld b, e                                       ; $4924: $43
    ld e, b                                       ; $4925: $58
    sbc h                                         ; $4926: $9c
    rst $38                                       ; $4927: $ff
    db $ed                                        ; $4928: $ed
    or a                                          ; $4929: $b7
    ld a, b                                       ; $492a: $78
    xor d                                         ; $492b: $aa
    res 5, b                                      ; $492c: $cb $a8
    sbc c                                         ; $492e: $99
    adc c                                         ; $492f: $89
    sbc c                                         ; $4930: $99
    ld h, e                                       ; $4931: $63
    ld [hl+], a                                   ; $4932: $22
    ld hl, $5735                                  ; $4933: $21 $35 $57
    halt                                          ; $4936: $76
    inc [hl]                                      ; $4937: $34
    ld [hl-], a                                   ; $4938: $32
    inc h                                         ; $4939: $24
    ld d, h                                       ; $493a: $54
    ld a, c                                       ; $493b: $79
    sbc e                                         ; $493c: $9b
    xor $db                                       ; $493d: $ee $db
    cp c                                          ; $493f: $b9
    add a                                         ; $4940: $87
    adc d                                         ; $4941: $8a
    adc d                                         ; $4942: $8a
    xor d                                         ; $4943: $aa
    xor d                                         ; $4944: $aa
    adc c                                         ; $4945: $89
    sbc c                                         ; $4946: $99
    adc b                                         ; $4947: $88
    add a                                         ; $4948: $87
    add a                                         ; $4949: $87
    ld a, b                                       ; $494a: $78
    sbc c                                         ; $494b: $99
    add a                                         ; $494c: $87
    ld h, l                                       ; $494d: $65
    ld h, l                                       ; $494e: $65
    ld d, l                                       ; $494f: $55
    ld b, l                                       ; $4950: $45
    ld d, l                                       ; $4951: $55
    ld a, b                                       ; $4952: $78
    sbc b                                         ; $4953: $98
    cp h                                          ; $4954: $bc
    xor l                                         ; $4955: $ad
    adc $ce                                       ; $4956: $ce $ce
    call $eddd                                    ; $4958: $cd $dd $ed
    set 1, d                                      ; $495b: $cb $ca
    sbc e                                         ; $495d: $9b
    cp d                                          ; $495e: $ba
    xor c                                         ; $495f: $a9
    add a                                         ; $4960: $87
    ld [hl], a                                    ; $4961: $77
    halt                                          ; $4962: $76
    halt                                          ; $4963: $76
    ld h, a                                       ; $4964: $67
    ld [hl], a                                    ; $4965: $77
    ld [hl], a                                    ; $4966: $77
    ld b, h                                       ; $4967: $44
    ld b, h                                       ; $4968: $44
    ld b, l                                       ; $4969: $45
    ld d, h                                       ; $496a: $54
    ld h, h                                       ; $496b: $64
    ld d, e                                       ; $496c: $53
    ld [hl+], a                                   ; $496d: $22
    inc [hl]                                      ; $496e: $34
    ld d, [hl]                                    ; $496f: $56
    ld b, h                                       ; $4970: $44
    ld [hl+], a                                   ; $4971: $22
    ld [hl+], a                                   ; $4972: $22
    inc [hl]                                      ; $4973: $34
    ld b, h                                       ; $4974: $44
    ld sp, $2223                                  ; $4975: $31 $23 $22
    dec h                                         ; $4978: $25
    ld b, h                                       ; $4979: $44
    ld h, l                                       ; $497a: $65
    ld h, [hl]                                    ; $497b: $66
    adc b                                         ; $497c: $88
    ld h, l                                       ; $497d: $65
    adc b                                         ; $497e: $88
    xor c                                         ; $497f: $a9
    xor d                                         ; $4980: $aa
    res 7, b                                      ; $4981: $cb $b8
    sub a                                         ; $4983: $97
    ld l, b                                       ; $4984: $68
    adc c                                         ; $4985: $89
    sub a                                         ; $4986: $97
    xor d                                         ; $4987: $aa
    sbc c                                         ; $4988: $99
    db $db                                        ; $4989: $db
    sbc e                                         ; $498a: $9b
    res 5, [hl]                                   ; $498b: $cb $ae
    call z, $ccee                                 ; $498d: $cc $ee $cc
    call z, $aaab                                 ; $4990: $cc $ab $aa
    cp l                                          ; $4993: $bd
    db $ed                                        ; $4994: $ed
    sub a                                         ; $4995: $97
    sbc e                                         ; $4996: $9b
    xor c                                         ; $4997: $a9
    xor h                                         ; $4998: $ac
    res 7, d                                      ; $4999: $cb $ba
    sbc c                                         ; $499b: $99
    adc d                                         ; $499c: $8a
    adc d                                         ; $499d: $8a
    xor c                                         ; $499e: $a9
    xor c                                         ; $499f: $a9
    add a                                         ; $49a0: $87
    ld [hl], a                                    ; $49a1: $77
    ld [hl], a                                    ; $49a2: $77
    add a                                         ; $49a3: $87
    ld h, a                                       ; $49a4: $67
    ld d, [hl]                                    ; $49a5: $56
    ld h, l                                       ; $49a6: $65
    halt                                          ; $49a7: $76
    ld h, a                                       ; $49a8: $67
    ld d, d                                       ; $49a9: $52
    ld b, l                                       ; $49aa: $45
    ld h, a                                       ; $49ab: $67
    sbc e                                         ; $49ac: $9b
    xor e                                         ; $49ad: $ab
    call z, $88eb                                 ; $49ae: $cc $eb $88
    ld [hl], l                                    ; $49b1: $75
    inc [hl]                                      ; $49b2: $34
    ld sp, $1010                                  ; $49b3: $31 $10 $10
    inc sp                                        ; $49b6: $33
    inc [hl]                                      ; $49b7: $34
    ld b, a                                       ; $49b8: $47
    ld [hl], l                                    ; $49b9: $75
    halt                                          ; $49ba: $76
    sbc h                                         ; $49bb: $9c
    xor e                                         ; $49bc: $ab
    res 5, c                                      ; $49bd: $cb $a9
    sbc b                                         ; $49bf: $98
    adc b                                         ; $49c0: $88
    halt                                          ; $49c1: $76
    ld d, h                                       ; $49c2: $54
    ld b, e                                       ; $49c3: $43
    inc hl                                        ; $49c4: $23
    ld b, h                                       ; $49c5: $44
    ld d, a                                       ; $49c6: $57
    ld d, [hl]                                    ; $49c7: $56
    ld d, e                                       ; $49c8: $53
    dec [hl]                                      ; $49c9: $35
    ld b, [hl]                                    ; $49ca: $46
    ld a, c                                       ; $49cb: $79
    add a                                         ; $49cc: $87
    ld h, [hl]                                    ; $49cd: $66
    add a                                         ; $49ce: $87
    sub [hl]                                      ; $49cf: $96
    add [hl]                                      ; $49d0: $86
    ld [hl], a                                    ; $49d1: $77
    ld h, [hl]                                    ; $49d2: $66
    ld b, l                                       ; $49d3: $45
    ld d, e                                       ; $49d4: $53
    ld d, h                                       ; $49d5: $54
    ld b, h                                       ; $49d6: $44
    ld h, [hl]                                    ; $49d7: $66
    ld c, c                                       ; $49d8: $49
    xor d                                         ; $49d9: $aa
    ld [hl], l                                    ; $49da: $75
    ld h, [hl]                                    ; $49db: $66
    ld h, a                                       ; $49dc: $67
    sbc b                                         ; $49dd: $98
    sbc b                                         ; $49de: $98
    sbc c                                         ; $49df: $99
    adc c                                         ; $49e0: $89
    ld h, l                                       ; $49e1: $65
    ld b, h                                       ; $49e2: $44
    halt                                          ; $49e3: $76
    xor c                                         ; $49e4: $a9
    jp z, $8adb                                   ; $49e5: $ca $db $8a

    xor d                                         ; $49e8: $aa
    xor b                                         ; $49e9: $a8
    sbc c                                         ; $49ea: $99
    sbc c                                         ; $49eb: $99
    adc b                                         ; $49ec: $88
    adc c                                         ; $49ed: $89
    cp e                                          ; $49ee: $bb
    call c, $eebc                                 ; $49ef: $dc $bc $ee
    rst $38                                       ; $49f2: $ff
    jp c, $caac                                   ; $49f3: $da $ac $ca

    and a                                         ; $49f6: $a7
    sbc c                                         ; $49f7: $99
    xor e                                         ; $49f8: $ab
    sub a                                         ; $49f9: $97
    cp h                                          ; $49fa: $bc
    adc e                                         ; $49fb: $8b
    sbc d                                         ; $49fc: $9a
    ld a, c                                       ; $49fd: $79
    sbc e                                         ; $49fe: $9b
    db $db                                        ; $49ff: $db
    call c, $89bc                                 ; $4a00: $dc $bc $89
    add l                                         ; $4a03: $85
    ld d, l                                       ; $4a04: $55
    inc hl                                        ; $4a05: $23
    ld d, [hl]                                    ; $4a06: $56
    ld a, c                                       ; $4a07: $79
    cp d                                          ; $4a08: $ba
    sbc c                                         ; $4a09: $99
    ld [hl], a                                    ; $4a0a: $77
    ld d, a                                       ; $4a0b: $57
    halt                                          ; $4a0c: $76
    ld a, b                                       ; $4a0d: $78
    ld [hl], a                                    ; $4a0e: $77
    ld [hl], l                                    ; $4a0f: $75
    ld h, [hl]                                    ; $4a10: $66
    ld d, a                                       ; $4a11: $57
    ld [hl], a                                    ; $4a12: $77
    ld [hl], l                                    ; $4a13: $75
    ld d, [hl]                                    ; $4a14: $56
    ld d, [hl]                                    ; $4a15: $56
    ld d, [hl]                                    ; $4a16: $56
    ld h, a                                       ; $4a17: $67
    ld h, a                                       ; $4a18: $67
    ld [hl], a                                    ; $4a19: $77
    sbc b                                         ; $4a1a: $98
    ld d, l                                       ; $4a1b: $55
    ld b, e                                       ; $4a1c: $43
    ld b, l                                       ; $4a1d: $45
    ld a, b                                       ; $4a1e: $78
    add a                                         ; $4a1f: $87
    sbc b                                         ; $4a20: $98
    sub a                                         ; $4a21: $97
    adc d                                         ; $4a22: $8a
    sub a                                         ; $4a23: $97
    ld [hl], a                                    ; $4a24: $77
    add a                                         ; $4a25: $87
    halt                                          ; $4a26: $76
    ld d, h                                       ; $4a27: $54
    inc sp                                        ; $4a28: $33
    jr nz, jr_011_4a4c                            ; $4a29: $20 $21

    inc hl                                        ; $4a2b: $23
    dec [hl]                                      ; $4a2c: $35
    ld a, b                                       ; $4a2d: $78
    sbc d                                         ; $4a2e: $9a
    add a                                         ; $4a2f: $87
    ld h, a                                       ; $4a30: $67
    adc c                                         ; $4a31: $89
    sbc d                                         ; $4a32: $9a
    add l                                         ; $4a33: $85
    ld d, e                                       ; $4a34: $53
    ld b, l                                       ; $4a35: $45
    ld h, [hl]                                    ; $4a36: $66
    ld h, [hl]                                    ; $4a37: $66
    ld l, c                                       ; $4a38: $69
    cp e                                          ; $4a39: $bb
    cp d                                          ; $4a3a: $ba
    add a                                         ; $4a3b: $87
    adc c                                         ; $4a3c: $89
    sbc d                                         ; $4a3d: $9a
    xor e                                         ; $4a3e: $ab
    res 5, h                                      ; $4a3f: $cb $ac
    xor d                                         ; $4a41: $aa
    cp e                                          ; $4a42: $bb
    call z, $aaca                                 ; $4a43: $cc $ca $aa
    adc b                                         ; $4a46: $88
    sbc d                                         ; $4a47: $9a
    sbc b                                         ; $4a48: $98
    sbc c                                         ; $4a49: $99
    ld h, a                                       ; $4a4a: $67
    add [hl]                                      ; $4a4b: $86

jr_011_4a4c:
    ld a, c                                       ; $4a4c: $79
    add a                                         ; $4a4d: $87
    ld [hl], h                                    ; $4a4e: $74
    halt                                          ; $4a4f: $76
    ld h, [hl]                                    ; $4a50: $66
    ld h, a                                       ; $4a51: $67
    xor e                                         ; $4a52: $ab
    rst $28                                       ; $4a53: $ef
    call z, $bbdd                                 ; $4a54: $cc $dd $bb
    add l                                         ; $4a57: $85
    ld d, h                                       ; $4a58: $54
    ld d, [hl]                                    ; $4a59: $56
    ld h, h                                       ; $4a5a: $64
    ld b, [hl]                                    ; $4a5b: $46
    adc b                                         ; $4a5c: $88
    adc c                                         ; $4a5d: $89
    sbc c                                         ; $4a5e: $99
    sbc c                                         ; $4a5f: $99
    add [hl]                                      ; $4a60: $86
    adc c                                         ; $4a61: $89
    adc c                                         ; $4a62: $89
    sub a                                         ; $4a63: $97
    ld [hl], l                                    ; $4a64: $75
    ld [hl], a                                    ; $4a65: $77
    ld h, a                                       ; $4a66: $67
    sbc c                                         ; $4a67: $99
    sbc c                                         ; $4a68: $99
    sbc c                                         ; $4a69: $99
    add a                                         ; $4a6a: $87
    ld h, l                                       ; $4a6b: $65
    ld d, h                                       ; $4a6c: $54
    inc hl                                        ; $4a6d: $23
    ld a, b                                       ; $4a6e: $78
    ld a, b                                       ; $4a6f: $78
    call z, $a5dd                                 ; $4a70: $cc $dd $a5
    ld b, l                                       ; $4a73: $45
    jr nz, jr_011_4a76                            ; $4a74: $20 $00

jr_011_4a76:
    inc hl                                        ; $4a76: $23
    ld h, l                                       ; $4a77: $65
    ld d, [hl]                                    ; $4a78: $56
    ld a, c                                       ; $4a79: $79
    rst $08                                       ; $4a7a: $cf
    rst $28                                       ; $4a7b: $ef
    ret z                                         ; $4a7c: $c8

    ld a, b                                       ; $4a7d: $78
    ld d, h                                       ; $4a7e: $54
    ld b, l                                       ; $4a7f: $45
    ld h, h                                       ; $4a80: $64
    ld d, [hl]                                    ; $4a81: $56
    ld a, c                                       ; $4a82: $79
    halt                                          ; $4a83: $76
    ld [hl], a                                    ; $4a84: $77
    adc c                                         ; $4a85: $89
    sbc b                                         ; $4a86: $98
    xor e                                         ; $4a87: $ab
    xor e                                         ; $4a88: $ab
    cp c                                          ; $4a89: $b9
    and a                                         ; $4a8a: $a7
    ld a, b                                       ; $4a8b: $78
    adc b                                         ; $4a8c: $88
    add a                                         ; $4a8d: $87
    ld h, l                                       ; $4a8e: $65
    halt                                          ; $4a8f: $76
    adc b                                         ; $4a90: $88
    adc c                                         ; $4a91: $89
    halt                                          ; $4a92: $76
    ld d, h                                       ; $4a93: $54
    ld [de], a                                    ; $4a94: $12
    ld bc, $4424                                  ; $4a95: $01 $24 $44
    ld d, a                                       ; $4a98: $57
    adc b                                         ; $4a99: $88
    adc d                                         ; $4a9a: $8a
    call z, $98ca                                 ; $4a9b: $cc $ca $98
    ld h, l                                       ; $4a9e: $65
    inc sp                                        ; $4a9f: $33
    ld d, l                                       ; $4aa0: $55
    ld h, l                                       ; $4aa1: $65
    ld h, l                                       ; $4aa2: $65
    ld a, b                                       ; $4aa3: $78
    sbc b                                         ; $4aa4: $98
    ld a, b                                       ; $4aa5: $78
    sbc b                                         ; $4aa6: $98
    ld [hl], a                                    ; $4aa7: $77
    ld d, [hl]                                    ; $4aa8: $56
    ld [hl], a                                    ; $4aa9: $77
    sbc b                                         ; $4aaa: $98
    adc b                                         ; $4aab: $88
    xor e                                         ; $4aac: $ab
    cp d                                          ; $4aad: $ba
    xor d                                         ; $4aae: $aa
    xor d                                         ; $4aaf: $aa
    cp h                                          ; $4ab0: $bc
    cp c                                          ; $4ab1: $b9
    sub a                                         ; $4ab2: $97
    xor b                                         ; $4ab3: $a8
    ld h, l                                       ; $4ab4: $65
    ld d, a                                       ; $4ab5: $57
    sbc d                                         ; $4ab6: $9a
    sbc c                                         ; $4ab7: $99
    sbc d                                         ; $4ab8: $9a
    adc b                                         ; $4ab9: $88
    ld d, h                                       ; $4aba: $54
    ld d, e                                       ; $4abb: $53
    ld l, b                                       ; $4abc: $68
    jp z, $b7ab                                   ; $4abd: $ca $ab $b7

    adc c                                         ; $4ac0: $89
    cp e                                          ; $4ac1: $bb
    xor d                                         ; $4ac2: $aa
    xor d                                         ; $4ac3: $aa
    xor d                                         ; $4ac4: $aa
    rst $08                                       ; $4ac5: $cf
    call $dbfd                                    ; $4ac6: $cd $fd $db
    cp d                                          ; $4ac9: $ba
    ld [hl], l                                    ; $4aca: $75
    add [hl]                                      ; $4acb: $86
    ld [hl], a                                    ; $4acc: $77
    ld h, a                                       ; $4acd: $67
    sbc d                                         ; $4ace: $9a
    sbc d                                         ; $4acf: $9a
    adc c                                         ; $4ad0: $89
    sbc c                                         ; $4ad1: $99
    add [hl]                                      ; $4ad2: $86
    ld a, b                                       ; $4ad3: $78
    halt                                          ; $4ad4: $76
    halt                                          ; $4ad5: $76
    ld a, c                                       ; $4ad6: $79
    ld d, d                                       ; $4ad7: $52
    ld b, e                                       ; $4ad8: $43
    ld h, e                                       ; $4ad9: $63
    ld b, h                                       ; $4ada: $44
    ld b, d                                       ; $4adb: $42
    ld b, e                                       ; $4adc: $43
    dec [hl]                                      ; $4add: $35
    ld d, h                                       ; $4ade: $54
    ld [hl], l                                    ; $4adf: $75
    ld d, d                                       ; $4ae0: $52
    inc h                                         ; $4ae1: $24
    inc [hl]                                      ; $4ae2: $34
    inc h                                         ; $4ae3: $24
    ld d, [hl]                                    ; $4ae4: $56
    ld h, [hl]                                    ; $4ae5: $66
    ld [hl+], a                                   ; $4ae6: $22
    ld [hl], l                                    ; $4ae7: $75
    ld h, l                                       ; $4ae8: $65
    ld h, [hl]                                    ; $4ae9: $66
    ld a, b                                       ; $4aea: $78
    ld a, b                                       ; $4aeb: $78
    ld a, b                                       ; $4aec: $78
    ld a, b                                       ; $4aed: $78
    ld h, [hl]                                    ; $4aee: $66
    ld l, b                                       ; $4aef: $68
    ld h, [hl]                                    ; $4af0: $66
    sub a                                         ; $4af1: $97
    sub a                                         ; $4af2: $97
    ld d, h                                       ; $4af3: $54
    ld h, a                                       ; $4af4: $67
    ld a, c                                       ; $4af5: $79
    adc d                                         ; $4af6: $8a
    xor c                                         ; $4af7: $a9
    ld [$dcfe], a                                 ; $4af8: $ea $fe $dc
    jp z, $889a                                   ; $4afb: $ca $9a $88

    xor b                                         ; $4afe: $a8
    add a                                         ; $4aff: $87
    adc c                                         ; $4b00: $89
    cp c                                          ; $4b01: $b9
    ld a, d                                       ; $4b02: $7a
    sbc e                                         ; $4b03: $9b
    adc c                                         ; $4b04: $89
    add a                                         ; $4b05: $87
    sub [hl]                                      ; $4b06: $96
    ld a, b                                       ; $4b07: $78
    xor c                                         ; $4b08: $a9
    sbc c                                         ; $4b09: $99
    adc d                                         ; $4b0a: $8a
    sbc e                                         ; $4b0b: $9b
    ret                                           ; $4b0c: $c9


    xor e                                         ; $4b0d: $ab
    xor d                                         ; $4b0e: $aa
    cp h                                          ; $4b0f: $bc
    xor c                                         ; $4b10: $a9
    sbc b                                         ; $4b11: $98
    ld e, b                                       ; $4b12: $58
    ld [hl], a                                    ; $4b13: $77
    sbc h                                         ; $4b14: $9c
    db $eb                                        ; $4b15: $eb
    add a                                         ; $4b16: $87
    ld b, b                                       ; $4b17: $40
    inc hl                                        ; $4b18: $23
    ld d, a                                       ; $4b19: $57
    adc c                                         ; $4b1a: $89
    ld h, l                                       ; $4b1b: $65
    ld b, d                                       ; $4b1c: $42
    inc de                                        ; $4b1d: $13
    inc h                                         ; $4b1e: $24
    ld d, l                                       ; $4b1f: $55
    ld e, c                                       ; $4b20: $59
    ld d, [hl]                                    ; $4b21: $56
    ld h, [hl]                                    ; $4b22: $66
    ld h, [hl]                                    ; $4b23: $66
    ld b, l                                       ; $4b24: $45
    ld a, b                                       ; $4b25: $78
    adc c                                         ; $4b26: $89
    sbc b                                         ; $4b27: $98
    ld [hl], a                                    ; $4b28: $77
    add a                                         ; $4b29: $87
    ld d, l                                       ; $4b2a: $55
    ld d, a                                       ; $4b2b: $57
    ld [hl], a                                    ; $4b2c: $77
    adc c                                         ; $4b2d: $89
    sbc c                                         ; $4b2e: $99
    xor e                                         ; $4b2f: $ab
    sbc d                                         ; $4b30: $9a
    ld [hl], l                                    ; $4b31: $75
    ld d, h                                       ; $4b32: $54
    ld b, [hl]                                    ; $4b33: $46
    ld d, [hl]                                    ; $4b34: $56
    inc sp                                        ; $4b35: $33
    inc [hl]                                      ; $4b36: $34
    ld [bc], a                                    ; $4b37: $02
    ld b, e                                       ; $4b38: $43
    ld d, [hl]                                    ; $4b39: $56
    ld l, c                                       ; $4b3a: $69
    adc e                                         ; $4b3b: $8b
    xor c                                         ; $4b3c: $a9
    cp h                                          ; $4b3d: $bc
    cp d                                          ; $4b3e: $ba
    sbc d                                         ; $4b3f: $9a
    xor d                                         ; $4b40: $aa
    xor e                                         ; $4b41: $ab
    cp h                                          ; $4b42: $bc
    call z, $8696                                 ; $4b43: $cc $96 $86
    ld a, d                                       ; $4b46: $7a
    ld [hl], a                                    ; $4b47: $77
    add [hl]                                      ; $4b48: $86
    add a                                         ; $4b49: $87
    ld h, l                                       ; $4b4a: $65
    ld e, b                                       ; $4b4b: $58
    ld h, [hl]                                    ; $4b4c: $66
    adc c                                         ; $4b4d: $89
    db $db                                        ; $4b4e: $db
    cp d                                          ; $4b4f: $ba
    xor e                                         ; $4b50: $ab
    xor e                                         ; $4b51: $ab
    call z, $c9ab                                 ; $4b52: $cc $ab $c9
    xor e                                         ; $4b55: $ab
    cp b                                          ; $4b56: $b8
    adc c                                         ; $4b57: $89
    sbc d                                         ; $4b58: $9a
    adc b                                         ; $4b59: $88
    ld d, l                                       ; $4b5a: $55
    ld d, [hl]                                    ; $4b5b: $56
    ld a, d                                       ; $4b5c: $7a
    xor e                                         ; $4b5d: $ab
    jp z, Jump_011_6487                           ; $4b5e: $ca $87 $64

    ld d, [hl]                                    ; $4b61: $56
    ld h, a                                       ; $4b62: $67
    ld d, l                                       ; $4b63: $55
    ld h, [hl]                                    ; $4b64: $66
    add a                                         ; $4b65: $87
    adc c                                         ; $4b66: $89
    xor h                                         ; $4b67: $ac
    call $dadd                                    ; $4b68: $cd $dd $da
    add [hl]                                      ; $4b6b: $86
    ld h, h                                       ; $4b6c: $64
    ld b, a                                       ; $4b6d: $47
    adc e                                         ; $4b6e: $8b
    adc d                                         ; $4b6f: $8a
    add h                                         ; $4b70: $84
    ld [bc], a                                    ; $4b71: $02
    ld de, $6536                                  ; $4b72: $11 $36 $65
    xor c                                         ; $4b75: $a9
    cp h                                          ; $4b76: $bc
    sbc e                                         ; $4b77: $9b
    xor h                                         ; $4b78: $ac
    xor d                                         ; $4b79: $aa
    sbc c                                         ; $4b7a: $99
    xor c                                         ; $4b7b: $a9
    halt                                          ; $4b7c: $76
    ld d, h                                       ; $4b7d: $54
    ld d, [hl]                                    ; $4b7e: $56
    ld e, b                                       ; $4b7f: $58
    add l                                         ; $4b80: $85
    ld e, b                                       ; $4b81: $58
    adc e                                         ; $4b82: $8b
    xor b                                         ; $4b83: $a8
    add [hl]                                      ; $4b84: $86
    ld h, l                                       ; $4b85: $65
    ld [hl], a                                    ; $4b86: $77
    ld b, [hl]                                    ; $4b87: $46
    ld [hl], l                                    ; $4b88: $75
    ld h, e                                       ; $4b89: $63
    ld [hl-], a                                   ; $4b8a: $32
    ld [hl+], a                                   ; $4b8b: $22
    inc h                                         ; $4b8c: $24
    ld h, a                                       ; $4b8d: $67
    ld d, a                                       ; $4b8e: $57
    inc [hl]                                      ; $4b8f: $34
    ld [hl-], a                                   ; $4b90: $32
    ld [hl+], a                                   ; $4b91: $22
    ld b, h                                       ; $4b92: $44
    ld d, l                                       ; $4b93: $55
    ld d, [hl]                                    ; $4b94: $56
    ld d, l                                       ; $4b95: $55
    ld l, b                                       ; $4b96: $68
    sbc b                                         ; $4b97: $98
    and a                                         ; $4b98: $a7
    adc c                                         ; $4b99: $89
    cp [hl]                                       ; $4b9a: $be
    rst $38                                       ; $4b9b: $ff
    rst $18                                       ; $4b9c: $df
    cp c                                          ; $4b9d: $b9
    ld a, b                                       ; $4b9e: $78
    ld d, l                                       ; $4b9f: $55
    inc [hl]                                      ; $4ba0: $34
    ld [hl], $57                                  ; $4ba1: $36 $57
    sbc c                                         ; $4ba3: $99
    xor c                                         ; $4ba4: $a9
    sbc c                                         ; $4ba5: $99
    sbc b                                         ; $4ba6: $98
    adc b                                         ; $4ba7: $88
    ld h, a                                       ; $4ba8: $67
    add a                                         ; $4ba9: $87
    adc b                                         ; $4baa: $88
    sub a                                         ; $4bab: $97
    ld h, [hl]                                    ; $4bac: $66
    add h                                         ; $4bad: $84
    inc sp                                        ; $4bae: $33
    dec [hl]                                      ; $4baf: $35
    adc c                                         ; $4bb0: $89
    db $ed                                        ; $4bb1: $ed
    db $dd                                        ; $4bb2: $dd
    xor c                                         ; $4bb3: $a9
    sbc d                                         ; $4bb4: $9a
    xor h                                         ; $4bb5: $ac
    cp e                                          ; $4bb6: $bb
    ld [hl], l                                    ; $4bb7: $75
    adc c                                         ; $4bb8: $89
    and [hl]                                      ; $4bb9: $a6
    ld b, e                                       ; $4bba: $43
    ld h, l                                       ; $4bbb: $65
    ld a, c                                       ; $4bbc: $79
    adc b                                         ; $4bbd: $88
    sbc e                                         ; $4bbe: $9b
    rst $18                                       ; $4bbf: $df
    db $ed                                        ; $4bc0: $ed
    call c, $c8eb                                 ; $4bc1: $dc $eb $c8
    sub l                                         ; $4bc4: $95
    ld h, [hl]                                    ; $4bc5: $66
    sbc d                                         ; $4bc6: $9a
    adc b                                         ; $4bc7: $88
    ld h, l                                       ; $4bc8: $65
    ld h, a                                       ; $4bc9: $67
    halt                                          ; $4bca: $76
    ld a, b                                       ; $4bcb: $78
    adc d                                         ; $4bcc: $8a
    xor c                                         ; $4bcd: $a9
    ld [hl], l                                    ; $4bce: $75
    ld b, h                                       ; $4bcf: $44
    ld d, e                                       ; $4bd0: $53
    ld b, [hl]                                    ; $4bd1: $46
    ld l, b                                       ; $4bd2: $68
    add [hl]                                      ; $4bd3: $86
    ld d, l                                       ; $4bd4: $55
    ld d, e                                       ; $4bd5: $53
    ld d, l                                       ; $4bd6: $55
    ld h, l                                       ; $4bd7: $65
    ld d, h                                       ; $4bd8: $54
    inc sp                                        ; $4bd9: $33
    dec [hl]                                      ; $4bda: $35
    ld d, h                                       ; $4bdb: $54
    ld b, [hl]                                    ; $4bdc: $46
    ld d, l                                       ; $4bdd: $55
    sbc b                                         ; $4bde: $98
    xor d                                         ; $4bdf: $aa
    sub a                                         ; $4be0: $97
    and a                                         ; $4be1: $a7
    ld l, c                                       ; $4be2: $69
    cp e                                          ; $4be3: $bb
    xor c                                         ; $4be4: $a9
    cp d                                          ; $4be5: $ba
    sbc d                                         ; $4be6: $9a
    xor d                                         ; $4be7: $aa
    xor b                                         ; $4be8: $a8
    ld h, [hl]                                    ; $4be9: $66
    ld h, a                                       ; $4bea: $67
    ld h, a                                       ; $4beb: $67
    sbc e                                         ; $4bec: $9b
    xor c                                         ; $4bed: $a9
    xor e                                         ; $4bee: $ab
    cp h                                          ; $4bef: $bc
    xor d                                         ; $4bf0: $aa
    ld h, [hl]                                    ; $4bf1: $66
    ld h, a                                       ; $4bf2: $67
    ld d, a                                       ; $4bf3: $57
    ld h, [hl]                                    ; $4bf4: $66
    ld d, h                                       ; $4bf5: $54
    ld d, l                                       ; $4bf6: $55
    ld c, b                                       ; $4bf7: $48
    xor e                                         ; $4bf8: $ab
    add h                                         ; $4bf9: $84
    jr nz, jr_011_4c54                            ; $4bfa: $20 $58

    xor d                                         ; $4bfc: $aa
    cp [hl]                                       ; $4bfd: $be
    xor h                                         ; $4bfe: $ac
    db $ed                                        ; $4bff: $ed
    jp c, Jump_011_4366                           ; $4c00: $da $66 $43

    inc h                                         ; $4c03: $24
    inc [hl]                                      ; $4c04: $34
    ld h, e                                       ; $4c05: $63
    ld d, l                                       ; $4c06: $55
    ld h, l                                       ; $4c07: $65
    ld b, h                                       ; $4c08: $44
    ld [hl-], a                                   ; $4c09: $32
    inc sp                                        ; $4c0a: $33
    ld c, b                                       ; $4c0b: $48
    add [hl]                                      ; $4c0c: $86
    ld b, l                                       ; $4c0d: $45
    ld b, d                                       ; $4c0e: $42
    dec [hl]                                      ; $4c0f: $35
    adc c                                         ; $4c10: $89
    sbc c                                         ; $4c11: $99
    sbc c                                         ; $4c12: $99
    sub [hl]                                      ; $4c13: $96
    ld a, e                                       ; $4c14: $7b
    xor d                                         ; $4c15: $aa
    xor h                                         ; $4c16: $ac
    xor c                                         ; $4c17: $a9
    sub a                                         ; $4c18: $97
    adc c                                         ; $4c19: $89
    xor d                                         ; $4c1a: $aa
    rst $28                                       ; $4c1b: $ef
    call c, $cbcb                                 ; $4c1c: $dc $cb $cb
    rst $00                                       ; $4c1f: $c7
    ld h, l                                       ; $4c20: $65
    ld b, e                                       ; $4c21: $43
    inc [hl]                                      ; $4c22: $34
    ld e, b                                       ; $4c23: $58
    add a                                         ; $4c24: $87
    ld a, b                                       ; $4c25: $78
    sbc b                                         ; $4c26: $98
    sbc h                                         ; $4c27: $9c
    xor h                                         ; $4c28: $ac
    cp e                                          ; $4c29: $bb
    call c, $bdea                                 ; $4c2a: $dc $ea $bd
    cp b                                          ; $4c2d: $b8
    adc b                                         ; $4c2e: $88
    adc b                                         ; $4c2f: $88
    ld h, [hl]                                    ; $4c30: $66
    ld b, h                                       ; $4c31: $44
    ld d, l                                       ; $4c32: $55
    ld d, l                                       ; $4c33: $55
    ld d, a                                       ; $4c34: $57
    ld a, b                                       ; $4c35: $78
    adc b                                         ; $4c36: $88
    call z, $cbaa                                 ; $4c37: $cc $aa $cb
    sbc c                                         ; $4c3a: $99
    ld h, a                                       ; $4c3b: $67
    ld h, a                                       ; $4c3c: $67
    halt                                          ; $4c3d: $76
    ld h, a                                       ; $4c3e: $67
    ld h, [hl]                                    ; $4c3f: $66
    ld h, l                                       ; $4c40: $65
    ld b, h                                       ; $4c41: $44
    inc hl                                        ; $4c42: $23
    ld sp, $3610                                  ; $4c43: $31 $10 $36
    ld b, h                                       ; $4c46: $44
    adc d                                         ; $4c47: $8a
    add l                                         ; $4c48: $85
    ld h, h                                       ; $4c49: $64
    ld [hl], a                                    ; $4c4a: $77
    ld d, a                                       ; $4c4b: $57
    ld [hl], h                                    ; $4c4c: $74
    ld d, l                                       ; $4c4d: $55
    ld d, l                                       ; $4c4e: $55
    ld d, h                                       ; $4c4f: $54
    ld d, h                                       ; $4c50: $54
    ld h, h                                       ; $4c51: $64
    halt                                          ; $4c52: $76
    adc e                                         ; $4c53: $8b

jr_011_4c54:
    adc $cb                                       ; $4c54: $ce $cb
    res 7, d                                      ; $4c56: $cb $ba
    adc c                                         ; $4c58: $89
    halt                                          ; $4c59: $76
    ld l, d                                       ; $4c5a: $6a
    call c, $bbdd                                 ; $4c5b: $dc $dd $bb
    adc e                                         ; $4c5e: $8b
    ld d, e                                       ; $4c5f: $53
    ld d, e                                       ; $4c60: $53
    inc h                                         ; $4c61: $24
    dec [hl]                                      ; $4c62: $35
    ld l, b                                       ; $4c63: $68
    adc b                                         ; $4c64: $88
    adc b                                         ; $4c65: $88
    xor l                                         ; $4c66: $ad
    db $db                                        ; $4c67: $db
    adc b                                         ; $4c68: $88
    adc c                                         ; $4c69: $89
    sbc d                                         ; $4c6a: $9a
    cp e                                          ; $4c6b: $bb
    cp d                                          ; $4c6c: $ba
    adc d                                         ; $4c6d: $8a
    cp c                                          ; $4c6e: $b9
    xor e                                         ; $4c6f: $ab
    sbc e                                         ; $4c70: $9b
    xor h                                         ; $4c71: $ac
    cp h                                          ; $4c72: $bc
    cp c                                          ; $4c73: $b9
    add [hl]                                      ; $4c74: $86
    ld [hl], a                                    ; $4c75: $77
    ld b, e                                       ; $4c76: $43
    ld de, $4335                                  ; $4c77: $11 $35 $43
    dec h                                         ; $4c7a: $25
    ld c, b                                       ; $4c7b: $48
    ld b, e                                       ; $4c7c: $43
    sbc b                                         ; $4c7d: $98
    halt                                          ; $4c7e: $76
    ld d, a                                       ; $4c7f: $57
    xor b                                         ; $4c80: $a8
    xor b                                         ; $4c81: $a8
    cp e                                          ; $4c82: $bb
    xor c                                         ; $4c83: $a9
    sbc e                                         ; $4c84: $9b
    sbc d                                         ; $4c85: $9a
    sbc c                                         ; $4c86: $99
    or a                                          ; $4c87: $b7
    sbc d                                         ; $4c88: $9a
    ld [hl], l                                    ; $4c89: $75
    ld h, l                                       ; $4c8a: $65
    inc sp                                        ; $4c8b: $33
    ld b, l                                       ; $4c8c: $45
    ld a, b                                       ; $4c8d: $78
    cp h                                          ; $4c8e: $bc
    call z, $5686                                 ; $4c8f: $cc $86 $56
    ld h, l                                       ; $4c92: $65
    ld b, l                                       ; $4c93: $45
    ld l, d                                       ; $4c94: $6a
    sbc e                                         ; $4c95: $9b
    sbc e                                         ; $4c96: $9b
    xor e                                         ; $4c97: $ab
    cp b                                          ; $4c98: $b8
    halt                                          ; $4c99: $76
    ld a, c                                       ; $4c9a: $79
    xor e                                         ; $4c9b: $ab
    sbc e                                         ; $4c9c: $9b
    rst $00                                       ; $4c9d: $c7
    ld [hl], l                                    ; $4c9e: $75
    ld h, a                                       ; $4c9f: $67
    ld d, a                                       ; $4ca0: $57
    adc c                                         ; $4ca1: $89
    sbc e                                         ; $4ca2: $9b
    add [hl]                                      ; $4ca3: $86
    sub [hl]                                      ; $4ca4: $96
    ld h, l                                       ; $4ca5: $65
    ld d, l                                       ; $4ca6: $55
    ld b, e                                       ; $4ca7: $43
    inc sp                                        ; $4ca8: $33
    ld d, d                                       ; $4ca9: $52
    ld d, h                                       ; $4caa: $54
    ld b, e                                       ; $4cab: $43
    ld b, e                                       ; $4cac: $43
    ld h, e                                       ; $4cad: $63
    ld d, l                                       ; $4cae: $55
    ld d, l                                       ; $4caf: $55
    add [hl]                                      ; $4cb0: $86
    ld b, h                                       ; $4cb1: $44
    ld d, a                                       ; $4cb2: $57
    add a                                         ; $4cb3: $87
    ld d, [hl]                                    ; $4cb4: $56
    adc b                                         ; $4cb5: $88
    ld a, c                                       ; $4cb6: $79
    sbc b                                         ; $4cb7: $98
    ld a, b                                       ; $4cb8: $78
    ld d, [hl]                                    ; $4cb9: $56
    ld h, a                                       ; $4cba: $67
    ld h, a                                       ; $4cbb: $67
    adc b                                         ; $4cbc: $88
    ld h, l                                       ; $4cbd: $65
    ld e, b                                       ; $4cbe: $58
    halt                                          ; $4cbf: $76
    ld h, [hl]                                    ; $4cc0: $66
    ld b, h                                       ; $4cc1: $44
    ld d, l                                       ; $4cc2: $55
    ld d, [hl]                                    ; $4cc3: $56
    halt                                          ; $4cc4: $76
    adc d                                         ; $4cc5: $8a
    sbc c                                         ; $4cc6: $99
    adc c                                         ; $4cc7: $89
    xor c                                         ; $4cc8: $a9
    ret                                           ; $4cc9: $c9


    adc c                                         ; $4cca: $89
    sbc d                                         ; $4ccb: $9a
    adc c                                         ; $4ccc: $89
    ld [hl], h                                    ; $4ccd: $74
    ld d, l                                       ; $4cce: $55
    halt                                          ; $4ccf: $76
    ld d, l                                       ; $4cd0: $55
    halt                                          ; $4cd1: $76
    adc c                                         ; $4cd2: $89
    sbc d                                         ; $4cd3: $9a
    sbc b                                         ; $4cd4: $98
    xor b                                         ; $4cd5: $a8
    ld [hl], l                                    ; $4cd6: $75
    ld h, a                                       ; $4cd7: $67
    ld a, c                                       ; $4cd8: $79
    xor e                                         ; $4cd9: $ab
    set 3, l                                      ; $4cda: $cb $dd
    db $dd                                        ; $4cdc: $dd
    jp c, $bcbc                                   ; $4cdd: $da $bc $bc

    call $feef                                    ; $4ce0: $cd $ef $fe
    db $ed                                        ; $4ce3: $ed
    sbc d                                         ; $4ce4: $9a
    ld d, [hl]                                    ; $4ce5: $56
    ld d, [hl]                                    ; $4ce6: $56
    ld [hl], a                                    ; $4ce7: $77
    sbc c                                         ; $4ce8: $99
    jp z, $9aab                                   ; $4ce9: $ca $ab $9a

    sub a                                         ; $4cec: $97
    add a                                         ; $4ced: $87
    sbc d                                         ; $4cee: $9a
    cp e                                          ; $4cef: $bb
    cp c                                          ; $4cf0: $b9
    adc b                                         ; $4cf1: $88
    sub a                                         ; $4cf2: $97
    ld a, c                                       ; $4cf3: $79
    adc d                                         ; $4cf4: $8a
    sub a                                         ; $4cf5: $97
    ld [hl], e                                    ; $4cf6: $73
    ld b, [hl]                                    ; $4cf7: $46
    ld a, b                                       ; $4cf8: $78
    adc b                                         ; $4cf9: $88
    ld a, c                                       ; $4cfa: $79
    ld a, b                                       ; $4cfb: $78
    adc c                                         ; $4cfc: $89
    adc c                                         ; $4cfd: $89
    ld h, [hl]                                    ; $4cfe: $66
    ld d, h                                       ; $4cff: $54
    ld b, e                                       ; $4d00: $43
    inc [hl]                                      ; $4d01: $34
    ld d, h                                       ; $4d02: $54
    ld h, l                                       ; $4d03: $65
    ld h, h                                       ; $4d04: $64
    ld d, l                                       ; $4d05: $55
    ld d, [hl]                                    ; $4d06: $56
    ld a, b                                       ; $4d07: $78
    add [hl]                                      ; $4d08: $86
    ld [hl], a                                    ; $4d09: $77
    adc c                                         ; $4d0a: $89
    sbc b                                         ; $4d0b: $98
    ld [hl], a                                    ; $4d0c: $77
    ld a, c                                       ; $4d0d: $79
    ld [hl], a                                    ; $4d0e: $77
    ld d, l                                       ; $4d0f: $55
    ld h, [hl]                                    ; $4d10: $66
    ld [hl], a                                    ; $4d11: $77
    add [hl]                                      ; $4d12: $86
    ld b, h                                       ; $4d13: $44
    ld b, e                                       ; $4d14: $43
    jr nz, jr_011_4d18                            ; $4d15: $20 $01

    inc hl                                        ; $4d17: $23

jr_011_4d18:
    ld b, h                                       ; $4d18: $44
    ld sp, $0131                                  ; $4d19: $31 $31 $01
    inc [hl]                                      ; $4d1c: $34
    ld b, h                                       ; $4d1d: $44
    ld b, a                                       ; $4d1e: $47
    adc c                                         ; $4d1f: $89
    add a                                         ; $4d20: $87
    ld a, b                                       ; $4d21: $78
    ld [hl], a                                    ; $4d22: $77
    sbc b                                         ; $4d23: $98
    sbc c                                         ; $4d24: $99
    xor e                                         ; $4d25: $ab
    call z, $a9cb                                 ; $4d26: $cc $cb $a9
    ld a, c                                       ; $4d29: $79
    ld [hl], a                                    ; $4d2a: $77
    sbc c                                         ; $4d2b: $99
    adc b                                         ; $4d2c: $88
    ld h, [hl]                                    ; $4d2d: $66
    ld d, [hl]                                    ; $4d2e: $56
    ld h, [hl]                                    ; $4d2f: $66
    add a                                         ; $4d30: $87
    ld [hl], a                                    ; $4d31: $77
    ld [hl], a                                    ; $4d32: $77
    adc d                                         ; $4d33: $8a
    ld a, b                                       ; $4d34: $78
    adc b                                         ; $4d35: $88
    adc b                                         ; $4d36: $88
    sbc b                                         ; $4d37: $98
    sbc e                                         ; $4d38: $9b
    xor h                                         ; $4d39: $ac
    db $eb                                        ; $4d3a: $eb
    cp d                                          ; $4d3b: $ba
    cp h                                          ; $4d3c: $bc
    xor d                                         ; $4d3d: $aa
    xor b                                         ; $4d3e: $a8
    cp c                                          ; $4d3f: $b9
    cp h                                          ; $4d40: $bc
    cp d                                          ; $4d41: $ba
    xor e                                         ; $4d42: $ab
    xor c                                         ; $4d43: $a9
    sbc b                                         ; $4d44: $98
    sbc d                                         ; $4d45: $9a
    sbc e                                         ; $4d46: $9b
    call c, $deee                                 ; $4d47: $dc $ee $de
    jp z, $a9a9                                   ; $4d4a: $ca $a9 $a9

    xor h                                         ; $4d4d: $ac
    adc $cb                                       ; $4d4e: $ce $cb
    sub l                                         ; $4d50: $95
    ld b, a                                       ; $4d51: $47
    ld b, [hl]                                    ; $4d52: $46
    ld d, l                                       ; $4d53: $55
    ld b, e                                       ; $4d54: $43
    inc sp                                        ; $4d55: $33
    inc hl                                        ; $4d56: $23
    ld d, h                                       ; $4d57: $54
    inc sp                                        ; $4d58: $33
    inc sp                                        ; $4d59: $33
    inc sp                                        ; $4d5a: $33
    ld b, l                                       ; $4d5b: $45
    ld d, l                                       ; $4d5c: $55
    ld h, a                                       ; $4d5d: $67
    adc b                                         ; $4d5e: $88
    ld h, a                                       ; $4d5f: $67
    add a                                         ; $4d60: $87
    adc b                                         ; $4d61: $88
    call z, $cbde                                 ; $4d62: $cc $de $cb
    xor e                                         ; $4d65: $ab
    adc c                                         ; $4d66: $89
    adc c                                         ; $4d67: $89
    sbc c                                         ; $4d68: $99
    xor b                                         ; $4d69: $a8
    xor e                                         ; $4d6a: $ab
    sub [hl]                                      ; $4d6b: $96
    ld h, [hl]                                    ; $4d6c: $66
    halt                                          ; $4d6d: $76
    ld d, h                                       ; $4d6e: $54
    ld h, [hl]                                    ; $4d6f: $66
    ld d, e                                       ; $4d70: $53
    ld [hl-], a                                   ; $4d71: $32
    ld hl, $1011                                  ; $4d72: $21 $11 $10
    ld [hl+], a                                   ; $4d75: $22
    ld b, [hl]                                    ; $4d76: $46
    adc d                                         ; $4d77: $8a
    cp e                                          ; $4d78: $bb
    cp e                                          ; $4d79: $bb
    sbc $ec                                       ; $4d7a: $de $ec
    cp b                                          ; $4d7c: $b8
    ld [hl], h                                    ; $4d7d: $74
    ld b, c                                       ; $4d7e: $41
    ld hl, $1224                                  ; $4d7f: $21 $24 $12
    ld b, d                                       ; $4d82: $42
    inc h                                         ; $4d83: $24
    ld h, [hl]                                    ; $4d84: $66
    ld h, a                                       ; $4d85: $67
    sbc d                                         ; $4d86: $9a
    sbc c                                         ; $4d87: $99
    adc b                                         ; $4d88: $88
    and a                                         ; $4d89: $a7
    sub a                                         ; $4d8a: $97
    halt                                          ; $4d8b: $76
    ld d, a                                       ; $4d8c: $57
    ld d, l                                       ; $4d8d: $55
    ld [hl], a                                    ; $4d8e: $77
    xor e                                         ; $4d8f: $ab
    sbc e                                         ; $4d90: $9b
    xor e                                         ; $4d91: $ab
    sbc b                                         ; $4d92: $98
    adc b                                         ; $4d93: $88
    ld h, h                                       ; $4d94: $64
    ld b, h                                       ; $4d95: $44
    ld d, d                                       ; $4d96: $52
    inc sp                                        ; $4d97: $33
    ld b, h                                       ; $4d98: $44
    ld [hl-], a                                   ; $4d99: $32
    inc sp                                        ; $4d9a: $33
    ld d, a                                       ; $4d9b: $57
    xor d                                         ; $4d9c: $aa
    cp d                                          ; $4d9d: $ba
    cp l                                          ; $4d9e: $bd
    call c, $9bac                                 ; $4d9f: $dc $ac $9b
    res 7, e                                      ; $4da2: $cb $bb
    cp d                                          ; $4da4: $ba
    adc d                                         ; $4da5: $8a
    ld [hl], a                                    ; $4da6: $77
    halt                                          ; $4da7: $76
    ld b, e                                       ; $4da8: $43
    ld b, a                                       ; $4da9: $47
    sbc c                                         ; $4daa: $99
    ld a, b                                       ; $4dab: $78
    sbc d                                         ; $4dac: $9a
    sbc c                                         ; $4dad: $99
    sbc c                                         ; $4dae: $99
    xor d                                         ; $4daf: $aa
    sbc b                                         ; $4db0: $98
    halt                                          ; $4db1: $76
    ld h, a                                       ; $4db2: $67
    ld a, b                                       ; $4db3: $78
    adc b                                         ; $4db4: $88
    sbc d                                         ; $4db5: $9a
    sbc c                                         ; $4db6: $99
    sub a                                         ; $4db7: $97
    ld d, [hl]                                    ; $4db8: $56
    ld b, [hl]                                    ; $4db9: $46
    ld d, e                                       ; $4dba: $53
    ld h, a                                       ; $4dbb: $67
    xor d                                         ; $4dbc: $aa
    call $aada                                    ; $4dbd: $cd $da $aa
    xor e                                         ; $4dc0: $ab
    xor b                                         ; $4dc1: $a8
    adc b                                         ; $4dc2: $88
    sbc c                                         ; $4dc3: $99
    xor d                                         ; $4dc4: $aa
    cp h                                          ; $4dc5: $bc
    db $dd                                        ; $4dc6: $dd
    jp z, $9aa8                                   ; $4dc7: $ca $a8 $9a

    cp e                                          ; $4dca: $bb
    cp c                                          ; $4dcb: $b9
    halt                                          ; $4dcc: $76
    ld b, d                                       ; $4dcd: $42
    ld [de], a                                    ; $4dce: $12
    ld b, a                                       ; $4dcf: $47
    adc c                                         ; $4dd0: $89
    cp e                                          ; $4dd1: $bb
    cp c                                          ; $4dd2: $b9
    sbc c                                         ; $4dd3: $99
    add [hl]                                      ; $4dd4: $86
    ld d, l                                       ; $4dd5: $55
    ld l, b                                       ; $4dd6: $68
    sbc d                                         ; $4dd7: $9a
    adc d                                         ; $4dd8: $8a
    xor c                                         ; $4dd9: $a9
    adc b                                         ; $4dda: $88
    sub a                                         ; $4ddb: $97
    ld d, [hl]                                    ; $4ddc: $56
    ld h, [hl]                                    ; $4ddd: $66
    halt                                          ; $4dde: $76
    ld d, l                                       ; $4ddf: $55
    add [hl]                                      ; $4de0: $86
    ld d, h                                       ; $4de1: $54
    ld d, h                                       ; $4de2: $54
    inc h                                         ; $4de3: $24
    ld d, l                                       ; $4de4: $55
    ld h, [hl]                                    ; $4de5: $66
    inc [hl]                                      ; $4de6: $34
    ld h, h                                       ; $4de7: $64
    ld d, l                                       ; $4de8: $55
    ld b, l                                       ; $4de9: $45
    ld b, h                                       ; $4dea: $44
    ld h, [hl]                                    ; $4deb: $66
    adc b                                         ; $4dec: $88
    sbc d                                         ; $4ded: $9a
    add a                                         ; $4dee: $87
    ld d, [hl]                                    ; $4def: $56
    adc b                                         ; $4df0: $88
    sbc b                                         ; $4df1: $98
    adc b                                         ; $4df2: $88
    ld a, b                                       ; $4df3: $78
    xor b                                         ; $4df4: $a8
    sbc c                                         ; $4df5: $99
    add a                                         ; $4df6: $87
    sub [hl]                                      ; $4df7: $96
    ld [hl], a                                    ; $4df8: $77
    ld e, b                                       ; $4df9: $58
    add [hl]                                      ; $4dfa: $86
    ld h, a                                       ; $4dfb: $67
    ld b, e                                       ; $4dfc: $43
    ld d, e                                       ; $4dfd: $53
    ld [hl+], a                                   ; $4dfe: $22
    ld d, [hl]                                    ; $4dff: $56
    add [hl]                                      ; $4e00: $86
    ld h, h                                       ; $4e01: $64
    ld h, a                                       ; $4e02: $67
    ld a, c                                       ; $4e03: $79
    xor c                                         ; $4e04: $a9
    xor c                                         ; $4e05: $a9
    ld h, a                                       ; $4e06: $67
    ld [hl], a                                    ; $4e07: $77
    adc c                                         ; $4e08: $89
    res 4, a                                      ; $4e09: $cb $a7
    sbc b                                         ; $4e0b: $98
    ld l, c                                       ; $4e0c: $69
    xor e                                         ; $4e0d: $ab
    call z, $88b9                                 ; $4e0e: $cc $b9 $88
    sbc b                                         ; $4e11: $98
    ld [hl], l                                    ; $4e12: $75
    adc b                                         ; $4e13: $88
    adc c                                         ; $4e14: $89
    sbc b                                         ; $4e15: $98
    halt                                          ; $4e16: $76
    ld a, b                                       ; $4e17: $78
    ld a, d                                       ; $4e18: $7a
    res 7, e                                      ; $4e19: $cb $bb
    and a                                         ; $4e1b: $a7
    ld d, l                                       ; $4e1c: $55
    ld d, d                                       ; $4e1d: $52
    ld b, c                                       ; $4e1e: $41
    ld b, e                                       ; $4e1f: $43
    ld d, e                                       ; $4e20: $53
    ld b, l                                       ; $4e21: $45
    ld c, c                                       ; $4e22: $49
    ld a, b                                       ; $4e23: $78
    adc b                                         ; $4e24: $88
    ld h, [hl]                                    ; $4e25: $66
    ld h, a                                       ; $4e26: $67
    ld b, a                                       ; $4e27: $47
    ld l, e                                       ; $4e28: $6b
    xor d                                         ; $4e29: $aa
    jp z, $baab                                   ; $4e2a: $ca $ab $ba

    cp l                                          ; $4e2d: $bd
    call $dbff                                    ; $4e2e: $cd $ff $db
    db $ed                                        ; $4e31: $ed
    call z, $9b89                                 ; $4e32: $cc $89 $9b
    adc d                                         ; $4e35: $8a
    adc b                                         ; $4e36: $88
    ld [hl], a                                    ; $4e37: $77
    ld e, b                                       ; $4e38: $58
    ld h, a                                       ; $4e39: $67
    ld l, b                                       ; $4e3a: $68
    ld d, [hl]                                    ; $4e3b: $56
    inc sp                                        ; $4e3c: $33
    ld h, h                                       ; $4e3d: $64
    ld h, a                                       ; $4e3e: $67
    ld d, l                                       ; $4e3f: $55
    ld h, a                                       ; $4e40: $67
    sbc d                                         ; $4e41: $9a
    sbc b                                         ; $4e42: $98
    sbc b                                         ; $4e43: $98
    ld [hl], l                                    ; $4e44: $75
    inc sp                                        ; $4e45: $33
    ld b, h                                       ; $4e46: $44
    scf                                           ; $4e47: $37
    adc b                                         ; $4e48: $88
    xor l                                         ; $4e49: $ad
    res 3, b                                      ; $4e4a: $cb $98
    adc b                                         ; $4e4c: $88
    or a                                          ; $4e4d: $b7
    add a                                         ; $4e4e: $87
    halt                                          ; $4e4f: $76
    ld h, [hl]                                    ; $4e50: $66
    ld b, l                                       ; $4e51: $45
    inc hl                                        ; $4e52: $23
    ld b, l                                       ; $4e53: $45
    ld e, b                                       ; $4e54: $58
    adc c                                         ; $4e55: $89
    cp l                                          ; $4e56: $bd
    cp h                                          ; $4e57: $bc
    xor h                                         ; $4e58: $ac
    res 5, c                                      ; $4e59: $cb $a9
    xor b                                         ; $4e5b: $a8
    ld [hl], l                                    ; $4e5c: $75
    ld b, l                                       ; $4e5d: $45
    ld b, l                                       ; $4e5e: $45
    inc [hl]                                      ; $4e5f: $34
    ld b, [hl]                                    ; $4e60: $46
    ld [hl-], a                                   ; $4e61: $32
    ld [hl-], a                                   ; $4e62: $32
    ld bc, $5322                                  ; $4e63: $01 $22 $53
    ld d, a                                       ; $4e66: $57
    ld h, h                                       ; $4e67: $64
    ld d, [hl]                                    ; $4e68: $56
    ld l, c                                       ; $4e69: $69
    sbc c                                         ; $4e6a: $99
    cp h                                          ; $4e6b: $bc
    xor b                                         ; $4e6c: $a8
    sbc b                                         ; $4e6d: $98
    ld [hl], a                                    ; $4e6e: $77
    sbc d                                         ; $4e6f: $9a
    cp e                                          ; $4e70: $bb
    db $eb                                        ; $4e71: $eb
    call c, $8799                                 ; $4e72: $dc $99 $87
    ld d, [hl]                                    ; $4e75: $56
    ld b, d                                       ; $4e76: $42
    inc hl                                        ; $4e77: $23
    ld b, c                                       ; $4e78: $41
    dec d                                         ; $4e79: $15
    ld e, c                                       ; $4e7a: $59
    xor h                                         ; $4e7b: $ac
    xor e                                         ; $4e7c: $ab
    call z, $dede                                 ; $4e7d: $cc $de $de
    ret z                                         ; $4e80: $c8

    sbc b                                         ; $4e81: $98
    halt                                          ; $4e82: $76
    ld b, h                                       ; $4e83: $44
    halt                                          ; $4e84: $76
    ld h, h                                       ; $4e85: $64
    ld l, c                                       ; $4e86: $69
    halt                                          ; $4e87: $76
    add [hl]                                      ; $4e88: $86
    adc b                                         ; $4e89: $88
    sbc d                                         ; $4e8a: $9a
    sub [hl]                                      ; $4e8b: $96
    ld b, h                                       ; $4e8c: $44
    ld h, a                                       ; $4e8d: $67
    sbc h                                         ; $4e8e: $9c
    set 1, h                                      ; $4e8f: $cb $cc
    sbc d                                         ; $4e91: $9a
    cp c                                          ; $4e92: $b9
    xor d                                         ; $4e93: $aa
    sbc b                                         ; $4e94: $98
    sbc d                                         ; $4e95: $9a
    add [hl]                                      ; $4e96: $86
    add a                                         ; $4e97: $87
    ld a, c                                       ; $4e98: $79
    cp h                                          ; $4e99: $bc
    and [hl]                                      ; $4e9a: $a6
    sub [hl]                                      ; $4e9b: $96
    ld [hl], l                                    ; $4e9c: $75
    ld h, [hl]                                    ; $4e9d: $66
    adc b                                         ; $4e9e: $88
    adc d                                         ; $4e9f: $8a
    adc h                                         ; $4ea0: $8c
    sbc d                                         ; $4ea1: $9a
    cp b                                          ; $4ea2: $b8
    ld d, l                                       ; $4ea3: $55
    ld d, l                                       ; $4ea4: $55
    ld h, a                                       ; $4ea5: $67
    add [hl]                                      ; $4ea6: $86
    ld h, a                                       ; $4ea7: $67
    ld a, b                                       ; $4ea8: $78
    sub a                                         ; $4ea9: $97
    ld [hl], a                                    ; $4eaa: $77
    ld a, b                                       ; $4eab: $78
    adc d                                         ; $4eac: $8a
    call $abca                                    ; $4ead: $cd $ca $ab
    sbc b                                         ; $4eb0: $98
    ld [hl], l                                    ; $4eb1: $75
    ld d, h                                       ; $4eb2: $54
    ld d, l                                       ; $4eb3: $55
    ld d, l                                       ; $4eb4: $55
    ld b, e                                       ; $4eb5: $43
    ld hl, $4403                                  ; $4eb6: $21 $03 $44
    ld d, [hl]                                    ; $4eb9: $56
    ld h, [hl]                                    ; $4eba: $66
    ld d, a                                       ; $4ebb: $57
    adc b                                         ; $4ebc: $88
    xor d                                         ; $4ebd: $aa
    db $dd                                        ; $4ebe: $dd
    jp z, Jump_011_6587                           ; $4ebf: $ca $87 $65

    ld [hl-], a                                   ; $4ec2: $32
    db $10                                        ; $4ec3: $10
    db $10                                        ; $4ec4: $10
    inc hl                                        ; $4ec5: $23
    ld e, c                                       ; $4ec6: $59
    adc $bc                                       ; $4ec7: $ce $bc
    cp e                                          ; $4ec9: $bb
    xor d                                         ; $4eca: $aa
    sbc c                                         ; $4ecb: $99
    add a                                         ; $4ecc: $87
    ld [hl], l                                    ; $4ecd: $75
    ld [hl-], a                                   ; $4ece: $32
    ld de, $3501                                  ; $4ecf: $11 $01 $35
    ld [hl], a                                    ; $4ed2: $77
    sbc d                                         ; $4ed3: $9a
    cp l                                          ; $4ed4: $bd
    xor $ff                                       ; $4ed5: $ee $ff
    call c, $bbba                                 ; $4ed7: $dc $ba $bb
    cp c                                          ; $4eda: $b9
    ld [hl], l                                    ; $4edb: $75
    ld b, d                                       ; $4edc: $42
    inc hl                                        ; $4edd: $23
    inc sp                                        ; $4ede: $33
    ld d, l                                       ; $4edf: $55
    add a                                         ; $4ee0: $87
    adc d                                         ; $4ee1: $8a
    xor c                                         ; $4ee2: $a9
    xor e                                         ; $4ee3: $ab
    set 3, h                                      ; $4ee4: $cb $dc
    db $dd                                        ; $4ee6: $dd
    db $db                                        ; $4ee7: $db
    sbc d                                         ; $4ee8: $9a
    add [hl]                                      ; $4ee9: $86
    ld a, b                                       ; $4eea: $78
    ld [hl], a                                    ; $4eeb: $77
    sub a                                         ; $4eec: $97
    ld [hl], h                                    ; $4eed: $74
    ld b, l                                       ; $4eee: $45
    ld a, b                                       ; $4eef: $78
    sbc b                                         ; $4ef0: $98
    xor b                                         ; $4ef1: $a8
    sbc d                                         ; $4ef2: $9a
    sbc c                                         ; $4ef3: $99
    sbc b                                         ; $4ef4: $98
    sbc d                                         ; $4ef5: $9a
    sub a                                         ; $4ef6: $97
    ld d, a                                       ; $4ef7: $57
    ld h, l                                       ; $4ef8: $65
    ld h, [hl]                                    ; $4ef9: $66
    ld [hl], h                                    ; $4efa: $74
    ld [hl], a                                    ; $4efb: $77
    ld h, a                                       ; $4efc: $67
    ld h, h                                       ; $4efd: $64
    ld d, [hl]                                    ; $4efe: $56
    adc b                                         ; $4eff: $88
    adc c                                         ; $4f00: $89
    sbc e                                         ; $4f01: $9b
    xor b                                         ; $4f02: $a8
    ld d, h                                       ; $4f03: $54
    ld b, h                                       ; $4f04: $44
    inc [hl]                                      ; $4f05: $34
    halt                                          ; $4f06: $76
    ld [hl], l                                    ; $4f07: $75
    ld h, [hl]                                    ; $4f08: $66
    adc c                                         ; $4f09: $89
    xor d                                         ; $4f0a: $aa
    xor c                                         ; $4f0b: $a9
    ld [hl], a                                    ; $4f0c: $77
    add [hl]                                      ; $4f0d: $86
    sbc d                                         ; $4f0e: $9a
    res 5, e                                      ; $4f0f: $cb $ab
    xor c                                         ; $4f11: $a9
    cp d                                          ; $4f12: $ba
    adc c                                         ; $4f13: $89
    ld [hl], a                                    ; $4f14: $77
    ld [hl], l                                    ; $4f15: $75
    halt                                          ; $4f16: $76
    ld h, [hl]                                    ; $4f17: $66
    ld b, d                                       ; $4f18: $42
    inc hl                                        ; $4f19: $23
    ld b, a                                       ; $4f1a: $47
    ld b, a                                       ; $4f1b: $47
    ld h, h                                       ; $4f1c: $64
    ld b, h                                       ; $4f1d: $44
    inc sp                                        ; $4f1e: $33
    ld [hl+], a                                   ; $4f1f: $22
    ld d, l                                       ; $4f20: $55
    ld h, l                                       ; $4f21: $65
    ld a, b                                       ; $4f22: $78
    xor b                                         ; $4f23: $a8
    add a                                         ; $4f24: $87
    ld h, h                                       ; $4f25: $64
    dec [hl]                                      ; $4f26: $35
    ld d, [hl]                                    ; $4f27: $56
    adc c                                         ; $4f28: $89
    res 7, e                                      ; $4f29: $cb $bb
    xor d                                         ; $4f2b: $aa
    adc c                                         ; $4f2c: $89
    sbc b                                         ; $4f2d: $98
    ld a, c                                       ; $4f2e: $79
    ld d, a                                       ; $4f2f: $57
    adc b                                         ; $4f30: $88
    ld a, c                                       ; $4f31: $79
    xor d                                         ; $4f32: $aa
    xor e                                         ; $4f33: $ab
    xor h                                         ; $4f34: $ac
    sbc $ec                                       ; $4f35: $de $ec
    jp z, $ac79                                   ; $4f37: $ca $79 $ac

    cp c                                          ; $4f3a: $b9
    adc c                                         ; $4f3b: $89
    sbc c                                         ; $4f3c: $99
    xor e                                         ; $4f3d: $ab
    xor d                                         ; $4f3e: $aa
    sbc c                                         ; $4f3f: $99
    xor c                                         ; $4f40: $a9
    sbc b                                         ; $4f41: $98
    ld d, a                                       ; $4f42: $57
    add a                                         ; $4f43: $87
    add [hl]                                      ; $4f44: $86
    sbc d                                         ; $4f45: $9a
    adc b                                         ; $4f46: $88
    ld h, a                                       ; $4f47: $67
    adc c                                         ; $4f48: $89
    ld a, c                                       ; $4f49: $79
    adc b                                         ; $4f4a: $88
    add a                                         ; $4f4b: $87
    adc b                                         ; $4f4c: $88
    ld d, h                                       ; $4f4d: $54
    ld d, l                                       ; $4f4e: $55
    ld d, l                                       ; $4f4f: $55
    ld b, l                                       ; $4f50: $45
    ld d, [hl]                                    ; $4f51: $56
    ld b, e                                       ; $4f52: $43
    ld d, [hl]                                    ; $4f53: $56
    ld h, [hl]                                    ; $4f54: $66
    ld h, a                                       ; $4f55: $67
    add a                                         ; $4f56: $87
    sbc b                                         ; $4f57: $98
    sbc b                                         ; $4f58: $98
    db $db                                        ; $4f59: $db
    xor h                                         ; $4f5a: $ac
    xor c                                         ; $4f5b: $a9
    ld [hl], h                                    ; $4f5c: $74
    ld h, l                                       ; $4f5d: $65
    ld [hl], a                                    ; $4f5e: $77
    ld h, l                                       ; $4f5f: $65
    add [hl]                                      ; $4f60: $86
    ld h, l                                       ; $4f61: $65
    ld d, [hl]                                    ; $4f62: $56
    ld h, h                                       ; $4f63: $64
    inc sp                                        ; $4f64: $33
    inc [hl]                                      ; $4f65: $34
    ld d, a                                       ; $4f66: $57
    ld d, l                                       ; $4f67: $55
    ld h, l                                       ; $4f68: $65
    ld [hl], a                                    ; $4f69: $77
    ld h, a                                       ; $4f6a: $67
    ld h, a                                       ; $4f6b: $67
    ld a, b                                       ; $4f6c: $78
    ld a, c                                       ; $4f6d: $79
    add a                                         ; $4f6e: $87
    adc b                                         ; $4f6f: $88
    adc c                                         ; $4f70: $89
    sub [hl]                                      ; $4f71: $96
    ld d, [hl]                                    ; $4f72: $56
    ld b, h                                       ; $4f73: $44
    ld b, l                                       ; $4f74: $45
    ld b, l                                       ; $4f75: $45
    ld h, a                                       ; $4f76: $67
    add a                                         ; $4f77: $87
    sbc d                                         ; $4f78: $9a
    call $eddf                                    ; $4f79: $cd $df $ed
    call c, $85ca                                 ; $4f7c: $dc $ca $85
    ld d, h                                       ; $4f7f: $54
    dec [hl]                                      ; $4f80: $35
    ld d, a                                       ; $4f81: $57
    ld e, b                                       ; $4f82: $58
    add l                                         ; $4f83: $85
    ld a, c                                       ; $4f84: $79
    cp h                                          ; $4f85: $bc
    adc $de                                       ; $4f86: $ce $de
    db $fc                                        ; $4f88: $fc
    jp z, Jump_011_77a9                           ; $4f89: $ca $a9 $77

    ld [hl], a                                    ; $4f8c: $77
    add a                                         ; $4f8d: $87
    adc c                                         ; $4f8e: $89
    adc d                                         ; $4f8f: $8a
    sbc c                                         ; $4f90: $99
    sbc b                                         ; $4f91: $98
    adc c                                         ; $4f92: $89
    xor d                                         ; $4f93: $aa
    adc b                                         ; $4f94: $88
    add a                                         ; $4f95: $87
    add a                                         ; $4f96: $87
    ld [hl], a                                    ; $4f97: $77
    ld b, l                                       ; $4f98: $45
    inc [hl]                                      ; $4f99: $34
    ld b, h                                       ; $4f9a: $44
    ld b, h                                       ; $4f9b: $44
    dec [hl]                                      ; $4f9c: $35
    ld b, e                                       ; $4f9d: $43
    ld b, h                                       ; $4f9e: $44
    ld h, l                                       ; $4f9f: $65
    ld h, [hl]                                    ; $4fa0: $66
    ld a, c                                       ; $4fa1: $79
    cp h                                          ; $4fa2: $bc
    call $b8cc                                    ; $4fa3: $cd $cc $b8
    halt                                          ; $4fa6: $76
    ld h, [hl]                                    ; $4fa7: $66
    ld d, e                                       ; $4fa8: $53
    inc sp                                        ; $4fa9: $33
    ld d, h                                       ; $4faa: $54
    ld d, [hl]                                    ; $4fab: $56
    adc c                                         ; $4fac: $89
    cp d                                          ; $4fad: $ba
    xor e                                         ; $4fae: $ab
    db $db                                        ; $4faf: $db
    xor d                                         ; $4fb0: $aa
    adc b                                         ; $4fb1: $88
    ld h, a                                       ; $4fb2: $67
    ld [hl], a                                    ; $4fb3: $77
    ld d, e                                       ; $4fb4: $53
    ld b, h                                       ; $4fb5: $44
    inc [hl]                                      ; $4fb6: $34
    ld d, l                                       ; $4fb7: $55
    ld d, h                                       ; $4fb8: $54
    ld b, e                                       ; $4fb9: $43
    ld b, l                                       ; $4fba: $45
    ld a, b                                       ; $4fbb: $78
    xor h                                         ; $4fbc: $ac
    cp h                                          ; $4fbd: $bc
    cp d                                          ; $4fbe: $ba
    add [hl]                                      ; $4fbf: $86
    ld h, h                                       ; $4fc0: $64
    ld d, l                                       ; $4fc1: $55
    ld [hl], a                                    ; $4fc2: $77
    ld [hl], a                                    ; $4fc3: $77
    ld d, a                                       ; $4fc4: $57
    adc b                                         ; $4fc5: $88
    adc b                                         ; $4fc6: $88
    ld a, c                                       ; $4fc7: $79
    adc b                                         ; $4fc8: $88
    ld l, b                                       ; $4fc9: $68
    xor d                                         ; $4fca: $aa
    sbc b                                         ; $4fcb: $98
    ld a, b                                       ; $4fcc: $78
    sbc c                                         ; $4fcd: $99
    xor d                                         ; $4fce: $aa
    cp e                                          ; $4fcf: $bb
    res 5, d                                      ; $4fd0: $cb $aa
    ld h, l                                       ; $4fd2: $65
    ld b, h                                       ; $4fd3: $44
    ld d, h                                       ; $4fd4: $54
    ld b, l                                       ; $4fd5: $45
    ld b, [hl]                                    ; $4fd6: $46
    ld d, a                                       ; $4fd7: $57
    ld [hl], a                                    ; $4fd8: $77
    ld d, l                                       ; $4fd9: $55
    ld h, a                                       ; $4fda: $67
    ld a, b                                       ; $4fdb: $78
    halt                                          ; $4fdc: $76
    ld h, a                                       ; $4fdd: $67
    ld l, b                                       ; $4fde: $68
    adc d                                         ; $4fdf: $8a
    cp d                                          ; $4fe0: $ba
    xor b                                         ; $4fe1: $a8
    ld a, c                                       ; $4fe2: $79
    xor h                                         ; $4fe3: $ac
    db $db                                        ; $4fe4: $db
    xor c                                         ; $4fe5: $a9
    cp h                                          ; $4fe6: $bc
    cp h                                          ; $4fe7: $bc
    db $eb                                        ; $4fe8: $eb
    sbc d                                         ; $4fe9: $9a
    xor d                                         ; $4fea: $aa
    ret z                                         ; $4feb: $c8

    sbc c                                         ; $4fec: $99
    sbc e                                         ; $4fed: $9b
    call c, $a9cc                                 ; $4fee: $dc $cc $a9
    and a                                         ; $4ff1: $a7
    halt                                          ; $4ff2: $76
    ld d, h                                       ; $4ff3: $54
    ld b, h                                       ; $4ff4: $44
    ld e, b                                       ; $4ff5: $58
    adc e                                         ; $4ff6: $8b
    cp b                                          ; $4ff7: $b8
    ld h, l                                       ; $4ff8: $65
    ld a, b                                       ; $4ff9: $78
    sbc c                                         ; $4ffa: $99
    add [hl]                                      ; $4ffb: $86
    add [hl]                                      ; $4ffc: $86
    ld b, l                                       ; $4ffd: $45
    ld [hl-], a                                   ; $4ffe: $32
    ld b, e                                       ; $4fff: $43
    ld d, [hl]                                    ; $5000: $56
    ld d, e                                       ; $5001: $53
    ld d, l                                       ; $5002: $55
    ld d, c                                       ; $5003: $51
    ld [de], a                                    ; $5004: $12
    inc [hl]                                      ; $5005: $34
    inc hl                                        ; $5006: $23
    ld [hl], a                                    ; $5007: $77
    ld a, c                                       ; $5008: $79
    sbc e                                         ; $5009: $9b
    xor c                                         ; $500a: $a9
    ld [hl], a                                    ; $500b: $77
    ld h, d                                       ; $500c: $62
    inc hl                                        ; $500d: $23
    ld l, b                                       ; $500e: $68
    xor d                                         ; $500f: $aa
    sub l                                         ; $5010: $95
    ld b, [hl]                                    ; $5011: $46
    ld e, b                                       ; $5012: $58
    sbc e                                         ; $5013: $9b
    ld a, b                                       ; $5014: $78
    xor h                                         ; $5015: $ac
    cp c                                          ; $5016: $b9
    cp c                                          ; $5017: $b9
    halt                                          ; $5018: $76
    ld h, [hl]                                    ; $5019: $66
    ld b, l                                       ; $501a: $45
    ld h, [hl]                                    ; $501b: $66
    ld d, [hl]                                    ; $501c: $56
    ld d, l                                       ; $501d: $55
    ld [hl], a                                    ; $501e: $77
    ld h, h                                       ; $501f: $64
    ld [hl], $69                                  ; $5020: $36 $69
    xor b                                         ; $5022: $a8
    sbc d                                         ; $5023: $9a
    cp c                                          ; $5024: $b9
    ld h, [hl]                                    ; $5025: $66
    halt                                          ; $5026: $76
    xor e                                         ; $5027: $ab
    db $ec                                        ; $5028: $ec
    sbc e                                         ; $5029: $9b
    cp d                                          ; $502a: $ba
    xor d                                         ; $502b: $aa
    adc d                                         ; $502c: $8a
    res 0, a                                      ; $502d: $cb $87
    adc b                                         ; $502f: $88
    sbc c                                         ; $5030: $99
    adc b                                         ; $5031: $88
    ld h, a                                       ; $5032: $67
    ld h, [hl]                                    ; $5033: $66
    halt                                          ; $5034: $76
    add a                                         ; $5035: $87
    adc c                                         ; $5036: $89
    adc c                                         ; $5037: $89
    cp e                                          ; $5038: $bb
    cp e                                          ; $5039: $bb
    cp d                                          ; $503a: $ba
    sbc b                                         ; $503b: $98
    adc c                                         ; $503c: $89
    xor d                                         ; $503d: $aa
    sbc c                                         ; $503e: $99
    xor b                                         ; $503f: $a8
    sbc c                                         ; $5040: $99
    ld [hl], a                                    ; $5041: $77
    ld h, [hl]                                    ; $5042: $66
    ld h, l                                       ; $5043: $65
    ld h, [hl]                                    ; $5044: $66
    ld h, l                                       ; $5045: $65
    ld b, d                                       ; $5046: $42
    inc hl                                        ; $5047: $23
    ld hl, $2322                                  ; $5048: $21 $22 $23
    ld b, [hl]                                    ; $504b: $46
    ld [hl], a                                    ; $504c: $77
    add [hl]                                      ; $504d: $86
    ld h, a                                       ; $504e: $67
    adc b                                         ; $504f: $88
    add a                                         ; $5050: $87
    ld h, [hl]                                    ; $5051: $66
    halt                                          ; $5052: $76
    ld a, c                                       ; $5053: $79
    adc c                                         ; $5054: $89
    sbc c                                         ; $5055: $99
    xor c                                         ; $5056: $a9
    sbc d                                         ; $5057: $9a
    cp c                                          ; $5058: $b9
    adc c                                         ; $5059: $89
    ld h, l                                       ; $505a: $65
    ld l, b                                       ; $505b: $68
    xor e                                         ; $505c: $ab
    xor c                                         ; $505d: $a9
    add a                                         ; $505e: $87
    ld a, c                                       ; $505f: $79
    xor c                                         ; $5060: $a9
    sub a                                         ; $5061: $97
    ld d, [hl]                                    ; $5062: $56
    ld h, l                                       ; $5063: $65
    ld h, [hl]                                    ; $5064: $66
    ld a, d                                       ; $5065: $7a
    sbc d                                         ; $5066: $9a
    cp d                                          ; $5067: $ba
    xor e                                         ; $5068: $ab
    xor d                                         ; $5069: $aa
    xor h                                         ; $506a: $ac
    db $ec                                        ; $506b: $ec
    jp z, Jump_011_5785                           ; $506c: $ca $85 $57

    ld d, a                                       ; $506f: $57
    adc b                                         ; $5070: $88
    sbc d                                         ; $5071: $9a
    xor d                                         ; $5072: $aa
    xor c                                         ; $5073: $a9
    add a                                         ; $5074: $87
    ld a, b                                       ; $5075: $78
    halt                                          ; $5076: $76
    ld d, e                                       ; $5077: $53
    inc h                                         ; $5078: $24
    ld d, [hl]                                    ; $5079: $56
    ld [hl], a                                    ; $507a: $77
    add a                                         ; $507b: $87
    sbc d                                         ; $507c: $9a
    sub a                                         ; $507d: $97
    ld l, b                                       ; $507e: $68
    ld [hl], a                                    ; $507f: $77
    add a                                         ; $5080: $87
    ld h, [hl]                                    ; $5081: $66
    ld h, h                                       ; $5082: $64
    ld d, h                                       ; $5083: $54
    ld h, [hl]                                    ; $5084: $66
    ld d, [hl]                                    ; $5085: $56
    ld d, h                                       ; $5086: $54
    ld b, [hl]                                    ; $5087: $46
    adc c                                         ; $5088: $89
    adc d                                         ; $5089: $8a
    xor e                                         ; $508a: $ab
    call c, $98b9                                 ; $508b: $dc $b9 $98
    sbc c                                         ; $508e: $99
    ld h, h                                       ; $508f: $64
    ld [hl-], a                                   ; $5090: $32
    ld [hl-], a                                   ; $5091: $32
    ld [hl-], a                                   ; $5092: $32
    ld d, [hl]                                    ; $5093: $56
    ld d, [hl]                                    ; $5094: $56
    sbc b                                         ; $5095: $98
    xor c                                         ; $5096: $a9
    cp h                                          ; $5097: $bc
    sbc c                                         ; $5098: $99
    adc b                                         ; $5099: $88
    ld h, [hl]                                    ; $509a: $66
    ld h, a                                       ; $509b: $67
    halt                                          ; $509c: $76
    ld b, l                                       ; $509d: $45
    ld h, a                                       ; $509e: $67
    ld [hl], a                                    ; $509f: $77
    adc b                                         ; $50a0: $88
    ld [hl], a                                    ; $50a1: $77
    ld d, l                                       ; $50a2: $55
    ld h, a                                       ; $50a3: $67
    ld h, l                                       ; $50a4: $65
    ld a, c                                       ; $50a5: $79
    sbc c                                         ; $50a6: $99
    xor b                                         ; $50a7: $a8
    ld [hl], l                                    ; $50a8: $75
    ld [hl], l                                    ; $50a9: $75
    ld d, [hl]                                    ; $50aa: $56
    ld d, [hl]                                    ; $50ab: $56
    ld h, [hl]                                    ; $50ac: $66
    ld a, c                                       ; $50ad: $79
    ld a, b                                       ; $50ae: $78
    adc e                                         ; $50af: $8b
    res 5, d                                      ; $50b0: $cb $aa
    xor c                                         ; $50b2: $a9
    xor b                                         ; $50b3: $a8
    sbc c                                         ; $50b4: $99
    sbc c                                         ; $50b5: $99
    sbc c                                         ; $50b6: $99
    xor e                                         ; $50b7: $ab
    cp e                                          ; $50b8: $bb
    xor c                                         ; $50b9: $a9
    adc e                                         ; $50ba: $8b
    xor e                                         ; $50bb: $ab
    sbc c                                         ; $50bc: $99
    cp e                                          ; $50bd: $bb
    xor c                                         ; $50be: $a9
    add [hl]                                      ; $50bf: $86
    adc b                                         ; $50c0: $88
    sbc b                                         ; $50c1: $98
    cp b                                          ; $50c2: $b8
    sbc b                                         ; $50c3: $98
    halt                                          ; $50c4: $76
    ld a, b                                       ; $50c5: $78
    adc c                                         ; $50c6: $89
    adc b                                         ; $50c7: $88
    xor d                                         ; $50c8: $aa
    adc c                                         ; $50c9: $89
    sbc c                                         ; $50ca: $99
    ld a, c                                       ; $50cb: $79
    sbc c                                         ; $50cc: $99
    sub a                                         ; $50cd: $97
    ld [hl], a                                    ; $50ce: $77
    add a                                         ; $50cf: $87
    add a                                         ; $50d0: $87
    sbc c                                         ; $50d1: $99
    add [hl]                                      ; $50d2: $86
    ld h, a                                       ; $50d3: $67
    ld h, a                                       ; $50d4: $67
    ld h, h                                       ; $50d5: $64
    ld b, e                                       ; $50d6: $43
    ld b, e                                       ; $50d7: $43
    inc sp                                        ; $50d8: $33
    ld d, [hl]                                    ; $50d9: $56
    ld a, b                                       ; $50da: $78
    sbc d                                         ; $50db: $9a
    cp d                                          ; $50dc: $ba
    adc b                                         ; $50dd: $88
    halt                                          ; $50de: $76
    ld h, [hl]                                    ; $50df: $66
    add a                                         ; $50e0: $87
    halt                                          ; $50e1: $76
    halt                                          ; $50e2: $76
    ld a, b                                       ; $50e3: $78
    xor b                                         ; $50e4: $a8
    sub a                                         ; $50e5: $97
    ld b, [hl]                                    ; $50e6: $46
    ld h, a                                       ; $50e7: $67
    ld a, b                                       ; $50e8: $78
    ld h, [hl]                                    ; $50e9: $66
    ld h, [hl]                                    ; $50ea: $66
    ld h, [hl]                                    ; $50eb: $66
    sbc b                                         ; $50ec: $98
    adc b                                         ; $50ed: $88
    ld a, b                                       ; $50ee: $78
    ld d, l                                       ; $50ef: $55
    ld d, l                                       ; $50f0: $55
    ld [hl-], a                                   ; $50f1: $32
    ld [hl+], a                                   ; $50f2: $22
    ld b, e                                       ; $50f3: $43
    ld b, a                                       ; $50f4: $47
    ld [hl], a                                    ; $50f5: $77
    ld h, l                                       ; $50f6: $65
    inc [hl]                                      ; $50f7: $34
    ld b, l                                       ; $50f8: $45
    ld a, b                                       ; $50f9: $78
    add a                                         ; $50fa: $87
    halt                                          ; $50fb: $76
    sbc b                                         ; $50fc: $98
    xor b                                         ; $50fd: $a8
    sbc e                                         ; $50fe: $9b
    xor c                                         ; $50ff: $a9
    adc b                                         ; $5100: $88
    xor d                                         ; $5101: $aa
    sbc b                                         ; $5102: $98
    ld h, a                                       ; $5103: $67
    adc b                                         ; $5104: $88
    halt                                          ; $5105: $76
    ld d, h                                       ; $5106: $54
    ld d, l                                       ; $5107: $55
    ld d, [hl]                                    ; $5108: $56
    adc b                                         ; $5109: $88
    sbc d                                         ; $510a: $9a
    xor d                                         ; $510b: $aa
    xor c                                         ; $510c: $a9
    sbc d                                         ; $510d: $9a
    xor b                                         ; $510e: $a8
    add a                                         ; $510f: $87
    ld h, a                                       ; $5110: $67
    add a                                         ; $5111: $87
    halt                                          ; $5112: $76
    adc b                                         ; $5113: $88
    ld [hl], a                                    ; $5114: $77
    adc b                                         ; $5115: $88
    sbc h                                         ; $5116: $9c
    db $dd                                        ; $5117: $dd
    call z, $edde                                 ; $5118: $cc $de $ed
    jp z, $ac89                                   ; $511b: $ca $89 $ac

    call c, Call_011_66ba                         ; $511e: $dc $ba $66
    ld b, h                                       ; $5121: $44
    ld d, a                                       ; $5122: $57
    adc d                                         ; $5123: $8a
    cp d                                          ; $5124: $ba
    add [hl]                                      ; $5125: $86
    ld a, d                                       ; $5126: $7a
    sbc c                                         ; $5127: $99
    sub a                                         ; $5128: $97
    ld h, l                                       ; $5129: $65
    ld h, [hl]                                    ; $512a: $66
    ld d, [hl]                                    ; $512b: $56
    adc b                                         ; $512c: $88
    sbc c                                         ; $512d: $99
    ld [hl], l                                    ; $512e: $75
    ld b, [hl]                                    ; $512f: $46
    adc b                                         ; $5130: $88
    add a                                         ; $5131: $87
    halt                                          ; $5132: $76
    adc d                                         ; $5133: $8a
    xor e                                         ; $5134: $ab
    xor e                                         ; $5135: $ab
    add [hl]                                      ; $5136: $86
    ld h, e                                       ; $5137: $63
    inc sp                                        ; $5138: $33
    dec [hl]                                      ; $5139: $35
    ld h, [hl]                                    ; $513a: $66
    ld h, [hl]                                    ; $513b: $66
    ld b, l                                       ; $513c: $45
    ld b, [hl]                                    ; $513d: $46
    ld e, b                                       ; $513e: $58
    sbc b                                         ; $513f: $98
    cp c                                          ; $5140: $b9
    ld h, [hl]                                    ; $5141: $66
    ld l, b                                       ; $5142: $68
    ld [hl], l                                    ; $5143: $75
    ld b, l                                       ; $5144: $45
    inc [hl]                                      ; $5145: $34
    ld d, h                                       ; $5146: $54
    ld [hl+], a                                   ; $5147: $22
    db $10                                        ; $5148: $10
    ld [de], a                                    ; $5149: $12
    ld [de], a                                    ; $514a: $12
    ld [hl-], a                                   ; $514b: $32
    ld l, b                                       ; $514c: $68
    xor h                                         ; $514d: $ac
    cp d                                          ; $514e: $ba
    call c, $a9bb                                 ; $514f: $dc $bb $a9
    xor e                                         ; $5152: $ab
    res 5, e                                      ; $5153: $cb $ab
    xor c                                         ; $5155: $a9
    ld h, l                                       ; $5156: $65
    ld [hl+], a                                   ; $5157: $22
    inc [hl]                                      ; $5158: $34
    ld d, l                                       ; $5159: $55
    ld d, e                                       ; $515a: $53
    ld d, l                                       ; $515b: $55
    adc d                                         ; $515c: $8a
    xor d                                         ; $515d: $aa
    xor d                                         ; $515e: $aa
    res 7, h                                      ; $515f: $cb $bc
    call z, $fded                                 ; $5161: $cc $ed $fd
    call z, Call_011_7798                         ; $5164: $cc $98 $77
    ld h, h                                       ; $5167: $64
    ld d, l                                       ; $5168: $55
    ld a, b                                       ; $5169: $78
    cp e                                          ; $516a: $bb
    sbc b                                         ; $516b: $98
    adc b                                         ; $516c: $88
    ld a, b                                       ; $516d: $78
    add a                                         ; $516e: $87
    add a                                         ; $516f: $87
    adc b                                         ; $5170: $88
    adc b                                         ; $5171: $88
    halt                                          ; $5172: $76
    ld h, h                                       ; $5173: $64
    ld d, a                                       ; $5174: $57
    halt                                          ; $5175: $76
    ld b, h                                       ; $5176: $44
    inc sp                                        ; $5177: $33
    inc h                                         ; $5178: $24
    ld b, l                                       ; $5179: $45
    ld b, [hl]                                    ; $517a: $46
    sbc d                                         ; $517b: $9a
    jp z, $bcab                                   ; $517c: $ca $ab $bc

    res 5, b                                      ; $517f: $cb $a8
    sbc b                                         ; $5181: $98
    ld l, b                                       ; $5182: $68
    add a                                         ; $5183: $87
    halt                                          ; $5184: $76
    ld h, [hl]                                    ; $5185: $66
    ld d, h                                       ; $5186: $54
    ld b, l                                       ; $5187: $45
    ld d, [hl]                                    ; $5188: $56
    ld h, a                                       ; $5189: $67
    sub a                                         ; $518a: $97
    halt                                          ; $518b: $76
    ld [hl], l                                    ; $518c: $75
    ld a, b                                       ; $518d: $78
    adc c                                         ; $518e: $89
    ld e, b                                       ; $518f: $58
    adc c                                         ; $5190: $89
    sub a                                         ; $5191: $97
    adc b                                         ; $5192: $88
    sbc d                                         ; $5193: $9a
    adc b                                         ; $5194: $88
    ld h, l                                       ; $5195: $65
    ld h, l                                       ; $5196: $65
    ld b, l                                       ; $5197: $45
    inc sp                                        ; $5198: $33
    ld [hl-], a                                   ; $5199: $32
    inc h                                         ; $519a: $24
    ld d, a                                       ; $519b: $57
    adc b                                         ; $519c: $88
    ld [hl], h                                    ; $519d: $74
    ld d, h                                       ; $519e: $54
    ld b, h                                       ; $519f: $44
    ld b, h                                       ; $51a0: $44
    ld h, a                                       ; $51a1: $67
    sbc c                                         ; $51a2: $99
    sbc d                                         ; $51a3: $9a
    sbc b                                         ; $51a4: $98
    adc b                                         ; $51a5: $88
    sbc d                                         ; $51a6: $9a
    res 0, a                                      ; $51a7: $cb $87
    add a                                         ; $51a9: $87
    ld [hl], a                                    ; $51aa: $77
    ld [hl], a                                    ; $51ab: $77
    adc c                                         ; $51ac: $89
    res 5, e                                      ; $51ad: $cb $ab
    xor d                                         ; $51af: $aa
    call $ffff                                    ; $51b0: $cd $ff $ff
    call $bceb                                    ; $51b3: $cd $eb $bc
    rst $28                                       ; $51b6: $ef
    sbc $dc                                       ; $51b7: $de $dc
    call z, $fecc                                 ; $51b9: $cc $cc $fe
    db $ed                                        ; $51bc: $ed
    db $ec                                        ; $51bd: $ec
    sbc b                                         ; $51be: $98
    add a                                         ; $51bf: $87
    add [hl]                                      ; $51c0: $86
    ld d, l                                       ; $51c1: $55
    ld d, l                                       ; $51c2: $55
    ld h, l                                       ; $51c3: $65
    ld h, [hl]                                    ; $51c4: $66
    ld b, d                                       ; $51c5: $42
    inc hl                                        ; $51c6: $23
    ld b, h                                       ; $51c7: $44
    ld h, h                                       ; $51c8: $64
    halt                                          ; $51c9: $76
    ld d, h                                       ; $51ca: $54
    ld d, l                                       ; $51cb: $55
    ld b, l                                       ; $51cc: $45
    ld d, h                                       ; $51cd: $54
    ld d, a                                       ; $51ce: $57
    ld [hl], l                                    ; $51cf: $75
    inc sp                                        ; $51d0: $33
    inc de                                        ; $51d1: $13
    inc hl                                        ; $51d2: $23
    inc [hl]                                      ; $51d3: $34
    inc sp                                        ; $51d4: $33
    ld b, [hl]                                    ; $51d5: $46
    ld l, b                                       ; $51d6: $68
    add a                                         ; $51d7: $87
    halt                                          ; $51d8: $76
    ld b, l                                       ; $51d9: $45
    ld d, h                                       ; $51da: $54
    ld b, l                                       ; $51db: $45
    ld b, h                                       ; $51dc: $44
    ld b, h                                       ; $51dd: $44
    ld d, h                                       ; $51de: $54
    ld d, l                                       ; $51df: $55
    ld b, l                                       ; $51e0: $45
    ld h, [hl]                                    ; $51e1: $66
    ld [hl], a                                    ; $51e2: $77
    ld a, b                                       ; $51e3: $78
    sbc b                                         ; $51e4: $98
    adc b                                         ; $51e5: $88
    sbc c                                         ; $51e6: $99
    sbc c                                         ; $51e7: $99
    sbc b                                         ; $51e8: $98
    halt                                          ; $51e9: $76
    ld h, [hl]                                    ; $51ea: $66
    ld h, [hl]                                    ; $51eb: $66
    ld h, a                                       ; $51ec: $67
    adc b                                         ; $51ed: $88
    adc d                                         ; $51ee: $8a
    xor e                                         ; $51ef: $ab
    cp h                                          ; $51f0: $bc
    rst $18                                       ; $51f1: $df
    db $ed                                        ; $51f2: $ed
    call z, $a9cb                                 ; $51f3: $cc $cb $a9
    sbc c                                         ; $51f6: $99
    sub a                                         ; $51f7: $97
    halt                                          ; $51f8: $76
    ld a, b                                       ; $51f9: $78
    adc c                                         ; $51fa: $89
    sbc d                                         ; $51fb: $9a
    cp e                                          ; $51fc: $bb
    cp h                                          ; $51fd: $bc
    cp d                                          ; $51fe: $ba
    xor d                                         ; $51ff: $aa
    xor c                                         ; $5200: $a9
    sbc c                                         ; $5201: $99
    sbc b                                         ; $5202: $98
    halt                                          ; $5203: $76
    ld [hl], a                                    ; $5204: $77
    ld h, [hl]                                    ; $5205: $66
    ld [hl], a                                    ; $5206: $77
    ld d, l                                       ; $5207: $55
    ld d, h                                       ; $5208: $54
    ld b, e                                       ; $5209: $43
    ld d, l                                       ; $520a: $55
    ld h, a                                       ; $520b: $67
    ld a, b                                       ; $520c: $78
    adc b                                         ; $520d: $88
    adc c                                         ; $520e: $89
    sbc c                                         ; $520f: $99
    adc c                                         ; $5210: $89
    sbc b                                         ; $5211: $98
    adc b                                         ; $5212: $88
    add a                                         ; $5213: $87
    ld h, [hl]                                    ; $5214: $66
    ld d, h                                       ; $5215: $54
    ld b, e                                       ; $5216: $43
    ld d, l                                       ; $5217: $55
    ld h, a                                       ; $5218: $67
    ld h, [hl]                                    ; $5219: $66
    ld [hl], a                                    ; $521a: $77
    ld h, l                                       ; $521b: $65
    ld h, l                                       ; $521c: $65
    ld h, a                                       ; $521d: $67
    ld a, b                                       ; $521e: $78
    sbc b                                         ; $521f: $98
    adc b                                         ; $5220: $88
    xor d                                         ; $5221: $aa
    sbc c                                         ; $5222: $99
    add a                                         ; $5223: $87
    ld d, l                                       ; $5224: $55
    ld h, l                                       ; $5225: $65
    ld d, [hl]                                    ; $5226: $56
    sbc d                                         ; $5227: $9a
    cp l                                          ; $5228: $bd
    call z, $a8ba                                 ; $5229: $cc $ba $a8
    adc b                                         ; $522c: $88
    adc c                                         ; $522d: $89
    xor d                                         ; $522e: $aa
    sbc c                                         ; $522f: $99
    adc b                                         ; $5230: $88
    add a                                         ; $5231: $87
    ld h, [hl]                                    ; $5232: $66
    ld b, h                                       ; $5233: $44
    ld h, [hl]                                    ; $5234: $66
    sbc b                                         ; $5235: $98
    add a                                         ; $5236: $87
    ld a, c                                       ; $5237: $79
    sbc d                                         ; $5238: $9a
    sub a                                         ; $5239: $97
    ld d, l                                       ; $523a: $55
    ld d, [hl]                                    ; $523b: $56
    ld l, b                                       ; $523c: $68
    ld h, l                                       ; $523d: $65
    ld a, c                                       ; $523e: $79
    sbc c                                         ; $523f: $99
    adc b                                         ; $5240: $88
    add a                                         ; $5241: $87
    adc b                                         ; $5242: $88
    ld l, b                                       ; $5243: $68
    sbc b                                         ; $5244: $98
    cp c                                          ; $5245: $b9
    xor c                                         ; $5246: $a9
    sbc c                                         ; $5247: $99
    halt                                          ; $5248: $76
    ld h, a                                       ; $5249: $67
    adc b                                         ; $524a: $88
    ld a, b                                       ; $524b: $78
    ld h, [hl]                                    ; $524c: $66
    ld a, b                                       ; $524d: $78
    adc b                                         ; $524e: $88
    xor d                                         ; $524f: $aa
    sbc d                                         ; $5250: $9a
    sbc c                                         ; $5251: $99
    ld [hl], l                                    ; $5252: $75
    ld d, h                                       ; $5253: $54
    ld d, l                                       ; $5254: $55
    ld h, [hl]                                    ; $5255: $66
    adc b                                         ; $5256: $88
    xor d                                         ; $5257: $aa
    cp d                                          ; $5258: $ba
    adc b                                         ; $5259: $88
    add a                                         ; $525a: $87
    sbc c                                         ; $525b: $99
    xor c                                         ; $525c: $a9
    adc c                                         ; $525d: $89
    sbc c                                         ; $525e: $99
    sub a                                         ; $525f: $97
    adc c                                         ; $5260: $89
    sub a                                         ; $5261: $97
    ld [hl], a                                    ; $5262: $77
    add a                                         ; $5263: $87
    ld h, l                                       ; $5264: $65
    ld d, h                                       ; $5265: $54
    ld h, l                                       ; $5266: $65
    inc [hl]                                      ; $5267: $34
    ld h, [hl]                                    ; $5268: $66
    ld d, h                                       ; $5269: $54
    ld b, l                                       ; $526a: $45
    halt                                          ; $526b: $76
    adc b                                         ; $526c: $88
    halt                                          ; $526d: $76
    ld d, [hl]                                    ; $526e: $56
    ld h, [hl]                                    ; $526f: $66
    ld b, [hl]                                    ; $5270: $46
    ld h, [hl]                                    ; $5271: $66
    adc c                                         ; $5272: $89
    ld [hl], l                                    ; $5273: $75
    ld h, a                                       ; $5274: $67
    ld d, l                                       ; $5275: $55
    ld d, l                                       ; $5276: $55
    ld d, h                                       ; $5277: $54
    ld b, h                                       ; $5278: $44
    ld d, [hl]                                    ; $5279: $56
    ld h, [hl]                                    ; $527a: $66
    add a                                         ; $527b: $87
    ld [hl], a                                    ; $527c: $77
    add a                                         ; $527d: $87
    ld h, l                                       ; $527e: $65
    ld d, [hl]                                    ; $527f: $56
    ld h, l                                       ; $5280: $65
    ld d, [hl]                                    ; $5281: $56
    ld h, [hl]                                    ; $5282: $66
    ld h, [hl]                                    ; $5283: $66
    ld h, [hl]                                    ; $5284: $66
    ld h, [hl]                                    ; $5285: $66
    adc b                                         ; $5286: $88
    halt                                          ; $5287: $76
    adc e                                         ; $5288: $8b
    cp e                                          ; $5289: $bb
    cp l                                          ; $528a: $bd
    rst $28                                       ; $528b: $ef
    xor $ed                                       ; $528c: $ee $ed
    call z, $ddbc                                 ; $528e: $cc $bc $dd
    call z, $97ca                                 ; $5291: $cc $ca $97
    ld h, l                                       ; $5294: $65
    ld h, [hl]                                    ; $5295: $66
    ld a, b                                       ; $5296: $78
    adc b                                         ; $5297: $88
    adc b                                         ; $5298: $88
    ld [hl], a                                    ; $5299: $77
    adc d                                         ; $529a: $8a
    cp d                                          ; $529b: $ba
    xor d                                         ; $529c: $aa
    adc b                                         ; $529d: $88
    adc b                                         ; $529e: $88
    sbc c                                         ; $529f: $99
    xor d                                         ; $52a0: $aa
    sub a                                         ; $52a1: $97
    adc c                                         ; $52a2: $89
    adc b                                         ; $52a3: $88
    sbc d                                         ; $52a4: $9a
    sbc c                                         ; $52a5: $99
    add a                                         ; $52a6: $87
    adc c                                         ; $52a7: $89
    sbc c                                         ; $52a8: $99
    cp l                                          ; $52a9: $bd
    res 0, a                                      ; $52aa: $cb $87
    ld h, [hl]                                    ; $52ac: $66
    ld h, l                                       ; $52ad: $65
    ld h, h                                       ; $52ae: $64
    ld b, e                                       ; $52af: $43
    inc h                                         ; $52b0: $24
    dec [hl]                                      ; $52b1: $35
    ld d, h                                       ; $52b2: $54
    ld b, h                                       ; $52b3: $44
    ld b, a                                       ; $52b4: $47
    ld h, a                                       ; $52b5: $67
    ld a, b                                       ; $52b6: $78
    sbc b                                         ; $52b7: $98
    adc b                                         ; $52b8: $88
    ld a, b                                       ; $52b9: $78
    ld h, [hl]                                    ; $52ba: $66
    ld a, b                                       ; $52bb: $78
    sbc c                                         ; $52bc: $99
    cp h                                          ; $52bd: $bc
    db $dd                                        ; $52be: $dd
    db $db                                        ; $52bf: $db
    sub a                                         ; $52c0: $97
    halt                                          ; $52c1: $76
    ld b, e                                       ; $52c2: $43
    ld b, l                                       ; $52c3: $45
    ld d, l                                       ; $52c4: $55
    ld d, [hl]                                    ; $52c5: $56
    ld d, l                                       ; $52c6: $55
    ld b, h                                       ; $52c7: $44
    ld b, h                                       ; $52c8: $44
    jr nz, jr_011_52cc                            ; $52c9: $20 $01

    inc hl                                        ; $52cb: $23

jr_011_52cc:
    ld hl, $5534                                  ; $52cc: $21 $34 $55
    ld d, h                                       ; $52cf: $54
    inc hl                                        ; $52d0: $23
    ld [hl+], a                                   ; $52d1: $22
    inc hl                                        ; $52d2: $23
    ld b, l                                       ; $52d3: $45
    ld h, a                                       ; $52d4: $67
    ld a, c                                       ; $52d5: $79
    xor c                                         ; $52d6: $a9
    xor c                                         ; $52d7: $a9
    adc c                                         ; $52d8: $89
    sbc e                                         ; $52d9: $9b
    xor e                                         ; $52da: $ab
    call z, $cddc                                 ; $52db: $cc $dc $cd
    sbc $dd                                       ; $52de: $de $dd
    sbc $cb                                       ; $52e0: $de $cb
    cp e                                          ; $52e2: $bb
    sub a                                         ; $52e3: $97
    ld h, h                                       ; $52e4: $64
    ld b, e                                       ; $52e5: $43
    dec [hl]                                      ; $52e6: $35
    ld a, b                                       ; $52e7: $78
    sbc c                                         ; $52e8: $99
    adc b                                         ; $52e9: $88
    adc b                                         ; $52ea: $88
    ld [hl], a                                    ; $52eb: $77
    ld [hl], a                                    ; $52ec: $77
    ld h, l                                       ; $52ed: $65
    halt                                          ; $52ee: $76
    ld h, l                                       ; $52ef: $65
    add a                                         ; $52f0: $87
    ld h, [hl]                                    ; $52f1: $66
    ld d, [hl]                                    ; $52f2: $56
    ld a, b                                       ; $52f3: $78
    xor e                                         ; $52f4: $ab
    cp d                                          ; $52f5: $ba
    adc d                                         ; $52f6: $8a
    res 7, e                                      ; $52f7: $cb $bb
    xor c                                         ; $52f9: $a9
    adc c                                         ; $52fa: $89
    adc c                                         ; $52fb: $89
    sbc d                                         ; $52fc: $9a
    cp e                                          ; $52fd: $bb
    call z, $bccc                                 ; $52fe: $cc $cc $bc
    call z, $baba                                 ; $5301: $cc $ba $ba
    adc c                                         ; $5304: $89
    adc b                                         ; $5305: $88
    sbc e                                         ; $5306: $9b
    res 2, [hl]                                   ; $5307: $cb $96
    ld h, h                                       ; $5309: $64
    ld b, [hl]                                    ; $530a: $46
    ld d, [hl]                                    ; $530b: $56
    ld h, l                                       ; $530c: $65
    ld h, [hl]                                    ; $530d: $66
    ld h, [hl]                                    ; $530e: $66
    ld [hl], a                                    ; $530f: $77
    ld h, [hl]                                    ; $5310: $66
    ld h, l                                       ; $5311: $65
    ld b, h                                       ; $5312: $44
    ld b, e                                       ; $5313: $43
    inc sp                                        ; $5314: $33
    inc [hl]                                      ; $5315: $34
    ld b, h                                       ; $5316: $44
    inc [hl]                                      ; $5317: $34
    ld b, l                                       ; $5318: $45
    ld b, a                                       ; $5319: $47
    adc d                                         ; $531a: $8a
    xor c                                         ; $531b: $a9
    adc b                                         ; $531c: $88
    add a                                         ; $531d: $87
    ld [hl], a                                    ; $531e: $77
    sbc d                                         ; $531f: $9a
    sbc d                                         ; $5320: $9a
    cp h                                          ; $5321: $bc
    res 5, c                                      ; $5322: $cb $a9
    sbc c                                         ; $5324: $99
    sub a                                         ; $5325: $97
    add a                                         ; $5326: $87
    ld a, b                                       ; $5327: $78
    add a                                         ; $5328: $87
    sbc c                                         ; $5329: $99
    adc b                                         ; $532a: $88
    ld a, c                                       ; $532b: $79
    sbc b                                         ; $532c: $98
    add a                                         ; $532d: $87
    adc c                                         ; $532e: $89
    sbc b                                         ; $532f: $98
    adc b                                         ; $5330: $88
    ld [hl], l                                    ; $5331: $75
    ld d, l                                       ; $5332: $55
    ld h, a                                       ; $5333: $67
    ld a, b                                       ; $5334: $78
    sbc d                                         ; $5335: $9a
    sbc b                                         ; $5336: $98
    halt                                          ; $5337: $76
    ld a, b                                       ; $5338: $78
    adc b                                         ; $5339: $88
    ld h, l                                       ; $533a: $65
    ld [hl+], a                                   ; $533b: $22
    ld hl, $2333                                  ; $533c: $21 $33 $23
    ld b, h                                       ; $533f: $44
    ld b, l                                       ; $5340: $45
    ld h, [hl]                                    ; $5341: $66
    ld b, h                                       ; $5342: $44
    ld h, l                                       ; $5343: $65
    ld d, h                                       ; $5344: $54
    ld [hl-], a                                   ; $5345: $32
    ld hl, $4513                                  ; $5346: $21 $13 $45
    ld d, [hl]                                    ; $5349: $56
    ld a, b                                       ; $534a: $78
    add a                                         ; $534b: $87
    adc b                                         ; $534c: $88
    sbc b                                         ; $534d: $98
    add a                                         ; $534e: $87
    ld h, l                                       ; $534f: $65
    ld h, [hl]                                    ; $5350: $66
    ld d, [hl]                                    ; $5351: $56
    ld [hl], a                                    ; $5352: $77
    ld h, [hl]                                    ; $5353: $66
    ld d, [hl]                                    ; $5354: $56
    ld a, b                                       ; $5355: $78
    sbc c                                         ; $5356: $99
    ld [hl], a                                    ; $5357: $77
    ld h, [hl]                                    ; $5358: $66
    ld h, a                                       ; $5359: $67
    ld a, b                                       ; $535a: $78
    ld a, c                                       ; $535b: $79
    sbc c                                         ; $535c: $99
    sbc c                                         ; $535d: $99
    xor c                                         ; $535e: $a9
    adc b                                         ; $535f: $88
    adc b                                         ; $5360: $88
    add a                                         ; $5361: $87
    adc b                                         ; $5362: $88
    xor h                                         ; $5363: $ac
    sbc $ff                                       ; $5364: $de $ff
    rst $38                                       ; $5366: $ff
    xor $ff                                       ; $5367: $ee $ff
    cp $dc                                        ; $5369: $fe $dc
    xor c                                         ; $536b: $a9
    sbc b                                         ; $536c: $98
    adc b                                         ; $536d: $88
    sbc c                                         ; $536e: $99
    sbc d                                         ; $536f: $9a
    xor e                                         ; $5370: $ab
    xor e                                         ; $5371: $ab
    call z, $ccdd                                 ; $5372: $cc $dd $cc
    cp h                                          ; $5375: $bc
    res 7, e                                      ; $5376: $cb $bb
    xor c                                         ; $5378: $a9
    add a                                         ; $5379: $87
    ld h, a                                       ; $537a: $67
    ld [hl], a                                    ; $537b: $77
    ld h, [hl]                                    ; $537c: $66
    ld h, [hl]                                    ; $537d: $66
    ld h, [hl]                                    ; $537e: $66
    ld h, [hl]                                    ; $537f: $66
    ld h, [hl]                                    ; $5380: $66
    ld b, l                                       ; $5381: $45
    ld d, l                                       ; $5382: $55
    ld h, [hl]                                    ; $5383: $66
    ld h, [hl]                                    ; $5384: $66
    ld [hl], a                                    ; $5385: $77
    ld h, [hl]                                    ; $5386: $66
    ld d, h                                       ; $5387: $54
    ld b, h                                       ; $5388: $44
    ld d, [hl]                                    ; $5389: $56
    ld h, a                                       ; $538a: $67
    ld a, b                                       ; $538b: $78
    halt                                          ; $538c: $76
    ld h, l                                       ; $538d: $65
    ld b, e                                       ; $538e: $43
    dec [hl]                                      ; $538f: $35
    ld b, h                                       ; $5390: $44
    ld d, l                                       ; $5391: $55
    ld h, a                                       ; $5392: $67
    adc b                                         ; $5393: $88
    ld [hl], a                                    ; $5394: $77
    ld h, [hl]                                    ; $5395: $66
    ld d, [hl]                                    ; $5396: $56
    ld h, [hl]                                    ; $5397: $66
    ld h, l                                       ; $5398: $65
    ld d, l                                       ; $5399: $55
    ld d, e                                       ; $539a: $53
    dec [hl]                                      ; $539b: $35
    ld d, l                                       ; $539c: $55
    ld h, [hl]                                    ; $539d: $66
    ld d, [hl]                                    ; $539e: $56
    ld [hl], a                                    ; $539f: $77
    adc b                                         ; $53a0: $88
    add a                                         ; $53a1: $87
    ld h, l                                       ; $53a2: $65
    ld [hl-], a                                   ; $53a3: $32
    ld [de], a                                    ; $53a4: $12
    inc h                                         ; $53a5: $24
    ld h, a                                       ; $53a6: $67
    ld h, [hl]                                    ; $53a7: $66
    ld h, a                                       ; $53a8: $67
    ld h, l                                       ; $53a9: $65
    ld d, l                                       ; $53aa: $55
    ld b, l                                       ; $53ab: $45
    ld b, e                                       ; $53ac: $43
    ld d, a                                       ; $53ad: $57
    ld [hl], a                                    ; $53ae: $77
    adc c                                         ; $53af: $89
    sbc b                                         ; $53b0: $98
    sbc b                                         ; $53b1: $98
    sbc c                                         ; $53b2: $99
    add a                                         ; $53b3: $87
    ld h, h                                       ; $53b4: $64
    ld b, l                                       ; $53b5: $45
    ld d, l                                       ; $53b6: $55
    ld a, c                                       ; $53b7: $79
    call z, $cdcc                                 ; $53b8: $cc $cc $cd
    call z, $99b9                                 ; $53bb: $cc $b9 $99
    xor d                                         ; $53be: $aa
    add a                                         ; $53bf: $87
    sbc b                                         ; $53c0: $98
    adc c                                         ; $53c1: $89
    xor d                                         ; $53c2: $aa
    cp e                                          ; $53c3: $bb
    cp e                                          ; $53c4: $bb
    sbc $dc                                       ; $53c5: $de $dc
    xor e                                         ; $53c7: $ab
    call z, $dccc                                 ; $53c8: $cc $cc $dc
    cp e                                          ; $53cb: $bb
    cp e                                          ; $53cc: $bb
    sbc c                                         ; $53cd: $99
    adc b                                         ; $53ce: $88
    sbc d                                         ; $53cf: $9a
    sbc c                                         ; $53d0: $99
    adc c                                         ; $53d1: $89
    adc b                                         ; $53d2: $88
    ld [hl], a                                    ; $53d3: $77
    add a                                         ; $53d4: $87
    ld [hl], a                                    ; $53d5: $77
    ld [hl], a                                    ; $53d6: $77
    halt                                          ; $53d7: $76
    ld d, l                                       ; $53d8: $55
    ld h, h                                       ; $53d9: $64
    inc hl                                        ; $53da: $23
    inc sp                                        ; $53db: $33
    ld b, [hl]                                    ; $53dc: $46
    halt                                          ; $53dd: $76
    ld d, [hl]                                    ; $53de: $56
    ld a, b                                       ; $53df: $78
    sub a                                         ; $53e0: $97
    halt                                          ; $53e1: $76
    ld h, a                                       ; $53e2: $67
    ld d, h                                       ; $53e3: $54
    ld d, [hl]                                    ; $53e4: $56
    adc c                                         ; $53e5: $89
    adc b                                         ; $53e6: $88
    ld h, a                                       ; $53e7: $67
    ld b, l                                       ; $53e8: $45
    halt                                          ; $53e9: $76
    ld [hl], a                                    ; $53ea: $77
    adc b                                         ; $53eb: $88
    adc b                                         ; $53ec: $88
    adc c                                         ; $53ed: $89
    xor e                                         ; $53ee: $ab
    xor d                                         ; $53ef: $aa
    sub [hl]                                      ; $53f0: $96
    ld d, a                                       ; $53f1: $57
    ld [hl], a                                    ; $53f2: $77
    ld a, b                                       ; $53f3: $78
    sbc c                                         ; $53f4: $99
    sbc b                                         ; $53f5: $98
    add [hl]                                      ; $53f6: $86
    ld h, a                                       ; $53f7: $67
    ld [hl], a                                    ; $53f8: $77
    ld h, l                                       ; $53f9: $65
    ld b, [hl]                                    ; $53fa: $46
    adc c                                         ; $53fb: $89
    xor c                                         ; $53fc: $a9
    xor e                                         ; $53fd: $ab
    xor d                                         ; $53fe: $aa
    adc c                                         ; $53ff: $89
    sbc b                                         ; $5400: $98
    sbc d                                         ; $5401: $9a
    cp h                                          ; $5402: $bc
    res 2, a                                      ; $5403: $cb $97
    halt                                          ; $5405: $76
    ld [hl-], a                                   ; $5406: $32
    inc [hl]                                      ; $5407: $34
    ld d, [hl]                                    ; $5408: $56
    ld a, b                                       ; $5409: $78
    adc c                                         ; $540a: $89
    xor d                                         ; $540b: $aa
    sbc b                                         ; $540c: $98
    ld a, c                                       ; $540d: $79
    xor h                                         ; $540e: $ac
    xor $dc                                       ; $540f: $ee $dc
    jp z, $8999                                   ; $5411: $ca $99 $89

    sbc c                                         ; $5414: $99
    adc b                                         ; $5415: $88
    ld [hl], a                                    ; $5416: $77
    ld [hl], a                                    ; $5417: $77
    ld [hl], a                                    ; $5418: $77
    ld a, b                                       ; $5419: $78
    adc c                                         ; $541a: $89
    xor e                                         ; $541b: $ab
    jp z, Jump_011_6597                           ; $541c: $ca $97 $65

    ld b, d                                       ; $541f: $42
    ld de, $1400                                  ; $5420: $11 $00 $14
    ld h, [hl]                                    ; $5423: $66
    ld h, [hl]                                    ; $5424: $66
    ld h, [hl]                                    ; $5425: $66
    ld a, b                                       ; $5426: $78
    sbc c                                         ; $5427: $99
    sub a                                         ; $5428: $97
    ld d, h                                       ; $5429: $54
    ld b, e                                       ; $542a: $43
    inc sp                                        ; $542b: $33
    inc sp                                        ; $542c: $33
    inc sp                                        ; $542d: $33
    ld hl, $1301                                  ; $542e: $21 $01 $13
    ld b, h                                       ; $5431: $44
    ld d, [hl]                                    ; $5432: $56
    ld [hl], a                                    ; $5433: $77
    halt                                          ; $5434: $76
    ld [hl], a                                    ; $5435: $77
    ld [hl], l                                    ; $5436: $75
    ld d, l                                       ; $5437: $55
    ld a, c                                       ; $5438: $79
    xor d                                         ; $5439: $aa
    cp e                                          ; $543a: $bb
    cp d                                          ; $543b: $ba
    xor b                                         ; $543c: $a8
    ld h, h                                       ; $543d: $64
    ld de, $4513                                  ; $543e: $11 $13 $45
    ld h, [hl]                                    ; $5441: $66
    ld h, [hl]                                    ; $5442: $66
    ld h, [hl]                                    ; $5443: $66
    ld h, a                                       ; $5444: $67
    adc b                                         ; $5445: $88
    adc b                                         ; $5446: $88
    ld [hl], a                                    ; $5447: $77
    ld [hl], a                                    ; $5448: $77
    sbc d                                         ; $5449: $9a
    cp h                                          ; $544a: $bc
    res 7, e                                      ; $544b: $cb $bb
    xor d                                         ; $544d: $aa
    xor d                                         ; $544e: $aa
    xor d                                         ; $544f: $aa
    xor d                                         ; $5450: $aa
    xor c                                         ; $5451: $a9
    sbc c                                         ; $5452: $99
    sbc c                                         ; $5453: $99
    sbc d                                         ; $5454: $9a
    xor e                                         ; $5455: $ab
    sbc $ef                                       ; $5456: $de $ef
    cp $ed                                        ; $5458: $fe $ed
    db $dd                                        ; $545a: $dd
    jp c, Jump_011_6798                           ; $545b: $da $98 $67

    adc b                                         ; $545e: $88
    sbc d                                         ; $545f: $9a
    cp h                                          ; $5460: $bc
    call $dbde                                    ; $5461: $cd $de $db
    xor d                                         ; $5464: $aa
    sbc b                                         ; $5465: $98
    adc b                                         ; $5466: $88
    halt                                          ; $5467: $76
    ld d, h                                       ; $5468: $54
    inc sp                                        ; $5469: $33
    inc [hl]                                      ; $546a: $34
    ld d, [hl]                                    ; $546b: $56
    ld l, b                                       ; $546c: $68
    add a                                         ; $546d: $87
    ld [hl], a                                    ; $546e: $77
    ld a, b                                       ; $546f: $78
    sbc b                                         ; $5470: $98
    sbc c                                         ; $5471: $99
    add a                                         ; $5472: $87
    ld [hl], a                                    ; $5473: $77
    halt                                          ; $5474: $76
    ld d, h                                       ; $5475: $54
    ld b, h                                       ; $5476: $44
    ld b, h                                       ; $5477: $44
    ld b, l                                       ; $5478: $45
    ld d, [hl]                                    ; $5479: $56
    ld h, l                                       ; $547a: $65
    ld b, e                                       ; $547b: $43
    ld d, [hl]                                    ; $547c: $56
    adc b                                         ; $547d: $88
    adc c                                         ; $547e: $89
    xor e                                         ; $547f: $ab
    xor b                                         ; $5480: $a8
    ld [hl], a                                    ; $5481: $77
    ld h, l                                       ; $5482: $65
    ld b, e                                       ; $5483: $43
    ld [hl+], a                                   ; $5484: $22
    inc [hl]                                      ; $5485: $34
    inc [hl]                                      ; $5486: $34
    ld d, l                                       ; $5487: $55
    ld [hl-], a                                   ; $5488: $32
    inc sp                                        ; $5489: $33
    inc sp                                        ; $548a: $33
    inc [hl]                                      ; $548b: $34
    ld d, [hl]                                    ; $548c: $56
    ld h, a                                       ; $548d: $67
    adc c                                         ; $548e: $89
    adc b                                         ; $548f: $88
    adc b                                         ; $5490: $88
    halt                                          ; $5491: $76
    ld d, l                                       ; $5492: $55
    ld h, [hl]                                    ; $5493: $66
    ld h, l                                       ; $5494: $65
    ld d, [hl]                                    ; $5495: $56
    ld l, b                                       ; $5496: $68
    adc b                                         ; $5497: $88
    halt                                          ; $5498: $76
    adc c                                         ; $5499: $89
    sbc c                                         ; $549a: $99
    add a                                         ; $549b: $87
    ld h, a                                       ; $549c: $67
    add a                                         ; $549d: $87
    ld h, a                                       ; $549e: $67
    ld a, b                                       ; $549f: $78
    sbc c                                         ; $54a0: $99
    sbc d                                         ; $54a1: $9a
    xor d                                         ; $54a2: $aa
    xor d                                         ; $54a3: $aa
    sbc b                                         ; $54a4: $98
    sbc d                                         ; $54a5: $9a
    res 5, c                                      ; $54a6: $cb $a9
    sbc b                                         ; $54a8: $98
    sbc d                                         ; $54a9: $9a
    xor d                                         ; $54aa: $aa
    cp h                                          ; $54ab: $bc
    cp e                                          ; $54ac: $bb
    cp d                                          ; $54ad: $ba
    sbc d                                         ; $54ae: $9a
    sbc b                                         ; $54af: $98
    sbc b                                         ; $54b0: $98
    ld a, b                                       ; $54b1: $78
    xor d                                         ; $54b2: $aa
    xor d                                         ; $54b3: $aa
    xor d                                         ; $54b4: $aa
    xor e                                         ; $54b5: $ab
    sbc c                                         ; $54b6: $99
    halt                                          ; $54b7: $76
    ld d, e                                       ; $54b8: $53
    ld b, h                                       ; $54b9: $44
    ld b, h                                       ; $54ba: $44
    ld b, [hl]                                    ; $54bb: $46
    ld [hl], a                                    ; $54bc: $77
    adc b                                         ; $54bd: $88
    ld [hl], l                                    ; $54be: $75
    ld h, l                                       ; $54bf: $65
    ld d, l                                       ; $54c0: $55
    ld d, h                                       ; $54c1: $54
    ld b, h                                       ; $54c2: $44
    ld b, l                                       ; $54c3: $45
    ld d, a                                       ; $54c4: $57
    sbc c                                         ; $54c5: $99
    xor c                                         ; $54c6: $a9
    ld [hl], a                                    ; $54c7: $77
    ld a, b                                       ; $54c8: $78
    adc c                                         ; $54c9: $89
    xor d                                         ; $54ca: $aa
    sub a                                         ; $54cb: $97
    ld a, c                                       ; $54cc: $79
    sbc b                                         ; $54cd: $98
    sbc b                                         ; $54ce: $98
    adc b                                         ; $54cf: $88
    adc b                                         ; $54d0: $88
    sbc d                                         ; $54d1: $9a
    xor d                                         ; $54d2: $aa
    cp e                                          ; $54d3: $bb
    call $fede                                    ; $54d4: $cd $de $fe
    ret                                           ; $54d7: $c9


    add a                                         ; $54d8: $87
    ld [hl], a                                    ; $54d9: $77
    ld h, l                                       ; $54da: $65
    ld d, [hl]                                    ; $54db: $56
    ld b, h                                       ; $54dc: $44
    ld d, l                                       ; $54dd: $55
    ld h, [hl]                                    ; $54de: $66
    ld h, l                                       ; $54df: $65
    ld h, a                                       ; $54e0: $67
    adc d                                         ; $54e1: $8a
    cp b                                          ; $54e2: $b8
    ld a, b                                       ; $54e3: $78
    ld [hl], l                                    ; $54e4: $75
    ld d, h                                       ; $54e5: $54
    ld d, l                                       ; $54e6: $55
    ld d, a                                       ; $54e7: $57
    ld a, b                                       ; $54e8: $78
    adc b                                         ; $54e9: $88
    halt                                          ; $54ea: $76
    ld a, b                                       ; $54eb: $78
    adc b                                         ; $54ec: $88
    adc c                                         ; $54ed: $89
    sbc c                                         ; $54ee: $99
    cp d                                          ; $54ef: $ba
    sub a                                         ; $54f0: $97
    ld a, b                                       ; $54f1: $78
    sbc c                                         ; $54f2: $99
    add [hl]                                      ; $54f3: $86
    ld h, [hl]                                    ; $54f4: $66
    ld b, c                                       ; $54f5: $41
    ld [de], a                                    ; $54f6: $12
    inc de                                        ; $54f7: $13
    ld b, l                                       ; $54f8: $45
    ld d, [hl]                                    ; $54f9: $56
    ld h, a                                       ; $54fa: $67
    ld h, a                                       ; $54fb: $67
    sbc d                                         ; $54fc: $9a
    cp e                                          ; $54fd: $bb
    res 7, d                                      ; $54fe: $cb $ba
    xor d                                         ; $5500: $aa
    sbc b                                         ; $5501: $98
    ld h, h                                       ; $5502: $64
    ld b, e                                       ; $5503: $43
    ld b, h                                       ; $5504: $44
    ld b, d                                       ; $5505: $42
    ld de, $3411                                  ; $5506: $11 $11 $34
    ld d, a                                       ; $5509: $57
    adc d                                         ; $550a: $8a
    call z, $99b9                                 ; $550b: $cc $b9 $99
    ld a, b                                       ; $550e: $78
    adc b                                         ; $550f: $88
    sbc d                                         ; $5510: $9a
    xor c                                         ; $5511: $a9
    sbc c                                         ; $5512: $99
    add [hl]                                      ; $5513: $86
    ld h, [hl]                                    ; $5514: $66
    ld l, b                                       ; $5515: $68
    xor d                                         ; $5516: $aa
    sbc c                                         ; $5517: $99
    adc c                                         ; $5518: $89
    xor c                                         ; $5519: $a9
    ld a, b                                       ; $551a: $78
    xor h                                         ; $551b: $ac
    jp z, Jump_011_5798                           ; $551c: $ca $98 $57

    halt                                          ; $551f: $76
    add a                                         ; $5520: $87
    sbc d                                         ; $5521: $9a
    add l                                         ; $5522: $85
    ld b, d                                       ; $5523: $42
    inc h                                         ; $5524: $24
    ld a, b                                       ; $5525: $78
    ld a, c                                       ; $5526: $79
    cp e                                          ; $5527: $bb
    add a                                         ; $5528: $87
    ld h, [hl]                                    ; $5529: $66
    adc c                                         ; $552a: $89
    sbc b                                         ; $552b: $98
    add a                                         ; $552c: $87
    adc c                                         ; $552d: $89
    add a                                         ; $552e: $87
    ld h, a                                       ; $552f: $67
    sbc d                                         ; $5530: $9a
    sbc b                                         ; $5531: $98
    sbc c                                         ; $5532: $99
    sbc d                                         ; $5533: $9a
    xor d                                         ; $5534: $aa
    sbc b                                         ; $5535: $98
    adc c                                         ; $5536: $89
    xor l                                         ; $5537: $ad
    call c, $8ab8                                 ; $5538: $dc $b8 $8a
    sbc e                                         ; $553b: $9b
    adc $ed                                       ; $553c: $ce $ed
    call c, $babb                                 ; $553e: $dc $bb $ba
    add a                                         ; $5541: $87
    sbc b                                         ; $5542: $98
    add a                                         ; $5543: $87
    ld [hl], a                                    ; $5544: $77
    ld [hl], a                                    ; $5545: $77
    ld h, l                                       ; $5546: $65
    ld d, [hl]                                    ; $5547: $56
    ld h, a                                       ; $5548: $67
    adc b                                         ; $5549: $88
    adc d                                         ; $554a: $8a
    cp e                                          ; $554b: $bb
    sub [hl]                                      ; $554c: $96
    ld b, e                                       ; $554d: $43
    ld b, h                                       ; $554e: $44
    ld b, h                                       ; $554f: $44
    ld h, a                                       ; $5550: $67
    adc c                                         ; $5551: $89
    sbc b                                         ; $5552: $98
    adc b                                         ; $5553: $88
    sbc c                                         ; $5554: $99
    add a                                         ; $5555: $87
    ld h, l                                       ; $5556: $65
    ld b, e                                       ; $5557: $43
    db $10                                        ; $5558: $10
    ld bc, $3423                                  ; $5559: $01 $23 $34
    ld b, l                                       ; $555c: $45
    ld d, h                                       ; $555d: $54
    ld [hl+], a                                   ; $555e: $22
    inc [hl]                                      ; $555f: $34
    dec [hl]                                      ; $5560: $35
    ld d, e                                       ; $5561: $53
    inc hl                                        ; $5562: $23
    ld [de], a                                    ; $5563: $12
    inc h                                         ; $5564: $24
    ld d, a                                       ; $5565: $57
    add a                                         ; $5566: $87
    ld [hl], a                                    ; $5567: $77
    add a                                         ; $5568: $87
    ld h, [hl]                                    ; $5569: $66
    ld b, h                                       ; $556a: $44
    ld d, l                                       ; $556b: $55
    ld l, b                                       ; $556c: $68
    sbc c                                         ; $556d: $99
    adc b                                         ; $556e: $88
    adc b                                         ; $556f: $88
    sbc d                                         ; $5570: $9a
    sbc b                                         ; $5571: $98
    adc c                                         ; $5572: $89
    sbc b                                         ; $5573: $98
    ld [hl], a                                    ; $5574: $77
    sbc c                                         ; $5575: $99
    sub a                                         ; $5576: $97
    ld h, l                                       ; $5577: $65
    ld d, [hl]                                    ; $5578: $56
    ld a, b                                       ; $5579: $78
    ld a, b                                       ; $557a: $78
    xor e                                         ; $557b: $ab
    call z, $cccc                                 ; $557c: $cc $cc $cc
    cp c                                          ; $557f: $b9
    add [hl]                                      ; $5580: $86
    ld d, l                                       ; $5581: $55
    ld l, b                                       ; $5582: $68
    xor e                                         ; $5583: $ab
    call z, $cbdd                                 ; $5584: $cc $dd $cb
    cp d                                          ; $5587: $ba
    cp h                                          ; $5588: $bc
    call z, $ddbc                                 ; $5589: $cc $bc $dd
    rst $38                                       ; $558c: $ff
    cp $ca                                        ; $558d: $fe $ca
    xor e                                         ; $558f: $ab
    set 1, h                                      ; $5590: $cb $cc
    db $dd                                        ; $5592: $dd
    res 5, c                                      ; $5593: $cb $a9
    ld [hl], l                                    ; $5595: $75
    ld b, l                                       ; $5596: $45
    ld d, h                                       ; $5597: $54
    ld d, [hl]                                    ; $5598: $56
    ld [hl], a                                    ; $5599: $77
    ld [hl], a                                    ; $559a: $77
    ld h, a                                       ; $559b: $67
    halt                                          ; $559c: $76
    ld b, e                                       ; $559d: $43
    ld hl, $2311                                  ; $559e: $21 $11 $23
    ld b, h                                       ; $55a1: $44
    ld h, l                                       ; $55a2: $65
    ld d, l                                       ; $55a3: $55
    ld b, h                                       ; $55a4: $44
    ld b, d                                       ; $55a5: $42
    ld de, $2202                                  ; $55a6: $11 $02 $22
    ld de, $3412                                  ; $55a9: $11 $12 $34
    ld l, b                                       ; $55ac: $68
    adc c                                         ; $55ad: $89
    sbc b                                         ; $55ae: $98
    sbc c                                         ; $55af: $99
    adc b                                         ; $55b0: $88
    sbc c                                         ; $55b1: $99
    cp d                                          ; $55b2: $ba
    xor c                                         ; $55b3: $a9
    adc c                                         ; $55b4: $89
    xor e                                         ; $55b5: $ab
    call z, $ccdd                                 ; $55b6: $cc $dd $cc
    sbc $ee                                       ; $55b9: $de $ee
    db $dd                                        ; $55bb: $dd
    res 5, b                                      ; $55bc: $cb $a8
    ld h, l                                       ; $55be: $65
    ld h, [hl]                                    ; $55bf: $66
    ld h, [hl]                                    ; $55c0: $66
    ld h, a                                       ; $55c1: $67
    ld h, h                                       ; $55c2: $64
    inc sp                                        ; $55c3: $33
    inc [hl]                                      ; $55c4: $34
    ld b, l                                       ; $55c5: $45
    ld d, h                                       ; $55c6: $54
    ld d, l                                       ; $55c7: $55
    ld d, l                                       ; $55c8: $55
    ld d, l                                       ; $55c9: $55
    ld d, l                                       ; $55ca: $55
    ld e, b                                       ; $55cb: $58
    cp d                                          ; $55cc: $ba
    xor b                                         ; $55cd: $a8
    adc b                                         ; $55ce: $88
    xor c                                         ; $55cf: $a9
    adc b                                         ; $55d0: $88
    halt                                          ; $55d1: $76
    ld a, b                                       ; $55d2: $78
    xor e                                         ; $55d3: $ab
    cp h                                          ; $55d4: $bc
    call z, $bbba                                 ; $55d5: $cc $ba $bb
    xor b                                         ; $55d8: $a8
    ld [hl], a                                    ; $55d9: $77
    adc c                                         ; $55da: $89
    cp e                                          ; $55db: $bb
    jp z, $89a9                                   ; $55dc: $ca $a9 $89

    adc b                                         ; $55df: $88
    adc b                                         ; $55e0: $88
    halt                                          ; $55e1: $76
    ld d, [hl]                                    ; $55e2: $56
    ld h, a                                       ; $55e3: $67
    ld [hl], a                                    ; $55e4: $77
    ld [hl], a                                    ; $55e5: $77
    adc b                                         ; $55e6: $88
    ld h, l                                       ; $55e7: $65
    ld b, h                                       ; $55e8: $44
    ld d, a                                       ; $55e9: $57
    adc b                                         ; $55ea: $88
    sbc c                                         ; $55eb: $99
    sbc c                                         ; $55ec: $99
    sbc b                                         ; $55ed: $98
    adc b                                         ; $55ee: $88
    halt                                          ; $55ef: $76
    ld d, l                                       ; $55f0: $55
    ld d, h                                       ; $55f1: $54
    ld d, a                                       ; $55f2: $57
    ld [hl], l                                    ; $55f3: $75
    ld d, e                                       ; $55f4: $53
    jr nz, jr_011_55f8                            ; $55f5: $20 $01

    dec [hl]                                      ; $55f7: $35

jr_011_55f8:
    ld h, [hl]                                    ; $55f8: $66
    ld a, b                                       ; $55f9: $78
    sbc c                                         ; $55fa: $99
    xor d                                         ; $55fb: $aa
    xor c                                         ; $55fc: $a9
    add a                                         ; $55fd: $87
    ld h, l                                       ; $55fe: $65
    ld a, b                                       ; $55ff: $78
    add a                                         ; $5600: $87
    ld h, [hl]                                    ; $5601: $66
    ld h, [hl]                                    ; $5602: $66
    ld h, a                                       ; $5603: $67
    adc d                                         ; $5604: $8a
    xor c                                         ; $5605: $a9
    halt                                          ; $5606: $76
    ld d, l                                       ; $5607: $55
    ld d, l                                       ; $5608: $55
    ld d, l                                       ; $5609: $55
    ld l, b                                       ; $560a: $68
    adc b                                         ; $560b: $88
    ld h, [hl]                                    ; $560c: $66
    ld h, a                                       ; $560d: $67
    ld a, b                                       ; $560e: $78
    sbc b                                         ; $560f: $98
    xor d                                         ; $5610: $aa
    xor h                                         ; $5611: $ac
    db $db                                        ; $5612: $db
    cp d                                          ; $5613: $ba
    cp h                                          ; $5614: $bc
    call z, $89a9                                 ; $5615: $cc $a9 $89
    sbc c                                         ; $5618: $99
    sbc b                                         ; $5619: $98
    sbc c                                         ; $561a: $99
    xor c                                         ; $561b: $a9
    sbc c                                         ; $561c: $99
    sub a                                         ; $561d: $97
    halt                                          ; $561e: $76
    ld d, [hl]                                    ; $561f: $56
    add [hl]                                      ; $5620: $86
    ld d, l                                       ; $5621: $55
    ld d, l                                       ; $5622: $55
    ld d, a                                       ; $5623: $57
    sbc d                                         ; $5624: $9a
    xor c                                         ; $5625: $a9
    sbc c                                         ; $5626: $99
    xor h                                         ; $5627: $ac
    set 1, h                                      ; $5628: $cb $cc
    xor e                                         ; $562a: $ab
    xor c                                         ; $562b: $a9
    xor e                                         ; $562c: $ab
    xor c                                         ; $562d: $a9
    sbc c                                         ; $562e: $99
    xor c                                         ; $562f: $a9
    sbc b                                         ; $5630: $98
    adc b                                         ; $5631: $88
    ld h, l                                       ; $5632: $65
    ld [hl], a                                    ; $5633: $77
    ld [hl], a                                    ; $5634: $77
    ld h, [hl]                                    ; $5635: $66
    ld h, [hl]                                    ; $5636: $66
    ld a, b                                       ; $5637: $78
    sbc c                                         ; $5638: $99
    xor d                                         ; $5639: $aa
    sbc c                                         ; $563a: $99
    xor d                                         ; $563b: $aa
    sbc b                                         ; $563c: $98
    ld [hl], a                                    ; $563d: $77
    add a                                         ; $563e: $87
    ld h, l                                       ; $563f: $65
    ld h, a                                       ; $5640: $67
    adc b                                         ; $5641: $88
    add a                                         ; $5642: $87
    halt                                          ; $5643: $76
    ld h, l                                       ; $5644: $65
    ld b, d                                       ; $5645: $42
    inc hl                                        ; $5646: $23
    ld [hl+], a                                   ; $5647: $22
    ld de, $0100                                  ; $5648: $11 $00 $01
    inc hl                                        ; $564b: $23
    inc [hl]                                      ; $564c: $34
    ld h, a                                       ; $564d: $67
    adc b                                         ; $564e: $88
    ld [hl], a                                    ; $564f: $77
    adc d                                         ; $5650: $8a
    sbc b                                         ; $5651: $98
    ld h, a                                       ; $5652: $67
    sub a                                         ; $5653: $97
    ld l, b                                       ; $5654: $68
    add [hl]                                      ; $5655: $86
    ld d, l                                       ; $5656: $55
    ld d, a                                       ; $5657: $57
    adc b                                         ; $5658: $88
    xor d                                         ; $5659: $aa
    cp e                                          ; $565a: $bb
    db $dd                                        ; $565b: $dd
    cp d                                          ; $565c: $ba
    sbc b                                         ; $565d: $98
    ld h, h                                       ; $565e: $64
    inc [hl]                                      ; $565f: $34
    ld h, a                                       ; $5660: $67
    ld [hl], a                                    ; $5661: $77
    ld a, b                                       ; $5662: $78
    adc c                                         ; $5663: $89
    cp e                                          ; $5664: $bb
    xor c                                         ; $5665: $a9
    adc b                                         ; $5666: $88
    add a                                         ; $5667: $87
    adc b                                         ; $5668: $88
    adc b                                         ; $5669: $88
    add a                                         ; $566a: $87
    ld a, c                                       ; $566b: $79
    sbc b                                         ; $566c: $98
    ld h, l                                       ; $566d: $65
    ld b, h                                       ; $566e: $44
    ld b, l                                       ; $566f: $45
    ld d, l                                       ; $5670: $55
    ld d, h                                       ; $5671: $54
    inc sp                                        ; $5672: $33
    ld b, l                                       ; $5673: $45
    ld h, a                                       ; $5674: $67
    adc c                                         ; $5675: $89
    adc c                                         ; $5676: $89
    xor e                                         ; $5677: $ab
    call z, $97cb                                 ; $5678: $cc $cb $97
    ld a, b                                       ; $567b: $78
    adc b                                         ; $567c: $88
    add a                                         ; $567d: $87
    ld h, [hl]                                    ; $567e: $66
    adc d                                         ; $567f: $8a
    cp h                                          ; $5680: $bc
    call c, $bbcb                                 ; $5681: $dc $cb $bb
    cp e                                          ; $5684: $bb
    res 7, e                                      ; $5685: $cb $bb
    xor c                                         ; $5687: $a9
    sbc c                                         ; $5688: $99
    sbc c                                         ; $5689: $99
    cp [hl]                                       ; $568a: $be
    db $ec                                        ; $568b: $ec
    xor d                                         ; $568c: $aa
    cp d                                          ; $568d: $ba
    add a                                         ; $568e: $87
    ld d, h                                       ; $568f: $54
    inc sp                                        ; $5690: $33
    inc hl                                        ; $5691: $23
    inc [hl]                                      ; $5692: $34
    ld h, [hl]                                    ; $5693: $66
    ld h, a                                       ; $5694: $67
    add a                                         ; $5695: $87
    ld [hl], a                                    ; $5696: $77
    ld [hl], a                                    ; $5697: $77
    ld [hl], l                                    ; $5698: $75
    ld d, h                                       ; $5699: $54
    ld b, h                                       ; $569a: $44
    ld b, h                                       ; $569b: $44
    ld d, h                                       ; $569c: $54
    inc sp                                        ; $569d: $33
    inc sp                                        ; $569e: $33
    ld b, h                                       ; $569f: $44
    ld b, h                                       ; $56a0: $44
    ld b, e                                       ; $56a1: $43
    ld b, l                                       ; $56a2: $45
    ld d, h                                       ; $56a3: $54
    ld e, b                                       ; $56a4: $58
    sbc d                                         ; $56a5: $9a
    xor d                                         ; $56a6: $aa
    cp e                                          ; $56a7: $bb
    sbc b                                         ; $56a8: $98
    ld [hl], a                                    ; $56a9: $77
    sbc c                                         ; $56aa: $99
    sbc e                                         ; $56ab: $9b
    call $a9cb                                    ; $56ac: $cd $cb $a9
    xor h                                         ; $56af: $ac
    call c, $bbcc                                 ; $56b0: $dc $cc $bb
    xor c                                         ; $56b3: $a9
    sbc d                                         ; $56b4: $9a
    xor e                                         ; $56b5: $ab
    sbc $ed                                       ; $56b6: $de $ed
    res 7, d                                      ; $56b8: $cb $ba
    adc b                                         ; $56ba: $88
    ld [hl], l                                    ; $56bb: $75
    ld b, l                                       ; $56bc: $45
    ld d, e                                       ; $56bd: $53
    ld de, $3521                                  ; $56be: $11 $21 $35
    adc c                                         ; $56c1: $89
    sbc d                                         ; $56c2: $9a
    xor d                                         ; $56c3: $aa
    xor c                                         ; $56c4: $a9
    halt                                          ; $56c5: $76
    ld d, h                                       ; $56c6: $54
    ld b, h                                       ; $56c7: $44
    inc sp                                        ; $56c8: $33
    ld [hl], $88                                  ; $56c9: $36 $88
    ld [hl], a                                    ; $56cb: $77
    ld [hl], a                                    ; $56cc: $77
    ld h, l                                       ; $56cd: $65
    ld d, [hl]                                    ; $56ce: $56
    ld h, [hl]                                    ; $56cf: $66
    ld d, h                                       ; $56d0: $54
    inc sp                                        ; $56d1: $33
    ld d, a                                       ; $56d2: $57
    adc b                                         ; $56d3: $88
    adc b                                         ; $56d4: $88
    adc b                                         ; $56d5: $88
    adc b                                         ; $56d6: $88
    halt                                          ; $56d7: $76
    ld d, h                                       ; $56d8: $54
    inc hl                                        ; $56d9: $23
    ld d, [hl]                                    ; $56da: $56
    ld d, l                                       ; $56db: $55
    ld d, l                                       ; $56dc: $55
    ld b, e                                       ; $56dd: $43
    ld d, [hl]                                    ; $56de: $56
    ld [hl], a                                    ; $56df: $77
    adc c                                         ; $56e0: $89
    sbc b                                         ; $56e1: $98
    ld [hl], a                                    ; $56e2: $77
    sbc c                                         ; $56e3: $99
    sbc b                                         ; $56e4: $98
    halt                                          ; $56e5: $76
    ld d, l                                       ; $56e6: $55
    ld a, b                                       ; $56e7: $78
    ld [hl], a                                    ; $56e8: $77
    adc c                                         ; $56e9: $89
    xor h                                         ; $56ea: $ac
    rst $18                                       ; $56eb: $df
    db $fd                                        ; $56ec: $fd
    cp e                                          ; $56ed: $bb
    sub a                                         ; $56ee: $97
    ld h, [hl]                                    ; $56ef: $66
    ld d, [hl]                                    ; $56f0: $56
    ld a, b                                       ; $56f1: $78
    adc b                                         ; $56f2: $88
    adc b                                         ; $56f3: $88
    ld [hl], a                                    ; $56f4: $77
    ld d, h                                       ; $56f5: $54
    ld d, [hl]                                    ; $56f6: $56
    adc c                                         ; $56f7: $89
    cp e                                          ; $56f8: $bb
    xor d                                         ; $56f9: $aa
    xor d                                         ; $56fa: $aa
    xor c                                         ; $56fb: $a9
    add a                                         ; $56fc: $87
    ld [hl], a                                    ; $56fd: $77
    adc c                                         ; $56fe: $89
    sbc b                                         ; $56ff: $98
    sbc c                                         ; $5700: $99
    adc b                                         ; $5701: $88
    sbc b                                         ; $5702: $98
    ld [hl], a                                    ; $5703: $77
    ld a, b                                       ; $5704: $78
    halt                                          ; $5705: $76
    ld h, [hl]                                    ; $5706: $66
    ld d, l                                       ; $5707: $55
    ld d, l                                       ; $5708: $55
    ld h, a                                       ; $5709: $67
    ld [hl], a                                    ; $570a: $77
    adc b                                         ; $570b: $88
    sbc c                                         ; $570c: $99
    xor e                                         ; $570d: $ab
    sbc $dd                                       ; $570e: $de $dd
    db $db                                        ; $5710: $db
    cp c                                          ; $5711: $b9
    adc c                                         ; $5712: $89
    sbc c                                         ; $5713: $99
    sbc d                                         ; $5714: $9a
    cp d                                          ; $5715: $ba
    add a                                         ; $5716: $87
    ld h, [hl]                                    ; $5717: $66
    ld [hl], a                                    ; $5718: $77
    adc c                                         ; $5719: $89
    xor c                                         ; $571a: $a9
    sbc c                                         ; $571b: $99
    sbc c                                         ; $571c: $99
    adc b                                         ; $571d: $88
    add a                                         ; $571e: $87
    ld h, a                                       ; $571f: $67
    add a                                         ; $5720: $87
    adc c                                         ; $5721: $89
    sbc d                                         ; $5722: $9a
    xor d                                         ; $5723: $aa
    xor d                                         ; $5724: $aa
    sbc b                                         ; $5725: $98
    ld [hl], a                                    ; $5726: $77
    ld a, b                                       ; $5727: $78
    ld h, [hl]                                    ; $5728: $66
    ld d, h                                       ; $5729: $54
    jr nz, jr_011_572c                            ; $572a: $20 $00

jr_011_572c:
    nop                                           ; $572c: $00
    ld [de], a                                    ; $572d: $12
    ld [hl+], a                                   ; $572e: $22
    inc hl                                        ; $572f: $23
    inc [hl]                                      ; $5730: $34
    ld d, l                                       ; $5731: $55
    ld d, l                                       ; $5732: $55
    ld h, [hl]                                    ; $5733: $66
    ld h, [hl]                                    ; $5734: $66
    ld d, l                                       ; $5735: $55
    ld h, [hl]                                    ; $5736: $66
    adc d                                         ; $5737: $8a
    cp e                                          ; $5738: $bb
    db $dd                                        ; $5739: $dd
    cp d                                          ; $573a: $ba
    sbc c                                         ; $573b: $99
    cp h                                          ; $573c: $bc
    cp e                                          ; $573d: $bb
    xor d                                         ; $573e: $aa
    cp c                                          ; $573f: $b9
    sbc b                                         ; $5740: $98
    ld a, b                                       ; $5741: $78
    ld [hl], a                                    ; $5742: $77
    ld h, [hl]                                    ; $5743: $66
    ld h, [hl]                                    ; $5744: $66
    ld h, [hl]                                    ; $5745: $66
    ld d, [hl]                                    ; $5746: $56
    ld d, l                                       ; $5747: $55
    ld b, h                                       ; $5748: $44
    ld b, l                                       ; $5749: $45
    ld d, [hl]                                    ; $574a: $56
    ld d, l                                       ; $574b: $55
    ld b, h                                       ; $574c: $44
    ld h, a                                       ; $574d: $67
    sbc d                                         ; $574e: $9a
    xor e                                         ; $574f: $ab
    call $fdee                                    ; $5750: $cd $ee $fd
    jp z, $aaba                                   ; $5753: $ca $ba $aa

    xor c                                         ; $5756: $a9
    sbc c                                         ; $5757: $99
    sbc c                                         ; $5758: $99
    add a                                         ; $5759: $87
    ld h, [hl]                                    ; $575a: $66
    ld [hl], a                                    ; $575b: $77
    add a                                         ; $575c: $87
    ld a, b                                       ; $575d: $78
    ld [hl], a                                    ; $575e: $77
    ld h, l                                       ; $575f: $65
    ld h, l                                       ; $5760: $65
    ld b, e                                       ; $5761: $43
    ld b, e                                       ; $5762: $43
    ld [hl-], a                                   ; $5763: $32
    inc sp                                        ; $5764: $33
    ld b, h                                       ; $5765: $44
    ld d, [hl]                                    ; $5766: $56
    ld a, b                                       ; $5767: $78
    adc c                                         ; $5768: $89
    sub a                                         ; $5769: $97
    ld d, l                                       ; $576a: $55
    ld h, [hl]                                    ; $576b: $66
    ld h, [hl]                                    ; $576c: $66
    ld a, b                                       ; $576d: $78
    sbc d                                         ; $576e: $9a
    cp l                                          ; $576f: $bd
    xor $dd                                       ; $5770: $ee $dd
    res 5, b                                      ; $5772: $cb $a8
    adc d                                         ; $5774: $8a
    xor d                                         ; $5775: $aa
    sub a                                         ; $5776: $97
    ld h, l                                       ; $5777: $65
    ld d, h                                       ; $5778: $54
    ld d, [hl]                                    ; $5779: $56
    ld h, [hl]                                    ; $577a: $66
    sbc d                                         ; $577b: $9a
    cp h                                          ; $577c: $bc
    jp z, $aaab                                   ; $577d: $ca $ab $aa

    cp e                                          ; $5780: $bb
    cp e                                          ; $5781: $bb
    xor d                                         ; $5782: $aa
    sub a                                         ; $5783: $97
    ld d, e                                       ; $5784: $53

Jump_011_5785:
    ld hl, $4523                                  ; $5785: $21 $23 $45
    ld b, e                                       ; $5788: $43
    ld b, [hl]                                    ; $5789: $46
    ld h, [hl]                                    ; $578a: $66
    ld a, c                                       ; $578b: $79
    cp e                                          ; $578c: $bb
    xor e                                         ; $578d: $ab
    xor c                                         ; $578e: $a9
    sbc b                                         ; $578f: $98
    adc c                                         ; $5790: $89
    adc b                                         ; $5791: $88
    adc b                                         ; $5792: $88
    halt                                          ; $5793: $76
    ld [hl], l                                    ; $5794: $75
    ld d, l                                       ; $5795: $55
    ld h, a                                       ; $5796: $67
    adc c                                         ; $5797: $89

Jump_011_5798:
    adc c                                         ; $5798: $89
    xor d                                         ; $5799: $aa
    xor c                                         ; $579a: $a9
    add a                                         ; $579b: $87
    ld h, [hl]                                    ; $579c: $66
    adc b                                         ; $579d: $88
    adc c                                         ; $579e: $89
    sbc c                                         ; $579f: $99
    sbc b                                         ; $57a0: $98
    ld [hl], l                                    ; $57a1: $75
    ld b, e                                       ; $57a2: $43
    inc sp                                        ; $57a3: $33
    dec [hl]                                      ; $57a4: $35
    ld d, [hl]                                    ; $57a5: $56
    ld a, c                                       ; $57a6: $79
    cp e                                          ; $57a7: $bb
    xor c                                         ; $57a8: $a9
    adc c                                         ; $57a9: $89
    add [hl]                                      ; $57aa: $86
    ld [hl-], a                                   ; $57ab: $32
    inc hl                                        ; $57ac: $23
    ld b, l                                       ; $57ad: $45
    ld a, b                                       ; $57ae: $78
    adc b                                         ; $57af: $88
    adc c                                         ; $57b0: $89
    sbc c                                         ; $57b1: $99
    sbc d                                         ; $57b2: $9a
    xor c                                         ; $57b3: $a9
    adc c                                         ; $57b4: $89
    sbc d                                         ; $57b5: $9a
    xor e                                         ; $57b6: $ab
    res 5, d                                      ; $57b7: $cb $aa
    adc b                                         ; $57b9: $88
    add a                                         ; $57ba: $87
    ld h, l                                       ; $57bb: $65
    ld d, l                                       ; $57bc: $55
    ld [hl], a                                    ; $57bd: $77
    adc b                                         ; $57be: $88
    ld [hl], a                                    ; $57bf: $77
    ld h, [hl]                                    ; $57c0: $66
    ld h, h                                       ; $57c1: $64
    ld b, h                                       ; $57c2: $44
    ld d, [hl]                                    ; $57c3: $56
    ld [hl], a                                    ; $57c4: $77
    halt                                          ; $57c5: $76
    ld h, [hl]                                    ; $57c6: $66
    ld h, [hl]                                    ; $57c7: $66
    ld [hl], a                                    ; $57c8: $77
    ld [hl], a                                    ; $57c9: $77
    halt                                          ; $57ca: $76
    ld h, [hl]                                    ; $57cb: $66
    ld [hl], a                                    ; $57cc: $77
    ld h, [hl]                                    ; $57cd: $66
    ld d, l                                       ; $57ce: $55
    ld d, h                                       ; $57cf: $54
    ld b, h                                       ; $57d0: $44
    ld h, l                                       ; $57d1: $65
    ld h, a                                       ; $57d2: $67
    ld [hl], a                                    ; $57d3: $77
    adc c                                         ; $57d4: $89
    sbc c                                         ; $57d5: $99
    sbc b                                         ; $57d6: $98
    adc c                                         ; $57d7: $89
    sbc c                                         ; $57d8: $99
    adc b                                         ; $57d9: $88
    sbc c                                         ; $57da: $99
    xor e                                         ; $57db: $ab
    sbc $ff                                       ; $57dc: $de $ff
    db $ed                                        ; $57de: $ed
    call c, $aaba                                 ; $57df: $dc $ba $aa
    sbc b                                         ; $57e2: $98
    ld a, b                                       ; $57e3: $78
    xor e                                         ; $57e4: $ab
    cp e                                          ; $57e5: $bb
    cp d                                          ; $57e6: $ba
    xor c                                         ; $57e7: $a9
    adc b                                         ; $57e8: $88
    adc b                                         ; $57e9: $88
    sbc d                                         ; $57ea: $9a
    sbc d                                         ; $57eb: $9a
    xor e                                         ; $57ec: $ab
    call Call_011_75ca                            ; $57ed: $cd $ca $75
    ld d, h                                       ; $57f0: $54
    ld hl, $2123                                  ; $57f1: $21 $23 $21
    ld [de], a                                    ; $57f4: $12
    ld [hl+], a                                   ; $57f5: $22
    inc [hl]                                      ; $57f6: $34
    ld d, d                                       ; $57f7: $52
    ld hl, $3412                                  ; $57f8: $21 $12 $34
    ld d, a                                       ; $57fb: $57
    adc c                                         ; $57fc: $89
    xor d                                         ; $57fd: $aa
    xor d                                         ; $57fe: $aa
    xor c                                         ; $57ff: $a9
    sbc c                                         ; $5800: $99
    xor e                                         ; $5801: $ab
    cp e                                          ; $5802: $bb
    xor c                                         ; $5803: $a9
    add a                                         ; $5804: $87
    ld a, b                                       ; $5805: $78
    ld [hl], a                                    ; $5806: $77
    ld [hl], a                                    ; $5807: $77
    add a                                         ; $5808: $87
    ld [hl], a                                    ; $5809: $77
    halt                                          ; $580a: $76
    ld h, l                                       ; $580b: $65
    ld d, l                                       ; $580c: $55
    ld b, e                                       ; $580d: $43
    ld b, h                                       ; $580e: $44
    inc [hl]                                      ; $580f: $34
    ld d, [hl]                                    ; $5810: $56
    ld h, [hl]                                    ; $5811: $66
    ld h, l                                       ; $5812: $65
    ld h, [hl]                                    ; $5813: $66
    ld h, a                                       ; $5814: $67
    ld [hl], a                                    ; $5815: $77
    ld a, b                                       ; $5816: $78
    ld [hl], a                                    ; $5817: $77
    halt                                          ; $5818: $76
    ld h, l                                       ; $5819: $65
    ld d, l                                       ; $581a: $55
    ld d, a                                       ; $581b: $57
    adc c                                         ; $581c: $89
    sbc d                                         ; $581d: $9a
    xor c                                         ; $581e: $a9
    xor d                                         ; $581f: $aa
    cp h                                          ; $5820: $bc
    sbc $fe                                       ; $5821: $de $fe
    db $dd                                        ; $5823: $dd
    call z, $99ca                                 ; $5824: $cc $ca $99
    ld [hl], a                                    ; $5827: $77
    ld a, b                                       ; $5828: $78
    ld [hl], a                                    ; $5829: $77
    halt                                          ; $582a: $76
    ld h, [hl]                                    ; $582b: $66
    ld a, b                                       ; $582c: $78
    adc c                                         ; $582d: $89
    xor d                                         ; $582e: $aa
    cp c                                          ; $582f: $b9
    add [hl]                                      ; $5830: $86
    ld h, l                                       ; $5831: $65
    ld d, [hl]                                    ; $5832: $56
    ld h, l                                       ; $5833: $65
    ld d, l                                       ; $5834: $55
    ld b, l                                       ; $5835: $45
    ld h, a                                       ; $5836: $67
    halt                                          ; $5837: $76
    halt                                          ; $5838: $76
    halt                                          ; $5839: $76
    ld d, l                                       ; $583a: $55
    ld h, a                                       ; $583b: $67
    adc b                                         ; $583c: $88
    sbc c                                         ; $583d: $99
    adc b                                         ; $583e: $88
    ld [hl], a                                    ; $583f: $77
    ld h, a                                       ; $5840: $67
    ld h, [hl]                                    ; $5841: $66
    ld h, [hl]                                    ; $5842: $66
    adc d                                         ; $5843: $8a
    cp e                                          ; $5844: $bb
    xor d                                         ; $5845: $aa
    cp e                                          ; $5846: $bb
    cp e                                          ; $5847: $bb
    cp e                                          ; $5848: $bb
    cp h                                          ; $5849: $bc
    xor $ee                                       ; $584a: $ee $ee
    call c, $9aa9                                 ; $584c: $dc $a9 $9a
    xor c                                         ; $584f: $a9
    adc b                                         ; $5850: $88
    halt                                          ; $5851: $76
    ld h, a                                       ; $5852: $67
    sbc d                                         ; $5853: $9a
    xor d                                         ; $5854: $aa
    xor d                                         ; $5855: $aa
    xor d                                         ; $5856: $aa
    xor b                                         ; $5857: $a8
    add a                                         ; $5858: $87
    ld h, [hl]                                    ; $5859: $66
    ld b, d                                       ; $585a: $42
    ld [de], a                                    ; $585b: $12
    ld [hl+], a                                   ; $585c: $22
    inc sp                                        ; $585d: $33
    ld b, l                                       ; $585e: $45
    ld h, l                                       ; $585f: $65
    ld d, [hl]                                    ; $5860: $56
    ld h, [hl]                                    ; $5861: $66
    ld [hl], a                                    ; $5862: $77
    adc b                                         ; $5863: $88
    adc b                                         ; $5864: $88
    add a                                         ; $5865: $87
    halt                                          ; $5866: $76
    ld h, [hl]                                    ; $5867: $66
    ld h, l                                       ; $5868: $65
    ld b, h                                       ; $5869: $44
    ld [hl-], a                                   ; $586a: $32
    ld de, $1111                                  ; $586b: $11 $11 $11
    ld bc, $4412                                  ; $586e: $01 $12 $44
    ld d, l                                       ; $5871: $55
    ld d, a                                       ; $5872: $57
    adc c                                         ; $5873: $89
    xor d                                         ; $5874: $aa
    xor d                                         ; $5875: $aa
    xor c                                         ; $5876: $a9
    adc b                                         ; $5877: $88
    halt                                          ; $5878: $76
    ld d, [hl]                                    ; $5879: $56
    ld h, l                                       ; $587a: $65
    ld d, l                                       ; $587b: $55
    ld h, [hl]                                    ; $587c: $66
    ld a, b                                       ; $587d: $78
    ld [hl], a                                    ; $587e: $77
    ld [hl], a                                    ; $587f: $77
    ld h, [hl]                                    ; $5880: $66
    ld h, a                                       ; $5881: $67
    ld [hl], a                                    ; $5882: $77
    ld h, l                                       ; $5883: $65
    ld d, [hl]                                    ; $5884: $56
    ld h, [hl]                                    ; $5885: $66
    ld h, a                                       ; $5886: $67
    ld [hl], a                                    ; $5887: $77
    adc b                                         ; $5888: $88
    sbc d                                         ; $5889: $9a
    call z, $cccc                                 ; $588a: $cc $cc $cc
    call z, $bbcc                                 ; $588d: $cc $cc $bb
    call $efee                                    ; $5890: $cd $ee $ef
    rst $38                                       ; $5893: $ff
    db $ed                                        ; $5894: $ed
    res 5, e                                      ; $5895: $cb $ab
    xor d                                         ; $5897: $aa
    xor c                                         ; $5898: $a9
    adc b                                         ; $5899: $88
    add a                                         ; $589a: $87
    adc b                                         ; $589b: $88
    xor d                                         ; $589c: $aa
    sbc c                                         ; $589d: $99
    sbc d                                         ; $589e: $9a
    sbc c                                         ; $589f: $99
    sbc c                                         ; $58a0: $99
    sbc e                                         ; $58a1: $9b
    cp e                                          ; $58a2: $bb
    cp d                                          ; $58a3: $ba
    sbc c                                         ; $58a4: $99
    adc b                                         ; $58a5: $88
    halt                                          ; $58a6: $76
    ld h, a                                       ; $58a7: $67
    ld [hl], a                                    ; $58a8: $77
    ld [hl], a                                    ; $58a9: $77
    ld [hl], a                                    ; $58aa: $77
    halt                                          ; $58ab: $76
    ld [hl], a                                    ; $58ac: $77
    ld [hl], a                                    ; $58ad: $77
    halt                                          ; $58ae: $76
    ld h, l                                       ; $58af: $65
    ld b, h                                       ; $58b0: $44
    ld b, e                                       ; $58b1: $43
    ld [hl-], a                                   ; $58b2: $32
    ld [hl+], a                                   ; $58b3: $22
    ld b, h                                       ; $58b4: $44
    ld b, l                                       ; $58b5: $45
    ld b, h                                       ; $58b6: $44
    inc sp                                        ; $58b7: $33
    inc [hl]                                      ; $58b8: $34
    ld b, h                                       ; $58b9: $44
    ld b, h                                       ; $58ba: $44
    ld b, h                                       ; $58bb: $44
    ld b, h                                       ; $58bc: $44
    ld b, h                                       ; $58bd: $44
    ld d, l                                       ; $58be: $55
    ld h, a                                       ; $58bf: $67
    add a                                         ; $58c0: $87
    ld [hl], a                                    ; $58c1: $77
    halt                                          ; $58c2: $76
    ld h, l                                       ; $58c3: $65
    ld b, e                                       ; $58c4: $43
    ld [hl-], a                                   ; $58c5: $32
    ld [hl+], a                                   ; $58c6: $22
    ld [hl+], a                                   ; $58c7: $22
    inc sp                                        ; $58c8: $33
    inc sp                                        ; $58c9: $33
    inc [hl]                                      ; $58ca: $34
    ld d, l                                       ; $58cb: $55
    ld d, l                                       ; $58cc: $55
    ld h, [hl]                                    ; $58cd: $66
    ld h, a                                       ; $58ce: $67
    ld h, [hl]                                    ; $58cf: $66
    ld d, l                                       ; $58d0: $55
    ld d, l                                       ; $58d1: $55
    ld h, [hl]                                    ; $58d2: $66
    ld a, b                                       ; $58d3: $78
    add a                                         ; $58d4: $87
    ld a, b                                       ; $58d5: $78
    sbc d                                         ; $58d6: $9a
    cp h                                          ; $58d7: $bc
    db $dd                                        ; $58d8: $dd
    sbc $ee                                       ; $58d9: $de $ee
    cp $ff                                        ; $58db: $fe $ff
    db $ed                                        ; $58dd: $ed
    set 1, l                                      ; $58de: $cb $cd
    call c, $cbcc                                 ; $58e0: $dc $cc $cb
    xor c                                         ; $58e3: $a9
    xor d                                         ; $58e4: $aa
    xor d                                         ; $58e5: $aa
    xor c                                         ; $58e6: $a9
    sbc c                                         ; $58e7: $99
    sbc d                                         ; $58e8: $9a
    xor d                                         ; $58e9: $aa
    xor d                                         ; $58ea: $aa
    xor d                                         ; $58eb: $aa
    sbc c                                         ; $58ec: $99
    xor d                                         ; $58ed: $aa
    xor d                                         ; $58ee: $aa
    cp e                                          ; $58ef: $bb
    call z, $bbcb                                 ; $58f0: $cc $cb $bb
    cp e                                          ; $58f3: $bb
    cp e                                          ; $58f4: $bb
    xor c                                         ; $58f5: $a9
    add a                                         ; $58f6: $87
    ld [hl], a                                    ; $58f7: $77
    ld [hl], a                                    ; $58f8: $77
    ld h, [hl]                                    ; $58f9: $66
    ld h, a                                       ; $58fa: $67
    ld [hl], a                                    ; $58fb: $77
    ld [hl], a                                    ; $58fc: $77
    halt                                          ; $58fd: $76
    ld d, l                                       ; $58fe: $55
    ld b, e                                       ; $58ff: $43
    ld b, h                                       ; $5900: $44
    ld b, h                                       ; $5901: $44
    inc sp                                        ; $5902: $33
    inc sp                                        ; $5903: $33
    inc sp                                        ; $5904: $33
    ld [hl+], a                                   ; $5905: $22
    inc sp                                        ; $5906: $33
    inc hl                                        ; $5907: $23
    dec [hl]                                      ; $5908: $35
    ld h, [hl]                                    ; $5909: $66
    ld [hl], a                                    ; $590a: $77
    ld h, [hl]                                    ; $590b: $66
    ld d, l                                       ; $590c: $55
    ld d, [hl]                                    ; $590d: $56
    ld h, [hl]                                    ; $590e: $66
    ld h, [hl]                                    ; $590f: $66
    ld d, h                                       ; $5910: $54
    ld b, e                                       ; $5911: $43
    ld [hl+], a                                   ; $5912: $22
    ld hl, $3422                                  ; $5913: $21 $22 $34
    ld d, [hl]                                    ; $5916: $56
    ld d, l                                       ; $5917: $55
    ld h, [hl]                                    ; $5918: $66
    ld h, [hl]                                    ; $5919: $66
    ld d, h                                       ; $591a: $54
    ld b, h                                       ; $591b: $44
    ld d, [hl]                                    ; $591c: $56
    ld h, [hl]                                    ; $591d: $66
    ld a, b                                       ; $591e: $78
    adc b                                         ; $591f: $88
    sbc b                                         ; $5920: $98
    sbc c                                         ; $5921: $99
    add a                                         ; $5922: $87
    ld a, b                                       ; $5923: $78
    sbc d                                         ; $5924: $9a
    xor c                                         ; $5925: $a9
    sbc c                                         ; $5926: $99
    xor d                                         ; $5927: $aa
    sbc c                                         ; $5928: $99
    sbc c                                         ; $5929: $99
    cp h                                          ; $592a: $bc
    call z, $decc                                 ; $592b: $cc $cc $de
    call c, $ddbc                                 ; $592e: $dc $bc $dd
    call c, $97ba                                 ; $5931: $dc $ba $97
    ld h, a                                       ; $5934: $67
    ld a, b                                       ; $5935: $78
    sbc d                                         ; $5936: $9a
    xor d                                         ; $5937: $aa
    xor d                                         ; $5938: $aa
    xor c                                         ; $5939: $a9
    adc c                                         ; $593a: $89
    adc c                                         ; $593b: $89
    sbc d                                         ; $593c: $9a
    xor e                                         ; $593d: $ab
    cp d                                          ; $593e: $ba
    sbc c                                         ; $593f: $99
    sbc c                                         ; $5940: $99
    adc b                                         ; $5941: $88
    adc b                                         ; $5942: $88
    adc b                                         ; $5943: $88
    ld a, b                                       ; $5944: $78
    sbc d                                         ; $5945: $9a
    xor b                                         ; $5946: $a8
    halt                                          ; $5947: $76
    ld h, [hl]                                    ; $5948: $66
    ld h, [hl]                                    ; $5949: $66
    ld d, l                                       ; $594a: $55
    ld d, l                                       ; $594b: $55
    ld d, l                                       ; $594c: $55
    ld d, l                                       ; $594d: $55
    ld b, h                                       ; $594e: $44
    ld b, h                                       ; $594f: $44
    ld d, [hl]                                    ; $5950: $56
    ld [hl], a                                    ; $5951: $77
    ld h, [hl]                                    ; $5952: $66
    ld h, a                                       ; $5953: $67
    ld [hl], a                                    ; $5954: $77
    halt                                          ; $5955: $76
    ld h, a                                       ; $5956: $67
    halt                                          ; $5957: $76
    ld h, a                                       ; $5958: $67
    adc b                                         ; $5959: $88
    adc b                                         ; $595a: $88
    adc b                                         ; $595b: $88
    adc b                                         ; $595c: $88
    adc b                                         ; $595d: $88
    adc b                                         ; $595e: $88
    adc b                                         ; $595f: $88
    adc b                                         ; $5960: $88
    adc c                                         ; $5961: $89
    sbc b                                         ; $5962: $98
    ld [hl], a                                    ; $5963: $77
    ld [hl], a                                    ; $5964: $77
    ld h, [hl]                                    ; $5965: $66
    ld h, l                                       ; $5966: $65
    ld h, [hl]                                    ; $5967: $66
    ld h, [hl]                                    ; $5968: $66
    ld h, l                                       ; $5969: $65
    ld h, [hl]                                    ; $596a: $66
    ld [hl], a                                    ; $596b: $77
    adc b                                         ; $596c: $88
    adc c                                         ; $596d: $89
    sbc b                                         ; $596e: $98
    ld a, b                                       ; $596f: $78
    adc c                                         ; $5970: $89
    sbc c                                         ; $5971: $99
    adc b                                         ; $5972: $88
    ld [hl], a                                    ; $5973: $77
    ld h, [hl]                                    ; $5974: $66
    ld h, a                                       ; $5975: $67
    ld [hl], a                                    ; $5976: $77
    ld h, a                                       ; $5977: $67
    halt                                          ; $5978: $76
    ld h, a                                       ; $5979: $67
    ld [hl], a                                    ; $597a: $77
    ld h, [hl]                                    ; $597b: $66
    ld h, [hl]                                    ; $597c: $66
    ld a, b                                       ; $597d: $78
    adc b                                         ; $597e: $88
    adc b                                         ; $597f: $88
    adc b                                         ; $5980: $88
    halt                                          ; $5981: $76
    ld [hl], a                                    ; $5982: $77
    adc b                                         ; $5983: $88
    ld [hl], a                                    ; $5984: $77
    ld [hl], a                                    ; $5985: $77
    ld [hl], a                                    ; $5986: $77
    adc c                                         ; $5987: $89
    sbc b                                         ; $5988: $98
    ld [hl], a                                    ; $5989: $77
    ld a, b                                       ; $598a: $78
    sbc d                                         ; $598b: $9a
    xor d                                         ; $598c: $aa
    xor d                                         ; $598d: $aa
    cp e                                          ; $598e: $bb
    cp d                                          ; $598f: $ba
    xor c                                         ; $5990: $a9
    sbc c                                         ; $5991: $99
    sbc c                                         ; $5992: $99
    xor d                                         ; $5993: $aa
    xor c                                         ; $5994: $a9
    adc b                                         ; $5995: $88
    adc b                                         ; $5996: $88
    adc b                                         ; $5997: $88
    add a                                         ; $5998: $87
    ld h, [hl]                                    ; $5999: $66
    ld h, a                                       ; $599a: $67
    adc c                                         ; $599b: $89
    sbc b                                         ; $599c: $98
    halt                                          ; $599d: $76
    ld d, l                                       ; $599e: $55
    ld d, h                                       ; $599f: $54
    ld b, e                                       ; $59a0: $43
    ld d, [hl]                                    ; $59a1: $56
    ld h, [hl]                                    ; $59a2: $66
    ld [hl], a                                    ; $59a3: $77
    ld h, l                                       ; $59a4: $65
    ld d, l                                       ; $59a5: $55
    ld h, a                                       ; $59a6: $67
    ld [hl], a                                    ; $59a7: $77
    ld [hl], a                                    ; $59a8: $77
    halt                                          ; $59a9: $76
    ld h, a                                       ; $59aa: $67
    adc c                                         ; $59ab: $89
    sbc c                                         ; $59ac: $99
    sbc c                                         ; $59ad: $99
    sbc b                                         ; $59ae: $98
    adc b                                         ; $59af: $88
    adc b                                         ; $59b0: $88
    adc c                                         ; $59b1: $89
    sbc c                                         ; $59b2: $99
    adc b                                         ; $59b3: $88
    add a                                         ; $59b4: $87
    ld d, l                                       ; $59b5: $55
    ld h, [hl]                                    ; $59b6: $66
    ld [hl], a                                    ; $59b7: $77
    ld a, b                                       ; $59b8: $78
    add a                                         ; $59b9: $87
    ld h, [hl]                                    ; $59ba: $66
    ld h, a                                       ; $59bb: $67
    halt                                          ; $59bc: $76
    ld d, h                                       ; $59bd: $54
    ld d, [hl]                                    ; $59be: $56
    halt                                          ; $59bf: $76
    ld h, a                                       ; $59c0: $67
    adc b                                         ; $59c1: $88
    ld a, b                                       ; $59c2: $78
    adc b                                         ; $59c3: $88
    ld [hl], a                                    ; $59c4: $77
    ld a, c                                       ; $59c5: $79
    sbc c                                         ; $59c6: $99
    xor d                                         ; $59c7: $aa
    xor d                                         ; $59c8: $aa
    xor c                                         ; $59c9: $a9
    xor d                                         ; $59ca: $aa
    xor d                                         ; $59cb: $aa
    xor c                                         ; $59cc: $a9
    sbc b                                         ; $59cd: $98
    ld [hl], a                                    ; $59ce: $77
    ld h, [hl]                                    ; $59cf: $66
    ld d, l                                       ; $59d0: $55
    ld b, e                                       ; $59d1: $43
    ld b, l                                       ; $59d2: $45
    ld d, [hl]                                    ; $59d3: $56
    ld a, b                                       ; $59d4: $78
    adc c                                         ; $59d5: $89
    xor e                                         ; $59d6: $ab
    call $bbcb                                    ; $59d7: $cd $cb $bb
    res 7, e                                      ; $59da: $cb $bb
    cp d                                          ; $59dc: $ba
    xor c                                         ; $59dd: $a9
    add a                                         ; $59de: $87
    ld h, h                                       ; $59df: $64
    inc sp                                        ; $59e0: $33
    inc sp                                        ; $59e1: $33
    ld b, h                                       ; $59e2: $44
    ld b, l                                       ; $59e3: $45
    ld h, a                                       ; $59e4: $67
    ld [hl], a                                    ; $59e5: $77
    adc c                                         ; $59e6: $89
    sbc c                                         ; $59e7: $99
    sbc c                                         ; $59e8: $99
    add a                                         ; $59e9: $87
    ld [hl], a                                    ; $59ea: $77
    ld a, b                                       ; $59eb: $78
    sbc c                                         ; $59ec: $99
    sbc b                                         ; $59ed: $98
    ld a, b                                       ; $59ee: $78
    sbc c                                         ; $59ef: $99
    sbc b                                         ; $59f0: $98
    halt                                          ; $59f1: $76
    ld h, l                                       ; $59f2: $65
    ld d, l                                       ; $59f3: $55
    ld d, l                                       ; $59f4: $55
    ld b, e                                       ; $59f5: $43
    inc sp                                        ; $59f6: $33
    ld b, l                                       ; $59f7: $45
    ld l, b                                       ; $59f8: $68
    xor h                                         ; $59f9: $ac
    call z, $b9dc                                 ; $59fa: $cc $dc $b9
    add a                                         ; $59fd: $87
    ld h, l                                       ; $59fe: $65
    ld d, [hl]                                    ; $59ff: $56
    add a                                         ; $5a00: $87
    ld [hl], a                                    ; $5a01: $77
    ld [hl], a                                    ; $5a02: $77
    ld h, [hl]                                    ; $5a03: $66
    ld a, b                                       ; $5a04: $78
    sbc b                                         ; $5a05: $98
    adc b                                         ; $5a06: $88
    sbc d                                         ; $5a07: $9a
    cp d                                          ; $5a08: $ba
    sbc d                                         ; $5a09: $9a
    xor d                                         ; $5a0a: $aa
    xor d                                         ; $5a0b: $aa
    xor c                                         ; $5a0c: $a9
    sbc b                                         ; $5a0d: $98
    ld h, l                                       ; $5a0e: $65
    ld d, [hl]                                    ; $5a0f: $56
    ld h, l                                       ; $5a10: $65
    ld h, a                                       ; $5a11: $67
    halt                                          ; $5a12: $76
    ld h, [hl]                                    ; $5a13: $66
    ld h, [hl]                                    ; $5a14: $66
    ld h, [hl]                                    ; $5a15: $66
    ld h, l                                       ; $5a16: $65
    ld b, h                                       ; $5a17: $44
    ld b, l                                       ; $5a18: $45
    ld d, [hl]                                    ; $5a19: $56
    ld a, b                                       ; $5a1a: $78
    xor c                                         ; $5a1b: $a9
    sbc d                                         ; $5a1c: $9a
    xor e                                         ; $5a1d: $ab
    cp e                                          ; $5a1e: $bb
    cp e                                          ; $5a1f: $bb
    xor b                                         ; $5a20: $a8
    add [hl]                                      ; $5a21: $86
    ld h, [hl]                                    ; $5a22: $66
    ld d, h                                       ; $5a23: $54
    ld b, l                                       ; $5a24: $45
    ld d, l                                       ; $5a25: $55
    ld h, a                                       ; $5a26: $67
    ld [hl], a                                    ; $5a27: $77
    ld [hl], a                                    ; $5a28: $77
    halt                                          ; $5a29: $76
    halt                                          ; $5a2a: $76
    ld d, [hl]                                    ; $5a2b: $56
    ld l, b                                       ; $5a2c: $68
    sbc b                                         ; $5a2d: $98
    adc b                                         ; $5a2e: $88
    adc b                                         ; $5a2f: $88
    adc b                                         ; $5a30: $88
    add a                                         ; $5a31: $87
    ld [hl], a                                    ; $5a32: $77
    adc b                                         ; $5a33: $88
    add a                                         ; $5a34: $87
    ld h, a                                       ; $5a35: $67
    adc b                                         ; $5a36: $88
    adc c                                         ; $5a37: $89
    cp e                                          ; $5a38: $bb
    cp d                                          ; $5a39: $ba
    sbc c                                         ; $5a3a: $99
    sbc d                                         ; $5a3b: $9a
    sbc c                                         ; $5a3c: $99
    xor d                                         ; $5a3d: $aa
    sbc c                                         ; $5a3e: $99
    halt                                          ; $5a3f: $76
    ld d, h                                       ; $5a40: $54
    ld b, l                                       ; $5a41: $45
    ld d, [hl]                                    ; $5a42: $56
    adc c                                         ; $5a43: $89
    add [hl]                                      ; $5a44: $86
    ld d, l                                       ; $5a45: $55
    ld d, l                                       ; $5a46: $55
    ld h, a                                       ; $5a47: $67
    ld [hl], a                                    ; $5a48: $77
    halt                                          ; $5a49: $76
    ld a, b                                       ; $5a4a: $78
    add a                                         ; $5a4b: $87
    ld h, a                                       ; $5a4c: $67
    adc c                                         ; $5a4d: $89
    add a                                         ; $5a4e: $87
    ld d, h                                       ; $5a4f: $54
    inc sp                                        ; $5a50: $33
    dec [hl]                                      ; $5a51: $35
    ld a, b                                       ; $5a52: $78
    add a                                         ; $5a53: $87
    ld h, a                                       ; $5a54: $67
    ld h, [hl]                                    ; $5a55: $66
    ld h, a                                       ; $5a56: $67
    ld a, b                                       ; $5a57: $78
    ld [hl], a                                    ; $5a58: $77
    ld h, a                                       ; $5a59: $67
    ld a, c                                       ; $5a5a: $79
    sbc d                                         ; $5a5b: $9a
    cp e                                          ; $5a5c: $bb
    call $caed                                    ; $5a5d: $cd $ed $ca
    sbc b                                         ; $5a60: $98
    add a                                         ; $5a61: $87
    ld h, l                                       ; $5a62: $65
    ld d, l                                       ; $5a63: $55
    ld h, [hl]                                    ; $5a64: $66
    ld a, b                                       ; $5a65: $78
    adc b                                         ; $5a66: $88
    sbc d                                         ; $5a67: $9a
    xor e                                         ; $5a68: $ab
    call $fede                                    ; $5a69: $cd $de $fe
    xor $db                                       ; $5a6c: $ee $db
    cp e                                          ; $5a6e: $bb
    xor c                                         ; $5a6f: $a9
    sbc b                                         ; $5a70: $98
    halt                                          ; $5a71: $76
    ld h, [hl]                                    ; $5a72: $66
    ld d, h                                       ; $5a73: $54
    ld b, l                                       ; $5a74: $45
    ld h, [hl]                                    ; $5a75: $66
    ld a, c                                       ; $5a76: $79
    xor d                                         ; $5a77: $aa
    cp h                                          ; $5a78: $bc
    cp d                                          ; $5a79: $ba
    add a                                         ; $5a7a: $87
    ld [hl], a                                    ; $5a7b: $77
    halt                                          ; $5a7c: $76
    ld a, b                                       ; $5a7d: $78
    adc c                                         ; $5a7e: $89
    sbc c                                         ; $5a7f: $99
    add a                                         ; $5a80: $87
    ld d, e                                       ; $5a81: $53
    ld [hl+], a                                   ; $5a82: $22
    inc [hl]                                      ; $5a83: $34
    ld d, a                                       ; $5a84: $57
    ld [hl], a                                    ; $5a85: $77
    ld h, [hl]                                    ; $5a86: $66
    ld d, l                                       ; $5a87: $55
    ld h, a                                       ; $5a88: $67
    sbc d                                         ; $5a89: $9a
    xor d                                         ; $5a8a: $aa
    xor d                                         ; $5a8b: $aa
    xor c                                         ; $5a8c: $a9
    add a                                         ; $5a8d: $87
    ld [hl], a                                    ; $5a8e: $77
    halt                                          ; $5a8f: $76
    ld h, l                                       ; $5a90: $65
    ld d, l                                       ; $5a91: $55
    ld d, l                                       ; $5a92: $55
    ld h, [hl]                                    ; $5a93: $66
    ld h, [hl]                                    ; $5a94: $66
    ld h, l                                       ; $5a95: $65
    ld b, e                                       ; $5a96: $43
    ld b, h                                       ; $5a97: $44
    ld b, l                                       ; $5a98: $45
    ld h, [hl]                                    ; $5a99: $66
    ld h, [hl]                                    ; $5a9a: $66
    ld h, l                                       ; $5a9b: $65
    ld d, e                                       ; $5a9c: $53
    ld b, l                                       ; $5a9d: $45
    ld d, l                                       ; $5a9e: $55
    ld b, e                                       ; $5a9f: $43
    inc [hl]                                      ; $5aa0: $34
    ld b, l                                       ; $5aa1: $45
    ld h, [hl]                                    ; $5aa2: $66
    ld h, l                                       ; $5aa3: $65
    ld b, e                                       ; $5aa4: $43
    inc [hl]                                      ; $5aa5: $34
    ld d, l                                       ; $5aa6: $55
    ld h, [hl]                                    ; $5aa7: $66
    ld d, h                                       ; $5aa8: $54
    ld d, l                                       ; $5aa9: $55
    ld a, c                                       ; $5aaa: $79
    xor d                                         ; $5aab: $aa
    xor d                                         ; $5aac: $aa
    cp e                                          ; $5aad: $bb
    cp h                                          ; $5aae: $bc
    jp z, $baaa                                   ; $5aaf: $ca $aa $ba

    cp e                                          ; $5ab2: $bb
    cp h                                          ; $5ab3: $bc
    db $dd                                        ; $5ab4: $dd
    res 7, d                                      ; $5ab5: $cb $ba
    sbc b                                         ; $5ab7: $98
    halt                                          ; $5ab8: $76
    ld h, l                                       ; $5ab9: $65
    ld h, [hl]                                    ; $5aba: $66
    ld [hl], a                                    ; $5abb: $77
    adc c                                         ; $5abc: $89
    xor d                                         ; $5abd: $aa
    xor d                                         ; $5abe: $aa
    sbc c                                         ; $5abf: $99
    sbc b                                         ; $5ac0: $98
    ld [hl], a                                    ; $5ac1: $77
    add a                                         ; $5ac2: $87
    ld h, l                                       ; $5ac3: $65
    ld d, l                                       ; $5ac4: $55
    ld d, l                                       ; $5ac5: $55
    ld h, a                                       ; $5ac6: $67
    adc b                                         ; $5ac7: $88
    adc b                                         ; $5ac8: $88
    add a                                         ; $5ac9: $87
    halt                                          ; $5aca: $76
    ld h, a                                       ; $5acb: $67
    adc c                                         ; $5acc: $89
    xor e                                         ; $5acd: $ab
    cp e                                          ; $5ace: $bb
    cp e                                          ; $5acf: $bb
    cp e                                          ; $5ad0: $bb
    cp d                                          ; $5ad1: $ba
    xor c                                         ; $5ad2: $a9
    adc b                                         ; $5ad3: $88
    adc b                                         ; $5ad4: $88
    ld a, b                                       ; $5ad5: $78
    sbc b                                         ; $5ad6: $98
    adc b                                         ; $5ad7: $88
    sbc c                                         ; $5ad8: $99
    sbc c                                         ; $5ad9: $99
    xor e                                         ; $5ada: $ab
    call $edde                                    ; $5adb: $cd $de $ed
    res 5, d                                      ; $5ade: $cb $aa
    xor d                                         ; $5ae0: $aa
    sbc c                                         ; $5ae1: $99
    add a                                         ; $5ae2: $87
    ld [hl], a                                    ; $5ae3: $77
    ld h, [hl]                                    ; $5ae4: $66
    ld d, h                                       ; $5ae5: $54
    ld b, l                                       ; $5ae6: $45
    ld d, l                                       ; $5ae7: $55
    ld d, l                                       ; $5ae8: $55
    ld h, [hl]                                    ; $5ae9: $66
    ld [hl], a                                    ; $5aea: $77
    halt                                          ; $5aeb: $76
    ld b, h                                       ; $5aec: $44
    ld b, l                                       ; $5aed: $45
    ld h, [hl]                                    ; $5aee: $66
    ld d, h                                       ; $5aef: $54
    ld b, e                                       ; $5af0: $43
    ld b, h                                       ; $5af1: $44
    ld b, l                                       ; $5af2: $45
    ld d, l                                       ; $5af3: $55
    ld d, h                                       ; $5af4: $54
    ld b, l                                       ; $5af5: $45
    ld h, [hl]                                    ; $5af6: $66
    ld a, c                                       ; $5af7: $79
    xor d                                         ; $5af8: $aa
    cp d                                          ; $5af9: $ba
    sbc c                                         ; $5afa: $99
    sbc d                                         ; $5afb: $9a
    cp e                                          ; $5afc: $bb
    cp h                                          ; $5afd: $bc
    call z, $a9ba                                 ; $5afe: $cc $ba $a9
    add a                                         ; $5b01: $87
    ld h, l                                       ; $5b02: $65
    ld b, h                                       ; $5b03: $44
    ld b, h                                       ; $5b04: $44
    ld b, l                                       ; $5b05: $45
    ld h, [hl]                                    ; $5b06: $66
    ld [hl], a                                    ; $5b07: $77
    ld [hl], a                                    ; $5b08: $77
    ld [hl], l                                    ; $5b09: $75
    ld b, e                                       ; $5b0a: $43
    inc [hl]                                      ; $5b0b: $34
    ld d, l                                       ; $5b0c: $55
    ld h, l                                       ; $5b0d: $65
    ld d, l                                       ; $5b0e: $55
    ld b, e                                       ; $5b0f: $43
    inc hl                                        ; $5b10: $23
    inc [hl]                                      ; $5b11: $34
    ld b, h                                       ; $5b12: $44
    ld b, h                                       ; $5b13: $44
    inc sp                                        ; $5b14: $33
    inc [hl]                                      ; $5b15: $34
    ld b, l                                       ; $5b16: $45
    ld d, [hl]                                    ; $5b17: $56
    ld a, b                                       ; $5b18: $78
    adc b                                         ; $5b19: $88
    adc b                                         ; $5b1a: $88
    adc c                                         ; $5b1b: $89
    adc b                                         ; $5b1c: $88
    adc c                                         ; $5b1d: $89
    xor d                                         ; $5b1e: $aa
    sbc b                                         ; $5b1f: $98
    add [hl]                                      ; $5b20: $86
    ld h, a                                       ; $5b21: $67
    ld a, b                                       ; $5b22: $78
    adc c                                         ; $5b23: $89
    sbc c                                         ; $5b24: $99
    sbc d                                         ; $5b25: $9a
    cp h                                          ; $5b26: $bc
    res 7, e                                      ; $5b27: $cb $bb
    cp d                                          ; $5b29: $ba
    xor e                                         ; $5b2a: $ab
    call z, $cbcc                                 ; $5b2b: $cc $cc $cb
    xor d                                         ; $5b2e: $aa
    xor d                                         ; $5b2f: $aa
    xor d                                         ; $5b30: $aa
    xor d                                         ; $5b31: $aa
    cp e                                          ; $5b32: $bb
    cp e                                          ; $5b33: $bb
    xor c                                         ; $5b34: $a9
    sbc d                                         ; $5b35: $9a
    xor c                                         ; $5b36: $a9
    sbc d                                         ; $5b37: $9a
    sbc b                                         ; $5b38: $98
    add a                                         ; $5b39: $87
    ld h, [hl]                                    ; $5b3a: $66
    ld h, a                                       ; $5b3b: $67
    ld [hl], a                                    ; $5b3c: $77
    ld [hl], a                                    ; $5b3d: $77
    ld [hl], a                                    ; $5b3e: $77
    adc b                                         ; $5b3f: $88
    adc c                                         ; $5b40: $89
    sbc b                                         ; $5b41: $98
    adc b                                         ; $5b42: $88
    add a                                         ; $5b43: $87
    ld h, l                                       ; $5b44: $65
    ld d, [hl]                                    ; $5b45: $56
    ld [hl], a                                    ; $5b46: $77
    halt                                          ; $5b47: $76
    ld h, a                                       ; $5b48: $67
    adc b                                         ; $5b49: $88
    adc b                                         ; $5b4a: $88
    ld [hl], a                                    ; $5b4b: $77
    ld a, b                                       ; $5b4c: $78
    sbc c                                         ; $5b4d: $99
    add [hl]                                      ; $5b4e: $86
    ld d, [hl]                                    ; $5b4f: $56
    ld d, l                                       ; $5b50: $55
    ld h, a                                       ; $5b51: $67
    adc b                                         ; $5b52: $88
    adc b                                         ; $5b53: $88
    adc b                                         ; $5b54: $88
    add a                                         ; $5b55: $87
    ld h, [hl]                                    ; $5b56: $66
    ld h, l                                       ; $5b57: $65
    ld d, l                                       ; $5b58: $55
    ld d, l                                       ; $5b59: $55
    ld l, b                                       ; $5b5a: $68
    sbc d                                         ; $5b5b: $9a
    cp d                                          ; $5b5c: $ba
    xor c                                         ; $5b5d: $a9
    sbc c                                         ; $5b5e: $99
    adc b                                         ; $5b5f: $88
    add [hl]                                      ; $5b60: $86
    ld d, h                                       ; $5b61: $54
    ld [hl+], a                                   ; $5b62: $22
    inc h                                         ; $5b63: $24
    ld d, [hl]                                    ; $5b64: $56
    ld h, a                                       ; $5b65: $67
    ld a, b                                       ; $5b66: $78
    halt                                          ; $5b67: $76
    ld h, a                                       ; $5b68: $67
    ld [hl], a                                    ; $5b69: $77
    ld [hl], a                                    ; $5b6a: $77
    halt                                          ; $5b6b: $76
    ld h, a                                       ; $5b6c: $67
    adc b                                         ; $5b6d: $88
    add a                                         ; $5b6e: $87
    ld [hl], a                                    ; $5b6f: $77
    add a                                         ; $5b70: $87
    ld h, h                                       ; $5b71: $64
    ld hl, $3311                                  ; $5b72: $21 $11 $33
    ld b, l                                       ; $5b75: $45
    ld h, a                                       ; $5b76: $67
    adc c                                         ; $5b77: $89
    xor d                                         ; $5b78: $aa
    xor d                                         ; $5b79: $aa
    xor c                                         ; $5b7a: $a9
    adc b                                         ; $5b7b: $88
    adc b                                         ; $5b7c: $88
    adc b                                         ; $5b7d: $88
    sbc c                                         ; $5b7e: $99
    adc b                                         ; $5b7f: $88
    adc b                                         ; $5b80: $88
    adc b                                         ; $5b81: $88
    adc b                                         ; $5b82: $88
    adc b                                         ; $5b83: $88
    sbc c                                         ; $5b84: $99
    sbc b                                         ; $5b85: $98
    adc b                                         ; $5b86: $88
    adc c                                         ; $5b87: $89
    sbc c                                         ; $5b88: $99
    sbc c                                         ; $5b89: $99
    adc b                                         ; $5b8a: $88
    adc c                                         ; $5b8b: $89
    sbc c                                         ; $5b8c: $99
    sbc c                                         ; $5b8d: $99
    sbc d                                         ; $5b8e: $9a
    xor d                                         ; $5b8f: $aa
    xor d                                         ; $5b90: $aa
    xor c                                         ; $5b91: $a9
    sbc c                                         ; $5b92: $99
    add a                                         ; $5b93: $87
    ld h, [hl]                                    ; $5b94: $66
    ld h, a                                       ; $5b95: $67
    ld a, b                                       ; $5b96: $78
    adc c                                         ; $5b97: $89
    sbc c                                         ; $5b98: $99
    sbc c                                         ; $5b99: $99
    xor d                                         ; $5b9a: $aa
    xor c                                         ; $5b9b: $a9
    sbc b                                         ; $5b9c: $98
    sbc d                                         ; $5b9d: $9a
    xor d                                         ; $5b9e: $aa
    sbc c                                         ; $5b9f: $99
    sbc b                                         ; $5ba0: $98
    sbc b                                         ; $5ba1: $98
    adc c                                         ; $5ba2: $89
    sbc d                                         ; $5ba3: $9a
    xor c                                         ; $5ba4: $a9
    adc b                                         ; $5ba5: $88
    adc b                                         ; $5ba6: $88
    sbc c                                         ; $5ba7: $99
    sbc d                                         ; $5ba8: $9a
    xor c                                         ; $5ba9: $a9
    add a                                         ; $5baa: $87
    halt                                          ; $5bab: $76
    ld d, l                                       ; $5bac: $55
    ld b, l                                       ; $5bad: $45
    ld d, h                                       ; $5bae: $54
    ld b, h                                       ; $5baf: $44
    ld b, l                                       ; $5bb0: $45
    ld a, b                                       ; $5bb1: $78
    adc b                                         ; $5bb2: $88
    sbc c                                         ; $5bb3: $99
    sbc b                                         ; $5bb4: $98
    add a                                         ; $5bb5: $87
    ld d, h                                       ; $5bb6: $54
    ld d, [hl]                                    ; $5bb7: $56
    ld h, [hl]                                    ; $5bb8: $66
    ld h, l                                       ; $5bb9: $65
    ld h, l                                       ; $5bba: $65
    ld d, l                                       ; $5bbb: $55
    ld d, l                                       ; $5bbc: $55
    ld h, [hl]                                    ; $5bbd: $66
    ld [hl], a                                    ; $5bbe: $77
    ld [hl], a                                    ; $5bbf: $77
    add a                                         ; $5bc0: $87
    ld [hl], a                                    ; $5bc1: $77
    ld d, h                                       ; $5bc2: $54
    ld b, e                                       ; $5bc3: $43
    inc sp                                        ; $5bc4: $33
    inc sp                                        ; $5bc5: $33
    inc [hl]                                      ; $5bc6: $34
    ld d, [hl]                                    ; $5bc7: $56
    ld [hl], a                                    ; $5bc8: $77
    ld h, [hl]                                    ; $5bc9: $66
    ld [hl], a                                    ; $5bca: $77
    ld [hl], a                                    ; $5bcb: $77
    adc d                                         ; $5bcc: $8a
    cp e                                          ; $5bcd: $bb
    call z, $dcdd                                 ; $5bce: $cc $dd $dc
    call z, $87ba                                 ; $5bd1: $cc $ba $87
    halt                                          ; $5bd4: $76
    ld [hl], a                                    ; $5bd5: $77
    ld d, l                                       ; $5bd6: $55
    ld d, l                                       ; $5bd7: $55
    ld d, l                                       ; $5bd8: $55
    ld d, [hl]                                    ; $5bd9: $56
    adc c                                         ; $5bda: $89
    sbc c                                         ; $5bdb: $99
    sbc c                                         ; $5bdc: $99
    sbc b                                         ; $5bdd: $98
    sbc c                                         ; $5bde: $99
    xor e                                         ; $5bdf: $ab
    cp d                                          ; $5be0: $ba
    sbc b                                         ; $5be1: $98
    adc b                                         ; $5be2: $88
    ld a, b                                       ; $5be3: $78
    add a                                         ; $5be4: $87
    ld [hl], a                                    ; $5be5: $77
    ld [hl], a                                    ; $5be6: $77
    ld [hl], a                                    ; $5be7: $77
    ld h, [hl]                                    ; $5be8: $66
    ld d, [hl]                                    ; $5be9: $56
    ld [hl], a                                    ; $5bea: $77
    ld a, b                                       ; $5beb: $78
    sbc c                                         ; $5bec: $99
    sbc c                                         ; $5bed: $99
    sbc c                                         ; $5bee: $99
    sbc b                                         ; $5bef: $98
    adc b                                         ; $5bf0: $88
    adc b                                         ; $5bf1: $88
    adc b                                         ; $5bf2: $88
    adc b                                         ; $5bf3: $88
    halt                                          ; $5bf4: $76
    ld h, l                                       ; $5bf5: $65
    ld d, l                                       ; $5bf6: $55
    ld b, l                                       ; $5bf7: $45
    ld l, b                                       ; $5bf8: $68
    xor d                                         ; $5bf9: $aa
    cp e                                          ; $5bfa: $bb
    xor d                                         ; $5bfb: $aa
    xor d                                         ; $5bfc: $aa
    xor c                                         ; $5bfd: $a9
    sub a                                         ; $5bfe: $97
    ld [hl], a                                    ; $5bff: $77
    ld h, [hl]                                    ; $5c00: $66
    ld h, a                                       ; $5c01: $67
    adc b                                         ; $5c02: $88
    sbc c                                         ; $5c03: $99
    sbc c                                         ; $5c04: $99
    add [hl]                                      ; $5c05: $86
    ld h, [hl]                                    ; $5c06: $66
    ld h, l                                       ; $5c07: $65
    ld b, h                                       ; $5c08: $44
    ld b, e                                       ; $5c09: $43
    inc [hl]                                      ; $5c0a: $34
    ld b, l                                       ; $5c0b: $45
    ld h, a                                       ; $5c0c: $67
    sbc e                                         ; $5c0d: $9b
    call z, $86ca                                 ; $5c0e: $cc $ca $86
    ld d, h                                       ; $5c11: $54
    ld b, h                                       ; $5c12: $44
    ld d, l                                       ; $5c13: $55
    ld l, b                                       ; $5c14: $68
    sbc c                                         ; $5c15: $99
    sbc d                                         ; $5c16: $9a
    xor d                                         ; $5c17: $aa
    cp e                                          ; $5c18: $bb
    adc $ed                                       ; $5c19: $ce $ed
    res 5, d                                      ; $5c1b: $cb $aa
    add a                                         ; $5c1d: $87
    ld h, l                                       ; $5c1e: $65
    ld h, [hl]                                    ; $5c1f: $66
    add a                                         ; $5c20: $87
    adc c                                         ; $5c21: $89
    sbc c                                         ; $5c22: $99
    sbc c                                         ; $5c23: $99
    adc b                                         ; $5c24: $88
    ld [hl], a                                    ; $5c25: $77
    ld [hl], a                                    ; $5c26: $77
    ld h, [hl]                                    ; $5c27: $66
    ld h, a                                       ; $5c28: $67
    ld h, [hl]                                    ; $5c29: $66
    ld h, a                                       ; $5c2a: $67
    ld h, [hl]                                    ; $5c2b: $66
    ld h, [hl]                                    ; $5c2c: $66
    ld h, a                                       ; $5c2d: $67
    ld [hl], a                                    ; $5c2e: $77
    ld [hl], a                                    ; $5c2f: $77
    ld h, [hl]                                    ; $5c30: $66
    ld d, l                                       ; $5c31: $55
    ld d, l                                       ; $5c32: $55
    ld d, [hl]                                    ; $5c33: $56
    ld a, b                                       ; $5c34: $78
    halt                                          ; $5c35: $76
    halt                                          ; $5c36: $76
    ld h, [hl]                                    ; $5c37: $66
    ld h, [hl]                                    ; $5c38: $66
    ld h, [hl]                                    ; $5c39: $66
    ld [hl], a                                    ; $5c3a: $77
    ld [hl], a                                    ; $5c3b: $77
    ld a, b                                       ; $5c3c: $78
    ld [hl], a                                    ; $5c3d: $77
    ld h, [hl]                                    ; $5c3e: $66
    ld h, [hl]                                    ; $5c3f: $66
    ld d, l                                       ; $5c40: $55
    ld d, [hl]                                    ; $5c41: $56
    ld h, [hl]                                    ; $5c42: $66
    ld h, a                                       ; $5c43: $67
    add a                                         ; $5c44: $87
    adc b                                         ; $5c45: $88
    add a                                         ; $5c46: $87
    ld [hl], a                                    ; $5c47: $77
    ld h, a                                       ; $5c48: $67
    ld a, b                                       ; $5c49: $78
    sbc c                                         ; $5c4a: $99
    add [hl]                                      ; $5c4b: $86
    ld d, [hl]                                    ; $5c4c: $56
    ld h, [hl]                                    ; $5c4d: $66
    ld h, a                                       ; $5c4e: $67
    adc c                                         ; $5c4f: $89
    cp h                                          ; $5c50: $bc
    call $ccdd                                    ; $5c51: $cd $dd $cc
    cp d                                          ; $5c54: $ba
    sbc b                                         ; $5c55: $98
    adc c                                         ; $5c56: $89
    sbc b                                         ; $5c57: $98
    adc b                                         ; $5c58: $88
    adc b                                         ; $5c59: $88
    ld [hl], a                                    ; $5c5a: $77
    adc c                                         ; $5c5b: $89
    xor e                                         ; $5c5c: $ab
    cp e                                          ; $5c5d: $bb
    xor b                                         ; $5c5e: $a8
    halt                                          ; $5c5f: $76
    ld h, a                                       ; $5c60: $67
    ld a, b                                       ; $5c61: $78
    sbc c                                         ; $5c62: $99
    sbc c                                         ; $5c63: $99
    sbc d                                         ; $5c64: $9a
    xor d                                         ; $5c65: $aa
    sbc b                                         ; $5c66: $98
    ld [hl], l                                    ; $5c67: $75
    inc sp                                        ; $5c68: $33
    ld b, h                                       ; $5c69: $44
    ld d, l                                       ; $5c6a: $55
    ld l, b                                       ; $5c6b: $68
    adc b                                         ; $5c6c: $88
    sbc d                                         ; $5c6d: $9a
    cp e                                          ; $5c6e: $bb
    cp e                                          ; $5c6f: $bb
    sbc b                                         ; $5c70: $98
    ld h, l                                       ; $5c71: $65
    ld b, l                                       ; $5c72: $45
    ld d, h                                       ; $5c73: $54
    ld b, l                                       ; $5c74: $45
    ld h, a                                       ; $5c75: $67
    ld [hl], a                                    ; $5c76: $77
    adc b                                         ; $5c77: $88
    sbc d                                         ; $5c78: $9a
    sbc c                                         ; $5c79: $99
    adc b                                         ; $5c7a: $88
    adc b                                         ; $5c7b: $88
    ld h, l                                       ; $5c7c: $65
    ld d, l                                       ; $5c7d: $55
    ld d, l                                       ; $5c7e: $55
    ld a, b                                       ; $5c7f: $78
    sbc d                                         ; $5c80: $9a
    sbc c                                         ; $5c81: $99
    sbc b                                         ; $5c82: $98
    halt                                          ; $5c83: $76
    ld b, h                                       ; $5c84: $44
    ld d, [hl]                                    ; $5c85: $56
    ld [hl], a                                    ; $5c86: $77
    ld h, l                                       ; $5c87: $65
    ld d, l                                       ; $5c88: $55
    ld h, a                                       ; $5c89: $67
    adc b                                         ; $5c8a: $88
    ld h, [hl]                                    ; $5c8b: $66
    ld l, b                                       ; $5c8c: $68
    xor e                                         ; $5c8d: $ab
    call z, $85b9                                 ; $5c8e: $cc $b9 $85
    ld d, [hl]                                    ; $5c91: $56
    ld a, c                                       ; $5c92: $79
    xor c                                         ; $5c93: $a9
    add a                                         ; $5c94: $87
    ld h, [hl]                                    ; $5c95: $66
    ld [hl], a                                    ; $5c96: $77
    ld [hl], a                                    ; $5c97: $77
    ld h, a                                       ; $5c98: $67
    adc b                                         ; $5c99: $88
    add a                                         ; $5c9a: $87
    ld a, b                                       ; $5c9b: $78
    sbc d                                         ; $5c9c: $9a
    xor c                                         ; $5c9d: $a9
    sbc b                                         ; $5c9e: $98
    ld a, b                                       ; $5c9f: $78
    xor d                                         ; $5ca0: $aa
    xor e                                         ; $5ca1: $ab
    res 5, b                                      ; $5ca2: $cb $a8
    ld h, l                                       ; $5ca4: $65
    ld h, a                                       ; $5ca5: $67
    ld [hl], a                                    ; $5ca6: $77
    ld [hl], a                                    ; $5ca7: $77
    ld d, l                                       ; $5ca8: $55
    ld a, b                                       ; $5ca9: $78
    sbc d                                         ; $5caa: $9a
    xor d                                         ; $5cab: $aa
    sbc b                                         ; $5cac: $98
    ld h, l                                       ; $5cad: $65
    ld b, h                                       ; $5cae: $44
    ld b, h                                       ; $5caf: $44
    ld b, h                                       ; $5cb0: $44
    ld d, l                                       ; $5cb1: $55
    ld d, l                                       ; $5cb2: $55
    ld h, a                                       ; $5cb3: $67
    ld h, a                                       ; $5cb4: $67
    ld h, l                                       ; $5cb5: $65
    ld d, l                                       ; $5cb6: $55
    ld b, h                                       ; $5cb7: $44
    ld b, h                                       ; $5cb8: $44
    ld b, l                                       ; $5cb9: $45
    ld d, [hl]                                    ; $5cba: $56
    ld [hl], a                                    ; $5cbb: $77
    halt                                          ; $5cbc: $76
    ld [hl], a                                    ; $5cbd: $77
    ld [hl], a                                    ; $5cbe: $77
    ld a, b                                       ; $5cbf: $78
    sbc c                                         ; $5cc0: $99
    sbc c                                         ; $5cc1: $99
    xor c                                         ; $5cc2: $a9
    sbc d                                         ; $5cc3: $9a
    cp e                                          ; $5cc4: $bb
    cp d                                          ; $5cc5: $ba
    xor e                                         ; $5cc6: $ab
    cp h                                          ; $5cc7: $bc
    call c, $a9cb                                 ; $5cc8: $dc $cb $a9
    add a                                         ; $5ccb: $87
    ld h, [hl]                                    ; $5ccc: $66
    ld h, [hl]                                    ; $5ccd: $66
    ld [hl], a                                    ; $5cce: $77
    adc b                                         ; $5ccf: $88
    adc b                                         ; $5cd0: $88
    adc b                                         ; $5cd1: $88
    add a                                         ; $5cd2: $87
    adc c                                         ; $5cd3: $89
    xor e                                         ; $5cd4: $ab
    cp h                                          ; $5cd5: $bc
    call $dddd                                    ; $5cd6: $cd $dd $dd
    res 5, c                                      ; $5cd9: $cb $a9
    ld [hl], a                                    ; $5cdb: $77
    ld a, b                                       ; $5cdc: $78
    add a                                         ; $5cdd: $87
    ld d, h                                       ; $5cde: $54
    inc sp                                        ; $5cdf: $33
    ld b, l                                       ; $5ce0: $45
    ld h, [hl]                                    ; $5ce1: $66
    ld h, [hl]                                    ; $5ce2: $66
    ld h, [hl]                                    ; $5ce3: $66
    ld h, [hl]                                    ; $5ce4: $66
    ld h, [hl]                                    ; $5ce5: $66
    halt                                          ; $5ce6: $76
    ld h, [hl]                                    ; $5ce7: $66
    ld d, l                                       ; $5ce8: $55
    ld d, [hl]                                    ; $5ce9: $56
    ld h, [hl]                                    ; $5cea: $66
    ld h, a                                       ; $5ceb: $67
    ld [hl], a                                    ; $5cec: $77
    ld [hl], a                                    ; $5ced: $77
    ld a, b                                       ; $5cee: $78
    adc c                                         ; $5cef: $89
    sbc c                                         ; $5cf0: $99
    add a                                         ; $5cf1: $87
    ld a, b                                       ; $5cf2: $78
    adc b                                         ; $5cf3: $88
    adc b                                         ; $5cf4: $88
    ld [hl], a                                    ; $5cf5: $77
    ld a, b                                       ; $5cf6: $78
    adc b                                         ; $5cf7: $88
    adc b                                         ; $5cf8: $88
    halt                                          ; $5cf9: $76
    ld d, l                                       ; $5cfa: $55
    ld h, [hl]                                    ; $5cfb: $66
    ld h, [hl]                                    ; $5cfc: $66
    ld a, b                                       ; $5cfd: $78
    sbc b                                         ; $5cfe: $98
    add a                                         ; $5cff: $87
    add [hl]                                      ; $5d00: $86
    ld d, l                                       ; $5d01: $55
    ld b, h                                       ; $5d02: $44
    ld b, h                                       ; $5d03: $44
    ld d, [hl]                                    ; $5d04: $56
    ld h, [hl]                                    ; $5d05: $66
    ld h, a                                       ; $5d06: $67
    ld [hl], a                                    ; $5d07: $77
    ld h, [hl]                                    ; $5d08: $66
    ld h, a                                       ; $5d09: $67
    ld [hl], a                                    ; $5d0a: $77
    adc b                                         ; $5d0b: $88
    add a                                         ; $5d0c: $87
    ld [hl], a                                    ; $5d0d: $77
    ld [hl], a                                    ; $5d0e: $77
    halt                                          ; $5d0f: $76
    ld h, a                                       ; $5d10: $67
    adc b                                         ; $5d11: $88
    ld [hl], a                                    ; $5d12: $77
    adc b                                         ; $5d13: $88
    adc b                                         ; $5d14: $88
    ld [hl], a                                    ; $5d15: $77
    ld [hl], a                                    ; $5d16: $77
    adc b                                         ; $5d17: $88
    adc b                                         ; $5d18: $88
    ld [hl], a                                    ; $5d19: $77
    adc c                                         ; $5d1a: $89
    add a                                         ; $5d1b: $87
    adc b                                         ; $5d1c: $88
    adc c                                         ; $5d1d: $89
    sbc d                                         ; $5d1e: $9a
    xor d                                         ; $5d1f: $aa
    xor d                                         ; $5d20: $aa
    cp e                                          ; $5d21: $bb
    xor d                                         ; $5d22: $aa
    sbc b                                         ; $5d23: $98
    adc b                                         ; $5d24: $88
    adc b                                         ; $5d25: $88
    sbc c                                         ; $5d26: $99
    sbc b                                         ; $5d27: $98
    adc b                                         ; $5d28: $88
    sbc b                                         ; $5d29: $98
    add a                                         ; $5d2a: $87
    ld a, b                                       ; $5d2b: $78
    adc b                                         ; $5d2c: $88
    adc b                                         ; $5d2d: $88
    adc b                                         ; $5d2e: $88
    sbc c                                         ; $5d2f: $99
    adc c                                         ; $5d30: $89
    sbc c                                         ; $5d31: $99
    xor c                                         ; $5d32: $a9
    sbc b                                         ; $5d33: $98
    adc c                                         ; $5d34: $89
    xor d                                         ; $5d35: $aa
    sbc b                                         ; $5d36: $98
    halt                                          ; $5d37: $76
    ld h, [hl]                                    ; $5d38: $66
    ld h, [hl]                                    ; $5d39: $66
    ld h, a                                       ; $5d3a: $67
    adc b                                         ; $5d3b: $88
    adc b                                         ; $5d3c: $88
    sbc d                                         ; $5d3d: $9a
    xor e                                         ; $5d3e: $ab
    xor d                                         ; $5d3f: $aa
    xor d                                         ; $5d40: $aa
    sbc c                                         ; $5d41: $99
    add [hl]                                      ; $5d42: $86
    ld h, [hl]                                    ; $5d43: $66
    ld a, b                                       ; $5d44: $78
    adc b                                         ; $5d45: $88
    adc b                                         ; $5d46: $88
    halt                                          ; $5d47: $76
    ld h, a                                       ; $5d48: $67
    add a                                         ; $5d49: $87
    ld [hl], a                                    ; $5d4a: $77
    adc b                                         ; $5d4b: $88
    add a                                         ; $5d4c: $87
    ld [hl], a                                    ; $5d4d: $77
    adc b                                         ; $5d4e: $88
    adc b                                         ; $5d4f: $88
    add a                                         ; $5d50: $87
    halt                                          ; $5d51: $76
    ld h, [hl]                                    ; $5d52: $66
    ld [hl], a                                    ; $5d53: $77
    ld h, l                                       ; $5d54: $65
    inc sp                                        ; $5d55: $33
    inc [hl]                                      ; $5d56: $34
    ld d, l                                       ; $5d57: $55
    ld b, l                                       ; $5d58: $45
    ld a, b                                       ; $5d59: $78
    sbc c                                         ; $5d5a: $99
    adc b                                         ; $5d5b: $88
    ld [hl], a                                    ; $5d5c: $77
    ld [hl], a                                    ; $5d5d: $77
    ld h, [hl]                                    ; $5d5e: $66
    ld h, [hl]                                    ; $5d5f: $66
    ld h, l                                       ; $5d60: $65
    ld h, [hl]                                    ; $5d61: $66
    ld h, [hl]                                    ; $5d62: $66
    ld d, l                                       ; $5d63: $55
    ld d, l                                       ; $5d64: $55
    ld h, [hl]                                    ; $5d65: $66
    ld h, [hl]                                    ; $5d66: $66
    ld d, h                                       ; $5d67: $54
    ld b, h                                       ; $5d68: $44
    ld d, [hl]                                    ; $5d69: $56
    ld [hl], a                                    ; $5d6a: $77
    ld a, b                                       ; $5d6b: $78
    add a                                         ; $5d6c: $87
    ld [hl], a                                    ; $5d6d: $77
    adc b                                         ; $5d6e: $88
    adc b                                         ; $5d6f: $88
    add a                                         ; $5d70: $87
    ld a, b                                       ; $5d71: $78
    adc d                                         ; $5d72: $8a
    xor d                                         ; $5d73: $aa
    xor d                                         ; $5d74: $aa
    xor d                                         ; $5d75: $aa
    xor d                                         ; $5d76: $aa
    xor d                                         ; $5d77: $aa
    sbc b                                         ; $5d78: $98
    halt                                          ; $5d79: $76
    ld h, [hl]                                    ; $5d7a: $66
    ld h, a                                       ; $5d7b: $67
    ld [hl], a                                    ; $5d7c: $77
    ld a, b                                       ; $5d7d: $78
    sbc c                                         ; $5d7e: $99
    sbc d                                         ; $5d7f: $9a
    xor d                                         ; $5d80: $aa
    cp h                                          ; $5d81: $bc
    res 5, b                                      ; $5d82: $cb $a8
    adc b                                         ; $5d84: $88
    sbc b                                         ; $5d85: $98
    ld [hl], a                                    ; $5d86: $77
    add a                                         ; $5d87: $87
    adc b                                         ; $5d88: $88
    sbc c                                         ; $5d89: $99
    xor d                                         ; $5d8a: $aa
    sbc c                                         ; $5d8b: $99
    adc b                                         ; $5d8c: $88
    ld h, l                                       ; $5d8d: $65
    ld d, [hl]                                    ; $5d8e: $56
    ld h, a                                       ; $5d8f: $67
    adc b                                         ; $5d90: $88
    sbc b                                         ; $5d91: $98
    adc b                                         ; $5d92: $88
    sbc c                                         ; $5d93: $99
    sbc b                                         ; $5d94: $98
    ld [hl], a                                    ; $5d95: $77
    ld a, b                                       ; $5d96: $78
    adc c                                         ; $5d97: $89
    sbc b                                         ; $5d98: $98
    adc b                                         ; $5d99: $88
    ld [hl], a                                    ; $5d9a: $77
    halt                                          ; $5d9b: $76
    ld d, h                                       ; $5d9c: $54
    ld b, l                                       ; $5d9d: $45
    ld d, l                                       ; $5d9e: $55
    ld h, a                                       ; $5d9f: $67
    adc b                                         ; $5da0: $88
    add a                                         ; $5da1: $87
    halt                                          ; $5da2: $76
    ld h, [hl]                                    ; $5da3: $66
    ld h, [hl]                                    ; $5da4: $66
    ld h, [hl]                                    ; $5da5: $66
    ld h, a                                       ; $5da6: $67
    add a                                         ; $5da7: $87
    ld [hl], a                                    ; $5da8: $77
    ld [hl], a                                    ; $5da9: $77
    halt                                          ; $5daa: $76
    ld h, a                                       ; $5dab: $67
    adc c                                         ; $5dac: $89
    xor c                                         ; $5dad: $a9
    adc b                                         ; $5dae: $88
    ld [hl], l                                    ; $5daf: $75
    ld d, [hl]                                    ; $5db0: $56
    ld h, l                                       ; $5db1: $65
    ld d, [hl]                                    ; $5db2: $56
    ld h, a                                       ; $5db3: $67
    ld [hl], a                                    ; $5db4: $77
    adc c                                         ; $5db5: $89
    xor d                                         ; $5db6: $aa
    cp e                                          ; $5db7: $bb
    cp c                                          ; $5db8: $b9
    add a                                         ; $5db9: $87
    halt                                          ; $5dba: $76
    ld h, [hl]                                    ; $5dbb: $66
    ld h, [hl]                                    ; $5dbc: $66
    ld a, b                                       ; $5dbd: $78
    adc c                                         ; $5dbe: $89
    sbc d                                         ; $5dbf: $9a
    xor d                                         ; $5dc0: $aa
    xor d                                         ; $5dc1: $aa
    xor d                                         ; $5dc2: $aa
    sbc b                                         ; $5dc3: $98
    add a                                         ; $5dc4: $87
    ld a, b                                       ; $5dc5: $78
    adc c                                         ; $5dc6: $89
    adc b                                         ; $5dc7: $88
    sbc c                                         ; $5dc8: $99
    adc b                                         ; $5dc9: $88
    sbc c                                         ; $5dca: $99
    xor e                                         ; $5dcb: $ab
    call z, $99bb                                 ; $5dcc: $cc $bb $99
    sbc b                                         ; $5dcf: $98
    add l                                         ; $5dd0: $85
    ld b, h                                       ; $5dd1: $44
    ld d, l                                       ; $5dd2: $55
    ld h, [hl]                                    ; $5dd3: $66
    ld h, [hl]                                    ; $5dd4: $66
    ld a, b                                       ; $5dd5: $78
    adc c                                         ; $5dd6: $89
    xor c                                         ; $5dd7: $a9
    sbc b                                         ; $5dd8: $98
    ld [hl], a                                    ; $5dd9: $77
    halt                                          ; $5dda: $76
    ld h, l                                       ; $5ddb: $65
    ld h, a                                       ; $5ddc: $67
    adc c                                         ; $5ddd: $89
    xor c                                         ; $5dde: $a9
    sub a                                         ; $5ddf: $97
    ld h, l                                       ; $5de0: $65
    ld d, h                                       ; $5de1: $54
    ld d, l                                       ; $5de2: $55
    ld d, [hl]                                    ; $5de3: $56
    ld h, l                                       ; $5de4: $65
    ld d, [hl]                                    ; $5de5: $56
    ld a, b                                       ; $5de6: $78
    ld [hl], a                                    ; $5de7: $77
    ld [hl], a                                    ; $5de8: $77
    ld [hl], a                                    ; $5de9: $77
    ld [hl], a                                    ; $5dea: $77
    ld [hl], a                                    ; $5deb: $77
    adc c                                         ; $5dec: $89
    sbc b                                         ; $5ded: $98
    ld h, [hl]                                    ; $5dee: $66
    ld d, [hl]                                    ; $5def: $56
    ld h, [hl]                                    ; $5df0: $66
    ld a, b                                       ; $5df1: $78
    add [hl]                                      ; $5df2: $86
    ld h, l                                       ; $5df3: $65
    ld d, h                                       ; $5df4: $54
    ld d, l                                       ; $5df5: $55
    ld h, l                                       ; $5df6: $65
    ld d, [hl]                                    ; $5df7: $56
    ld a, b                                       ; $5df8: $78
    add a                                         ; $5df9: $87
    ld h, [hl]                                    ; $5dfa: $66
    ld h, a                                       ; $5dfb: $67
    ld a, b                                       ; $5dfc: $78
    adc b                                         ; $5dfd: $88
    add a                                         ; $5dfe: $87
    ld h, [hl]                                    ; $5dff: $66
    ld h, a                                       ; $5e00: $67
    adc b                                         ; $5e01: $88
    sbc d                                         ; $5e02: $9a
    cp e                                          ; $5e03: $bb
    xor c                                         ; $5e04: $a9
    adc b                                         ; $5e05: $88
    adc b                                         ; $5e06: $88
    adc b                                         ; $5e07: $88
    halt                                          ; $5e08: $76
    ld d, l                                       ; $5e09: $55
    ld d, [hl]                                    ; $5e0a: $56
    ld [hl], a                                    ; $5e0b: $77
    halt                                          ; $5e0c: $76
    ld h, [hl]                                    ; $5e0d: $66
    ld a, b                                       ; $5e0e: $78
    sbc d                                         ; $5e0f: $9a
    cp h                                          ; $5e10: $bc
    res 5, c                                      ; $5e11: $cb $a9
    add a                                         ; $5e13: $87
    add a                                         ; $5e14: $87
    ld a, b                                       ; $5e15: $78
    adc c                                         ; $5e16: $89
    sbc d                                         ; $5e17: $9a
    xor d                                         ; $5e18: $aa
    xor d                                         ; $5e19: $aa
    xor d                                         ; $5e1a: $aa
    cp d                                          ; $5e1b: $ba
    sbc b                                         ; $5e1c: $98
    halt                                          ; $5e1d: $76
    ld h, l                                       ; $5e1e: $65
    ld d, l                                       ; $5e1f: $55
    ld d, l                                       ; $5e20: $55
    ld d, [hl]                                    ; $5e21: $56
    ld h, a                                       ; $5e22: $67
    ld [hl], a                                    ; $5e23: $77
    adc c                                         ; $5e24: $89
    xor d                                         ; $5e25: $aa
    sbc c                                         ; $5e26: $99
    ld [hl], a                                    ; $5e27: $77
    adc b                                         ; $5e28: $88
    adc b                                         ; $5e29: $88
    halt                                          ; $5e2a: $76
    ld h, [hl]                                    ; $5e2b: $66
    ld h, a                                       ; $5e2c: $67
    adc d                                         ; $5e2d: $8a
    cp e                                          ; $5e2e: $bb
    xor d                                         ; $5e2f: $aa
    xor c                                         ; $5e30: $a9
    sbc c                                         ; $5e31: $99
    sbc b                                         ; $5e32: $98
    add a                                         ; $5e33: $87
    ld [hl], a                                    ; $5e34: $77
    ld [hl], a                                    ; $5e35: $77
    ld [hl], a                                    ; $5e36: $77
    halt                                          ; $5e37: $76
    ld h, [hl]                                    ; $5e38: $66
    ld h, a                                       ; $5e39: $67
    ld [hl], a                                    ; $5e3a: $77
    add a                                         ; $5e3b: $87
    ld h, [hl]                                    ; $5e3c: $66
    ld h, [hl]                                    ; $5e3d: $66
    ld h, [hl]                                    ; $5e3e: $66
    ld d, l                                       ; $5e3f: $55
    ld h, a                                       ; $5e40: $67
    ld [hl], a                                    ; $5e41: $77
    adc b                                         ; $5e42: $88
    adc c                                         ; $5e43: $89
    sbc c                                         ; $5e44: $99
    sbc c                                         ; $5e45: $99
    adc b                                         ; $5e46: $88
    sbc c                                         ; $5e47: $99
    sbc c                                         ; $5e48: $99
    sbc c                                         ; $5e49: $99
    sbc b                                         ; $5e4a: $98
    add a                                         ; $5e4b: $87
    ld a, b                                       ; $5e4c: $78
    add a                                         ; $5e4d: $87
    ld h, [hl]                                    ; $5e4e: $66
    ld h, [hl]                                    ; $5e4f: $66
    add a                                         ; $5e50: $87
    ld [hl], a                                    ; $5e51: $77
    ld [hl], a                                    ; $5e52: $77
    adc b                                         ; $5e53: $88
    adc b                                         ; $5e54: $88
    sbc d                                         ; $5e55: $9a
    cp e                                          ; $5e56: $bb
    xor c                                         ; $5e57: $a9
    sbc d                                         ; $5e58: $9a
    cp e                                          ; $5e59: $bb
    xor c                                         ; $5e5a: $a9
    sbc b                                         ; $5e5b: $98
    ld [hl], a                                    ; $5e5c: $77
    ld [hl], a                                    ; $5e5d: $77
    halt                                          ; $5e5e: $76
    ld d, h                                       ; $5e5f: $54
    ld b, h                                       ; $5e60: $44
    inc sp                                        ; $5e61: $33
    inc sp                                        ; $5e62: $33
    ld b, l                                       ; $5e63: $45
    ld h, l                                       ; $5e64: $65
    ld d, l                                       ; $5e65: $55
    ld b, l                                       ; $5e66: $45
    ld h, a                                       ; $5e67: $67
    adc b                                         ; $5e68: $88
    adc b                                         ; $5e69: $88
    ld [hl], a                                    ; $5e6a: $77
    adc b                                         ; $5e6b: $88
    sbc d                                         ; $5e6c: $9a
    xor c                                         ; $5e6d: $a9
    adc b                                         ; $5e6e: $88
    halt                                          ; $5e6f: $76
    ld d, l                                       ; $5e70: $55
    ld d, l                                       ; $5e71: $55
    ld h, [hl]                                    ; $5e72: $66
    ld h, [hl]                                    ; $5e73: $66
    ld h, [hl]                                    ; $5e74: $66
    ld [hl], a                                    ; $5e75: $77
    adc b                                         ; $5e76: $88
    add a                                         ; $5e77: $87
    ld [hl], a                                    ; $5e78: $77
    ld [hl], a                                    ; $5e79: $77
    adc c                                         ; $5e7a: $89
    sbc d                                         ; $5e7b: $9a
    xor d                                         ; $5e7c: $aa
    cp d                                          ; $5e7d: $ba
    sbc c                                         ; $5e7e: $99
    xor c                                         ; $5e7f: $a9
    sbc d                                         ; $5e80: $9a
    xor d                                         ; $5e81: $aa
    xor c                                         ; $5e82: $a9
    sbc c                                         ; $5e83: $99
    sbc c                                         ; $5e84: $99
    xor d                                         ; $5e85: $aa
    xor d                                         ; $5e86: $aa
    sbc b                                         ; $5e87: $98
    ld [hl], a                                    ; $5e88: $77
    halt                                          ; $5e89: $76
    ld h, [hl]                                    ; $5e8a: $66
    ld h, [hl]                                    ; $5e8b: $66
    ld d, l                                       ; $5e8c: $55
    ld d, l                                       ; $5e8d: $55
    ld d, l                                       ; $5e8e: $55
    ld d, l                                       ; $5e8f: $55
    ld d, l                                       ; $5e90: $55
    ld b, l                                       ; $5e91: $45
    ld d, l                                       ; $5e92: $55
    ld d, l                                       ; $5e93: $55
    ld h, [hl]                                    ; $5e94: $66
    ld h, [hl]                                    ; $5e95: $66
    ld [hl], a                                    ; $5e96: $77
    ld [hl], a                                    ; $5e97: $77
    ld a, b                                       ; $5e98: $78
    adc b                                         ; $5e99: $88
    sbc c                                         ; $5e9a: $99
    sbc c                                         ; $5e9b: $99
    sbc c                                         ; $5e9c: $99
    xor d                                         ; $5e9d: $aa
    sbc c                                         ; $5e9e: $99
    sbc d                                         ; $5e9f: $9a
    sbc c                                         ; $5ea0: $99
    sbc b                                         ; $5ea1: $98
    adc b                                         ; $5ea2: $88
    add a                                         ; $5ea3: $87
    ld [hl], a                                    ; $5ea4: $77
    adc c                                         ; $5ea5: $89
    xor e                                         ; $5ea6: $ab
    cp e                                          ; $5ea7: $bb
    cp e                                          ; $5ea8: $bb
    xor d                                         ; $5ea9: $aa
    xor c                                         ; $5eaa: $a9
    sbc c                                         ; $5eab: $99
    sbc b                                         ; $5eac: $98
    add a                                         ; $5ead: $87
    ld h, [hl]                                    ; $5eae: $66
    ld h, a                                       ; $5eaf: $67
    add [hl]                                      ; $5eb0: $86
    ld h, [hl]                                    ; $5eb1: $66
    ld [hl], a                                    ; $5eb2: $77
    ld h, [hl]                                    ; $5eb3: $66
    ld d, l                                       ; $5eb4: $55
    ld d, [hl]                                    ; $5eb5: $56
    ld [hl], a                                    ; $5eb6: $77
    ld [hl], a                                    ; $5eb7: $77
    ld [hl], a                                    ; $5eb8: $77
    adc b                                         ; $5eb9: $88
    adc b                                         ; $5eba: $88
    add a                                         ; $5ebb: $87
    ld [hl], a                                    ; $5ebc: $77
    add a                                         ; $5ebd: $87
    ld h, a                                       ; $5ebe: $67
    ld [hl], a                                    ; $5ebf: $77
    adc b                                         ; $5ec0: $88
    adc b                                         ; $5ec1: $88
    adc b                                         ; $5ec2: $88
    add a                                         ; $5ec3: $87
    ld a, b                                       ; $5ec4: $78
    adc c                                         ; $5ec5: $89
    sbc c                                         ; $5ec6: $99
    sbc c                                         ; $5ec7: $99
    adc b                                         ; $5ec8: $88
    add a                                         ; $5ec9: $87
    ld [hl], a                                    ; $5eca: $77
    ld [hl], a                                    ; $5ecb: $77
    ld [hl], a                                    ; $5ecc: $77
    ld h, [hl]                                    ; $5ecd: $66
    ld d, l                                       ; $5ece: $55
    ld d, l                                       ; $5ecf: $55
    ld h, [hl]                                    ; $5ed0: $66
    ld [hl], a                                    ; $5ed1: $77
    ld [hl], a                                    ; $5ed2: $77
    ld [hl], a                                    ; $5ed3: $77
    ld [hl], a                                    ; $5ed4: $77
    ld [hl], a                                    ; $5ed5: $77
    ld [hl], a                                    ; $5ed6: $77
    ld [hl], a                                    ; $5ed7: $77
    ld a, b                                       ; $5ed8: $78
    adc b                                         ; $5ed9: $88
    adc b                                         ; $5eda: $88
    add a                                         ; $5edb: $87
    ld a, b                                       ; $5edc: $78
    adc b                                         ; $5edd: $88
    adc b                                         ; $5ede: $88
    ld [hl], a                                    ; $5edf: $77
    add a                                         ; $5ee0: $87
    adc b                                         ; $5ee1: $88
    add a                                         ; $5ee2: $87
    ld [hl], a                                    ; $5ee3: $77
    adc b                                         ; $5ee4: $88
    adc c                                         ; $5ee5: $89
    sbc c                                         ; $5ee6: $99
    xor d                                         ; $5ee7: $aa
    xor c                                         ; $5ee8: $a9
    sbc c                                         ; $5ee9: $99
    xor c                                         ; $5eea: $a9
    sbc b                                         ; $5eeb: $98
    add a                                         ; $5eec: $87
    adc b                                         ; $5eed: $88
    adc c                                         ; $5eee: $89
    sbc b                                         ; $5eef: $98
    ld h, [hl]                                    ; $5ef0: $66
    ld h, a                                       ; $5ef1: $67
    ld a, b                                       ; $5ef2: $78
    adc c                                         ; $5ef3: $89
    sbc c                                         ; $5ef4: $99
    sbc c                                         ; $5ef5: $99
    adc c                                         ; $5ef6: $89
    adc b                                         ; $5ef7: $88
    adc b                                         ; $5ef8: $88
    adc b                                         ; $5ef9: $88
    sbc c                                         ; $5efa: $99
    xor d                                         ; $5efb: $aa
    sbc c                                         ; $5efc: $99
    adc b                                         ; $5efd: $88
    adc b                                         ; $5efe: $88
    sbc b                                         ; $5eff: $98
    add a                                         ; $5f00: $87
    halt                                          ; $5f01: $76
    ld h, [hl]                                    ; $5f02: $66
    ld h, [hl]                                    ; $5f03: $66
    ld h, [hl]                                    ; $5f04: $66
    ld a, b                                       ; $5f05: $78
    adc b                                         ; $5f06: $88
    adc b                                         ; $5f07: $88
    adc b                                         ; $5f08: $88
    adc b                                         ; $5f09: $88
    adc b                                         ; $5f0a: $88
    ld [hl], a                                    ; $5f0b: $77
    ld [hl], a                                    ; $5f0c: $77
    halt                                          ; $5f0d: $76
    ld h, [hl]                                    ; $5f0e: $66
    ld d, h                                       ; $5f0f: $54
    ld b, h                                       ; $5f10: $44
    ld d, [hl]                                    ; $5f11: $56
    ld h, [hl]                                    ; $5f12: $66
    ld h, l                                       ; $5f13: $65
    ld d, l                                       ; $5f14: $55
    ld d, l                                       ; $5f15: $55
    ld d, l                                       ; $5f16: $55
    ld b, e                                       ; $5f17: $43
    inc [hl]                                      ; $5f18: $34
    ld b, l                                       ; $5f19: $45
    ld d, l                                       ; $5f1a: $55
    ld h, [hl]                                    ; $5f1b: $66
    ld h, a                                       ; $5f1c: $67
    ld [hl], a                                    ; $5f1d: $77
    ld a, b                                       ; $5f1e: $78
    add a                                         ; $5f1f: $87
    add a                                         ; $5f20: $87
    ld [hl], a                                    ; $5f21: $77
    adc b                                         ; $5f22: $88
    sbc c                                         ; $5f23: $99
    xor d                                         ; $5f24: $aa
    xor d                                         ; $5f25: $aa
    sbc b                                         ; $5f26: $98
    adc b                                         ; $5f27: $88
    adc b                                         ; $5f28: $88
    sbc c                                         ; $5f29: $99
    xor d                                         ; $5f2a: $aa
    xor d                                         ; $5f2b: $aa
    sbc c                                         ; $5f2c: $99
    xor d                                         ; $5f2d: $aa
    xor d                                         ; $5f2e: $aa
    xor c                                         ; $5f2f: $a9
    adc b                                         ; $5f30: $88
    adc c                                         ; $5f31: $89
    sbc c                                         ; $5f32: $99
    sbc c                                         ; $5f33: $99
    adc b                                         ; $5f34: $88
    adc b                                         ; $5f35: $88
    ld [hl], a                                    ; $5f36: $77
    ld [hl], a                                    ; $5f37: $77
    ld [hl], a                                    ; $5f38: $77
    halt                                          ; $5f39: $76
    ld h, [hl]                                    ; $5f3a: $66
    ld h, a                                       ; $5f3b: $67
    ld [hl], a                                    ; $5f3c: $77
    ld [hl], a                                    ; $5f3d: $77
    ld a, b                                       ; $5f3e: $78
    ld [hl], a                                    ; $5f3f: $77
    adc b                                         ; $5f40: $88
    adc b                                         ; $5f41: $88
    adc b                                         ; $5f42: $88
    sbc c                                         ; $5f43: $99
    xor e                                         ; $5f44: $ab
    xor c                                         ; $5f45: $a9
    sbc c                                         ; $5f46: $99
    adc b                                         ; $5f47: $88
    ld a, b                                       ; $5f48: $78
    adc b                                         ; $5f49: $88
    adc b                                         ; $5f4a: $88
    sbc d                                         ; $5f4b: $9a
    xor d                                         ; $5f4c: $aa
    xor c                                         ; $5f4d: $a9
    sbc b                                         ; $5f4e: $98
    adc c                                         ; $5f4f: $89
    adc b                                         ; $5f50: $88
    adc b                                         ; $5f51: $88
    ld [hl], a                                    ; $5f52: $77
    halt                                          ; $5f53: $76
    ld h, [hl]                                    ; $5f54: $66
    ld d, l                                       ; $5f55: $55
    ld d, l                                       ; $5f56: $55
    ld d, [hl]                                    ; $5f57: $56
    ld h, [hl]                                    ; $5f58: $66
    ld h, [hl]                                    ; $5f59: $66
    ld h, a                                       ; $5f5a: $67
    ld [hl], a                                    ; $5f5b: $77
    ld [hl], a                                    ; $5f5c: $77
    ld [hl], a                                    ; $5f5d: $77
    ld [hl], a                                    ; $5f5e: $77
    ld a, b                                       ; $5f5f: $78
    sbc c                                         ; $5f60: $99
    sbc c                                         ; $5f61: $99
    sbc c                                         ; $5f62: $99
    adc b                                         ; $5f63: $88
    ld [hl], a                                    ; $5f64: $77
    ld [hl], a                                    ; $5f65: $77
    halt                                          ; $5f66: $76
    ld h, [hl]                                    ; $5f67: $66
    ld h, [hl]                                    ; $5f68: $66
    ld h, [hl]                                    ; $5f69: $66
    ld h, l                                       ; $5f6a: $65
    ld d, l                                       ; $5f6b: $55
    ld h, [hl]                                    ; $5f6c: $66
    ld d, l                                       ; $5f6d: $55
    ld d, h                                       ; $5f6e: $54
    ld d, l                                       ; $5f6f: $55
    ld d, [hl]                                    ; $5f70: $56
    ld h, [hl]                                    ; $5f71: $66
    ld h, [hl]                                    ; $5f72: $66
    ld [hl], a                                    ; $5f73: $77
    ld [hl], a                                    ; $5f74: $77
    ld a, b                                       ; $5f75: $78
    sbc c                                         ; $5f76: $99
    sbc b                                         ; $5f77: $98
    adc b                                         ; $5f78: $88
    adc c                                         ; $5f79: $89
    sbc d                                         ; $5f7a: $9a
    xor d                                         ; $5f7b: $aa
    xor d                                         ; $5f7c: $aa
    sbc c                                         ; $5f7d: $99
    sbc c                                         ; $5f7e: $99
    sbc c                                         ; $5f7f: $99
    sbc d                                         ; $5f80: $9a
    xor d                                         ; $5f81: $aa
    xor d                                         ; $5f82: $aa
    xor d                                         ; $5f83: $aa
    sbc c                                         ; $5f84: $99
    xor d                                         ; $5f85: $aa
    cp e                                          ; $5f86: $bb
    xor c                                         ; $5f87: $a9
    sbc b                                         ; $5f88: $98
    adc b                                         ; $5f89: $88
    ld [hl], a                                    ; $5f8a: $77
    halt                                          ; $5f8b: $76
    ld h, [hl]                                    ; $5f8c: $66
    ld h, a                                       ; $5f8d: $67
    ld [hl], a                                    ; $5f8e: $77
    ld h, [hl]                                    ; $5f8f: $66
    ld h, [hl]                                    ; $5f90: $66
    ld h, a                                       ; $5f91: $67
    ld [hl], a                                    ; $5f92: $77
    ld [hl], a                                    ; $5f93: $77
    adc b                                         ; $5f94: $88
    sbc c                                         ; $5f95: $99
    xor d                                         ; $5f96: $aa
    cp e                                          ; $5f97: $bb
    cp d                                          ; $5f98: $ba
    xor c                                         ; $5f99: $a9
    adc b                                         ; $5f9a: $88
    add a                                         ; $5f9b: $87
    ld [hl], a                                    ; $5f9c: $77
    halt                                          ; $5f9d: $76
    ld h, [hl]                                    ; $5f9e: $66
    ld d, l                                       ; $5f9f: $55
    ld d, [hl]                                    ; $5fa0: $56
    ld h, [hl]                                    ; $5fa1: $66
    ld h, [hl]                                    ; $5fa2: $66
    ld h, [hl]                                    ; $5fa3: $66
    ld h, a                                       ; $5fa4: $67
    ld [hl], a                                    ; $5fa5: $77
    ld a, b                                       ; $5fa6: $78
    ld [hl], a                                    ; $5fa7: $77
    ld a, b                                       ; $5fa8: $78
    adc b                                         ; $5fa9: $88
    add a                                         ; $5faa: $87
    ld [hl], a                                    ; $5fab: $77
    ld [hl], a                                    ; $5fac: $77
    ld [hl], a                                    ; $5fad: $77
    ld h, a                                       ; $5fae: $67
    halt                                          ; $5faf: $76
    ld h, [hl]                                    ; $5fb0: $66
    ld [hl], a                                    ; $5fb1: $77
    ld [hl], a                                    ; $5fb2: $77
    ld h, [hl]                                    ; $5fb3: $66
    ld h, [hl]                                    ; $5fb4: $66
    ld h, l                                       ; $5fb5: $65
    ld d, l                                       ; $5fb6: $55
    ld h, [hl]                                    ; $5fb7: $66
    ld h, [hl]                                    ; $5fb8: $66
    ld h, a                                       ; $5fb9: $67
    ld a, b                                       ; $5fba: $78
    adc b                                         ; $5fbb: $88
    ld [hl], a                                    ; $5fbc: $77
    add a                                         ; $5fbd: $87
    halt                                          ; $5fbe: $76
    ld h, [hl]                                    ; $5fbf: $66
    ld h, [hl]                                    ; $5fc0: $66
    ld h, a                                       ; $5fc1: $67
    halt                                          ; $5fc2: $76
    ld h, l                                       ; $5fc3: $65
    ld d, l                                       ; $5fc4: $55
    ld d, l                                       ; $5fc5: $55
    ld d, l                                       ; $5fc6: $55
    ld h, [hl]                                    ; $5fc7: $66
    ld a, b                                       ; $5fc8: $78
    ld a, b                                       ; $5fc9: $78
    sbc c                                         ; $5fca: $99
    sbc c                                         ; $5fcb: $99
    sbc c                                         ; $5fcc: $99
    sbc c                                         ; $5fcd: $99
    sbc c                                         ; $5fce: $99
    sbc d                                         ; $5fcf: $9a
    xor d                                         ; $5fd0: $aa
    xor d                                         ; $5fd1: $aa
    sbc c                                         ; $5fd2: $99
    adc b                                         ; $5fd3: $88
    adc b                                         ; $5fd4: $88
    sbc c                                         ; $5fd5: $99
    sbc c                                         ; $5fd6: $99
    sbc b                                         ; $5fd7: $98
    adc b                                         ; $5fd8: $88
    adc b                                         ; $5fd9: $88
    sbc c                                         ; $5fda: $99
    sbc c                                         ; $5fdb: $99
    sbc b                                         ; $5fdc: $98
    adc c                                         ; $5fdd: $89
    sbc c                                         ; $5fde: $99
    sbc c                                         ; $5fdf: $99
    sbc d                                         ; $5fe0: $9a
    xor d                                         ; $5fe1: $aa
    sbc d                                         ; $5fe2: $9a
    xor d                                         ; $5fe3: $aa
    xor d                                         ; $5fe4: $aa
    xor c                                         ; $5fe5: $a9
    sbc b                                         ; $5fe6: $98
    adc b                                         ; $5fe7: $88
    ld a, b                                       ; $5fe8: $78
    sbc c                                         ; $5fe9: $99
    sbc c                                         ; $5fea: $99
    sbc d                                         ; $5feb: $9a
    cp e                                          ; $5fec: $bb
    xor c                                         ; $5fed: $a9
    sbc d                                         ; $5fee: $9a
    xor d                                         ; $5fef: $aa
    sbc b                                         ; $5ff0: $98
    ld [hl], a                                    ; $5ff1: $77
    ld [hl], a                                    ; $5ff2: $77
    ld h, [hl]                                    ; $5ff3: $66
    ld d, l                                       ; $5ff4: $55
    ld b, l                                       ; $5ff5: $45
    ld d, [hl]                                    ; $5ff6: $56
    ld h, [hl]                                    ; $5ff7: $66
    ld h, a                                       ; $5ff8: $67
    ld [hl], a                                    ; $5ff9: $77
    ld h, [hl]                                    ; $5ffa: $66
    ld h, [hl]                                    ; $5ffb: $66
    ld h, [hl]                                    ; $5ffc: $66
    ld h, [hl]                                    ; $5ffd: $66
    ld h, [hl]                                    ; $5ffe: $66
    ld a, b                                       ; $5fff: $78
    adc b                                         ; $6000: $88
    sbc b                                         ; $6001: $98
    adc b                                         ; $6002: $88
    adc c                                         ; $6003: $89
    sbc b                                         ; $6004: $98
    ld [hl], a                                    ; $6005: $77
    add a                                         ; $6006: $87
    ld h, [hl]                                    ; $6007: $66
    ld h, a                                       ; $6008: $67
    ld [hl], a                                    ; $6009: $77
    ld [hl], a                                    ; $600a: $77
    ld [hl], l                                    ; $600b: $75
    ld b, e                                       ; $600c: $43
    ld [hl-], a                                   ; $600d: $32
    inc sp                                        ; $600e: $33
    ld b, e                                       ; $600f: $43
    inc [hl]                                      ; $6010: $34
    ld d, l                                       ; $6011: $55
    ld d, [hl]                                    ; $6012: $56
    ld h, a                                       ; $6013: $67
    ld [hl], a                                    ; $6014: $77
    adc b                                         ; $6015: $88
    ld a, b                                       ; $6016: $78
    adc b                                         ; $6017: $88
    adc b                                         ; $6018: $88
    adc b                                         ; $6019: $88
    add a                                         ; $601a: $87
    ld [hl], a                                    ; $601b: $77
    ld [hl], a                                    ; $601c: $77
    adc b                                         ; $601d: $88
    halt                                          ; $601e: $76
    ld h, [hl]                                    ; $601f: $66
    ld h, [hl]                                    ; $6020: $66
    ld h, [hl]                                    ; $6021: $66
    ld h, [hl]                                    ; $6022: $66
    ld [hl], a                                    ; $6023: $77
    ld [hl], a                                    ; $6024: $77
    ld [hl], a                                    ; $6025: $77
    ld a, b                                       ; $6026: $78
    sbc c                                         ; $6027: $99
    sbc c                                         ; $6028: $99
    xor d                                         ; $6029: $aa
    xor d                                         ; $602a: $aa
    xor d                                         ; $602b: $aa
    sbc b                                         ; $602c: $98
    ld [hl], a                                    ; $602d: $77
    halt                                          ; $602e: $76
    ld h, [hl]                                    ; $602f: $66
    ld h, a                                       ; $6030: $67
    ld [hl], a                                    ; $6031: $77
    ld a, b                                       ; $6032: $78
    adc b                                         ; $6033: $88
    adc b                                         ; $6034: $88
    adc b                                         ; $6035: $88
    ld [hl], a                                    ; $6036: $77
    adc c                                         ; $6037: $89
    xor e                                         ; $6038: $ab
    cp e                                          ; $6039: $bb
    cp e                                          ; $603a: $bb
    cp h                                          ; $603b: $bc
    jp z, $8899                                   ; $603c: $ca $99 $88

    sbc c                                         ; $603f: $99
    sbc d                                         ; $6040: $9a
    sbc c                                         ; $6041: $99
    adc b                                         ; $6042: $88
    sbc d                                         ; $6043: $9a
    xor d                                         ; $6044: $aa
    xor c                                         ; $6045: $a9
    add a                                         ; $6046: $87
    ld [hl], a                                    ; $6047: $77
    ld [hl], a                                    ; $6048: $77
    adc b                                         ; $6049: $88
    sbc b                                         ; $604a: $98
    adc b                                         ; $604b: $88
    add a                                         ; $604c: $87
    ld [hl], a                                    ; $604d: $77
    ld a, b                                       ; $604e: $78
    ld [hl], a                                    ; $604f: $77
    add a                                         ; $6050: $87
    ld [hl], a                                    ; $6051: $77
    ld [hl], a                                    ; $6052: $77
    ld a, b                                       ; $6053: $78
    ld [hl], a                                    ; $6054: $77
    ld h, [hl]                                    ; $6055: $66
    ld d, l                                       ; $6056: $55
    ld h, a                                       ; $6057: $67
    adc b                                         ; $6058: $88
    add a                                         ; $6059: $87
    ld [hl], a                                    ; $605a: $77
    ld h, [hl]                                    ; $605b: $66
    ld h, [hl]                                    ; $605c: $66
    ld h, l                                       ; $605d: $65
    ld d, l                                       ; $605e: $55
    ld h, [hl]                                    ; $605f: $66
    ld h, [hl]                                    ; $6060: $66
    ld h, [hl]                                    ; $6061: $66
    ld d, [hl]                                    ; $6062: $56
    ld h, a                                       ; $6063: $67
    ld h, [hl]                                    ; $6064: $66
    ld l, b                                       ; $6065: $68
    adc b                                         ; $6066: $88
    adc b                                         ; $6067: $88
    adc b                                         ; $6068: $88
    adc c                                         ; $6069: $89
    xor d                                         ; $606a: $aa
    xor d                                         ; $606b: $aa
    xor d                                         ; $606c: $aa
    xor d                                         ; $606d: $aa
    xor d                                         ; $606e: $aa
    xor d                                         ; $606f: $aa
    xor c                                         ; $6070: $a9
    sbc c                                         ; $6071: $99
    adc b                                         ; $6072: $88
    sbc c                                         ; $6073: $99
    sbc c                                         ; $6074: $99
    sbc c                                         ; $6075: $99
    sbc b                                         ; $6076: $98
    adc b                                         ; $6077: $88
    add a                                         ; $6078: $87
    ld [hl], a                                    ; $6079: $77
    ld h, [hl]                                    ; $607a: $66
    ld h, a                                       ; $607b: $67
    ld [hl], a                                    ; $607c: $77
    ld [hl], a                                    ; $607d: $77
    ld h, [hl]                                    ; $607e: $66
    ld [hl], a                                    ; $607f: $77
    add a                                         ; $6080: $87
    ld h, l                                       ; $6081: $65
    ld d, [hl]                                    ; $6082: $56
    ld a, b                                       ; $6083: $78
    adc b                                         ; $6084: $88
    ld [hl], a                                    ; $6085: $77
    ld h, [hl]                                    ; $6086: $66
    ld d, h                                       ; $6087: $54
    ld b, l                                       ; $6088: $45
    ld d, [hl]                                    ; $6089: $56
    ld h, [hl]                                    ; $608a: $66
    ld h, a                                       ; $608b: $67
    ld h, [hl]                                    ; $608c: $66
    ld h, [hl]                                    ; $608d: $66
    ld [hl], a                                    ; $608e: $77
    ld [hl], a                                    ; $608f: $77
    add a                                         ; $6090: $87
    ld [hl], a                                    ; $6091: $77
    ld [hl], a                                    ; $6092: $77
    ld [hl], a                                    ; $6093: $77
    ld [hl], a                                    ; $6094: $77
    ld [hl], a                                    ; $6095: $77
    halt                                          ; $6096: $76
    ld h, l                                       ; $6097: $65
    ld d, l                                       ; $6098: $55
    ld b, l                                       ; $6099: $45
    ld [hl], a                                    ; $609a: $77
    halt                                          ; $609b: $76
    ld h, [hl]                                    ; $609c: $66
    ld d, l                                       ; $609d: $55
    ld d, l                                       ; $609e: $55
    ld h, [hl]                                    ; $609f: $66
    ld h, [hl]                                    ; $60a0: $66
    ld d, [hl]                                    ; $60a1: $56
    ld h, [hl]                                    ; $60a2: $66
    ld h, [hl]                                    ; $60a3: $66
    ld [hl], a                                    ; $60a4: $77
    ld [hl], a                                    ; $60a5: $77
    ld a, b                                       ; $60a6: $78
    sbc d                                         ; $60a7: $9a
    xor d                                         ; $60a8: $aa
    xor c                                         ; $60a9: $a9
    sbc c                                         ; $60aa: $99
    sbc c                                         ; $60ab: $99
    adc b                                         ; $60ac: $88
    ld [hl], a                                    ; $60ad: $77
    adc b                                         ; $60ae: $88
    adc b                                         ; $60af: $88
    adc c                                         ; $60b0: $89
    sbc c                                         ; $60b1: $99
    sbc c                                         ; $60b2: $99
    sbc c                                         ; $60b3: $99
    sbc c                                         ; $60b4: $99
    sbc c                                         ; $60b5: $99
    xor c                                         ; $60b6: $a9
    sbc c                                         ; $60b7: $99
    sbc d                                         ; $60b8: $9a
    xor d                                         ; $60b9: $aa
    xor d                                         ; $60ba: $aa
    xor d                                         ; $60bb: $aa
    xor c                                         ; $60bc: $a9
    sbc c                                         ; $60bd: $99
    sbc d                                         ; $60be: $9a
    cp e                                          ; $60bf: $bb
    call z, $a9ba                                 ; $60c0: $cc $ba $a9
    sbc c                                         ; $60c3: $99
    sbc c                                         ; $60c4: $99
    xor d                                         ; $60c5: $aa
    xor e                                         ; $60c6: $ab
    cp e                                          ; $60c7: $bb
    cp e                                          ; $60c8: $bb
    cp d                                          ; $60c9: $ba
    xor c                                         ; $60ca: $a9
    adc b                                         ; $60cb: $88
    adc b                                         ; $60cc: $88
    adc b                                         ; $60cd: $88
    sbc b                                         ; $60ce: $98
    adc b                                         ; $60cf: $88
    sbc c                                         ; $60d0: $99
    sbc c                                         ; $60d1: $99
    sbc c                                         ; $60d2: $99
    sbc b                                         ; $60d3: $98
    add a                                         ; $60d4: $87
    ld [hl], a                                    ; $60d5: $77
    ld [hl], a                                    ; $60d6: $77
    ld h, [hl]                                    ; $60d7: $66
    ld h, l                                       ; $60d8: $65
    ld d, l                                       ; $60d9: $55
    ld d, l                                       ; $60da: $55
    ld d, l                                       ; $60db: $55
    ld d, [hl]                                    ; $60dc: $56
    ld h, [hl]                                    ; $60dd: $66
    ld h, [hl]                                    ; $60de: $66
    ld h, l                                       ; $60df: $65
    ld d, h                                       ; $60e0: $54
    ld b, h                                       ; $60e1: $44
    ld b, h                                       ; $60e2: $44
    inc [hl]                                      ; $60e3: $34
    ld b, h                                       ; $60e4: $44
    ld d, l                                       ; $60e5: $55
    ld d, l                                       ; $60e6: $55
    ld h, [hl]                                    ; $60e7: $66
    ld h, [hl]                                    ; $60e8: $66
    ld d, l                                       ; $60e9: $55
    ld d, l                                       ; $60ea: $55
    ld b, h                                       ; $60eb: $44
    ld b, h                                       ; $60ec: $44
    ld b, h                                       ; $60ed: $44
    ld d, l                                       ; $60ee: $55
    ld b, l                                       ; $60ef: $45
    ld d, l                                       ; $60f0: $55
    ld d, l                                       ; $60f1: $55
    ld h, a                                       ; $60f2: $67
    adc b                                         ; $60f3: $88
    adc b                                         ; $60f4: $88
    add a                                         ; $60f5: $87
    ld [hl], a                                    ; $60f6: $77
    ld [hl], a                                    ; $60f7: $77
    halt                                          ; $60f8: $76
    ld h, [hl]                                    ; $60f9: $66
    ld h, [hl]                                    ; $60fa: $66
    ld h, [hl]                                    ; $60fb: $66
    ld h, l                                       ; $60fc: $65
    ld d, l                                       ; $60fd: $55
    ld d, [hl]                                    ; $60fe: $56
    ld h, [hl]                                    ; $60ff: $66
    ld h, [hl]                                    ; $6100: $66
    ld h, a                                       ; $6101: $67
    ld [hl], a                                    ; $6102: $77
    ld a, b                                       ; $6103: $78
    adc c                                         ; $6104: $89
    xor d                                         ; $6105: $aa
    cp d                                          ; $6106: $ba
    xor c                                         ; $6107: $a9
    sbc d                                         ; $6108: $9a
    xor d                                         ; $6109: $aa
    xor e                                         ; $610a: $ab
    cp e                                          ; $610b: $bb
    cp d                                          ; $610c: $ba
    xor c                                         ; $610d: $a9
    sbc c                                         ; $610e: $99
    sbc c                                         ; $610f: $99
    sbc b                                         ; $6110: $98
    adc c                                         ; $6111: $89
    sbc d                                         ; $6112: $9a
    cp e                                          ; $6113: $bb
    call z, $aabb                                 ; $6114: $cc $bb $aa
    xor d                                         ; $6117: $aa
    xor d                                         ; $6118: $aa
    sbc c                                         ; $6119: $99
    sbc c                                         ; $611a: $99
    sbc c                                         ; $611b: $99
    sbc c                                         ; $611c: $99
    sbc c                                         ; $611d: $99
    sbc c                                         ; $611e: $99
    sbc b                                         ; $611f: $98
    adc b                                         ; $6120: $88
    add a                                         ; $6121: $87
    ld a, b                                       ; $6122: $78
    adc b                                         ; $6123: $88
    halt                                          ; $6124: $76
    ld h, [hl]                                    ; $6125: $66
    ld [hl], a                                    ; $6126: $77
    adc c                                         ; $6127: $89
    sbc c                                         ; $6128: $99
    xor d                                         ; $6129: $aa
    sbc c                                         ; $612a: $99
    adc b                                         ; $612b: $88
    adc b                                         ; $612c: $88
    halt                                          ; $612d: $76
    ld [hl], a                                    ; $612e: $77
    halt                                          ; $612f: $76
    ld h, [hl]                                    ; $6130: $66
    ld h, [hl]                                    ; $6131: $66
    ld d, l                                       ; $6132: $55
    ld d, l                                       ; $6133: $55
    ld b, h                                       ; $6134: $44
    ld b, l                                       ; $6135: $45
    ld d, [hl]                                    ; $6136: $56
    ld h, a                                       ; $6137: $67
    adc b                                         ; $6138: $88
    sbc d                                         ; $6139: $9a
    cp d                                          ; $613a: $ba
    xor c                                         ; $613b: $a9
    adc b                                         ; $613c: $88
    add a                                         ; $613d: $87
    halt                                          ; $613e: $76
    ld h, [hl]                                    ; $613f: $66
    add a                                         ; $6140: $87
    ld [hl], a                                    ; $6141: $77
    ld h, a                                       ; $6142: $67
    ld a, b                                       ; $6143: $78
    adc b                                         ; $6144: $88
    adc b                                         ; $6145: $88
    halt                                          ; $6146: $76
    ld h, [hl]                                    ; $6147: $66
    ld h, a                                       ; $6148: $67
    ld [hl], a                                    ; $6149: $77
    ld [hl], a                                    ; $614a: $77
    halt                                          ; $614b: $76
    ld h, a                                       ; $614c: $67
    ld [hl], a                                    ; $614d: $77
    adc b                                         ; $614e: $88
    ld [hl], a                                    ; $614f: $77
    add a                                         ; $6150: $87
    ld h, [hl]                                    ; $6151: $66
    ld h, [hl]                                    ; $6152: $66
    ld h, [hl]                                    ; $6153: $66
    ld h, [hl]                                    ; $6154: $66
    ld [hl], a                                    ; $6155: $77
    ld a, b                                       ; $6156: $78
    ld [hl], a                                    ; $6157: $77
    ld a, b                                       ; $6158: $78
    adc b                                         ; $6159: $88
    adc b                                         ; $615a: $88
    adc b                                         ; $615b: $88
    add a                                         ; $615c: $87
    ld [hl], a                                    ; $615d: $77
    ld [hl], a                                    ; $615e: $77
    ld h, [hl]                                    ; $615f: $66
    ld h, [hl]                                    ; $6160: $66
    ld h, a                                       ; $6161: $67
    ld a, b                                       ; $6162: $78
    adc b                                         ; $6163: $88
    adc c                                         ; $6164: $89
    sbc c                                         ; $6165: $99
    sbc c                                         ; $6166: $99
    sbc d                                         ; $6167: $9a
    sbc c                                         ; $6168: $99
    sbc c                                         ; $6169: $99
    sbc c                                         ; $616a: $99
    sbc c                                         ; $616b: $99
    sbc c                                         ; $616c: $99
    sbc c                                         ; $616d: $99
    sbc b                                         ; $616e: $98
    adc b                                         ; $616f: $88
    adc b                                         ; $6170: $88
    ld [hl], a                                    ; $6171: $77
    adc b                                         ; $6172: $88
    adc b                                         ; $6173: $88
    adc b                                         ; $6174: $88
    ld [hl], a                                    ; $6175: $77
    ld [hl], a                                    ; $6176: $77
    ld [hl], a                                    ; $6177: $77
    adc b                                         ; $6178: $88
    ld [hl], a                                    ; $6179: $77
    halt                                          ; $617a: $76
    ld h, l                                       ; $617b: $65
    ld h, [hl]                                    ; $617c: $66
    ld h, [hl]                                    ; $617d: $66
    ld h, [hl]                                    ; $617e: $66
    ld h, [hl]                                    ; $617f: $66
    ld d, l                                       ; $6180: $55
    ld h, [hl]                                    ; $6181: $66
    ld h, [hl]                                    ; $6182: $66
    ld [hl], a                                    ; $6183: $77
    halt                                          ; $6184: $76
    ld h, [hl]                                    ; $6185: $66
    ld h, [hl]                                    ; $6186: $66
    ld h, [hl]                                    ; $6187: $66
    ld h, [hl]                                    ; $6188: $66
    ld h, [hl]                                    ; $6189: $66
    ld [hl], a                                    ; $618a: $77
    ld a, b                                       ; $618b: $78
    adc b                                         ; $618c: $88
    ld [hl], a                                    ; $618d: $77
    ld [hl], a                                    ; $618e: $77
    ld [hl], a                                    ; $618f: $77
    add a                                         ; $6190: $87
    adc b                                         ; $6191: $88
    adc b                                         ; $6192: $88
    sbc c                                         ; $6193: $99
    xor d                                         ; $6194: $aa
    xor c                                         ; $6195: $a9
    sbc b                                         ; $6196: $98
    adc b                                         ; $6197: $88
    add a                                         ; $6198: $87
    ld [hl], a                                    ; $6199: $77
    adc b                                         ; $619a: $88
    adc b                                         ; $619b: $88
    sbc c                                         ; $619c: $99
    sbc c                                         ; $619d: $99
    adc b                                         ; $619e: $88
    sbc c                                         ; $619f: $99
    sbc c                                         ; $61a0: $99
    sbc c                                         ; $61a1: $99
    sbc c                                         ; $61a2: $99
    adc b                                         ; $61a3: $88
    adc c                                         ; $61a4: $89
    sbc b                                         ; $61a5: $98
    add a                                         ; $61a6: $87
    ld [hl], a                                    ; $61a7: $77
    ld a, b                                       ; $61a8: $78
    adc b                                         ; $61a9: $88
    sbc c                                         ; $61aa: $99
    sbc c                                         ; $61ab: $99
    sbc c                                         ; $61ac: $99
    sbc c                                         ; $61ad: $99
    xor d                                         ; $61ae: $aa
    xor d                                         ; $61af: $aa
    xor d                                         ; $61b0: $aa
    sbc c                                         ; $61b1: $99
    sbc c                                         ; $61b2: $99
    adc b                                         ; $61b3: $88
    adc c                                         ; $61b4: $89
    sbc b                                         ; $61b5: $98
    adc b                                         ; $61b6: $88
    add a                                         ; $61b7: $87
    halt                                          ; $61b8: $76
    ld d, l                                       ; $61b9: $55
    ld d, l                                       ; $61ba: $55
    ld h, [hl]                                    ; $61bb: $66
    ld h, [hl]                                    ; $61bc: $66
    ld h, [hl]                                    ; $61bd: $66
    ld h, a                                       ; $61be: $67
    ld [hl], a                                    ; $61bf: $77
    add a                                         ; $61c0: $87
    adc b                                         ; $61c1: $88
    adc b                                         ; $61c2: $88
    adc b                                         ; $61c3: $88
    adc b                                         ; $61c4: $88
    adc b                                         ; $61c5: $88
    ld [hl], a                                    ; $61c6: $77
    ld [hl], a                                    ; $61c7: $77
    ld [hl], a                                    ; $61c8: $77
    ld [hl], a                                    ; $61c9: $77
    ld [hl], a                                    ; $61ca: $77
    ld h, [hl]                                    ; $61cb: $66
    ld h, [hl]                                    ; $61cc: $66
    ld h, a                                       ; $61cd: $67
    ld [hl], a                                    ; $61ce: $77
    ld h, [hl]                                    ; $61cf: $66
    add [hl]                                      ; $61d0: $86
    ld h, [hl]                                    ; $61d1: $66
    ld h, l                                       ; $61d2: $65
    ld d, l                                       ; $61d3: $55
    ld d, [hl]                                    ; $61d4: $56
    ld [hl], a                                    ; $61d5: $77
    ld [hl], a                                    ; $61d6: $77
    ld [hl], a                                    ; $61d7: $77
    ld [hl], a                                    ; $61d8: $77
    ld a, b                                       ; $61d9: $78
    adc c                                         ; $61da: $89
    sbc c                                         ; $61db: $99
    sbc b                                         ; $61dc: $98
    add a                                         ; $61dd: $87
    ld [hl], a                                    ; $61de: $77
    ld [hl], a                                    ; $61df: $77
    add a                                         ; $61e0: $87
    ld h, [hl]                                    ; $61e1: $66
    ld h, a                                       ; $61e2: $67
    ld [hl], a                                    ; $61e3: $77
    ld [hl], a                                    ; $61e4: $77
    ld [hl], a                                    ; $61e5: $77
    ld [hl], a                                    ; $61e6: $77
    ld [hl], a                                    ; $61e7: $77
    adc b                                         ; $61e8: $88
    adc b                                         ; $61e9: $88
    adc b                                         ; $61ea: $88
    adc b                                         ; $61eb: $88
    sbc c                                         ; $61ec: $99
    sbc c                                         ; $61ed: $99
    sbc c                                         ; $61ee: $99
    add a                                         ; $61ef: $87
    add a                                         ; $61f0: $87
    ld a, b                                       ; $61f1: $78
    adc b                                         ; $61f2: $88
    ld [hl], a                                    ; $61f3: $77
    ld h, [hl]                                    ; $61f4: $66
    ld h, [hl]                                    ; $61f5: $66
    ld h, a                                       ; $61f6: $67
    ld a, b                                       ; $61f7: $78
    adc b                                         ; $61f8: $88
    adc b                                         ; $61f9: $88
    adc b                                         ; $61fa: $88
    adc b                                         ; $61fb: $88
    adc b                                         ; $61fc: $88
    adc b                                         ; $61fd: $88
    adc b                                         ; $61fe: $88
    adc b                                         ; $61ff: $88
    adc b                                         ; $6200: $88
    add a                                         ; $6201: $87
    ld a, b                                       ; $6202: $78
    sbc c                                         ; $6203: $99
    sbc c                                         ; $6204: $99
    sbc c                                         ; $6205: $99
    sbc c                                         ; $6206: $99
    adc b                                         ; $6207: $88
    adc b                                         ; $6208: $88
    adc b                                         ; $6209: $88
    adc b                                         ; $620a: $88
    sbc c                                         ; $620b: $99
    sbc d                                         ; $620c: $9a
    xor c                                         ; $620d: $a9
    sbc b                                         ; $620e: $98
    adc b                                         ; $620f: $88
    add a                                         ; $6210: $87
    ld [hl], a                                    ; $6211: $77
    ld a, b                                       ; $6212: $78
    adc b                                         ; $6213: $88
    add a                                         ; $6214: $87
    ld [hl], a                                    ; $6215: $77
    ld [hl], a                                    ; $6216: $77
    ld h, [hl]                                    ; $6217: $66
    ld h, a                                       ; $6218: $67
    ld [hl], a                                    ; $6219: $77
    ld [hl], a                                    ; $621a: $77
    ld [hl], a                                    ; $621b: $77
    ld [hl], a                                    ; $621c: $77
    ld [hl], a                                    ; $621d: $77
    ld h, [hl]                                    ; $621e: $66
    ld h, [hl]                                    ; $621f: $66
    add a                                         ; $6220: $87
    ld [hl], a                                    ; $6221: $77
    ld a, b                                       ; $6222: $78
    adc b                                         ; $6223: $88
    adc b                                         ; $6224: $88
    adc b                                         ; $6225: $88
    ld [hl], a                                    ; $6226: $77
    ld [hl], a                                    ; $6227: $77
    ld [hl], a                                    ; $6228: $77
    ld [hl], a                                    ; $6229: $77
    adc b                                         ; $622a: $88
    add a                                         ; $622b: $87
    halt                                          ; $622c: $76
    ld h, [hl]                                    ; $622d: $66
    ld h, [hl]                                    ; $622e: $66
    ld h, a                                       ; $622f: $67
    add a                                         ; $6230: $87
    ld [hl], a                                    ; $6231: $77
    ld [hl], a                                    ; $6232: $77
    ld [hl], a                                    ; $6233: $77
    ld [hl], a                                    ; $6234: $77
    ld [hl], a                                    ; $6235: $77
    ld [hl], a                                    ; $6236: $77
    ld [hl], a                                    ; $6237: $77
    ld [hl], a                                    ; $6238: $77
    ld [hl], a                                    ; $6239: $77
    adc b                                         ; $623a: $88
    adc b                                         ; $623b: $88
    sbc c                                         ; $623c: $99
    sbc c                                         ; $623d: $99
    sbc c                                         ; $623e: $99
    sbc c                                         ; $623f: $99
    sbc c                                         ; $6240: $99
    sbc c                                         ; $6241: $99
    adc b                                         ; $6242: $88
    adc b                                         ; $6243: $88
    adc b                                         ; $6244: $88
    ld [hl], a                                    ; $6245: $77
    ld a, b                                       ; $6246: $78
    ld [hl], a                                    ; $6247: $77
    ld a, b                                       ; $6248: $78
    adc b                                         ; $6249: $88
    adc b                                         ; $624a: $88
    adc b                                         ; $624b: $88
    adc b                                         ; $624c: $88
    adc b                                         ; $624d: $88
    sbc c                                         ; $624e: $99
    sbc c                                         ; $624f: $99
    adc c                                         ; $6250: $89
    sbc c                                         ; $6251: $99
    adc b                                         ; $6252: $88
    adc b                                         ; $6253: $88
    adc b                                         ; $6254: $88
    adc b                                         ; $6255: $88
    adc b                                         ; $6256: $88
    adc b                                         ; $6257: $88
    add a                                         ; $6258: $87
    ld [hl], a                                    ; $6259: $77
    ld [hl], a                                    ; $625a: $77
    ld h, [hl]                                    ; $625b: $66
    ld h, [hl]                                    ; $625c: $66
    ld [hl], a                                    ; $625d: $77
    adc b                                         ; $625e: $88
    adc b                                         ; $625f: $88
    add a                                         ; $6260: $87
    ld h, [hl]                                    ; $6261: $66
    ld h, [hl]                                    ; $6262: $66
    ld h, [hl]                                    ; $6263: $66
    ld [hl], a                                    ; $6264: $77
    adc b                                         ; $6265: $88
    sbc b                                         ; $6266: $98
    adc b                                         ; $6267: $88
    add a                                         ; $6268: $87
    ld [hl], a                                    ; $6269: $77
    halt                                          ; $626a: $76
    ld h, l                                       ; $626b: $65
    ld d, l                                       ; $626c: $55
    ld d, [hl]                                    ; $626d: $56
    ld h, [hl]                                    ; $626e: $66
    ld h, a                                       ; $626f: $67
    adc b                                         ; $6270: $88
    adc b                                         ; $6271: $88
    ld [hl], a                                    ; $6272: $77
    adc b                                         ; $6273: $88
    adc c                                         ; $6274: $89
    sbc b                                         ; $6275: $98
    adc b                                         ; $6276: $88
    ld [hl], a                                    ; $6277: $77
    ld [hl], a                                    ; $6278: $77
    adc b                                         ; $6279: $88
    sbc c                                         ; $627a: $99
    sbc c                                         ; $627b: $99
    sbc b                                         ; $627c: $98
    ld [hl], a                                    ; $627d: $77
    halt                                          ; $627e: $76
    ld h, l                                       ; $627f: $65
    ld d, l                                       ; $6280: $55
    ld d, l                                       ; $6281: $55
    ld h, [hl]                                    ; $6282: $66
    ld h, a                                       ; $6283: $67
    ld [hl], a                                    ; $6284: $77
    ld a, b                                       ; $6285: $78
    adc b                                         ; $6286: $88
    sbc c                                         ; $6287: $99
    sbc c                                         ; $6288: $99
    xor d                                         ; $6289: $aa
    cp d                                          ; $628a: $ba
    xor c                                         ; $628b: $a9
    sbc b                                         ; $628c: $98
    add a                                         ; $628d: $87
    adc b                                         ; $628e: $88
    adc b                                         ; $628f: $88
    adc b                                         ; $6290: $88
    ld [hl], a                                    ; $6291: $77
    ld [hl], a                                    ; $6292: $77
    ld [hl], a                                    ; $6293: $77
    ld [hl], a                                    ; $6294: $77
    ld [hl], a                                    ; $6295: $77
    ld a, b                                       ; $6296: $78
    adc b                                         ; $6297: $88
    adc b                                         ; $6298: $88
    adc c                                         ; $6299: $89
    xor d                                         ; $629a: $aa
    xor c                                         ; $629b: $a9
    sbc b                                         ; $629c: $98
    sbc c                                         ; $629d: $99
    sbc c                                         ; $629e: $99
    sbc c                                         ; $629f: $99
    adc b                                         ; $62a0: $88
    ld [hl], a                                    ; $62a1: $77
    adc b                                         ; $62a2: $88
    adc b                                         ; $62a3: $88
    add a                                         ; $62a4: $87
    ld [hl], a                                    ; $62a5: $77
    ld [hl], a                                    ; $62a6: $77
    ld [hl], a                                    ; $62a7: $77
    ld [hl], a                                    ; $62a8: $77
    ld [hl], a                                    ; $62a9: $77
    ld a, b                                       ; $62aa: $78
    ld [hl], a                                    ; $62ab: $77
    ld [hl], a                                    ; $62ac: $77
    halt                                          ; $62ad: $76
    ld h, a                                       ; $62ae: $67
    ld [hl], a                                    ; $62af: $77
    add a                                         ; $62b0: $87
    ld h, a                                       ; $62b1: $67
    ld [hl], a                                    ; $62b2: $77
    ld [hl], a                                    ; $62b3: $77
    ld [hl], a                                    ; $62b4: $77
    ld [hl], a                                    ; $62b5: $77
    ld [hl], a                                    ; $62b6: $77
    ld h, a                                       ; $62b7: $67
    halt                                          ; $62b8: $76
    ld h, [hl]                                    ; $62b9: $66
    ld d, l                                       ; $62ba: $55
    ld h, [hl]                                    ; $62bb: $66
    ld [hl], a                                    ; $62bc: $77
    ld [hl], a                                    ; $62bd: $77
    ld [hl], a                                    ; $62be: $77
    ld [hl], a                                    ; $62bf: $77
    adc b                                         ; $62c0: $88
    ld [hl], a                                    ; $62c1: $77
    ld [hl], a                                    ; $62c2: $77
    ld [hl], a                                    ; $62c3: $77
    ld h, [hl]                                    ; $62c4: $66
    ld h, [hl]                                    ; $62c5: $66
    ld h, [hl]                                    ; $62c6: $66
    ld [hl], a                                    ; $62c7: $77
    adc b                                         ; $62c8: $88
    ld [hl], a                                    ; $62c9: $77
    adc b                                         ; $62ca: $88
    adc b                                         ; $62cb: $88
    adc b                                         ; $62cc: $88
    ld [hl], a                                    ; $62cd: $77
    ld h, [hl]                                    ; $62ce: $66
    ld h, a                                       ; $62cf: $67
    adc b                                         ; $62d0: $88
    adc b                                         ; $62d1: $88
    adc b                                         ; $62d2: $88
    adc b                                         ; $62d3: $88
    sbc c                                         ; $62d4: $99
    sbc c                                         ; $62d5: $99
    sbc c                                         ; $62d6: $99
    sbc b                                         ; $62d7: $98
    add a                                         ; $62d8: $87
    ld [hl], a                                    ; $62d9: $77
    ld h, a                                       ; $62da: $67
    ld a, b                                       ; $62db: $78
    adc c                                         ; $62dc: $89
    sbc b                                         ; $62dd: $98
    add a                                         ; $62de: $87
    ld [hl], a                                    ; $62df: $77
    adc b                                         ; $62e0: $88
    adc b                                         ; $62e1: $88
    adc b                                         ; $62e2: $88
    sbc c                                         ; $62e3: $99
    adc b                                         ; $62e4: $88
    adc b                                         ; $62e5: $88
    adc c                                         ; $62e6: $89
    sbc b                                         ; $62e7: $98
    add a                                         ; $62e8: $87
    ld [hl], a                                    ; $62e9: $77
    ld a, b                                       ; $62ea: $78
    adc c                                         ; $62eb: $89
    xor d                                         ; $62ec: $aa
    xor d                                         ; $62ed: $aa
    sbc c                                         ; $62ee: $99
    sbc b                                         ; $62ef: $98
    adc b                                         ; $62f0: $88
    adc b                                         ; $62f1: $88
    sbc c                                         ; $62f2: $99
    sbc c                                         ; $62f3: $99
    sbc b                                         ; $62f4: $98
    adc b                                         ; $62f5: $88
    adc c                                         ; $62f6: $89
    sbc c                                         ; $62f7: $99
    sbc b                                         ; $62f8: $98
    add a                                         ; $62f9: $87
    ld [hl], a                                    ; $62fa: $77
    ld [hl], a                                    ; $62fb: $77
    ld [hl], a                                    ; $62fc: $77
    ld [hl], a                                    ; $62fd: $77
    ld h, a                                       ; $62fe: $67
    ld [hl], a                                    ; $62ff: $77
    add a                                         ; $6300: $87
    ld h, [hl]                                    ; $6301: $66
    ld h, [hl]                                    ; $6302: $66
    ld h, a                                       ; $6303: $67
    halt                                          ; $6304: $76
    ld h, [hl]                                    ; $6305: $66
    ld h, [hl]                                    ; $6306: $66
    ld a, b                                       ; $6307: $78
    add a                                         ; $6308: $87
    halt                                          ; $6309: $76
    ld h, [hl]                                    ; $630a: $66
    ld h, [hl]                                    ; $630b: $66
    ld h, [hl]                                    ; $630c: $66
    ld h, [hl]                                    ; $630d: $66
    ld [hl], a                                    ; $630e: $77
    adc b                                         ; $630f: $88
    adc b                                         ; $6310: $88
    ld [hl], a                                    ; $6311: $77
    halt                                          ; $6312: $76
    ld h, [hl]                                    ; $6313: $66
    ld h, [hl]                                    ; $6314: $66
    ld [hl], a                                    ; $6315: $77
    adc b                                         ; $6316: $88
    adc b                                         ; $6317: $88
    adc b                                         ; $6318: $88
    add a                                         ; $6319: $87
    ld a, b                                       ; $631a: $78
    adc b                                         ; $631b: $88
    add a                                         ; $631c: $87
    ld [hl], a                                    ; $631d: $77
    ld h, [hl]                                    ; $631e: $66
    ld h, [hl]                                    ; $631f: $66
    ld h, [hl]                                    ; $6320: $66
    ld h, [hl]                                    ; $6321: $66
    ld h, [hl]                                    ; $6322: $66
    ld h, [hl]                                    ; $6323: $66
    ld [hl], a                                    ; $6324: $77
    adc b                                         ; $6325: $88
    sbc c                                         ; $6326: $99
    sbc c                                         ; $6327: $99
    sbc b                                         ; $6328: $98
    adc b                                         ; $6329: $88
    adc b                                         ; $632a: $88
    adc b                                         ; $632b: $88
    adc b                                         ; $632c: $88
    adc c                                         ; $632d: $89
    sbc c                                         ; $632e: $99
    sbc c                                         ; $632f: $99
    sbc c                                         ; $6330: $99
    adc b                                         ; $6331: $88
    adc b                                         ; $6332: $88
    adc b                                         ; $6333: $88
    add a                                         ; $6334: $87
    adc b                                         ; $6335: $88
    adc b                                         ; $6336: $88
    ld a, b                                       ; $6337: $78
    adc b                                         ; $6338: $88
    adc b                                         ; $6339: $88
    adc b                                         ; $633a: $88
    adc b                                         ; $633b: $88
    adc b                                         ; $633c: $88
    adc c                                         ; $633d: $89
    sbc b                                         ; $633e: $98
    adc b                                         ; $633f: $88
    adc b                                         ; $6340: $88
    adc b                                         ; $6341: $88
    add a                                         ; $6342: $87
    halt                                          ; $6343: $76
    ld h, [hl]                                    ; $6344: $66
    ld h, a                                       ; $6345: $67
    ld [hl], a                                    ; $6346: $77
    ld [hl], a                                    ; $6347: $77
    ld [hl], a                                    ; $6348: $77
    ld [hl], a                                    ; $6349: $77
    ld [hl], a                                    ; $634a: $77
    ld a, b                                       ; $634b: $78
    adc b                                         ; $634c: $88
    adc b                                         ; $634d: $88
    adc b                                         ; $634e: $88
    adc b                                         ; $634f: $88
    sbc c                                         ; $6350: $99
    sbc c                                         ; $6351: $99
    sbc c                                         ; $6352: $99
    adc b                                         ; $6353: $88
    halt                                          ; $6354: $76
    ld h, [hl]                                    ; $6355: $66
    ld h, a                                       ; $6356: $67
    ld a, b                                       ; $6357: $78
    adc b                                         ; $6358: $88
    adc b                                         ; $6359: $88
    add a                                         ; $635a: $87
    adc b                                         ; $635b: $88
    adc b                                         ; $635c: $88
    adc b                                         ; $635d: $88
    adc b                                         ; $635e: $88
    adc b                                         ; $635f: $88
    add a                                         ; $6360: $87
    ld [hl], a                                    ; $6361: $77
    ld [hl], a                                    ; $6362: $77
    halt                                          ; $6363: $76
    ld [hl], a                                    ; $6364: $77
    ld [hl], a                                    ; $6365: $77
    ld [hl], a                                    ; $6366: $77
    ld h, [hl]                                    ; $6367: $66
    ld h, [hl]                                    ; $6368: $66
    ld h, [hl]                                    ; $6369: $66
    ld h, [hl]                                    ; $636a: $66
    ld h, [hl]                                    ; $636b: $66
    ld [hl], a                                    ; $636c: $77
    ld h, [hl]                                    ; $636d: $66
    ld h, [hl]                                    ; $636e: $66
    ld h, [hl]                                    ; $636f: $66
    ld h, a                                       ; $6370: $67
    ld [hl], a                                    ; $6371: $77
    ld [hl], a                                    ; $6372: $77
    ld [hl], a                                    ; $6373: $77
    ld [hl], a                                    ; $6374: $77
    ld [hl], a                                    ; $6375: $77
    ld [hl], a                                    ; $6376: $77
    ld [hl], a                                    ; $6377: $77
    adc b                                         ; $6378: $88
    adc b                                         ; $6379: $88
    adc b                                         ; $637a: $88
    adc b                                         ; $637b: $88
    adc b                                         ; $637c: $88
    adc b                                         ; $637d: $88
    adc b                                         ; $637e: $88
    adc b                                         ; $637f: $88
    adc b                                         ; $6380: $88
    adc c                                         ; $6381: $89
    adc b                                         ; $6382: $88
    adc b                                         ; $6383: $88
    adc c                                         ; $6384: $89
    adc b                                         ; $6385: $88
    sbc c                                         ; $6386: $99
    sbc c                                         ; $6387: $99
    sbc d                                         ; $6388: $9a
    xor d                                         ; $6389: $aa
    xor d                                         ; $638a: $aa
    sbc c                                         ; $638b: $99
    sbc b                                         ; $638c: $98
    adc b                                         ; $638d: $88
    adc c                                         ; $638e: $89
    sbc c                                         ; $638f: $99
    sbc c                                         ; $6390: $99
    adc b                                         ; $6391: $88
    add a                                         ; $6392: $87
    ld [hl], a                                    ; $6393: $77
    ld [hl], a                                    ; $6394: $77
    ld [hl], a                                    ; $6395: $77
    ld [hl], a                                    ; $6396: $77
    ld a, b                                       ; $6397: $78
    add a                                         ; $6398: $87
    ld [hl], a                                    ; $6399: $77
    ld [hl], a                                    ; $639a: $77
    ld [hl], a                                    ; $639b: $77
    adc b                                         ; $639c: $88
    adc b                                         ; $639d: $88
    adc b                                         ; $639e: $88
    adc b                                         ; $639f: $88
    add a                                         ; $63a0: $87
    ld [hl], a                                    ; $63a1: $77
    halt                                          ; $63a2: $76
    ld h, [hl]                                    ; $63a3: $66
    ld h, [hl]                                    ; $63a4: $66
    ld [hl], a                                    ; $63a5: $77
    ld [hl], a                                    ; $63a6: $77
    ld [hl], a                                    ; $63a7: $77
    ld [hl], a                                    ; $63a8: $77
    adc b                                         ; $63a9: $88
    adc b                                         ; $63aa: $88
    ld [hl], a                                    ; $63ab: $77
    halt                                          ; $63ac: $76
    ld h, a                                       ; $63ad: $67
    ld [hl], a                                    ; $63ae: $77
    ld a, b                                       ; $63af: $78
    add a                                         ; $63b0: $87
    ld [hl], a                                    ; $63b1: $77
    ld h, a                                       ; $63b2: $67
    halt                                          ; $63b3: $76
    ld h, a                                       ; $63b4: $67
    ld [hl], a                                    ; $63b5: $77
    ld [hl], a                                    ; $63b6: $77
    halt                                          ; $63b7: $76
    ld h, [hl]                                    ; $63b8: $66
    ld h, a                                       ; $63b9: $67
    ld [hl], a                                    ; $63ba: $77
    ld [hl], a                                    ; $63bb: $77
    ld [hl], a                                    ; $63bc: $77
    ld [hl], a                                    ; $63bd: $77
    ld [hl], a                                    ; $63be: $77
    ld [hl], a                                    ; $63bf: $77
    add a                                         ; $63c0: $87
    ld [hl], a                                    ; $63c1: $77
    ld [hl], a                                    ; $63c2: $77
    ld [hl], a                                    ; $63c3: $77
    ld [hl], a                                    ; $63c4: $77
    ld [hl], a                                    ; $63c5: $77
    ld a, b                                       ; $63c6: $78
    adc b                                         ; $63c7: $88
    sbc c                                         ; $63c8: $99
    sbc c                                         ; $63c9: $99
    sbc c                                         ; $63ca: $99
    sbc c                                         ; $63cb: $99
    adc b                                         ; $63cc: $88
    adc b                                         ; $63cd: $88
    adc b                                         ; $63ce: $88
    adc b                                         ; $63cf: $88
    adc b                                         ; $63d0: $88
    adc b                                         ; $63d1: $88
    adc b                                         ; $63d2: $88
    adc b                                         ; $63d3: $88
    adc b                                         ; $63d4: $88
    adc b                                         ; $63d5: $88
    adc b                                         ; $63d6: $88
    add a                                         ; $63d7: $87
    ld [hl], a                                    ; $63d8: $77
    adc b                                         ; $63d9: $88
    adc b                                         ; $63da: $88
    adc b                                         ; $63db: $88
    ld [hl], a                                    ; $63dc: $77
    ld [hl], a                                    ; $63dd: $77
    adc b                                         ; $63de: $88
    add a                                         ; $63df: $87
    add a                                         ; $63e0: $87
    adc b                                         ; $63e1: $88
    adc b                                         ; $63e2: $88
    sbc c                                         ; $63e3: $99
    sbc c                                         ; $63e4: $99
    adc b                                         ; $63e5: $88
    adc b                                         ; $63e6: $88
    adc b                                         ; $63e7: $88
    ld [hl], a                                    ; $63e8: $77
    ld [hl], a                                    ; $63e9: $77
    adc b                                         ; $63ea: $88
    ld [hl], a                                    ; $63eb: $77
    ld a, b                                       ; $63ec: $78
    adc b                                         ; $63ed: $88
    adc b                                         ; $63ee: $88
    adc b                                         ; $63ef: $88
    adc b                                         ; $63f0: $88
    adc b                                         ; $63f1: $88
    adc b                                         ; $63f2: $88
    adc b                                         ; $63f3: $88
    ld [hl], a                                    ; $63f4: $77
    ld [hl], a                                    ; $63f5: $77
    ld [hl], a                                    ; $63f6: $77
    ld [hl], a                                    ; $63f7: $77
    ld [hl], a                                    ; $63f8: $77
    ld [hl], a                                    ; $63f9: $77
    ld [hl], a                                    ; $63fa: $77
    ld [hl], a                                    ; $63fb: $77
    ld [hl], a                                    ; $63fc: $77
    ld [hl], a                                    ; $63fd: $77
    halt                                          ; $63fe: $76
    ld h, [hl]                                    ; $63ff: $66
    ld h, [hl]                                    ; $6400: $66
    ld h, [hl]                                    ; $6401: $66
    ld h, [hl]                                    ; $6402: $66
    ld h, [hl]                                    ; $6403: $66
    ld h, [hl]                                    ; $6404: $66
    ld h, [hl]                                    ; $6405: $66
    ld h, [hl]                                    ; $6406: $66
    ld h, [hl]                                    ; $6407: $66
    ld h, [hl]                                    ; $6408: $66
    ld h, [hl]                                    ; $6409: $66
    ld h, a                                       ; $640a: $67
    ld [hl], a                                    ; $640b: $77
    adc b                                         ; $640c: $88
    adc b                                         ; $640d: $88
    adc b                                         ; $640e: $88
    adc b                                         ; $640f: $88
    adc b                                         ; $6410: $88
    adc b                                         ; $6411: $88
    adc b                                         ; $6412: $88
    adc b                                         ; $6413: $88
    adc b                                         ; $6414: $88
    adc b                                         ; $6415: $88
    adc b                                         ; $6416: $88
    adc b                                         ; $6417: $88
    adc b                                         ; $6418: $88
    adc b                                         ; $6419: $88
    adc b                                         ; $641a: $88
    adc b                                         ; $641b: $88
    adc b                                         ; $641c: $88
    adc b                                         ; $641d: $88
    adc b                                         ; $641e: $88
    sbc c                                         ; $641f: $99
    sbc c                                         ; $6420: $99
    sbc c                                         ; $6421: $99
    sbc b                                         ; $6422: $98
    adc b                                         ; $6423: $88
    adc b                                         ; $6424: $88
    adc b                                         ; $6425: $88
    adc b                                         ; $6426: $88
    adc b                                         ; $6427: $88
    adc b                                         ; $6428: $88
    adc b                                         ; $6429: $88
    adc b                                         ; $642a: $88
    adc b                                         ; $642b: $88
    adc b                                         ; $642c: $88
    adc b                                         ; $642d: $88
    adc b                                         ; $642e: $88
    adc b                                         ; $642f: $88
    adc b                                         ; $6430: $88
    ld [hl], a                                    ; $6431: $77
    adc b                                         ; $6432: $88
    adc b                                         ; $6433: $88
    ld a, b                                       ; $6434: $78
    adc b                                         ; $6435: $88
    adc b                                         ; $6436: $88
    ld [hl], a                                    ; $6437: $77
    ld [hl], a                                    ; $6438: $77
    ld [hl], a                                    ; $6439: $77
    ld [hl], a                                    ; $643a: $77
    halt                                          ; $643b: $76
    ld h, [hl]                                    ; $643c: $66
    ld h, [hl]                                    ; $643d: $66
    ld h, [hl]                                    ; $643e: $66
    ld h, a                                       ; $643f: $67
    add a                                         ; $6440: $87
    ld [hl], a                                    ; $6441: $77
    ld [hl], a                                    ; $6442: $77
    halt                                          ; $6443: $76
    ld h, [hl]                                    ; $6444: $66
    ld h, [hl]                                    ; $6445: $66
    ld h, [hl]                                    ; $6446: $66
    ld h, [hl]                                    ; $6447: $66
    ld h, [hl]                                    ; $6448: $66
    ld h, [hl]                                    ; $6449: $66
    ld h, [hl]                                    ; $644a: $66
    ld h, [hl]                                    ; $644b: $66
    ld [hl], a                                    ; $644c: $77
    ld [hl], a                                    ; $644d: $77
    ld [hl], a                                    ; $644e: $77
    ld [hl], a                                    ; $644f: $77
    add [hl]                                      ; $6450: $86
    ld [hl], a                                    ; $6451: $77
    ld [hl], a                                    ; $6452: $77
    ld [hl], a                                    ; $6453: $77
    ld [hl], a                                    ; $6454: $77
    adc b                                         ; $6455: $88
    adc b                                         ; $6456: $88
    adc b                                         ; $6457: $88
    adc b                                         ; $6458: $88
    adc b                                         ; $6459: $88
    adc b                                         ; $645a: $88
    adc b                                         ; $645b: $88
    adc b                                         ; $645c: $88
    adc b                                         ; $645d: $88
    sbc c                                         ; $645e: $99
    sbc c                                         ; $645f: $99
    adc b                                         ; $6460: $88
    adc b                                         ; $6461: $88
    adc b                                         ; $6462: $88
    adc b                                         ; $6463: $88
    adc b                                         ; $6464: $88
    adc b                                         ; $6465: $88
    adc b                                         ; $6466: $88
    adc b                                         ; $6467: $88
    sbc c                                         ; $6468: $99
    sbc b                                         ; $6469: $98
    adc b                                         ; $646a: $88
    adc c                                         ; $646b: $89
    sbc b                                         ; $646c: $98
    sbc b                                         ; $646d: $98
    sbc c                                         ; $646e: $99
    sbc c                                         ; $646f: $99
    adc b                                         ; $6470: $88
    adc b                                         ; $6471: $88
    adc b                                         ; $6472: $88
    adc b                                         ; $6473: $88
    adc b                                         ; $6474: $88
    adc b                                         ; $6475: $88
    adc b                                         ; $6476: $88
    adc b                                         ; $6477: $88
    adc b                                         ; $6478: $88
    adc b                                         ; $6479: $88
    adc b                                         ; $647a: $88
    adc b                                         ; $647b: $88
    ld [hl], a                                    ; $647c: $77
    ld [hl], a                                    ; $647d: $77
    ld [hl], a                                    ; $647e: $77
    ld [hl], a                                    ; $647f: $77
    add a                                         ; $6480: $87
    ld [hl], a                                    ; $6481: $77
    ld [hl], a                                    ; $6482: $77
    ld [hl], a                                    ; $6483: $77
    ld [hl], a                                    ; $6484: $77
    ld [hl], a                                    ; $6485: $77
    ld [hl], a                                    ; $6486: $77

Jump_011_6487:
    ld [hl], a                                    ; $6487: $77
    ld [hl], a                                    ; $6488: $77
    ld [hl], a                                    ; $6489: $77
    ld [hl], a                                    ; $648a: $77
    ld [hl], a                                    ; $648b: $77
    ld [hl], a                                    ; $648c: $77
    ld [hl], a                                    ; $648d: $77
    ld [hl], a                                    ; $648e: $77
    ld [hl], a                                    ; $648f: $77
    add a                                         ; $6490: $87
    ld [hl], a                                    ; $6491: $77
    ld [hl], a                                    ; $6492: $77
    ld [hl], a                                    ; $6493: $77
    ld [hl], a                                    ; $6494: $77
    ld [hl], a                                    ; $6495: $77
    ld [hl], a                                    ; $6496: $77
    ld [hl], a                                    ; $6497: $77
    ld [hl], a                                    ; $6498: $77
    ld [hl], a                                    ; $6499: $77
    ld [hl], a                                    ; $649a: $77
    ld [hl], a                                    ; $649b: $77
    ld [hl], a                                    ; $649c: $77
    ld [hl], a                                    ; $649d: $77
    ld [hl], a                                    ; $649e: $77
    ld [hl], a                                    ; $649f: $77
    add a                                         ; $64a0: $87
    ld [hl], a                                    ; $64a1: $77
    ld a, b                                       ; $64a2: $78
    adc b                                         ; $64a3: $88
    adc b                                         ; $64a4: $88
    adc b                                         ; $64a5: $88
    adc b                                         ; $64a6: $88
    adc b                                         ; $64a7: $88
    adc b                                         ; $64a8: $88
    adc b                                         ; $64a9: $88
    adc b                                         ; $64aa: $88
    adc b                                         ; $64ab: $88
    adc b                                         ; $64ac: $88
    adc b                                         ; $64ad: $88
    adc b                                         ; $64ae: $88
    adc b                                         ; $64af: $88
    adc b                                         ; $64b0: $88
    adc b                                         ; $64b1: $88
    ld [hl], a                                    ; $64b2: $77
    adc b                                         ; $64b3: $88
    adc b                                         ; $64b4: $88
    adc b                                         ; $64b5: $88
    adc b                                         ; $64b6: $88
    add a                                         ; $64b7: $87
    ld a, b                                       ; $64b8: $78
    adc b                                         ; $64b9: $88
    adc b                                         ; $64ba: $88
    add a                                         ; $64bb: $87
    ld [hl], a                                    ; $64bc: $77
    ld [hl], a                                    ; $64bd: $77
    adc b                                         ; $64be: $88
    adc b                                         ; $64bf: $88
    adc b                                         ; $64c0: $88
    adc b                                         ; $64c1: $88
    adc b                                         ; $64c2: $88
    adc b                                         ; $64c3: $88
    adc b                                         ; $64c4: $88
    adc b                                         ; $64c5: $88
    adc b                                         ; $64c6: $88
    adc b                                         ; $64c7: $88
    adc b                                         ; $64c8: $88
    adc b                                         ; $64c9: $88
    adc b                                         ; $64ca: $88
    adc b                                         ; $64cb: $88
    adc b                                         ; $64cc: $88
    adc b                                         ; $64cd: $88
    adc b                                         ; $64ce: $88
    adc b                                         ; $64cf: $88
    add a                                         ; $64d0: $87
    ld a, b                                       ; $64d1: $78
    adc b                                         ; $64d2: $88
    ld [hl], a                                    ; $64d3: $77
    ld [hl], a                                    ; $64d4: $77
    ld [hl], a                                    ; $64d5: $77
    ld [hl], a                                    ; $64d6: $77
    ld [hl], a                                    ; $64d7: $77
    ld [hl], a                                    ; $64d8: $77
    ld [hl], a                                    ; $64d9: $77
    ld [hl], a                                    ; $64da: $77
    ld [hl], a                                    ; $64db: $77
    ld [hl], a                                    ; $64dc: $77
    ld [hl], a                                    ; $64dd: $77
    ld [hl], a                                    ; $64de: $77
    ld [hl], a                                    ; $64df: $77
    add a                                         ; $64e0: $87
    ld [hl], a                                    ; $64e1: $77
    ld [hl], a                                    ; $64e2: $77
    ld [hl], a                                    ; $64e3: $77
    ld a, b                                       ; $64e4: $78
    adc b                                         ; $64e5: $88
    adc b                                         ; $64e6: $88
    adc b                                         ; $64e7: $88
    adc b                                         ; $64e8: $88
    adc b                                         ; $64e9: $88
    adc b                                         ; $64ea: $88
    adc b                                         ; $64eb: $88
    adc b                                         ; $64ec: $88
    adc b                                         ; $64ed: $88
    ld [hl], a                                    ; $64ee: $77
    ld [hl], a                                    ; $64ef: $77
    add a                                         ; $64f0: $87
    ld [hl], a                                    ; $64f1: $77
    ld [hl], a                                    ; $64f2: $77
    ld [hl], a                                    ; $64f3: $77
    ld [hl], a                                    ; $64f4: $77
    ld [hl], a                                    ; $64f5: $77
    ld [hl], a                                    ; $64f6: $77
    ld [hl], a                                    ; $64f7: $77
    ld [hl], a                                    ; $64f8: $77
    ld [hl], a                                    ; $64f9: $77
    ld [hl], a                                    ; $64fa: $77
    ld [hl], a                                    ; $64fb: $77
    ld [hl], a                                    ; $64fc: $77
    ld a, b                                       ; $64fd: $78
    adc b                                         ; $64fe: $88
    adc b                                         ; $64ff: $88
    adc b                                         ; $6500: $88
    add a                                         ; $6501: $87
    ld [hl], a                                    ; $6502: $77
    ld [hl], a                                    ; $6503: $77
    ld a, b                                       ; $6504: $78
    adc b                                         ; $6505: $88
    adc b                                         ; $6506: $88
    adc b                                         ; $6507: $88
    adc b                                         ; $6508: $88
    adc b                                         ; $6509: $88
    adc b                                         ; $650a: $88
    adc b                                         ; $650b: $88
    adc b                                         ; $650c: $88
    adc b                                         ; $650d: $88
    adc b                                         ; $650e: $88
    adc b                                         ; $650f: $88
    adc b                                         ; $6510: $88
    adc b                                         ; $6511: $88
    adc b                                         ; $6512: $88
    ld [hl], a                                    ; $6513: $77
    adc b                                         ; $6514: $88
    adc b                                         ; $6515: $88
    adc b                                         ; $6516: $88
    adc b                                         ; $6517: $88
    adc b                                         ; $6518: $88
    adc b                                         ; $6519: $88
    adc b                                         ; $651a: $88
    ld [hl], a                                    ; $651b: $77
    ld [hl], a                                    ; $651c: $77
    ld [hl], a                                    ; $651d: $77
    ld [hl], a                                    ; $651e: $77
    ld a, b                                       ; $651f: $78
    add a                                         ; $6520: $87
    ld a, b                                       ; $6521: $78
    add a                                         ; $6522: $87
    ld [hl], a                                    ; $6523: $77
    ld [hl], a                                    ; $6524: $77
    ld [hl], a                                    ; $6525: $77
    ld [hl], a                                    ; $6526: $77
    ld [hl], a                                    ; $6527: $77
    ld [hl], a                                    ; $6528: $77
    ld [hl], a                                    ; $6529: $77
    ld a, b                                       ; $652a: $78
    adc b                                         ; $652b: $88
    adc b                                         ; $652c: $88
    adc b                                         ; $652d: $88
    adc b                                         ; $652e: $88
    adc b                                         ; $652f: $88
    add a                                         ; $6530: $87
    ld [hl], a                                    ; $6531: $77
    ld [hl], a                                    ; $6532: $77
    ld [hl], a                                    ; $6533: $77
    ld [hl], a                                    ; $6534: $77
    ld [hl], a                                    ; $6535: $77
    ld [hl], a                                    ; $6536: $77
    ld a, b                                       ; $6537: $78
    adc b                                         ; $6538: $88
    ld [hl], a                                    ; $6539: $77
    ld [hl], a                                    ; $653a: $77
    ld [hl], a                                    ; $653b: $77
    ld [hl], a                                    ; $653c: $77
    ld [hl], a                                    ; $653d: $77
    ld [hl], a                                    ; $653e: $77
    ld [hl], a                                    ; $653f: $77
    add a                                         ; $6540: $87
    ld [hl], a                                    ; $6541: $77
    ld [hl], a                                    ; $6542: $77
    ld [hl], a                                    ; $6543: $77
    ld [hl], a                                    ; $6544: $77
    ld [hl], a                                    ; $6545: $77
    ld [hl], a                                    ; $6546: $77
    ld [hl], a                                    ; $6547: $77
    ld [hl], a                                    ; $6548: $77
    ld [hl], a                                    ; $6549: $77
    ld [hl], a                                    ; $654a: $77
    ld [hl], a                                    ; $654b: $77
    ld [hl], a                                    ; $654c: $77
    ld [hl], a                                    ; $654d: $77
    ld a, b                                       ; $654e: $78
    adc b                                         ; $654f: $88
    adc b                                         ; $6550: $88
    adc b                                         ; $6551: $88
    adc b                                         ; $6552: $88
    adc b                                         ; $6553: $88
    adc b                                         ; $6554: $88
    adc b                                         ; $6555: $88
    adc b                                         ; $6556: $88
    adc b                                         ; $6557: $88
    adc b                                         ; $6558: $88
    adc b                                         ; $6559: $88
    adc b                                         ; $655a: $88
    adc b                                         ; $655b: $88
    add a                                         ; $655c: $87
    ld [hl], a                                    ; $655d: $77
    ld [hl], a                                    ; $655e: $77
    ld a, b                                       ; $655f: $78
    adc b                                         ; $6560: $88
    adc b                                         ; $6561: $88
    adc b                                         ; $6562: $88
    adc b                                         ; $6563: $88
    adc b                                         ; $6564: $88
    adc b                                         ; $6565: $88
    adc b                                         ; $6566: $88
    adc b                                         ; $6567: $88
    adc b                                         ; $6568: $88
    adc b                                         ; $6569: $88
    add a                                         ; $656a: $87
    ld [hl], a                                    ; $656b: $77
    ld a, b                                       ; $656c: $78
    adc b                                         ; $656d: $88
    add a                                         ; $656e: $87
    ld [hl], a                                    ; $656f: $77
    add a                                         ; $6570: $87
    ld [hl], a                                    ; $6571: $77
    ld [hl], a                                    ; $6572: $77
    ld [hl], a                                    ; $6573: $77
    ld [hl], a                                    ; $6574: $77
    ld [hl], a                                    ; $6575: $77
    ld [hl], a                                    ; $6576: $77
    ld [hl], a                                    ; $6577: $77
    ld [hl], a                                    ; $6578: $77
    ld [hl], a                                    ; $6579: $77
    ld [hl], a                                    ; $657a: $77
    ld [hl], a                                    ; $657b: $77
    ld [hl], a                                    ; $657c: $77
    ld [hl], a                                    ; $657d: $77
    ld [hl], a                                    ; $657e: $77
    ld [hl], a                                    ; $657f: $77
    add a                                         ; $6580: $87
    ld [hl], a                                    ; $6581: $77
    ld [hl], a                                    ; $6582: $77
    ld [hl], a                                    ; $6583: $77
    ld [hl], a                                    ; $6584: $77
    ld [hl], a                                    ; $6585: $77
    ld [hl], a                                    ; $6586: $77

Jump_011_6587:
    ld [hl], a                                    ; $6587: $77
    ld [hl], a                                    ; $6588: $77
    ld [hl], a                                    ; $6589: $77
    ld [hl], a                                    ; $658a: $77
    adc b                                         ; $658b: $88
    adc b                                         ; $658c: $88
    adc b                                         ; $658d: $88
    adc b                                         ; $658e: $88
    adc b                                         ; $658f: $88
    ld a, b                                       ; $6590: $78
    ld bc, $8888                                  ; $6591: $01 $88 $88
    adc b                                         ; $6594: $88
    adc b                                         ; $6595: $88
    adc b                                         ; $6596: $88

Jump_011_6597:
    adc b                                         ; $6597: $88
    adc b                                         ; $6598: $88
    adc b                                         ; $6599: $88
    adc b                                         ; $659a: $88
    adc b                                         ; $659b: $88
    adc b                                         ; $659c: $88
    adc b                                         ; $659d: $88
    adc b                                         ; $659e: $88
    adc b                                         ; $659f: $88
    adc b                                         ; $65a0: $88
    adc b                                         ; $65a1: $88
    adc b                                         ; $65a2: $88
    adc b                                         ; $65a3: $88
    adc b                                         ; $65a4: $88
    adc b                                         ; $65a5: $88
    adc b                                         ; $65a6: $88
    adc b                                         ; $65a7: $88
    adc b                                         ; $65a8: $88
    adc b                                         ; $65a9: $88
    adc b                                         ; $65aa: $88
    adc b                                         ; $65ab: $88
    ld [hl], a                                    ; $65ac: $77
    ld [hl], a                                    ; $65ad: $77
    ld [hl], a                                    ; $65ae: $77
    ld [hl], a                                    ; $65af: $77
    add a                                         ; $65b0: $87
    ld [hl], a                                    ; $65b1: $77
    ld [hl], a                                    ; $65b2: $77
    ld [hl], a                                    ; $65b3: $77
    ld [hl], a                                    ; $65b4: $77
    ld [hl], a                                    ; $65b5: $77
    ld [hl], a                                    ; $65b6: $77
    ld [hl], a                                    ; $65b7: $77
    ld [hl], a                                    ; $65b8: $77
    ld [hl], a                                    ; $65b9: $77
    ld [hl], a                                    ; $65ba: $77
    ld [hl], a                                    ; $65bb: $77
    ld [hl], a                                    ; $65bc: $77
    ld [hl], a                                    ; $65bd: $77
    ld [hl], a                                    ; $65be: $77
    ld [hl], a                                    ; $65bf: $77
    add a                                         ; $65c0: $87
    ld [hl], a                                    ; $65c1: $77
    ld [hl], a                                    ; $65c2: $77
    ld [hl], a                                    ; $65c3: $77
    ld [hl], a                                    ; $65c4: $77
    ld [hl], a                                    ; $65c5: $77
    ld [hl], a                                    ; $65c6: $77
    ld [hl], a                                    ; $65c7: $77
    ld [hl], a                                    ; $65c8: $77
    ld [hl], a                                    ; $65c9: $77
    ld [hl], a                                    ; $65ca: $77
    ld [hl], a                                    ; $65cb: $77
    ld [hl], a                                    ; $65cc: $77
    ld [hl], a                                    ; $65cd: $77
    ld [hl], a                                    ; $65ce: $77
    ld a, b                                       ; $65cf: $78
    adc b                                         ; $65d0: $88
    adc b                                         ; $65d1: $88
    adc b                                         ; $65d2: $88
    adc b                                         ; $65d3: $88
    adc b                                         ; $65d4: $88
    add a                                         ; $65d5: $87
    ld [hl], a                                    ; $65d6: $77
    ld a, b                                       ; $65d7: $78
    adc b                                         ; $65d8: $88
    adc b                                         ; $65d9: $88
    adc b                                         ; $65da: $88
    adc b                                         ; $65db: $88
    adc b                                         ; $65dc: $88
    adc b                                         ; $65dd: $88
    adc b                                         ; $65de: $88
    adc b                                         ; $65df: $88
    adc b                                         ; $65e0: $88
    adc b                                         ; $65e1: $88
    adc b                                         ; $65e2: $88
    adc b                                         ; $65e3: $88
    adc b                                         ; $65e4: $88
    adc b                                         ; $65e5: $88
    adc b                                         ; $65e6: $88
    adc b                                         ; $65e7: $88
    adc b                                         ; $65e8: $88
    adc b                                         ; $65e9: $88
    adc b                                         ; $65ea: $88
    adc b                                         ; $65eb: $88
    adc b                                         ; $65ec: $88
    add a                                         ; $65ed: $87
    ld [hl], a                                    ; $65ee: $77
    ld [hl], a                                    ; $65ef: $77
    add a                                         ; $65f0: $87
    adc b                                         ; $65f1: $88
    adc b                                         ; $65f2: $88
    adc b                                         ; $65f3: $88
    adc b                                         ; $65f4: $88
    adc b                                         ; $65f5: $88
    adc b                                         ; $65f6: $88
    adc b                                         ; $65f7: $88
    adc b                                         ; $65f8: $88
    add a                                         ; $65f9: $87
    ld [hl], a                                    ; $65fa: $77
    ld [hl], a                                    ; $65fb: $77
    ld [hl], a                                    ; $65fc: $77
    ld [hl], a                                    ; $65fd: $77
    ld [hl], a                                    ; $65fe: $77
    ld [hl], a                                    ; $65ff: $77
    add a                                         ; $6600: $87
    ld [hl], a                                    ; $6601: $77
    ld [hl], a                                    ; $6602: $77
    ld [hl], a                                    ; $6603: $77
    ld [hl], a                                    ; $6604: $77
    ld [hl], a                                    ; $6605: $77
    ld [hl], a                                    ; $6606: $77
    ld [hl], a                                    ; $6607: $77
    ld [hl], a                                    ; $6608: $77
    ld a, b                                       ; $6609: $78
    adc b                                         ; $660a: $88
    adc b                                         ; $660b: $88
    adc b                                         ; $660c: $88
    adc b                                         ; $660d: $88
    adc b                                         ; $660e: $88
    adc b                                         ; $660f: $88
    adc b                                         ; $6610: $88
    adc b                                         ; $6611: $88
    adc b                                         ; $6612: $88
    adc b                                         ; $6613: $88
    adc b                                         ; $6614: $88
    adc b                                         ; $6615: $88
    adc b                                         ; $6616: $88
    adc b                                         ; $6617: $88
    add a                                         ; $6618: $87
    ld [hl], a                                    ; $6619: $77
    ld [hl], a                                    ; $661a: $77
    ld [hl], a                                    ; $661b: $77
    ld a, b                                       ; $661c: $78
    adc b                                         ; $661d: $88
    adc b                                         ; $661e: $88
    adc b                                         ; $661f: $88
    add a                                         ; $6620: $87
    ld [hl], a                                    ; $6621: $77
    ld [hl], a                                    ; $6622: $77
    ld [hl], a                                    ; $6623: $77
    ld [hl], a                                    ; $6624: $77
    ld [hl], a                                    ; $6625: $77
    ld a, b                                       ; $6626: $78
    adc b                                         ; $6627: $88
    ld [hl], a                                    ; $6628: $77
    ld [hl], a                                    ; $6629: $77
    adc b                                         ; $662a: $88
    ld [hl], a                                    ; $662b: $77
    ld a, b                                       ; $662c: $78
    adc b                                         ; $662d: $88
    adc b                                         ; $662e: $88
    add a                                         ; $662f: $87
    add a                                         ; $6630: $87
    ld a, b                                       ; $6631: $78
    adc b                                         ; $6632: $88
    adc b                                         ; $6633: $88
    adc b                                         ; $6634: $88
    adc b                                         ; $6635: $88
    adc b                                         ; $6636: $88
    adc b                                         ; $6637: $88
    adc b                                         ; $6638: $88
    adc b                                         ; $6639: $88
    adc b                                         ; $663a: $88
    adc b                                         ; $663b: $88
    adc b                                         ; $663c: $88
    add a                                         ; $663d: $87
    ld [hl], a                                    ; $663e: $77
    ld a, b                                       ; $663f: $78
    adc b                                         ; $6640: $88
    add a                                         ; $6641: $87
    ld [hl], a                                    ; $6642: $77
    ld [hl], a                                    ; $6643: $77
    ld [hl], a                                    ; $6644: $77
    ld [hl], a                                    ; $6645: $77
    ld [hl], a                                    ; $6646: $77
    ld [hl], a                                    ; $6647: $77
    ld [hl], a                                    ; $6648: $77
    ld [hl], a                                    ; $6649: $77
    ld [hl], a                                    ; $664a: $77
    ld a, b                                       ; $664b: $78
    adc b                                         ; $664c: $88
    ld [hl], a                                    ; $664d: $77
    ld [hl], a                                    ; $664e: $77
    ld [hl], a                                    ; $664f: $77
    add a                                         ; $6650: $87
    ld [hl], a                                    ; $6651: $77
    ld [hl], a                                    ; $6652: $77
    ld [hl], a                                    ; $6653: $77
    ld [hl], a                                    ; $6654: $77
    ld [hl], a                                    ; $6655: $77
    ld [hl], a                                    ; $6656: $77
    ld [hl], a                                    ; $6657: $77
    ld [hl], a                                    ; $6658: $77
    ld [hl], a                                    ; $6659: $77
    ld [hl], a                                    ; $665a: $77
    ld [hl], a                                    ; $665b: $77
    adc b                                         ; $665c: $88
    add a                                         ; $665d: $87
    ld [hl], a                                    ; $665e: $77
    adc b                                         ; $665f: $88
    adc b                                         ; $6660: $88
    adc b                                         ; $6661: $88
    ld [hl], a                                    ; $6662: $77
    ld a, b                                       ; $6663: $78
    add a                                         ; $6664: $87
    ld [hl], a                                    ; $6665: $77
    ld [hl], a                                    ; $6666: $77
    ld [hl], a                                    ; $6667: $77
    ld [hl], a                                    ; $6668: $77
    ld [hl], a                                    ; $6669: $77
    ld [hl], a                                    ; $666a: $77
    ld [hl], a                                    ; $666b: $77
    ld [hl], a                                    ; $666c: $77
    adc b                                         ; $666d: $88
    adc b                                         ; $666e: $88
    adc b                                         ; $666f: $88
    adc b                                         ; $6670: $88
    add a                                         ; $6671: $87
    ld [hl], a                                    ; $6672: $77
    adc b                                         ; $6673: $88
    adc b                                         ; $6674: $88
    adc b                                         ; $6675: $88
    adc b                                         ; $6676: $88
    adc b                                         ; $6677: $88
    adc b                                         ; $6678: $88
    adc b                                         ; $6679: $88
    adc b                                         ; $667a: $88
    adc b                                         ; $667b: $88
    adc b                                         ; $667c: $88
    adc b                                         ; $667d: $88
    adc b                                         ; $667e: $88
    adc b                                         ; $667f: $88
    adc b                                         ; $6680: $88
    adc b                                         ; $6681: $88
    adc b                                         ; $6682: $88
    adc b                                         ; $6683: $88
    adc b                                         ; $6684: $88
    adc b                                         ; $6685: $88
    adc b                                         ; $6686: $88
    adc b                                         ; $6687: $88
    adc b                                         ; $6688: $88
    adc b                                         ; $6689: $88
    adc b                                         ; $668a: $88
    adc b                                         ; $668b: $88
    ld [hl], a                                    ; $668c: $77
    ld [hl], a                                    ; $668d: $77
    ld a, b                                       ; $668e: $78
    ld [hl], a                                    ; $668f: $77
    add a                                         ; $6690: $87
    ld [hl], a                                    ; $6691: $77
    ld a, b                                       ; $6692: $78
    add a                                         ; $6693: $87
    ld [hl], a                                    ; $6694: $77
    ld [hl], a                                    ; $6695: $77
    ld [hl], a                                    ; $6696: $77
    ld a, b                                       ; $6697: $78
    adc b                                         ; $6698: $88
    ld [hl], a                                    ; $6699: $77
    ld [hl], a                                    ; $669a: $77
    ld [hl], a                                    ; $669b: $77
    ld [hl], a                                    ; $669c: $77
    ld [hl], a                                    ; $669d: $77
    ld [hl], a                                    ; $669e: $77
    ld [hl], a                                    ; $669f: $77
    add a                                         ; $66a0: $87
    ld [hl], a                                    ; $66a1: $77
    ld [hl], a                                    ; $66a2: $77
    ld [hl], a                                    ; $66a3: $77
    ld [hl], a                                    ; $66a4: $77
    ld [hl], a                                    ; $66a5: $77
    ld [hl], a                                    ; $66a6: $77
    ld [hl], a                                    ; $66a7: $77
    ld [hl], a                                    ; $66a8: $77
    ld [hl], a                                    ; $66a9: $77
    ld [hl], a                                    ; $66aa: $77
    ld [hl], a                                    ; $66ab: $77
    ld [hl], a                                    ; $66ac: $77
    ld [hl], a                                    ; $66ad: $77
    ld [hl], a                                    ; $66ae: $77
    ld [hl], a                                    ; $66af: $77
    add a                                         ; $66b0: $87
    ld [hl], a                                    ; $66b1: $77
    adc b                                         ; $66b2: $88
    adc b                                         ; $66b3: $88
    adc b                                         ; $66b4: $88
    adc b                                         ; $66b5: $88
    adc b                                         ; $66b6: $88
    add a                                         ; $66b7: $87
    ld [hl], a                                    ; $66b8: $77

Call_011_66b9:
    ld a, b                                       ; $66b9: $78

Call_011_66ba:
    adc b                                         ; $66ba: $88
    adc b                                         ; $66bb: $88
    adc b                                         ; $66bc: $88
    add a                                         ; $66bd: $87
    ld [hl], a                                    ; $66be: $77
    ld [hl], a                                    ; $66bf: $77
    adc b                                         ; $66c0: $88
    adc b                                         ; $66c1: $88
    adc b                                         ; $66c2: $88
    adc b                                         ; $66c3: $88
    adc b                                         ; $66c4: $88
    adc b                                         ; $66c5: $88
    adc b                                         ; $66c6: $88
    adc b                                         ; $66c7: $88
    adc b                                         ; $66c8: $88
    adc b                                         ; $66c9: $88
    adc b                                         ; $66ca: $88
    adc b                                         ; $66cb: $88
    adc b                                         ; $66cc: $88
    ld [hl], a                                    ; $66cd: $77
    adc b                                         ; $66ce: $88
    adc b                                         ; $66cf: $88
    adc b                                         ; $66d0: $88
    adc b                                         ; $66d1: $88
    adc b                                         ; $66d2: $88
    adc b                                         ; $66d3: $88
    adc b                                         ; $66d4: $88
    adc b                                         ; $66d5: $88
    adc b                                         ; $66d6: $88
    add a                                         ; $66d7: $87
    adc b                                         ; $66d8: $88
    adc b                                         ; $66d9: $88
    ld a, b                                       ; $66da: $78
    adc b                                         ; $66db: $88
    adc b                                         ; $66dc: $88
    adc b                                         ; $66dd: $88
    adc b                                         ; $66de: $88
    adc b                                         ; $66df: $88
    adc b                                         ; $66e0: $88
    adc b                                         ; $66e1: $88
    adc b                                         ; $66e2: $88
    adc b                                         ; $66e3: $88
    adc b                                         ; $66e4: $88
    add a                                         ; $66e5: $87
    ld [hl], a                                    ; $66e6: $77
    ld [hl], a                                    ; $66e7: $77
    ld [hl], a                                    ; $66e8: $77
    adc b                                         ; $66e9: $88
    ld [hl], a                                    ; $66ea: $77
    ld a, b                                       ; $66eb: $78
    add a                                         ; $66ec: $87
    ld [hl], a                                    ; $66ed: $77
    ld [hl], a                                    ; $66ee: $77
    ld [hl], a                                    ; $66ef: $77
    add a                                         ; $66f0: $87
    ld [hl], a                                    ; $66f1: $77
    ld [hl], a                                    ; $66f2: $77
    ld [hl], a                                    ; $66f3: $77
    ld [hl], a                                    ; $66f4: $77
    ld [hl], a                                    ; $66f5: $77
    ld [hl], a                                    ; $66f6: $77
    ld [hl], a                                    ; $66f7: $77
    ld [hl], a                                    ; $66f8: $77
    ld [hl], a                                    ; $66f9: $77
    ld [hl], a                                    ; $66fa: $77
    ld [hl], a                                    ; $66fb: $77
    ld [hl], a                                    ; $66fc: $77
    ld [hl], a                                    ; $66fd: $77
    ld [hl], a                                    ; $66fe: $77
    ld [hl], a                                    ; $66ff: $77
    add a                                         ; $6700: $87
    ld [hl], a                                    ; $6701: $77
    ld a, b                                       ; $6702: $78
    ld [hl], a                                    ; $6703: $77
    ld [hl], a                                    ; $6704: $77
    ld [hl], a                                    ; $6705: $77
    ld [hl], a                                    ; $6706: $77
    ld [hl], a                                    ; $6707: $77
    ld [hl], a                                    ; $6708: $77
    ld a, b                                       ; $6709: $78
    adc b                                         ; $670a: $88
    adc b                                         ; $670b: $88
    adc b                                         ; $670c: $88
    adc b                                         ; $670d: $88
    adc b                                         ; $670e: $88
    adc b                                         ; $670f: $88
    adc b                                         ; $6710: $88
    adc b                                         ; $6711: $88
    adc b                                         ; $6712: $88
    adc b                                         ; $6713: $88
    add a                                         ; $6714: $87
    ld [hl], a                                    ; $6715: $77
    ld [hl], a                                    ; $6716: $77
    ld [hl], a                                    ; $6717: $77
    adc b                                         ; $6718: $88
    adc b                                         ; $6719: $88
    adc b                                         ; $671a: $88
    adc b                                         ; $671b: $88
    adc b                                         ; $671c: $88
    adc b                                         ; $671d: $88
    adc b                                         ; $671e: $88
    adc b                                         ; $671f: $88
    add a                                         ; $6720: $87
    ld [hl], a                                    ; $6721: $77
    ld [hl], a                                    ; $6722: $77
    ld [hl], a                                    ; $6723: $77
    ld [hl], a                                    ; $6724: $77
    ld a, b                                       ; $6725: $78
    add a                                         ; $6726: $87
    ld a, b                                       ; $6727: $78
    adc b                                         ; $6728: $88
    ld [hl], a                                    ; $6729: $77
    ld [hl], a                                    ; $672a: $77
    ld [hl], a                                    ; $672b: $77
    ld [hl], a                                    ; $672c: $77
    ld [hl], a                                    ; $672d: $77
    ld [hl], a                                    ; $672e: $77
    ld [hl], a                                    ; $672f: $77
    adc b                                         ; $6730: $88
    adc b                                         ; $6731: $88
    adc b                                         ; $6732: $88
    adc b                                         ; $6733: $88
    add a                                         ; $6734: $87
    adc b                                         ; $6735: $88
    adc b                                         ; $6736: $88
    adc b                                         ; $6737: $88
    adc b                                         ; $6738: $88
    adc b                                         ; $6739: $88
    adc b                                         ; $673a: $88
    ld [hl], a                                    ; $673b: $77
    ld [hl], a                                    ; $673c: $77
    ld [hl], a                                    ; $673d: $77
    ld [hl], a                                    ; $673e: $77
    ld [hl], a                                    ; $673f: $77
    add a                                         ; $6740: $87
    adc b                                         ; $6741: $88
    adc b                                         ; $6742: $88
    adc b                                         ; $6743: $88
    adc b                                         ; $6744: $88
    adc b                                         ; $6745: $88
    adc b                                         ; $6746: $88
    add a                                         ; $6747: $87
    ld [hl], a                                    ; $6748: $77
    ld [hl], a                                    ; $6749: $77
    ld [hl], a                                    ; $674a: $77
    ld [hl], a                                    ; $674b: $77
    adc b                                         ; $674c: $88
    adc b                                         ; $674d: $88
    adc b                                         ; $674e: $88
    add a                                         ; $674f: $87
    add a                                         ; $6750: $87
    ld [hl], a                                    ; $6751: $77
    adc b                                         ; $6752: $88
    adc b                                         ; $6753: $88
    adc b                                         ; $6754: $88
    adc b                                         ; $6755: $88
    adc b                                         ; $6756: $88
    adc b                                         ; $6757: $88
    adc b                                         ; $6758: $88
    adc b                                         ; $6759: $88
    adc b                                         ; $675a: $88
    adc b                                         ; $675b: $88
    ld [hl], a                                    ; $675c: $77
    ld [hl], a                                    ; $675d: $77
    ld [hl], a                                    ; $675e: $77
    ld [hl], a                                    ; $675f: $77
    add a                                         ; $6760: $87
    ld [hl], a                                    ; $6761: $77
    ld [hl], a                                    ; $6762: $77
    adc b                                         ; $6763: $88
    adc b                                         ; $6764: $88
    adc b                                         ; $6765: $88
    adc b                                         ; $6766: $88
    adc b                                         ; $6767: $88
    adc b                                         ; $6768: $88
    ld [hl], a                                    ; $6769: $77
    ld [hl], a                                    ; $676a: $77
    ld [hl], a                                    ; $676b: $77
    ld [hl], a                                    ; $676c: $77
    ld [hl], a                                    ; $676d: $77
    ld [hl], a                                    ; $676e: $77
    ld [hl], a                                    ; $676f: $77
    adc b                                         ; $6770: $88
    adc b                                         ; $6771: $88
    add a                                         ; $6772: $87
    ld [hl], a                                    ; $6773: $77
    ld [hl], a                                    ; $6774: $77
    ld [hl], a                                    ; $6775: $77
    adc b                                         ; $6776: $88
    add a                                         ; $6777: $87
    ld [hl], a                                    ; $6778: $77
    ld [hl], a                                    ; $6779: $77
    ld [hl], a                                    ; $677a: $77
    ld [hl], a                                    ; $677b: $77
    ld a, b                                       ; $677c: $78
    adc b                                         ; $677d: $88
    ld [hl], a                                    ; $677e: $77
    ld [hl], a                                    ; $677f: $77
    add a                                         ; $6780: $87
    ld [hl], a                                    ; $6781: $77
    adc b                                         ; $6782: $88
    adc b                                         ; $6783: $88
    adc b                                         ; $6784: $88
    adc b                                         ; $6785: $88
    adc b                                         ; $6786: $88
    adc b                                         ; $6787: $88
    adc b                                         ; $6788: $88
    adc b                                         ; $6789: $88
    adc b                                         ; $678a: $88
    adc b                                         ; $678b: $88
    adc b                                         ; $678c: $88
    adc b                                         ; $678d: $88
    adc b                                         ; $678e: $88
    adc b                                         ; $678f: $88
    adc b                                         ; $6790: $88
    adc b                                         ; $6791: $88
    adc b                                         ; $6792: $88
    adc b                                         ; $6793: $88
    adc b                                         ; $6794: $88
    adc b                                         ; $6795: $88
    adc b                                         ; $6796: $88
    adc b                                         ; $6797: $88

Jump_011_6798:
    adc b                                         ; $6798: $88
    ld [hl], a                                    ; $6799: $77
    adc b                                         ; $679a: $88
    adc b                                         ; $679b: $88
    add a                                         ; $679c: $87
    ld a, b                                       ; $679d: $78
    ld a, b                                       ; $679e: $78
    ld [hl], a                                    ; $679f: $77
    add a                                         ; $67a0: $87
    ld [hl], a                                    ; $67a1: $77
    ld [hl], a                                    ; $67a2: $77
    ld [hl], a                                    ; $67a3: $77
    ld [hl], a                                    ; $67a4: $77
    ld a, b                                       ; $67a5: $78
    ld a, b                                       ; $67a6: $78
    adc b                                         ; $67a7: $88
    adc b                                         ; $67a8: $88
    adc b                                         ; $67a9: $88
    adc b                                         ; $67aa: $88
    adc b                                         ; $67ab: $88
    adc b                                         ; $67ac: $88
    adc b                                         ; $67ad: $88
    adc b                                         ; $67ae: $88
    adc b                                         ; $67af: $88
    adc b                                         ; $67b0: $88
    adc b                                         ; $67b1: $88
    adc b                                         ; $67b2: $88
    adc b                                         ; $67b3: $88
    adc b                                         ; $67b4: $88
    adc b                                         ; $67b5: $88
    adc b                                         ; $67b6: $88
    add a                                         ; $67b7: $87
    ld a, b                                       ; $67b8: $78
    ld [hl], a                                    ; $67b9: $77
    ld [hl], a                                    ; $67ba: $77
    ld [hl], a                                    ; $67bb: $77
    ld [hl], a                                    ; $67bc: $77
    ld [hl], a                                    ; $67bd: $77
    ld [hl], a                                    ; $67be: $77
    ld [hl], a                                    ; $67bf: $77
    add a                                         ; $67c0: $87
    ld [hl], a                                    ; $67c1: $77
    ld [hl], a                                    ; $67c2: $77
    ld [hl], a                                    ; $67c3: $77
    ld [hl], a                                    ; $67c4: $77
    ld [hl], a                                    ; $67c5: $77
    ld a, b                                       ; $67c6: $78
    adc b                                         ; $67c7: $88
    adc b                                         ; $67c8: $88
    adc b                                         ; $67c9: $88
    adc b                                         ; $67ca: $88
    add a                                         ; $67cb: $87
    add a                                         ; $67cc: $87
    ld [hl], a                                    ; $67cd: $77
    ld a, b                                       ; $67ce: $78
    ld [hl], a                                    ; $67cf: $77
    add a                                         ; $67d0: $87
    ld [hl], a                                    ; $67d1: $77
    ld [hl], a                                    ; $67d2: $77
    ld [hl], a                                    ; $67d3: $77
    ld [hl], a                                    ; $67d4: $77
    ld [hl], a                                    ; $67d5: $77
    adc b                                         ; $67d6: $88
    adc b                                         ; $67d7: $88
    adc b                                         ; $67d8: $88
    adc b                                         ; $67d9: $88
    adc b                                         ; $67da: $88
    adc b                                         ; $67db: $88
    adc b                                         ; $67dc: $88
    adc b                                         ; $67dd: $88
    adc b                                         ; $67de: $88
    adc b                                         ; $67df: $88
    adc b                                         ; $67e0: $88
    adc b                                         ; $67e1: $88
    adc b                                         ; $67e2: $88
    ld a, b                                       ; $67e3: $78
    add a                                         ; $67e4: $87
    ld [hl], a                                    ; $67e5: $77
    ld [hl], a                                    ; $67e6: $77
    ld [hl], a                                    ; $67e7: $77
    ld [hl], a                                    ; $67e8: $77
    ld [hl], a                                    ; $67e9: $77
    ld [hl], a                                    ; $67ea: $77
    ld [hl], a                                    ; $67eb: $77

Call_011_67ec:
    ld [hl], a                                    ; $67ec: $77
    ld [hl], a                                    ; $67ed: $77
    ld [hl], a                                    ; $67ee: $77
    ld [hl], a                                    ; $67ef: $77
    add a                                         ; $67f0: $87
    ld a, b                                       ; $67f1: $78
    adc b                                         ; $67f2: $88
    adc b                                         ; $67f3: $88
    adc b                                         ; $67f4: $88
    adc b                                         ; $67f5: $88
    adc b                                         ; $67f6: $88
    adc b                                         ; $67f7: $88
    ld a, b                                       ; $67f8: $78
    ld [hl], a                                    ; $67f9: $77
    ld [hl], a                                    ; $67fa: $77
    ld [hl], a                                    ; $67fb: $77
    ld [hl], a                                    ; $67fc: $77
    ld [hl], a                                    ; $67fd: $77
    ld [hl], a                                    ; $67fe: $77
    ld a, b                                       ; $67ff: $78
    adc b                                         ; $6800: $88
    adc b                                         ; $6801: $88
    adc b                                         ; $6802: $88
    adc b                                         ; $6803: $88
    adc b                                         ; $6804: $88
    adc b                                         ; $6805: $88
    adc b                                         ; $6806: $88
    adc b                                         ; $6807: $88
    adc b                                         ; $6808: $88
    adc b                                         ; $6809: $88
    adc b                                         ; $680a: $88
    adc b                                         ; $680b: $88
    add a                                         ; $680c: $87
    ld [hl], a                                    ; $680d: $77
    ld [hl], a                                    ; $680e: $77
    ld [hl], a                                    ; $680f: $77
    add a                                         ; $6810: $87
    adc b                                         ; $6811: $88
    add a                                         ; $6812: $87
    ld [hl], a                                    ; $6813: $77
    ld [hl], a                                    ; $6814: $77
    ld [hl], a                                    ; $6815: $77
    ld a, b                                       ; $6816: $78
    adc b                                         ; $6817: $88
    adc b                                         ; $6818: $88
    adc b                                         ; $6819: $88
    adc b                                         ; $681a: $88
    adc b                                         ; $681b: $88
    adc b                                         ; $681c: $88
    adc b                                         ; $681d: $88
    adc b                                         ; $681e: $88
    adc b                                         ; $681f: $88
    adc b                                         ; $6820: $88
    adc b                                         ; $6821: $88
    adc b                                         ; $6822: $88
    adc b                                         ; $6823: $88
    adc b                                         ; $6824: $88
    adc b                                         ; $6825: $88
    adc b                                         ; $6826: $88
    adc b                                         ; $6827: $88
    ld [hl], a                                    ; $6828: $77
    ld [hl], a                                    ; $6829: $77
    ld [hl], a                                    ; $682a: $77
    ld [hl], a                                    ; $682b: $77
    ld [hl], a                                    ; $682c: $77
    ld [hl], a                                    ; $682d: $77
    ld [hl], a                                    ; $682e: $77
    ld [hl], a                                    ; $682f: $77
    add a                                         ; $6830: $87
    ld [hl], a                                    ; $6831: $77
    ld [hl], a                                    ; $6832: $77
    ld [hl], a                                    ; $6833: $77
    ld [hl], a                                    ; $6834: $77
    ld [hl], a                                    ; $6835: $77
    ld [hl], a                                    ; $6836: $77
    ld a, b                                       ; $6837: $78
    ld [hl], a                                    ; $6838: $77
    add a                                         ; $6839: $87
    add a                                         ; $683a: $87
    ld [hl], a                                    ; $683b: $77
    ld [hl], a                                    ; $683c: $77
    ld [hl], a                                    ; $683d: $77
    ld [hl], a                                    ; $683e: $77
    ld [hl], a                                    ; $683f: $77
    add a                                         ; $6840: $87
    ld [hl], a                                    ; $6841: $77
    ld [hl], a                                    ; $6842: $77
    ld [hl], a                                    ; $6843: $77
    ld [hl], a                                    ; $6844: $77
    ld [hl], a                                    ; $6845: $77
    ld a, b                                       ; $6846: $78
    ld [hl], a                                    ; $6847: $77
    adc b                                         ; $6848: $88
    ld a, b                                       ; $6849: $78
    adc b                                         ; $684a: $88
    adc b                                         ; $684b: $88
    adc b                                         ; $684c: $88
    adc b                                         ; $684d: $88
    adc b                                         ; $684e: $88
    adc b                                         ; $684f: $88
    adc b                                         ; $6850: $88
    adc b                                         ; $6851: $88
    adc b                                         ; $6852: $88
    adc b                                         ; $6853: $88
    adc b                                         ; $6854: $88
    adc b                                         ; $6855: $88
    adc b                                         ; $6856: $88
    adc b                                         ; $6857: $88
    adc b                                         ; $6858: $88
    adc b                                         ; $6859: $88
    adc b                                         ; $685a: $88
    adc b                                         ; $685b: $88
    adc b                                         ; $685c: $88
    adc b                                         ; $685d: $88
    adc b                                         ; $685e: $88
    adc b                                         ; $685f: $88
    add a                                         ; $6860: $87
    add a                                         ; $6861: $87
    add a                                         ; $6862: $87
    adc b                                         ; $6863: $88
    adc b                                         ; $6864: $88
    adc b                                         ; $6865: $88
    adc b                                         ; $6866: $88
    adc b                                         ; $6867: $88
    adc b                                         ; $6868: $88
    adc b                                         ; $6869: $88
    adc b                                         ; $686a: $88
    ld [hl], a                                    ; $686b: $77
    ld [hl], a                                    ; $686c: $77
    ld [hl], a                                    ; $686d: $77
    ld [hl], a                                    ; $686e: $77
    ld [hl], a                                    ; $686f: $77
    add a                                         ; $6870: $87
    ld a, b                                       ; $6871: $78
    ld [hl], a                                    ; $6872: $77
    adc b                                         ; $6873: $88
    ld a, b                                       ; $6874: $78
    ld [hl], a                                    ; $6875: $77
    add a                                         ; $6876: $87
    adc b                                         ; $6877: $88
    ld a, b                                       ; $6878: $78
    adc b                                         ; $6879: $88
    adc b                                         ; $687a: $88
    adc b                                         ; $687b: $88
    adc b                                         ; $687c: $88
    ld a, b                                       ; $687d: $78
    ld [hl], a                                    ; $687e: $77
    ld [hl], a                                    ; $687f: $77
    add a                                         ; $6880: $87
    ld [hl], a                                    ; $6881: $77
    ld [hl], a                                    ; $6882: $77
    ld [hl], a                                    ; $6883: $77
    ld [hl], a                                    ; $6884: $77
    ld [hl], a                                    ; $6885: $77
    ld [hl], a                                    ; $6886: $77
    ld [hl], a                                    ; $6887: $77
    ld [hl], a                                    ; $6888: $77
    ld [hl], a                                    ; $6889: $77
    add a                                         ; $688a: $87
    ld [hl], a                                    ; $688b: $77
    ld [hl], a                                    ; $688c: $77
    ld [hl], a                                    ; $688d: $77
    ld a, b                                       ; $688e: $78
    ld [hl], a                                    ; $688f: $77
    adc b                                         ; $6890: $88
    adc b                                         ; $6891: $88
    add a                                         ; $6892: $87
    ld a, b                                       ; $6893: $78
    add a                                         ; $6894: $87
    ld a, b                                       ; $6895: $78
    add a                                         ; $6896: $87
    ld [hl], a                                    ; $6897: $77
    ld [hl], a                                    ; $6898: $77
    adc b                                         ; $6899: $88
    ld [hl], a                                    ; $689a: $77
    ld [hl], a                                    ; $689b: $77
    ld [hl], a                                    ; $689c: $77
    ld [hl], a                                    ; $689d: $77
    ld [hl], a                                    ; $689e: $77
    ld [hl], a                                    ; $689f: $77
    add a                                         ; $68a0: $87
    ld [hl], a                                    ; $68a1: $77
    ld [hl], a                                    ; $68a2: $77
    ld [hl], a                                    ; $68a3: $77
    ld [hl], a                                    ; $68a4: $77
    ld [hl], a                                    ; $68a5: $77
    ld [hl], a                                    ; $68a6: $77
    ld [hl], a                                    ; $68a7: $77
    ld [hl], a                                    ; $68a8: $77
    ld [hl], a                                    ; $68a9: $77
    ld [hl], a                                    ; $68aa: $77
    ld [hl], a                                    ; $68ab: $77
    ld [hl], a                                    ; $68ac: $77
    ld a, b                                       ; $68ad: $78
    adc b                                         ; $68ae: $88
    adc b                                         ; $68af: $88
    adc b                                         ; $68b0: $88
    sbc b                                         ; $68b1: $98
    adc b                                         ; $68b2: $88
    adc b                                         ; $68b3: $88
    adc b                                         ; $68b4: $88
    adc b                                         ; $68b5: $88
    adc b                                         ; $68b6: $88
    adc b                                         ; $68b7: $88
    adc b                                         ; $68b8: $88
    adc b                                         ; $68b9: $88
    adc b                                         ; $68ba: $88
    adc b                                         ; $68bb: $88
    adc b                                         ; $68bc: $88
    adc b                                         ; $68bd: $88
    add a                                         ; $68be: $87
    ld [hl], a                                    ; $68bf: $77
    add a                                         ; $68c0: $87
    ld a, b                                       ; $68c1: $78
    ld [hl], a                                    ; $68c2: $77
    adc b                                         ; $68c3: $88
    ld [hl], a                                    ; $68c4: $77
    add a                                         ; $68c5: $87
    adc b                                         ; $68c6: $88
    adc b                                         ; $68c7: $88
    adc b                                         ; $68c8: $88
    adc b                                         ; $68c9: $88
    adc b                                         ; $68ca: $88
    adc b                                         ; $68cb: $88
    adc b                                         ; $68cc: $88
    adc b                                         ; $68cd: $88
    adc b                                         ; $68ce: $88
    adc b                                         ; $68cf: $88
    adc b                                         ; $68d0: $88
    adc b                                         ; $68d1: $88
    adc b                                         ; $68d2: $88
    adc b                                         ; $68d3: $88
    adc b                                         ; $68d4: $88
    adc b                                         ; $68d5: $88
    adc b                                         ; $68d6: $88
    adc b                                         ; $68d7: $88
    adc b                                         ; $68d8: $88
    adc b                                         ; $68d9: $88
    adc b                                         ; $68da: $88
    adc b                                         ; $68db: $88
    adc b                                         ; $68dc: $88
    adc b                                         ; $68dd: $88
    adc b                                         ; $68de: $88
    add a                                         ; $68df: $87
    add a                                         ; $68e0: $87
    ld [hl], a                                    ; $68e1: $77
    ld [hl], a                                    ; $68e2: $77
    ld [hl], a                                    ; $68e3: $77
    ld [hl], a                                    ; $68e4: $77
    ld [hl], a                                    ; $68e5: $77
    ld [hl], a                                    ; $68e6: $77
    ld [hl], a                                    ; $68e7: $77
    ld [hl], a                                    ; $68e8: $77
    ld a, b                                       ; $68e9: $78
    adc b                                         ; $68ea: $88
    adc b                                         ; $68eb: $88
    ld [hl], a                                    ; $68ec: $77
    ld [hl], a                                    ; $68ed: $77
    ld [hl], a                                    ; $68ee: $77
    ld [hl], a                                    ; $68ef: $77
    add a                                         ; $68f0: $87
    ld [hl], a                                    ; $68f1: $77
    ld [hl], a                                    ; $68f2: $77
    ld [hl], a                                    ; $68f3: $77
    ld [hl], a                                    ; $68f4: $77
    ld [hl], a                                    ; $68f5: $77
    ld [hl], a                                    ; $68f6: $77
    ld [hl], a                                    ; $68f7: $77
    ld [hl], a                                    ; $68f8: $77
    ld [hl], a                                    ; $68f9: $77
    ld [hl], a                                    ; $68fa: $77
    ld [hl], a                                    ; $68fb: $77
    ld [hl], a                                    ; $68fc: $77
    ld h, [hl]                                    ; $68fd: $66
    ld h, [hl]                                    ; $68fe: $66
    ld h, [hl]                                    ; $68ff: $66
    ld h, [hl]                                    ; $6900: $66
    ld h, [hl]                                    ; $6901: $66
    ld [hl], a                                    ; $6902: $77
    ld [hl], a                                    ; $6903: $77
    ld [hl], a                                    ; $6904: $77
    ld [hl], a                                    ; $6905: $77
    ld [hl], a                                    ; $6906: $77
    ld h, [hl]                                    ; $6907: $66
    ld h, a                                       ; $6908: $67
    ld [hl], a                                    ; $6909: $77
    ld [hl], a                                    ; $690a: $77
    ld a, b                                       ; $690b: $78
    adc b                                         ; $690c: $88
    adc b                                         ; $690d: $88
    adc b                                         ; $690e: $88
    adc b                                         ; $690f: $88
    adc c                                         ; $6910: $89
    sbc c                                         ; $6911: $99
    sbc c                                         ; $6912: $99
    sbc c                                         ; $6913: $99
    sbc c                                         ; $6914: $99
    sbc c                                         ; $6915: $99
    sbc c                                         ; $6916: $99
    sbc c                                         ; $6917: $99
    adc b                                         ; $6918: $88
    adc b                                         ; $6919: $88
    adc b                                         ; $691a: $88
    adc b                                         ; $691b: $88
    adc b                                         ; $691c: $88
    ld [hl], a                                    ; $691d: $77
    ld [hl], a                                    ; $691e: $77
    add a                                         ; $691f: $87
    adc b                                         ; $6920: $88
    adc b                                         ; $6921: $88
    adc b                                         ; $6922: $88
    adc b                                         ; $6923: $88
    adc b                                         ; $6924: $88
    sbc c                                         ; $6925: $99
    adc b                                         ; $6926: $88
    adc b                                         ; $6927: $88
    adc b                                         ; $6928: $88
    adc b                                         ; $6929: $88
    adc b                                         ; $692a: $88
    adc b                                         ; $692b: $88
    adc b                                         ; $692c: $88
    adc b                                         ; $692d: $88
    sbc c                                         ; $692e: $99
    sbc b                                         ; $692f: $98
    adc b                                         ; $6930: $88
    adc b                                         ; $6931: $88
    adc b                                         ; $6932: $88
    ld [hl], a                                    ; $6933: $77
    ld [hl], a                                    ; $6934: $77
    ld [hl], a                                    ; $6935: $77
    ld [hl], a                                    ; $6936: $77
    ld [hl], a                                    ; $6937: $77
    ld [hl], a                                    ; $6938: $77
    ld [hl], a                                    ; $6939: $77
    ld [hl], a                                    ; $693a: $77
    ld [hl], a                                    ; $693b: $77
    ld [hl], a                                    ; $693c: $77
    ld [hl], a                                    ; $693d: $77
    ld [hl], a                                    ; $693e: $77
    ld a, b                                       ; $693f: $78
    add a                                         ; $6940: $87
    ld [hl], a                                    ; $6941: $77
    ld [hl], a                                    ; $6942: $77
    add a                                         ; $6943: $87
    ld [hl], a                                    ; $6944: $77
    halt                                          ; $6945: $76
    ld h, a                                       ; $6946: $67
    ld h, [hl]                                    ; $6947: $66
    ld h, a                                       ; $6948: $67
    ld [hl], a                                    ; $6949: $77
    ld [hl], a                                    ; $694a: $77
    ld [hl], a                                    ; $694b: $77
    adc b                                         ; $694c: $88
    adc b                                         ; $694d: $88
    adc b                                         ; $694e: $88
    adc b                                         ; $694f: $88
    adc b                                         ; $6950: $88
    adc b                                         ; $6951: $88
    adc b                                         ; $6952: $88
    adc b                                         ; $6953: $88
    adc b                                         ; $6954: $88
    adc c                                         ; $6955: $89
    sbc b                                         ; $6956: $98
    adc c                                         ; $6957: $89
    adc b                                         ; $6958: $88
    adc b                                         ; $6959: $88
    adc b                                         ; $695a: $88
    adc b                                         ; $695b: $88
    adc b                                         ; $695c: $88
    sbc c                                         ; $695d: $99
    adc b                                         ; $695e: $88
    adc b                                         ; $695f: $88
    adc b                                         ; $6960: $88
    adc b                                         ; $6961: $88
    ld a, b                                       ; $6962: $78
    ld [hl], a                                    ; $6963: $77
    ld [hl], a                                    ; $6964: $77
    ld [hl], a                                    ; $6965: $77
    ld [hl], a                                    ; $6966: $77
    ld [hl], a                                    ; $6967: $77
    ld [hl], a                                    ; $6968: $77
    ld [hl], a                                    ; $6969: $77
    ld [hl], a                                    ; $696a: $77
    ld [hl], a                                    ; $696b: $77
    ld [hl], a                                    ; $696c: $77
    ld [hl], a                                    ; $696d: $77
    ld [hl], a                                    ; $696e: $77
    ld [hl], a                                    ; $696f: $77
    add a                                         ; $6970: $87
    ld [hl], a                                    ; $6971: $77
    ld [hl], a                                    ; $6972: $77
    ld [hl], a                                    ; $6973: $77
    halt                                          ; $6974: $76
    ld h, a                                       ; $6975: $67
    ld h, [hl]                                    ; $6976: $66
    halt                                          ; $6977: $76
    ld d, [hl]                                    ; $6978: $56
    ld [hl], a                                    ; $6979: $77
    halt                                          ; $697a: $76
    ld h, [hl]                                    ; $697b: $66
    halt                                          ; $697c: $76
    ld h, a                                       ; $697d: $67
    ld [hl], a                                    ; $697e: $77
    halt                                          ; $697f: $76
    ld h, a                                       ; $6980: $67
    halt                                          ; $6981: $76
    ld [hl], a                                    ; $6982: $77
    ld h, a                                       ; $6983: $67
    ld [hl], a                                    ; $6984: $77
    ld [hl], a                                    ; $6985: $77
    ld [hl], a                                    ; $6986: $77
    ld a, b                                       ; $6987: $78
    adc b                                         ; $6988: $88
    adc b                                         ; $6989: $88
    adc b                                         ; $698a: $88
    adc b                                         ; $698b: $88
    sbc c                                         ; $698c: $99
    adc b                                         ; $698d: $88
    sbc b                                         ; $698e: $98
    adc c                                         ; $698f: $89
    sbc b                                         ; $6990: $98
    sbc c                                         ; $6991: $99
    adc b                                         ; $6992: $88
    adc b                                         ; $6993: $88
    adc b                                         ; $6994: $88
    adc b                                         ; $6995: $88
    sbc c                                         ; $6996: $99
    adc b                                         ; $6997: $88
    adc b                                         ; $6998: $88
    adc b                                         ; $6999: $88
    adc b                                         ; $699a: $88
    adc b                                         ; $699b: $88
    adc b                                         ; $699c: $88
    adc b                                         ; $699d: $88
    adc b                                         ; $699e: $88
    adc b                                         ; $699f: $88
    adc b                                         ; $69a0: $88
    adc b                                         ; $69a1: $88
    adc b                                         ; $69a2: $88
    adc b                                         ; $69a3: $88
    sbc c                                         ; $69a4: $99
    sbc c                                         ; $69a5: $99
    sbc c                                         ; $69a6: $99
    sbc c                                         ; $69a7: $99
    sbc c                                         ; $69a8: $99
    sbc c                                         ; $69a9: $99
    sbc c                                         ; $69aa: $99
    adc b                                         ; $69ab: $88
    adc b                                         ; $69ac: $88
    adc b                                         ; $69ad: $88
    add a                                         ; $69ae: $87
    ld a, b                                       ; $69af: $78
    add a                                         ; $69b0: $87
    ld [hl], a                                    ; $69b1: $77
    ld [hl], a                                    ; $69b2: $77
    ld [hl], a                                    ; $69b3: $77
    ld [hl], a                                    ; $69b4: $77
    ld [hl], a                                    ; $69b5: $77
    ld [hl], a                                    ; $69b6: $77
    ld [hl], a                                    ; $69b7: $77
    ld [hl], a                                    ; $69b8: $77
    ld [hl], a                                    ; $69b9: $77
    halt                                          ; $69ba: $76
    ld h, [hl]                                    ; $69bb: $66
    ld h, [hl]                                    ; $69bc: $66
    ld h, l                                       ; $69bd: $65
    ld d, l                                       ; $69be: $55
    ld d, l                                       ; $69bf: $55
    ld d, [hl]                                    ; $69c0: $56
    ld h, [hl]                                    ; $69c1: $66
    ld h, a                                       ; $69c2: $67
    halt                                          ; $69c3: $76
    ld [hl], a                                    ; $69c4: $77
    ld [hl], a                                    ; $69c5: $77
    ld [hl], a                                    ; $69c6: $77
    ld [hl], a                                    ; $69c7: $77
    ld [hl], a                                    ; $69c8: $77
    adc b                                         ; $69c9: $88
    adc b                                         ; $69ca: $88
    adc b                                         ; $69cb: $88
    adc b                                         ; $69cc: $88
    adc b                                         ; $69cd: $88
    sbc c                                         ; $69ce: $99
    adc b                                         ; $69cf: $88
    sbc b                                         ; $69d0: $98
    adc c                                         ; $69d1: $89
    sbc c                                         ; $69d2: $99
    sbc c                                         ; $69d3: $99
    sbc c                                         ; $69d4: $99
    sbc c                                         ; $69d5: $99
    sbc c                                         ; $69d6: $99
    adc c                                         ; $69d7: $89
    sbc b                                         ; $69d8: $98
    adc b                                         ; $69d9: $88
    adc b                                         ; $69da: $88
    adc b                                         ; $69db: $88
    ld [hl], a                                    ; $69dc: $77
    ld [hl], a                                    ; $69dd: $77
    ld [hl], a                                    ; $69de: $77
    ld [hl], a                                    ; $69df: $77
    add a                                         ; $69e0: $87
    ld [hl], a                                    ; $69e1: $77
    ld [hl], a                                    ; $69e2: $77
    ld [hl], a                                    ; $69e3: $77
    ld [hl], a                                    ; $69e4: $77
    ld [hl], a                                    ; $69e5: $77
    ld [hl], a                                    ; $69e6: $77
    ld [hl], a                                    ; $69e7: $77
    ld [hl], a                                    ; $69e8: $77
    ld [hl], a                                    ; $69e9: $77
    ld [hl], a                                    ; $69ea: $77
    ld [hl], a                                    ; $69eb: $77
    ld [hl], a                                    ; $69ec: $77
    ld a, b                                       ; $69ed: $78
    sbc b                                         ; $69ee: $98
    adc b                                         ; $69ef: $88
    sbc c                                         ; $69f0: $99
    adc b                                         ; $69f1: $88
    adc b                                         ; $69f2: $88
    adc b                                         ; $69f3: $88
    adc b                                         ; $69f4: $88
    adc b                                         ; $69f5: $88
    ld a, b                                       ; $69f6: $78
    adc b                                         ; $69f7: $88
    adc b                                         ; $69f8: $88
    adc b                                         ; $69f9: $88
    adc b                                         ; $69fa: $88
    add a                                         ; $69fb: $87
    ld [hl], a                                    ; $69fc: $77
    add a                                         ; $69fd: $87
    ld h, a                                       ; $69fe: $67
    ld h, [hl]                                    ; $69ff: $66
    ld h, [hl]                                    ; $6a00: $66
    ld h, [hl]                                    ; $6a01: $66
    ld h, [hl]                                    ; $6a02: $66
    ld [hl], a                                    ; $6a03: $77
    ld a, b                                       ; $6a04: $78
    add a                                         ; $6a05: $87
    adc b                                         ; $6a06: $88
    adc c                                         ; $6a07: $89
    sbc b                                         ; $6a08: $98
    adc b                                         ; $6a09: $88
    adc c                                         ; $6a0a: $89
    adc b                                         ; $6a0b: $88
    adc b                                         ; $6a0c: $88
    add a                                         ; $6a0d: $87
    ld [hl], a                                    ; $6a0e: $77
    ld [hl], a                                    ; $6a0f: $77
    ld h, a                                       ; $6a10: $67
    ld h, [hl]                                    ; $6a11: $66
    ld h, [hl]                                    ; $6a12: $66
    ld h, [hl]                                    ; $6a13: $66
    ld h, [hl]                                    ; $6a14: $66
    halt                                          ; $6a15: $76
    ld h, [hl]                                    ; $6a16: $66
    ld h, [hl]                                    ; $6a17: $66
    ld h, a                                       ; $6a18: $67
    ld [hl], a                                    ; $6a19: $77
    ld a, b                                       ; $6a1a: $78
    adc b                                         ; $6a1b: $88
    adc b                                         ; $6a1c: $88
    sbc d                                         ; $6a1d: $9a
    sbc d                                         ; $6a1e: $9a
    xor d                                         ; $6a1f: $aa
    xor c                                         ; $6a20: $a9
    xor c                                         ; $6a21: $a9
    sbc c                                         ; $6a22: $99
    sbc c                                         ; $6a23: $99
    sbc c                                         ; $6a24: $99
    sbc b                                         ; $6a25: $98
    adc b                                         ; $6a26: $88
    adc b                                         ; $6a27: $88
    add a                                         ; $6a28: $87
    halt                                          ; $6a29: $76
    ld h, [hl]                                    ; $6a2a: $66
    ld [hl], a                                    ; $6a2b: $77
    ld h, [hl]                                    ; $6a2c: $66
    ld [hl], a                                    ; $6a2d: $77
    ld h, a                                       ; $6a2e: $67
    ld [hl], a                                    ; $6a2f: $77
    add a                                         ; $6a30: $87
    ld [hl], a                                    ; $6a31: $77
    ld [hl], a                                    ; $6a32: $77
    ld [hl], a                                    ; $6a33: $77
    ld [hl], a                                    ; $6a34: $77
    ld [hl], a                                    ; $6a35: $77
    ld [hl], a                                    ; $6a36: $77
    ld [hl], a                                    ; $6a37: $77
    ld [hl], a                                    ; $6a38: $77
    ld [hl], a                                    ; $6a39: $77
    add a                                         ; $6a3a: $87
    adc b                                         ; $6a3b: $88
    ld [hl], a                                    ; $6a3c: $77
    ld [hl], a                                    ; $6a3d: $77
    ld [hl], a                                    ; $6a3e: $77
    ld [hl], a                                    ; $6a3f: $77
    add a                                         ; $6a40: $87
    ld [hl], a                                    ; $6a41: $77
    add a                                         ; $6a42: $87
    adc b                                         ; $6a43: $88
    adc c                                         ; $6a44: $89
    adc b                                         ; $6a45: $88
    sbc b                                         ; $6a46: $98
    adc b                                         ; $6a47: $88
    adc b                                         ; $6a48: $88
    adc b                                         ; $6a49: $88
    adc b                                         ; $6a4a: $88
    sbc c                                         ; $6a4b: $99
    adc b                                         ; $6a4c: $88
    sbc b                                         ; $6a4d: $98
    sbc c                                         ; $6a4e: $99
    sbc c                                         ; $6a4f: $99
    sbc c                                         ; $6a50: $99
    sbc c                                         ; $6a51: $99
    sbc c                                         ; $6a52: $99
    sbc c                                         ; $6a53: $99
    sbc b                                         ; $6a54: $98
    adc b                                         ; $6a55: $88
    adc b                                         ; $6a56: $88
    adc b                                         ; $6a57: $88
    ld [hl], a                                    ; $6a58: $77
    ld [hl], a                                    ; $6a59: $77
    halt                                          ; $6a5a: $76
    ld h, [hl]                                    ; $6a5b: $66
    ld h, [hl]                                    ; $6a5c: $66
    ld h, [hl]                                    ; $6a5d: $66
    ld h, [hl]                                    ; $6a5e: $66
    ld h, [hl]                                    ; $6a5f: $66
    ld h, [hl]                                    ; $6a60: $66
    ld h, a                                       ; $6a61: $67
    ld [hl], a                                    ; $6a62: $77
    ld [hl], a                                    ; $6a63: $77
    ld [hl], a                                    ; $6a64: $77
    ld [hl], a                                    ; $6a65: $77
    ld h, [hl]                                    ; $6a66: $66
    ld h, [hl]                                    ; $6a67: $66
    ld h, [hl]                                    ; $6a68: $66
    ld h, [hl]                                    ; $6a69: $66
    ld [hl], a                                    ; $6a6a: $77
    ld [hl], a                                    ; $6a6b: $77
    ld [hl], a                                    ; $6a6c: $77
    ld [hl], a                                    ; $6a6d: $77
    ld [hl], a                                    ; $6a6e: $77
    ld [hl], a                                    ; $6a6f: $77
    ld h, [hl]                                    ; $6a70: $66
    ld h, [hl]                                    ; $6a71: $66
    ld d, [hl]                                    ; $6a72: $56
    ld h, [hl]                                    ; $6a73: $66
    ld h, [hl]                                    ; $6a74: $66
    ld h, a                                       ; $6a75: $67
    ld h, a                                       ; $6a76: $67
    ld [hl], a                                    ; $6a77: $77
    ld [hl], a                                    ; $6a78: $77
    ld [hl], a                                    ; $6a79: $77
    ld a, b                                       ; $6a7a: $78
    adc b                                         ; $6a7b: $88
    adc c                                         ; $6a7c: $89
    sbc b                                         ; $6a7d: $98
    sbc c                                         ; $6a7e: $99
    sbc d                                         ; $6a7f: $9a
    xor d                                         ; $6a80: $aa
    xor d                                         ; $6a81: $aa
    xor d                                         ; $6a82: $aa
    xor d                                         ; $6a83: $aa
    xor e                                         ; $6a84: $ab
    cp d                                          ; $6a85: $ba
    xor d                                         ; $6a86: $aa
    xor d                                         ; $6a87: $aa
    xor c                                         ; $6a88: $a9
    sbc b                                         ; $6a89: $98
    adc b                                         ; $6a8a: $88
    add a                                         ; $6a8b: $87
    sbc b                                         ; $6a8c: $98
    ld a, c                                       ; $6a8d: $79
    sub a                                         ; $6a8e: $97
    add a                                         ; $6a8f: $87
    ld h, a                                       ; $6a90: $67
    ld a, b                                       ; $6a91: $78
    ld [hl], a                                    ; $6a92: $77
    ld h, [hl]                                    ; $6a93: $66
    ld h, a                                       ; $6a94: $67
    ld a, c                                       ; $6a95: $79
    sub a                                         ; $6a96: $97
    ld h, [hl]                                    ; $6a97: $66
    ld a, b                                       ; $6a98: $78
    ld [hl], a                                    ; $6a99: $77
    ld a, b                                       ; $6a9a: $78
    ld [hl], a                                    ; $6a9b: $77
    ld [hl], a                                    ; $6a9c: $77
    ld [hl], a                                    ; $6a9d: $77
    ld a, b                                       ; $6a9e: $78
    adc b                                         ; $6a9f: $88
    adc b                                         ; $6aa0: $88
    sbc c                                         ; $6aa1: $99
    adc b                                         ; $6aa2: $88
    adc b                                         ; $6aa3: $88
    adc b                                         ; $6aa4: $88
    adc b                                         ; $6aa5: $88
    adc b                                         ; $6aa6: $88
    ld a, b                                       ; $6aa7: $78
    add a                                         ; $6aa8: $87
    ld [hl], a                                    ; $6aa9: $77
    ld [hl], a                                    ; $6aaa: $77
    ld [hl], a                                    ; $6aab: $77
    ld [hl], a                                    ; $6aac: $77
    ld [hl], a                                    ; $6aad: $77
    ld [hl], a                                    ; $6aae: $77
    ld [hl], a                                    ; $6aaf: $77
    ld h, [hl]                                    ; $6ab0: $66
    ld h, [hl]                                    ; $6ab1: $66
    ld h, [hl]                                    ; $6ab2: $66
    ld h, [hl]                                    ; $6ab3: $66
    ld h, [hl]                                    ; $6ab4: $66
    ld h, a                                       ; $6ab5: $67
    ld [hl], a                                    ; $6ab6: $77
    ld h, a                                       ; $6ab7: $67
    ld [hl], a                                    ; $6ab8: $77
    ld [hl], a                                    ; $6ab9: $77
    ld [hl], a                                    ; $6aba: $77
    ld [hl], a                                    ; $6abb: $77
    ld [hl], a                                    ; $6abc: $77
    ld [hl], a                                    ; $6abd: $77
    ld [hl], a                                    ; $6abe: $77
    ld [hl], a                                    ; $6abf: $77
    add a                                         ; $6ac0: $87
    halt                                          ; $6ac1: $76
    ld h, [hl]                                    ; $6ac2: $66
    ld h, [hl]                                    ; $6ac3: $66
    ld h, [hl]                                    ; $6ac4: $66
    ld h, [hl]                                    ; $6ac5: $66
    ld h, [hl]                                    ; $6ac6: $66
    ld h, a                                       ; $6ac7: $67
    ld [hl], a                                    ; $6ac8: $77
    ld a, b                                       ; $6ac9: $78
    adc b                                         ; $6aca: $88
    adc b                                         ; $6acb: $88
    adc c                                         ; $6acc: $89
    adc c                                         ; $6acd: $89
    adc b                                         ; $6ace: $88
    adc c                                         ; $6acf: $89
    sbc c                                         ; $6ad0: $99
    adc c                                         ; $6ad1: $89
    sbc c                                         ; $6ad2: $99
    adc c                                         ; $6ad3: $89
    sbc c                                         ; $6ad4: $99
    xor d                                         ; $6ad5: $aa
    xor d                                         ; $6ad6: $aa
    xor d                                         ; $6ad7: $aa
    xor d                                         ; $6ad8: $aa
    xor c                                         ; $6ad9: $a9
    sbc c                                         ; $6ada: $99
    sbc c                                         ; $6adb: $99
    sbc c                                         ; $6adc: $99
    sbc c                                         ; $6add: $99
    sbc c                                         ; $6ade: $99
    adc b                                         ; $6adf: $88
    adc b                                         ; $6ae0: $88
    adc b                                         ; $6ae1: $88
    adc b                                         ; $6ae2: $88
    adc b                                         ; $6ae3: $88
    adc b                                         ; $6ae4: $88
    ld [hl], a                                    ; $6ae5: $77
    add a                                         ; $6ae6: $87
    ld [hl], a                                    ; $6ae7: $77
    halt                                          ; $6ae8: $76
    ld [hl], a                                    ; $6ae9: $77
    halt                                          ; $6aea: $76
    ld h, [hl]                                    ; $6aeb: $66
    ld d, [hl]                                    ; $6aec: $56
    ld h, l                                       ; $6aed: $65
    ld h, [hl]                                    ; $6aee: $66
    ld h, l                                       ; $6aef: $65
    ld h, [hl]                                    ; $6af0: $66
    ld h, l                                       ; $6af1: $65
    ld d, l                                       ; $6af2: $55
    ld h, [hl]                                    ; $6af3: $66
    ld d, [hl]                                    ; $6af4: $56
    ld h, l                                       ; $6af5: $65
    ld [hl], a                                    ; $6af6: $77
    halt                                          ; $6af7: $76
    add a                                         ; $6af8: $87
    ld [hl], a                                    ; $6af9: $77
    ld h, a                                       ; $6afa: $67
    ld l, b                                       ; $6afb: $68
    ld [hl], a                                    ; $6afc: $77
    sbc c                                         ; $6afd: $99
    sbc c                                         ; $6afe: $99
    adc b                                         ; $6aff: $88
    adc c                                         ; $6b00: $89
    sbc b                                         ; $6b01: $98
    adc b                                         ; $6b02: $88
    adc b                                         ; $6b03: $88
    add a                                         ; $6b04: $87
    adc b                                         ; $6b05: $88
    adc c                                         ; $6b06: $89
    ld a, c                                       ; $6b07: $79
    sub a                                         ; $6b08: $97
    sbc b                                         ; $6b09: $98
    add a                                         ; $6b0a: $87
    ld a, b                                       ; $6b0b: $78
    sbc c                                         ; $6b0c: $99
    sbc d                                         ; $6b0d: $9a
    adc c                                         ; $6b0e: $89
    xor c                                         ; $6b0f: $a9
    adc b                                         ; $6b10: $88
    adc d                                         ; $6b11: $8a
    sbc c                                         ; $6b12: $99
    adc b                                         ; $6b13: $88
    adc b                                         ; $6b14: $88
    add a                                         ; $6b15: $87
    ld [hl], a                                    ; $6b16: $77
    ld a, b                                       ; $6b17: $78
    ld [hl], a                                    ; $6b18: $77
    adc d                                         ; $6b19: $8a
    xor c                                         ; $6b1a: $a9
    ld [hl], l                                    ; $6b1b: $75
    ld h, a                                       ; $6b1c: $67
    sbc c                                         ; $6b1d: $99
    ld a, b                                       ; $6b1e: $78
    add [hl]                                      ; $6b1f: $86
    adc b                                         ; $6b20: $88
    ld l, b                                       ; $6b21: $68
    ld a, c                                       ; $6b22: $79
    adc b                                         ; $6b23: $88
    ld [hl], a                                    ; $6b24: $77
    ld l, b                                       ; $6b25: $68
    add a                                         ; $6b26: $87
    add a                                         ; $6b27: $87
    sub a                                         ; $6b28: $97
    ld [hl], a                                    ; $6b29: $77
    ld l, b                                       ; $6b2a: $68
    add a                                         ; $6b2b: $87
    halt                                          ; $6b2c: $76
    halt                                          ; $6b2d: $76
    ld h, [hl]                                    ; $6b2e: $66
    ld [hl], a                                    ; $6b2f: $77
    add [hl]                                      ; $6b30: $86
    ld h, [hl]                                    ; $6b31: $66
    ld h, [hl]                                    ; $6b32: $66
    ld h, [hl]                                    ; $6b33: $66
    ld h, [hl]                                    ; $6b34: $66
    halt                                          ; $6b35: $76
    ld [hl], a                                    ; $6b36: $77
    ld [hl], a                                    ; $6b37: $77
    ld [hl], a                                    ; $6b38: $77
    add a                                         ; $6b39: $87
    ld [hl], a                                    ; $6b3a: $77
    sbc c                                         ; $6b3b: $99
    sbc c                                         ; $6b3c: $99
    sbc c                                         ; $6b3d: $99
    adc c                                         ; $6b3e: $89
    sbc c                                         ; $6b3f: $99
    sbc b                                         ; $6b40: $98
    sbc c                                         ; $6b41: $99
    sbc c                                         ; $6b42: $99
    sbc c                                         ; $6b43: $99
    adc b                                         ; $6b44: $88
    adc b                                         ; $6b45: $88
    adc b                                         ; $6b46: $88
    add a                                         ; $6b47: $87
    ld [hl], a                                    ; $6b48: $77
    ld h, a                                       ; $6b49: $67
    halt                                          ; $6b4a: $76
    ld h, [hl]                                    ; $6b4b: $66
    ld [hl], l                                    ; $6b4c: $75
    ld h, [hl]                                    ; $6b4d: $66
    ld d, [hl]                                    ; $6b4e: $56
    ld d, l                                       ; $6b4f: $55
    ld d, l                                       ; $6b50: $55
    ld d, l                                       ; $6b51: $55
    ld d, l                                       ; $6b52: $55
    ld d, l                                       ; $6b53: $55
    ld b, l                                       ; $6b54: $45
    ld d, h                                       ; $6b55: $54
    ld d, l                                       ; $6b56: $55
    ld d, [hl]                                    ; $6b57: $56
    halt                                          ; $6b58: $76
    ld h, a                                       ; $6b59: $67
    ld a, b                                       ; $6b5a: $78
    adc c                                         ; $6b5b: $89
    adc b                                         ; $6b5c: $88
    adc c                                         ; $6b5d: $89
    sbc c                                         ; $6b5e: $99
    xor d                                         ; $6b5f: $aa
    xor c                                         ; $6b60: $a9
    xor c                                         ; $6b61: $a9
    xor b                                         ; $6b62: $a8
    sbc c                                         ; $6b63: $99
    sub a                                         ; $6b64: $97
    adc b                                         ; $6b65: $88
    ld a, b                                       ; $6b66: $78
    sbc c                                         ; $6b67: $99
    adc c                                         ; $6b68: $89
    sbc d                                         ; $6b69: $9a
    sbc c                                         ; $6b6a: $99
    sbc d                                         ; $6b6b: $9a
    xor d                                         ; $6b6c: $aa
    xor e                                         ; $6b6d: $ab
    xor d                                         ; $6b6e: $aa
    sbc b                                         ; $6b6f: $98
    sbc d                                         ; $6b70: $9a
    sbc d                                         ; $6b71: $9a
    sbc c                                         ; $6b72: $99
    adc c                                         ; $6b73: $89
    sbc b                                         ; $6b74: $98
    adc c                                         ; $6b75: $89
    adc c                                         ; $6b76: $89
    sbc c                                         ; $6b77: $99
    sbc c                                         ; $6b78: $99
    sbc c                                         ; $6b79: $99
    adc d                                         ; $6b7a: $8a
    adc d                                         ; $6b7b: $8a
    sbc c                                         ; $6b7c: $99
    sbc c                                         ; $6b7d: $99
    xor c                                         ; $6b7e: $a9
    sbc c                                         ; $6b7f: $99
    adc b                                         ; $6b80: $88
    adc b                                         ; $6b81: $88
    adc b                                         ; $6b82: $88
    add a                                         ; $6b83: $87
    ld [hl], a                                    ; $6b84: $77
    ld h, l                                       ; $6b85: $65
    ld [hl], a                                    ; $6b86: $77
    ld [hl], a                                    ; $6b87: $77
    halt                                          ; $6b88: $76
    ld h, l                                       ; $6b89: $65
    ld d, [hl]                                    ; $6b8a: $56
    ld d, [hl]                                    ; $6b8b: $56
    ld h, [hl]                                    ; $6b8c: $66
    halt                                          ; $6b8d: $76
    ld h, a                                       ; $6b8e: $67
    ld [hl], a                                    ; $6b8f: $77
    add a                                         ; $6b90: $87
    adc b                                         ; $6b91: $88
    adc b                                         ; $6b92: $88
    adc b                                         ; $6b93: $88
    add a                                         ; $6b94: $87
    ld [hl], a                                    ; $6b95: $77
    ld [hl], a                                    ; $6b96: $77
    ld [hl], a                                    ; $6b97: $77
    halt                                          ; $6b98: $76
    ld h, [hl]                                    ; $6b99: $66
    ld d, [hl]                                    ; $6b9a: $56
    ld h, l                                       ; $6b9b: $65
    ld d, [hl]                                    ; $6b9c: $56
    ld d, l                                       ; $6b9d: $55
    ld d, l                                       ; $6b9e: $55
    ld d, l                                       ; $6b9f: $55
    ld d, l                                       ; $6ba0: $55
    ld d, l                                       ; $6ba1: $55
    ld b, [hl]                                    ; $6ba2: $46
    ld d, [hl]                                    ; $6ba3: $56
    ld h, [hl]                                    ; $6ba4: $66
    ld h, a                                       ; $6ba5: $67
    ld h, [hl]                                    ; $6ba6: $66
    adc b                                         ; $6ba7: $88
    adc d                                         ; $6ba8: $8a
    sbc d                                         ; $6ba9: $9a
    xor d                                         ; $6baa: $aa
    xor d                                         ; $6bab: $aa
    sbc c                                         ; $6bac: $99
    sbc b                                         ; $6bad: $98
    sbc c                                         ; $6bae: $99
    adc b                                         ; $6baf: $88
    adc b                                         ; $6bb0: $88
    adc b                                         ; $6bb1: $88
    add a                                         ; $6bb2: $87
    add a                                         ; $6bb3: $87
    ld h, [hl]                                    ; $6bb4: $66
    ld [hl], a                                    ; $6bb5: $77
    halt                                          ; $6bb6: $76
    ld h, a                                       ; $6bb7: $67
    ld [hl], a                                    ; $6bb8: $77
    add a                                         ; $6bb9: $87
    adc c                                         ; $6bba: $89
    adc b                                         ; $6bbb: $88
    adc d                                         ; $6bbc: $8a
    cp d                                          ; $6bbd: $ba
    xor d                                         ; $6bbe: $aa
    sbc b                                         ; $6bbf: $98
    sbc c                                         ; $6bc0: $99
    adc c                                         ; $6bc1: $89
    sbc c                                         ; $6bc2: $99
    xor d                                         ; $6bc3: $aa
    sbc c                                         ; $6bc4: $99
    xor d                                         ; $6bc5: $aa
    sbc c                                         ; $6bc6: $99
    adc b                                         ; $6bc7: $88
    add a                                         ; $6bc8: $87
    ld [hl], a                                    ; $6bc9: $77
    ld h, a                                       ; $6bca: $67
    ld [hl], a                                    ; $6bcb: $77
    adc b                                         ; $6bcc: $88
    ld [hl], a                                    ; $6bcd: $77
    add a                                         ; $6bce: $87
    halt                                          ; $6bcf: $76
    ld h, [hl]                                    ; $6bd0: $66
    ld h, [hl]                                    ; $6bd1: $66
    ld h, h                                       ; $6bd2: $64
    ld d, l                                       ; $6bd3: $55
    ld b, h                                       ; $6bd4: $44
    ld d, h                                       ; $6bd5: $54
    ld b, h                                       ; $6bd6: $44
    ld b, h                                       ; $6bd7: $44
    ld b, h                                       ; $6bd8: $44
    ld d, l                                       ; $6bd9: $55
    ld h, a                                       ; $6bda: $67
    ld h, a                                       ; $6bdb: $67
    halt                                          ; $6bdc: $76
    halt                                          ; $6bdd: $76
    ld [hl], a                                    ; $6bde: $77
    ld [hl], a                                    ; $6bdf: $77
    adc b                                         ; $6be0: $88
    adc c                                         ; $6be1: $89
    sbc c                                         ; $6be2: $99
    adc b                                         ; $6be3: $88
    adc b                                         ; $6be4: $88
    adc b                                         ; $6be5: $88
    adc b                                         ; $6be6: $88
    adc b                                         ; $6be7: $88
    ld [hl], a                                    ; $6be8: $77
    ld [hl], a                                    ; $6be9: $77
    ld [hl], a                                    ; $6bea: $77
    ld [hl], a                                    ; $6beb: $77
    ld [hl], a                                    ; $6bec: $77
    ld [hl], a                                    ; $6bed: $77
    ld [hl], a                                    ; $6bee: $77
    ld [hl], a                                    ; $6bef: $77
    add a                                         ; $6bf0: $87
    ld [hl], a                                    ; $6bf1: $77
    halt                                          ; $6bf2: $76
    ld [hl], a                                    ; $6bf3: $77
    add a                                         ; $6bf4: $87
    ld [hl], a                                    ; $6bf5: $77
    ld a, b                                       ; $6bf6: $78
    ld [hl], a                                    ; $6bf7: $77
    ld [hl], a                                    ; $6bf8: $77
    ld [hl], a                                    ; $6bf9: $77
    ld a, b                                       ; $6bfa: $78
    adc b                                         ; $6bfb: $88
    adc b                                         ; $6bfc: $88
    adc b                                         ; $6bfd: $88
    adc b                                         ; $6bfe: $88
    adc c                                         ; $6bff: $89
    sbc c                                         ; $6c00: $99
    xor d                                         ; $6c01: $aa
    cp h                                          ; $6c02: $bc
    call z, $bacb                                 ; $6c03: $cc $cb $ba
    xor d                                         ; $6c06: $aa
    xor d                                         ; $6c07: $aa
    xor e                                         ; $6c08: $ab
    cp d                                          ; $6c09: $ba
    xor d                                         ; $6c0a: $aa
    xor c                                         ; $6c0b: $a9
    sbc c                                         ; $6c0c: $99
    sbc b                                         ; $6c0d: $98
    adc b                                         ; $6c0e: $88
    adc b                                         ; $6c0f: $88
    adc b                                         ; $6c10: $88
    adc b                                         ; $6c11: $88
    ld [hl], a                                    ; $6c12: $77
    adc b                                         ; $6c13: $88
    add a                                         ; $6c14: $87
    ld h, a                                       ; $6c15: $67
    ld h, l                                       ; $6c16: $65
    ld h, [hl]                                    ; $6c17: $66
    ld d, l                                       ; $6c18: $55
    ld d, [hl]                                    ; $6c19: $56
    ld h, l                                       ; $6c1a: $65
    ld d, [hl]                                    ; $6c1b: $56
    ld h, [hl]                                    ; $6c1c: $66
    ld h, a                                       ; $6c1d: $67
    ld d, [hl]                                    ; $6c1e: $56
    ld b, l                                       ; $6c1f: $45
    ld d, h                                       ; $6c20: $54
    ld d, l                                       ; $6c21: $55
    ld d, l                                       ; $6c22: $55
    ld d, [hl]                                    ; $6c23: $56
    ld h, [hl]                                    ; $6c24: $66
    ld h, a                                       ; $6c25: $67
    ld [hl], a                                    ; $6c26: $77
    ld [hl], a                                    ; $6c27: $77
    ld a, b                                       ; $6c28: $78
    adc b                                         ; $6c29: $88
    sbc c                                         ; $6c2a: $99
    sbc e                                         ; $6c2b: $9b
    jp z, $bcaa                                   ; $6c2c: $ca $aa $bc

    cp d                                          ; $6c2f: $ba
    xor d                                         ; $6c30: $aa
    cp h                                          ; $6c31: $bc
    call c, $a9ba                                 ; $6c32: $dc $ba $a9
    cp d                                          ; $6c35: $ba
    sbc d                                         ; $6c36: $9a
    sbc c                                         ; $6c37: $99
    sbc b                                         ; $6c38: $98
    adc b                                         ; $6c39: $88
    ld a, b                                       ; $6c3a: $78
    ld [hl], a                                    ; $6c3b: $77
    ld [hl], a                                    ; $6c3c: $77
    halt                                          ; $6c3d: $76
    ld h, l                                       ; $6c3e: $65
    ld d, l                                       ; $6c3f: $55
    ld b, h                                       ; $6c40: $44
    ld d, h                                       ; $6c41: $54
    ld b, l                                       ; $6c42: $45
    ld d, l                                       ; $6c43: $55
    ld d, l                                       ; $6c44: $55
    ld d, l                                       ; $6c45: $55
    ld h, a                                       ; $6c46: $67
    adc b                                         ; $6c47: $88
    sbc b                                         ; $6c48: $98
    sbc b                                         ; $6c49: $98
    sbc b                                         ; $6c4a: $98
    adc b                                         ; $6c4b: $88
    adc b                                         ; $6c4c: $88
    adc b                                         ; $6c4d: $88
    ld [hl], a                                    ; $6c4e: $77
    ld [hl], a                                    ; $6c4f: $77
    ld h, [hl]                                    ; $6c50: $66
    ld h, [hl]                                    ; $6c51: $66
    ld h, [hl]                                    ; $6c52: $66
    ld h, l                                       ; $6c53: $65
    ld h, a                                       ; $6c54: $67
    ld b, e                                       ; $6c55: $43
    ld b, e                                       ; $6c56: $43
    ld b, h                                       ; $6c57: $44
    ld b, h                                       ; $6c58: $44
    ld b, h                                       ; $6c59: $44
    ld d, l                                       ; $6c5a: $55
    ld h, l                                       ; $6c5b: $65
    ld h, a                                       ; $6c5c: $67
    ld [hl], a                                    ; $6c5d: $77
    add a                                         ; $6c5e: $87
    adc b                                         ; $6c5f: $88
    sbc c                                         ; $6c60: $99
    adc b                                         ; $6c61: $88
    adc h                                         ; $6c62: $8c
    cp c                                          ; $6c63: $b9
    ret z                                         ; $6c64: $c8

    cp d                                          ; $6c65: $ba
    cp d                                          ; $6c66: $ba
    sbc d                                         ; $6c67: $9a
    xor d                                         ; $6c68: $aa
    cp e                                          ; $6c69: $bb
    xor c                                         ; $6c6a: $a9
    sbc d                                         ; $6c6b: $9a
    sbc c                                         ; $6c6c: $99
    ld [hl], a                                    ; $6c6d: $77
    sbc c                                         ; $6c6e: $99
    ld a, b                                       ; $6c6f: $78
    xor b                                         ; $6c70: $a8
    sbc b                                         ; $6c71: $98
    ld [hl], a                                    ; $6c72: $77
    ld a, b                                       ; $6c73: $78
    ld l, b                                       ; $6c74: $68
    ld a, b                                       ; $6c75: $78
    ld [hl], a                                    ; $6c76: $77
    add [hl]                                      ; $6c77: $86
    sub [hl]                                      ; $6c78: $96
    sub a                                         ; $6c79: $97
    ld [hl], a                                    ; $6c7a: $77
    ld d, [hl]                                    ; $6c7b: $56
    ld d, a                                       ; $6c7c: $57
    adc b                                         ; $6c7d: $88
    sub a                                         ; $6c7e: $97
    adc b                                         ; $6c7f: $88
    add [hl]                                      ; $6c80: $86
    ld h, [hl]                                    ; $6c81: $66
    ld h, [hl]                                    ; $6c82: $66
    ld [hl], a                                    ; $6c83: $77
    ld [hl], a                                    ; $6c84: $77
    add [hl]                                      ; $6c85: $86
    adc d                                         ; $6c86: $8a
    sbc d                                         ; $6c87: $9a
    xor e                                         ; $6c88: $ab
    cp c                                          ; $6c89: $b9
    sbc d                                         ; $6c8a: $9a
    adc c                                         ; $6c8b: $89
    adc b                                         ; $6c8c: $88
    ld a, b                                       ; $6c8d: $78
    ld a, b                                       ; $6c8e: $78
    add a                                         ; $6c8f: $87
    add a                                         ; $6c90: $87
    ld [hl], a                                    ; $6c91: $77
    ld h, a                                       ; $6c92: $67
    halt                                          ; $6c93: $76
    ld d, [hl]                                    ; $6c94: $56
    ld d, l                                       ; $6c95: $55
    ld h, [hl]                                    ; $6c96: $66
    ld d, h                                       ; $6c97: $54
    ld b, l                                       ; $6c98: $45
    ld b, l                                       ; $6c99: $45
    ld d, [hl]                                    ; $6c9a: $56
    ld h, [hl]                                    ; $6c9b: $66
    ld [hl], a                                    ; $6c9c: $77
    ld h, a                                       ; $6c9d: $67
    halt                                          ; $6c9e: $76
    ld h, [hl]                                    ; $6c9f: $66
    ld h, [hl]                                    ; $6ca0: $66
    ld d, l                                       ; $6ca1: $55
    ld d, h                                       ; $6ca2: $54
    ld d, [hl]                                    ; $6ca3: $56
    ld h, a                                       ; $6ca4: $67
    ld h, [hl]                                    ; $6ca5: $66
    ld [hl], a                                    ; $6ca6: $77
    adc b                                         ; $6ca7: $88
    adc b                                         ; $6ca8: $88
    adc b                                         ; $6ca9: $88
    adc b                                         ; $6caa: $88
    cp h                                          ; $6cab: $bc
    res 7, d                                      ; $6cac: $cb $ba
    cp e                                          ; $6cae: $bb
    xor d                                         ; $6caf: $aa
    xor d                                         ; $6cb0: $aa
    sbc c                                         ; $6cb1: $99
    adc b                                         ; $6cb2: $88
    ld a, b                                       ; $6cb3: $78
    sbc b                                         ; $6cb4: $98
    ld a, b                                       ; $6cb5: $78
    add a                                         ; $6cb6: $87
    ld h, a                                       ; $6cb7: $67
    ld [hl], a                                    ; $6cb8: $77
    ld a, b                                       ; $6cb9: $78
    add a                                         ; $6cba: $87
    adc c                                         ; $6cbb: $89
    adc b                                         ; $6cbc: $88
    adc c                                         ; $6cbd: $89
    sbc b                                         ; $6cbe: $98
    adc b                                         ; $6cbf: $88
    add a                                         ; $6cc0: $87
    ld [hl], a                                    ; $6cc1: $77
    halt                                          ; $6cc2: $76
    ld [hl], a                                    ; $6cc3: $77
    adc b                                         ; $6cc4: $88
    ld a, b                                       ; $6cc5: $78
    add a                                         ; $6cc6: $87
    ld [hl], a                                    ; $6cc7: $77
    add a                                         ; $6cc8: $87
    adc b                                         ; $6cc9: $88
    sub a                                         ; $6cca: $97
    adc c                                         ; $6ccb: $89
    xor d                                         ; $6ccc: $aa
    xor e                                         ; $6ccd: $ab
    cp e                                          ; $6cce: $bb
    xor d                                         ; $6ccf: $aa
    xor d                                         ; $6cd0: $aa
    sbc c                                         ; $6cd1: $99
    sbc b                                         ; $6cd2: $98
    adc b                                         ; $6cd3: $88
    ld [hl], a                                    ; $6cd4: $77
    ld [hl], a                                    ; $6cd5: $77
    ld [hl], a                                    ; $6cd6: $77
    halt                                          ; $6cd7: $76
    ld [hl], a                                    ; $6cd8: $77
    ld h, [hl]                                    ; $6cd9: $66
    ld d, l                                       ; $6cda: $55
    ld h, l                                       ; $6cdb: $65
    ld d, l                                       ; $6cdc: $55
    ld h, l                                       ; $6cdd: $65
    ld d, l                                       ; $6cde: $55
    ld h, [hl]                                    ; $6cdf: $66
    ld h, a                                       ; $6ce0: $67
    ld h, a                                       ; $6ce1: $67
    ld a, b                                       ; $6ce2: $78
    ld a, b                                       ; $6ce3: $78
    adc b                                         ; $6ce4: $88
    adc c                                         ; $6ce5: $89
    adc b                                         ; $6ce6: $88
    adc c                                         ; $6ce7: $89
    sbc c                                         ; $6ce8: $99
    sbc c                                         ; $6ce9: $99
    sbc d                                         ; $6cea: $9a
    sbc h                                         ; $6ceb: $9c
    cp h                                          ; $6cec: $bc
    xor e                                         ; $6ced: $ab
    cp e                                          ; $6cee: $bb
    sbc d                                         ; $6cef: $9a
    sbc b                                         ; $6cf0: $98
    sbc c                                         ; $6cf1: $99
    sbc c                                         ; $6cf2: $99
    sbc c                                         ; $6cf3: $99
    adc b                                         ; $6cf4: $88
    sbc b                                         ; $6cf5: $98
    add a                                         ; $6cf6: $87
    ld [hl], a                                    ; $6cf7: $77
    ld [hl], l                                    ; $6cf8: $75
    ld d, h                                       ; $6cf9: $54
    ld b, h                                       ; $6cfa: $44
    ld b, l                                       ; $6cfb: $45
    ld d, l                                       ; $6cfc: $55
    ld d, l                                       ; $6cfd: $55
    ld h, [hl]                                    ; $6cfe: $66
    ld h, [hl]                                    ; $6cff: $66
    ld d, [hl]                                    ; $6d00: $56
    ld d, l                                       ; $6d01: $55
    ld d, h                                       ; $6d02: $54
    ld d, l                                       ; $6d03: $55
    ld d, [hl]                                    ; $6d04: $56
    ld h, [hl]                                    ; $6d05: $66
    ld d, [hl]                                    ; $6d06: $56
    ld d, [hl]                                    ; $6d07: $56
    ld h, [hl]                                    ; $6d08: $66
    ld h, [hl]                                    ; $6d09: $66
    ld h, [hl]                                    ; $6d0a: $66
    ld h, [hl]                                    ; $6d0b: $66
    ld d, [hl]                                    ; $6d0c: $56
    ld h, [hl]                                    ; $6d0d: $66
    ld h, [hl]                                    ; $6d0e: $66
    ld h, [hl]                                    ; $6d0f: $66
    ld h, [hl]                                    ; $6d10: $66
    ld h, a                                       ; $6d11: $67
    ld h, [hl]                                    ; $6d12: $66
    halt                                          ; $6d13: $76
    ld d, l                                       ; $6d14: $55
    ld d, l                                       ; $6d15: $55
    ld d, [hl]                                    ; $6d16: $56
    ld a, b                                       ; $6d17: $78
    add a                                         ; $6d18: $87
    adc b                                         ; $6d19: $88
    add a                                         ; $6d1a: $87
    ld [hl], a                                    ; $6d1b: $77
    adc b                                         ; $6d1c: $88
    adc b                                         ; $6d1d: $88
    adc b                                         ; $6d1e: $88
    adc b                                         ; $6d1f: $88
    add a                                         ; $6d20: $87
    ld [hl], a                                    ; $6d21: $77
    ld h, [hl]                                    ; $6d22: $66
    ld h, a                                       ; $6d23: $67
    ld [hl], a                                    ; $6d24: $77
    ld [hl], a                                    ; $6d25: $77
    adc b                                         ; $6d26: $88
    adc c                                         ; $6d27: $89
    sbc d                                         ; $6d28: $9a
    xor d                                         ; $6d29: $aa
    xor d                                         ; $6d2a: $aa
    xor d                                         ; $6d2b: $aa
    sbc d                                         ; $6d2c: $9a
    sbc d                                         ; $6d2d: $9a
    sbc d                                         ; $6d2e: $9a
    cp e                                          ; $6d2f: $bb
    cp e                                          ; $6d30: $bb
    xor d                                         ; $6d31: $aa
    cp d                                          ; $6d32: $ba
    cp d                                          ; $6d33: $ba
    xor d                                         ; $6d34: $aa
    sbc c                                         ; $6d35: $99
    adc b                                         ; $6d36: $88
    adc b                                         ; $6d37: $88
    adc b                                         ; $6d38: $88
    adc c                                         ; $6d39: $89
    sbc c                                         ; $6d3a: $99
    xor e                                         ; $6d3b: $ab
    cp d                                          ; $6d3c: $ba
    adc c                                         ; $6d3d: $89
    sbc d                                         ; $6d3e: $9a
    xor b                                         ; $6d3f: $a8
    sbc c                                         ; $6d40: $99
    cp d                                          ; $6d41: $ba
    adc d                                         ; $6d42: $8a
    sbc h                                         ; $6d43: $9c
    xor l                                         ; $6d44: $ad
    xor e                                         ; $6d45: $ab
    ret                                           ; $6d46: $c9


    xor e                                         ; $6d47: $ab
    sbc c                                         ; $6d48: $99
    sbc c                                         ; $6d49: $99
    cp c                                          ; $6d4a: $b9
    sbc b                                         ; $6d4b: $98
    adc b                                         ; $6d4c: $88
    sbc b                                         ; $6d4d: $98
    ld h, [hl]                                    ; $6d4e: $66
    ld h, [hl]                                    ; $6d4f: $66
    ld h, [hl]                                    ; $6d50: $66
    ld d, l                                       ; $6d51: $55
    ld d, [hl]                                    ; $6d52: $56
    ld b, l                                       ; $6d53: $45
    ld h, [hl]                                    ; $6d54: $66
    ld [hl], a                                    ; $6d55: $77
    ld a, b                                       ; $6d56: $78
    add a                                         ; $6d57: $87
    halt                                          ; $6d58: $76
    ld [hl], a                                    ; $6d59: $77
    ld [hl], l                                    ; $6d5a: $75
    ld h, [hl]                                    ; $6d5b: $66
    ld h, l                                       ; $6d5c: $65
    ld d, h                                       ; $6d5d: $54
    ld d, l                                       ; $6d5e: $55
    ld d, [hl]                                    ; $6d5f: $56
    ld h, [hl]                                    ; $6d60: $66
    ld [hl], a                                    ; $6d61: $77
    ld h, l                                       ; $6d62: $65
    ld h, [hl]                                    ; $6d63: $66
    ld h, a                                       ; $6d64: $67
    ld h, [hl]                                    ; $6d65: $66
    add a                                         ; $6d66: $87
    ld h, [hl]                                    ; $6d67: $66
    ld h, a                                       ; $6d68: $67
    ld h, [hl]                                    ; $6d69: $66
    ld h, a                                       ; $6d6a: $67
    halt                                          ; $6d6b: $76
    ld h, a                                       ; $6d6c: $67
    ld h, [hl]                                    ; $6d6d: $66
    ld h, [hl]                                    ; $6d6e: $66
    ld h, [hl]                                    ; $6d6f: $66
    ld d, [hl]                                    ; $6d70: $56
    ld b, h                                       ; $6d71: $44
    ld h, l                                       ; $6d72: $65
    ld b, h                                       ; $6d73: $44
    ld b, h                                       ; $6d74: $44
    inc sp                                        ; $6d75: $33
    ld [hl-], a                                   ; $6d76: $32
    ld b, l                                       ; $6d77: $45
    ld h, [hl]                                    ; $6d78: $66
    ld h, [hl]                                    ; $6d79: $66
    ld d, l                                       ; $6d7a: $55
    ld d, h                                       ; $6d7b: $54
    ld d, l                                       ; $6d7c: $55
    ld b, [hl]                                    ; $6d7d: $46
    ld [hl], a                                    ; $6d7e: $77
    ld h, a                                       ; $6d7f: $67
    adc c                                         ; $6d80: $89
    sbc c                                         ; $6d81: $99
    xor d                                         ; $6d82: $aa
    cp c                                          ; $6d83: $b9
    sbc c                                         ; $6d84: $99
    call z, $abb9                                 ; $6d85: $cc $b9 $ab
    sbc c                                         ; $6d88: $99
    adc b                                         ; $6d89: $88
    ld a, b                                       ; $6d8a: $78
    add a                                         ; $6d8b: $87
    ld a, b                                       ; $6d8c: $78
    sbc b                                         ; $6d8d: $98
    adc c                                         ; $6d8e: $89
    sbc b                                         ; $6d8f: $98
    xor d                                         ; $6d90: $aa
    adc b                                         ; $6d91: $88
    sub a                                         ; $6d92: $97
    ld [hl], a                                    ; $6d93: $77
    add [hl]                                      ; $6d94: $86
    ld a, b                                       ; $6d95: $78
    ld h, a                                       ; $6d96: $67
    add a                                         ; $6d97: $87
    ld a, b                                       ; $6d98: $78
    add [hl]                                      ; $6d99: $86
    cp d                                          ; $6d9a: $ba
    cp l                                          ; $6d9b: $bd
    call z, $cbac                                 ; $6d9c: $cc $ac $cb
    cp c                                          ; $6d9f: $b9
    xor e                                         ; $6da0: $ab
    set 1, h                                      ; $6da1: $cb $cc
    cp h                                          ; $6da3: $bc
    call z, $babb                                 ; $6da4: $cc $bb $ba
    xor d                                         ; $6da7: $aa
    sbc c                                         ; $6da8: $99
    sbc c                                         ; $6da9: $99
    sbc b                                         ; $6daa: $98
    adc b                                         ; $6dab: $88
    add a                                         ; $6dac: $87
    halt                                          ; $6dad: $76
    halt                                          ; $6dae: $76
    ld h, [hl]                                    ; $6daf: $66
    ld d, l                                       ; $6db0: $55
    ld b, h                                       ; $6db1: $44
    ld b, h                                       ; $6db2: $44
    ld b, h                                       ; $6db3: $44
    ld b, h                                       ; $6db4: $44
    ld b, h                                       ; $6db5: $44
    ld b, h                                       ; $6db6: $44
    dec [hl]                                      ; $6db7: $35
    ld h, [hl]                                    ; $6db8: $66
    halt                                          ; $6db9: $76
    ld h, [hl]                                    ; $6dba: $66
    ld h, a                                       ; $6dbb: $67
    ld h, [hl]                                    ; $6dbc: $66
    ld d, [hl]                                    ; $6dbd: $56
    ld b, [hl]                                    ; $6dbe: $46
    halt                                          ; $6dbf: $76
    add a                                         ; $6dc0: $87
    ld [hl], a                                    ; $6dc1: $77
    ld a, b                                       ; $6dc2: $78
    ld [hl], a                                    ; $6dc3: $77
    adc b                                         ; $6dc4: $88
    adc b                                         ; $6dc5: $88
    adc b                                         ; $6dc6: $88
    ld [hl], a                                    ; $6dc7: $77
    ld [hl], a                                    ; $6dc8: $77
    halt                                          ; $6dc9: $76
    ld [hl], a                                    ; $6dca: $77
    halt                                          ; $6dcb: $76
    halt                                          ; $6dcc: $76
    ld h, a                                       ; $6dcd: $67
    halt                                          ; $6dce: $76
    ld d, l                                       ; $6dcf: $55
    ld d, [hl]                                    ; $6dd0: $56
    ld d, l                                       ; $6dd1: $55
    ld d, [hl]                                    ; $6dd2: $56
    ld h, a                                       ; $6dd3: $67
    ld [hl], a                                    ; $6dd4: $77
    ld [hl], a                                    ; $6dd5: $77
    adc b                                         ; $6dd6: $88
    sbc d                                         ; $6dd7: $9a
    xor e                                         ; $6dd8: $ab
    xor l                                         ; $6dd9: $ad
    xor d                                         ; $6dda: $aa
    cp e                                          ; $6ddb: $bb
    xor d                                         ; $6ddc: $aa
    res 7, h                                      ; $6ddd: $cb $bc
    xor d                                         ; $6ddf: $aa
    cp e                                          ; $6de0: $bb
    xor d                                         ; $6de1: $aa
    sbc c                                         ; $6de2: $99
    adc c                                         ; $6de3: $89
    sbc b                                         ; $6de4: $98
    xor d                                         ; $6de5: $aa
    cp c                                          ; $6de6: $b9
    xor c                                         ; $6de7: $a9
    sub a                                         ; $6de8: $97
    ld [hl], l                                    ; $6de9: $75
    ld d, l                                       ; $6dea: $55
    ld b, l                                       ; $6deb: $45
    ld d, l                                       ; $6dec: $55
    ld b, l                                       ; $6ded: $45
    ld h, [hl]                                    ; $6dee: $66
    ld h, [hl]                                    ; $6def: $66
    ld d, [hl]                                    ; $6df0: $56
    ld [hl], a                                    ; $6df1: $77
    ld [hl], a                                    ; $6df2: $77
    adc b                                         ; $6df3: $88
    adc b                                         ; $6df4: $88
    sbc d                                         ; $6df5: $9a
    xor c                                         ; $6df6: $a9
    sbc l                                         ; $6df7: $9d
    db $ec                                        ; $6df8: $ec
    db $db                                        ; $6df9: $db
    xor c                                         ; $6dfa: $a9
    jp z, $bcbb                                   ; $6dfb: $ca $bb $bc

    cp d                                          ; $6dfe: $ba
    cp d                                          ; $6dff: $ba
    sbc d                                         ; $6e00: $9a
    sub a                                         ; $6e01: $97
    sbc b                                         ; $6e02: $98
    halt                                          ; $6e03: $76
    ld h, l                                       ; $6e04: $65
    inc [hl]                                      ; $6e05: $34
    ld b, [hl]                                    ; $6e06: $46
    ld h, l                                       ; $6e07: $65
    ld b, h                                       ; $6e08: $44
    ld d, l                                       ; $6e09: $55
    ld b, l                                       ; $6e0a: $45
    ld d, l                                       ; $6e0b: $55
    ld d, [hl]                                    ; $6e0c: $56
    ld h, a                                       ; $6e0d: $67
    halt                                          ; $6e0e: $76
    ld h, a                                       ; $6e0f: $67
    ld h, a                                       ; $6e10: $67
    sub a                                         ; $6e11: $97
    add a                                         ; $6e12: $87
    ld a, c                                       ; $6e13: $79
    adc c                                         ; $6e14: $89
    sbc c                                         ; $6e15: $99
    adc b                                         ; $6e16: $88
    sbc c                                         ; $6e17: $99
    adc b                                         ; $6e18: $88
    adc c                                         ; $6e19: $89
    sub a                                         ; $6e1a: $97
    ld [hl], a                                    ; $6e1b: $77
    ld h, a                                       ; $6e1c: $67
    ld [hl], a                                    ; $6e1d: $77
    ld [hl], a                                    ; $6e1e: $77
    ld h, a                                       ; $6e1f: $67
    add [hl]                                      ; $6e20: $86
    adc c                                         ; $6e21: $89
    adc b                                         ; $6e22: $88
    adc c                                         ; $6e23: $89
    adc b                                         ; $6e24: $88
    ld [hl], a                                    ; $6e25: $77
    ld [hl], a                                    ; $6e26: $77
    ld [hl], l                                    ; $6e27: $75
    ld h, l                                       ; $6e28: $65
    ld d, l                                       ; $6e29: $55
    ld b, h                                       ; $6e2a: $44
    ld b, h                                       ; $6e2b: $44
    ld b, e                                       ; $6e2c: $43
    inc sp                                        ; $6e2d: $33
    ld [hl+], a                                   ; $6e2e: $22
    ld [hl+], a                                   ; $6e2f: $22
    inc sp                                        ; $6e30: $33
    inc sp                                        ; $6e31: $33
    inc hl                                        ; $6e32: $23
    inc sp                                        ; $6e33: $33
    ld b, e                                       ; $6e34: $43
    inc [hl]                                      ; $6e35: $34
    ld b, l                                       ; $6e36: $45
    ld d, [hl]                                    ; $6e37: $56
    ld h, a                                       ; $6e38: $67
    adc b                                         ; $6e39: $88
    sbc c                                         ; $6e3a: $99
    sbc c                                         ; $6e3b: $99
    xor c                                         ; $6e3c: $a9
    xor c                                         ; $6e3d: $a9
    xor d                                         ; $6e3e: $aa
    sbc c                                         ; $6e3f: $99
    sbc c                                         ; $6e40: $99
    sbc c                                         ; $6e41: $99
    sbc c                                         ; $6e42: $99
    sbc c                                         ; $6e43: $99
    sbc c                                         ; $6e44: $99
    sbc c                                         ; $6e45: $99
    xor b                                         ; $6e46: $a8
    adc c                                         ; $6e47: $89
    sbc c                                         ; $6e48: $99
    adc b                                         ; $6e49: $88
    adc b                                         ; $6e4a: $88
    adc b                                         ; $6e4b: $88
    ld a, b                                       ; $6e4c: $78
    ld [hl], a                                    ; $6e4d: $77
    adc b                                         ; $6e4e: $88
    sbc c                                         ; $6e4f: $99
    sbc c                                         ; $6e50: $99
    xor c                                         ; $6e51: $a9
    cp e                                          ; $6e52: $bb
    cp e                                          ; $6e53: $bb
    xor e                                         ; $6e54: $ab
    cp e                                          ; $6e55: $bb
    cp h                                          ; $6e56: $bc
    db $dd                                        ; $6e57: $dd
    call z, $cccc                                 ; $6e58: $cc $cc $cc
    cp e                                          ; $6e5b: $bb
    xor d                                         ; $6e5c: $aa
    sbc c                                         ; $6e5d: $99
    ld [hl], a                                    ; $6e5e: $77
    ld [hl], l                                    ; $6e5f: $75
    ld l, c                                       ; $6e60: $69
    ld [hl], h                                    ; $6e61: $74
    ld d, l                                       ; $6e62: $55
    halt                                          ; $6e63: $76
    ld h, l                                       ; $6e64: $65
    ld [hl], a                                    ; $6e65: $77
    ld h, a                                       ; $6e66: $67
    ld [hl], a                                    ; $6e67: $77
    ld h, [hl]                                    ; $6e68: $66
    ld [hl], a                                    ; $6e69: $77
    ld h, [hl]                                    ; $6e6a: $66
    ld l, b                                       ; $6e6b: $68
    adc b                                         ; $6e6c: $88
    adc b                                         ; $6e6d: $88
    adc b                                         ; $6e6e: $88
    ld a, d                                       ; $6e6f: $7a
    xor b                                         ; $6e70: $a8
    sbc d                                         ; $6e71: $9a
    sbc d                                         ; $6e72: $9a
    cp h                                          ; $6e73: $bc
    db $db                                        ; $6e74: $db
    cp e                                          ; $6e75: $bb
    cp e                                          ; $6e76: $bb
    cp e                                          ; $6e77: $bb
    res 5, d                                      ; $6e78: $cb $aa
    xor d                                         ; $6e7a: $aa
    sbc b                                         ; $6e7b: $98
    add a                                         ; $6e7c: $87
    halt                                          ; $6e7d: $76
    ld d, l                                       ; $6e7e: $55
    ld b, h                                       ; $6e7f: $44
    inc [hl]                                      ; $6e80: $34
    ld [hl-], a                                   ; $6e81: $32
    inc hl                                        ; $6e82: $23
    inc [hl]                                      ; $6e83: $34
    ld b, h                                       ; $6e84: $44
    ld d, a                                       ; $6e85: $57
    adc b                                         ; $6e86: $88
    adc c                                         ; $6e87: $89
    sbc c                                         ; $6e88: $99
    sbc c                                         ; $6e89: $99
    sbc b                                         ; $6e8a: $98
    adc b                                         ; $6e8b: $88
    add [hl]                                      ; $6e8c: $86
    ld [hl], a                                    ; $6e8d: $77
    halt                                          ; $6e8e: $76
    ld [hl], a                                    ; $6e8f: $77
    ld h, a                                       ; $6e90: $67
    halt                                          ; $6e91: $76
    halt                                          ; $6e92: $76
    ld d, l                                       ; $6e93: $55
    ld b, l                                       ; $6e94: $45
    ld b, l                                       ; $6e95: $45
    ld d, [hl]                                    ; $6e96: $56
    ld h, [hl]                                    ; $6e97: $66
    ld h, [hl]                                    ; $6e98: $66
    ld h, [hl]                                    ; $6e99: $66
    ld h, [hl]                                    ; $6e9a: $66
    ld d, l                                       ; $6e9b: $55
    ld d, l                                       ; $6e9c: $55
    ld b, h                                       ; $6e9d: $44
    ld b, e                                       ; $6e9e: $43
    inc sp                                        ; $6e9f: $33
    inc hl                                        ; $6ea0: $23
    inc [hl]                                      ; $6ea1: $34
    ld b, h                                       ; $6ea2: $44
    inc sp                                        ; $6ea3: $33
    ld b, h                                       ; $6ea4: $44
    ld d, [hl]                                    ; $6ea5: $56
    ld d, [hl]                                    ; $6ea6: $56
    ld h, a                                       ; $6ea7: $67
    ld h, [hl]                                    ; $6ea8: $66
    ld [hl], a                                    ; $6ea9: $77
    halt                                          ; $6eaa: $76
    ld h, a                                       ; $6eab: $67
    add a                                         ; $6eac: $87
    ld a, b                                       ; $6ead: $78
    add a                                         ; $6eae: $87
    adc b                                         ; $6eaf: $88
    adc c                                         ; $6eb0: $89
    sbc c                                         ; $6eb1: $99
    sbc d                                         ; $6eb2: $9a
    sbc c                                         ; $6eb3: $99
    xor d                                         ; $6eb4: $aa
    sbc d                                         ; $6eb5: $9a
    xor e                                         ; $6eb6: $ab
    xor e                                         ; $6eb7: $ab
    xor e                                         ; $6eb8: $ab
    cp e                                          ; $6eb9: $bb
    adc $dd                                       ; $6eba: $ce $dd
    call z, $edce                                 ; $6ebc: $cc $ce $ed
    db $dd                                        ; $6ebf: $dd
    db $db                                        ; $6ec0: $db
    cp h                                          ; $6ec1: $bc
    cp d                                          ; $6ec2: $ba
    cp d                                          ; $6ec3: $ba
    halt                                          ; $6ec4: $76
    sbc b                                         ; $6ec5: $98
    adc c                                         ; $6ec6: $89
    adc c                                         ; $6ec7: $89
    adc b                                         ; $6ec8: $88
    sbc b                                         ; $6ec9: $98
    ld [hl], a                                    ; $6eca: $77
    adc b                                         ; $6ecb: $88
    add a                                         ; $6ecc: $87
    ld [hl], a                                    ; $6ecd: $77
    halt                                          ; $6ece: $76
    ld h, l                                       ; $6ecf: $65
    ld h, l                                       ; $6ed0: $65
    ld d, l                                       ; $6ed1: $55
    ld d, l                                       ; $6ed2: $55
    ld d, l                                       ; $6ed3: $55
    ld d, l                                       ; $6ed4: $55
    ld h, [hl]                                    ; $6ed5: $66
    ld [hl], a                                    ; $6ed6: $77
    ld [hl], a                                    ; $6ed7: $77
    ld [hl], a                                    ; $6ed8: $77
    adc b                                         ; $6ed9: $88
    add a                                         ; $6eda: $87
    ld h, a                                       ; $6edb: $67
    halt                                          ; $6edc: $76
    ld h, [hl]                                    ; $6edd: $66
    halt                                          ; $6ede: $76
    halt                                          ; $6edf: $76
    ld h, l                                       ; $6ee0: $65
    ld h, h                                       ; $6ee1: $64
    ld h, h                                       ; $6ee2: $64
    ld b, l                                       ; $6ee3: $45
    ld h, l                                       ; $6ee4: $65
    ld h, [hl]                                    ; $6ee5: $66
    ld [hl], a                                    ; $6ee6: $77
    ld a, b                                       ; $6ee7: $78
    adc b                                         ; $6ee8: $88
    adc c                                         ; $6ee9: $89
    adc b                                         ; $6eea: $88
    sbc b                                         ; $6eeb: $98
    adc c                                         ; $6eec: $89
    add a                                         ; $6eed: $87
    ld a, b                                       ; $6eee: $78
    ld [hl], a                                    ; $6eef: $77
    ld h, a                                       ; $6ef0: $67
    ld h, [hl]                                    ; $6ef1: $66
    ld h, [hl]                                    ; $6ef2: $66
    ld h, [hl]                                    ; $6ef3: $66
    ld a, b                                       ; $6ef4: $78
    ld a, b                                       ; $6ef5: $78
    sbc c                                         ; $6ef6: $99
    adc b                                         ; $6ef7: $88
    adc b                                         ; $6ef8: $88
    halt                                          ; $6ef9: $76
    halt                                          ; $6efa: $76
    ld [hl], a                                    ; $6efb: $77
    halt                                          ; $6efc: $76
    ld [hl], a                                    ; $6efd: $77
    ld [hl], a                                    ; $6efe: $77
    ld a, b                                       ; $6eff: $78
    adc c                                         ; $6f00: $89
    sbc c                                         ; $6f01: $99
    adc c                                         ; $6f02: $89
    adc b                                         ; $6f03: $88
    sbc c                                         ; $6f04: $99
    sbc b                                         ; $6f05: $98
    adc c                                         ; $6f06: $89
    sbc d                                         ; $6f07: $9a
    xor e                                         ; $6f08: $ab
    cp h                                          ; $6f09: $bc
    call z, $bbcc                                 ; $6f0a: $cc $cc $bb
    set 1, e                                      ; $6f0d: $cb $cb
    cp h                                          ; $6f0f: $bc
    res 7, e                                      ; $6f10: $cb $bb
    xor c                                         ; $6f12: $a9
    sbc b                                         ; $6f13: $98
    xor c                                         ; $6f14: $a9
    ld [hl], a                                    ; $6f15: $77
    ld h, [hl]                                    ; $6f16: $66
    ld h, [hl]                                    ; $6f17: $66
    ld h, l                                       ; $6f18: $65
    ld h, l                                       ; $6f19: $65
    ld b, h                                       ; $6f1a: $44
    inc sp                                        ; $6f1b: $33
    ld b, h                                       ; $6f1c: $44
    inc sp                                        ; $6f1d: $33
    ld b, h                                       ; $6f1e: $44
    ld d, [hl]                                    ; $6f1f: $56
    ld b, [hl]                                    ; $6f20: $46
    ld a, c                                       ; $6f21: $79
    ld [hl], a                                    ; $6f22: $77
    adc c                                         ; $6f23: $89
    xor d                                         ; $6f24: $aa
    cp b                                          ; $6f25: $b8
    sbc c                                         ; $6f26: $99
    sbc d                                         ; $6f27: $9a
    xor e                                         ; $6f28: $ab
    cp h                                          ; $6f29: $bc
    cp d                                          ; $6f2a: $ba
    sbc c                                         ; $6f2b: $99
    sbc c                                         ; $6f2c: $99
    sbc b                                         ; $6f2d: $98
    ld a, b                                       ; $6f2e: $78
    ld h, [hl]                                    ; $6f2f: $66
    ld h, l                                       ; $6f30: $65
    ld d, l                                       ; $6f31: $55
    ld d, h                                       ; $6f32: $54
    ld b, h                                       ; $6f33: $44
    inc sp                                        ; $6f34: $33
    ld [hl-], a                                   ; $6f35: $32
    ld [hl+], a                                   ; $6f36: $22
    ld hl, $2202                                  ; $6f37: $21 $02 $22
    inc sp                                        ; $6f3a: $33
    ld [hl-], a                                   ; $6f3b: $32
    inc sp                                        ; $6f3c: $33
    inc sp                                        ; $6f3d: $33
    ld b, h                                       ; $6f3e: $44
    ld b, h                                       ; $6f3f: $44
    ld b, l                                       ; $6f40: $45
    ld h, [hl]                                    ; $6f41: $66
    ld h, [hl]                                    ; $6f42: $66
    ld h, [hl]                                    ; $6f43: $66
    ld h, [hl]                                    ; $6f44: $66
    ld a, b                                       ; $6f45: $78
    ld a, b                                       ; $6f46: $78
    sbc c                                         ; $6f47: $99
    sbc c                                         ; $6f48: $99
    xor d                                         ; $6f49: $aa
    xor d                                         ; $6f4a: $aa
    cp h                                          ; $6f4b: $bc
    cp h                                          ; $6f4c: $bc
    cp e                                          ; $6f4d: $bb
    cp e                                          ; $6f4e: $bb
    cp d                                          ; $6f4f: $ba
    cp e                                          ; $6f50: $bb
    cp h                                          ; $6f51: $bc
    call z, $ccbc                                 ; $6f52: $cc $bc $cc
    cp e                                          ; $6f55: $bb
    cp d                                          ; $6f56: $ba
    cp e                                          ; $6f57: $bb
    call z, $ddcd                                 ; $6f58: $cc $cd $dd
    db $ec                                        ; $6f5b: $ec
    call z, $bccc                                 ; $6f5c: $cc $cc $bc
    cp d                                          ; $6f5f: $ba
    cp e                                          ; $6f60: $bb
    cp d                                          ; $6f61: $ba
    xor d                                         ; $6f62: $aa
    sbc b                                         ; $6f63: $98
    ld [hl], a                                    ; $6f64: $77
    ld h, l                                       ; $6f65: $65
    ld b, h                                       ; $6f66: $44
    ld b, l                                       ; $6f67: $45
    ld b, h                                       ; $6f68: $44
    ld b, h                                       ; $6f69: $44
    ld b, h                                       ; $6f6a: $44
    inc sp                                        ; $6f6b: $33
    inc hl                                        ; $6f6c: $23
    inc sp                                        ; $6f6d: $33
    inc sp                                        ; $6f6e: $33
    ld b, h                                       ; $6f6f: $44
    ld b, h                                       ; $6f70: $44
    ld d, h                                       ; $6f71: $54
    ld d, [hl]                                    ; $6f72: $56
    ld h, [hl]                                    ; $6f73: $66
    ld h, a                                       ; $6f74: $67
    adc b                                         ; $6f75: $88
    sbc c                                         ; $6f76: $99
    sbc d                                         ; $6f77: $9a
    cp d                                          ; $6f78: $ba
    sbc d                                         ; $6f79: $9a
    sbc d                                         ; $6f7a: $9a
    cp d                                          ; $6f7b: $ba
    xor d                                         ; $6f7c: $aa
    xor d                                         ; $6f7d: $aa
    xor c                                         ; $6f7e: $a9
    sbc c                                         ; $6f7f: $99
    xor c                                         ; $6f80: $a9
    adc b                                         ; $6f81: $88
    add a                                         ; $6f82: $87
    ld [hl], a                                    ; $6f83: $77
    ld h, a                                       ; $6f84: $67
    ld h, [hl]                                    ; $6f85: $66
    ld h, [hl]                                    ; $6f86: $66
    ld d, h                                       ; $6f87: $54
    inc sp                                        ; $6f88: $33
    inc hl                                        ; $6f89: $23
    ld [hl-], a                                   ; $6f8a: $32
    ld de, $1212                                  ; $6f8b: $11 $12 $12
    inc hl                                        ; $6f8e: $23
    inc [hl]                                      ; $6f8f: $34
    ld d, [hl]                                    ; $6f90: $56
    ld h, [hl]                                    ; $6f91: $66
    halt                                          ; $6f92: $76
    ld a, c                                       ; $6f93: $79
    sbc b                                         ; $6f94: $98
    adc b                                         ; $6f95: $88
    sbc c                                         ; $6f96: $99
    sub [hl]                                      ; $6f97: $96
    add [hl]                                      ; $6f98: $86
    ld h, [hl]                                    ; $6f99: $66
    ld [hl], a                                    ; $6f9a: $77
    ld a, b                                       ; $6f9b: $78
    sbc d                                         ; $6f9c: $9a
    cp e                                          ; $6f9d: $bb
    cp e                                          ; $6f9e: $bb
    jp z, $a98b                                   ; $6f9f: $ca $8b $a9

    ld a, b                                       ; $6fa2: $78
    sbc d                                         ; $6fa3: $9a
    sbc d                                         ; $6fa4: $9a
    ld a, b                                       ; $6fa5: $78
    adc c                                         ; $6fa6: $89
    add a                                         ; $6fa7: $87
    halt                                          ; $6fa8: $76
    ld h, l                                       ; $6fa9: $65
    ld h, l                                       ; $6faa: $65
    ld d, l                                       ; $6fab: $55
    ld [hl], a                                    ; $6fac: $77
    ld a, b                                       ; $6fad: $78
    ld [hl], a                                    ; $6fae: $77
    ld a, b                                       ; $6faf: $78
    sbc e                                         ; $6fb0: $9b
    adc c                                         ; $6fb1: $89
    xor d                                         ; $6fb2: $aa
    sbc d                                         ; $6fb3: $9a
    xor c                                         ; $6fb4: $a9
    add a                                         ; $6fb5: $87
    adc b                                         ; $6fb6: $88
    adc b                                         ; $6fb7: $88
    adc c                                         ; $6fb8: $89
    sbc b                                         ; $6fb9: $98
    adc c                                         ; $6fba: $89
    adc b                                         ; $6fbb: $88
    sbc c                                         ; $6fbc: $99
    sbc c                                         ; $6fbd: $99
    xor e                                         ; $6fbe: $ab
    set 1, l                                      ; $6fbf: $cb $cd
    sbc $ed                                       ; $6fc1: $de $ed
    db $dd                                        ; $6fc3: $dd
    res 7, e                                      ; $6fc4: $cb $bb
    xor d                                         ; $6fc6: $aa
    and [hl]                                      ; $6fc7: $a6
    sub a                                         ; $6fc8: $97
    ld [hl], a                                    ; $6fc9: $77
    add a                                         ; $6fca: $87
    ld [hl], a                                    ; $6fcb: $77
    ld h, a                                       ; $6fcc: $67
    ld [hl], a                                    ; $6fcd: $77
    ld [hl], a                                    ; $6fce: $77
    ld [hl], a                                    ; $6fcf: $77
    add a                                         ; $6fd0: $87
    ld h, [hl]                                    ; $6fd1: $66
    ld l, b                                       ; $6fd2: $68
    add a                                         ; $6fd3: $87
    ld h, a                                       ; $6fd4: $67
    ld h, l                                       ; $6fd5: $65
    ld h, l                                       ; $6fd6: $65
    ld d, h                                       ; $6fd7: $54
    ld b, h                                       ; $6fd8: $44
    inc hl                                        ; $6fd9: $23
    ld de, $2112                                  ; $6fda: $11 $12 $21
    ld [hl+], a                                   ; $6fdd: $22
    inc hl                                        ; $6fde: $23
    ld [hl+], a                                   ; $6fdf: $22
    ld [de], a                                    ; $6fe0: $12
    inc sp                                        ; $6fe1: $33
    ld d, l                                       ; $6fe2: $55
    ld h, h                                       ; $6fe3: $64
    adc b                                         ; $6fe4: $88
    ld a, b                                       ; $6fe5: $78
    ld h, [hl]                                    ; $6fe6: $66
    sbc d                                         ; $6fe7: $9a
    sbc c                                         ; $6fe8: $99
    sbc b                                         ; $6fe9: $98
    add a                                         ; $6fea: $87
    ld [hl], a                                    ; $6feb: $77
    ld [hl], a                                    ; $6fec: $77
    ld [hl], a                                    ; $6fed: $77
    xor c                                         ; $6fee: $a9
    adc d                                         ; $6fef: $8a
    adc c                                         ; $6ff0: $89
    sbc b                                         ; $6ff1: $98
    sbc b                                         ; $6ff2: $98
    xor d                                         ; $6ff3: $aa
    sbc c                                         ; $6ff4: $99
    adc b                                         ; $6ff5: $88
    adc b                                         ; $6ff6: $88
    adc b                                         ; $6ff7: $88
    sbc c                                         ; $6ff8: $99
    sbc c                                         ; $6ff9: $99
    xor e                                         ; $6ffa: $ab
    call $baba                                    ; $6ffb: $cd $ba $ba
    adc e                                         ; $6ffe: $8b
    cp c                                          ; $6fff: $b9
    cp d                                          ; $7000: $ba
    xor d                                         ; $7001: $aa
    xor d                                         ; $7002: $aa
    xor e                                         ; $7003: $ab
    cp e                                          ; $7004: $bb
    xor d                                         ; $7005: $aa
    xor d                                         ; $7006: $aa
    cp d                                          ; $7007: $ba
    xor d                                         ; $7008: $aa
    sbc c                                         ; $7009: $99
    sbc e                                         ; $700a: $9b
    xor d                                         ; $700b: $aa
    sbc d                                         ; $700c: $9a
    adc d                                         ; $700d: $8a
    sbc c                                         ; $700e: $99
    sbc d                                         ; $700f: $9a
    xor d                                         ; $7010: $aa
    xor d                                         ; $7011: $aa
    xor d                                         ; $7012: $aa
    sbc c                                         ; $7013: $99
    sbc c                                         ; $7014: $99
    sbc c                                         ; $7015: $99
    adc b                                         ; $7016: $88
    adc b                                         ; $7017: $88
    halt                                          ; $7018: $76
    halt                                          ; $7019: $76
    ld d, h                                       ; $701a: $54
    ld b, h                                       ; $701b: $44
    ld b, h                                       ; $701c: $44
    inc sp                                        ; $701d: $33
    ld b, h                                       ; $701e: $44
    ld d, l                                       ; $701f: $55
    ld d, h                                       ; $7020: $54
    ld d, l                                       ; $7021: $55
    ld b, h                                       ; $7022: $44
    ld d, h                                       ; $7023: $54
    inc sp                                        ; $7024: $33
    inc sp                                        ; $7025: $33
    inc sp                                        ; $7026: $33
    ld b, l                                       ; $7027: $45
    ld h, l                                       ; $7028: $65
    ld h, h                                       ; $7029: $64
    ld b, h                                       ; $702a: $44
    ld b, h                                       ; $702b: $44
    ld h, a                                       ; $702c: $67
    ld b, h                                       ; $702d: $44
    ld a, c                                       ; $702e: $79
    xor c                                         ; $702f: $a9
    adc b                                         ; $7030: $88
    ld a, b                                       ; $7031: $78
    add [hl]                                      ; $7032: $86
    ld d, [hl]                                    ; $7033: $56
    halt                                          ; $7034: $76
    halt                                          ; $7035: $76
    ld h, [hl]                                    ; $7036: $66
    ld h, [hl]                                    ; $7037: $66
    ld [hl], a                                    ; $7038: $77
    ld [hl], a                                    ; $7039: $77
    ld h, [hl]                                    ; $703a: $66
    ld h, [hl]                                    ; $703b: $66
    halt                                          ; $703c: $76
    ld h, [hl]                                    ; $703d: $66
    ld h, a                                       ; $703e: $67
    ld [hl], a                                    ; $703f: $77
    adc b                                         ; $7040: $88
    sbc c                                         ; $7041: $99
    sbc c                                         ; $7042: $99
    sbc c                                         ; $7043: $99
    sbc c                                         ; $7044: $99
    sbc c                                         ; $7045: $99
    adc b                                         ; $7046: $88
    sbc b                                         ; $7047: $98
    add a                                         ; $7048: $87
    ld h, a                                       ; $7049: $67
    halt                                          ; $704a: $76
    ld h, [hl]                                    ; $704b: $66
    ld h, l                                       ; $704c: $65
    ld d, h                                       ; $704d: $54
    inc [hl]                                      ; $704e: $34
    ld b, h                                       ; $704f: $44
    ld d, l                                       ; $7050: $55
    ld h, a                                       ; $7051: $67
    ld [hl], a                                    ; $7052: $77
    adc c                                         ; $7053: $89
    adc b                                         ; $7054: $88
    xor d                                         ; $7055: $aa
    cp d                                          ; $7056: $ba
    res 7, e                                      ; $7057: $cb $bb
    cp e                                          ; $7059: $bb
    cp e                                          ; $705a: $bb
    call c, $bbcb                                 ; $705b: $dc $cb $bb
    cp e                                          ; $705e: $bb
    cp e                                          ; $705f: $bb
    xor d                                         ; $7060: $aa
    sbc c                                         ; $7061: $99
    sbc c                                         ; $7062: $99
    sbc e                                         ; $7063: $9b
    xor c                                         ; $7064: $a9
    xor e                                         ; $7065: $ab
    res 5, d                                      ; $7066: $cb $aa
    xor e                                         ; $7068: $ab
    xor e                                         ; $7069: $ab
    res 7, e                                      ; $706a: $cb $bb
    xor d                                         ; $706c: $aa
    sbc b                                         ; $706d: $98
    xor b                                         ; $706e: $a8
    adc b                                         ; $706f: $88
    adc b                                         ; $7070: $88
    ld a, b                                       ; $7071: $78
    ld h, [hl]                                    ; $7072: $66
    ld [hl], a                                    ; $7073: $77
    ld l, b                                       ; $7074: $68
    halt                                          ; $7075: $76
    ld [hl-], a                                   ; $7076: $32
    jr nz, jr_011_708a                            ; $7077: $20 $11

    ld [de], a                                    ; $7079: $12
    ld [hl+], a                                   ; $707a: $22
    inc [hl]                                      ; $707b: $34
    ld d, h                                       ; $707c: $54
    ld d, l                                       ; $707d: $55
    ld d, h                                       ; $707e: $54
    ld b, l                                       ; $707f: $45
    add a                                         ; $7080: $87
    add a                                         ; $7081: $87
    ld a, b                                       ; $7082: $78
    ld a, b                                       ; $7083: $78
    add a                                         ; $7084: $87
    ld [hl], a                                    ; $7085: $77
    adc c                                         ; $7086: $89
    sbc c                                         ; $7087: $99
    add [hl]                                      ; $7088: $86
    ld h, [hl]                                    ; $7089: $66

jr_011_708a:
    ld h, l                                       ; $708a: $65
    ld h, [hl]                                    ; $708b: $66
    halt                                          ; $708c: $76
    ld h, l                                       ; $708d: $65
    ld d, [hl]                                    ; $708e: $56
    ld h, [hl]                                    ; $708f: $66
    ld h, a                                       ; $7090: $67
    ld [hl], a                                    ; $7091: $77
    ld [hl], a                                    ; $7092: $77
    ld h, [hl]                                    ; $7093: $66
    adc c                                         ; $7094: $89
    ld h, a                                       ; $7095: $67
    ld a, c                                       ; $7096: $79
    sbc b                                         ; $7097: $98
    sbc b                                         ; $7098: $98
    adc b                                         ; $7099: $88
    xor c                                         ; $709a: $a9
    adc c                                         ; $709b: $89
    sbc d                                         ; $709c: $9a
    xor b                                         ; $709d: $a8
    sub a                                         ; $709e: $97
    ld a, b                                       ; $709f: $78
    adc b                                         ; $70a0: $88
    ld [hl], a                                    ; $70a1: $77
    halt                                          ; $70a2: $76
    ld d, a                                       ; $70a3: $57
    ld h, l                                       ; $70a4: $65
    ld h, l                                       ; $70a5: $65
    inc [hl]                                      ; $70a6: $34
    ld d, h                                       ; $70a7: $54
    ld d, l                                       ; $70a8: $55
    ld h, l                                       ; $70a9: $65
    ld h, [hl]                                    ; $70aa: $66
    ld h, a                                       ; $70ab: $67
    halt                                          ; $70ac: $76
    sbc c                                         ; $70ad: $99
    adc d                                         ; $70ae: $8a
    xor d                                         ; $70af: $aa
    jp z, $9ccb                                   ; $70b0: $ca $cb $9c

    call c, $cddc                                 ; $70b3: $dc $dc $cd
    xor h                                         ; $70b6: $ac
    xor d                                         ; $70b7: $aa
    xor b                                         ; $70b8: $a8
    adc c                                         ; $70b9: $89
    sbc b                                         ; $70ba: $98
    adc b                                         ; $70bb: $88
    add a                                         ; $70bc: $87
    ld a, b                                       ; $70bd: $78
    adc b                                         ; $70be: $88
    adc c                                         ; $70bf: $89
    sbc d                                         ; $70c0: $9a
    sbc c                                         ; $70c1: $99
    sbc b                                         ; $70c2: $98
    adc c                                         ; $70c3: $89
    sbc d                                         ; $70c4: $9a
    xor c                                         ; $70c5: $a9
    adc c                                         ; $70c6: $89
    sbc c                                         ; $70c7: $99
    sbc c                                         ; $70c8: $99
    ld [hl], a                                    ; $70c9: $77
    ld [hl], a                                    ; $70ca: $77
    ld h, a                                       ; $70cb: $67
    adc b                                         ; $70cc: $88
    sbc c                                         ; $70cd: $99
    xor d                                         ; $70ce: $aa
    xor d                                         ; $70cf: $aa
    sbc c                                         ; $70d0: $99
    sbc b                                         ; $70d1: $98
    halt                                          ; $70d2: $76
    ld d, [hl]                                    ; $70d3: $56
    halt                                          ; $70d4: $76
    ld d, [hl]                                    ; $70d5: $56
    ld h, l                                       ; $70d6: $65
    ld d, l                                       ; $70d7: $55
    ld d, [hl]                                    ; $70d8: $56
    ld d, l                                       ; $70d9: $55
    ld d, l                                       ; $70da: $55
    ld d, [hl]                                    ; $70db: $56
    ld h, l                                       ; $70dc: $65
    ld d, h                                       ; $70dd: $54
    inc sp                                        ; $70de: $33
    ld [hl+], a                                   ; $70df: $22
    ld [de], a                                    ; $70e0: $12
    ld de, $4202                                  ; $70e1: $11 $02 $42
    ld b, h                                       ; $70e4: $44
    inc [hl]                                      ; $70e5: $34
    inc [hl]                                      ; $70e6: $34
    ld h, l                                       ; $70e7: $65
    ld b, e                                       ; $70e8: $43
    dec [hl]                                      ; $70e9: $35
    ld h, [hl]                                    ; $70ea: $66
    ld d, [hl]                                    ; $70eb: $56
    ld h, a                                       ; $70ec: $67
    ld a, d                                       ; $70ed: $7a
    adc c                                         ; $70ee: $89
    sbc d                                         ; $70ef: $9a
    xor h                                         ; $70f0: $ac
    res 7, d                                      ; $70f1: $cb $ba
    cp h                                          ; $70f3: $bc
    call z, $cedc                                 ; $70f4: $cc $dc $ce
    db $dd                                        ; $70f7: $dd
    call c, $cbcc                                 ; $70f8: $dc $cc $cb
    cp e                                          ; $70fb: $bb
    res 7, d                                      ; $70fc: $cb $ba
    xor c                                         ; $70fe: $a9
    sbc c                                         ; $70ff: $99
    adc b                                         ; $7100: $88
    adc b                                         ; $7101: $88
    ld [hl], a                                    ; $7102: $77
    ld h, [hl]                                    ; $7103: $66
    ld d, [hl]                                    ; $7104: $56
    ld d, l                                       ; $7105: $55
    halt                                          ; $7106: $76
    ld [hl], l                                    ; $7107: $75
    ld b, h                                       ; $7108: $44
    ld b, e                                       ; $7109: $43
    inc sp                                        ; $710a: $33
    ld [hl+], a                                   ; $710b: $22
    ld h, $73                                     ; $710c: $26 $73
    ld d, e                                       ; $710e: $53
    ld b, l                                       ; $710f: $45
    ld b, [hl]                                    ; $7110: $46
    ld e, b                                       ; $7111: $58
    adc c                                         ; $7112: $89
    ld a, e                                       ; $7113: $7b
    and a                                         ; $7114: $a7
    cp b                                          ; $7115: $b8
    cp e                                          ; $7116: $bb
    cp [hl]                                       ; $7117: $be
    db $ec                                        ; $7118: $ec
    call z, $cbbb                                 ; $7119: $cc $bb $cb
    res 7, d                                      ; $711c: $cb $ba
    xor e                                         ; $711e: $ab
    xor c                                         ; $711f: $a9
    adc c                                         ; $7120: $89
    adc b                                         ; $7121: $88
    ld d, [hl]                                    ; $7122: $56
    adc b                                         ; $7123: $88
    ld d, [hl]                                    ; $7124: $56
    ld b, [hl]                                    ; $7125: $46
    inc d                                         ; $7126: $14
    ld d, $32                                     ; $7127: $16 $32
    ld [hl+], a                                   ; $7129: $22
    ld b, d                                       ; $712a: $42
    ld b, h                                       ; $712b: $44
    ld b, l                                       ; $712c: $45
    ld b, l                                       ; $712d: $45
    ld h, a                                       ; $712e: $67
    ld l, b                                       ; $712f: $68
    adc b                                         ; $7130: $88
    add a                                         ; $7131: $87
    adc b                                         ; $7132: $88
    adc b                                         ; $7133: $88
    adc c                                         ; $7134: $89
    sbc c                                         ; $7135: $99
    xor h                                         ; $7136: $ac
    cp l                                          ; $7137: $bd
    rst $18                                       ; $7138: $df
    cp d                                          ; $7139: $ba
    cp e                                          ; $713a: $bb
    set 1, h                                      ; $713b: $cb $cc
    jp z, $aaaa                                   ; $713d: $ca $aa $aa

    xor e                                         ; $7140: $ab
    cp e                                          ; $7141: $bb
    cp e                                          ; $7142: $bb
    xor c                                         ; $7143: $a9
    adc b                                         ; $7144: $88
    adc b                                         ; $7145: $88
    ld a, b                                       ; $7146: $78
    ld h, [hl]                                    ; $7147: $66
    ld d, l                                       ; $7148: $55
    ld d, l                                       ; $7149: $55
    ld h, a                                       ; $714a: $67
    ld [hl], l                                    ; $714b: $75
    ld d, a                                       ; $714c: $57
    ld h, [hl]                                    ; $714d: $66
    ld d, l                                       ; $714e: $55
    ld d, [hl]                                    ; $714f: $56
    ld d, a                                       ; $7150: $57
    ld [hl], a                                    ; $7151: $77
    ld h, l                                       ; $7152: $65
    ld d, l                                       ; $7153: $55
    ld d, l                                       ; $7154: $55
    ld b, h                                       ; $7155: $44
    ld b, e                                       ; $7156: $43
    inc hl                                        ; $7157: $23
    inc hl                                        ; $7158: $23
    inc [hl]                                      ; $7159: $34
    ld b, [hl]                                    ; $715a: $46
    ld d, l                                       ; $715b: $55
    ld d, l                                       ; $715c: $55
    ld d, l                                       ; $715d: $55
    ld d, l                                       ; $715e: $55
    ld h, l                                       ; $715f: $65
    ld l, b                                       ; $7160: $68
    halt                                          ; $7161: $76
    ld h, a                                       ; $7162: $67
    adc b                                         ; $7163: $88
    adc c                                         ; $7164: $89
    sbc c                                         ; $7165: $99
    adc c                                         ; $7166: $89
    cp e                                          ; $7167: $bb
    cp h                                          ; $7168: $bc
    call z, $dccd                                 ; $7169: $cc $cd $dc
    sbc $dd                                       ; $716c: $de $dd
    call c, $bbcc                                 ; $716e: $dc $cc $bb
    xor d                                         ; $7171: $aa
    xor d                                         ; $7172: $aa
    adc b                                         ; $7173: $88
    adc b                                         ; $7174: $88
    ld [hl], a                                    ; $7175: $77
    halt                                          ; $7176: $76
    ld d, l                                       ; $7177: $55
    ld b, h                                       ; $7178: $44
    ld b, h                                       ; $7179: $44
    ld b, l                                       ; $717a: $45
    ld d, l                                       ; $717b: $55
    ld b, e                                       ; $717c: $43
    ld b, h                                       ; $717d: $44
    inc [hl]                                      ; $717e: $34
    ld b, e                                       ; $717f: $43
    inc [hl]                                      ; $7180: $34
    inc [hl]                                      ; $7181: $34
    inc sp                                        ; $7182: $33
    inc sp                                        ; $7183: $33
    ld b, d                                       ; $7184: $42
    inc hl                                        ; $7185: $23
    ld [hl-], a                                   ; $7186: $32
    db $10                                        ; $7187: $10
    ld [de], a                                    ; $7188: $12
    inc hl                                        ; $7189: $23
    ld [hl-], a                                   ; $718a: $32
    inc [hl]                                      ; $718b: $34
    ld b, l                                       ; $718c: $45
    ld b, l                                       ; $718d: $45
    ld h, [hl]                                    ; $718e: $66
    ld a, b                                       ; $718f: $78
    adc b                                         ; $7190: $88
    sbc c                                         ; $7191: $99
    sbc d                                         ; $7192: $9a
    cp d                                          ; $7193: $ba
    xor d                                         ; $7194: $aa
    cp e                                          ; $7195: $bb
    cp e                                          ; $7196: $bb
    cp h                                          ; $7197: $bc
    call $cdcc                                    ; $7198: $cd $cc $cd
    sbc $ef                                       ; $719b: $de $ef
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    xor $ee                                       ; $719f: $ee $ee
    xor $ee                                       ; $71a1: $ee $ee
    db $dd                                        ; $71a3: $dd
    call $cbcc                                    ; $71a4: $cd $cc $cb
    sbc d                                         ; $71a7: $9a
    sbc c                                         ; $71a8: $99
    adc b                                         ; $71a9: $88
    adc c                                         ; $71aa: $89
    adc b                                         ; $71ab: $88
    add a                                         ; $71ac: $87
    ld a, b                                       ; $71ad: $78
    halt                                          ; $71ae: $76
    ld d, l                                       ; $71af: $55
    ld d, h                                       ; $71b0: $54
    ld d, [hl]                                    ; $71b1: $56
    ld h, a                                       ; $71b2: $67
    halt                                          ; $71b3: $76
    ld [hl], l                                    ; $71b4: $75
    ld h, l                                       ; $71b5: $65
    ld d, [hl]                                    ; $71b6: $56
    ld d, l                                       ; $71b7: $55
    ld d, l                                       ; $71b8: $55
    ld b, l                                       ; $71b9: $45
    ld d, l                                       ; $71ba: $55
    ld b, l                                       ; $71bb: $45
    ld b, [hl]                                    ; $71bc: $46
    ld b, e                                       ; $71bd: $43
    ld b, d                                       ; $71be: $42
    inc sp                                        ; $71bf: $33
    ld b, e                                       ; $71c0: $43
    ld b, e                                       ; $71c1: $43
    inc sp                                        ; $71c2: $33
    ld [hl+], a                                   ; $71c3: $22
    inc sp                                        ; $71c4: $33
    ld [hl+], a                                   ; $71c5: $22
    ld [hl+], a                                   ; $71c6: $22
    inc sp                                        ; $71c7: $33
    inc [hl]                                      ; $71c8: $34
    ld b, h                                       ; $71c9: $44
    ld b, l                                       ; $71ca: $45
    ld d, l                                       ; $71cb: $55
    ld h, [hl]                                    ; $71cc: $66
    ld h, a                                       ; $71cd: $67
    adc b                                         ; $71ce: $88
    sbc d                                         ; $71cf: $9a
    sbc d                                         ; $71d0: $9a
    adc c                                         ; $71d1: $89
    cp c                                          ; $71d2: $b9
    cp e                                          ; $71d3: $bb
    xor d                                         ; $71d4: $aa
    xor d                                         ; $71d5: $aa
    xor c                                         ; $71d6: $a9
    sbc d                                         ; $71d7: $9a
    xor d                                         ; $71d8: $aa
    sbc c                                         ; $71d9: $99
    sbc c                                         ; $71da: $99
    sbc c                                         ; $71db: $99
    adc b                                         ; $71dc: $88
    xor e                                         ; $71dd: $ab
    cp d                                          ; $71de: $ba
    xor h                                         ; $71df: $ac
    call $dddd                                    ; $71e0: $cd $dd $dd
    db $ec                                        ; $71e3: $ec
    cp h                                          ; $71e4: $bc
    set 1, d                                      ; $71e5: $cb $ca
    sbc d                                         ; $71e7: $9a
    xor d                                         ; $71e8: $aa
    sbc c                                         ; $71e9: $99
    sbc c                                         ; $71ea: $99
    sbc c                                         ; $71eb: $99
    ld [hl], l                                    ; $71ec: $75
    ld h, a                                       ; $71ed: $67
    ld h, [hl]                                    ; $71ee: $66
    ld b, l                                       ; $71ef: $45
    add h                                         ; $71f0: $84
    ld d, l                                       ; $71f1: $55
    ld d, h                                       ; $71f2: $54
    inc sp                                        ; $71f3: $33
    dec [hl]                                      ; $71f4: $35
    ld d, l                                       ; $71f5: $55
    ld d, l                                       ; $71f6: $55
    ld h, [hl]                                    ; $71f7: $66
    ld d, l                                       ; $71f8: $55
    ld d, l                                       ; $71f9: $55
    inc [hl]                                      ; $71fa: $34
    ld [hl], h                                    ; $71fb: $74
    ld sp, $1331                                  ; $71fc: $31 $31 $13
    inc hl                                        ; $71ff: $23
    inc sp                                        ; $7200: $33
    ld b, l                                       ; $7201: $45
    ld d, l                                       ; $7202: $55
    ld d, [hl]                                    ; $7203: $56
    adc b                                         ; $7204: $88
    sbc e                                         ; $7205: $9b
    xor d                                         ; $7206: $aa
    call z, $cddc                                 ; $7207: $cc $dc $cd
    call z, $bacb                                 ; $720a: $cc $cb $ba
    cp d                                          ; $720d: $ba
    xor d                                         ; $720e: $aa
    sbc b                                         ; $720f: $98
    adc c                                         ; $7210: $89
    sbc c                                         ; $7211: $99
    sbc c                                         ; $7212: $99
    sbc c                                         ; $7213: $99
    sbc b                                         ; $7214: $98
    ld h, [hl]                                    ; $7215: $66
    ld d, l                                       ; $7216: $55
    ld d, l                                       ; $7217: $55
    ld d, [hl]                                    ; $7218: $56
    ld h, [hl]                                    ; $7219: $66
    ld h, [hl]                                    ; $721a: $66
    ld h, [hl]                                    ; $721b: $66
    ld h, a                                       ; $721c: $67
    ld [hl], a                                    ; $721d: $77
    ld [hl], a                                    ; $721e: $77
    ld [hl], a                                    ; $721f: $77
    adc c                                         ; $7220: $89
    sbc c                                         ; $7221: $99
    sbc c                                         ; $7222: $99
    sbc d                                         ; $7223: $9a
    sbc d                                         ; $7224: $9a
    xor d                                         ; $7225: $aa
    xor d                                         ; $7226: $aa
    xor d                                         ; $7227: $aa
    cp e                                          ; $7228: $bb
    call $dddd                                    ; $7229: $cd $dd $dd
    db $ec                                        ; $722c: $ec
    call c, $cbbb                                 ; $722d: $dc $bb $cb
    cp h                                          ; $7230: $bc
    cp e                                          ; $7231: $bb
    xor e                                         ; $7232: $ab
    ld [hl], a                                    ; $7233: $77
    ld d, [hl]                                    ; $7234: $56
    ld [hl], a                                    ; $7235: $77
    add a                                         ; $7236: $87
    halt                                          ; $7237: $76
    ld d, h                                       ; $7238: $54
    ld d, l                                       ; $7239: $55
    ld h, l                                       ; $723a: $65
    ld d, l                                       ; $723b: $55
    ld d, l                                       ; $723c: $55
    ld b, h                                       ; $723d: $44
    ld b, h                                       ; $723e: $44
    inc sp                                        ; $723f: $33
    inc sp                                        ; $7240: $33
    ld [hl+], a                                   ; $7241: $22
    inc sp                                        ; $7242: $33
    inc sp                                        ; $7243: $33
    inc sp                                        ; $7244: $33
    inc sp                                        ; $7245: $33
    inc sp                                        ; $7246: $33
    ld [hl+], a                                   ; $7247: $22
    inc sp                                        ; $7248: $33
    inc sp                                        ; $7249: $33
    inc sp                                        ; $724a: $33
    inc sp                                        ; $724b: $33
    ld hl, $1101                                  ; $724c: $21 $01 $11
    ld de, $2413                                  ; $724f: $11 $13 $24
    inc hl                                        ; $7252: $23
    ld b, h                                       ; $7253: $44
    ld b, l                                       ; $7254: $45
    ld d, l                                       ; $7255: $55
    ld h, a                                       ; $7256: $67
    adc b                                         ; $7257: $88
    adc c                                         ; $7258: $89
    sbc d                                         ; $7259: $9a
    xor d                                         ; $725a: $aa
    xor e                                         ; $725b: $ab
    cp e                                          ; $725c: $bb
    cp h                                          ; $725d: $bc
    db $dd                                        ; $725e: $dd
    db $dd                                        ; $725f: $dd
    db $dd                                        ; $7260: $dd
    db $dd                                        ; $7261: $dd
    db $dd                                        ; $7262: $dd
    db $dd                                        ; $7263: $dd
    adc $cd                                       ; $7264: $ce $cd
    xor $ee                                       ; $7266: $ee $ee
    xor $ed                                       ; $7268: $ee $ed
    db $dd                                        ; $726a: $dd
    call c, $bbcc                                 ; $726b: $dc $cc $bb
    cp h                                          ; $726e: $bc
    cp e                                          ; $726f: $bb
    xor d                                         ; $7270: $aa
    sbc c                                         ; $7271: $99
    adc b                                         ; $7272: $88
    sbc b                                         ; $7273: $98
    sbc c                                         ; $7274: $99
    ld h, [hl]                                    ; $7275: $66
    ld [hl], a                                    ; $7276: $77
    ld h, l                                       ; $7277: $65
    ld d, l                                       ; $7278: $55
    ld d, h                                       ; $7279: $54
    ld b, h                                       ; $727a: $44
    ld b, l                                       ; $727b: $45
    ld h, l                                       ; $727c: $65
    ld d, h                                       ; $727d: $54
    ld d, l                                       ; $727e: $55
    ld d, h                                       ; $727f: $54
    ld d, l                                       ; $7280: $55
    ld d, l                                       ; $7281: $55
    ld h, l                                       ; $7282: $65
    ld d, [hl]                                    ; $7283: $56
    ld h, a                                       ; $7284: $67
    adc b                                         ; $7285: $88
    ld [hl], a                                    ; $7286: $77
    halt                                          ; $7287: $76
    halt                                          ; $7288: $76
    ld [hl], a                                    ; $7289: $77
    ld h, [hl]                                    ; $728a: $66
    ld b, h                                       ; $728b: $44
    ld d, [hl]                                    ; $728c: $56
    ld d, h                                       ; $728d: $54
    ld b, h                                       ; $728e: $44
    ld b, e                                       ; $728f: $43
    inc [hl]                                      ; $7290: $34
    inc sp                                        ; $7291: $33
    ld [hl+], a                                   ; $7292: $22
    ld b, h                                       ; $7293: $44
    ld d, l                                       ; $7294: $55
    ld d, l                                       ; $7295: $55
    ld h, a                                       ; $7296: $67
    ld h, [hl]                                    ; $7297: $66
    ld [hl], a                                    ; $7298: $77
    ld h, [hl]                                    ; $7299: $66
    halt                                          ; $729a: $76
    adc b                                         ; $729b: $88
    ld h, a                                       ; $729c: $67
    halt                                          ; $729d: $76
    ld h, a                                       ; $729e: $67
    ld [hl], a                                    ; $729f: $77
    ld h, a                                       ; $72a0: $67
    ld [hl], a                                    ; $72a1: $77
    adc c                                         ; $72a2: $89
    sbc c                                         ; $72a3: $99
    xor h                                         ; $72a4: $ac
    set 1, h                                      ; $72a5: $cb $cc
    cp c                                          ; $72a7: $b9
    sbc c                                         ; $72a8: $99
    adc c                                         ; $72a9: $89
    sbc b                                         ; $72aa: $98
    sbc b                                         ; $72ab: $98
    adc c                                         ; $72ac: $89
    sbc b                                         ; $72ad: $98
    sbc b                                         ; $72ae: $98
    add a                                         ; $72af: $87
    add a                                         ; $72b0: $87
    ld a, b                                       ; $72b1: $78
    adc c                                         ; $72b2: $89
    sbc c                                         ; $72b3: $99
    sbc b                                         ; $72b4: $98
    cp e                                          ; $72b5: $bb
    sbc c                                         ; $72b6: $99
    adc d                                         ; $72b7: $8a
    adc $ed                                       ; $72b8: $ce $ed
    ret                                           ; $72ba: $c9


    sbc d                                         ; $72bb: $9a
    sbc d                                         ; $72bc: $9a
    cp e                                          ; $72bd: $bb
    xor d                                         ; $72be: $aa
    sbc c                                         ; $72bf: $99
    adc b                                         ; $72c0: $88
    ld a, c                                       ; $72c1: $79
    sbc e                                         ; $72c2: $9b
    sbc c                                         ; $72c3: $99
    adc d                                         ; $72c4: $8a
    xor d                                         ; $72c5: $aa
    ld l, b                                       ; $72c6: $68
    sub a                                         ; $72c7: $97
    ld [hl], l                                    ; $72c8: $75
    ld b, a                                       ; $72c9: $47
    ld h, a                                       ; $72ca: $67
    ld d, a                                       ; $72cb: $57
    ld e, b                                       ; $72cc: $58
    ld h, a                                       ; $72cd: $67
    ld a, c                                       ; $72ce: $79
    ld d, [hl]                                    ; $72cf: $56
    adc b                                         ; $72d0: $88
    ld [hl], a                                    ; $72d1: $77
    halt                                          ; $72d2: $76
    ld h, [hl]                                    ; $72d3: $66
    ld b, l                                       ; $72d4: $45
    ld h, h                                       ; $72d5: $64
    ld b, h                                       ; $72d6: $44
    ld h, l                                       ; $72d7: $65
    ld d, l                                       ; $72d8: $55
    ld h, [hl]                                    ; $72d9: $66
    ld h, a                                       ; $72da: $67
    halt                                          ; $72db: $76
    ld h, [hl]                                    ; $72dc: $66
    ld h, l                                       ; $72dd: $65
    adc c                                         ; $72de: $89
    add [hl]                                      ; $72df: $86
    adc b                                         ; $72e0: $88
    sub a                                         ; $72e1: $97
    add [hl]                                      ; $72e2: $86
    ld a, d                                       ; $72e3: $7a
    xor d                                         ; $72e4: $aa
    sbc d                                         ; $72e5: $9a
    jp z, $97aa                                   ; $72e6: $ca $aa $97

    adc d                                         ; $72e9: $8a
    sub a                                         ; $72ea: $97
    sbc d                                         ; $72eb: $9a
    adc b                                         ; $72ec: $88
    ld [hl], a                                    ; $72ed: $77
    adc b                                         ; $72ee: $88
    ld [hl], a                                    ; $72ef: $77
    adc b                                         ; $72f0: $88
    ld [hl], l                                    ; $72f1: $75
    ld h, l                                       ; $72f2: $65
    ld d, [hl]                                    ; $72f3: $56
    ld d, [hl]                                    ; $72f4: $56
    ld d, [hl]                                    ; $72f5: $56
    halt                                          ; $72f6: $76
    ld [hl], a                                    ; $72f7: $77
    add a                                         ; $72f8: $87
    ld a, c                                       ; $72f9: $79
    cp b                                          ; $72fa: $b8
    ret z                                         ; $72fb: $c8

    dec [hl]                                      ; $72fc: $35
    adc c                                         ; $72fd: $89
    inc [hl]                                      ; $72fe: $34
    dec [hl]                                      ; $72ff: $35
    ld d, h                                       ; $7300: $54
    ld d, l                                       ; $7301: $55
    ld b, h                                       ; $7302: $44
    ld [hl], a                                    ; $7303: $77
    ld h, [hl]                                    ; $7304: $66
    ld l, b                                       ; $7305: $68
    adc c                                         ; $7306: $89
    add a                                         ; $7307: $87
    ld [hl], a                                    ; $7308: $77
    xor d                                         ; $7309: $aa
    sbc c                                         ; $730a: $99
    jp c, $cb9c                                   ; $730b: $da $9c $cb

    adc $a7                                       ; $730e: $ce $a7
    db $db                                        ; $7310: $db
    sbc h                                         ; $7311: $9c
    xor b                                         ; $7312: $a8
    cp d                                          ; $7313: $ba
    adc c                                         ; $7314: $89
    xor c                                         ; $7315: $a9
    ld h, [hl]                                    ; $7316: $66
    ld [hl], h                                    ; $7317: $74
    ld b, [hl]                                    ; $7318: $46
    ld h, h                                       ; $7319: $64
    ld [hl], $76                                  ; $731a: $36 $76
    ld d, h                                       ; $731c: $54
    ld d, d                                       ; $731d: $52
    inc [hl]                                      ; $731e: $34
    inc sp                                        ; $731f: $33
    ld d, [hl]                                    ; $7320: $56
    ld c, c                                       ; $7321: $49
    xor b                                         ; $7322: $a8
    adc b                                         ; $7323: $88
    ld d, h                                       ; $7324: $54
    halt                                          ; $7325: $76
    ld [hl], a                                    ; $7326: $77
    ld h, h                                       ; $7327: $64
    ld d, a                                       ; $7328: $57
    add [hl]                                      ; $7329: $86
    ld d, [hl]                                    ; $732a: $56
    ld a, b                                       ; $732b: $78
    add l                                         ; $732c: $85
    ld b, l                                       ; $732d: $45
    ld h, [hl]                                    ; $732e: $66
    ld d, h                                       ; $732f: $54
    ld d, e                                       ; $7330: $53
    ld b, e                                       ; $7331: $43
    ld b, l                                       ; $7332: $45
    ld b, l                                       ; $7333: $45
    ld h, h                                       ; $7334: $64
    ld h, l                                       ; $7335: $65
    ld d, a                                       ; $7336: $57
    ld a, b                                       ; $7337: $78
    ld h, a                                       ; $7338: $67
    adc b                                         ; $7339: $88
    sbc b                                         ; $733a: $98
    cp d                                          ; $733b: $ba
    adc b                                         ; $733c: $88
    sbc c                                         ; $733d: $99
    cp l                                          ; $733e: $bd
    db $dd                                        ; $733f: $dd
    db $ed                                        ; $7340: $ed
    cp d                                          ; $7341: $ba
    call z, $cbbc                                 ; $7342: $cc $bc $cb
    res 7, h                                      ; $7345: $cb $bc
    cp e                                          ; $7347: $bb
    cp d                                          ; $7348: $ba
    cp d                                          ; $7349: $ba
    xor d                                         ; $734a: $aa
    adc d                                         ; $734b: $8a
    sbc b                                         ; $734c: $98
    add a                                         ; $734d: $87
    ld d, l                                       ; $734e: $55
    ld d, l                                       ; $734f: $55
    ld d, l                                       ; $7350: $55
    ld d, h                                       ; $7351: $54
    ld b, [hl]                                    ; $7352: $46
    ld [hl], a                                    ; $7353: $77
    ld b, a                                       ; $7354: $47
    adc b                                         ; $7355: $88
    ld [hl], l                                    ; $7356: $75
    ld d, [hl]                                    ; $7357: $56
    ld h, a                                       ; $7358: $67
    ld a, c                                       ; $7359: $79
    ld [hl], a                                    ; $735a: $77
    xor b                                         ; $735b: $a8
    xor l                                         ; $735c: $ad
    db $ed                                        ; $735d: $ed
    call z, $badd                                 ; $735e: $cc $dd $ba
    xor d                                         ; $7361: $aa
    and a                                         ; $7362: $a7
    and [hl]                                      ; $7363: $a6
    adc b                                         ; $7364: $88
    ld [hl], a                                    ; $7365: $77
    ld b, d                                       ; $7366: $42
    inc de                                        ; $7367: $13
    ld b, l                                       ; $7368: $45
    ld d, l                                       ; $7369: $55
    ld h, [hl]                                    ; $736a: $66
    ld b, h                                       ; $736b: $44
    ld d, l                                       ; $736c: $55
    ld [hl], a                                    ; $736d: $77
    add a                                         ; $736e: $87
    ld a, b                                       ; $736f: $78
    ld h, a                                       ; $7370: $67
    ld d, [hl]                                    ; $7371: $56
    ld h, l                                       ; $7372: $65
    ld h, [hl]                                    ; $7373: $66
    ld d, l                                       ; $7374: $55
    ld h, l                                       ; $7375: $65
    halt                                          ; $7376: $76
    ld d, h                                       ; $7377: $54
    ld d, h                                       ; $7378: $54
    ld b, h                                       ; $7379: $44
    ld b, h                                       ; $737a: $44
    ld h, l                                       ; $737b: $65
    ld h, [hl]                                    ; $737c: $66
    ld d, [hl]                                    ; $737d: $56
    ld h, [hl]                                    ; $737e: $66
    halt                                          ; $737f: $76
    adc b                                         ; $7380: $88
    ld a, b                                       ; $7381: $78
    add a                                         ; $7382: $87
    adc $87                                       ; $7383: $ce $87
    sbc b                                         ; $7385: $98
    cp l                                          ; $7386: $bd
    rst $00                                       ; $7387: $c7
    set 7, a                                      ; $7388: $cb $ff
    and [hl]                                      ; $738a: $a6
    adc d                                         ; $738b: $8a
    reti                                          ; $738c: $d9


    add [hl]                                      ; $738d: $86
    cp h                                          ; $738e: $bc
    ld h, h                                       ; $738f: $64
    ld l, c                                       ; $7390: $69
    jp hl                                         ; $7391: $e9


    ld l, c                                       ; $7392: $69
    adc c                                         ; $7393: $89
    sbc e                                         ; $7394: $9b
    res 7, e                                      ; $7395: $cb $bb
    sbc d                                         ; $7397: $9a
    xor b                                         ; $7398: $a8
    add [hl]                                      ; $7399: $86
    add a                                         ; $739a: $87
    add a                                         ; $739b: $87
    sbc c                                         ; $739c: $99
    ld [hl], a                                    ; $739d: $77
    ld h, [hl]                                    ; $739e: $66
    ld d, l                                       ; $739f: $55
    inc [hl]                                      ; $73a0: $34
    ld [hl-], a                                   ; $73a1: $32
    ld d, l                                       ; $73a2: $55
    inc sp                                        ; $73a3: $33
    inc [hl]                                      ; $73a4: $34
    ld d, a                                       ; $73a5: $57
    adc b                                         ; $73a6: $88
    sbc c                                         ; $73a7: $99
    xor d                                         ; $73a8: $aa
    sbc c                                         ; $73a9: $99
    xor d                                         ; $73aa: $aa
    xor c                                         ; $73ab: $a9
    sbc b                                         ; $73ac: $98
    ld [hl], a                                    ; $73ad: $77
    halt                                          ; $73ae: $76
    ld h, l                                       ; $73af: $65
    ld h, l                                       ; $73b0: $65
    ld h, [hl]                                    ; $73b1: $66
    ld b, h                                       ; $73b2: $44
    inc sp                                        ; $73b3: $33
    ld [hl+], a                                   ; $73b4: $22
    ld hl, $1110                                  ; $73b5: $21 $10 $11
    inc hl                                        ; $73b8: $23
    inc [hl]                                      ; $73b9: $34
    ld d, h                                       ; $73ba: $54
    inc [hl]                                      ; $73bb: $34
    ld h, a                                       ; $73bc: $67
    ld [hl], l                                    ; $73bd: $75
    ld l, c                                       ; $73be: $69
    cp h                                          ; $73bf: $bc
    xor d                                         ; $73c0: $aa
    call $bddc                                    ; $73c1: $cd $dc $bd
    ret                                           ; $73c4: $c9


    cp l                                          ; $73c5: $bd
    jp z, $ccab                                   ; $73c6: $ca $ab $cc

    sbc c                                         ; $73c9: $99
    cp e                                          ; $73ca: $bb
    cp e                                          ; $73cb: $bb
    call z, $cccd                                 ; $73cc: $cc $cd $cc
    call z, $ccdc                                 ; $73cf: $cc $dc $cc
    db $dd                                        ; $73d2: $dd
    cp e                                          ; $73d3: $bb
    cp c                                          ; $73d4: $b9
    sbc b                                         ; $73d5: $98
    ld [hl], a                                    ; $73d6: $77
    ld h, l                                       ; $73d7: $65
    ld b, l                                       ; $73d8: $45
    ld d, [hl]                                    ; $73d9: $56
    ld d, [hl]                                    ; $73da: $56
    adc b                                         ; $73db: $88
    adc b                                         ; $73dc: $88
    ld [hl], a                                    ; $73dd: $77
    ld [hl], l                                    ; $73de: $75
    ld h, [hl]                                    ; $73df: $66
    ld h, a                                       ; $73e0: $67
    ld [hl], a                                    ; $73e1: $77
    ld [hl], a                                    ; $73e2: $77
    ld [hl], l                                    ; $73e3: $75
    ld h, [hl]                                    ; $73e4: $66
    ld h, l                                       ; $73e5: $65
    ld b, h                                       ; $73e6: $44
    ld h, l                                       ; $73e7: $65
    ld b, e                                       ; $73e8: $43
    inc [hl]                                      ; $73e9: $34
    ld d, [hl]                                    ; $73ea: $56
    ld d, l                                       ; $73eb: $55
    ld h, l                                       ; $73ec: $65
    inc sp                                        ; $73ed: $33
    ld [hl-], a                                   ; $73ee: $32
    ld d, h                                       ; $73ef: $54
    ld b, [hl]                                    ; $73f0: $46
    ld a, b                                       ; $73f1: $78
    sbc c                                         ; $73f2: $99
    sbc b                                         ; $73f3: $98
    sbc b                                         ; $73f4: $98
    adc c                                         ; $73f5: $89
    adc b                                         ; $73f6: $88
    halt                                          ; $73f7: $76
    ld h, l                                       ; $73f8: $65
    ld h, a                                       ; $73f9: $67
    adc c                                         ; $73fa: $89
    xor d                                         ; $73fb: $aa
    cp d                                          ; $73fc: $ba
    cp d                                          ; $73fd: $ba
    sbc d                                         ; $73fe: $9a
    xor d                                         ; $73ff: $aa
    xor d                                         ; $7400: $aa
    call c, $fccc                                 ; $7401: $dc $cc $fc
    db $fc                                        ; $7404: $fc
    res 0, l                                      ; $7405: $cb $85
    ld b, l                                       ; $7407: $45
    halt                                          ; $7408: $76
    ld [hl], a                                    ; $7409: $77
    ld d, l                                       ; $740a: $55
    ld hl, $2311                                  ; $740b: $21 $11 $23
    ld hl, $2311                                  ; $740e: $21 $11 $23
    ld b, e                                       ; $7411: $43
    ld b, h                                       ; $7412: $44
    ld [hl], a                                    ; $7413: $77
    ld e, b                                       ; $7414: $58
    add [hl]                                      ; $7415: $86
    sbc b                                         ; $7416: $98
    cp l                                          ; $7417: $bd
    call $dcdc                                    ; $7418: $cd $dc $dc
    call z, $baac                                 ; $741b: $cc $ac $ba
    cp c                                          ; $741e: $b9
    xor b                                         ; $741f: $a8
    adc b                                         ; $7420: $88
    sbc b                                         ; $7421: $98
    halt                                          ; $7422: $76
    ld d, l                                       ; $7423: $55
    ld h, l                                       ; $7424: $65
    ld h, [hl]                                    ; $7425: $66
    ld [hl], a                                    ; $7426: $77
    adc c                                         ; $7427: $89
    sbc c                                         ; $7428: $99
    xor d                                         ; $7429: $aa
    sbc b                                         ; $742a: $98
    adc b                                         ; $742b: $88
    halt                                          ; $742c: $76
    ld h, [hl]                                    ; $742d: $66
    ld h, [hl]                                    ; $742e: $66
    ld d, [hl]                                    ; $742f: $56
    ld b, l                                       ; $7430: $45
    ld b, l                                       ; $7431: $45
    ld h, l                                       ; $7432: $65
    ld b, l                                       ; $7433: $45
    ld b, h                                       ; $7434: $44
    ld d, l                                       ; $7435: $55
    ld b, h                                       ; $7436: $44
    ld b, a                                       ; $7437: $47
    adc b                                         ; $7438: $88
    adc b                                         ; $7439: $88
    ld a, b                                       ; $743a: $78
    add [hl]                                      ; $743b: $86
    ld a, d                                       ; $743c: $7a
    ret                                           ; $743d: $c9


    xor e                                         ; $743e: $ab
    xor c                                         ; $743f: $a9
    xor c                                         ; $7440: $a9
    sbc d                                         ; $7441: $9a
    cp e                                          ; $7442: $bb
    cp d                                          ; $7443: $ba
    xor c                                         ; $7444: $a9
    adc b                                         ; $7445: $88
    ld a, b                                       ; $7446: $78
    adc d                                         ; $7447: $8a
    adc d                                         ; $7448: $8a
    adc c                                         ; $7449: $89
    sbc d                                         ; $744a: $9a
    sbc c                                         ; $744b: $99
    cp h                                          ; $744c: $bc
    call z, $adba                                 ; $744d: $cc $ba $ad
    cp b                                          ; $7450: $b8
    ld l, d                                       ; $7451: $6a
    ld [hl], a                                    ; $7452: $77
    add l                                         ; $7453: $85
    adc b                                         ; $7454: $88
    sbc b                                         ; $7455: $98
    ld [hl], a                                    ; $7456: $77
    adc c                                         ; $7457: $89
    ld h, [hl]                                    ; $7458: $66
    ld h, [hl]                                    ; $7459: $66
    ld d, e                                       ; $745a: $53
    inc [hl]                                      ; $745b: $34
    ld b, e                                       ; $745c: $43
    ld [hl-], a                                   ; $745d: $32
    inc de                                        ; $745e: $13
    ld [hl+], a                                   ; $745f: $22
    inc hl                                        ; $7460: $23
    inc sp                                        ; $7461: $33
    ld b, e                                       ; $7462: $43
    inc sp                                        ; $7463: $33
    dec [hl]                                      ; $7464: $35
    ld h, l                                       ; $7465: $65
    ld [hl], l                                    ; $7466: $75
    ld [hl], a                                    ; $7467: $77
    ld a, c                                       ; $7468: $79
    ld h, l                                       ; $7469: $65
    ld b, [hl]                                    ; $746a: $46
    ld [hl], l                                    ; $746b: $75
    ld d, a                                       ; $746c: $57
    add a                                         ; $746d: $87
    sbc d                                         ; $746e: $9a
    cp a                                          ; $746f: $bf
    sbc $dc                                       ; $7470: $de $dc
    db $dd                                        ; $7472: $dd
    call c, $b9bb                                 ; $7473: $dc $bb $b9
    ld [hl], a                                    ; $7476: $77
    ld d, l                                       ; $7477: $55
    add [hl]                                      ; $7478: $86
    ld l, b                                       ; $7479: $68
    adc c                                         ; $747a: $89
    ld h, l                                       ; $747b: $65
    ld h, [hl]                                    ; $747c: $66
    ld [hl], a                                    ; $747d: $77
    halt                                          ; $747e: $76
    adc b                                         ; $747f: $88
    adc b                                         ; $7480: $88
    ld [hl], a                                    ; $7481: $77
    ld a, b                                       ; $7482: $78
    add a                                         ; $7483: $87
    ld h, l                                       ; $7484: $65
    ld h, l                                       ; $7485: $65
    dec [hl]                                      ; $7486: $35
    ld h, h                                       ; $7487: $64
    ld d, [hl]                                    ; $7488: $56
    ld h, [hl]                                    ; $7489: $66
    add a                                         ; $748a: $87
    ld [hl], a                                    ; $748b: $77
    ld h, a                                       ; $748c: $67
    ld d, [hl]                                    ; $748d: $56
    ld h, h                                       ; $748e: $64
    inc hl                                        ; $748f: $23
    ld b, h                                       ; $7490: $44
    ld b, a                                       ; $7491: $47
    add a                                         ; $7492: $87
    ld [hl], h                                    ; $7493: $74
    xor b                                         ; $7494: $a8
    xor b                                         ; $7495: $a8
    add sp, -$49                                  ; $7496: $e8 $b7
    ld d, a                                       ; $7498: $57
    ld a, e                                       ; $7499: $7b
    ld a, b                                       ; $749a: $78
    adc h                                         ; $749b: $8c
    adc h                                         ; $749c: $8c
    xor h                                         ; $749d: $ac
    call $cadd                                    ; $749e: $cd $dd $ca
    xor c                                         ; $74a1: $a9
    cp d                                          ; $74a2: $ba
    cp h                                          ; $74a3: $bc
    call z, $badb                                 ; $74a4: $cc $db $ba
    xor e                                         ; $74a7: $ab
    xor $da                                       ; $74a8: $ee $da
    ld a, b                                       ; $74aa: $78
    xor e                                         ; $74ab: $ab
    sub h                                         ; $74ac: $94
    ld l, c                                       ; $74ad: $69
    sub a                                         ; $74ae: $97
    ld l, b                                       ; $74af: $68
    adc b                                         ; $74b0: $88
    sbc d                                         ; $74b1: $9a
    sbc c                                         ; $74b2: $99
    sbc h                                         ; $74b3: $9c
    xor $b7                                       ; $74b4: $ee $b7
    ld d, l                                       ; $74b6: $55
    adc d                                         ; $74b7: $8a
    cp c                                          ; $74b8: $b9
    add [hl]                                      ; $74b9: $86
    ld d, h                                       ; $74ba: $54
    ld b, d                                       ; $74bb: $42
    inc sp                                        ; $74bc: $33
    inc sp                                        ; $74bd: $33
    ld b, h                                       ; $74be: $44
    ld b, e                                       ; $74bf: $43
    ld d, h                                       ; $74c0: $54
    ld d, l                                       ; $74c1: $55
    ld h, l                                       ; $74c2: $65
    ld [hl], a                                    ; $74c3: $77
    halt                                          ; $74c4: $76
    ld h, a                                       ; $74c5: $67
    sbc c                                         ; $74c6: $99
    add [hl]                                      ; $74c7: $86
    ld h, a                                       ; $74c8: $67
    adc b                                         ; $74c9: $88
    adc d                                         ; $74ca: $8a
    cp l                                          ; $74cb: $bd
    call c, $cbcb                                 ; $74cc: $dc $cb $cb
    adc d                                         ; $74cf: $8a
    sbc b                                         ; $74d0: $98
    sbc b                                         ; $74d1: $98
    adc b                                         ; $74d2: $88
    ld a, b                                       ; $74d3: $78
    ld d, h                                       ; $74d4: $54
    inc sp                                        ; $74d5: $33
    ld [hl+], a                                   ; $74d6: $22
    ld [hl-], a                                   ; $74d7: $32
    ld [hl+], a                                   ; $74d8: $22
    ld [hl+], a                                   ; $74d9: $22
    inc sp                                        ; $74da: $33
    ld [hl-], a                                   ; $74db: $32
    inc hl                                        ; $74dc: $23
    ld sp, $8629                                  ; $74dd: $31 $29 $86
    add [hl]                                      ; $74e0: $86
    inc sp                                        ; $74e1: $33
    ld h, a                                       ; $74e2: $67
    ld h, a                                       ; $74e3: $67
    ld d, [hl]                                    ; $74e4: $56
    ld h, a                                       ; $74e5: $67
    ld d, [hl]                                    ; $74e6: $56
    ld [hl], a                                    ; $74e7: $77
    sbc b                                         ; $74e8: $98
    sub l                                         ; $74e9: $95
    ld b, [hl]                                    ; $74ea: $46
    adc b                                         ; $74eb: $88
    ld a, c                                       ; $74ec: $79
    add e                                         ; $74ed: $83
    ld l, b                                       ; $74ee: $68
    ld b, e                                       ; $74ef: $43
    ld h, l                                       ; $74f0: $65
    inc h                                         ; $74f1: $24
    ld h, l                                       ; $74f2: $65
    ld d, a                                       ; $74f3: $57
    ld h, a                                       ; $74f4: $67
    adc d                                         ; $74f5: $8a
    ld a, b                                       ; $74f6: $78
    xor d                                         ; $74f7: $aa
    xor e                                         ; $74f8: $ab
    sbc c                                         ; $74f9: $99
    adc c                                         ; $74fa: $89
    sbc d                                         ; $74fb: $9a
    xor b                                         ; $74fc: $a8
    add [hl]                                      ; $74fd: $86
    ld [hl], a                                    ; $74fe: $77
    adc b                                         ; $74ff: $88
    ld h, [hl]                                    ; $7500: $66
    sbc b                                         ; $7501: $98
    sbc c                                         ; $7502: $99
    sbc d                                         ; $7503: $9a
    xor b                                         ; $7504: $a8
    adc c                                         ; $7505: $89
    sbc d                                         ; $7506: $9a
    adc c                                         ; $7507: $89
    sbc b                                         ; $7508: $98
    xor c                                         ; $7509: $a9
    sbc c                                         ; $750a: $99
    xor d                                         ; $750b: $aa
    add a                                         ; $750c: $87
    adc b                                         ; $750d: $88
    adc b                                         ; $750e: $88
    adc c                                         ; $750f: $89
    xor d                                         ; $7510: $aa
    ld a, b                                       ; $7511: $78
    adc c                                         ; $7512: $89
    xor c                                         ; $7513: $a9
    sbc c                                         ; $7514: $99
    xor c                                         ; $7515: $a9
    cp a                                          ; $7516: $bf
    sbc $ef                                       ; $7517: $de $ef
    db $ed                                        ; $7519: $ed
    xor $fc                                       ; $751a: $ee $fc
    res 7, [hl]                                   ; $751c: $cb $be
    cp d                                          ; $751e: $ba
    xor e                                         ; $751f: $ab
    ld h, [hl]                                    ; $7520: $66
    ld h, h                                       ; $7521: $64
    ld b, e                                       ; $7522: $43
    ld b, b                                       ; $7523: $40
    ld d, c                                       ; $7524: $51
    ld [hl], $61                                  ; $7525: $36 $61
    ld h, l                                       ; $7527: $65
    dec d                                         ; $7528: $15
    add h                                         ; $7529: $84
    ld b, a                                       ; $752a: $47
    ld a, c                                       ; $752b: $79
    ld h, l                                       ; $752c: $65
    adc d                                         ; $752d: $8a
    ld e, b                                       ; $752e: $58
    add a                                         ; $752f: $87
    sbc [hl]                                      ; $7530: $9e
    cp d                                          ; $7531: $ba
    cp d                                          ; $7532: $ba
    adc b                                         ; $7533: $88
    xor b                                         ; $7534: $a8
    sbc b                                         ; $7535: $98
    ld h, [hl]                                    ; $7536: $66
    ld b, h                                       ; $7537: $44
    ld d, l                                       ; $7538: $55
    ld b, l                                       ; $7539: $45
    ld h, d                                       ; $753a: $62
    ld b, h                                       ; $753b: $44
    ld d, e                                       ; $753c: $53
    ld b, a                                       ; $753d: $47
    ld [hl], a                                    ; $753e: $77
    sbc b                                         ; $753f: $98
    adc e                                         ; $7540: $8b
    sbc d                                         ; $7541: $9a
    cp d                                          ; $7542: $ba
    xor e                                         ; $7543: $ab
    cp b                                          ; $7544: $b8
    sbc c                                         ; $7545: $99
    sbc d                                         ; $7546: $9a
    sbc c                                         ; $7547: $99
    sbc c                                         ; $7548: $99
    adc c                                         ; $7549: $89
    xor d                                         ; $754a: $aa
    xor e                                         ; $754b: $ab
    xor d                                         ; $754c: $aa
    call c, $debc                                 ; $754d: $dc $bc $de
    jp c, $bab8                                   ; $7550: $da $b8 $ba

    sub a                                         ; $7553: $97
    halt                                          ; $7554: $76
    halt                                          ; $7555: $76
    ld b, e                                       ; $7556: $43
    ld d, e                                       ; $7557: $53
    ld b, e                                       ; $7558: $43
    ld b, e                                       ; $7559: $43
    inc [hl]                                      ; $755a: $34
    ld b, e                                       ; $755b: $43
    ld sp, $2422                                  ; $755c: $31 $22 $24
    ld d, c                                       ; $755f: $51
    ld h, $66                                     ; $7560: $26 $66
    ld d, l                                       ; $7562: $55
    add a                                         ; $7563: $87
    ld [hl], l                                    ; $7564: $75
    ld h, [hl]                                    ; $7565: $66
    ld b, h                                       ; $7566: $44
    ld b, h                                       ; $7567: $44
    inc sp                                        ; $7568: $33
    inc sp                                        ; $7569: $33
    ld b, h                                       ; $756a: $44
    ld b, l                                       ; $756b: $45
    ld b, e                                       ; $756c: $43
    ld d, h                                       ; $756d: $54
    dec [hl]                                      ; $756e: $35
    ld [hl], h                                    ; $756f: $74
    dec [hl]                                      ; $7570: $35
    ld d, e                                       ; $7571: $53
    inc h                                         ; $7572: $24
    sub d                                         ; $7573: $92
    jr c, jr_011_75ca                             ; $7574: $38 $54

    add a                                         ; $7576: $87
    halt                                          ; $7577: $76
    ld [hl], l                                    ; $7578: $75
    ld b, [hl]                                    ; $7579: $46
    ld h, [hl]                                    ; $757a: $66
    ld h, l                                       ; $757b: $65
    adc b                                         ; $757c: $88
    xor d                                         ; $757d: $aa
    xor e                                         ; $757e: $ab
    jp z, $baab                                   ; $757f: $ca $ab $ba

    call c, $87dd                                 ; $7582: $dc $dd $87
    adc d                                         ; $7585: $8a
    call z, $9bc9                                 ; $7586: $cc $c9 $9b
    cp l                                          ; $7589: $bd
    cp b                                          ; $758a: $b8
    ld h, a                                       ; $758b: $67
    ld a, c                                       ; $758c: $79
    ld a, h                                       ; $758d: $7c
    adc d                                         ; $758e: $8a
    xor l                                         ; $758f: $ad
    xor l                                         ; $7590: $ad
    cp a                                          ; $7591: $bf
    db $db                                        ; $7592: $db
    xor d                                         ; $7593: $aa
    cp e                                          ; $7594: $bb
    call z, $ddbc                                 ; $7595: $cc $bc $dd
    cp l                                          ; $7598: $bd
    sbc $ed                                       ; $7599: $de $ed
    db $ed                                        ; $759b: $ed
    rst $18                                       ; $759c: $df
    db $fd                                        ; $759d: $fd
    call c, $a8cd                                 ; $759e: $dc $cd $a8
    adc c                                         ; $75a1: $89
    adc b                                         ; $75a2: $88
    add a                                         ; $75a3: $87
    ld h, a                                       ; $75a4: $67
    ld h, [hl]                                    ; $75a5: $66
    ld [hl], a                                    ; $75a6: $77
    ld b, d                                       ; $75a7: $42
    ld [hl+], a                                   ; $75a8: $22
    inc sp                                        ; $75a9: $33
    inc hl                                        ; $75aa: $23
    ld b, d                                       ; $75ab: $42
    inc sp                                        ; $75ac: $33
    ld b, h                                       ; $75ad: $44
    ld h, a                                       ; $75ae: $67
    ld [hl], a                                    ; $75af: $77
    adc b                                         ; $75b0: $88
    ld [hl], a                                    ; $75b1: $77
    adc b                                         ; $75b2: $88
    add a                                         ; $75b3: $87
    halt                                          ; $75b4: $76
    ld h, [hl]                                    ; $75b5: $66
    ld d, [hl]                                    ; $75b6: $56
    inc [hl]                                      ; $75b7: $34
    inc sp                                        ; $75b8: $33
    inc sp                                        ; $75b9: $33
    inc de                                        ; $75ba: $13
    inc [hl]                                      ; $75bb: $34
    inc [hl]                                      ; $75bc: $34
    ld h, l                                       ; $75bd: $65
    ld d, [hl]                                    ; $75be: $56
    ld h, [hl]                                    ; $75bf: $66
    ld h, a                                       ; $75c0: $67
    adc b                                         ; $75c1: $88
    sbc d                                         ; $75c2: $9a
    adc h                                         ; $75c3: $8c
    xor e                                         ; $75c4: $ab
    sbc d                                         ; $75c5: $9a
    ld [hl], h                                    ; $75c6: $74
    ld a, d                                       ; $75c7: $7a
    ld h, [hl]                                    ; $75c8: $66
    sub a                                         ; $75c9: $97

Call_011_75ca:
jr_011_75ca:
    xor d                                         ; $75ca: $aa
    adc c                                         ; $75cb: $89
    sbc c                                         ; $75cc: $99
    sub [hl]                                      ; $75cd: $96
    sbc b                                         ; $75ce: $98
    add a                                         ; $75cf: $87
    add [hl]                                      ; $75d0: $86
    adc b                                         ; $75d1: $88
    ld [hl], a                                    ; $75d2: $77
    add [hl]                                      ; $75d3: $86
    ld h, a                                       ; $75d4: $67
    halt                                          ; $75d5: $76
    ld [hl], a                                    ; $75d6: $77
    ld h, [hl]                                    ; $75d7: $66
    ld [hl], a                                    ; $75d8: $77
    halt                                          ; $75d9: $76
    ld h, [hl]                                    ; $75da: $66
    ld h, [hl]                                    ; $75db: $66
    ld h, l                                       ; $75dc: $65
    ld h, [hl]                                    ; $75dd: $66
    add l                                         ; $75de: $85
    halt                                          ; $75df: $76
    adc c                                         ; $75e0: $89
    ld [hl], a                                    ; $75e1: $77
    add a                                         ; $75e2: $87
    sbc c                                         ; $75e3: $99
    sbc e                                         ; $75e4: $9b
    sbc d                                         ; $75e5: $9a
    sub a                                         ; $75e6: $97
    halt                                          ; $75e7: $76
    ld [hl], a                                    ; $75e8: $77
    halt                                          ; $75e9: $76
    ld d, [hl]                                    ; $75ea: $56
    ld h, l                                       ; $75eb: $65
    ld d, l                                       ; $75ec: $55
    ld h, l                                       ; $75ed: $65
    ld d, l                                       ; $75ee: $55
    adc c                                         ; $75ef: $89
    adc d                                         ; $75f0: $8a
    xor c                                         ; $75f1: $a9
    xor e                                         ; $75f2: $ab
    ret z                                         ; $75f3: $c8

    db $db                                        ; $75f4: $db
    cp h                                          ; $75f5: $bc
    cp c                                          ; $75f6: $b9
    sbc d                                         ; $75f7: $9a
    sbc d                                         ; $75f8: $9a
    xor d                                         ; $75f9: $aa
    sbc c                                         ; $75fa: $99
    adc b                                         ; $75fb: $88
    ld l, d                                       ; $75fc: $6a
    add [hl]                                      ; $75fd: $86
    ld h, [hl]                                    ; $75fe: $66
    ld h, a                                       ; $75ff: $67
    ld h, [hl]                                    ; $7600: $66
    ld h, [hl]                                    ; $7601: $66
    ld h, [hl]                                    ; $7602: $66
    ld d, l                                       ; $7603: $55
    ld d, l                                       ; $7604: $55
    ld b, h                                       ; $7605: $44
    ld b, h                                       ; $7606: $44
    ld b, h                                       ; $7607: $44
    ld b, h                                       ; $7608: $44
    inc [hl]                                      ; $7609: $34
    ld b, d                                       ; $760a: $42
    inc [hl]                                      ; $760b: $34
    inc sp                                        ; $760c: $33
    ld [hl-], a                                   ; $760d: $32
    ld sp, $0110                                  ; $760e: $31 $10 $01
    ld de, $4522                                  ; $7611: $11 $22 $45
    ld d, [hl]                                    ; $7614: $56
    ld l, b                                       ; $7615: $68
    ld [hl], a                                    ; $7616: $77
    ld [hl], a                                    ; $7617: $77
    sbc e                                         ; $7618: $9b
    xor e                                         ; $7619: $ab
    cp d                                          ; $761a: $ba
    xor h                                         ; $761b: $ac
    call c, $ecde                                 ; $761c: $dc $de $ec
    call $cbcb                                    ; $761f: $cd $cb $cb
    call $a9dc                                    ; $7622: $cd $dc $a9
    adc c                                         ; $7625: $89
    xor e                                         ; $7626: $ab
    call z, $babb                                 ; $7627: $cc $bb $ba
    cp e                                          ; $762a: $bb
    cp l                                          ; $762b: $bd
    xor d                                         ; $762c: $aa
    db $db                                        ; $762d: $db
    cp e                                          ; $762e: $bb
    call $bbba                                    ; $762f: $cd $ba $bb
    cp d                                          ; $7632: $ba
    xor d                                         ; $7633: $aa
    cp c                                          ; $7634: $b9
    xor c                                         ; $7635: $a9
    sbc b                                         ; $7636: $98
    sbc b                                         ; $7637: $98
    add a                                         ; $7638: $87
    ld h, a                                       ; $7639: $67
    ld h, l                                       ; $763a: $65
    ld b, e                                       ; $763b: $43
    inc sp                                        ; $763c: $33
    ld hl, $2322                                  ; $763d: $21 $22 $23
    inc [hl]                                      ; $7640: $34
    ld d, l                                       ; $7641: $55
    ld h, l                                       ; $7642: $65
    ld a, b                                       ; $7643: $78
    sbc b                                         ; $7644: $98
    sbc d                                         ; $7645: $9a
    cp l                                          ; $7646: $bd
    cp b                                          ; $7647: $b8
    cp d                                          ; $7648: $ba
    xor c                                         ; $7649: $a9
    adc b                                         ; $764a: $88
    adc c                                         ; $764b: $89
    sbc d                                         ; $764c: $9a
    adc d                                         ; $764d: $8a
    sbc d                                         ; $764e: $9a
    xor c                                         ; $764f: $a9
    sbc b                                         ; $7650: $98
    ld l, b                                       ; $7651: $68
    add a                                         ; $7652: $87
    ld h, l                                       ; $7653: $65
    ld a, [hl-]                                   ; $7654: $3a
    sub l                                         ; $7655: $95
    ld l, b                                       ; $7656: $68
    add h                                         ; $7657: $84
    sbc c                                         ; $7658: $99
    sbc b                                         ; $7659: $98
    ld [hl], l                                    ; $765a: $75
    add a                                         ; $765b: $87
    sbc b                                         ; $765c: $98
    sbc b                                         ; $765d: $98
    add a                                         ; $765e: $87
    halt                                          ; $765f: $76
    ld h, [hl]                                    ; $7660: $66
    ld d, l                                       ; $7661: $55
    ld h, [hl]                                    ; $7662: $66
    ld b, h                                       ; $7663: $44
    ld d, h                                       ; $7664: $54
    ld b, h                                       ; $7665: $44
    ld b, e                                       ; $7666: $43
    ld b, h                                       ; $7667: $44
    ld [hl-], a                                   ; $7668: $32
    ld bc, $1011                                  ; $7669: $01 $11 $10
    ld bc, $2322                                  ; $766c: $01 $22 $23
    inc [hl]                                      ; $766f: $34
    ld d, l                                       ; $7670: $55
    ld d, [hl]                                    ; $7671: $56
    ld h, a                                       ; $7672: $67
    ld a, b                                       ; $7673: $78
    sbc c                                         ; $7674: $99
    xor e                                         ; $7675: $ab
    xor d                                         ; $7676: $aa
    sbc e                                         ; $7677: $9b
    xor e                                         ; $7678: $ab
    cp h                                          ; $7679: $bc
    db $dd                                        ; $767a: $dd
    sbc $fe                                       ; $767b: $de $fe
    call $cddd                                    ; $767d: $cd $dd $cd
    jp z, $9ab9                                   ; $7680: $ca $b9 $9a

    cp b                                          ; $7683: $b8
    sbc e                                         ; $7684: $9b
    ld a, b                                       ; $7685: $78
    sbc d                                         ; $7686: $9a
    sbc d                                         ; $7687: $9a
    xor b                                         ; $7688: $a8
    adc b                                         ; $7689: $88
    ld h, l                                       ; $768a: $65
    ld [hl], l                                    ; $768b: $75
    ld [hl], $65                                  ; $768c: $36 $65
    ld d, l                                       ; $768e: $55
    ld d, [hl]                                    ; $768f: $56
    ld h, [hl]                                    ; $7690: $66
    ld b, h                                       ; $7691: $44
    ld [hl], a                                    ; $7692: $77
    ld b, h                                       ; $7693: $44
    ld h, [hl]                                    ; $7694: $66
    ld d, l                                       ; $7695: $55
    ld d, l                                       ; $7696: $55
    ld d, h                                       ; $7697: $54
    inc sp                                        ; $7698: $33
    dec [hl]                                      ; $7699: $35
    add [hl]                                      ; $769a: $86
    ld d, a                                       ; $769b: $57
    halt                                          ; $769c: $76
    ld d, h                                       ; $769d: $54
    ld b, e                                       ; $769e: $43
    ld b, l                                       ; $769f: $45
    ld d, l                                       ; $76a0: $55
    ld h, [hl]                                    ; $76a1: $66
    ld h, [hl]                                    ; $76a2: $66
    halt                                          ; $76a3: $76
    ld h, a                                       ; $76a4: $67
    ld h, a                                       ; $76a5: $67
    adc b                                         ; $76a6: $88
    adc c                                         ; $76a7: $89
    sbc c                                         ; $76a8: $99
    xor e                                         ; $76a9: $ab
    set 1, h                                      ; $76aa: $cb $cc
    call $bacc                                    ; $76ac: $cd $cc $ba
    xor d                                         ; $76af: $aa
    xor c                                         ; $76b0: $a9
    sbc c                                         ; $76b1: $99
    xor c                                         ; $76b2: $a9
    sbc c                                         ; $76b3: $99
    sbc c                                         ; $76b4: $99
    sbc c                                         ; $76b5: $99
    xor d                                         ; $76b6: $aa
    xor d                                         ; $76b7: $aa

Call_011_76b8:
    cp e                                          ; $76b8: $bb
    cp [hl]                                       ; $76b9: $be
    call $dbdd                                    ; $76ba: $cd $dd $db
    xor e                                         ; $76bd: $ab
    cp e                                          ; $76be: $bb
    xor d                                         ; $76bf: $aa
    call $cbdd                                    ; $76c0: $cd $dd $cb
    cp e                                          ; $76c3: $bb
    xor e                                         ; $76c4: $ab
    xor c                                         ; $76c5: $a9
    sbc c                                         ; $76c6: $99
    adc b                                         ; $76c7: $88
    ld h, a                                       ; $76c8: $67
    ld d, [hl]                                    ; $76c9: $56
    ld d, h                                       ; $76ca: $54
    ld b, h                                       ; $76cb: $44
    ld b, e                                       ; $76cc: $43
    inc sp                                        ; $76cd: $33
    ld [hl+], a                                   ; $76ce: $22
    inc sp                                        ; $76cf: $33
    ld hl, $0111                                  ; $76d0: $21 $11 $01
    ld hl, $1211                                  ; $76d3: $21 $11 $12
    inc sp                                        ; $76d6: $33
    ld b, h                                       ; $76d7: $44
    ld d, [hl]                                    ; $76d8: $56
    ld d, [hl]                                    ; $76d9: $56
    ld h, l                                       ; $76da: $65
    ld h, [hl]                                    ; $76db: $66
    ld h, [hl]                                    ; $76dc: $66
    ld h, a                                       ; $76dd: $67
    ld h, [hl]                                    ; $76de: $66
    ld h, l                                       ; $76df: $65
    ld d, [hl]                                    ; $76e0: $56
    ld d, l                                       ; $76e1: $55
    ld h, [hl]                                    ; $76e2: $66
    ld [hl], a                                    ; $76e3: $77
    ld [hl], a                                    ; $76e4: $77
    ld [hl], a                                    ; $76e5: $77
    add a                                         ; $76e6: $87
    add [hl]                                      ; $76e7: $86
    xor d                                         ; $76e8: $aa
    sbc e                                         ; $76e9: $9b
    sbc b                                         ; $76ea: $98
    adc e                                         ; $76eb: $8b
    xor c                                         ; $76ec: $a9
    add a                                         ; $76ed: $87
    adc c                                         ; $76ee: $89
    sbc e                                         ; $76ef: $9b
    xor e                                         ; $76f0: $ab
    set 1, e                                      ; $76f1: $cb $cb
    sbc c                                         ; $76f3: $99
    sbc e                                         ; $76f4: $9b
    cp l                                          ; $76f5: $bd
    call $cdbe                                    ; $76f6: $cd $be $cd
    db $dd                                        ; $76f9: $dd
    call $dcdd                                    ; $76fa: $cd $dd $dc
    res 7, e                                      ; $76fd: $cb $bb
    xor d                                         ; $76ff: $aa
    xor d                                         ; $7700: $aa
    sbc c                                         ; $7701: $99
    xor d                                         ; $7702: $aa
    xor c                                         ; $7703: $a9
    sbc c                                         ; $7704: $99
    adc b                                         ; $7705: $88
    adc b                                         ; $7706: $88
    sbc c                                         ; $7707: $99
    sub a                                         ; $7708: $97
    ld a, b                                       ; $7709: $78
    sub a                                         ; $770a: $97
    adc b                                         ; $770b: $88
    add a                                         ; $770c: $87
    ld [hl], a                                    ; $770d: $77
    halt                                          ; $770e: $76
    ld h, [hl]                                    ; $770f: $66
    ld d, [hl]                                    ; $7710: $56
    ld d, h                                       ; $7711: $54
    ld b, l                                       ; $7712: $45
    ld b, e                                       ; $7713: $43
    ld d, h                                       ; $7714: $54
    ld b, l                                       ; $7715: $45
    ld e, b                                       ; $7716: $58
    halt                                          ; $7717: $76
    ld h, [hl]                                    ; $7718: $66
    ld h, [hl]                                    ; $7719: $66
    ld d, h                                       ; $771a: $54
    ld b, l                                       ; $771b: $45
    ld h, a                                       ; $771c: $67
    ld h, [hl]                                    ; $771d: $66
    ld h, l                                       ; $771e: $65
    ld d, h                                       ; $771f: $54
    inc sp                                        ; $7720: $33
    inc hl                                        ; $7721: $23
    inc sp                                        ; $7722: $33
    ld b, l                                       ; $7723: $45
    ld b, h                                       ; $7724: $44
    ld b, e                                       ; $7725: $43
    ld l, b                                       ; $7726: $68
    ld d, d                                       ; $7727: $52
    ld b, [hl]                                    ; $7728: $46
    ld b, e                                       ; $7729: $43
    ld d, l                                       ; $772a: $55
    ld d, [hl]                                    ; $772b: $56
    ld h, [hl]                                    ; $772c: $66
    ld a, c                                       ; $772d: $79
    adc c                                         ; $772e: $89
    sbc h                                         ; $772f: $9c
    adc $de                                       ; $7730: $ce $de
    db $dd                                        ; $7732: $dd
    cp e                                          ; $7733: $bb
    jp z, $99aa                                   ; $7734: $ca $aa $99

    adc d                                         ; $7737: $8a
    xor b                                         ; $7738: $a8
    sbc d                                         ; $7739: $9a
    xor c                                         ; $773a: $a9
    adc b                                         ; $773b: $88
    sbc b                                         ; $773c: $98
    sbc b                                         ; $773d: $98
    sbc d                                         ; $773e: $9a
    sbc c                                         ; $773f: $99
    add a                                         ; $7740: $87
    ld [hl], a                                    ; $7741: $77
    ld h, h                                       ; $7742: $64
    ld b, h                                       ; $7743: $44
    ld b, h                                       ; $7744: $44
    ld d, h                                       ; $7745: $54
    ld b, l                                       ; $7746: $45
    ld d, l                                       ; $7747: $55
    ld d, l                                       ; $7748: $55
    ld d, [hl]                                    ; $7749: $56
    ld h, a                                       ; $774a: $67
    add a                                         ; $774b: $87
    ld a, b                                       ; $774c: $78
    sbc e                                         ; $774d: $9b
    bit 7, b                                      ; $774e: $cb $78
    sub a                                         ; $7750: $97
    sbc e                                         ; $7751: $9b
    adc e                                         ; $7752: $8b
    ret                                           ; $7753: $c9


    adc d                                         ; $7754: $8a
    xor d                                         ; $7755: $aa
    cp c                                          ; $7756: $b9
    ld [hl], a                                    ; $7757: $77
    sub [hl]                                      ; $7758: $96
    ld l, b                                       ; $7759: $68
    ld d, [hl]                                    ; $775a: $56
    ld a, b                                       ; $775b: $78
    ld h, h                                       ; $775c: $64
    add a                                         ; $775d: $87
    add [hl]                                      ; $775e: $86
    ld a, b                                       ; $775f: $78
    ld h, [hl]                                    ; $7760: $66
    halt                                          ; $7761: $76
    ld h, [hl]                                    ; $7762: $66
    ld h, [hl]                                    ; $7763: $66

Jump_011_7764:
    ld h, a                                       ; $7764: $67
    ld h, l                                       ; $7765: $65
    ld b, l                                       ; $7766: $45
    ld d, h                                       ; $7767: $54
    inc [hl]                                      ; $7768: $34
    inc [hl]                                      ; $7769: $34
    ld b, h                                       ; $776a: $44
    ld b, a                                       ; $776b: $47
    ld h, l                                       ; $776c: $65
    ld h, h                                       ; $776d: $64
    dec b                                         ; $776e: $05
    dec b                                         ; $776f: $05
    ld d, [hl]                                    ; $7770: $56
    ld h, l                                       ; $7771: $65
    ld [hl], l                                    ; $7772: $75
    adc b                                         ; $7773: $88
    adc b                                         ; $7774: $88
    xor e                                         ; $7775: $ab
    xor d                                         ; $7776: $aa
    cp h                                          ; $7777: $bc
    db $db                                        ; $7778: $db
    jp z, $ab9b                                   ; $7779: $ca $9b $ab

    call z, $bccc                                 ; $777c: $cc $cc $bc
    xor e                                         ; $777f: $ab
    db $dd                                        ; $7780: $dd
    cp l                                          ; $7781: $bd
    cp e                                          ; $7782: $bb
    adc h                                         ; $7783: $8c
    call $ab99                                    ; $7784: $cd $99 $ab
    xor b                                         ; $7787: $a8
    add a                                         ; $7788: $87
    adc b                                         ; $7789: $88
    sub l                                         ; $778a: $95
    ld l, b                                       ; $778b: $68
    adc b                                         ; $778c: $88
    ld l, b                                       ; $778d: $68
    sub [hl]                                      ; $778e: $96
    sub a                                         ; $778f: $97
    ld l, b                                       ; $7790: $68
    ld h, l                                       ; $7791: $65
    ld [hl], a                                    ; $7792: $77
    ld d, b                                       ; $7793: $50
    ld b, h                                       ; $7794: $44
    inc hl                                        ; $7795: $23
    rla                                           ; $7796: $17
    ld [hl], e                                    ; $7797: $73

Call_011_7798:
    ld [hl], a                                    ; $7798: $77
    ld [hl], l                                    ; $7799: $75
    ld a, b                                       ; $779a: $78
    adc c                                         ; $779b: $89
    adc c                                         ; $779c: $89
    sub a                                         ; $779d: $97
    sbc b                                         ; $779e: $98
    ld l, b                                       ; $779f: $68
    sub a                                         ; $77a0: $97
    adc b                                         ; $77a1: $88
    adc b                                         ; $77a2: $88
    ld [hl], a                                    ; $77a3: $77
    adc b                                         ; $77a4: $88
    adc b                                         ; $77a5: $88
    add a                                         ; $77a6: $87
    ld h, a                                       ; $77a7: $67
    ld a, c                                       ; $77a8: $79

Jump_011_77a9:
    halt                                          ; $77a9: $76
    ld h, a                                       ; $77aa: $67
    ld h, l                                       ; $77ab: $65
    ld d, [hl]                                    ; $77ac: $56
    ld [hl], l                                    ; $77ad: $75
    ld d, [hl]                                    ; $77ae: $56
    ld a, b                                       ; $77af: $78
    adc c                                         ; $77b0: $89
    sbc b                                         ; $77b1: $98
    add [hl]                                      ; $77b2: $86
    ld d, l                                       ; $77b3: $55
    ld h, [hl]                                    ; $77b4: $66
    ld h, a                                       ; $77b5: $67
    adc c                                         ; $77b6: $89
    sbc c                                         ; $77b7: $99
    xor c                                         ; $77b8: $a9
    sbc d                                         ; $77b9: $9a
    xor h                                         ; $77ba: $ac
    call z, $bbcc                                 ; $77bb: $cc $cc $bb
    set 3, l                                      ; $77be: $cb $dd
    db $dd                                        ; $77c0: $dd
    call c, $aacb                                 ; $77c1: $dc $cb $aa
    xor c                                         ; $77c4: $a9
    cp e                                          ; $77c5: $bb
    jp z, $a9ca                                   ; $77c6: $ca $ca $a9

    sbc b                                         ; $77c9: $98
    adc b                                         ; $77ca: $88
    adc b                                         ; $77cb: $88
    ld d, h                                       ; $77cc: $54
    ld h, a                                       ; $77cd: $67
    ld [hl], a                                    ; $77ce: $77
    ld h, [hl]                                    ; $77cf: $66
    ld h, l                                       ; $77d0: $65
    ld b, l                                       ; $77d1: $45
    ld b, e                                       ; $77d2: $43
    inc [hl]                                      ; $77d3: $34
    ld d, h                                       ; $77d4: $54
    ld d, l                                       ; $77d5: $55
    ld d, l                                       ; $77d6: $55
    ld b, l                                       ; $77d7: $45
    ld b, l                                       ; $77d8: $45
    ld d, [hl]                                    ; $77d9: $56
    ld h, [hl]                                    ; $77da: $66
    adc b                                         ; $77db: $88
    sbc c                                         ; $77dc: $99
    add a                                         ; $77dd: $87
    adc c                                         ; $77de: $89
    xor d                                         ; $77df: $aa
    cp d                                          ; $77e0: $ba
    xor d                                         ; $77e1: $aa
    cp d                                          ; $77e2: $ba
    sbc d                                         ; $77e3: $9a
    xor c                                         ; $77e4: $a9
    adc c                                         ; $77e5: $89
    add a                                         ; $77e6: $87
    adc b                                         ; $77e7: $88
    ld [hl], a                                    ; $77e8: $77
    ld h, [hl]                                    ; $77e9: $66
    ld h, [hl]                                    ; $77ea: $66
    ld d, e                                       ; $77eb: $53
    ld [hl+], a                                   ; $77ec: $22
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    ld de, $1111                                  ; $77ef: $11 $11 $11
    inc [hl]                                      ; $77f2: $34
    ld d, l                                       ; $77f3: $55
    ld d, [hl]                                    ; $77f4: $56
    halt                                          ; $77f5: $76
    ld d, l                                       ; $77f6: $55
    ld b, l                                       ; $77f7: $45
    ld h, a                                       ; $77f8: $67
    adc b                                         ; $77f9: $88
    adc c                                         ; $77fa: $89
    sbc c                                         ; $77fb: $99
    sbc b                                         ; $77fc: $98
    halt                                          ; $77fd: $76
    ld [hl], a                                    ; $77fe: $77
    ld [hl], a                                    ; $77ff: $77
    adc b                                         ; $7800: $88
    adc b                                         ; $7801: $88
    ld a, b                                       ; $7802: $78
    adc b                                         ; $7803: $88
    adc b                                         ; $7804: $88
    add a                                         ; $7805: $87
    ld [hl], a                                    ; $7806: $77
    halt                                          ; $7807: $76
    ld h, a                                       ; $7808: $67
    add [hl]                                      ; $7809: $86
    ld b, h                                       ; $780a: $44
    ld b, h                                       ; $780b: $44
    inc sp                                        ; $780c: $33
    ld b, h                                       ; $780d: $44
    ld b, h                                       ; $780e: $44
    ld d, [hl]                                    ; $780f: $56
    adc b                                         ; $7810: $88
    xor e                                         ; $7811: $ab
    xor e                                         ; $7812: $ab
    res 7, e                                      ; $7813: $cb $bb
    cp e                                          ; $7815: $bb
    cp e                                          ; $7816: $bb
    xor c                                         ; $7817: $a9
    sbc b                                         ; $7818: $98
    add a                                         ; $7819: $87
    adc d                                         ; $781a: $8a
    cp d                                          ; $781b: $ba
    sbc d                                         ; $781c: $9a
    xor d                                         ; $781d: $aa
    cp e                                          ; $781e: $bb
    cp [hl]                                       ; $781f: $be
    db $fd                                        ; $7820: $fd
    call $cced                                    ; $7821: $cd $ed $cc
    call c, $e9ba                                 ; $7824: $dc $ba $e9
    ld l, h                                       ; $7827: $6c
    cp h                                          ; $7828: $bc
    add a                                         ; $7829: $87
    adc b                                         ; $782a: $88
    xor b                                         ; $782b: $a8
    cp b                                          ; $782c: $b8
    xor b                                         ; $782d: $a8
    xor c                                         ; $782e: $a9
    sbc b                                         ; $782f: $98
    sbc b                                         ; $7830: $98
    sbc c                                         ; $7831: $99
    sbc c                                         ; $7832: $99
    sbc d                                         ; $7833: $9a
    xor e                                         ; $7834: $ab
    call c, $a9bb                                 ; $7835: $dc $bb $a9
    sbc d                                         ; $7838: $9a
    sbc b                                         ; $7839: $98
    sbc c                                         ; $783a: $99
    xor b                                         ; $783b: $a8
    sbc b                                         ; $783c: $98
    sbc c                                         ; $783d: $99
    add a                                         ; $783e: $87
    ld [hl], l                                    ; $783f: $75
    ld sp, $9998                                  ; $7840: $31 $98 $99
    add a                                         ; $7843: $87
    ld [hl], a                                    ; $7844: $77
    ld h, l                                       ; $7845: $65
    ld d, l                                       ; $7846: $55
    ld d, l                                       ; $7847: $55
    ld d, l                                       ; $7848: $55
    ld b, d                                       ; $7849: $42
    ld h, a                                       ; $784a: $67
    dec h                                         ; $784b: $25
    ld h, h                                       ; $784c: $64
    ld d, [hl]                                    ; $784d: $56
    ld h, h                                       ; $784e: $64
    ld b, e                                       ; $784f: $43
    ld b, e                                       ; $7850: $43
    ld d, e                                       ; $7851: $53
    ld de, $2302                                  ; $7852: $11 $02 $23
    ld [hl+], a                                   ; $7855: $22
    ld b, b                                       ; $7856: $40
    inc sp                                        ; $7857: $33
    ld b, e                                       ; $7858: $43
    ld d, l                                       ; $7859: $55
    ld b, l                                       ; $785a: $45
    ld d, l                                       ; $785b: $55
    ld d, [hl]                                    ; $785c: $56
    ld d, [hl]                                    ; $785d: $56
    sbc d                                         ; $785e: $9a
    add a                                         ; $785f: $87
    adc e                                         ; $7860: $8b
    xor e                                         ; $7861: $ab
    cp c                                          ; $7862: $b9
    sbc c                                         ; $7863: $99
    xor b                                         ; $7864: $a8
    add a                                         ; $7865: $87
    sbc b                                         ; $7866: $98
    ld l, b                                       ; $7867: $68
    ld l, d                                       ; $7868: $6a
    ld a, c                                       ; $7869: $79
    ld a, c                                       ; $786a: $79
    ld l, b                                       ; $786b: $68
    ld l, d                                       ; $786c: $6a
    xor b                                         ; $786d: $a8
    xor e                                         ; $786e: $ab
    cp h                                          ; $786f: $bc
    adc c                                         ; $7870: $89
    sbc d                                         ; $7871: $9a
    xor d                                         ; $7872: $aa
    adc d                                         ; $7873: $8a
    jp z, $98a9                                   ; $7874: $ca $a9 $98

    cp l                                          ; $7877: $bd
    ld [$ecba], a                                 ; $7878: $ea $ba $ec
    call c, $ccbd                                 ; $787b: $dc $bd $cc
    jp z, $98aa                                   ; $787e: $ca $aa $98

    ld h, [hl]                                    ; $7881: $66
    ld h, l                                       ; $7882: $65
    ld d, a                                       ; $7883: $57
    ld [hl], a                                    ; $7884: $77
    ld [hl], a                                    ; $7885: $77
    ld h, [hl]                                    ; $7886: $66
    ld h, l                                       ; $7887: $65
    ld d, h                                       ; $7888: $54
    ld d, h                                       ; $7889: $54
    ld b, h                                       ; $788a: $44
    ld b, e                                       ; $788b: $43
    ld b, l                                       ; $788c: $45
    xor b                                         ; $788d: $a8
    ld a, b                                       ; $788e: $78
    xor d                                         ; $788f: $aa
    xor c                                         ; $7890: $a9
    xor d                                         ; $7891: $aa
    xor d                                         ; $7892: $aa
    sbc d                                         ; $7893: $9a
    xor e                                         ; $7894: $ab
    sbc e                                         ; $7895: $9b
    sub a                                         ; $7896: $97
    adc b                                         ; $7897: $88
    add a                                         ; $7898: $87
    ld h, h                                       ; $7899: $64
    ld d, l                                       ; $789a: $55
    ld d, [hl]                                    ; $789b: $56
    ld h, [hl]                                    ; $789c: $66
    ld h, [hl]                                    ; $789d: $66
    ld d, l                                       ; $789e: $55
    ld b, h                                       ; $789f: $44
    ld d, h                                       ; $78a0: $54
    ld b, h                                       ; $78a1: $44
    ld b, h                                       ; $78a2: $44
    inc [hl]                                      ; $78a3: $34
    ld b, e                                       ; $78a4: $43
    ld b, l                                       ; $78a5: $45
    inc hl                                        ; $78a6: $23
    inc [hl]                                      ; $78a7: $34
    ld d, l                                       ; $78a8: $55
    inc sp                                        ; $78a9: $33
    ld b, h                                       ; $78aa: $44
    ld b, e                                       ; $78ab: $43
    inc sp                                        ; $78ac: $33
    inc sp                                        ; $78ad: $33
    dec [hl]                                      ; $78ae: $35
    ld d, e                                       ; $78af: $53
    inc [hl]                                      ; $78b0: $34
    ld d, l                                       ; $78b1: $55
    ld d, h                                       ; $78b2: $54
    ld [hl], $43                                  ; $78b3: $36 $43
    ld h, a                                       ; $78b5: $67
    ld b, $35                                     ; $78b6: $06 $35
    ld h, c                                       ; $78b8: $61
    ld d, l                                       ; $78b9: $55
    ld b, a                                       ; $78ba: $47
    ld h, h                                       ; $78bb: $64
    ld d, [hl]                                    ; $78bc: $56
    ld h, [hl]                                    ; $78bd: $66
    add a                                         ; $78be: $87
    ld h, [hl]                                    ; $78bf: $66
    adc b                                         ; $78c0: $88
    adc c                                         ; $78c1: $89
    sbc c                                         ; $78c2: $99
    xor e                                         ; $78c3: $ab
    xor e                                         ; $78c4: $ab
    cp e                                          ; $78c5: $bb
    call $eedd                                    ; $78c6: $cd $dd $ee
    rst $28                                       ; $78c9: $ef
    cp $dd                                        ; $78ca: $fe $dd
    call c, $bccc                                 ; $78cc: $dc $cc $bc
    jp z, $aaba                                   ; $78cf: $ca $ba $aa

    xor h                                         ; $78d2: $ac
    sbc d                                         ; $78d3: $9a
    xor h                                         ; $78d4: $ac
    sbc d                                         ; $78d5: $9a
    res 3, c                                      ; $78d6: $cb $99
    add [hl]                                      ; $78d8: $86
    adc d                                         ; $78d9: $8a
    sbc b                                         ; $78da: $98
    ld a, c                                       ; $78db: $79
    halt                                          ; $78dc: $76
    ld a, b                                       ; $78dd: $78
    ld [hl], a                                    ; $78de: $77
    add a                                         ; $78df: $87
    ld h, a                                       ; $78e0: $67
    ld a, b                                       ; $78e1: $78
    sbc b                                         ; $78e2: $98
    sbc c                                         ; $78e3: $99
    jp z, $debb                                   ; $78e4: $ca $bb $de

    cp $dc                                        ; $78e7: $fe $dc
    call z, $bbbb                                 ; $78e9: $cc $bb $bb
    xor d                                         ; $78ec: $aa
    sbc b                                         ; $78ed: $98
    sbc c                                         ; $78ee: $99
    add [hl]                                      ; $78ef: $86
    add [hl]                                      ; $78f0: $86
    ld d, h                                       ; $78f1: $54
    ld [hl-], a                                   ; $78f2: $32
    ld [hl+], a                                   ; $78f3: $22
    ld [hl-], a                                   ; $78f4: $32
    inc hl                                        ; $78f5: $23
    ld b, e                                       ; $78f6: $43
    inc [hl]                                      ; $78f7: $34
    ld d, a                                       ; $78f8: $57
    ld h, a                                       ; $78f9: $67
    ld h, a                                       ; $78fa: $67
    ld d, l                                       ; $78fb: $55
    ld h, a                                       ; $78fc: $67
    ld b, h                                       ; $78fd: $44
    inc sp                                        ; $78fe: $33
    inc [hl]                                      ; $78ff: $34
    ld sp, $0331                                  ; $7900: $31 $31 $03
    ld d, e                                       ; $7903: $53
    inc sp                                        ; $7904: $33
    ld d, h                                       ; $7905: $54
    inc sp                                        ; $7906: $33
    dec [hl]                                      ; $7907: $35
    ld d, e                                       ; $7908: $53
    dec [hl]                                      ; $7909: $35
    ld b, d                                       ; $790a: $42
    ld d, [hl]                                    ; $790b: $56
    ld h, l                                       ; $790c: $65
    ld h, l                                       ; $790d: $65
    ld d, [hl]                                    ; $790e: $56
    ld h, [hl]                                    ; $790f: $66
    ld b, e                                       ; $7910: $43
    inc [hl]                                      ; $7911: $34
    ld h, d                                       ; $7912: $62
    ld b, l                                       ; $7913: $45
    ld b, d                                       ; $7914: $42
    ld [hl+], a                                   ; $7915: $22
    ld b, d                                       ; $7916: $42
    inc hl                                        ; $7917: $23
    ld b, h                                       ; $7918: $44
    ld d, l                                       ; $7919: $55
    ld d, l                                       ; $791a: $55
    ld d, [hl]                                    ; $791b: $56
    ld [hl], a                                    ; $791c: $77
    ld a, c                                       ; $791d: $79
    sbc b                                         ; $791e: $98
    sbc c                                         ; $791f: $99
    adc c                                         ; $7920: $89
    sbc c                                         ; $7921: $99
    xor e                                         ; $7922: $ab
    cp l                                          ; $7923: $bd
    sbc $dc                                       ; $7924: $de $dc
    cp h                                          ; $7926: $bc
    cp h                                          ; $7927: $bc
    call z, $cecd                                 ; $7928: $cc $cd $ce
    xor $ee                                       ; $792b: $ee $ee
    xor $ed                                       ; $792d: $ee $ed
    call c, $ccdc                                 ; $792f: $dc $dc $cc
    res 5, c                                      ; $7932: $cb $a9
    add a                                         ; $7934: $87
    ld h, a                                       ; $7935: $67
    ld [hl], a                                    ; $7936: $77
    ld h, a                                       ; $7937: $67
    ld d, h                                       ; $7938: $54
    ld b, l                                       ; $7939: $45
    ld d, h                                       ; $793a: $54
    ld d, l                                       ; $793b: $55
    ld b, h                                       ; $793c: $44
    ld b, h                                       ; $793d: $44
    inc hl                                        ; $793e: $23
    ld [hl-], a                                   ; $793f: $32
    inc hl                                        ; $7940: $23
    inc sp                                        ; $7941: $33
    ld b, l                                       ; $7942: $45
    ld h, a                                       ; $7943: $67
    sbc b                                         ; $7944: $98
    ld [hl], a                                    ; $7945: $77
    ld [hl], l                                    ; $7946: $75
    ld h, [hl]                                    ; $7947: $66
    halt                                          ; $7948: $76
    ld a, b                                       ; $7949: $78
    adc c                                         ; $794a: $89
    add a                                         ; $794b: $87
    xor d                                         ; $794c: $aa
    xor h                                         ; $794d: $ac
    cp e                                          ; $794e: $bb
    call z, $cbcb                                 ; $794f: $cc $cb $cb
    cp e                                          ; $7952: $bb
    cp d                                          ; $7953: $ba
    sbc c                                         ; $7954: $99
    sbc c                                         ; $7955: $99
    sbc b                                         ; $7956: $98
    adc b                                         ; $7957: $88
    ld [hl], a                                    ; $7958: $77
    ld d, l                                       ; $7959: $55
    ld d, l                                       ; $795a: $55
    ld d, l                                       ; $795b: $55
    ld b, h                                       ; $795c: $44
    inc [hl]                                      ; $795d: $34
    inc sp                                        ; $795e: $33
    ld d, l                                       ; $795f: $55
    ld b, h                                       ; $7960: $44
    ld h, l                                       ; $7961: $65
    ld d, l                                       ; $7962: $55
    ld l, d                                       ; $7963: $6a
    ld a, [$9987]                                 ; $7964: $fa $87 $99
    sbc h                                         ; $7967: $9c
    db $ec                                        ; $7968: $ec
    res 7, h                                      ; $7969: $cb $bc
    cp e                                          ; $796b: $bb
    set 1, h                                      ; $796c: $cb $cc
    sbc $ed                                       ; $796e: $de $ed
    cp e                                          ; $7970: $bb
    xor c                                         ; $7971: $a9
    add a                                         ; $7972: $87
    xor e                                         ; $7973: $ab
    ld [hl], a                                    ; $7974: $77
    ld h, a                                       ; $7975: $67
    ld d, [hl]                                    ; $7976: $56
    ld d, [hl]                                    ; $7977: $56
    add [hl]                                      ; $7978: $86
    ld b, l                                       ; $7979: $45
    ld d, [hl]                                    ; $797a: $56
    add a                                         ; $797b: $87
    ld [hl], a                                    ; $797c: $77
    ld a, b                                       ; $797d: $78
    ld a, c                                       ; $797e: $79
    add a                                         ; $797f: $87
    adc b                                         ; $7980: $88
    add [hl]                                      ; $7981: $86
    adc b                                         ; $7982: $88
    ld h, a                                       ; $7983: $67
    ld [hl], a                                    ; $7984: $77
    ld [hl], h                                    ; $7985: $74
    ld b, h                                       ; $7986: $44
    ld d, l                                       ; $7987: $55
    ld b, e                                       ; $7988: $43
    ld b, h                                       ; $7989: $44
    ld b, h                                       ; $798a: $44
    ld [hl-], a                                   ; $798b: $32
    ld sp, $2112                                  ; $798c: $31 $12 $21
    ld [hl+], a                                   ; $798f: $22
    inc sp                                        ; $7990: $33
    ld b, h                                       ; $7991: $44
    ld d, [hl]                                    ; $7992: $56
    ld h, a                                       ; $7993: $67
    ld h, a                                       ; $7994: $67
    adc b                                         ; $7995: $88
    add a                                         ; $7996: $87
    ld h, a                                       ; $7997: $67
    halt                                          ; $7998: $76
    adc b                                         ; $7999: $88
    ld a, b                                       ; $799a: $78
    sbc d                                         ; $799b: $9a
    xor e                                         ; $799c: $ab
    call z, $fefe                                 ; $799d: $cc $fe $fe
    call c, $cacc                                 ; $79a0: $dc $cc $ca
    res 5, d                                      ; $79a3: $cb $aa
    adc b                                         ; $79a5: $88
    sub [hl]                                      ; $79a6: $96
    adc d                                         ; $79a7: $8a
    add a                                         ; $79a8: $87
    adc c                                         ; $79a9: $89
    sbc c                                         ; $79aa: $99
    xor d                                         ; $79ab: $aa
    sbc c                                         ; $79ac: $99
    sbc c                                         ; $79ad: $99
    xor c                                         ; $79ae: $a9
    add a                                         ; $79af: $87
    adc b                                         ; $79b0: $88
    ld [hl], a                                    ; $79b1: $77
    sbc c                                         ; $79b2: $99
    sbc c                                         ; $79b3: $99
    ld a, h                                       ; $79b4: $7c
    sub l                                         ; $79b5: $95
    xor b                                         ; $79b6: $a8
    and [hl]                                      ; $79b7: $a6
    ld l, c                                       ; $79b8: $69
    sbc b                                         ; $79b9: $98
    ld d, [hl]                                    ; $79ba: $56
    sub l                                         ; $79bb: $95
    ld [hl], a                                    ; $79bc: $77
    ld h, l                                       ; $79bd: $65
    ld d, l                                       ; $79be: $55
    ld h, [hl]                                    ; $79bf: $66
    ld h, [hl]                                    ; $79c0: $66
    ld h, l                                       ; $79c1: $65
    ld b, [hl]                                    ; $79c2: $46
    inc h                                         ; $79c3: $24
    add h                                         ; $79c4: $84
    ld de, $4361                                  ; $79c5: $11 $61 $43
    ld [hl], $66                                  ; $79c8: $36 $66
    ld h, e                                       ; $79ca: $63
    ld h, c                                       ; $79cb: $61
    ld h, h                                       ; $79cc: $64
    ld [hl], a                                    ; $79cd: $77
    ld l, b                                       ; $79ce: $68
    adc b                                         ; $79cf: $88
    adc c                                         ; $79d0: $89
    adc b                                         ; $79d1: $88
    xor b                                         ; $79d2: $a8
    ld l, c                                       ; $79d3: $69
    xor b                                         ; $79d4: $a8
    sbc b                                         ; $79d5: $98
    halt                                          ; $79d6: $76
    ld h, a                                       ; $79d7: $67
    halt                                          ; $79d8: $76
    ld [hl], a                                    ; $79d9: $77
    ld a, b                                       ; $79da: $78
    halt                                          ; $79db: $76
    ld [hl], a                                    ; $79dc: $77
    ld [hl], a                                    ; $79dd: $77
    ld [hl], a                                    ; $79de: $77
    adc c                                         ; $79df: $89
    xor e                                         ; $79e0: $ab
    sbc d                                         ; $79e1: $9a
    jp c, $b99b                                   ; $79e2: $da $9b $b9

    xor c                                         ; $79e5: $a9
    xor d                                         ; $79e6: $aa
    xor d                                         ; $79e7: $aa
    sbc c                                         ; $79e8: $99
    xor c                                         ; $79e9: $a9
    adc e                                         ; $79ea: $8b
    cp l                                          ; $79eb: $bd
    reti                                          ; $79ec: $d9


    xor e                                         ; $79ed: $ab
    db $db                                        ; $79ee: $db
    xor d                                         ; $79ef: $aa
    sbc d                                         ; $79f0: $9a
    cp h                                          ; $79f1: $bc
    db $dd                                        ; $79f2: $dd
    call $cafe                                    ; $79f3: $cd $fe $ca
    cp d                                          ; $79f6: $ba
    cp c                                          ; $79f7: $b9
    xor b                                         ; $79f8: $a8
    add [hl]                                      ; $79f9: $86
    adc c                                         ; $79fa: $89
    ld [hl], a                                    ; $79fb: $77
    ld [hl], l                                    ; $79fc: $75
    ld b, l                                       ; $79fd: $45
    ld d, l                                       ; $79fe: $55
    ld h, l                                       ; $79ff: $65
    ld b, h                                       ; $7a00: $44
    ld b, e                                       ; $7a01: $43
    ld b, d                                       ; $7a02: $42
    inc [hl]                                      ; $7a03: $34
    ld b, e                                       ; $7a04: $43
    inc hl                                        ; $7a05: $23
    ld sp, $0111                                  ; $7a06: $31 $11 $01
    db $10                                        ; $7a09: $10
    inc hl                                        ; $7a0a: $23
    inc sp                                        ; $7a0b: $33
    inc sp                                        ; $7a0c: $33
    ld b, l                                       ; $7a0d: $45
    ld b, h                                       ; $7a0e: $44
    ld d, h                                       ; $7a0f: $54
    ld d, l                                       ; $7a10: $55
    ld d, [hl]                                    ; $7a11: $56
    ld h, a                                       ; $7a12: $67
    ld a, b                                       ; $7a13: $78
    sbc c                                         ; $7a14: $99
    xor d                                         ; $7a15: $aa
    xor d                                         ; $7a16: $aa
    cp e                                          ; $7a17: $bb
    call c, $bbcc                                 ; $7a18: $dc $cc $bb
    xor e                                         ; $7a1b: $ab
    cp e                                          ; $7a1c: $bb
    cp e                                          ; $7a1d: $bb
    cp e                                          ; $7a1e: $bb
    call z, $a9cc                                 ; $7a1f: $cc $cc $a9
    add [hl]                                      ; $7a22: $86
    ld l, c                                       ; $7a23: $69
    jp c, Jump_011_7764                           ; $7a24: $da $64 $77

    ld h, l                                       ; $7a27: $65
    ld d, [hl]                                    ; $7a28: $56
    ld a, b                                       ; $7a29: $78
    ld a, b                                       ; $7a2a: $78
    sbc c                                         ; $7a2b: $99
    adc b                                         ; $7a2c: $88
    sbc e                                         ; $7a2d: $9b
    xor c                                         ; $7a2e: $a9
    xor l                                         ; $7a2f: $ad
    db $db                                        ; $7a30: $db
    call z, $cbbb                                 ; $7a31: $cc $bb $cb
    cp e                                          ; $7a34: $bb
    cp d                                          ; $7a35: $ba
    xor c                                         ; $7a36: $a9
    sbc c                                         ; $7a37: $99
    adc b                                         ; $7a38: $88
    sub a                                         ; $7a39: $97
    ld h, a                                       ; $7a3a: $67
    halt                                          ; $7a3b: $76
    ld h, [hl]                                    ; $7a3c: $66
    ld d, l                                       ; $7a3d: $55
    ld b, h                                       ; $7a3e: $44
    ld d, [hl]                                    ; $7a3f: $56
    ld h, [hl]                                    ; $7a40: $66
    ld h, e                                       ; $7a41: $63
    inc sp                                        ; $7a42: $33
    db $10                                        ; $7a43: $10
    inc d                                         ; $7a44: $14
    inc sp                                        ; $7a45: $33
    ld [hl+], a                                   ; $7a46: $22
    ld h, h                                       ; $7a47: $64
    inc sp                                        ; $7a48: $33
    ld b, e                                       ; $7a49: $43
    ld [hl], $45                                  ; $7a4a: $36 $45
    ld d, a                                       ; $7a4c: $57
    ld [hl], a                                    ; $7a4d: $77
    adc b                                         ; $7a4e: $88
    sbc d                                         ; $7a4f: $9a
    res 7, h                                      ; $7a50: $cb $bc
    xor d                                         ; $7a52: $aa
    call z, Call_011_7ac8                         ; $7a53: $cc $c8 $7a
    xor d                                         ; $7a56: $aa
    ld a, b                                       ; $7a57: $78
    xor e                                         ; $7a58: $ab
    xor b                                         ; $7a59: $a8
    sub a                                         ; $7a5a: $97
    ld a, e                                       ; $7a5b: $7b
    ld a, b                                       ; $7a5c: $78
    ld l, b                                       ; $7a5d: $68
    sbc b                                         ; $7a5e: $98
    ret                                           ; $7a5f: $c9


    xor b                                         ; $7a60: $a8
    adc c                                         ; $7a61: $89
    cp h                                          ; $7a62: $bc
    set 1, h                                      ; $7a63: $cb $cc
    cp h                                          ; $7a65: $bc
    call z, $babb                                 ; $7a66: $cc $bb $ba
    cp e                                          ; $7a69: $bb
    cp d                                          ; $7a6a: $ba
    add a                                         ; $7a6b: $87
    adc b                                         ; $7a6c: $88
    ld d, [hl]                                    ; $7a6d: $56
    sub l                                         ; $7a6e: $95
    ld l, c                                       ; $7a6f: $69
    add a                                         ; $7a70: $87
    add a                                         ; $7a71: $87
    adc b                                         ; $7a72: $88
    ld [hl], a                                    ; $7a73: $77
    cp c                                          ; $7a74: $b9
    or a                                          ; $7a75: $b7
    add a                                         ; $7a76: $87
    ld h, [hl]                                    ; $7a77: $66
    sbc d                                         ; $7a78: $9a
    db $ed                                        ; $7a79: $ed
    call z, $97db                                 ; $7a7a: $cc $db $97
    ld d, l                                       ; $7a7d: $55
    ld d, a                                       ; $7a7e: $57
    ld d, l                                       ; $7a7f: $55
    ld b, l                                       ; $7a80: $45
    ld d, l                                       ; $7a81: $55
    ld [hl], l                                    ; $7a82: $75
    ld b, e                                       ; $7a83: $43
    ld [hl+], a                                   ; $7a84: $22
    inc sp                                        ; $7a85: $33
    dec d                                         ; $7a86: $15
    inc [hl]                                      ; $7a87: $34
    ld b, h                                       ; $7a88: $44
    dec [hl]                                      ; $7a89: $35
    ld b, l                                       ; $7a8a: $45
    ld h, h                                       ; $7a8b: $64
    add [hl]                                      ; $7a8c: $86
    ld h, a                                       ; $7a8d: $67
    sbc b                                         ; $7a8e: $98
    sbc e                                         ; $7a8f: $9b
    cp b                                          ; $7a90: $b8
    sbc c                                         ; $7a91: $99
    sbc c                                         ; $7a92: $99
    adc b                                         ; $7a93: $88
    sbc b                                         ; $7a94: $98
    sbc c                                         ; $7a95: $99
    adc b                                         ; $7a96: $88
    add a                                         ; $7a97: $87
    sub a                                         ; $7a98: $97
    ld [hl], a                                    ; $7a99: $77
    ld d, [hl]                                    ; $7a9a: $56
    ld d, h                                       ; $7a9b: $54
    ld d, l                                       ; $7a9c: $55
    ld b, h                                       ; $7a9d: $44
    ld sp, $3323                                  ; $7a9e: $31 $23 $33
    inc [hl]                                      ; $7aa1: $34
    ld h, [hl]                                    ; $7aa2: $66
    ld h, a                                       ; $7aa3: $67
    ld l, c                                       ; $7aa4: $69
    cp d                                          ; $7aa5: $ba
    cp l                                          ; $7aa6: $bd
    db $ed                                        ; $7aa7: $ed
    cp $cb                                        ; $7aa8: $fe $cb
    call c, $9ab9                                 ; $7aaa: $dc $b9 $9a
    sub [hl]                                      ; $7aad: $96
    xor c                                         ; $7aae: $a9
    sbc e                                         ; $7aaf: $9b
    cp d                                          ; $7ab0: $ba
    res 1, e                                      ; $7ab1: $cb $8b
    adc d                                         ; $7ab3: $8a
    call $adda                                    ; $7ab4: $cd $da $ad
    xor c                                         ; $7ab7: $a9
    xor c                                         ; $7ab8: $a9
    xor d                                         ; $7ab9: $aa
    cp d                                          ; $7aba: $ba
    sbc d                                         ; $7abb: $9a
    xor d                                         ; $7abc: $aa
    xor d                                         ; $7abd: $aa
    xor d                                         ; $7abe: $aa
    or a                                          ; $7abf: $b7
    adc b                                         ; $7ac0: $88
    ld [hl], a                                    ; $7ac1: $77
    ld [hl], a                                    ; $7ac2: $77
    ld h, [hl]                                    ; $7ac3: $66
    ld h, l                                       ; $7ac4: $65
    inc [hl]                                      ; $7ac5: $34
    ld [hl+], a                                   ; $7ac6: $22
    inc hl                                        ; $7ac7: $23

Call_011_7ac8:
    ld de, $0101                                  ; $7ac8: $11 $01 $01
    ld bc, $1211                                  ; $7acb: $01 $11 $12
    inc hl                                        ; $7ace: $23
    ld b, h                                       ; $7acf: $44
    ld d, l                                       ; $7ad0: $55
    ld d, [hl]                                    ; $7ad1: $56
    ld d, l                                       ; $7ad2: $55
    ld d, l                                       ; $7ad3: $55
    ld d, l                                       ; $7ad4: $55
    ld d, l                                       ; $7ad5: $55
    ld h, [hl]                                    ; $7ad6: $66
    ld d, [hl]                                    ; $7ad7: $56
    ld d, l                                       ; $7ad8: $55
    ld h, l                                       ; $7ad9: $65
    ld b, h                                       ; $7ada: $44
    ld b, e                                       ; $7adb: $43
    ld [hl+], a                                   ; $7adc: $22
    inc sp                                        ; $7add: $33
    ld b, l                                       ; $7ade: $45
    ld d, l                                       ; $7adf: $55
    ld h, a                                       ; $7ae0: $67
    ld a, b                                       ; $7ae1: $78
    adc b                                         ; $7ae2: $88
    sbc c                                         ; $7ae3: $99
    xor d                                         ; $7ae4: $aa
    cp h                                          ; $7ae5: $bc
    call z, $dddd                                 ; $7ae6: $cc $dd $dd
    db $dd                                        ; $7ae9: $dd
    xor $dd                                       ; $7aea: $ee $dd
    db $dd                                        ; $7aec: $dd
    xor $fe                                       ; $7aed: $ee $fe
    sbc $ee                                       ; $7aef: $de $ee
    call c, $bbcb                                 ; $7af1: $dc $cb $bb
    call z, $bacd                                 ; $7af4: $cc $cd $ba
    xor d                                         ; $7af7: $aa
    xor e                                         ; $7af8: $ab
    add a                                         ; $7af9: $87
    adc b                                         ; $7afa: $88
    add [hl]                                      ; $7afb: $86
    ld h, [hl]                                    ; $7afc: $66
    ld a, b                                       ; $7afd: $78
    ld d, a                                       ; $7afe: $57
    ld d, h                                       ; $7aff: $54
    ld h, a                                       ; $7b00: $67
    ld d, a                                       ; $7b01: $57
    ld [hl], a                                    ; $7b02: $77
    ld h, a                                       ; $7b03: $67
    sbc c                                         ; $7b04: $99
    ld a, c                                       ; $7b05: $79
    sbc d                                         ; $7b06: $9a
    cp e                                          ; $7b07: $bb
    xor d                                         ; $7b08: $aa
    adc c                                         ; $7b09: $89
    add a                                         ; $7b0a: $87
    ld [hl], a                                    ; $7b0b: $77
    ld [hl], a                                    ; $7b0c: $77
    ld h, h                                       ; $7b0d: $64
    ld h, l                                       ; $7b0e: $65
    ld d, a                                       ; $7b0f: $57
    ld b, h                                       ; $7b10: $44
    ld b, l                                       ; $7b11: $45
    ld h, l                                       ; $7b12: $65
    ld h, l                                       ; $7b13: $65
    ld d, l                                       ; $7b14: $55
    ld d, e                                       ; $7b15: $53
    ld d, e                                       ; $7b16: $53
    inc b                                         ; $7b17: $04
    inc h                                         ; $7b18: $24
    ld b, e                                       ; $7b19: $43
    ld b, h                                       ; $7b1a: $44
    inc h                                         ; $7b1b: $24
    ld b, l                                       ; $7b1c: $45
    inc sp                                        ; $7b1d: $33
    ld b, h                                       ; $7b1e: $44
    ld b, h                                       ; $7b1f: $44
    ld b, h                                       ; $7b20: $44
    ld b, h                                       ; $7b21: $44
    ld b, l                                       ; $7b22: $45
    ld a, c                                       ; $7b23: $79
    xor b                                         ; $7b24: $a8
    ld b, h                                       ; $7b25: $44
    ld d, [hl]                                    ; $7b26: $56
    adc b                                         ; $7b27: $88
    add a                                         ; $7b28: $87
    sbc d                                         ; $7b29: $9a
    ld a, b                                       ; $7b2a: $78
    sbc b                                         ; $7b2b: $98
    adc b                                         ; $7b2c: $88
    adc b                                         ; $7b2d: $88
    ld a, b                                       ; $7b2e: $78
    adc b                                         ; $7b2f: $88
    adc b                                         ; $7b30: $88
    sbc d                                         ; $7b31: $9a
    adc b                                         ; $7b32: $88
    sbc b                                         ; $7b33: $98
    adc b                                         ; $7b34: $88
    ld a, b                                       ; $7b35: $78
    adc c                                         ; $7b36: $89
    sbc c                                         ; $7b37: $99
    sbc c                                         ; $7b38: $99
    xor e                                         ; $7b39: $ab
    xor d                                         ; $7b3a: $aa
    xor c                                         ; $7b3b: $a9
    cp e                                          ; $7b3c: $bb
    call c, $ca8a                                 ; $7b3d: $dc $8a $ca
    xor h                                         ; $7b40: $ac
    xor d                                         ; $7b41: $aa
    xor c                                         ; $7b42: $a9
    add a                                         ; $7b43: $87
    ld a, b                                       ; $7b44: $78
    ld d, e                                       ; $7b45: $53
    dec [hl]                                      ; $7b46: $35
    ld b, e                                       ; $7b47: $43
    ld [hl], d                                    ; $7b48: $72
    ld d, h                                       ; $7b49: $54
    ld h, h                                       ; $7b4a: $64
    dec [hl]                                      ; $7b4b: $35
    ld b, e                                       ; $7b4c: $43
    ld h, [hl]                                    ; $7b4d: $66
    ld a, b                                       ; $7b4e: $78
    ld h, a                                       ; $7b4f: $67
    sub a                                         ; $7b50: $97
    ld [hl], a                                    ; $7b51: $77
    ld [hl], a                                    ; $7b52: $77
    ld [hl], a                                    ; $7b53: $77
    halt                                          ; $7b54: $76
    ld h, a                                       ; $7b55: $67
    ld h, [hl]                                    ; $7b56: $66
    ld d, [hl]                                    ; $7b57: $56
    ld h, l                                       ; $7b58: $65
    halt                                          ; $7b59: $76
    adc b                                         ; $7b5a: $88
    sub a                                         ; $7b5b: $97
    add [hl]                                      ; $7b5c: $86
    halt                                          ; $7b5d: $76
    ld d, l                                       ; $7b5e: $55
    ld d, l                                       ; $7b5f: $55
    ld d, e                                       ; $7b60: $53
    ld d, l                                       ; $7b61: $55
    ld d, [hl]                                    ; $7b62: $56
    halt                                          ; $7b63: $76
    ld l, c                                       ; $7b64: $69
    ld a, c                                       ; $7b65: $79
    sbc c                                         ; $7b66: $99
    sbc e                                         ; $7b67: $9b
    cp h                                          ; $7b68: $bc
    cp [hl]                                       ; $7b69: $be
    rst $08                                       ; $7b6a: $cf
    cp l                                          ; $7b6b: $bd
    xor [hl]                                      ; $7b6c: $ae
    xor h                                         ; $7b6d: $ac
    cp d                                          ; $7b6e: $ba
    cp h                                          ; $7b6f: $bc
    db $dd                                        ; $7b70: $dd
    xor $ec                                       ; $7b71: $ee $ec
    cp h                                          ; $7b73: $bc
    call c, $bdcb                                 ; $7b74: $dc $cb $bd
    call c, $eeee                                 ; $7b77: $dc $ee $ee
    db $dd                                        ; $7b7a: $dd
    call c, $abbc                                 ; $7b7b: $dc $bc $ab
    xor b                                         ; $7b7e: $a8
    adc b                                         ; $7b7f: $88
    add a                                         ; $7b80: $87
    ld h, l                                       ; $7b81: $65
    ld b, h                                       ; $7b82: $44
    ld b, e                                       ; $7b83: $43
    inc sp                                        ; $7b84: $33
    ld [hl-], a                                   ; $7b85: $32
    ld [hl+], a                                   ; $7b86: $22
    inc sp                                        ; $7b87: $33
    inc sp                                        ; $7b88: $33
    ld b, h                                       ; $7b89: $44
    ld b, l                                       ; $7b8a: $45
    ld h, [hl]                                    ; $7b8b: $66
    ld a, c                                       ; $7b8c: $79
    adc b                                         ; $7b8d: $88
    ld h, [hl]                                    ; $7b8e: $66
    halt                                          ; $7b8f: $76
    ld h, a                                       ; $7b90: $67
    ld [hl], a                                    ; $7b91: $77
    sbc b                                         ; $7b92: $98
    xor e                                         ; $7b93: $ab
    res 7, d                                      ; $7b94: $cb $ba
    and a                                         ; $7b96: $a7
    cp d                                          ; $7b97: $ba
    cp d                                          ; $7b98: $ba
    sub a                                         ; $7b99: $97
    sub [hl]                                      ; $7b9a: $96
    ld [hl], a                                    ; $7b9b: $77
    add a                                         ; $7b9c: $87
    adc b                                         ; $7b9d: $88
    ld [hl], l                                    ; $7b9e: $75
    ld d, l                                       ; $7b9f: $55
    ld b, [hl]                                    ; $7ba0: $46
    ld b, c                                       ; $7ba1: $41
    inc de                                        ; $7ba2: $13
    inc [hl]                                      ; $7ba3: $34
    ld d, l                                       ; $7ba4: $55
    ld d, l                                       ; $7ba5: $55
    ld b, h                                       ; $7ba6: $44
    inc hl                                        ; $7ba7: $23
    ld b, h                                       ; $7ba8: $44
    ld d, [hl]                                    ; $7ba9: $56
    ld h, [hl]                                    ; $7baa: $66
    ld h, l                                       ; $7bab: $65
    inc hl                                        ; $7bac: $23
    ld b, a                                       ; $7bad: $47
    cp d                                          ; $7bae: $ba
    ld h, a                                       ; $7baf: $67
    add l                                         ; $7bb0: $85
    ld h, [hl]                                    ; $7bb1: $66
    ld d, l                                       ; $7bb2: $55
    ld d, l                                       ; $7bb3: $55
    ld d, a                                       ; $7bb4: $57
    ld d, l                                       ; $7bb5: $55
    halt                                          ; $7bb6: $76
    halt                                          ; $7bb7: $76
    ld h, [hl]                                    ; $7bb8: $66
    ld a, c                                       ; $7bb9: $79
    add a                                         ; $7bba: $87
    ld [hl], l                                    ; $7bbb: $75
    ld h, a                                       ; $7bbc: $67
    halt                                          ; $7bbd: $76
    ld d, a                                       ; $7bbe: $57
    adc d                                         ; $7bbf: $8a
    adc d                                         ; $7bc0: $8a
    adc b                                         ; $7bc1: $88
    xor c                                         ; $7bc2: $a9
    sbc c                                         ; $7bc3: $99
    ld a, b                                       ; $7bc4: $78
    halt                                          ; $7bc5: $76
    ld h, l                                       ; $7bc6: $65
    ld h, [hl]                                    ; $7bc7: $66
    inc [hl]                                      ; $7bc8: $34
    dec [hl]                                      ; $7bc9: $35
    ld d, l                                       ; $7bca: $55
    ld d, h                                       ; $7bcb: $54
    ld b, h                                       ; $7bcc: $44
    halt                                          ; $7bcd: $76
    ld h, l                                       ; $7bce: $65
    inc [hl]                                      ; $7bcf: $34
    ld d, a                                       ; $7bd0: $57
    ld h, [hl]                                    ; $7bd1: $66
    ld d, [hl]                                    ; $7bd2: $56
    ld a, b                                       ; $7bd3: $78
    adc c                                         ; $7bd4: $89
    add a                                         ; $7bd5: $87
    sbc c                                         ; $7bd6: $99
    sbc d                                         ; $7bd7: $9a
    add a                                         ; $7bd8: $87
    sbc d                                         ; $7bd9: $9a
    xor d                                         ; $7bda: $aa
    res 5, e                                      ; $7bdb: $cb $ab
    adc c                                         ; $7bdd: $89
    db $ed                                        ; $7bde: $ed
    cp c                                          ; $7bdf: $b9
    sbc e                                         ; $7be0: $9b
    db $fd                                        ; $7be1: $fd
    cp h                                          ; $7be2: $bc
    sbc c                                         ; $7be3: $99
    call z, $acba                                 ; $7be4: $cc $ba $ac
    sbc c                                         ; $7be7: $99
    xor c                                         ; $7be8: $a9
    cp b                                          ; $7be9: $b8
    sbc b                                         ; $7bea: $98
    ld a, b                                       ; $7beb: $78
    ld d, [hl]                                    ; $7bec: $56
    ld h, h                                       ; $7bed: $64
    ld [hl], l                                    ; $7bee: $75
    ld b, a                                       ; $7bef: $47
    sbc h                                         ; $7bf0: $9c
    ld [$a8cb], a                                 ; $7bf1: $ea $cb $a8
    ld h, h                                       ; $7bf4: $64
    adc b                                         ; $7bf5: $88
    adc e                                         ; $7bf6: $8b
    and a                                         ; $7bf7: $a7
    ld d, h                                       ; $7bf8: $54
    ld h, [hl]                                    ; $7bf9: $66
    ld a, b                                       ; $7bfa: $78
    add a                                         ; $7bfb: $87
    ld a, c                                       ; $7bfc: $79
    xor c                                         ; $7bfd: $a9
    ld l, c                                       ; $7bfe: $69
    sbc b                                         ; $7bff: $98
    adc b                                         ; $7c00: $88
    ld [hl], a                                    ; $7c01: $77
    ld [hl], a                                    ; $7c02: $77
    add a                                         ; $7c03: $87
    ld h, [hl]                                    ; $7c04: $66
    ld d, h                                       ; $7c05: $54
    inc sp                                        ; $7c06: $33
    inc sp                                        ; $7c07: $33
    inc sp                                        ; $7c08: $33
    ld b, l                                       ; $7c09: $45
    ld b, l                                       ; $7c0a: $45
    ld [hl-], a                                   ; $7c0b: $32
    ld [hl-], a                                   ; $7c0c: $32
    ld [de], a                                    ; $7c0d: $12
    ld b, c                                       ; $7c0e: $41
    inc de                                        ; $7c0f: $13
    dec [hl]                                      ; $7c10: $35
    ld b, [hl]                                    ; $7c11: $46
    ld b, l                                       ; $7c12: $45
    ld d, a                                       ; $7c13: $57
    ld d, [hl]                                    ; $7c14: $56
    add a                                         ; $7c15: $87
    adc b                                         ; $7c16: $88
    ld a, d                                       ; $7c17: $7a
    xor c                                         ; $7c18: $a9
    sbc d                                         ; $7c19: $9a
    sbc c                                         ; $7c1a: $99
    sbc d                                         ; $7c1b: $9a
    cp h                                          ; $7c1c: $bc
    jp z, $9aba                                   ; $7c1d: $ca $ba $9a

    xor c                                         ; $7c20: $a9
    xor d                                         ; $7c21: $aa
    sbc c                                         ; $7c22: $99
    sbc c                                         ; $7c23: $99
    sbc b                                         ; $7c24: $98
    sbc c                                         ; $7c25: $99
    sbc b                                         ; $7c26: $98
    adc b                                         ; $7c27: $88
    sbc c                                         ; $7c28: $99
    sbc e                                         ; $7c29: $9b
    cp e                                          ; $7c2a: $bb
    res 7, d                                      ; $7c2b: $cb $ba
    xor d                                         ; $7c2d: $aa
    sbc c                                         ; $7c2e: $99
    sbc b                                         ; $7c2f: $98
    add a                                         ; $7c30: $87
    adc b                                         ; $7c31: $88
    add a                                         ; $7c32: $87
    ld d, [hl]                                    ; $7c33: $56
    ld h, [hl]                                    ; $7c34: $66
    ld h, a                                       ; $7c35: $67
    sub a                                         ; $7c36: $97
    ld h, a                                       ; $7c37: $67
    ld h, [hl]                                    ; $7c38: $66
    ld h, [hl]                                    ; $7c39: $66
    halt                                          ; $7c3a: $76
    ld d, [hl]                                    ; $7c3b: $56
    sbc d                                         ; $7c3c: $9a
    rst $38                                       ; $7c3d: $ff
    cp d                                          ; $7c3e: $ba
    xor b                                         ; $7c3f: $a8
    add [hl]                                      ; $7c40: $86
    and [hl]                                      ; $7c41: $a6
    cp d                                          ; $7c42: $ba
    adc e                                         ; $7c43: $8b
    ret z                                         ; $7c44: $c8

    cp e                                          ; $7c45: $bb
    sbc h                                         ; $7c46: $9c
    xor d                                         ; $7c47: $aa
    cp c                                          ; $7c48: $b9
    or [hl]                                       ; $7c49: $b6
    ld [hl], l                                    ; $7c4a: $75
    ld h, a                                       ; $7c4b: $67
    add [hl]                                      ; $7c4c: $86
    add l                                         ; $7c4d: $85
    ld a, b                                       ; $7c4e: $78
    ld d, l                                       ; $7c4f: $55
    ld h, l                                       ; $7c50: $65
    add [hl]                                      ; $7c51: $86
    halt                                          ; $7c52: $76
    ld [hl], l                                    ; $7c53: $75
    ld h, a                                       ; $7c54: $67
    ld d, [hl]                                    ; $7c55: $56
    ld h, [hl]                                    ; $7c56: $66
    ld a, b                                       ; $7c57: $78
    adc b                                         ; $7c58: $88
    xor d                                         ; $7c59: $aa
    xor d                                         ; $7c5a: $aa
    xor e                                         ; $7c5b: $ab
    xor d                                         ; $7c5c: $aa
    sbc d                                         ; $7c5d: $9a
    ld h, l                                       ; $7c5e: $65
    ld [hl], a                                    ; $7c5f: $77
    ld h, a                                       ; $7c60: $67
    ld h, a                                       ; $7c61: $67
    ld h, [hl]                                    ; $7c62: $66
    ld h, l                                       ; $7c63: $65
    ld d, l                                       ; $7c64: $55
    ld b, h                                       ; $7c65: $44
    inc sp                                        ; $7c66: $33
    inc hl                                        ; $7c67: $23
    ld b, h                                       ; $7c68: $44
    inc [hl]                                      ; $7c69: $34
    inc sp                                        ; $7c6a: $33
    inc sp                                        ; $7c6b: $33
    inc sp                                        ; $7c6c: $33
    ld sp, $0010                                  ; $7c6d: $31 $10 $00
    ld [de], a                                    ; $7c70: $12
    ld [hl-], a                                   ; $7c71: $32
    inc hl                                        ; $7c72: $23
    inc [hl]                                      ; $7c73: $34
    inc [hl]                                      ; $7c74: $34
    ld b, l                                       ; $7c75: $45
    ld h, l                                       ; $7c76: $65
    adc b                                         ; $7c77: $88
    adc c                                         ; $7c78: $89
    ld a, c                                       ; $7c79: $79
    ld [hl], a                                    ; $7c7a: $77
    ld h, a                                       ; $7c7b: $67
    ld [hl], a                                    ; $7c7c: $77
    halt                                          ; $7c7d: $76
    add a                                         ; $7c7e: $87
    adc c                                         ; $7c7f: $89
    sbc c                                         ; $7c80: $99
    cp h                                          ; $7c81: $bc
    cp d                                          ; $7c82: $ba
    cp e                                          ; $7c83: $bb
    call z, $bbbb                                 ; $7c84: $cc $bb $bb
    jp z, $8999                                   ; $7c87: $ca $99 $89

    ld a, b                                       ; $7c8a: $78
    ld a, b                                       ; $7c8b: $78
    sbc b                                         ; $7c8c: $98
    sbc b                                         ; $7c8d: $98
    adc c                                         ; $7c8e: $89
    sbc c                                         ; $7c8f: $99
    sbc d                                         ; $7c90: $9a
    xor d                                         ; $7c91: $aa
    rst $08                                       ; $7c92: $cf
    xor l                                         ; $7c93: $ad
    xor [hl]                                      ; $7c94: $ae
    call c, $cbac                                 ; $7c95: $dc $ac $cb
    cp e                                          ; $7c98: $bb
    call z, $cbcd                                 ; $7c99: $cc $cd $cb
    cp d                                          ; $7c9c: $ba
    res 1, e                                      ; $7c9d: $cb $8b
    xor c                                         ; $7c9f: $a9
    sbc d                                         ; $7ca0: $9a
    call z, $aaac                                 ; $7ca1: $cc $ac $aa
    ret z                                         ; $7ca4: $c8

    add a                                         ; $7ca5: $87
    ld a, c                                       ; $7ca6: $79
    ld a, c                                       ; $7ca7: $79
    ld d, l                                       ; $7ca8: $55
    add a                                         ; $7ca9: $87
    ld d, e                                       ; $7caa: $53
    ld h, l                                       ; $7cab: $65
    ld d, a                                       ; $7cac: $57
    inc hl                                        ; $7cad: $23
    ld d, h                                       ; $7cae: $54
    ld sp, $0222                                  ; $7caf: $31 $22 $02
    ld [hl+], a                                   ; $7cb2: $22
    ld b, h                                       ; $7cb3: $44
    ld [hl-], a                                   ; $7cb4: $32
    ld sp, $0211                                  ; $7cb5: $31 $11 $02
    ld de, $3423                                  ; $7cb8: $11 $23 $34
    ld h, l                                       ; $7cbb: $65
    ld h, [hl]                                    ; $7cbc: $66
    ld h, a                                       ; $7cbd: $67
    ld [hl], a                                    ; $7cbe: $77
    halt                                          ; $7cbf: $76
    ld h, [hl]                                    ; $7cc0: $66
    ld h, l                                       ; $7cc1: $65
    ld d, [hl]                                    ; $7cc2: $56
    ld h, l                                       ; $7cc3: $65
    ld h, [hl]                                    ; $7cc4: $66
    halt                                          ; $7cc5: $76
    add [hl]                                      ; $7cc6: $86
    ld h, [hl]                                    ; $7cc7: $66
    halt                                          ; $7cc8: $76
    ld a, b                                       ; $7cc9: $78
    halt                                          ; $7cca: $76
    adc b                                         ; $7ccb: $88
    adc c                                         ; $7ccc: $89
    sbc c                                         ; $7ccd: $99
    sbc d                                         ; $7cce: $9a
    cp e                                          ; $7ccf: $bb
    xor e                                         ; $7cd0: $ab
    xor e                                         ; $7cd1: $ab
    jp z, $abbb                                   ; $7cd2: $ca $bb $ab

    cp l                                          ; $7cd5: $bd
    jp z, $a9bc                                   ; $7cd6: $ca $bc $a9

    xor d                                         ; $7cd9: $aa
    xor h                                         ; $7cda: $ac
    call c, $eeed                                 ; $7cdb: $dc $ed $ee
    db $dd                                        ; $7cde: $dd
    call z, $959a                                 ; $7cdf: $cc $9a $95
    ld h, [hl]                                    ; $7ce2: $66
    ld d, l                                       ; $7ce3: $55
    ld l, b                                       ; $7ce4: $68
    ld d, a                                       ; $7ce5: $57
    ld [hl], h                                    ; $7ce6: $74
    ld d, a                                       ; $7ce7: $57
    ld [hl], a                                    ; $7ce8: $77
    xor c                                         ; $7ce9: $a9
    adc d                                         ; $7cea: $8a
    ld a, d                                       ; $7ceb: $7a
    sub [hl]                                      ; $7cec: $96
    adc c                                         ; $7ced: $89
    ld a, c                                       ; $7cee: $79
    add [hl]                                      ; $7cef: $86
    add [hl]                                      ; $7cf0: $86
    ld d, [hl]                                    ; $7cf1: $56
    ld h, a                                       ; $7cf2: $67
    halt                                          ; $7cf3: $76
    ld h, l                                       ; $7cf4: $65
    ld d, l                                       ; $7cf5: $55
    ld d, e                                       ; $7cf6: $53
    inc sp                                        ; $7cf7: $33
    ld [hl-], a                                   ; $7cf8: $32
    ld [hl+], a                                   ; $7cf9: $22
    inc hl                                        ; $7cfa: $23
    inc sp                                        ; $7cfb: $33
    ld b, l                                       ; $7cfc: $45
    ld h, l                                       ; $7cfd: $65
    ld d, h                                       ; $7cfe: $54
    ld d, h                                       ; $7cff: $54
    inc hl                                        ; $7d00: $23
    ld hl, $2212                                  ; $7d01: $21 $12 $22
    ld [hl+], a                                   ; $7d04: $22
    inc hl                                        ; $7d05: $23
    ld b, a                                       ; $7d06: $47
    ld a, b                                       ; $7d07: $78
    ld d, [hl]                                    ; $7d08: $56
    adc b                                         ; $7d09: $88
    xor c                                         ; $7d0a: $a9
    cp b                                          ; $7d0b: $b8
    ld [hl], a                                    ; $7d0c: $77
    sbc c                                         ; $7d0d: $99
    sbc h                                         ; $7d0e: $9c
    xor d                                         ; $7d0f: $aa
    sbc b                                         ; $7d10: $98
    ld a, b                                       ; $7d11: $78
    ld [hl], a                                    ; $7d12: $77
    sbc c                                         ; $7d13: $99
    adc c                                         ; $7d14: $89
    cp d                                          ; $7d15: $ba
    xor d                                         ; $7d16: $aa
    xor e                                         ; $7d17: $ab
    cp d                                          ; $7d18: $ba
    call $dedd                                    ; $7d19: $cd $dd $de
    db $dd                                        ; $7d1c: $dd
    sbc $ee                                       ; $7d1d: $de $ee
    db $ed                                        ; $7d1f: $ed
    db $db                                        ; $7d20: $db
    cp d                                          ; $7d21: $ba
    sbc h                                         ; $7d22: $9c
    ld h, h                                       ; $7d23: $64
    ld e, c                                       ; $7d24: $59
    ld l, c                                       ; $7d25: $69
    xor c                                         ; $7d26: $a9
    res 7, h                                      ; $7d27: $cb $bc
    adc e                                         ; $7d29: $8b
    cp d                                          ; $7d2a: $ba
    xor e                                         ; $7d2b: $ab
    cp d                                          ; $7d2c: $ba
    sbc b                                         ; $7d2d: $98
    add a                                         ; $7d2e: $87
    adc c                                         ; $7d2f: $89
    sbc b                                         ; $7d30: $98
    add a                                         ; $7d31: $87
    ld d, [hl]                                    ; $7d32: $56
    ld l, b                                       ; $7d33: $68
    ld d, l                                       ; $7d34: $55
    ld d, h                                       ; $7d35: $54
    ld d, h                                       ; $7d36: $54
    ld h, l                                       ; $7d37: $65
    halt                                          ; $7d38: $76
    ld l, b                                       ; $7d39: $68
    adc b                                         ; $7d3a: $88
    adc d                                         ; $7d3b: $8a
    cp e                                          ; $7d3c: $bb
    xor d                                         ; $7d3d: $aa
    xor d                                         ; $7d3e: $aa
    cp d                                          ; $7d3f: $ba
    sbc d                                         ; $7d40: $9a
    adc b                                         ; $7d41: $88
    adc b                                         ; $7d42: $88
    ld d, h                                       ; $7d43: $54
    ld h, l                                       ; $7d44: $65
    ld b, e                                       ; $7d45: $43
    ld [hl-], a                                   ; $7d46: $32
    ld bc, $3212                                  ; $7d47: $01 $12 $32
    ld [de], a                                    ; $7d4a: $12
    db $10                                        ; $7d4b: $10
    ld [de], a                                    ; $7d4c: $12
    ld b, a                                       ; $7d4d: $47
    ld h, c                                       ; $7d4e: $61
    ld d, e                                       ; $7d4f: $53
    ld h, e                                       ; $7d50: $63
    ld hl, $3412                                  ; $7d51: $21 $12 $34
    ld d, l                                       ; $7d54: $55
    ld h, a                                       ; $7d55: $67
    ld a, c                                       ; $7d56: $79
    xor e                                         ; $7d57: $ab
    set 1, e                                      ; $7d58: $cb $cb
    cp d                                          ; $7d5a: $ba
    call z, $b7dc                                 ; $7d5b: $cc $dc $b7
    add l                                         ; $7d5e: $85
    xor $6b                                       ; $7d5f: $ee $6b
    sub $cd                                       ; $7d61: $d6 $cd
    ld e, c                                       ; $7d63: $59
    or l                                          ; $7d64: $b5
    adc b                                         ; $7d65: $88
    ld [hl], a                                    ; $7d66: $77
    adc d                                         ; $7d67: $8a
    adc c                                         ; $7d68: $89
    adc c                                         ; $7d69: $89
    sbc c                                         ; $7d6a: $99
    sbc b                                         ; $7d6b: $98
    ld [hl], a                                    ; $7d6c: $77
    ld [hl], a                                    ; $7d6d: $77
    adc b                                         ; $7d6e: $88
    adc c                                         ; $7d6f: $89
    sbc b                                         ; $7d70: $98
    adc c                                         ; $7d71: $89
    xor c                                         ; $7d72: $a9
    sbc b                                         ; $7d73: $98
    sbc c                                         ; $7d74: $99
    jp z, $db9a                                   ; $7d75: $ca $9a $db

    sbc d                                         ; $7d78: $9a
    adc b                                         ; $7d79: $88
    ld e, c                                       ; $7d7a: $59
    ld a, c                                       ; $7d7b: $79
    halt                                          ; $7d7c: $76
    add h                                         ; $7d7d: $84
    ld h, l                                       ; $7d7e: $65
    ld l, d                                       ; $7d7f: $6a
    add [hl]                                      ; $7d80: $86
    sbc e                                         ; $7d81: $9b
    cp b                                          ; $7d82: $b8
    adc b                                         ; $7d83: $88
    ld [hl], a                                    ; $7d84: $77
    ld h, e                                       ; $7d85: $63
    inc d                                         ; $7d86: $14
    ld d, e                                       ; $7d87: $53
    ld [de], a                                    ; $7d88: $12
    ld [hl], l                                    ; $7d89: $75
    ld h, h                                       ; $7d8a: $64
    ld e, b                                       ; $7d8b: $58
    ld h, a                                       ; $7d8c: $67
    xor c                                         ; $7d8d: $a9
    sbc d                                         ; $7d8e: $9a
    xor c                                         ; $7d8f: $a9
    adc b                                         ; $7d90: $88
    add a                                         ; $7d91: $87
    add a                                         ; $7d92: $87
    ld h, a                                       ; $7d93: $67
    add a                                         ; $7d94: $87
    ld [hl], a                                    ; $7d95: $77
    ld [hl], a                                    ; $7d96: $77
    halt                                          ; $7d97: $76
    ld [hl], a                                    ; $7d98: $77
    ld h, a                                       ; $7d99: $67
    ld [hl], a                                    ; $7d9a: $77
    ld d, l                                       ; $7d9b: $55
    ld b, e                                       ; $7d9c: $43
    ld b, h                                       ; $7d9d: $44
    ld d, [hl]                                    ; $7d9e: $56
    ld h, l                                       ; $7d9f: $65
    ld d, a                                       ; $7da0: $57
    ld d, l                                       ; $7da1: $55
    inc [hl]                                      ; $7da2: $34
    ld b, h                                       ; $7da3: $44
    inc sp                                        ; $7da4: $33
    inc de                                        ; $7da5: $13
    ld b, [hl]                                    ; $7da6: $46
    halt                                          ; $7da7: $76
    ld [hl], a                                    ; $7da8: $77
    halt                                          ; $7da9: $76
    ld [hl], a                                    ; $7daa: $77
    ld h, a                                       ; $7dab: $67
    ld a, b                                       ; $7dac: $78
    sbc c                                         ; $7dad: $99
    sbc b                                         ; $7dae: $98
    adc c                                         ; $7daf: $89
    adc c                                         ; $7db0: $89
    adc c                                         ; $7db1: $89
    sbc d                                         ; $7db2: $9a
    cp e                                          ; $7db3: $bb
    db $dd                                        ; $7db4: $dd
    sbc $dd                                       ; $7db5: $de $dd
    sbc $ee                                       ; $7db7: $de $ee
    rst $28                                       ; $7db9: $ef
    db $fd                                        ; $7dba: $fd
    rst $18                                       ; $7dbb: $df
    db $dd                                        ; $7dbc: $dd
    call c, $99dc                                 ; $7dbd: $dc $dc $99
    sbc c                                         ; $7dc0: $99
    ld a, b                                       ; $7dc1: $78
    ld b, d                                       ; $7dc2: $42
    ld d, a                                       ; $7dc3: $57
    ld d, l                                       ; $7dc4: $55
    dec h                                         ; $7dc5: $25
    ld h, e                                       ; $7dc6: $63
    ld d, h                                       ; $7dc7: $54
    ld b, e                                       ; $7dc8: $43
    ld b, e                                       ; $7dc9: $43
    dec [hl]                                      ; $7dca: $35
    ld b, h                                       ; $7dcb: $44
    ld d, l                                       ; $7dcc: $55
    ld [hl], l                                    ; $7dcd: $75
    ld [hl], l                                    ; $7dce: $75
    ld d, h                                       ; $7dcf: $54
    ld h, [hl]                                    ; $7dd0: $66
    ld [hl], a                                    ; $7dd1: $77
    halt                                          ; $7dd2: $76
    ld h, l                                       ; $7dd3: $65
    ld b, d                                       ; $7dd4: $42
    ld b, a                                       ; $7dd5: $47
    inc hl                                        ; $7dd6: $23
    ld e, b                                       ; $7dd7: $58
    ld a, b                                       ; $7dd8: $78
    ld l, b                                       ; $7dd9: $68
    sub [hl]                                      ; $7dda: $96
    dec sp                                        ; $7ddb: $3b
    add h                                         ; $7ddc: $84
    ld h, [hl]                                    ; $7ddd: $66
    scf                                           ; $7dde: $37
    cp e                                          ; $7ddf: $bb
    cp h                                          ; $7de0: $bc
    sbc h                                         ; $7de1: $9c
    sbc $dd                                       ; $7de2: $de $dd
    call z, $acdb                                 ; $7de4: $cc $db $ac
    xor c                                         ; $7de7: $a9
    sbc d                                         ; $7de8: $9a
    cp c                                          ; $7de9: $b9
    xor e                                         ; $7dea: $ab
    sbc d                                         ; $7deb: $9a
    sbc c                                         ; $7dec: $99
    sbc c                                         ; $7ded: $99
    adc c                                         ; $7dee: $89
    ld h, a                                       ; $7def: $67
    add h                                         ; $7df0: $84
    ld d, l                                       ; $7df1: $55
    ld b, [hl]                                    ; $7df2: $46
    ld d, l                                       ; $7df3: $55
    ld h, l                                       ; $7df4: $65
    ld h, d                                       ; $7df5: $62
    inc sp                                        ; $7df6: $33
    ld [de], a                                    ; $7df7: $12
    ld hl, $2213                                  ; $7df8: $21 $13 $22
    inc sp                                        ; $7dfb: $33
    inc [hl]                                      ; $7dfc: $34
    inc [hl]                                      ; $7dfd: $34
    ld b, h                                       ; $7dfe: $44
    ld d, [hl]                                    ; $7dff: $56
    ld l, b                                       ; $7e00: $68
    adc b                                         ; $7e01: $88
    sbc e                                         ; $7e02: $9b
    sbc d                                         ; $7e03: $9a
    sbc c                                         ; $7e04: $99
    sbc d                                         ; $7e05: $9a
    sbc d                                         ; $7e06: $9a
    sbc d                                         ; $7e07: $9a
    sbc c                                         ; $7e08: $99
    sbc d                                         ; $7e09: $9a
    xor d                                         ; $7e0a: $aa
    cp h                                          ; $7e0b: $bc
    cp [hl]                                       ; $7e0c: $be
    call z, $dddc                                 ; $7e0d: $cc $dc $dd
    db $dd                                        ; $7e10: $dd
    jp z, $a9ba                                   ; $7e11: $ca $ba $a9

    add a                                         ; $7e14: $87
    adc b                                         ; $7e15: $88
    halt                                          ; $7e16: $76
    halt                                          ; $7e17: $76
    ld [hl], a                                    ; $7e18: $77
    ld h, h                                       ; $7e19: $64
    ld h, l                                       ; $7e1a: $65
    ld d, e                                       ; $7e1b: $53
    ld b, e                                       ; $7e1c: $43
    inc sp                                        ; $7e1d: $33
    ld b, l                                       ; $7e1e: $45
    ld b, e                                       ; $7e1f: $43
    ld b, h                                       ; $7e20: $44
    ld d, a                                       ; $7e21: $57
    ld [hl], a                                    ; $7e22: $77
    ld a, c                                       ; $7e23: $79
    cp b                                          ; $7e24: $b8
    ld d, h                                       ; $7e25: $54
    ld h, a                                       ; $7e26: $67
    ld d, d                                       ; $7e27: $52
    inc h                                         ; $7e28: $24
    ld d, [hl]                                    ; $7e29: $56
    ld h, d                                       ; $7e2a: $62
    inc sp                                        ; $7e2b: $33
    ld [hl-], a                                   ; $7e2c: $32
    ld b, e                                       ; $7e2d: $43
    ld b, h                                       ; $7e2e: $44
    ld h, a                                       ; $7e2f: $67
    ld d, e                                       ; $7e30: $53
    inc [hl]                                      ; $7e31: $34
    ld b, a                                       ; $7e32: $47
    ld b, e                                       ; $7e33: $43
    inc d                                         ; $7e34: $14
    ld [hl+], a                                   ; $7e35: $22
    ld [hl+], a                                   ; $7e36: $22
    ld [hl-], a                                   ; $7e37: $32
    ld hl, $5324                                  ; $7e38: $21 $24 $53
    ld b, h                                       ; $7e3b: $44
    ld b, h                                       ; $7e3c: $44
    ld [hl-], a                                   ; $7e3d: $32
    inc sp                                        ; $7e3e: $33
    ld b, d                                       ; $7e3f: $42
    ld b, l                                       ; $7e40: $45
    ld b, l                                       ; $7e41: $45
    ld h, [hl]                                    ; $7e42: $66
    ld a, b                                       ; $7e43: $78
    sbc d                                         ; $7e44: $9a
    sbc b                                         ; $7e45: $98
    sbc b                                         ; $7e46: $98
    adc c                                         ; $7e47: $89
    xor d                                         ; $7e48: $aa
    xor d                                         ; $7e49: $aa
    cp e                                          ; $7e4a: $bb
    xor c                                         ; $7e4b: $a9
    call z, $b9bc                                 ; $7e4c: $cc $bc $b9
    xor e                                         ; $7e4f: $ab
    xor d                                         ; $7e50: $aa
    sbc h                                         ; $7e51: $9c
    db $dd                                        ; $7e52: $dd
    call c, $dedd                                 ; $7e53: $dc $dd $de
    cp $fe                                        ; $7e56: $fe $fe
    cp $de                                        ; $7e58: $fe $de
    rst $28                                       ; $7e5a: $ef
    call c, $dcdc                                 ; $7e5b: $dc $dc $dc
    call z, $eedc                                 ; $7e5e: $cc $dc $ee
    rst $28                                       ; $7e61: $ef
    db $ed                                        ; $7e62: $ed
    db $dd                                        ; $7e63: $dd
    cp d                                          ; $7e64: $ba
    xor e                                         ; $7e65: $ab
    sbc c                                         ; $7e66: $99
    xor c                                         ; $7e67: $a9
    sbc d                                         ; $7e68: $9a
    sbc b                                         ; $7e69: $98
    adc b                                         ; $7e6a: $88
    adc b                                         ; $7e6b: $88
    ld a, b                                       ; $7e6c: $78
    adc d                                         ; $7e6d: $8a
    sbc b                                         ; $7e6e: $98
    adc b                                         ; $7e6f: $88
    add a                                         ; $7e70: $87
    halt                                          ; $7e71: $76
    ld h, [hl]                                    ; $7e72: $66
    ld h, [hl]                                    ; $7e73: $66
    ld h, [hl]                                    ; $7e74: $66
    ld [hl], l                                    ; $7e75: $75
    ld d, h                                       ; $7e76: $54
    ld d, [hl]                                    ; $7e77: $56
    ld d, l                                       ; $7e78: $55
    ld d, e                                       ; $7e79: $53
    ld b, l                                       ; $7e7a: $45
    ld b, h                                       ; $7e7b: $44
    ld b, h                                       ; $7e7c: $44
    ld d, l                                       ; $7e7d: $55
    ld b, h                                       ; $7e7e: $44
    ld d, [hl]                                    ; $7e7f: $56
    add a                                         ; $7e80: $87
    ld d, [hl]                                    ; $7e81: $56
    ld h, [hl]                                    ; $7e82: $66
    halt                                          ; $7e83: $76
    ld h, l                                       ; $7e84: $65
    ld b, [hl]                                    ; $7e85: $46
    ld d, [hl]                                    ; $7e86: $56
    ld h, h                                       ; $7e87: $64
    ld hl, $3333                                  ; $7e88: $21 $33 $33
    ld [hl+], a                                   ; $7e8b: $22
    ld hl, $3312                                  ; $7e8c: $21 $12 $33
    ld b, l                                       ; $7e8f: $45
    ld b, e                                       ; $7e90: $43
    inc [hl]                                      ; $7e91: $34
    ld [hl], $65                                  ; $7e92: $36 $65
    ld a, b                                       ; $7e94: $78
    add a                                         ; $7e95: $87
    ld a, c                                       ; $7e96: $79
    adc b                                         ; $7e97: $88
    ld l, b                                       ; $7e98: $68
    ld a, b                                       ; $7e99: $78
    adc c                                         ; $7e9a: $89
    adc c                                         ; $7e9b: $89
    sbc d                                         ; $7e9c: $9a
    sbc c                                         ; $7e9d: $99
    sbc e                                         ; $7e9e: $9b
    call $ecde                                    ; $7e9f: $cd $de $ec
    call z, $babb                                 ; $7ea2: $cc $bb $ba
    xor e                                         ; $7ea5: $ab
    xor d                                         ; $7ea6: $aa
    sbc c                                         ; $7ea7: $99
    sbc b                                         ; $7ea8: $98
    adc c                                         ; $7ea9: $89
    adc b                                         ; $7eaa: $88
    ld h, a                                       ; $7eab: $67
    ld a, b                                       ; $7eac: $78
    ld h, [hl]                                    ; $7ead: $66
    ld h, l                                       ; $7eae: $65
    ld h, l                                       ; $7eaf: $65
    ld b, h                                       ; $7eb0: $44
    ld b, l                                       ; $7eb1: $45
    ld h, h                                       ; $7eb2: $64
    dec h                                         ; $7eb3: $25
    ld d, h                                       ; $7eb4: $54
    ld d, h                                       ; $7eb5: $54
    inc [hl]                                      ; $7eb6: $34
    ld b, l                                       ; $7eb7: $45
    ld d, e                                       ; $7eb8: $53
    ld b, h                                       ; $7eb9: $44
    ld b, h                                       ; $7eba: $44
    ld b, h                                       ; $7ebb: $44
    ld d, l                                       ; $7ebc: $55
    ld b, l                                       ; $7ebd: $45
    inc [hl]                                      ; $7ebe: $34
    ld hl, $4212                                  ; $7ebf: $21 $12 $42
    inc h                                         ; $7ec2: $24
    ld h, [hl]                                    ; $7ec3: $66
    ld h, a                                       ; $7ec4: $67
    ld a, c                                       ; $7ec5: $79
    adc c                                         ; $7ec6: $89
    sbc d                                         ; $7ec7: $9a
    cp a                                          ; $7ec8: $bf
    cp e                                          ; $7ec9: $bb
    db $db                                        ; $7eca: $db
    call z, $cdbb                                 ; $7ecb: $cc $bb $cd
    xor $ef                                       ; $7ece: $ee $ef
    db $dd                                        ; $7ed0: $dd
    db $ed                                        ; $7ed1: $ed
    xor $ed                                       ; $7ed2: $ee $ed
    cp e                                          ; $7ed4: $bb
    cp d                                          ; $7ed5: $ba
    cp d                                          ; $7ed6: $ba
    xor d                                         ; $7ed7: $aa
    cp d                                          ; $7ed8: $ba
    xor c                                         ; $7ed9: $a9
    sbc c                                         ; $7eda: $99
    adc b                                         ; $7edb: $88
    add a                                         ; $7edc: $87
    ld a, c                                       ; $7edd: $79
    adc b                                         ; $7ede: $88
    ld [hl], l                                    ; $7edf: $75
    ld b, h                                       ; $7ee0: $44
    ld b, h                                       ; $7ee1: $44
    ld b, l                                       ; $7ee2: $45
    ld h, [hl]                                    ; $7ee3: $66
    ld h, l                                       ; $7ee4: $65
    ld h, [hl]                                    ; $7ee5: $66
    ld d, a                                       ; $7ee6: $57
    ld d, a                                       ; $7ee7: $57
    ld h, a                                       ; $7ee8: $67
    xor h                                         ; $7ee9: $ac
    xor e                                         ; $7eea: $ab
    cp d                                          ; $7eeb: $ba
    xor d                                         ; $7eec: $aa
    sbc c                                         ; $7eed: $99
    sbc b                                         ; $7eee: $98
    halt                                          ; $7eef: $76
    ld h, l                                       ; $7ef0: $65
    inc [hl]                                      ; $7ef1: $34
    ld b, d                                       ; $7ef2: $42
    ld hl, $3312                                  ; $7ef3: $21 $12 $33
    dec h                                         ; $7ef6: $25
    ld b, c                                       ; $7ef7: $41
    inc hl                                        ; $7ef8: $23
    ld b, h                                       ; $7ef9: $44
    ld b, e                                       ; $7efa: $43
    inc sp                                        ; $7efb: $33
    ld b, c                                       ; $7efc: $41
    ld b, [hl]                                    ; $7efd: $46
    ld d, e                                       ; $7efe: $53
    ld l, d                                       ; $7eff: $6a
    ld l, d                                       ; $7f00: $6a
    sub a                                         ; $7f01: $97
    ld l, b                                       ; $7f02: $68
    ld [hl], a                                    ; $7f03: $77
    halt                                          ; $7f04: $76
    ld h, h                                       ; $7f05: $64
    ld b, [hl]                                    ; $7f06: $46
    adc b                                         ; $7f07: $88
    ld d, [hl]                                    ; $7f08: $56
    sbc d                                         ; $7f09: $9a
    adc b                                         ; $7f0a: $88
    adc b                                         ; $7f0b: $88
    adc b                                         ; $7f0c: $88
    adc e                                         ; $7f0d: $8b
    db $dd                                        ; $7f0e: $dd
    xor $de                                       ; $7f0f: $ee $de
    set 3, l                                      ; $7f11: $cb $dd
    call z, $bbbb                                 ; $7f13: $cc $bb $bb
    cp h                                          ; $7f16: $bc
    xor e                                         ; $7f17: $ab
    sbc b                                         ; $7f18: $98
    cp d                                          ; $7f19: $ba
    cp d                                          ; $7f1a: $ba
    adc c                                         ; $7f1b: $89
    ld a, b                                       ; $7f1c: $78
    halt                                          ; $7f1d: $76
    sbc b                                         ; $7f1e: $98
    ld h, l                                       ; $7f1f: $65
    sbc d                                         ; $7f20: $9a
    xor c                                         ; $7f21: $a9
    adc d                                         ; $7f22: $8a
    add l                                         ; $7f23: $85
    ld a, c                                       ; $7f24: $79
    ld [hl], a                                    ; $7f25: $77
    ld d, l                                       ; $7f26: $55
    ld d, [hl]                                    ; $7f27: $56
    ld b, [hl]                                    ; $7f28: $46
    ld h, [hl]                                    ; $7f29: $66
    ld d, l                                       ; $7f2a: $55
    ld d, h                                       ; $7f2b: $54
    ld b, e                                       ; $7f2c: $43
    ld sp, $2101                                  ; $7f2d: $31 $01 $21
    ld [hl+], a                                   ; $7f30: $22
    inc [hl]                                      ; $7f31: $34
    ld b, h                                       ; $7f32: $44
    ld b, h                                       ; $7f33: $44
    ld b, [hl]                                    ; $7f34: $46
    ld h, [hl]                                    ; $7f35: $66
    adc c                                         ; $7f36: $89
    sbc e                                         ; $7f37: $9b
    cp b                                          ; $7f38: $b8
    adc d                                         ; $7f39: $8a
    sbc b                                         ; $7f3a: $98
    xor d                                         ; $7f3b: $aa
    adc h                                         ; $7f3c: $8c
    xor c                                         ; $7f3d: $a9
    jp z, $babb                                   ; $7f3e: $ca $bb $ba

    cp e                                          ; $7f41: $bb
    xor d                                         ; $7f42: $aa
    ld a, b                                       ; $7f43: $78
    add a                                         ; $7f44: $87
    adc c                                         ; $7f45: $89
    xor d                                         ; $7f46: $aa
    cp a                                          ; $7f47: $bf
    res 7, l                                      ; $7f48: $cb $bd
    sbc $ed                                       ; $7f4a: $de $ed
    db $ed                                        ; $7f4c: $ed
    call z, $cbab                                 ; $7f4d: $cc $ab $cb
    cp d                                          ; $7f50: $ba
    cp e                                          ; $7f51: $bb
    xor d                                         ; $7f52: $aa
    cp c                                          ; $7f53: $b9
    adc b                                         ; $7f54: $88
    sbc c                                         ; $7f55: $99
    adc d                                         ; $7f56: $8a
    xor c                                         ; $7f57: $a9
    ld a, b                                       ; $7f58: $78
    add a                                         ; $7f59: $87
    ld a, b                                       ; $7f5a: $78
    sbc c                                         ; $7f5b: $99
    sbc c                                         ; $7f5c: $99
    adc b                                         ; $7f5d: $88
    sbc $dd                                       ; $7f5e: $de $dd
    cp e                                          ; $7f60: $bb
    sub a                                         ; $7f61: $97
    ld [hl], a                                    ; $7f62: $77
    add [hl]                                      ; $7f63: $86
    ld [hl], a                                    ; $7f64: $77
    sub h                                         ; $7f65: $94
    sbc b                                         ; $7f66: $98
    ld e, b                                       ; $7f67: $58
    sbc b                                         ; $7f68: $98
    ld d, [hl]                                    ; $7f69: $56
    ld h, l                                       ; $7f6a: $65
    ld [hl], $54                                  ; $7f6b: $36 $54
    ld d, h                                       ; $7f6d: $54
    ld h, h                                       ; $7f6e: $64
    inc [hl]                                      ; $7f6f: $34
    ld b, e                                       ; $7f70: $43
    ld [hl-], a                                   ; $7f71: $32
    ld de, $4413                                  ; $7f72: $11 $13 $44
    inc sp                                        ; $7f75: $33
    dec [hl]                                      ; $7f76: $35
    ld b, e                                       ; $7f77: $43
    ld d, [hl]                                    ; $7f78: $56
    ld a, b                                       ; $7f79: $78
    ld a, d                                       ; $7f7a: $7a
    ld [hl], h                                    ; $7f7b: $74
    or l                                          ; $7f7c: $b5
    ld b, [hl]                                    ; $7f7d: $46
    adc b                                         ; $7f7e: $88
    xor c                                         ; $7f7f: $a9
    ld d, [hl]                                    ; $7f80: $56
    ld l, e                                       ; $7f81: $6b
    sub l                                         ; $7f82: $95
    ld [hl], l                                    ; $7f83: $75
    ld d, l                                       ; $7f84: $55
    ld h, [hl]                                    ; $7f85: $66
    ld b, [hl]                                    ; $7f86: $46
    ld h, [hl]                                    ; $7f87: $66
    ld [hl], a                                    ; $7f88: $77
    adc c                                         ; $7f89: $89
    add a                                         ; $7f8a: $87
    ld h, a                                       ; $7f8b: $67
    add a                                         ; $7f8c: $87
    ld a, b                                       ; $7f8d: $78
    add a                                         ; $7f8e: $87
    ld a, d                                       ; $7f8f: $7a
    xor d                                         ; $7f90: $aa
    xor d                                         ; $7f91: $aa
    db $ec                                        ; $7f92: $ec
    call c, $ecdd                                 ; $7f93: $dc $dd $ec
    call c, $bbec                                 ; $7f96: $dc $ec $bb
    cp e                                          ; $7f99: $bb
    xor c                                         ; $7f9a: $a9
    sbc b                                         ; $7f9b: $98
    adc c                                         ; $7f9c: $89
    adc b                                         ; $7f9d: $88
    ld a, b                                       ; $7f9e: $78
    add a                                         ; $7f9f: $87
    add a                                         ; $7fa0: $87
    ld [hl], a                                    ; $7fa1: $77
    ld b, l                                       ; $7fa2: $45
    ld b, e                                       ; $7fa3: $43
    inc sp                                        ; $7fa4: $33
    inc sp                                        ; $7fa5: $33
    ld b, l                                       ; $7fa6: $45
    ld d, l                                       ; $7fa7: $55
    ld d, l                                       ; $7fa8: $55
    ld d, [hl]                                    ; $7fa9: $56
    ld h, [hl]                                    ; $7faa: $66
    ld h, a                                       ; $7fab: $67
    adc b                                         ; $7fac: $88
    ld a, c                                       ; $7fad: $79
    sbc b                                         ; $7fae: $98
    xor h                                         ; $7faf: $ac
    xor c                                         ; $7fb0: $a9
    cp d                                          ; $7fb1: $ba
    sbc c                                         ; $7fb2: $99
    cp d                                          ; $7fb3: $ba
    add a                                         ; $7fb4: $87
    adc c                                         ; $7fb5: $89
    adc b                                         ; $7fb6: $88
    ld [hl], a                                    ; $7fb7: $77
    ld l, c                                       ; $7fb8: $69
    ld [hl], a                                    ; $7fb9: $77
    ld d, [hl]                                    ; $7fba: $56
    add l                                         ; $7fbb: $85
    ld a, b                                       ; $7fbc: $78
    ld e, b                                       ; $7fbd: $58
    and a                                         ; $7fbe: $a7
    ld h, [hl]                                    ; $7fbf: $66
    ld d, h                                       ; $7fc0: $54
    ld d, e                                       ; $7fc1: $53
    ld h, e                                       ; $7fc2: $63
    inc d                                         ; $7fc3: $14
    ld [hl], $64                                  ; $7fc4: $36 $64
    inc sp                                        ; $7fc6: $33
    ld b, e                                       ; $7fc7: $43
    ld b, e                                       ; $7fc8: $43
    ld b, h                                       ; $7fc9: $44
    dec [hl]                                      ; $7fca: $35
    ld l, b                                       ; $7fcb: $68
    ld l, c                                       ; $7fcc: $69
    sbc b                                         ; $7fcd: $98
    ret z                                         ; $7fce: $c8

    cp e                                          ; $7fcf: $bb
    res 7, d                                      ; $7fd0: $cb $ba
    ld h, h                                       ; $7fd2: $64
    ld d, h                                       ; $7fd3: $54
    sbc e                                         ; $7fd4: $9b
    or a                                          ; $7fd5: $b7
    sbc b                                         ; $7fd6: $98
    ld h, e                                       ; $7fd7: $63
    ld e, c                                       ; $7fd8: $59
    cp d                                          ; $7fd9: $ba
    add a                                         ; $7fda: $87
    ld a, c                                       ; $7fdb: $79
    call c, $ddba                                 ; $7fdc: $dc $ba $dd
    cp [hl]                                       ; $7fdf: $be
    cp $dc                                        ; $7fe0: $fe $dc
    rst $08                                       ; $7fe2: $cf
    db $ec                                        ; $7fe3: $ec
    call z, $bced                                 ; $7fe4: $cc $ed $bc
    call z, $9abc                                 ; $7fe7: $cc $bc $9a
    sbc e                                         ; $7fea: $9b
    adc d                                         ; $7feb: $8a
    db $ed                                        ; $7fec: $ed
    and [hl]                                      ; $7fed: $a6
    ld a, l                                       ; $7fee: $7d
    sbc b                                         ; $7fef: $98
    sub [hl]                                      ; $7ff0: $96
    ld l, c                                       ; $7ff1: $69
    cp h                                          ; $7ff2: $bc
    add a                                         ; $7ff3: $87
    ld d, c                                       ; $7ff4: $51
    inc h                                         ; $7ff5: $24
    ld h, h                                       ; $7ff6: $64
    ld d, a                                       ; $7ff7: $57
    halt                                          ; $7ff8: $76
    sbc b                                         ; $7ff9: $98
    sbc d                                         ; $7ffa: $9a
    sbc c                                         ; $7ffb: $99
    sbc c                                         ; $7ffc: $99
    add a                                         ; $7ffd: $87
    xor d                                         ; $7ffe: $aa
    adc b                                         ; $7fff: $88
