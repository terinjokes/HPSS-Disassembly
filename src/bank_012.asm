; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    add l                                         ; $4000: $85
    ld d, [hl]                                    ; $4001: $56
    ld h, l                                       ; $4002: $65
    ld b, d                                       ; $4003: $42
    ld [hl+], a                                   ; $4004: $22
    ld [hl+], a                                   ; $4005: $22
    inc sp                                        ; $4006: $33
    inc sp                                        ; $4007: $33
    ld [hl-], a                                   ; $4008: $32
    ld [de], a                                    ; $4009: $12
    ld [de], a                                    ; $400a: $12
    inc hl                                        ; $400b: $23
    ld b, e                                       ; $400c: $43
    ld d, l                                       ; $400d: $55
    ld b, h                                       ; $400e: $44
    ld d, l                                       ; $400f: $55
    ld h, a                                       ; $4010: $67
    adc b                                         ; $4011: $88
    ld a, c                                       ; $4012: $79
    or a                                          ; $4013: $b7
    sub a                                         ; $4014: $97
    ld a, c                                       ; $4015: $79
    sbc c                                         ; $4016: $99
    halt                                          ; $4017: $76
    halt                                          ; $4018: $76
    ld h, [hl]                                    ; $4019: $66
    ld d, h                                       ; $401a: $54
    ld h, [hl]                                    ; $401b: $66
    ld b, l                                       ; $401c: $45
    ld [hl], h                                    ; $401d: $74
    ld d, l                                       ; $401e: $55
    ld d, h                                       ; $401f: $54
    ld h, h                                       ; $4020: $64
    ld [hl], a                                    ; $4021: $77
    add a                                         ; $4022: $87
    ld h, a                                       ; $4023: $67
    ld h, h                                       ; $4024: $64
    ld e, b                                       ; $4025: $58
    ld h, [hl]                                    ; $4026: $66
    adc c                                         ; $4027: $89
    xor d                                         ; $4028: $aa
    sbc d                                         ; $4029: $9a
    xor c                                         ; $402a: $a9
    xor b                                         ; $402b: $a8
    adc b                                         ; $402c: $88
    add a                                         ; $402d: $87
    ld h, a                                       ; $402e: $67
    ld h, h                                       ; $402f: $64
    dec [hl]                                      ; $4030: $35
    ld h, h                                       ; $4031: $64
    ld h, [hl]                                    ; $4032: $66
    ld h, l                                       ; $4033: $65
    ld d, l                                       ; $4034: $55
    ld h, l                                       ; $4035: $65
    ld d, l                                       ; $4036: $55
    ld h, [hl]                                    ; $4037: $66
    ld h, h                                       ; $4038: $64
    ld d, l                                       ; $4039: $55
    ld h, h                                       ; $403a: $64
    ld d, e                                       ; $403b: $53
    inc [hl]                                      ; $403c: $34
    ld b, e                                       ; $403d: $43
    ld [hl-], a                                   ; $403e: $32
    ld [de], a                                    ; $403f: $12
    ld hl, $4324                                  ; $4040: $21 $24 $43
    inc [hl]                                      ; $4043: $34
    ld d, a                                       ; $4044: $57
    sbc c                                         ; $4045: $99
    add a                                         ; $4046: $87
    ld [hl], a                                    ; $4047: $77
    ld [hl], a                                    ; $4048: $77
    add a                                         ; $4049: $87
    adc b                                         ; $404a: $88
    sbc d                                         ; $404b: $9a
    call z, $ddcd                                 ; $404c: $cc $cd $dd
    sbc $de                                       ; $404f: $de $de
    xor $dd                                       ; $4051: $ee $dd
    call $eefe                                    ; $4053: $cd $fe $ee
    db $ed                                        ; $4056: $ed
    db $dd                                        ; $4057: $dd
    db $db                                        ; $4058: $db
    sbc $cd                                       ; $4059: $de $cd
    call c, $dbee                                 ; $405b: $dc $ee $db
    cp e                                          ; $405e: $bb
    xor c                                         ; $405f: $a9
    xor e                                         ; $4060: $ab
    xor c                                         ; $4061: $a9
    sbc d                                         ; $4062: $9a
    xor d                                         ; $4063: $aa
    sbc e                                         ; $4064: $9b
    cp e                                          ; $4065: $bb
    call $baed                                    ; $4066: $cd $ed $ba
    sbc c                                         ; $4069: $99
    sbc b                                         ; $406a: $98
    adc c                                         ; $406b: $89
    sbc b                                         ; $406c: $98
    add a                                         ; $406d: $87
    add l                                         ; $406e: $85
    ld d, l                                       ; $406f: $55
    ld [hl], $55                                  ; $4070: $36 $55
    ld b, l                                       ; $4072: $45
    ld d, [hl]                                    ; $4073: $56
    ld d, a                                       ; $4074: $57
    ld d, [hl]                                    ; $4075: $56
    ld h, [hl]                                    ; $4076: $66
    ld d, e                                       ; $4077: $53
    ld b, l                                       ; $4078: $45
    ld b, h                                       ; $4079: $44
    ld b, h                                       ; $407a: $44
    inc sp                                        ; $407b: $33
    inc sp                                        ; $407c: $33
    ld hl, $3332                                  ; $407d: $21 $32 $33
    ld [hl-], a                                   ; $4080: $32
    ld [hl+], a                                   ; $4081: $22
    inc hl                                        ; $4082: $23
    inc sp                                        ; $4083: $33
    inc sp                                        ; $4084: $33
    inc sp                                        ; $4085: $33
    ld [hl+], a                                   ; $4086: $22
    ld [hl+], a                                   ; $4087: $22
    ld de, $1212                                  ; $4088: $11 $12 $12
    inc hl                                        ; $408b: $23
    inc [hl]                                      ; $408c: $34
    ld b, l                                       ; $408d: $45
    ld d, [hl]                                    ; $408e: $56
    ld d, l                                       ; $408f: $55
    ld h, [hl]                                    ; $4090: $66
    ld h, [hl]                                    ; $4091: $66
    ld h, [hl]                                    ; $4092: $66
    adc b                                         ; $4093: $88
    add a                                         ; $4094: $87
    adc b                                         ; $4095: $88
    ld [hl], a                                    ; $4096: $77
    adc b                                         ; $4097: $88
    adc b                                         ; $4098: $88
    ld a, b                                       ; $4099: $78
    add a                                         ; $409a: $87
    add [hl]                                      ; $409b: $86
    adc c                                         ; $409c: $89
    sbc d                                         ; $409d: $9a
    cp h                                          ; $409e: $bc
    call c, $cccc                                 ; $409f: $dc $cc $cc
    call $ddcc                                    ; $40a2: $cd $cc $dd
    db $dd                                        ; $40a5: $dd
    db $dd                                        ; $40a6: $dd
    db $dd                                        ; $40a7: $dd
    call c, $bbbb                                 ; $40a8: $dc $bb $bb
    xor d                                         ; $40ab: $aa
    cp e                                          ; $40ac: $bb
    xor c                                         ; $40ad: $a9
    xor e                                         ; $40ae: $ab
    sbc e                                         ; $40af: $9b
    xor c                                         ; $40b0: $a9
    jp z, $ba99                                   ; $40b1: $ca $99 $ba

    cp e                                          ; $40b4: $bb
    cp e                                          ; $40b5: $bb
    call z, $cdcd                                 ; $40b6: $cc $cd $cd
    xor $dc                                       ; $40b9: $ee $dc
    cp e                                          ; $40bb: $bb
    res 3, b                                      ; $40bc: $cb $98
    adc b                                         ; $40be: $88
    ld [hl], a                                    ; $40bf: $77
    ld h, l                                       ; $40c0: $65
    ld d, l                                       ; $40c1: $55
    ld h, [hl]                                    ; $40c2: $66
    ld b, h                                       ; $40c3: $44
    ld d, l                                       ; $40c4: $55
    sub h                                         ; $40c5: $94
    ld b, l                                       ; $40c6: $45
    ld d, d                                       ; $40c7: $52
    inc sp                                        ; $40c8: $33
    ld b, h                                       ; $40c9: $44
    ld [hl], $34                                  ; $40ca: $36 $34
    ld b, h                                       ; $40cc: $44
    inc sp                                        ; $40cd: $33
    ld [de], a                                    ; $40ce: $12
    ld [hl+], a                                   ; $40cf: $22
    ld b, l                                       ; $40d0: $45
    ld b, l                                       ; $40d1: $45
    ld b, l                                       ; $40d2: $45
    ld b, e                                       ; $40d3: $43
    ld [hl-], a                                   ; $40d4: $32
    inc hl                                        ; $40d5: $23
    ld b, h                                       ; $40d6: $44
    ld d, [hl]                                    ; $40d7: $56
    ld l, b                                       ; $40d8: $68
    ld a, b                                       ; $40d9: $78
    sbc b                                         ; $40da: $98
    adc b                                         ; $40db: $88
    ld [hl], a                                    ; $40dc: $77
    sbc c                                         ; $40dd: $99
    sbc b                                         ; $40de: $98
    sbc c                                         ; $40df: $99
    set 1, e                                      ; $40e0: $cb $cb
    cp e                                          ; $40e2: $bb
    call z, $ccbd                                 ; $40e3: $cc $bd $cc
    cp e                                          ; $40e6: $bb
    call $bbca                                    ; $40e7: $cd $ca $bb
    xor d                                         ; $40ea: $aa
    adc b                                         ; $40eb: $88
    xor b                                         ; $40ec: $a8
    adc c                                         ; $40ed: $89
    adc b                                         ; $40ee: $88
    sbc b                                         ; $40ef: $98
    add a                                         ; $40f0: $87
    ld h, [hl]                                    ; $40f1: $66
    ld h, [hl]                                    ; $40f2: $66
    ld h, a                                       ; $40f3: $67
    ld d, [hl]                                    ; $40f4: $56
    ld [hl], a                                    ; $40f5: $77
    ld l, c                                       ; $40f6: $69
    xor d                                         ; $40f7: $aa
    jp c, Jump_012_4776                           ; $40f8: $da $76 $47

    ld d, l                                       ; $40fb: $55
    ld d, a                                       ; $40fc: $57
    ld [hl], a                                    ; $40fd: $77
    ld [hl], a                                    ; $40fe: $77
    sub a                                         ; $40ff: $97
    ld l, d                                       ; $4100: $6a
    halt                                          ; $4101: $76
    ld h, a                                       ; $4102: $67
    ld [hl], a                                    ; $4103: $77
    add a                                         ; $4104: $87
    ld d, [hl]                                    ; $4105: $56
    ld h, h                                       ; $4106: $64
    ld h, a                                       ; $4107: $67
    ld d, a                                       ; $4108: $57
    adc c                                         ; $4109: $89
    sbc b                                         ; $410a: $98
    ld d, a                                       ; $410b: $57
    add a                                         ; $410c: $87
    add a                                         ; $410d: $87
    ld [hl], a                                    ; $410e: $77
    ld a, c                                       ; $410f: $79
    sub a                                         ; $4110: $97
    adc b                                         ; $4111: $88
    sub [hl]                                      ; $4112: $96
    ld h, a                                       ; $4113: $67
    ld b, l                                       ; $4114: $45
    ld a, c                                       ; $4115: $79
    xor b                                         ; $4116: $a8
    ld a, b                                       ; $4117: $78
    ld [hl], a                                    ; $4118: $77
    sub h                                         ; $4119: $94
    ld d, l                                       ; $411a: $55
    ld d, h                                       ; $411b: $54
    ld b, h                                       ; $411c: $44
    ld d, l                                       ; $411d: $55
    ld d, [hl]                                    ; $411e: $56
    ld h, [hl]                                    ; $411f: $66
    ld l, b                                       ; $4120: $68
    ld a, b                                       ; $4121: $78
    sbc b                                         ; $4122: $98
    sbc c                                         ; $4123: $99
    sbc b                                         ; $4124: $98
    xor e                                         ; $4125: $ab
    xor d                                         ; $4126: $aa
    xor e                                         ; $4127: $ab
    xor c                                         ; $4128: $a9
    sbc b                                         ; $4129: $98
    adc c                                         ; $412a: $89
    sbc d                                         ; $412b: $9a
    adc b                                         ; $412c: $88
    adc b                                         ; $412d: $88
    ld [hl], a                                    ; $412e: $77
    ld h, l                                       ; $412f: $65
    ld d, l                                       ; $4130: $55
    ld h, l                                       ; $4131: $65
    ld h, [hl]                                    ; $4132: $66
    ld [hl], a                                    ; $4133: $77
    xor c                                         ; $4134: $a9
    cp e                                          ; $4135: $bb
    call z, $aacb                                 ; $4136: $cc $cb $aa
    cp e                                          ; $4139: $bb
    xor c                                         ; $413a: $a9
    add a                                         ; $413b: $87
    ld [hl], a                                    ; $413c: $77
    halt                                          ; $413d: $76
    ld h, l                                       ; $413e: $65
    ld [hl], a                                    ; $413f: $77
    add a                                         ; $4140: $87
    ld a, b                                       ; $4141: $78
    sbc d                                         ; $4142: $9a
    adc d                                         ; $4143: $8a
    cp d                                          ; $4144: $ba
    xor d                                         ; $4145: $aa
    xor d                                         ; $4146: $aa
    xor e                                         ; $4147: $ab
    cp d                                          ; $4148: $ba
    adc $dd                                       ; $4149: $ce $dd
    cp e                                          ; $414b: $bb
    xor d                                         ; $414c: $aa
    xor d                                         ; $414d: $aa
    and a                                         ; $414e: $a7
    halt                                          ; $414f: $76
    adc c                                         ; $4150: $89
    adc b                                         ; $4151: $88
    adc b                                         ; $4152: $88
    ld [hl], a                                    ; $4153: $77
    ld h, [hl]                                    ; $4154: $66
    halt                                          ; $4155: $76
    ld h, a                                       ; $4156: $67
    halt                                          ; $4157: $76
    ld h, [hl]                                    ; $4158: $66
    ld d, l                                       ; $4159: $55
    ld b, d                                       ; $415a: $42
    jr nz, @+$23                                  ; $415b: $20 $21

    ld [hl+], a                                   ; $415d: $22
    ld sp, $2224                                  ; $415e: $31 $24 $22
    ld b, h                                       ; $4161: $44
    dec [hl]                                      ; $4162: $35
    ld d, l                                       ; $4163: $55
    ld h, [hl]                                    ; $4164: $66
    ld [hl], a                                    ; $4165: $77
    ld a, c                                       ; $4166: $79
    xor d                                         ; $4167: $aa
    cp e                                          ; $4168: $bb
    xor d                                         ; $4169: $aa
    xor d                                         ; $416a: $aa
    sbc c                                         ; $416b: $99
    add a                                         ; $416c: $87
    ld [hl], a                                    ; $416d: $77
    halt                                          ; $416e: $76
    ld h, [hl]                                    ; $416f: $66
    add a                                         ; $4170: $87
    ld a, b                                       ; $4171: $78
    adc b                                         ; $4172: $88
    adc b                                         ; $4173: $88
    xor c                                         ; $4174: $a9
    adc e                                         ; $4175: $8b
    call z, $debb                                 ; $4176: $cc $bb $de
    jp c, $cbcd                                   ; $4179: $da $cd $cb

    cp h                                          ; $417c: $bc
    adc $ce                                       ; $417d: $ce $ce
    ld hl, sp-$75                                 ; $417f: $f8 $8b
    cp b                                          ; $4181: $b8
    ld h, h                                       ; $4182: $64
    ld hl, $1133                                  ; $4183: $21 $33 $11
    inc hl                                        ; $4186: $23
    dec b                                         ; $4187: $05
    ld [hl-], a                                   ; $4188: $32
    ld d, [hl]                                    ; $4189: $56
    ld h, l                                       ; $418a: $65
    ld b, h                                       ; $418b: $44
    ld l, b                                       ; $418c: $68
    ld [hl], a                                    ; $418d: $77
    ld a, b                                       ; $418e: $78
    xor e                                         ; $418f: $ab
    xor c                                         ; $4190: $a9
    xor d                                         ; $4191: $aa
    xor c                                         ; $4192: $a9
    xor b                                         ; $4193: $a8
    add a                                         ; $4194: $87
    adc c                                         ; $4195: $89
    xor c                                         ; $4196: $a9
    ld l, c                                       ; $4197: $69
    adc c                                         ; $4198: $89
    ld a, b                                       ; $4199: $78
    ld a, b                                       ; $419a: $78
    ld [hl], l                                    ; $419b: $75
    ld [hl], l                                    ; $419c: $75
    ld d, e                                       ; $419d: $53
    inc hl                                        ; $419e: $23
    ld b, l                                       ; $419f: $45
    ld d, [hl]                                    ; $41a0: $56
    ld a, c                                       ; $41a1: $79
    sbc c                                         ; $41a2: $99
    xor h                                         ; $41a3: $ac
    call c, $ddde                                 ; $41a4: $dc $de $dd
    db $dd                                        ; $41a7: $dd
    call c, $ccdc                                 ; $41a8: $dc $dc $cc
    cp h                                          ; $41ab: $bc
    xor d                                         ; $41ac: $aa
    sbc b                                         ; $41ad: $98
    or a                                          ; $41ae: $b7
    adc b                                         ; $41af: $88
    add a                                         ; $41b0: $87
    ld [hl], a                                    ; $41b1: $77
    ld d, d                                       ; $41b2: $52
    ld d, [hl]                                    ; $41b3: $56
    add [hl]                                      ; $41b4: $86
    ld d, [hl]                                    ; $41b5: $56
    ld b, h                                       ; $41b6: $44
    ld d, h                                       ; $41b7: $54
    ld h, [hl]                                    ; $41b8: $66
    ld d, l                                       ; $41b9: $55
    ld b, h                                       ; $41ba: $44
    ld hl, $6424                                  ; $41bb: $21 $24 $64
    ld b, h                                       ; $41be: $44
    ld b, h                                       ; $41bf: $44
    ld hl, $3332                                  ; $41c0: $21 $32 $33
    ld [hl+], a                                   ; $41c3: $22
    ld [hl+], a                                   ; $41c4: $22
    ld [hl-], a                                   ; $41c5: $32
    ld b, b                                       ; $41c6: $40
    inc [hl]                                      ; $41c7: $34
    ld h, h                                       ; $41c8: $64
    ld d, [hl]                                    ; $41c9: $56
    ld d, [hl]                                    ; $41ca: $56
    ld [hl], a                                    ; $41cb: $77
    ld h, a                                       ; $41cc: $67
    adc c                                         ; $41cd: $89
    adc c                                         ; $41ce: $89
    xor d                                         ; $41cf: $aa
    cp l                                          ; $41d0: $bd
    cp d                                          ; $41d1: $ba
    cp e                                          ; $41d2: $bb
    xor d                                         ; $41d3: $aa
    cp b                                          ; $41d4: $b8
    xor h                                         ; $41d5: $ac
    cp d                                          ; $41d6: $ba
    sbc e                                         ; $41d7: $9b
    ret                                           ; $41d8: $c9


    cp d                                          ; $41d9: $ba
    sbc d                                         ; $41da: $9a
    sbc b                                         ; $41db: $98
    sbc c                                         ; $41dc: $99
    add a                                         ; $41dd: $87
    add l                                         ; $41de: $85
    ld d, l                                       ; $41df: $55
    ld d, [hl]                                    ; $41e0: $56
    halt                                          ; $41e1: $76
    ld h, a                                       ; $41e2: $67
    ld a, b                                       ; $41e3: $78
    sbc c                                         ; $41e4: $99
    sbc d                                         ; $41e5: $9a
    cp d                                          ; $41e6: $ba
    xor e                                         ; $41e7: $ab
    cp e                                          ; $41e8: $bb
    cp e                                          ; $41e9: $bb
    xor d                                         ; $41ea: $aa
    xor h                                         ; $41eb: $ac
    cp l                                          ; $41ec: $bd
    call z, $eedf                                 ; $41ed: $cc $df $ee
    db $ed                                        ; $41f0: $ed
    call z, $99cb                                 ; $41f1: $cc $cb $99
    sbc d                                         ; $41f4: $9a
    add a                                         ; $41f5: $87
    and a                                         ; $41f6: $a7
    ld a, b                                       ; $41f7: $78
    halt                                          ; $41f8: $76
    ld h, a                                       ; $41f9: $67
    ld a, b                                       ; $41fa: $78
    ld h, [hl]                                    ; $41fb: $66
    add a                                         ; $41fc: $87
    ld h, a                                       ; $41fd: $67
    ld h, [hl]                                    ; $41fe: $66
    ld h, [hl]                                    ; $41ff: $66
    ld h, l                                       ; $4200: $65
    ld h, l                                       ; $4201: $65
    ld b, [hl]                                    ; $4202: $46
    ld b, h                                       ; $4203: $44
    ld b, e                                       ; $4204: $43
    ld [hl-], a                                   ; $4205: $32
    ld [hl-], a                                   ; $4206: $32
    ld [de], a                                    ; $4207: $12
    inc hl                                        ; $4208: $23
    inc hl                                        ; $4209: $23
    ld b, h                                       ; $420a: $44
    ld d, h                                       ; $420b: $54
    inc hl                                        ; $420c: $23
    ld b, l                                       ; $420d: $45
    ld b, e                                       ; $420e: $43
    ld b, e                                       ; $420f: $43
    ld d, [hl]                                    ; $4210: $56
    ld d, a                                       ; $4211: $57
    ld [hl], a                                    ; $4212: $77
    halt                                          ; $4213: $76
    ld h, a                                       ; $4214: $67
    ld a, b                                       ; $4215: $78
    ld l, c                                       ; $4216: $69
    ld a, b                                       ; $4217: $78
    adc b                                         ; $4218: $88
    ld a, b                                       ; $4219: $78
    ld h, [hl]                                    ; $421a: $66
    ld h, [hl]                                    ; $421b: $66
    ld l, b                                       ; $421c: $68
    ld [hl], a                                    ; $421d: $77
    adc b                                         ; $421e: $88
    sbc b                                         ; $421f: $98
    xor c                                         ; $4220: $a9
    cp e                                          ; $4221: $bb
    adc c                                         ; $4222: $89
    xor c                                         ; $4223: $a9
    xor d                                         ; $4224: $aa
    sbc e                                         ; $4225: $9b
    xor d                                         ; $4226: $aa
    xor d                                         ; $4227: $aa
    xor d                                         ; $4228: $aa
    xor e                                         ; $4229: $ab
    cp h                                          ; $422a: $bc
    cp e                                          ; $422b: $bb
    call z, $8a99                                 ; $422c: $cc $99 $8a
    cp e                                          ; $422f: $bb
    adc d                                         ; $4230: $8a
    sub a                                         ; $4231: $97
    cp l                                          ; $4232: $bd
    db $fd                                        ; $4233: $fd
    sbc d                                         ; $4234: $9a
    cp c                                          ; $4235: $b9
    jp z, $8557                                   ; $4236: $ca $57 $85

    ld a, c                                       ; $4239: $79
    ld d, e                                       ; $423a: $53
    ld d, l                                       ; $423b: $55
    ld b, l                                       ; $423c: $45
    ld [hl], l                                    ; $423d: $75
    ld d, l                                       ; $423e: $55
    ld d, [hl]                                    ; $423f: $56
    ld h, e                                       ; $4240: $63
    ld d, [hl]                                    ; $4241: $56
    ld d, [hl]                                    ; $4242: $56
    ld [hl], a                                    ; $4243: $77
    ld h, a                                       ; $4244: $67
    ld d, l                                       ; $4245: $55
    ld h, a                                       ; $4246: $67
    ld [hl], a                                    ; $4247: $77
    ld h, h                                       ; $4248: $64
    ld h, [hl]                                    ; $4249: $66
    halt                                          ; $424a: $76
    ld h, [hl]                                    ; $424b: $66
    halt                                          ; $424c: $76
    ld h, l                                       ; $424d: $65
    ld l, b                                       ; $424e: $68
    ld h, a                                       ; $424f: $67
    ld d, l                                       ; $4250: $55
    ld h, [hl]                                    ; $4251: $66
    ld d, l                                       ; $4252: $55
    ld h, l                                       ; $4253: $65
    dec [hl]                                      ; $4254: $35
    ld b, l                                       ; $4255: $45
    ld b, h                                       ; $4256: $44
    inc [hl]                                      ; $4257: $34
    ld [hl-], a                                   ; $4258: $32
    ld [hl-], a                                   ; $4259: $32
    ld hl, $2310                                  ; $425a: $21 $10 $23
    ld [de], a                                    ; $425d: $12
    ld b, e                                       ; $425e: $43
    ld b, l                                       ; $425f: $45
    ld b, [hl]                                    ; $4260: $46
    halt                                          ; $4261: $76
    ld a, c                                       ; $4262: $79
    sbc d                                         ; $4263: $9a
    xor d                                         ; $4264: $aa
    call z, $cbbd                                 ; $4265: $cc $bd $cb
    db $ec                                        ; $4268: $ec
    call $cacc                                    ; $4269: $cd $cc $ca
    ret                                           ; $426c: $c9


    xor d                                         ; $426d: $aa
    adc e                                         ; $426e: $8b
    xor d                                         ; $426f: $aa
    sbc d                                         ; $4270: $9a
    cp e                                          ; $4271: $bb
    xor d                                         ; $4272: $aa
    sbc d                                         ; $4273: $9a
    sbc b                                         ; $4274: $98
    xor c                                         ; $4275: $a9
    adc d                                         ; $4276: $8a
    cp e                                          ; $4277: $bb
    cp [hl]                                       ; $4278: $be
    jp c, $eddf                                   ; $4279: $da $df $ed

    xor c                                         ; $427c: $a9
    ret c                                         ; $427d: $d8

    ret z                                         ; $427e: $c8

    xor c                                         ; $427f: $a9
    sub a                                         ; $4280: $97
    db $dd                                        ; $4281: $dd
    jp z, Jump_012_6889                           ; $4282: $ca $89 $68

    sbc c                                         ; $4285: $99
    sbc b                                         ; $4286: $98
    adc d                                         ; $4287: $8a
    sbc b                                         ; $4288: $98
    sbc e                                         ; $4289: $9b
    xor c                                         ; $428a: $a9
    sub a                                         ; $428b: $97
    ld [hl], l                                    ; $428c: $75
    ld d, [hl]                                    ; $428d: $56
    ld h, a                                       ; $428e: $67
    ld [hl], a                                    ; $428f: $77
    add a                                         ; $4290: $87
    ld h, [hl]                                    ; $4291: $66
    ld d, l                                       ; $4292: $55
    ld b, l                                       ; $4293: $45
    ld h, e                                       ; $4294: $63
    ld b, h                                       ; $4295: $44
    ld b, [hl]                                    ; $4296: $46
    ld e, b                                       ; $4297: $58
    ld h, a                                       ; $4298: $67
    sub [hl]                                      ; $4299: $96
    ld d, [hl]                                    ; $429a: $56
    ld b, l                                       ; $429b: $45
    ld b, h                                       ; $429c: $44
    ld d, l                                       ; $429d: $55
    halt                                          ; $429e: $76
    ld [hl], a                                    ; $429f: $77
    add a                                         ; $42a0: $87
    ld a, b                                       ; $42a1: $78
    add [hl]                                      ; $42a2: $86
    ld d, [hl]                                    ; $42a3: $56
    ld b, a                                       ; $42a4: $47
    adc b                                         ; $42a5: $88
    ld a, b                                       ; $42a6: $78
    halt                                          ; $42a7: $76
    inc h                                         ; $42a8: $24
    ld [bc], a                                    ; $42a9: $02
    ld bc, $3323                                  ; $42aa: $01 $23 $33
    inc sp                                        ; $42ad: $33
    inc [hl]                                      ; $42ae: $34
    dec [hl]                                      ; $42af: $35
    ld h, l                                       ; $42b0: $65
    ld b, l                                       ; $42b1: $45
    ld d, l                                       ; $42b2: $55
    ld a, c                                       ; $42b3: $79
    adc b                                         ; $42b4: $88
    sbc b                                         ; $42b5: $98
    ld a, c                                       ; $42b6: $79
    ret                                           ; $42b7: $c9


    adc d                                         ; $42b8: $8a
    xor h                                         ; $42b9: $ac
    ret c                                         ; $42ba: $d8

    cp h                                          ; $42bb: $bc
    jp z, Jump_012_799a                           ; $42bc: $ca $9a $79

    sbc d                                         ; $42bf: $9a
    cp b                                          ; $42c0: $b8
    add a                                         ; $42c1: $87
    ld a, b                                       ; $42c2: $78
    ld a, b                                       ; $42c3: $78
    adc b                                         ; $42c4: $88
    adc b                                         ; $42c5: $88
    adc b                                         ; $42c6: $88
    adc b                                         ; $42c7: $88
    add a                                         ; $42c8: $87
    ld [hl], a                                    ; $42c9: $77
    ld [hl], l                                    ; $42ca: $75
    ld h, a                                       ; $42cb: $67
    ld d, l                                       ; $42cc: $55
    ld h, [hl]                                    ; $42cd: $66
    ld b, e                                       ; $42ce: $43
    inc d                                         ; $42cf: $14
    inc [hl]                                      ; $42d0: $34
    ld d, [hl]                                    ; $42d1: $56
    ld [hl], h                                    ; $42d2: $74
    ld b, h                                       ; $42d3: $44
    ld d, h                                       ; $42d4: $54
    ld b, h                                       ; $42d5: $44
    ld h, [hl]                                    ; $42d6: $66
    ld a, b                                       ; $42d7: $78
    ld a, c                                       ; $42d8: $79
    sbc d                                         ; $42d9: $9a
    cp h                                          ; $42da: $bc
    db $db                                        ; $42db: $db
    xor e                                         ; $42dc: $ab
    cp e                                          ; $42dd: $bb
    xor e                                         ; $42de: $ab
    cp h                                          ; $42df: $bc
    set 1, l                                      ; $42e0: $cb $cd
    db $dd                                        ; $42e2: $dd
    rst $18                                       ; $42e3: $df
    db $ec                                        ; $42e4: $ec
    xor e                                         ; $42e5: $ab
    xor d                                         ; $42e6: $aa
    call c, Call_012_7a7b                         ; $42e7: $dc $7b $7a
    and a                                         ; $42ea: $a7
    add [hl]                                      ; $42eb: $86
    ld d, h                                       ; $42ec: $54
    inc [hl]                                      ; $42ed: $34
    ld d, l                                       ; $42ee: $55
    ld h, [hl]                                    ; $42ef: $66
    ld d, [hl]                                    ; $42f0: $56
    add a                                         ; $42f1: $87
    ld [hl], a                                    ; $42f2: $77
    add [hl]                                      ; $42f3: $86
    ld l, b                                       ; $42f4: $68
    adc b                                         ; $42f5: $88
    sbc b                                         ; $42f6: $98
    xor d                                         ; $42f7: $aa
    xor c                                         ; $42f8: $a9
    cp d                                          ; $42f9: $ba
    sbc d                                         ; $42fa: $9a
    xor d                                         ; $42fb: $aa
    sub a                                         ; $42fc: $97
    xor b                                         ; $42fd: $a8
    adc b                                         ; $42fe: $88
    xor d                                         ; $42ff: $aa
    xor h                                         ; $4300: $ac
    cp h                                          ; $4301: $bc
    xor e                                         ; $4302: $ab
    set 3, h                                      ; $4303: $cb $dc
    and a                                         ; $4305: $a7
    ld a, b                                       ; $4306: $78
    halt                                          ; $4307: $76
    sbc b                                         ; $4308: $98
    adc b                                         ; $4309: $88
    adc b                                         ; $430a: $88
    ld [hl], l                                    ; $430b: $75
    ld d, l                                       ; $430c: $55
    ld b, a                                       ; $430d: $47
    jr nc, jr_012_4363                            ; $430e: $30 $53

    ld h, e                                       ; $4310: $63
    ld d, e                                       ; $4311: $53
    halt                                          ; $4312: $76
    ld d, l                                       ; $4313: $55
    add l                                         ; $4314: $85
    sbc c                                         ; $4315: $99
    add hl, hl                                    ; $4316: $29
    adc c                                         ; $4317: $89
    ld h, b                                       ; $4318: $60
    ld l, c                                       ; $4319: $69
    dec h                                         ; $431a: $25
    ld h, d                                       ; $431b: $62
    inc sp                                        ; $431c: $33
    inc [hl]                                      ; $431d: $34
    ld b, d                                       ; $431e: $42
    ld d, l                                       ; $431f: $55
    add a                                         ; $4320: $87
    ld [hl], l                                    ; $4321: $75
    adc d                                         ; $4322: $8a
    ld [hl], a                                    ; $4323: $77
    ld [hl], h                                    ; $4324: $74
    ld d, h                                       ; $4325: $54
    ld h, a                                       ; $4326: $67
    ld e, b                                       ; $4327: $58
    ld h, a                                       ; $4328: $67
    ld a, c                                       ; $4329: $79
    sbc e                                         ; $432a: $9b
    jp c, $859a                                   ; $432b: $da $9a $85

    ld h, l                                       ; $432e: $65
    ld d, [hl]                                    ; $432f: $56
    sbc b                                         ; $4330: $98
    rst $00                                       ; $4331: $c7
    ld c, c                                       ; $4332: $49
    ld h, l                                       ; $4333: $65
    ld d, [hl]                                    ; $4334: $56
    ld b, [hl]                                    ; $4335: $46
    inc [hl]                                      ; $4336: $34
    ld b, [hl]                                    ; $4337: $46
    ld h, l                                       ; $4338: $65
    ld h, h                                       ; $4339: $64
    ld h, $34                                     ; $433a: $26 $34
    ld d, a                                       ; $433c: $57
    ld d, [hl]                                    ; $433d: $56
    ld b, l                                       ; $433e: $45
    ld h, h                                       ; $433f: $64
    ld h, l                                       ; $4340: $65
    dec [hl]                                      ; $4341: $35
    ld d, h                                       ; $4342: $54
    ld b, e                                       ; $4343: $43
    ld b, h                                       ; $4344: $44
    ld [hl+], a                                   ; $4345: $22
    ld de, $1222                                  ; $4346: $11 $22 $12
    ld [hl+], a                                   ; $4349: $22
    ld b, [hl]                                    ; $434a: $46
    ld d, l                                       ; $434b: $55
    ld l, b                                       ; $434c: $68
    ld a, e                                       ; $434d: $7b
    adc d                                         ; $434e: $8a
    jp z, $cfaa                                   ; $434f: $ca $aa $cf

    sbc $de                                       ; $4352: $de $de
    sbc $bd                                       ; $4354: $de $bd
    db $dd                                        ; $4356: $dd
    db $db                                        ; $4357: $db
    cp d                                          ; $4358: $ba
    cp d                                          ; $4359: $ba
    xor d                                         ; $435a: $aa
    cp h                                          ; $435b: $bc
    cp [hl]                                       ; $435c: $be
    xor $ee                                       ; $435d: $ee $ee
    db $dd                                        ; $435f: $dd
    db $dd                                        ; $4360: $dd
    db $dd                                        ; $4361: $dd
    db $dd                                        ; $4362: $dd

jr_012_4363:
    db $dd                                        ; $4363: $dd
    call z, $dccd                                 ; $4364: $cc $cd $dc
    res 7, e                                      ; $4367: $cb $bb
    xor d                                         ; $4369: $aa
    xor c                                         ; $436a: $a9
    sbc c                                         ; $436b: $99
    cp e                                          ; $436c: $bb
    xor b                                         ; $436d: $a8
    ld a, b                                       ; $436e: $78
    ld l, b                                       ; $436f: $68
    adc b                                         ; $4370: $88
    ld h, [hl]                                    ; $4371: $66
    ld b, [hl]                                    ; $4372: $46
    ld h, h                                       ; $4373: $64
    ld [hl], $26                                  ; $4374: $36 $26
    ld b, d                                       ; $4376: $42
    ld d, e                                       ; $4377: $53
    inc d                                         ; $4378: $14
    inc h                                         ; $4379: $24
    ld hl, $2312                                  ; $437a: $21 $12 $23
    inc [hl]                                      ; $437d: $34
    inc [hl]                                      ; $437e: $34
    ld b, h                                       ; $437f: $44
    ld b, l                                       ; $4380: $45
    ld h, l                                       ; $4381: $65
    ld l, c                                       ; $4382: $69
    add l                                         ; $4383: $85
    adc b                                         ; $4384: $88
    adc b                                         ; $4385: $88
    ld [hl], a                                    ; $4386: $77
    ld h, [hl]                                    ; $4387: $66
    ld d, l                                       ; $4388: $55
    ld d, l                                       ; $4389: $55
    ld h, [hl]                                    ; $438a: $66
    ld e, b                                       ; $438b: $58
    ld a, c                                       ; $438c: $79
    ld a, d                                       ; $438d: $7a
    xor d                                         ; $438e: $aa
    cp e                                          ; $438f: $bb
    cp h                                          ; $4390: $bc
    call c, $cbdc                                 ; $4391: $dc $dc $cb
    cp e                                          ; $4394: $bb
    cp e                                          ; $4395: $bb
    call $9beb                                    ; $4396: $cd $eb $9b
    sbc c                                         ; $4399: $99
    ld [hl], l                                    ; $439a: $75
    ld d, e                                       ; $439b: $53
    scf                                           ; $439c: $37
    ld d, d                                       ; $439d: $52
    ld h, [hl]                                    ; $439e: $66
    ld h, l                                       ; $439f: $65
    ld h, l                                       ; $43a0: $65
    ld h, l                                       ; $43a1: $65
    ld d, [hl]                                    ; $43a2: $56
    ld e, b                                       ; $43a3: $58
    ld d, l                                       ; $43a4: $55
    halt                                          ; $43a5: $76
    sub a                                         ; $43a6: $97
    ld l, b                                       ; $43a7: $68
    ld [hl], l                                    ; $43a8: $75
    ld h, l                                       ; $43a9: $65
    ld b, e                                       ; $43aa: $43
    inc h                                         ; $43ab: $24
    ld b, l                                       ; $43ac: $45
    ld h, [hl]                                    ; $43ad: $66
    ld [hl], a                                    ; $43ae: $77
    ld d, [hl]                                    ; $43af: $56
    inc [hl]                                      ; $43b0: $34
    ld [hl], h                                    ; $43b1: $74
    ld c, b                                       ; $43b2: $48
    ld h, $74                                     ; $43b3: $26 $74
    ld b, e                                       ; $43b5: $43
    ld b, h                                       ; $43b6: $44
    ld d, d                                       ; $43b7: $52
    inc sp                                        ; $43b8: $33
    ld b, l                                       ; $43b9: $45
    inc sp                                        ; $43ba: $33
    ld d, [hl]                                    ; $43bb: $56
    ld d, e                                       ; $43bc: $53
    ld d, l                                       ; $43bd: $55
    add [hl]                                      ; $43be: $86
    ld a, b                                       ; $43bf: $78
    adc c                                         ; $43c0: $89
    sbc c                                         ; $43c1: $99
    xor d                                         ; $43c2: $aa
    xor e                                         ; $43c3: $ab
    xor e                                         ; $43c4: $ab
    call $ccdc                                    ; $43c5: $cd $dc $cc
    call z, $dccb                                 ; $43c8: $cc $cb $dc
    db $dd                                        ; $43cb: $dd
    db $fd                                        ; $43cc: $fd
    cp $ed                                        ; $43cd: $fe $ed
    db $dd                                        ; $43cf: $dd
    db $dd                                        ; $43d0: $dd
    db $dd                                        ; $43d1: $dd
    call z, $bbcc                                 ; $43d2: $cc $cc $bb
    xor d                                         ; $43d5: $aa
    xor d                                         ; $43d6: $aa
    sbc b                                         ; $43d7: $98
    ld [hl], a                                    ; $43d8: $77
    ld d, a                                       ; $43d9: $57
    ld h, h                                       ; $43da: $64
    ld d, l                                       ; $43db: $55
    inc [hl]                                      ; $43dc: $34
    ld d, l                                       ; $43dd: $55
    ld d, [hl]                                    ; $43de: $56
    ld h, h                                       ; $43df: $64
    ld b, h                                       ; $43e0: $44
    ld d, h                                       ; $43e1: $54
    ld b, d                                       ; $43e2: $42
    ld d, l                                       ; $43e3: $55
    ld d, [hl]                                    ; $43e4: $56
    ld h, a                                       ; $43e5: $67
    add [hl]                                      ; $43e6: $86
    ld a, c                                       ; $43e7: $79
    ld [hl], a                                    ; $43e8: $77
    add a                                         ; $43e9: $87
    ld [hl], a                                    ; $43ea: $77
    ld [hl], a                                    ; $43eb: $77
    ld [hl], a                                    ; $43ec: $77
    halt                                          ; $43ed: $76
    ld h, [hl]                                    ; $43ee: $66
    ld d, l                                       ; $43ef: $55
    ld d, [hl]                                    ; $43f0: $56
    ld d, h                                       ; $43f1: $54
    ld h, a                                       ; $43f2: $67
    ld b, d                                       ; $43f3: $42
    ld b, h                                       ; $43f4: $44
    inc b                                         ; $43f5: $04
    ld [de], a                                    ; $43f6: $12
    ld hl, $4333                                  ; $43f7: $21 $33 $43
    ld [hl-], a                                   ; $43fa: $32
    inc sp                                        ; $43fb: $33
    inc sp                                        ; $43fc: $33
    ld b, h                                       ; $43fd: $44
    ld b, h                                       ; $43fe: $44
    ld b, l                                       ; $43ff: $45
    ld d, l                                       ; $4400: $55
    ld h, [hl]                                    ; $4401: $66
    ld h, [hl]                                    ; $4402: $66
    ld [hl], a                                    ; $4403: $77
    ld [hl], a                                    ; $4404: $77
    adc b                                         ; $4405: $88
    adc d                                         ; $4406: $8a
    adc d                                         ; $4407: $8a
    xor h                                         ; $4408: $ac
    sbc d                                         ; $4409: $9a
    jp z, $bdcb                                   ; $440a: $ca $cb $bd

    call z, $ecbc                                 ; $440d: $cc $bc $ec
    db $ed                                        ; $4410: $ed
    db $dd                                        ; $4411: $dd
    xor $ee                                       ; $4412: $ee $ee
    db $ed                                        ; $4414: $ed
    db $dd                                        ; $4415: $dd
    call z, $cbcc                                 ; $4416: $cc $cc $cb
    cp d                                          ; $4419: $ba
    cp d                                          ; $441a: $ba
    xor d                                         ; $441b: $aa
    sbc c                                         ; $441c: $99
    sbc c                                         ; $441d: $99
    sbc b                                         ; $441e: $98
    ld a, b                                       ; $441f: $78
    ld h, a                                       ; $4420: $67
    halt                                          ; $4421: $76
    ld h, l                                       ; $4422: $65
    ld d, l                                       ; $4423: $55
    ld b, l                                       ; $4424: $45
    ld b, h                                       ; $4425: $44
    ld b, h                                       ; $4426: $44
    ld b, d                                       ; $4427: $42
    ld [hl+], a                                   ; $4428: $22
    ld [hl+], a                                   ; $4429: $22
    ld [hl+], a                                   ; $442a: $22
    ld [hl+], a                                   ; $442b: $22
    inc sp                                        ; $442c: $33
    ld b, h                                       ; $442d: $44
    ld d, [hl]                                    ; $442e: $56
    ld d, [hl]                                    ; $442f: $56
    add [hl]                                      ; $4430: $86
    halt                                          ; $4431: $76
    ld h, [hl]                                    ; $4432: $66
    ld h, [hl]                                    ; $4433: $66
    ld h, l                                       ; $4434: $65
    ld d, [hl]                                    ; $4435: $56
    ld d, [hl]                                    ; $4436: $56
    ld d, [hl]                                    ; $4437: $56
    ld d, l                                       ; $4438: $55
    ld d, l                                       ; $4439: $55
    ld b, e                                       ; $443a: $43
    ld b, l                                       ; $443b: $45
    ld d, l                                       ; $443c: $55
    ld d, l                                       ; $443d: $55
    ld d, l                                       ; $443e: $55
    ld d, h                                       ; $443f: $54
    inc sp                                        ; $4440: $33
    ld [hl+], a                                   ; $4441: $22
    inc hl                                        ; $4442: $23
    ld b, e                                       ; $4443: $43
    inc [hl]                                      ; $4444: $34
    ld b, l                                       ; $4445: $45
    ld h, [hl]                                    ; $4446: $66
    ld [hl], l                                    ; $4447: $75
    ld d, h                                       ; $4448: $54
    ld b, l                                       ; $4449: $45
    ld h, [hl]                                    ; $444a: $66
    ld a, b                                       ; $444b: $78
    ld a, c                                       ; $444c: $79
    xor e                                         ; $444d: $ab
    cp e                                          ; $444e: $bb
    cp h                                          ; $444f: $bc
    call z, $cddd                                 ; $4450: $cc $dd $cd
    db $dd                                        ; $4453: $dd
    call $ddcd                                    ; $4454: $cd $cd $dd
    call c, $eedc                                 ; $4457: $dc $dc $ee
    sbc $ec                                       ; $445a: $de $ec
    res 5, d                                      ; $445c: $cb $aa
    xor c                                         ; $445e: $a9
    xor e                                         ; $445f: $ab
    xor c                                         ; $4460: $a9
    sbc d                                         ; $4461: $9a
    xor d                                         ; $4462: $aa
    cp d                                          ; $4463: $ba
    cp e                                          ; $4464: $bb
    xor d                                         ; $4465: $aa
    xor d                                         ; $4466: $aa
    xor e                                         ; $4467: $ab
    cp h                                          ; $4468: $bc
    rst $18                                       ; $4469: $df
    call c, $bbcb                                 ; $446a: $dc $cb $bb
    xor d                                         ; $446d: $aa
    cp d                                          ; $446e: $ba
    cp d                                          ; $446f: $ba
    xor d                                         ; $4470: $aa
    adc b                                         ; $4471: $88
    ld [hl], h                                    ; $4472: $74
    ld d, h                                       ; $4473: $54
    ld d, h                                       ; $4474: $54
    inc sp                                        ; $4475: $33
    ld de, $3344                                  ; $4476: $11 $44 $33
    inc sp                                        ; $4479: $33
    inc [hl]                                      ; $447a: $34
    ld d, h                                       ; $447b: $54
    ld b, h                                       ; $447c: $44
    ld b, [hl]                                    ; $447d: $46
    sub a                                         ; $447e: $97
    ld d, [hl]                                    ; $447f: $56
    ld h, a                                       ; $4480: $67
    adc b                                         ; $4481: $88
    sbc c                                         ; $4482: $99
    adc c                                         ; $4483: $89
    sbc b                                         ; $4484: $98
    sub a                                         ; $4485: $97
    ld [hl], a                                    ; $4486: $77
    halt                                          ; $4487: $76
    ld [hl], a                                    ; $4488: $77
    ld h, a                                       ; $4489: $67
    halt                                          ; $448a: $76
    ld h, [hl]                                    ; $448b: $66
    ld h, [hl]                                    ; $448c: $66
    ld d, l                                       ; $448d: $55
    ld h, [hl]                                    ; $448e: $66
    ld h, l                                       ; $448f: $65
    ld b, l                                       ; $4490: $45
    ld b, d                                       ; $4491: $42
    ld hl, $1301                                  ; $4492: $21 $01 $13
    inc h                                         ; $4495: $24
    ld [hl-], a                                   ; $4496: $32
    ld b, e                                       ; $4497: $43
    dec [hl]                                      ; $4498: $35
    ld d, [hl]                                    ; $4499: $56
    halt                                          ; $449a: $76
    ld a, b                                       ; $449b: $78
    sbc c                                         ; $449c: $99
    sbc b                                         ; $449d: $98
    sbc c                                         ; $449e: $99
    sbc d                                         ; $449f: $9a
    xor d                                         ; $44a0: $aa
    sbc c                                         ; $44a1: $99
    adc b                                         ; $44a2: $88
    adc c                                         ; $44a3: $89
    adc c                                         ; $44a4: $89
    add a                                         ; $44a5: $87
    ld [hl], a                                    ; $44a6: $77
    ld [hl], a                                    ; $44a7: $77
    ld [hl], a                                    ; $44a8: $77
    halt                                          ; $44a9: $76
    ld [hl], a                                    ; $44aa: $77
    ld h, a                                       ; $44ab: $67
    ld [hl], a                                    ; $44ac: $77
    halt                                          ; $44ad: $76
    halt                                          ; $44ae: $76
    ld h, l                                       ; $44af: $65
    ld d, [hl]                                    ; $44b0: $56
    ld h, [hl]                                    ; $44b1: $66
    ld d, [hl]                                    ; $44b2: $56
    ld d, l                                       ; $44b3: $55
    ld d, h                                       ; $44b4: $54
    ld d, h                                       ; $44b5: $54
    ld [hl+], a                                   ; $44b6: $22
    dec [hl]                                      ; $44b7: $35
    jr nz, jr_012_44ef                            ; $44b8: $20 $35

    ld h, [hl]                                    ; $44ba: $66
    ld [hl-], a                                   ; $44bb: $32
    ld h, h                                       ; $44bc: $64
    scf                                           ; $44bd: $37
    ld b, h                                       ; $44be: $44
    xor d                                         ; $44bf: $aa
    ld h, a                                       ; $44c0: $67
    ld a, d                                       ; $44c1: $7a
    xor h                                         ; $44c2: $ac
    xor c                                         ; $44c3: $a9
    adc d                                         ; $44c4: $8a
    sbc h                                         ; $44c5: $9c
    cp [hl]                                       ; $44c6: $be
    call z, $cacb                                 ; $44c7: $cc $cb $ca
    xor d                                         ; $44ca: $aa
    cp h                                          ; $44cb: $bc
    set 3, [hl]                                   ; $44cc: $cb $de
    db $db                                        ; $44ce: $db
    xor c                                         ; $44cf: $a9
    cp d                                          ; $44d0: $ba
    xor d                                         ; $44d1: $aa
    xor c                                         ; $44d2: $a9
    sbc c                                         ; $44d3: $99
    xor h                                         ; $44d4: $ac
    cp e                                          ; $44d5: $bb
    res 7, d                                      ; $44d6: $cb $ba
    xor d                                         ; $44d8: $aa
    cp e                                          ; $44d9: $bb
    adc d                                         ; $44da: $8a
    xor c                                         ; $44db: $a9
    xor e                                         ; $44dc: $ab
    cp h                                          ; $44dd: $bc
    cp d                                          ; $44de: $ba
    cp d                                          ; $44df: $ba
    xor c                                         ; $44e0: $a9
    add a                                         ; $44e1: $87
    cp d                                          ; $44e2: $ba
    cp c                                          ; $44e3: $b9
    ld h, a                                       ; $44e4: $67
    ld d, h                                       ; $44e5: $54
    ld d, [hl]                                    ; $44e6: $56
    ld h, a                                       ; $44e7: $67
    add [hl]                                      ; $44e8: $86
    halt                                          ; $44e9: $76
    ld h, a                                       ; $44ea: $67
    ld d, l                                       ; $44eb: $55
    ld h, e                                       ; $44ec: $63
    ld h, h                                       ; $44ed: $64
    ld b, [hl]                                    ; $44ee: $46

jr_012_44ef:
    ld d, h                                       ; $44ef: $54
    ld h, [hl]                                    ; $44f0: $66
    ld h, a                                       ; $44f1: $67
    ld e, b                                       ; $44f2: $58
    ld l, b                                       ; $44f3: $68
    adc b                                         ; $44f4: $88
    sbc c                                         ; $44f5: $99
    sbc c                                         ; $44f6: $99
    sbc c                                         ; $44f7: $99
    ld [hl], a                                    ; $44f8: $77
    ld h, h                                       ; $44f9: $64
    ld b, h                                       ; $44fa: $44
    ld [hl-], a                                   ; $44fb: $32
    ld de, $3212                                  ; $44fc: $11 $12 $32
    inc [hl]                                      ; $44ff: $34
    inc [hl]                                      ; $4500: $34
    ld d, e                                       ; $4501: $53
    ld b, a                                       ; $4502: $47
    ld [hl], l                                    ; $4503: $75
    ld d, d                                       ; $4504: $52
    ld d, e                                       ; $4505: $53
    ld d, d                                       ; $4506: $52
    ld hl, $1443                                  ; $4507: $21 $43 $14
    ld b, e                                       ; $450a: $43
    inc [hl]                                      ; $450b: $34
    inc sp                                        ; $450c: $33
    ld d, h                                       ; $450d: $54
    inc [hl]                                      ; $450e: $34
    ld b, e                                       ; $450f: $43
    inc [hl]                                      ; $4510: $34
    ld h, l                                       ; $4511: $65
    ld l, b                                       ; $4512: $68
    ld h, a                                       ; $4513: $67
    add [hl]                                      ; $4514: $86
    ld l, b                                       ; $4515: $68
    add l                                         ; $4516: $85
    sub a                                         ; $4517: $97
    sbc b                                         ; $4518: $98
    adc b                                         ; $4519: $88
    xor b                                         ; $451a: $a8
    sbc c                                         ; $451b: $99
    sbc c                                         ; $451c: $99
    cp e                                          ; $451d: $bb
    db $dd                                        ; $451e: $dd
    db $ed                                        ; $451f: $ed
    cp [hl]                                       ; $4520: $be
    call $babb                                    ; $4521: $cd $bb $ba
    cp d                                          ; $4524: $ba
    xor e                                         ; $4525: $ab
    xor e                                         ; $4526: $ab
    cp e                                          ; $4527: $bb
    cp e                                          ; $4528: $bb
    cp d                                          ; $4529: $ba
    cp e                                          ; $452a: $bb
    xor d                                         ; $452b: $aa
    xor d                                         ; $452c: $aa
    sbc c                                         ; $452d: $99
    adc b                                         ; $452e: $88
    ld l, b                                       ; $452f: $68
    sbc c                                         ; $4530: $99
    add [hl]                                      ; $4531: $86
    ld a, b                                       ; $4532: $78
    ld e, c                                       ; $4533: $59
    ld b, l                                       ; $4534: $45
    ld b, h                                       ; $4535: $44
    ld b, h                                       ; $4536: $44
    ld [hl+], a                                   ; $4537: $22
    inc sp                                        ; $4538: $33
    ld b, h                                       ; $4539: $44
    ld b, h                                       ; $453a: $44
    ld b, l                                       ; $453b: $45
    ld h, [hl]                                    ; $453c: $66
    ld [hl], a                                    ; $453d: $77
    ld [hl], a                                    ; $453e: $77
    adc c                                         ; $453f: $89
    sbc c                                         ; $4540: $99
    xor d                                         ; $4541: $aa
    cp e                                          ; $4542: $bb
    set 1, e                                      ; $4543: $cb $cb
    cp e                                          ; $4545: $bb
    call $eeff                                    ; $4546: $cd $ff $ee
    db $ed                                        ; $4549: $ed
    call z, $98b9                                 ; $454a: $cc $b9 $98
    ld [hl], a                                    ; $454d: $77
    ld h, [hl]                                    ; $454e: $66
    ld d, h                                       ; $454f: $54
    inc sp                                        ; $4550: $33
    ld b, e                                       ; $4551: $43
    ld b, [hl]                                    ; $4552: $46
    ld h, [hl]                                    ; $4553: $66
    ld h, [hl]                                    ; $4554: $66
    ld d, a                                       ; $4555: $57
    ld h, a                                       ; $4556: $67
    ld h, [hl]                                    ; $4557: $66
    ld a, b                                       ; $4558: $78
    adc b                                         ; $4559: $88
    add a                                         ; $455a: $87
    adc b                                         ; $455b: $88
    ld a, d                                       ; $455c: $7a
    sbc c                                         ; $455d: $99
    xor b                                         ; $455e: $a8
    xor d                                         ; $455f: $aa
    cp d                                          ; $4560: $ba
    xor e                                         ; $4561: $ab
    xor c                                         ; $4562: $a9
    adc d                                         ; $4563: $8a
    sbc b                                         ; $4564: $98
    add a                                         ; $4565: $87
    add a                                         ; $4566: $87
    sbc b                                         ; $4567: $98
    ld d, a                                       ; $4568: $57
    ld d, l                                       ; $4569: $55
    ld l, b                                       ; $456a: $68
    add a                                         ; $456b: $87
    ld a, b                                       ; $456c: $78
    adc b                                         ; $456d: $88
    sbc d                                         ; $456e: $9a
    xor e                                         ; $456f: $ab
    cp h                                          ; $4570: $bc
    cp d                                          ; $4571: $ba
    cp e                                          ; $4572: $bb
    xor d                                         ; $4573: $aa
    sbc d                                         ; $4574: $9a
    sbc b                                         ; $4575: $98
    sbc b                                         ; $4576: $98
    add a                                         ; $4577: $87
    halt                                          ; $4578: $76
    ld h, l                                       ; $4579: $65
    ld b, l                                       ; $457a: $45
    ld b, e                                       ; $457b: $43
    ld [hl-], a                                   ; $457c: $32
    ld de, $1000                                  ; $457d: $11 $00 $10
    ld [de], a                                    ; $4580: $12
    ld [de], a                                    ; $4581: $12

Call_012_4582:
Jump_012_4582:
    inc sp                                        ; $4582: $33
    inc [hl]                                      ; $4583: $34
    ld d, l                                       ; $4584: $55
    ld d, h                                       ; $4585: $54
    ld d, a                                       ; $4586: $57
    ld [hl], a                                    ; $4587: $77
    add a                                         ; $4588: $87
    ld a, b                                       ; $4589: $78
    call $caed                                    ; $458a: $cd $ed $ca
    add a                                         ; $458d: $87
    ld d, h                                       ; $458e: $54
    dec [hl]                                      ; $458f: $35
    ld d, [hl]                                    ; $4590: $56
    adc b                                         ; $4591: $88
    sbc b                                         ; $4592: $98
    sbc c                                         ; $4593: $99
    ld h, [hl]                                    ; $4594: $66
    ld d, [hl]                                    ; $4595: $56
    ld h, [hl]                                    ; $4596: $66
    reti                                          ; $4597: $d9


    xor $6b                                       ; $4598: $ee $6b
    sub l                                         ; $459a: $95
    jp hl                                         ; $459b: $e9


    or l                                          ; $459c: $b5
    sbc h                                         ; $459d: $9c
    cp l                                          ; $459e: $bd
    call $bc88                                    ; $459f: $cd $88 $bc
    sbc e                                         ; $45a2: $9b
    cp b                                          ; $45a3: $b8
    xor b                                         ; $45a4: $a8
    sbc d                                         ; $45a5: $9a
    xor e                                         ; $45a6: $ab
    sbc b                                         ; $45a7: $98
    adc c                                         ; $45a8: $89
    sbc d                                         ; $45a9: $9a
    cp d                                          ; $45aa: $ba
    sbc b                                         ; $45ab: $98
    sbc c                                         ; $45ac: $99
    add a                                         ; $45ad: $87
    halt                                          ; $45ae: $76
    ld h, [hl]                                    ; $45af: $66
    ld h, [hl]                                    ; $45b0: $66
    ld h, a                                       ; $45b1: $67
    ld d, h                                       ; $45b2: $54
    ld d, [hl]                                    ; $45b3: $56
    ld h, l                                       ; $45b4: $65
    ld h, [hl]                                    ; $45b5: $66
    ld h, [hl]                                    ; $45b6: $66
    adc b                                         ; $45b7: $88
    add a                                         ; $45b8: $87
    ld h, [hl]                                    ; $45b9: $66
    ld h, l                                       ; $45ba: $65
    ld h, h                                       ; $45bb: $64
    ld a, b                                       ; $45bc: $78
    ld d, d                                       ; $45bd: $52
    ld d, l                                       ; $45be: $55
    ld h, [hl]                                    ; $45bf: $66
    ld d, h                                       ; $45c0: $54
    add hl, hl                                    ; $45c1: $29
    ld [hl], l                                    ; $45c2: $75
    ld l, c                                       ; $45c3: $69
    adc b                                         ; $45c4: $88
    ld [hl], a                                    ; $45c5: $77
    add l                                         ; $45c6: $85
    ld h, l                                       ; $45c7: $65
    ld b, [hl]                                    ; $45c8: $46
    jr nz, jr_012_45ed                            ; $45c9: $20 $22

    inc h                                         ; $45cb: $24
    ld b, h                                       ; $45cc: $44
    ld b, l                                       ; $45cd: $45
    ld d, [hl]                                    ; $45ce: $56
    ld h, l                                       ; $45cf: $65
    ld d, l                                       ; $45d0: $55
    ld h, [hl]                                    ; $45d1: $66
    halt                                          ; $45d2: $76
    adc c                                         ; $45d3: $89
    adc c                                         ; $45d4: $89
    sbc b                                         ; $45d5: $98
    sbc e                                         ; $45d6: $9b
    cp d                                          ; $45d7: $ba
    xor c                                         ; $45d8: $a9
    jp z, $ccbd                                   ; $45d9: $ca $bd $cc

    cp d                                          ; $45dc: $ba
    cp e                                          ; $45dd: $bb
    cp e                                          ; $45de: $bb
    cp d                                          ; $45df: $ba
    cp e                                          ; $45e0: $bb
    xor $de                                       ; $45e1: $ee $de
    reti                                          ; $45e3: $d9


    cp c                                          ; $45e4: $b9
    xor h                                         ; $45e5: $ac
    db $dd                                        ; $45e6: $dd
    sbc b                                         ; $45e7: $98
    call z, $cbc8                                 ; $45e8: $cc $c8 $cb
    adc d                                         ; $45eb: $8a
    sbc b                                         ; $45ec: $98

jr_012_45ed:
    adc c                                         ; $45ed: $89
    adc b                                         ; $45ee: $88
    ld [hl], a                                    ; $45ef: $77
    adc b                                         ; $45f0: $88
    ld a, c                                       ; $45f1: $79
    sbc b                                         ; $45f2: $98
    sbc b                                         ; $45f3: $98
    adc c                                         ; $45f4: $89
    adc b                                         ; $45f5: $88
    halt                                          ; $45f6: $76
    ld e, b                                       ; $45f7: $58
    ld h, h                                       ; $45f8: $64
    ld d, a                                       ; $45f9: $57
    ld [hl], a                                    ; $45fa: $77
    ld d, l                                       ; $45fb: $55
    ld d, l                                       ; $45fc: $55
    ld b, d                                       ; $45fd: $42
    inc h                                         ; $45fe: $24
    inc hl                                        ; $45ff: $23
    ld b, h                                       ; $4600: $44
    ld b, e                                       ; $4601: $43
    ld b, h                                       ; $4602: $44
    inc h                                         ; $4603: $24
    inc sp                                        ; $4604: $33
    ld hl, $1110                                  ; $4605: $21 $10 $11
    inc de                                        ; $4608: $13
    ld hl, $4433                                  ; $4609: $21 $33 $44
    ld b, l                                       ; $460c: $45
    ld d, l                                       ; $460d: $55
    ld h, l                                       ; $460e: $65
    ld h, [hl]                                    ; $460f: $66
    ld h, a                                       ; $4610: $67
    adc b                                         ; $4611: $88
    sbc c                                         ; $4612: $99
    sbc c                                         ; $4613: $99
    xor c                                         ; $4614: $a9
    sbc c                                         ; $4615: $99
    sbc c                                         ; $4616: $99
    adc b                                         ; $4617: $88
    adc b                                         ; $4618: $88
    adc c                                         ; $4619: $89
    sbc b                                         ; $461a: $98
    ld [hl], a                                    ; $461b: $77
    ld [hl], a                                    ; $461c: $77
    ld [hl], a                                    ; $461d: $77
    ld d, [hl]                                    ; $461e: $56
    sub [hl]                                      ; $461f: $96
    add a                                         ; $4620: $87
    ld [hl], a                                    ; $4621: $77
    inc [hl]                                      ; $4622: $34
    add [hl]                                      ; $4623: $86
    ld d, l                                       ; $4624: $55
    ld [hl], e                                    ; $4625: $73
    ld d, l                                       ; $4626: $55
    db $10                                        ; $4627: $10
    jr nz, jr_012_465f                            ; $4628: $20 $35

    inc [hl]                                      ; $462a: $34
    ld b, l                                       ; $462b: $45
    ld h, [hl]                                    ; $462c: $66
    ld l, b                                       ; $462d: $68
    ld l, b                                       ; $462e: $68
    add a                                         ; $462f: $87
    adc b                                         ; $4630: $88
    adc c                                         ; $4631: $89
    sbc e                                         ; $4632: $9b
    jp z, $dfdd                                   ; $4633: $ca $dd $df

    cp $ee                                        ; $4636: $fe $ee
    db $dd                                        ; $4638: $dd
    cp $ee                                        ; $4639: $fe $ee
    db $ed                                        ; $463b: $ed
    call c, $cbdc                                 ; $463c: $dc $dc $cb
    cp e                                          ; $463f: $bb
    xor c                                         ; $4640: $a9
    sub a                                         ; $4641: $97
    ld l, b                                       ; $4642: $68
    ld a, b                                       ; $4643: $78
    ld l, b                                       ; $4644: $68
    add l                                         ; $4645: $85
    ld d, [hl]                                    ; $4646: $56
    ld d, h                                       ; $4647: $54
    ld [hl], h                                    ; $4648: $74
    ld h, a                                       ; $4649: $67
    ld b, l                                       ; $464a: $45
    ld h, l                                       ; $464b: $65
    ld h, a                                       ; $464c: $67
    sub [hl]                                      ; $464d: $96
    xor c                                         ; $464e: $a9
    sbc d                                         ; $464f: $9a
    cp h                                          ; $4650: $bc
    sbc d                                         ; $4651: $9a
    ret                                           ; $4652: $c9


    jp c, $bbc9                                   ; $4653: $da $c9 $bb

    xor b                                         ; $4656: $a8
    adc d                                         ; $4657: $8a
    sbc b                                         ; $4658: $98
    ld a, b                                       ; $4659: $78
    ld l, c                                       ; $465a: $69
    adc b                                         ; $465b: $88
    ld [hl], a                                    ; $465c: $77
    ld h, h                                       ; $465d: $64
    ld b, l                                       ; $465e: $45

jr_012_465f:
    inc [hl]                                      ; $465f: $34
    ld b, e                                       ; $4660: $43
    ld d, [hl]                                    ; $4661: $56
    ld d, l                                       ; $4662: $55
    ld h, [hl]                                    ; $4663: $66
    ld d, [hl]                                    ; $4664: $56
    ld d, h                                       ; $4665: $54
    inc sp                                        ; $4666: $33
    ld d, h                                       ; $4667: $54
    ld b, d                                       ; $4668: $42
    ld b, c                                       ; $4669: $41
    ld [hl+], a                                   ; $466a: $22
    ld de, $1212                                  ; $466b: $11 $12 $12
    inc [hl]                                      ; $466e: $34
    ld d, e                                       ; $466f: $53
    ld b, [hl]                                    ; $4670: $46
    ld b, l                                       ; $4671: $45
    ld e, b                                       ; $4672: $58
    xor e                                         ; $4673: $ab
    call z, $dccc                                 ; $4674: $cc $cc $dc
    db $dd                                        ; $4677: $dd
    call z, $abbc                                 ; $4678: $cc $bc $ab
    cp h                                          ; $467b: $bc
    xor d                                         ; $467c: $aa
    xor d                                         ; $467d: $aa
    cp d                                          ; $467e: $ba
    sub a                                         ; $467f: $97
    xor d                                         ; $4680: $aa
    xor d                                         ; $4681: $aa
    db $dd                                        ; $4682: $dd
    jp z, $9979                                   ; $4683: $ca $79 $99

    adc c                                         ; $4686: $89
    sub a                                         ; $4687: $97
    adc c                                         ; $4688: $89
    adc b                                         ; $4689: $88
    sbc d                                         ; $468a: $9a
    sub a                                         ; $468b: $97
    sbc e                                         ; $468c: $9b
    sbc b                                         ; $468d: $98
    adc b                                         ; $468e: $88
    add a                                         ; $468f: $87
    add a                                         ; $4690: $87
    ld a, b                                       ; $4691: $78
    add a                                         ; $4692: $87
    sbc d                                         ; $4693: $9a
    adc b                                         ; $4694: $88
    ld d, [hl]                                    ; $4695: $56
    ld d, l                                       ; $4696: $55
    ld h, [hl]                                    ; $4697: $66
    halt                                          ; $4698: $76
    ld a, b                                       ; $4699: $78
    sbc c                                         ; $469a: $99
    sbc c                                         ; $469b: $99
    xor c                                         ; $469c: $a9
    ld [hl], a                                    ; $469d: $77
    ld h, [hl]                                    ; $469e: $66
    halt                                          ; $469f: $76
    ld b, [hl]                                    ; $46a0: $46
    halt                                          ; $46a1: $76
    ld h, [hl]                                    ; $46a2: $66
    ld de, $4451                                  ; $46a3: $11 $51 $44
    inc sp                                        ; $46a6: $33
    ld b, h                                       ; $46a7: $44
    ld e, b                                       ; $46a8: $58
    ld b, l                                       ; $46a9: $45
    xor c                                         ; $46aa: $a9
    halt                                          ; $46ab: $76
    ld a, d                                       ; $46ac: $7a
    and a                                         ; $46ad: $a7
    ld a, b                                       ; $46ae: $78
    adc b                                         ; $46af: $88
    add [hl]                                      ; $46b0: $86
    ld [hl], a                                    ; $46b1: $77
    ld h, a                                       ; $46b2: $67
    ld h, a                                       ; $46b3: $67
    ld [hl], a                                    ; $46b4: $77
    ld b, l                                       ; $46b5: $45
    ld b, l                                       ; $46b6: $45
    ld d, [hl]                                    ; $46b7: $56
    ld h, h                                       ; $46b8: $64
    ld [hl-], a                                   ; $46b9: $32
    ld [hl-], a                                   ; $46ba: $32
    inc [hl]                                      ; $46bb: $34
    ld de, $4433                                  ; $46bc: $11 $33 $44
    ld d, l                                       ; $46bf: $55
    ld h, [hl]                                    ; $46c0: $66
    ld h, [hl]                                    ; $46c1: $66
    ld a, b                                       ; $46c2: $78
    adc b                                         ; $46c3: $88
    xor h                                         ; $46c4: $ac
    db $dd                                        ; $46c5: $dd
    rst $38                                       ; $46c6: $ff
    xor $ef                                       ; $46c7: $ee $ef
    xor $ed                                       ; $46c9: $ee $ed
    call z, $aacb                                 ; $46cb: $cc $cb $aa
    sbc c                                         ; $46ce: $99
    sbc d                                         ; $46cf: $9a
    adc c                                         ; $46d0: $89
    cp e                                          ; $46d1: $bb
    sbc b                                         ; $46d2: $98
    cp c                                          ; $46d3: $b9
    ld d, e                                       ; $46d4: $53
    ld b, h                                       ; $46d5: $44
    ld b, c                                       ; $46d6: $41
    ld h, e                                       ; $46d7: $63
    ld b, h                                       ; $46d8: $44
    ld d, e                                       ; $46d9: $53
    ld b, h                                       ; $46da: $44
    ld b, h                                       ; $46db: $44
    ld [hl], $55                                  ; $46dc: $36 $55
    ld d, [hl]                                    ; $46de: $56
    ld d, [hl]                                    ; $46df: $56
    ld b, a                                       ; $46e0: $47
    ld h, a                                       ; $46e1: $67
    ld a, b                                       ; $46e2: $78
    adc b                                         ; $46e3: $88
    xor c                                         ; $46e4: $a9
    sbc e                                         ; $46e5: $9b
    cp e                                          ; $46e6: $bb
    xor $dd                                       ; $46e7: $ee $dd
    call z, $ccce                                 ; $46e9: $cc $ce $cc
    call z, $aaba                                 ; $46ec: $cc $ba $aa
    sbc c                                         ; $46ef: $99
    add a                                         ; $46f0: $87
    ld h, a                                       ; $46f1: $67
    ld h, l                                       ; $46f2: $65
    ld b, l                                       ; $46f3: $45
    ld b, h                                       ; $46f4: $44
    ld b, h                                       ; $46f5: $44
    ld b, h                                       ; $46f6: $44
    ld d, [hl]                                    ; $46f7: $56
    ld b, h                                       ; $46f8: $44
    ld b, l                                       ; $46f9: $45
    ld d, l                                       ; $46fa: $55
    ld [hl], a                                    ; $46fb: $77
    adc b                                         ; $46fc: $88
    sbc d                                         ; $46fd: $9a
    ld [hl], a                                    ; $46fe: $77
    ld [hl], a                                    ; $46ff: $77
    adc b                                         ; $4700: $88
    adc b                                         ; $4701: $88
    adc c                                         ; $4702: $89
    sub a                                         ; $4703: $97
    adc c                                         ; $4704: $89
    add a                                         ; $4705: $87
    sbc c                                         ; $4706: $99
    sbc c                                         ; $4707: $99
    xor d                                         ; $4708: $aa
    cp e                                          ; $4709: $bb
    jp z, $ccbe                                   ; $470a: $ca $be $cc

    res 5, d                                      ; $470d: $cb $aa
    xor c                                         ; $470f: $a9
    add a                                         ; $4710: $87
    ld a, b                                       ; $4711: $78
    adc b                                         ; $4712: $88
    adc b                                         ; $4713: $88
    add a                                         ; $4714: $87
    ld h, l                                       ; $4715: $65
    ld d, [hl]                                    ; $4716: $56
    ld h, [hl]                                    ; $4717: $66
    halt                                          ; $4718: $76
    ld d, h                                       ; $4719: $54
    ld l, c                                       ; $471a: $69
    halt                                          ; $471b: $76
    add a                                         ; $471c: $87
    ld d, h                                       ; $471d: $54
    ld d, a                                       ; $471e: $57
    ld h, l                                       ; $471f: $65
    ld b, [hl]                                    ; $4720: $46
    ld [hl], a                                    ; $4721: $77
    sbc b                                         ; $4722: $98
    cp h                                          ; $4723: $bc
    ret z                                         ; $4724: $c8

    ld a, b                                       ; $4725: $78
    xor l                                         ; $4726: $ad
    ld d, [hl]                                    ; $4727: $56
    sbc e                                         ; $4728: $9b
    add sp, -$46                                  ; $4729: $e8 $ba
    cp d                                          ; $472b: $ba
    ld a, b                                       ; $472c: $78
    xor e                                         ; $472d: $ab
    ret                                           ; $472e: $c9


    add [hl]                                      ; $472f: $86
    ld d, a                                       ; $4730: $57
    ld b, l                                       ; $4731: $45
    ld b, e                                       ; $4732: $43
    ld [hl-], a                                   ; $4733: $32
    jr nz, jr_012_4799                            ; $4734: $20 $63

    inc h                                         ; $4736: $24
    ld sp, $3023                                  ; $4737: $31 $23 $30
    ld b, b                                       ; $473a: $40
    ld de, $2101                                  ; $473b: $11 $01 $21
    ld b, e                                       ; $473e: $43
    inc hl                                        ; $473f: $23
    inc [hl]                                      ; $4740: $34
    ld d, [hl]                                    ; $4741: $56
    ld h, e                                       ; $4742: $63
    dec h                                         ; $4743: $25
    inc [hl]                                      ; $4744: $34
    ld b, e                                       ; $4745: $43
    ld l, b                                       ; $4746: $68
    ld [hl], a                                    ; $4747: $77
    adc b                                         ; $4748: $88
    add a                                         ; $4749: $87
    ld h, [hl]                                    ; $474a: $66
    ld h, l                                       ; $474b: $65
    ld h, a                                       ; $474c: $67
    adc b                                         ; $474d: $88
    adc b                                         ; $474e: $88
    adc b                                         ; $474f: $88
    adc c                                         ; $4750: $89
    adc c                                         ; $4751: $89
    ld a, b                                       ; $4752: $78
    add a                                         ; $4753: $87
    ld [hl], a                                    ; $4754: $77
    adc b                                         ; $4755: $88
    ld [hl], a                                    ; $4756: $77
    sbc d                                         ; $4757: $9a
    cp e                                          ; $4758: $bb
    call $c9cc                                    ; $4759: $cd $cc $c9
    cp h                                          ; $475c: $bc
    adc $bc                                       ; $475d: $ce $bc
    call c, $bbca                                 ; $475f: $dc $ca $bb
    cp h                                          ; $4762: $bc
    set 1, l                                      ; $4763: $cb $cd
    db $dd                                        ; $4765: $dd
    db $eb                                        ; $4766: $eb
    xor d                                         ; $4767: $aa
    xor d                                         ; $4768: $aa
    xor c                                         ; $4769: $a9
    sbc b                                         ; $476a: $98
    add a                                         ; $476b: $87
    ld h, a                                       ; $476c: $67
    ld h, l                                       ; $476d: $65
    ld e, c                                       ; $476e: $59
    halt                                          ; $476f: $76
    adc b                                         ; $4770: $88
    ld a, b                                       ; $4771: $78
    sbc c                                         ; $4772: $99
    sbc d                                         ; $4773: $9a
    ld a, b                                       ; $4774: $78
    adc b                                         ; $4775: $88

Jump_012_4776:
    ld h, a                                       ; $4776: $67
    ld h, [hl]                                    ; $4777: $66
    ld h, a                                       ; $4778: $67
    ld a, b                                       ; $4779: $78
    ld h, a                                       ; $477a: $67
    ld [hl], l                                    ; $477b: $75
    ld d, l                                       ; $477c: $55
    ld b, [hl]                                    ; $477d: $46
    ld h, l                                       ; $477e: $65
    ld h, h                                       ; $477f: $64
    ld [hl-], a                                   ; $4780: $32
    ld [hl+], a                                   ; $4781: $22
    inc sp                                        ; $4782: $33
    ld d, l                                       ; $4783: $55
    ld b, [hl]                                    ; $4784: $46
    ld d, l                                       ; $4785: $55
    xor l                                         ; $4786: $ad
    xor c                                         ; $4787: $a9
    add a                                         ; $4788: $87
    ld h, l                                       ; $4789: $65
    sbc d                                         ; $478a: $9a
    sbc d                                         ; $478b: $9a
    xor h                                         ; $478c: $ac
    cp l                                          ; $478d: $bd
    db $dd                                        ; $478e: $dd
    db $dd                                        ; $478f: $dd
    db $dd                                        ; $4790: $dd
    cp h                                          ; $4791: $bc
    cp d                                          ; $4792: $ba
    adc b                                         ; $4793: $88
    adc c                                         ; $4794: $89
    sbc c                                         ; $4795: $99
    xor e                                         ; $4796: $ab
    cp c                                          ; $4797: $b9
    cp l                                          ; $4798: $bd

jr_012_4799:
    call z, $dabb                                 ; $4799: $cc $bb $da
    xor e                                         ; $479c: $ab
    sbc c                                         ; $479d: $99
    sbc c                                         ; $479e: $99
    adc c                                         ; $479f: $89
    adc d                                         ; $47a0: $8a
    xor d                                         ; $47a1: $aa
    sbc d                                         ; $47a2: $9a
    adc c                                         ; $47a3: $89
    sbc d                                         ; $47a4: $9a
    sbc c                                         ; $47a5: $99
    add a                                         ; $47a6: $87
    ld [hl], l                                    ; $47a7: $75
    ld b, e                                       ; $47a8: $43
    ld de, $3322                                  ; $47a9: $11 $22 $33
    ld b, e                                       ; $47ac: $43
    inc [hl]                                      ; $47ad: $34
    ld [hl-], a                                   ; $47ae: $32
    ld hl, $1110                                  ; $47af: $21 $10 $11
    nop                                           ; $47b2: $00
    nop                                           ; $47b3: $00
    ld hl, $2222                                  ; $47b4: $21 $22 $22
    inc hl                                        ; $47b7: $23
    inc h                                         ; $47b8: $24
    ld b, l                                       ; $47b9: $45
    ld d, l                                       ; $47ba: $55
    ld h, [hl]                                    ; $47bb: $66
    ld h, [hl]                                    ; $47bc: $66
    halt                                          ; $47bd: $76
    ld [hl], a                                    ; $47be: $77
    ld [hl], a                                    ; $47bf: $77
    adc c                                         ; $47c0: $89
    cp e                                          ; $47c1: $bb
    res 7, e                                      ; $47c2: $cb $bb
    xor c                                         ; $47c4: $a9
    sbc c                                         ; $47c5: $99
    adc b                                         ; $47c6: $88
    adc b                                         ; $47c7: $88
    ld h, a                                       ; $47c8: $67
    ld d, h                                       ; $47c9: $54
    ld b, h                                       ; $47ca: $44
    ld b, h                                       ; $47cb: $44
    ld b, [hl]                                    ; $47cc: $46
    ld h, a                                       ; $47cd: $67
    add a                                         ; $47ce: $87
    ld [hl], l                                    ; $47cf: $75
    adc c                                         ; $47d0: $89
    sbc c                                         ; $47d1: $99
    adc b                                         ; $47d2: $88
    adc d                                         ; $47d3: $8a
    call $a9c9                                    ; $47d4: $cd $c9 $a9
    sub a                                         ; $47d7: $97
    ld b, h                                       ; $47d8: $44
    inc hl                                        ; $47d9: $23
    ld a, b                                       ; $47da: $78
    add [hl]                                      ; $47db: $86
    ld d, h                                       ; $47dc: $54
    adc b                                         ; $47dd: $88
    adc b                                         ; $47de: $88
    adc b                                         ; $47df: $88
    adc b                                         ; $47e0: $88
    adc b                                         ; $47e1: $88
    xor c                                         ; $47e2: $a9
    sbc b                                         ; $47e3: $98
    sbc c                                         ; $47e4: $99
    xor h                                         ; $47e5: $ac
    cp h                                          ; $47e6: $bc
    db $dd                                        ; $47e7: $dd
    db $dd                                        ; $47e8: $dd
    sbc $fd                                       ; $47e9: $de $fd
    db $dd                                        ; $47eb: $dd
    db $dd                                        ; $47ec: $dd
    db $dd                                        ; $47ed: $dd
    call z, $dcbd                                 ; $47ee: $cc $bd $dc
    db $db                                        ; $47f1: $db
    cp e                                          ; $47f2: $bb
    set 3, e                                      ; $47f3: $cb $db
    db $ec                                        ; $47f5: $ec
    call $abdb                                    ; $47f6: $cd $db $ab
    jp z, $abab                                   ; $47f9: $ca $ab $ab

    sub a                                         ; $47fc: $97
    adc b                                         ; $47fd: $88
    halt                                          ; $47fe: $76
    ld d, l                                       ; $47ff: $55
    ld d, h                                       ; $4800: $54
    ld b, h                                       ; $4801: $44
    ld b, h                                       ; $4802: $44
    inc [hl]                                      ; $4803: $34
    ld b, e                                       ; $4804: $43
    inc hl                                        ; $4805: $23
    ld hl, $1121                                  ; $4806: $21 $21 $11
    ld de, $1211                                  ; $4809: $11 $11 $12
    ld [hl+], a                                   ; $480c: $22
    inc hl                                        ; $480d: $23
    inc sp                                        ; $480e: $33
    ld b, h                                       ; $480f: $44
    ld b, h                                       ; $4810: $44
    ld b, h                                       ; $4811: $44
    ld d, l                                       ; $4812: $55
    ld h, [hl]                                    ; $4813: $66
    ld d, [hl]                                    ; $4814: $56
    ld h, l                                       ; $4815: $65
    ld d, l                                       ; $4816: $55
    ld d, l                                       ; $4817: $55
    ld d, l                                       ; $4818: $55
    ld h, [hl]                                    ; $4819: $66
    ld h, [hl]                                    ; $481a: $66
    ld a, c                                       ; $481b: $79
    cp d                                          ; $481c: $ba
    or a                                          ; $481d: $b7
    xor c                                         ; $481e: $a9
    or [hl]                                       ; $481f: $b6
    adc e                                         ; $4820: $8b
    adc b                                         ; $4821: $88
    sbc b                                         ; $4822: $98
    jp z, $cab9                                   ; $4823: $ca $b9 $ca

    xor c                                         ; $4826: $a9
    sbc c                                         ; $4827: $99
    xor h                                         ; $4828: $ac
    adc c                                         ; $4829: $89
    db $ec                                        ; $482a: $ec
    cp e                                          ; $482b: $bb
    xor l                                         ; $482c: $ad
    jp c, $aa9c                                   ; $482d: $da $9c $aa

    sbc b                                         ; $4830: $98
    jp z, $8589                                   ; $4831: $ca $89 $85

    ld h, [hl]                                    ; $4834: $66
    add l                                         ; $4835: $85
    ld d, [hl]                                    ; $4836: $56
    ld h, h                                       ; $4837: $64
    sub a                                         ; $4838: $97
    ld l, c                                       ; $4839: $69
    sub a                                         ; $483a: $97
    adc b                                         ; $483b: $88
    adc c                                         ; $483c: $89
    ld a, c                                       ; $483d: $79
    xor c                                         ; $483e: $a9
    sbc e                                         ; $483f: $9b
    xor c                                         ; $4840: $a9
    rst $00                                       ; $4841: $c7
    jp c, $ebac                                   ; $4842: $da $ac $eb

    res 3, e                                      ; $4845: $cb $9b
    ret                                           ; $4847: $c9


    cp d                                          ; $4848: $ba
    sbc h                                         ; $4849: $9c
    adc c                                         ; $484a: $89
    xor c                                         ; $484b: $a9
    xor d                                         ; $484c: $aa
    sbc c                                         ; $484d: $99
    adc c                                         ; $484e: $89
    add [hl]                                      ; $484f: $86
    adc b                                         ; $4850: $88
    sbc c                                         ; $4851: $99
    adc c                                         ; $4852: $89
    ld a, b                                       ; $4853: $78
    adc c                                         ; $4854: $89
    adc b                                         ; $4855: $88
    add l                                         ; $4856: $85
    ld h, l                                       ; $4857: $65
    ld h, a                                       ; $4858: $67
    ld b, l                                       ; $4859: $45
    ld h, [hl]                                    ; $485a: $66
    ld d, l                                       ; $485b: $55
    ld d, [hl]                                    ; $485c: $56
    ld d, l                                       ; $485d: $55
    ld d, l                                       ; $485e: $55
    ld d, h                                       ; $485f: $54
    ld b, e                                       ; $4860: $43
    ld hl, $2121                                  ; $4861: $21 $21 $21
    ld [de], a                                    ; $4864: $12
    ld [hl+], a                                   ; $4865: $22
    ld b, e                                       ; $4866: $43
    inc [hl]                                      ; $4867: $34
    inc [hl]                                      ; $4868: $34
    ld b, h                                       ; $4869: $44
    ld b, h                                       ; $486a: $44
    ld d, l                                       ; $486b: $55
    ld d, [hl]                                    ; $486c: $56
    adc b                                         ; $486d: $88
    ld a, b                                       ; $486e: $78
    sbc c                                         ; $486f: $99
    cp c                                          ; $4870: $b9
    res 5, d                                      ; $4871: $cb $aa
    xor c                                         ; $4873: $a9
    halt                                          ; $4874: $76
    sbc d                                         ; $4875: $9a
    cp [hl]                                       ; $4876: $be
    res 1, c                                      ; $4877: $cb $89
    sbc d                                         ; $4879: $9a
    and [hl]                                      ; $487a: $a6
    ld b, h                                       ; $487b: $44
    ld b, h                                       ; $487c: $44
    ld b, h                                       ; $487d: $44
    ld b, l                                       ; $487e: $45
    dec h                                         ; $487f: $25
    ld b, [hl]                                    ; $4880: $46
    ld d, a                                       ; $4881: $57
    ld d, [hl]                                    ; $4882: $56
    ld d, l                                       ; $4883: $55
    ld d, l                                       ; $4884: $55
    ld d, [hl]                                    ; $4885: $56
    ld d, h                                       ; $4886: $54
    ld b, l                                       ; $4887: $45
    ld h, [hl]                                    ; $4888: $66
    ld h, [hl]                                    ; $4889: $66
    ld h, [hl]                                    ; $488a: $66
    ld d, [hl]                                    ; $488b: $56
    ld h, [hl]                                    ; $488c: $66
    ld h, [hl]                                    ; $488d: $66
    ld h, [hl]                                    ; $488e: $66
    ld d, h                                       ; $488f: $54
    ld d, l                                       ; $4890: $55
    ld b, h                                       ; $4891: $44
    ld d, l                                       ; $4892: $55
    ld b, h                                       ; $4893: $44
    ld b, l                                       ; $4894: $45
    ld h, [hl]                                    ; $4895: $66
    ld h, l                                       ; $4896: $65
    ld h, [hl]                                    ; $4897: $66
    add d                                         ; $4898: $82
    ld d, [hl]                                    ; $4899: $56
    ld h, e                                       ; $489a: $63
    ld d, [hl]                                    ; $489b: $56
    ld h, [hl]                                    ; $489c: $66
    ld h, a                                       ; $489d: $67
    adc c                                         ; $489e: $89
    sub a                                         ; $489f: $97
    adc b                                         ; $48a0: $88
    ld [hl], a                                    ; $48a1: $77
    ld a, c                                       ; $48a2: $79
    sbc c                                         ; $48a3: $99
    cp e                                          ; $48a4: $bb
    cp h                                          ; $48a5: $bc
    cp l                                          ; $48a6: $bd
    sbc $ee                                       ; $48a7: $de $ee
    db $ed                                        ; $48a9: $ed
    cp h                                          ; $48aa: $bc
    cp h                                          ; $48ab: $bc
    cp h                                          ; $48ac: $bc
    call z, $bbcc                                 ; $48ad: $cc $cc $bb
    call z, $eedd                                 ; $48b0: $cc $dd $ee
    db $ed                                        ; $48b3: $ed
    cp l                                          ; $48b4: $bd
    xor $dd                                       ; $48b5: $ee $dd
    db $dd                                        ; $48b7: $dd
    res 7, e                                      ; $48b8: $cb $bb
    xor b                                         ; $48ba: $a8
    sbc c                                         ; $48bb: $99
    ld [hl], a                                    ; $48bc: $77
    ld h, [hl]                                    ; $48bd: $66
    ld h, l                                       ; $48be: $65
    ld a, b                                       ; $48bf: $78
    ld l, c                                       ; $48c0: $69
    add a                                         ; $48c1: $87
    add a                                         ; $48c2: $87
    ld [hl], a                                    ; $48c3: $77
    ld h, [hl]                                    ; $48c4: $66
    ld h, l                                       ; $48c5: $65
    ld h, h                                       ; $48c6: $64
    ld h, l                                       ; $48c7: $65
    ld h, l                                       ; $48c8: $65
    ld h, [hl]                                    ; $48c9: $66
    ld h, [hl]                                    ; $48ca: $66
    ld a, c                                       ; $48cb: $79
    adc c                                         ; $48cc: $89
    xor c                                         ; $48cd: $a9
    xor d                                         ; $48ce: $aa
    xor d                                         ; $48cf: $aa
    xor b                                         ; $48d0: $a8
    ld a, b                                       ; $48d1: $78
    ld a, b                                       ; $48d2: $78
    add a                                         ; $48d3: $87
    ld [hl], a                                    ; $48d4: $77
    halt                                          ; $48d5: $76
    halt                                          ; $48d6: $76
    ld h, [hl]                                    ; $48d7: $66
    ld d, h                                       ; $48d8: $54
    ld b, h                                       ; $48d9: $44
    ld b, l                                       ; $48da: $45
    inc sp                                        ; $48db: $33
    inc sp                                        ; $48dc: $33
    inc sp                                        ; $48dd: $33
    ld [hl-], a                                   ; $48de: $32
    ld [de], a                                    ; $48df: $12
    ld [de], a                                    ; $48e0: $12
    ld sp, $4436                                  ; $48e1: $31 $36 $44
    ld b, l                                       ; $48e4: $45
    inc sp                                        ; $48e5: $33
    ld [hl-], a                                   ; $48e6: $32
    inc [hl]                                      ; $48e7: $34
    ld h, [hl]                                    ; $48e8: $66
    ld b, l                                       ; $48e9: $45
    ld [hl], a                                    ; $48ea: $77
    ld c, b                                       ; $48eb: $48
    ld [hl], l                                    ; $48ec: $75
    ld d, [hl]                                    ; $48ed: $56
    ld h, a                                       ; $48ee: $67
    ld a, b                                       ; $48ef: $78
    add a                                         ; $48f0: $87
    adc b                                         ; $48f1: $88
    sbc c                                         ; $48f2: $99
    xor d                                         ; $48f3: $aa
    set 1, h                                      ; $48f4: $cb $cc
    cp h                                          ; $48f6: $bc
    res 5, h                                      ; $48f7: $cb $ac
    sbc $fd                                       ; $48f9: $de $fd
    xor e                                         ; $48fb: $ab
    cp e                                          ; $48fc: $bb
    jp z, $abbb                                   ; $48fd: $ca $bb $ab

    adc c                                         ; $4900: $89
    and a                                         ; $4901: $a7
    ld b, l                                       ; $4902: $45
    ld h, l                                       ; $4903: $65
    inc [hl]                                      ; $4904: $34
    ld b, l                                       ; $4905: $45
    ld d, h                                       ; $4906: $54
    ld d, [hl]                                    ; $4907: $56
    ld [hl], a                                    ; $4908: $77
    ld l, b                                       ; $4909: $68
    adc b                                         ; $490a: $88
    sbc b                                         ; $490b: $98
    ld h, a                                       ; $490c: $67
    sbc d                                         ; $490d: $9a
    xor d                                         ; $490e: $aa
    cp b                                          ; $490f: $b8
    sbc e                                         ; $4910: $9b
    cp d                                          ; $4911: $ba
    xor c                                         ; $4912: $a9
    adc d                                         ; $4913: $8a
    set 1, h                                      ; $4914: $cb $cc
    or a                                          ; $4916: $b7
    and l                                         ; $4917: $a5
    xor c                                         ; $4918: $a9
    ld h, a                                       ; $4919: $67
    ld [hl], a                                    ; $491a: $77
    adc b                                         ; $491b: $88
    call z, $999a                                 ; $491c: $cc $9a $99
    xor b                                         ; $491f: $a8
    add a                                         ; $4920: $87
    adc b                                         ; $4921: $88
    adc b                                         ; $4922: $88
    adc b                                         ; $4923: $88
    add a                                         ; $4924: $87
    ld h, l                                       ; $4925: $65
    ld d, l                                       ; $4926: $55
    ld [hl+], a                                   ; $4927: $22
    ld sp, $1122                                  ; $4928: $31 $22 $11
    ld de, $1212                                  ; $492b: $11 $12 $12
    inc sp                                        ; $492e: $33
    inc [hl]                                      ; $492f: $34
    add [hl]                                      ; $4930: $86
    ld d, a                                       ; $4931: $57
    ld d, [hl]                                    ; $4932: $56
    ld [hl], a                                    ; $4933: $77
    adc d                                         ; $4934: $8a
    sbc d                                         ; $4935: $9a
    sbc b                                         ; $4936: $98
    sbc b                                         ; $4937: $98
    adc c                                         ; $4938: $89
    xor h                                         ; $4939: $ac
    res 7, e                                      ; $493a: $cb $bb
    cp e                                          ; $493c: $bb
    cp e                                          ; $493d: $bb
    sbc d                                         ; $493e: $9a
    xor c                                         ; $493f: $a9
    sbc b                                         ; $4940: $98
    ld a, c                                       ; $4941: $79
    ld a, d                                       ; $4942: $7a
    sbc b                                         ; $4943: $98
    ld h, a                                       ; $4944: $67
    ld h, l                                       ; $4945: $65
    halt                                          ; $4946: $76
    ld h, [hl]                                    ; $4947: $66
    ld b, e                                       ; $4948: $43
    dec [hl]                                      ; $4949: $35
    ld b, e                                       ; $494a: $43
    ld d, l                                       ; $494b: $55
    ld d, h                                       ; $494c: $54
    ld h, l                                       ; $494d: $65
    ld d, a                                       ; $494e: $57
    ld [hl], a                                    ; $494f: $77
    add a                                         ; $4950: $87
    ld a, d                                       ; $4951: $7a
    xor e                                         ; $4952: $ab
    cp e                                          ; $4953: $bb
    cp e                                          ; $4954: $bb
    cp l                                          ; $4955: $bd
    call $ccaf                                    ; $4956: $cd $af $cc
    db $dd                                        ; $4959: $dd
    db $dd                                        ; $495a: $dd
    db $ed                                        ; $495b: $ed
    cp e                                          ; $495c: $bb
    res 7, e                                      ; $495d: $cb $bb
    cp e                                          ; $495f: $bb
    cp e                                          ; $4960: $bb
    cp e                                          ; $4961: $bb
    cp e                                          ; $4962: $bb
    xor e                                         ; $4963: $ab
    xor d                                         ; $4964: $aa
    sbc b                                         ; $4965: $98
    sub a                                         ; $4966: $97
    add a                                         ; $4967: $87
    ld [hl], a                                    ; $4968: $77
    ld h, [hl]                                    ; $4969: $66
    add a                                         ; $496a: $87
    ld h, a                                       ; $496b: $67
    ld h, [hl]                                    ; $496c: $66
    ld h, l                                       ; $496d: $65
    ld b, [hl]                                    ; $496e: $46
    inc hl                                        ; $496f: $23
    ld hl, $2222                                  ; $4970: $21 $22 $22
    inc hl                                        ; $4973: $23
    ld de, $0232                                  ; $4974: $11 $32 $02
    inc hl                                        ; $4977: $23
    ld b, l                                       ; $4978: $45
    ld h, a                                       ; $4979: $67
    ld a, b                                       ; $497a: $78
    add a                                         ; $497b: $87
    ld a, b                                       ; $497c: $78
    ld a, b                                       ; $497d: $78
    add a                                         ; $497e: $87
    ld [hl], a                                    ; $497f: $77
    add a                                         ; $4980: $87
    ld [hl], a                                    ; $4981: $77
    ld h, [hl]                                    ; $4982: $66
    ld h, l                                       ; $4983: $65
    ld d, h                                       ; $4984: $54
    ld b, d                                       ; $4985: $42
    ld [hl+], a                                   ; $4986: $22
    inc de                                        ; $4987: $13
    ld sp, $4412                                  ; $4988: $31 $12 $44
    ld d, l                                       ; $498b: $55
    ld d, l                                       ; $498c: $55
    ld h, a                                       ; $498d: $67
    ld h, a                                       ; $498e: $67
    sbc e                                         ; $498f: $9b
    res 7, h                                      ; $4990: $cb $bc
    db $dd                                        ; $4992: $dd
    cp e                                          ; $4993: $bb
    adc $dd                                       ; $4994: $ce $dd
    db $db                                        ; $4996: $db
    cp [hl]                                       ; $4997: $be
    xor d                                         ; $4998: $aa
    cp e                                          ; $4999: $bb
    cp d                                          ; $499a: $ba
    cp e                                          ; $499b: $bb
    sbc c                                         ; $499c: $99
    sbc b                                         ; $499d: $98
    adc c                                         ; $499e: $89
    adc d                                         ; $499f: $8a
    xor d                                         ; $49a0: $aa
    sbc b                                         ; $49a1: $98
    halt                                          ; $49a2: $76
    ld d, l                                       ; $49a3: $55
    ld b, e                                       ; $49a4: $43
    ld b, l                                       ; $49a5: $45
    ld h, [hl]                                    ; $49a6: $66
    ld a, b                                       ; $49a7: $78
    add [hl]                                      ; $49a8: $86
    add [hl]                                      ; $49a9: $86
    halt                                          ; $49aa: $76
    ld b, h                                       ; $49ab: $44
    ld b, l                                       ; $49ac: $45
    ld d, [hl]                                    ; $49ad: $56
    ld [hl], a                                    ; $49ae: $77
    ld [hl], a                                    ; $49af: $77
    add a                                         ; $49b0: $87
    sbc e                                         ; $49b1: $9b
    xor b                                         ; $49b2: $a8
    ld [hl], a                                    ; $49b3: $77
    sbc c                                         ; $49b4: $99
    sbc e                                         ; $49b5: $9b
    cp e                                          ; $49b6: $bb
    xor h                                         ; $49b7: $ac
    xor [hl]                                      ; $49b8: $ae
    cp h                                          ; $49b9: $bc
    jp c, $cd9d                                   ; $49ba: $da $9d $cd

    adc $9c                                       ; $49bd: $ce $9c
    sbc $bd                                       ; $49bf: $de $bd
    db $dd                                        ; $49c1: $dd
    res 7, e                                      ; $49c2: $cb $bb
    cp d                                          ; $49c4: $ba
    cp d                                          ; $49c5: $ba
    add a                                         ; $49c6: $87
    ld h, l                                       ; $49c7: $65
    ld b, h                                       ; $49c8: $44
    ld h, h                                       ; $49c9: $64
    inc [hl]                                      ; $49ca: $34
    ld d, l                                       ; $49cb: $55
    ld b, h                                       ; $49cc: $44
    ld b, d                                       ; $49cd: $42
    dec [hl]                                      ; $49ce: $35
    ld d, h                                       ; $49cf: $54
    ld b, [hl]                                    ; $49d0: $46
    ld d, [hl]                                    ; $49d1: $56
    ld d, a                                       ; $49d2: $57
    ld [hl], l                                    ; $49d3: $75
    ld e, b                                       ; $49d4: $58
    adc d                                         ; $49d5: $8a
    adc b                                         ; $49d6: $88
    adc c                                         ; $49d7: $89
    ld [hl], a                                    ; $49d8: $77
    halt                                          ; $49d9: $76
    adc c                                         ; $49da: $89
    call z, Call_012_78a8                         ; $49db: $cc $a8 $78
    ld [hl], a                                    ; $49de: $77
    add [hl]                                      ; $49df: $86
    add a                                         ; $49e0: $87
    ld h, [hl]                                    ; $49e1: $66
    ld d, e                                       ; $49e2: $53
    inc sp                                        ; $49e3: $33
    ld b, l                                       ; $49e4: $45
    ld b, e                                       ; $49e5: $43
    jr nc, jr_012_4a3c                            ; $49e6: $30 $54

    dec d                                         ; $49e8: $15
    inc [hl]                                      ; $49e9: $34
    ld h, l                                       ; $49ea: $65
    ld b, a                                       ; $49eb: $47
    ld d, l                                       ; $49ec: $55
    ld d, h                                       ; $49ed: $54
    ld d, l                                       ; $49ee: $55
    ld d, l                                       ; $49ef: $55
    ld d, [hl]                                    ; $49f0: $56
    ld d, [hl]                                    ; $49f1: $56
    ld h, [hl]                                    ; $49f2: $66
    ld h, l                                       ; $49f3: $65
    ld d, l                                       ; $49f4: $55
    ld d, l                                       ; $49f5: $55
    ld [hl], l                                    ; $49f6: $75
    ld h, [hl]                                    ; $49f7: $66
    ld [hl], a                                    ; $49f8: $77
    ld h, [hl]                                    ; $49f9: $66
    ld h, l                                       ; $49fa: $65
    ld [hl], e                                    ; $49fb: $73
    ld h, e                                       ; $49fc: $63
    ld h, d                                       ; $49fd: $62
    ld d, h                                       ; $49fe: $54
    ld b, l                                       ; $49ff: $45
    inc [hl]                                      ; $4a00: $34
    ld b, l                                       ; $4a01: $45
    ld d, l                                       ; $4a02: $55
    ld d, l                                       ; $4a03: $55
    add [hl]                                      ; $4a04: $86
    ld a, b                                       ; $4a05: $78
    sbc b                                         ; $4a06: $98
    adc c                                         ; $4a07: $89
    sbc d                                         ; $4a08: $9a
    xor e                                         ; $4a09: $ab
    xor l                                         ; $4a0a: $ad
    db $ed                                        ; $4a0b: $ed
    db $ec                                        ; $4a0c: $ec
    call c, $ccbc                                 ; $4a0d: $dc $bc $cc
    call z, $cabb                                 ; $4a10: $cc $bb $ca
    cp e                                          ; $4a13: $bb
    xor d                                         ; $4a14: $aa
    cp c                                          ; $4a15: $b9
    ld [hl], a                                    ; $4a16: $77
    ld h, l                                       ; $4a17: $65
    ld d, a                                       ; $4a18: $57
    ld a, b                                       ; $4a19: $78
    ld [hl], a                                    ; $4a1a: $77
    ld [hl], a                                    ; $4a1b: $77
    add a                                         ; $4a1c: $87
    db $db                                        ; $4a1d: $db
    sbc d                                         ; $4a1e: $9a
    cp d                                          ; $4a1f: $ba
    adc c                                         ; $4a20: $89
    sbc h                                         ; $4a21: $9c
    cp d                                          ; $4a22: $ba
    sbc d                                         ; $4a23: $9a
    xor d                                         ; $4a24: $aa
    sbc b                                         ; $4a25: $98
    xor d                                         ; $4a26: $aa
    cp d                                          ; $4a27: $ba
    add a                                         ; $4a28: $87
    ld h, a                                       ; $4a29: $67
    ld h, a                                       ; $4a2a: $67
    ld a, b                                       ; $4a2b: $78
    ld [hl], a                                    ; $4a2c: $77
    ld [hl], a                                    ; $4a2d: $77
    ld a, b                                       ; $4a2e: $78
    sbc b                                         ; $4a2f: $98
    sbc b                                         ; $4a30: $98
    ld [hl], a                                    ; $4a31: $77
    ld [hl], a                                    ; $4a32: $77
    ld [hl], a                                    ; $4a33: $77
    ld h, [hl]                                    ; $4a34: $66
    ld a, b                                       ; $4a35: $78
    sbc d                                         ; $4a36: $9a
    cp e                                          ; $4a37: $bb
    xor d                                         ; $4a38: $aa

jr_012_4a39:
    adc d                                         ; $4a39: $8a
    sbc e                                         ; $4a3a: $9b
    cp [hl]                                       ; $4a3b: $be

jr_012_4a3c:
    adc $dd                                       ; $4a3c: $ce $dd
    adc $cc                                       ; $4a3e: $ce $cc
    cp b                                          ; $4a40: $b8
    sbc b                                         ; $4a41: $98
    add a                                         ; $4a42: $87
    ld h, [hl]                                    ; $4a43: $66
    ld d, l                                       ; $4a44: $55
    ld h, l                                       ; $4a45: $65
    ld b, l                                       ; $4a46: $45
    ld d, [hl]                                    ; $4a47: $56
    ld h, [hl]                                    ; $4a48: $66
    ld h, l                                       ; $4a49: $65
    ld b, l                                       ; $4a4a: $45
    ld d, l                                       ; $4a4b: $55
    ld b, [hl]                                    ; $4a4c: $46
    ld h, a                                       ; $4a4d: $67
    adc b                                         ; $4a4e: $88
    sbc d                                         ; $4a4f: $9a
    cp e                                          ; $4a50: $bb
    xor e                                         ; $4a51: $ab
    sbc e                                         ; $4a52: $9b
    xor d                                         ; $4a53: $aa
    xor b                                         ; $4a54: $a8
    sbc l                                         ; $4a55: $9d
    add sp, -$66                                  ; $4a56: $e8 $9a
    xor [hl]                                      ; $4a58: $ae
    sbc c                                         ; $4a59: $99
    cp h                                          ; $4a5a: $bc
    call z, $b8b9                                 ; $4a5b: $cc $b9 $b8
    adc d                                         ; $4a5e: $8a
    adc b                                         ; $4a5f: $88
    add a                                         ; $4a60: $87
    halt                                          ; $4a61: $76
    ld h, [hl]                                    ; $4a62: $66
    ld b, l                                       ; $4a63: $45
    ld b, e                                       ; $4a64: $43
    inc sp                                        ; $4a65: $33
    inc [hl]                                      ; $4a66: $34
    ld [hl-], a                                   ; $4a67: $32
    ld hl, $1001                                  ; $4a68: $21 $01 $10
    stop                                          ; $4a6b: $10 $00
    ld de, $1111                                  ; $4a6d: $11 $11 $11
    ld de, $2211                                  ; $4a70: $11 $11 $22
    ld [hl+], a                                   ; $4a73: $22
    inc bc                                        ; $4a74: $03
    ld b, h                                       ; $4a75: $44
    ld b, e                                       ; $4a76: $43
    dec h                                         ; $4a77: $25
    ld h, d                                       ; $4a78: $62
    ld b, e                                       ; $4a79: $43
    dec h                                         ; $4a7a: $25
    ld d, [hl]                                    ; $4a7b: $56
    ld d, a                                       ; $4a7c: $57
    halt                                          ; $4a7d: $76
    adc b                                         ; $4a7e: $88
    adc b                                         ; $4a7f: $88
    adc b                                         ; $4a80: $88
    sbc c                                         ; $4a81: $99
    sbc c                                         ; $4a82: $99
    xor e                                         ; $4a83: $ab
    xor d                                         ; $4a84: $aa
    xor e                                         ; $4a85: $ab
    cp e                                          ; $4a86: $bb
    call z, $ccdb                                 ; $4a87: $cc $db $cc
    cp d                                          ; $4a8a: $ba
    cp d                                          ; $4a8b: $ba
    sbc c                                         ; $4a8c: $99
    adc b                                         ; $4a8d: $88
    ld h, a                                       ; $4a8e: $67
    ld b, l                                       ; $4a8f: $45
    ld b, h                                       ; $4a90: $44
    ld h, l                                       ; $4a91: $65
    ld d, [hl]                                    ; $4a92: $56
    ld d, [hl]                                    ; $4a93: $56
    ld h, [hl]                                    ; $4a94: $66
    ld a, b                                       ; $4a95: $78
    adc b                                         ; $4a96: $88
    sbc b                                         ; $4a97: $98
    adc c                                         ; $4a98: $89
    add [hl]                                      ; $4a99: $86
    ld a, b                                       ; $4a9a: $78
    ld b, h                                       ; $4a9b: $44
    inc [hl]                                      ; $4a9c: $34
    ld h, l                                       ; $4a9d: $65
    sub a                                         ; $4a9e: $97
    ld h, h                                       ; $4a9f: $64
    jr c, jr_012_4a39                             ; $4aa0: $38 $97

    ld l, b                                       ; $4aa2: $68
    ld e, b                                       ; $4aa3: $58
    ld a, b                                       ; $4aa4: $78
    and a                                         ; $4aa5: $a7
    sbc e                                         ; $4aa6: $9b
    adc e                                         ; $4aa7: $8b
    cp e                                          ; $4aa8: $bb
    cp h                                          ; $4aa9: $bc
    cp h                                          ; $4aaa: $bc
    call $eedd                                    ; $4aab: $cd $dd $ee
    xor $ee                                       ; $4aae: $ee $ee
    db $ed                                        ; $4ab0: $ed
    db $ed                                        ; $4ab1: $ed
    db $dd                                        ; $4ab2: $dd
    call c, $abcb                                 ; $4ab3: $dc $cb $ab
    cp c                                          ; $4ab6: $b9
    sbc b                                         ; $4ab7: $98
    adc c                                         ; $4ab8: $89
    adc b                                         ; $4ab9: $88
    adc c                                         ; $4aba: $89
    adc c                                         ; $4abb: $89
    sbc b                                         ; $4abc: $98
    adc b                                         ; $4abd: $88
    ld a, b                                       ; $4abe: $78
    ld [hl], a                                    ; $4abf: $77
    ld d, h                                       ; $4ac0: $54
    ld h, l                                       ; $4ac1: $65
    sbc b                                         ; $4ac2: $98
    ld h, [hl]                                    ; $4ac3: $66
    ld h, e                                       ; $4ac4: $63
    ld d, l                                       ; $4ac5: $55
    dec [hl]                                      ; $4ac6: $35
    ld b, l                                       ; $4ac7: $45
    inc hl                                        ; $4ac8: $23
    inc sp                                        ; $4ac9: $33
    ld [hl+], a                                   ; $4aca: $22
    inc [hl]                                      ; $4acb: $34
    ld b, h                                       ; $4acc: $44
    ld b, l                                       ; $4acd: $45
    ld d, l                                       ; $4ace: $55
    ld d, l                                       ; $4acf: $55
    ld b, l                                       ; $4ad0: $45
    ld h, l                                       ; $4ad1: $65
    ld h, [hl]                                    ; $4ad2: $66
    ld d, l                                       ; $4ad3: $55
    ld h, [hl]                                    ; $4ad4: $66
    ld d, l                                       ; $4ad5: $55
    ld d, a                                       ; $4ad6: $57
    ld [hl], a                                    ; $4ad7: $77
    halt                                          ; $4ad8: $76
    ld h, a                                       ; $4ad9: $67
    ld [hl], a                                    ; $4ada: $77
    ld a, b                                       ; $4adb: $78
    adc b                                         ; $4adc: $88
    add a                                         ; $4add: $87
    ld h, [hl]                                    ; $4ade: $66
    ld d, [hl]                                    ; $4adf: $56
    add h                                         ; $4ae0: $84
    ld d, l                                       ; $4ae1: $55
    ld d, h                                       ; $4ae2: $54
    ld h, l                                       ; $4ae3: $65
    ld d, l                                       ; $4ae4: $55
    ld h, [hl]                                    ; $4ae5: $66
    add a                                         ; $4ae6: $87
    ld l, b                                       ; $4ae7: $68
    xor d                                         ; $4ae8: $aa
    xor c                                         ; $4ae9: $a9
    adc c                                         ; $4aea: $89
    xor e                                         ; $4aeb: $ab
    call z, $bbaa                                 ; $4aec: $cc $aa $bb
    sbc c                                         ; $4aef: $99
    adc c                                         ; $4af0: $89
    xor d                                         ; $4af1: $aa
    and a                                         ; $4af2: $a7
    ld l, b                                       ; $4af3: $68
    or a                                          ; $4af4: $b7
    ld h, [hl]                                    ; $4af5: $66
    ld d, l                                       ; $4af6: $55
    ld h, [hl]                                    ; $4af7: $66
    ld b, e                                       ; $4af8: $43
    ld [hl-], a                                   ; $4af9: $32
    ld de, $3412                                  ; $4afa: $11 $12 $34
    ld b, l                                       ; $4afd: $45
    ld d, h                                       ; $4afe: $54
    ld d, l                                       ; $4aff: $55
    ld d, [hl]                                    ; $4b00: $56
    ld h, a                                       ; $4b01: $67
    adc b                                         ; $4b02: $88
    adc b                                         ; $4b03: $88
    adc c                                         ; $4b04: $89
    xor d                                         ; $4b05: $aa
    xor e                                         ; $4b06: $ab
    call z, $eddc                                 ; $4b07: $cc $dc $ed
    call c, $bdcc                                 ; $4b0a: $dc $cc $bd
    res 7, d                                      ; $4b0d: $cb $ba
    xor d                                         ; $4b0f: $aa
    cp h                                          ; $4b10: $bc
    cp l                                          ; $4b11: $bd
    cp h                                          ; $4b12: $bc
    cp $ed                                        ; $4b13: $fe $ed
    db $ed                                        ; $4b15: $ed
    res 7, h                                      ; $4b16: $cb $bc
    call z, $bacb                                 ; $4b18: $cc $cb $ba
    sub a                                         ; $4b1b: $97
    sbc b                                         ; $4b1c: $98
    ld [hl], l                                    ; $4b1d: $75
    ld d, h                                       ; $4b1e: $54
    ld b, l                                       ; $4b1f: $45
    ld h, l                                       ; $4b20: $65
    ld d, h                                       ; $4b21: $54
    ld b, h                                       ; $4b22: $44
    ld b, e                                       ; $4b23: $43
    ld b, d                                       ; $4b24: $42
    inc sp                                        ; $4b25: $33
    ld [de], a                                    ; $4b26: $12
    ld [hl+], a                                   ; $4b27: $22
    ld [de], a                                    ; $4b28: $12
    ld [hl-], a                                   ; $4b29: $32
    inc [hl]                                      ; $4b2a: $34
    ld b, h                                       ; $4b2b: $44
    inc [hl]                                      ; $4b2c: $34
    ld d, l                                       ; $4b2d: $55
    ld d, l                                       ; $4b2e: $55
    ld b, l                                       ; $4b2f: $45
    ld b, h                                       ; $4b30: $44
    ld d, l                                       ; $4b31: $55
    ld b, h                                       ; $4b32: $44
    ld d, e                                       ; $4b33: $53
    inc d                                         ; $4b34: $14
    ld b, e                                       ; $4b35: $43
    ld b, d                                       ; $4b36: $42
    ld [hl+], a                                   ; $4b37: $22
    inc de                                        ; $4b38: $13
    ld [de], a                                    ; $4b39: $12
    ld sp, $3423                                  ; $4b3a: $31 $23 $34
    ld b, e                                       ; $4b3d: $43
    ld d, l                                       ; $4b3e: $55
    ld d, [hl]                                    ; $4b3f: $56
    ld d, [hl]                                    ; $4b40: $56
    ld [hl], a                                    ; $4b41: $77
    adc c                                         ; $4b42: $89
    sbc d                                         ; $4b43: $9a
    xor e                                         ; $4b44: $ab
    cp e                                          ; $4b45: $bb
    call z, $ddcc                                 ; $4b46: $cc $cc $dd
    db $ed                                        ; $4b49: $ed
    cp e                                          ; $4b4a: $bb
    db $ed                                        ; $4b4b: $ed
    call z, $dccd                                 ; $4b4c: $cc $cd $dc
    cp d                                          ; $4b4f: $ba
    cp d                                          ; $4b50: $ba
    sbc c                                         ; $4b51: $99
    xor e                                         ; $4b52: $ab
    xor e                                         ; $4b53: $ab
    xor d                                         ; $4b54: $aa
    xor c                                         ; $4b55: $a9
    sbc b                                         ; $4b56: $98
    sbc d                                         ; $4b57: $9a
    sbc c                                         ; $4b58: $99
    xor c                                         ; $4b59: $a9
    sbc b                                         ; $4b5a: $98
    xor c                                         ; $4b5b: $a9
    ld a, b                                       ; $4b5c: $78
    halt                                          ; $4b5d: $76
    halt                                          ; $4b5e: $76
    adc c                                         ; $4b5f: $89
    sbc c                                         ; $4b60: $99
    sub a                                         ; $4b61: $97
    adc b                                         ; $4b62: $88
    add a                                         ; $4b63: $87
    ld h, a                                       ; $4b64: $67
    ld h, [hl]                                    ; $4b65: $66
    ld h, a                                       ; $4b66: $67
    add a                                         ; $4b67: $87
    ld d, [hl]                                    ; $4b68: $56
    ld d, l                                       ; $4b69: $55
    ld d, [hl]                                    ; $4b6a: $56
    ld d, l                                       ; $4b6b: $55
    ld h, [hl]                                    ; $4b6c: $66
    ld h, [hl]                                    ; $4b6d: $66
    ld h, l                                       ; $4b6e: $65
    ld d, l                                       ; $4b6f: $55
    ld h, h                                       ; $4b70: $64
    ld [hl-], a                                   ; $4b71: $32
    inc d                                         ; $4b72: $14
    ld [de], a                                    ; $4b73: $12
    ld [hl+], a                                   ; $4b74: $22
    inc hl                                        ; $4b75: $23
    ld b, h                                       ; $4b76: $44
    ld d, l                                       ; $4b77: $55
    ld h, [hl]                                    ; $4b78: $66
    ld [hl], a                                    ; $4b79: $77
    ld [hl], a                                    ; $4b7a: $77
    ld a, b                                       ; $4b7b: $78
    adc b                                         ; $4b7c: $88
    sbc c                                         ; $4b7d: $99
    sbc c                                         ; $4b7e: $99
    sbc d                                         ; $4b7f: $9a
    sbc d                                         ; $4b80: $9a
    sbc d                                         ; $4b81: $9a
    xor c                                         ; $4b82: $a9
    cp e                                          ; $4b83: $bb
    db $eb                                        ; $4b84: $eb
    xor h                                         ; $4b85: $ac
    db $dd                                        ; $4b86: $dd
    call z, $9bc9                                 ; $4b87: $cc $c9 $9b
    cp h                                          ; $4b8a: $bc
    cp l                                          ; $4b8b: $bd
    call c, $dcdf                                 ; $4b8c: $dc $df $dc
    set 1, e                                      ; $4b8f: $cb $cb
    cp e                                          ; $4b91: $bb
    xor d                                         ; $4b92: $aa
    xor b                                         ; $4b93: $a8
    adc c                                         ; $4b94: $89
    adc b                                         ; $4b95: $88
    add a                                         ; $4b96: $87
    halt                                          ; $4b97: $76
    halt                                          ; $4b98: $76
    ld b, l                                       ; $4b99: $45
    ld d, h                                       ; $4b9a: $54
    ld d, l                                       ; $4b9b: $55
    inc hl                                        ; $4b9c: $23
    ld b, h                                       ; $4b9d: $44
    inc sp                                        ; $4b9e: $33
    inc [hl]                                      ; $4b9f: $34
    inc sp                                        ; $4ba0: $33
    inc sp                                        ; $4ba1: $33
    ld sp, $1121                                  ; $4ba2: $31 $21 $11
    ld [hl+], a                                   ; $4ba5: $22
    ld [hl+], a                                   ; $4ba6: $22
    inc hl                                        ; $4ba7: $23
    ld b, d                                       ; $4ba8: $42
    ld [hl+], a                                   ; $4ba9: $22
    inc hl                                        ; $4baa: $23
    inc sp                                        ; $4bab: $33
    ld b, h                                       ; $4bac: $44
    ld b, e                                       ; $4bad: $43
    ld b, [hl]                                    ; $4bae: $46
    adc c                                         ; $4baf: $89
    adc b                                         ; $4bb0: $88
    adc b                                         ; $4bb1: $88
    sbc b                                         ; $4bb2: $98
    add [hl]                                      ; $4bb3: $86
    and a                                         ; $4bb4: $a7
    ld d, [hl]                                    ; $4bb5: $56
    add [hl]                                      ; $4bb6: $86
    ld b, [hl]                                    ; $4bb7: $46
    ld h, a                                       ; $4bb8: $67
    ld a, c                                       ; $4bb9: $79
    sbc c                                         ; $4bba: $99
    xor c                                         ; $4bbb: $a9
    xor d                                         ; $4bbc: $aa
    sbc d                                         ; $4bbd: $9a
    cp d                                          ; $4bbe: $ba
    call z, $ccbb                                 ; $4bbf: $cc $bb $cc
    cp e                                          ; $4bc2: $bb
    cp e                                          ; $4bc3: $bb
    call z, $dcdc                                 ; $4bc4: $cc $dc $dc
    call z, $aabb                                 ; $4bc7: $cc $bb $aa
    sbc c                                         ; $4bca: $99
    add [hl]                                      ; $4bcb: $86
    ld d, [hl]                                    ; $4bcc: $56
    ld d, [hl]                                    ; $4bcd: $56
    ld d, l                                       ; $4bce: $55
    ld b, h                                       ; $4bcf: $44
    ld d, h                                       ; $4bd0: $54
    ld d, [hl]                                    ; $4bd1: $56
    ld b, [hl]                                    ; $4bd2: $46
    ld h, l                                       ; $4bd3: $65
    ld d, a                                       ; $4bd4: $57
    ld h, [hl]                                    ; $4bd5: $66
    ld h, [hl]                                    ; $4bd6: $66
    ld h, [hl]                                    ; $4bd7: $66
    ld h, a                                       ; $4bd8: $67
    ld a, b                                       ; $4bd9: $78
    adc b                                         ; $4bda: $88
    adc b                                         ; $4bdb: $88
    sbc c                                         ; $4bdc: $99
    adc b                                         ; $4bdd: $88
    sbc b                                         ; $4bde: $98
    sbc c                                         ; $4bdf: $99
    xor c                                         ; $4be0: $a9
    xor h                                         ; $4be1: $ac
    sbc c                                         ; $4be2: $99
    cp h                                          ; $4be3: $bc
    cp e                                          ; $4be4: $bb
    cp l                                          ; $4be5: $bd
    db $db                                        ; $4be6: $db
    res 7, c                                      ; $4be7: $cb $b9
    xor d                                         ; $4be9: $aa
    add a                                         ; $4bea: $87
    add a                                         ; $4beb: $87
    ld h, [hl]                                    ; $4bec: $66
    ld d, [hl]                                    ; $4bed: $56
    ld [hl], $37                                  ; $4bee: $36 $37
    ld d, [hl]                                    ; $4bf0: $56
    add [hl]                                      ; $4bf1: $86
    ld [hl], a                                    ; $4bf2: $77
    adc d                                         ; $4bf3: $8a
    adc d                                         ; $4bf4: $8a
    sbc e                                         ; $4bf5: $9b
    set 1, h                                      ; $4bf6: $cb $cc
    call z, $cbbb                                 ; $4bf8: $cc $bb $cb
    xor d                                         ; $4bfb: $aa
    adc c                                         ; $4bfc: $89
    adc b                                         ; $4bfd: $88
    sbc b                                         ; $4bfe: $98
    add a                                         ; $4bff: $87
    ld h, a                                       ; $4c00: $67
    halt                                          ; $4c01: $76
    ld b, h                                       ; $4c02: $44
    ld d, l                                       ; $4c03: $55
    ld d, l                                       ; $4c04: $55
    ld d, l                                       ; $4c05: $55
    ld d, h                                       ; $4c06: $54
    ld b, h                                       ; $4c07: $44
    ld [hl-], a                                   ; $4c08: $32
    ld [hl-], a                                   ; $4c09: $32
    inc de                                        ; $4c0a: $13
    inc h                                         ; $4c0b: $24
    ld [hl+], a                                   ; $4c0c: $22
    ld [hl+], a                                   ; $4c0d: $22
    ld b, h                                       ; $4c0e: $44
    ld d, [hl]                                    ; $4c0f: $56
    ld b, l                                       ; $4c10: $45
    ld d, l                                       ; $4c11: $55
    ld e, b                                       ; $4c12: $58
    ld h, d                                       ; $4c13: $62
    ld [hl-], a                                   ; $4c14: $32
    dec h                                         ; $4c15: $25
    ld b, e                                       ; $4c16: $43
    inc hl                                        ; $4c17: $23
    ld d, a                                       ; $4c18: $57
    add a                                         ; $4c19: $87
    ld h, [hl]                                    ; $4c1a: $66
    ld [hl], a                                    ; $4c1b: $77
    ld a, b                                       ; $4c1c: $78
    ld a, b                                       ; $4c1d: $78
    adc c                                         ; $4c1e: $89
    sbc d                                         ; $4c1f: $9a
    xor d                                         ; $4c20: $aa
    call z, $cccc                                 ; $4c21: $cc $cc $cc
    res 7, c                                      ; $4c24: $cb $b9
    ld [hl], a                                    ; $4c26: $77
    ld [hl], a                                    ; $4c27: $77
    add a                                         ; $4c28: $87
    ld a, b                                       ; $4c29: $78
    sbc c                                         ; $4c2a: $99
    sbc c                                         ; $4c2b: $99
    sbc c                                         ; $4c2c: $99
    xor d                                         ; $4c2d: $aa
    sbc d                                         ; $4c2e: $9a
    xor d                                         ; $4c2f: $aa
    xor d                                         ; $4c30: $aa
    xor d                                         ; $4c31: $aa
    xor e                                         ; $4c32: $ab
    xor d                                         ; $4c33: $aa
    xor d                                         ; $4c34: $aa
    xor d                                         ; $4c35: $aa
    xor d                                         ; $4c36: $aa
    db $dd                                        ; $4c37: $dd
    xor e                                         ; $4c38: $ab
    cp e                                          ; $4c39: $bb
    xor e                                         ; $4c3a: $ab
    xor h                                         ; $4c3b: $ac
    ret                                           ; $4c3c: $c9


    cp d                                          ; $4c3d: $ba
    xor d                                         ; $4c3e: $aa
    xor h                                         ; $4c3f: $ac
    cp l                                          ; $4c40: $bd
    call c, $eced                                 ; $4c41: $dc $ed $ec
    xor $db                                       ; $4c44: $ee $db
    db $dd                                        ; $4c46: $dd
    set 3, d                                      ; $4c47: $cb $da
    cp e                                          ; $4c49: $bb
    sbc c                                         ; $4c4a: $99
    sbc c                                         ; $4c4b: $99
    sub [hl]                                      ; $4c4c: $96
    ld d, l                                       ; $4c4d: $55
    ld d, h                                       ; $4c4e: $54
    inc hl                                        ; $4c4f: $23
    ld b, d                                       ; $4c50: $42
    ld [de], a                                    ; $4c51: $12
    inc sp                                        ; $4c52: $33
    ld sp, $4423                                  ; $4c53: $31 $23 $44
    ld b, e                                       ; $4c56: $43
    ld [hl-], a                                   ; $4c57: $32
    inc sp                                        ; $4c58: $33
    ld [hl+], a                                   ; $4c59: $22
    inc sp                                        ; $4c5a: $33
    ld b, h                                       ; $4c5b: $44
    ld b, e                                       ; $4c5c: $43
    jr nc, jr_012_4c71                            ; $4c5d: $30 $12

    ld sp, $4214                                  ; $4c5f: $31 $14 $42
    ld b, l                                       ; $4c62: $45
    ld h, [hl]                                    ; $4c63: $66
    ld h, [hl]                                    ; $4c64: $66
    ld h, [hl]                                    ; $4c65: $66
    ld d, a                                       ; $4c66: $57
    adc b                                         ; $4c67: $88
    sbc c                                         ; $4c68: $99
    call z, $bbbb                                 ; $4c69: $cc $bb $bb
    jp z, $a9aa                                   ; $4c6c: $ca $aa $a9

    sbc b                                         ; $4c6f: $98
    adc b                                         ; $4c70: $88

jr_012_4c71:
    adc b                                         ; $4c71: $88
    ld [hl], a                                    ; $4c72: $77
    halt                                          ; $4c73: $76
    ld d, h                                       ; $4c74: $54
    ld b, l                                       ; $4c75: $45
    inc sp                                        ; $4c76: $33
    ld d, h                                       ; $4c77: $54
    ld [hl+], a                                   ; $4c78: $22
    ld [hl-], a                                   ; $4c79: $32
    ld [hl+], a                                   ; $4c7a: $22
    inc sp                                        ; $4c7b: $33
    inc sp                                        ; $4c7c: $33
    ld b, l                                       ; $4c7d: $45
    ld b, h                                       ; $4c7e: $44
    ld b, [hl]                                    ; $4c7f: $46
    ld d, [hl]                                    ; $4c80: $56
    ld d, l                                       ; $4c81: $55
    ld d, h                                       ; $4c82: $54
    ld h, [hl]                                    ; $4c83: $66
    ld [hl], a                                    ; $4c84: $77
    adc b                                         ; $4c85: $88
    sbc e                                         ; $4c86: $9b
    cp h                                          ; $4c87: $bc
    db $dd                                        ; $4c88: $dd
    db $dd                                        ; $4c89: $dd
    cp h                                          ; $4c8a: $bc
    jp z, $cdcd                                   ; $4c8b: $ca $cd $cd

    db $ed                                        ; $4c8e: $ed
    jp z, $cbbc                                   ; $4c8f: $ca $bc $cb

    cp d                                          ; $4c92: $ba
    ld a, b                                       ; $4c93: $78
    sbc d                                         ; $4c94: $9a
    ld d, a                                       ; $4c95: $57
    adc b                                         ; $4c96: $88
    ld a, c                                       ; $4c97: $79
    sub [hl]                                      ; $4c98: $96
    sub a                                         ; $4c99: $97
    ld [hl], a                                    ; $4c9a: $77
    ld [hl], e                                    ; $4c9b: $73
    ld [hl], a                                    ; $4c9c: $77
    ld d, e                                       ; $4c9d: $53
    ld d, l                                       ; $4c9e: $55
    ld h, h                                       ; $4c9f: $64
    ld h, [hl]                                    ; $4ca0: $66
    ld d, e                                       ; $4ca1: $53
    inc sp                                        ; $4ca2: $33
    ld d, h                                       ; $4ca3: $54
    ld d, e                                       ; $4ca4: $53
    ld [hl], $55                                  ; $4ca5: $36 $55
    inc [hl]                                      ; $4ca7: $34
    dec [hl]                                      ; $4ca8: $35
    ld [hl], l                                    ; $4ca9: $75
    ld c, b                                       ; $4caa: $48
    ld d, l                                       ; $4cab: $55
    ld [hl], a                                    ; $4cac: $77
    ld [hl], a                                    ; $4cad: $77
    xor c                                         ; $4cae: $a9
    xor c                                         ; $4caf: $a9
    sbc c                                         ; $4cb0: $99
    xor c                                         ; $4cb1: $a9
    cp c                                          ; $4cb2: $b9
    xor c                                         ; $4cb3: $a9
    xor e                                         ; $4cb4: $ab
    call $ccdc                                    ; $4cb5: $cd $dc $cc
    call $ddcd                                    ; $4cb8: $cd $cd $dd
    call c, $cddd                                 ; $4cbb: $dc $dd $cd
    sbc $dc                                       ; $4cbe: $de $dc
    rst $08                                       ; $4cc0: $cf
    call c, $cbbc                                 ; $4cc1: $dc $bc $cb
    cp c                                          ; $4cc4: $b9
    sbc b                                         ; $4cc5: $98
    ld a, b                                       ; $4cc6: $78
    sub a                                         ; $4cc7: $97
    ld a, b                                       ; $4cc8: $78
    ld h, a                                       ; $4cc9: $67
    ld h, [hl]                                    ; $4cca: $66
    ld d, l                                       ; $4ccb: $55
    ld b, h                                       ; $4ccc: $44
    inc sp                                        ; $4ccd: $33
    inc sp                                        ; $4cce: $33
    inc [hl]                                      ; $4ccf: $34
    ld b, e                                       ; $4cd0: $43
    ld b, h                                       ; $4cd1: $44
    ld b, l                                       ; $4cd2: $45
    ld d, l                                       ; $4cd3: $55
    ld h, [hl]                                    ; $4cd4: $66
    ld h, a                                       ; $4cd5: $67
    ld [hl], a                                    ; $4cd6: $77
    ld a, b                                       ; $4cd7: $78
    adc b                                         ; $4cd8: $88
    sbc c                                         ; $4cd9: $99
    adc b                                         ; $4cda: $88
    adc c                                         ; $4cdb: $89
    sbc c                                         ; $4cdc: $99
    sbc c                                         ; $4cdd: $99
    xor c                                         ; $4cde: $a9
    xor e                                         ; $4cdf: $ab
    call z, $88aa                                 ; $4ce0: $cc $aa $88
    adc c                                         ; $4ce3: $89
    sbc c                                         ; $4ce4: $99
    add a                                         ; $4ce5: $87
    and a                                         ; $4ce6: $a7
    halt                                          ; $4ce7: $76
    ld h, a                                       ; $4ce8: $67
    ld b, a                                       ; $4ce9: $47
    ld h, [hl]                                    ; $4cea: $66
    ld b, h                                       ; $4ceb: $44
    ld d, l                                       ; $4cec: $55
    ld d, l                                       ; $4ced: $55
    ld b, h                                       ; $4cee: $44
    ld b, e                                       ; $4cef: $43
    inc sp                                        ; $4cf0: $33
    ld [hl-], a                                   ; $4cf1: $32
    ld [hl-], a                                   ; $4cf2: $32
    db $10                                        ; $4cf3: $10
    ld de, $3322                                  ; $4cf4: $11 $22 $33
    ld [hl-], a                                   ; $4cf7: $32
    ld [hl+], a                                   ; $4cf8: $22
    ld hl, $4422                                  ; $4cf9: $21 $22 $44
    ld b, h                                       ; $4cfc: $44
    ld b, h                                       ; $4cfd: $44
    ld b, l                                       ; $4cfe: $45
    ld b, l                                       ; $4cff: $45
    ld d, h                                       ; $4d00: $54
    ld b, l                                       ; $4d01: $45
    ld d, a                                       ; $4d02: $57
    ld a, b                                       ; $4d03: $78
    ld a, c                                       ; $4d04: $79
    cp c                                          ; $4d05: $b9
    add a                                         ; $4d06: $87
    ld h, [hl]                                    ; $4d07: $66
    adc b                                         ; $4d08: $88
    sbc b                                         ; $4d09: $98
    ld a, b                                       ; $4d0a: $78
    ld [hl], a                                    ; $4d0b: $77
    xor e                                         ; $4d0c: $ab
    cp h                                          ; $4d0d: $bc
    call $dede                                    ; $4d0e: $cd $de $de
    db $dd                                        ; $4d11: $dd
    cp l                                          ; $4d12: $bd
    call $9aaa                                    ; $4d13: $cd $aa $9a
    sbc c                                         ; $4d16: $99
    adc $bd                                       ; $4d17: $ce $bd
    call c, $bdcb                                 ; $4d19: $dc $cb $bd
    res 7, c                                      ; $4d1c: $cb $b9
    xor e                                         ; $4d1e: $ab
    sub a                                         ; $4d1f: $97
    adc b                                         ; $4d20: $88
    add a                                         ; $4d21: $87
    sbc c                                         ; $4d22: $99
    adc c                                         ; $4d23: $89
    sub a                                         ; $4d24: $97
    sbc b                                         ; $4d25: $98
    ld a, c                                       ; $4d26: $79
    adc b                                         ; $4d27: $88
    sbc c                                         ; $4d28: $99
    sub a                                         ; $4d29: $97
    adc c                                         ; $4d2a: $89
    adc c                                         ; $4d2b: $89
    sbc d                                         ; $4d2c: $9a
    call c, $adca                                 ; $4d2d: $dc $ca $ad
    call c, $babc                                 ; $4d30: $dc $bc $ba
    xor d                                         ; $4d33: $aa
    adc d                                         ; $4d34: $8a
    add a                                         ; $4d35: $87
    and l                                         ; $4d36: $a5
    ld d, l                                       ; $4d37: $55
    ld de, $3423                                  ; $4d38: $11 $23 $34
    ld b, l                                       ; $4d3b: $45
    ld d, l                                       ; $4d3c: $55
    ld h, l                                       ; $4d3d: $65
    ld d, l                                       ; $4d3e: $55
    ld [hl], a                                    ; $4d3f: $77
    add a                                         ; $4d40: $87
    add [hl]                                      ; $4d41: $86
    ld [hl], a                                    ; $4d42: $77
    ld [hl], a                                    ; $4d43: $77
    ld [hl], a                                    ; $4d44: $77
    ld [hl], a                                    ; $4d45: $77
    ld h, [hl]                                    ; $4d46: $66
    ld h, l                                       ; $4d47: $65
    ld b, l                                       ; $4d48: $45
    ld h, l                                       ; $4d49: $65
    inc sp                                        ; $4d4a: $33
    ld de, $5245                                  ; $4d4b: $11 $45 $52
    ld b, l                                       ; $4d4e: $45
    ld d, h                                       ; $4d4f: $54
    ld h, h                                       ; $4d50: $64
    ld b, h                                       ; $4d51: $44
    ld b, h                                       ; $4d52: $44
    ld b, [hl]                                    ; $4d53: $46
    dec h                                         ; $4d54: $25
    ld b, e                                       ; $4d55: $43
    ld b, [hl]                                    ; $4d56: $46
    ld d, l                                       ; $4d57: $55
    ld d, [hl]                                    ; $4d58: $56
    ld [hl], l                                    ; $4d59: $75
    ld l, d                                       ; $4d5a: $6a
    xor b                                         ; $4d5b: $a8
    xor d                                         ; $4d5c: $aa
    xor c                                         ; $4d5d: $a9
    sbc b                                         ; $4d5e: $98
    and [hl]                                      ; $4d5f: $a6
    add a                                         ; $4d60: $87
    ld h, a                                       ; $4d61: $67
    ld d, [hl]                                    ; $4d62: $56
    add [hl]                                      ; $4d63: $86
    ld d, [hl]                                    ; $4d64: $56
    ld a, c                                       ; $4d65: $79
    xor b                                         ; $4d66: $a8

Call_012_4d67:
    sbc d                                         ; $4d67: $9a
    xor e                                         ; $4d68: $ab
    cp h                                          ; $4d69: $bc
    sbc $dd                                       ; $4d6a: $de $dd
    db $dd                                        ; $4d6c: $dd
    call c, $cded                                 ; $4d6d: $dc $ed $cd
    call c, $bbbb                                 ; $4d70: $dc $bb $bb
    sbc c                                         ; $4d73: $99
    adc b                                         ; $4d74: $88
    sbc b                                         ; $4d75: $98
    sbc b                                         ; $4d76: $98
    add a                                         ; $4d77: $87
    ld h, [hl]                                    ; $4d78: $66
    ld h, l                                       ; $4d79: $65
    ld h, e                                       ; $4d7a: $63
    ld h, l                                       ; $4d7b: $65
    ld e, e                                       ; $4d7c: $5b
    or h                                          ; $4d7d: $b4
    ld e, c                                       ; $4d7e: $59
    add a                                         ; $4d7f: $87
    dec [hl]                                      ; $4d80: $35
    or e                                          ; $4d81: $b3
    ld e, d                                       ; $4d82: $5a
    ld d, [hl]                                    ; $4d83: $56
    adc b                                         ; $4d84: $88
    ld d, l                                       ; $4d85: $55
    ld [hl], a                                    ; $4d86: $77
    ld h, l                                       ; $4d87: $65
    ld h, a                                       ; $4d88: $67
    add a                                         ; $4d89: $87
    ld l, b                                       ; $4d8a: $68
    add a                                         ; $4d8b: $87
    sbc e                                         ; $4d8c: $9b
    sbc b                                         ; $4d8d: $98
    adc d                                         ; $4d8e: $8a
    cp e                                          ; $4d8f: $bb
    sbc c                                         ; $4d90: $99
    sub a                                         ; $4d91: $97
    sbc d                                         ; $4d92: $9a
    xor d                                         ; $4d93: $aa
    db $dd                                        ; $4d94: $dd
    db $db                                        ; $4d95: $db
    call z, $bdbb                                 ; $4d96: $cc $bb $bd
    call c, $cabb                                 ; $4d99: $dc $bb $ca
    xor d                                         ; $4d9c: $aa
    sbc b                                         ; $4d9d: $98
    adc b                                         ; $4d9e: $88
    ld h, l                                       ; $4d9f: $65
    ld d, l                                       ; $4da0: $55
    ld d, [hl]                                    ; $4da1: $56
    ld b, l                                       ; $4da2: $45
    ld [de], a                                    ; $4da3: $12
    ld h, l                                       ; $4da4: $65
    ld b, [hl]                                    ; $4da5: $46
    ld h, l                                       ; $4da6: $65
    ld b, a                                       ; $4da7: $47
    ld a, c                                       ; $4da8: $79
    halt                                          ; $4da9: $76
    ld h, [hl]                                    ; $4daa: $66
    ld h, h                                       ; $4dab: $64
    ld [hl-], a                                   ; $4dac: $32
    ld hl, $4102                                  ; $4dad: $21 $02 $41
    inc sp                                        ; $4db0: $33
    inc de                                        ; $4db1: $13
    ld b, d                                       ; $4db2: $42
    dec [hl]                                      ; $4db3: $35
    ld d, d                                       ; $4db4: $52
    ld d, a                                       ; $4db5: $57
    ld d, [hl]                                    ; $4db6: $56
    ld h, [hl]                                    ; $4db7: $66
    ld l, b                                       ; $4db8: $68
    add a                                         ; $4db9: $87
    adc c                                         ; $4dba: $89
    xor b                                         ; $4dbb: $a8
    sbc e                                         ; $4dbc: $9b
    db $dd                                        ; $4dbd: $dd
    call $cccb                                    ; $4dbe: $cd $cb $cc
    call z, $abcb                                 ; $4dc1: $cc $cb $ab
    xor d                                         ; $4dc4: $aa
    xor d                                         ; $4dc5: $aa
    xor e                                         ; $4dc6: $ab
    xor c                                         ; $4dc7: $a9
    xor c                                         ; $4dc8: $a9
    adc b                                         ; $4dc9: $88
    add a                                         ; $4dca: $87
    add a                                         ; $4dcb: $87
    ld [hl], a                                    ; $4dcc: $77
    halt                                          ; $4dcd: $76
    ld h, [hl]                                    ; $4dce: $66
    ld h, [hl]                                    ; $4dcf: $66
    ld h, [hl]                                    ; $4dd0: $66
    ld d, h                                       ; $4dd1: $54
    ld b, e                                       ; $4dd2: $43
    ld sp, $1103                                  ; $4dd3: $31 $03 $11
    ld [de], a                                    ; $4dd6: $12
    ld [hl+], a                                   ; $4dd7: $22
    ld b, h                                       ; $4dd8: $44
    inc [hl]                                      ; $4dd9: $34
    ld b, h                                       ; $4dda: $44
    ld b, [hl]                                    ; $4ddb: $46
    adc b                                         ; $4ddc: $88
    adc b                                         ; $4ddd: $88
    sbc b                                         ; $4dde: $98
    ld [hl], a                                    ; $4ddf: $77
    adc b                                         ; $4de0: $88
    ld [hl], a                                    ; $4de1: $77
    ld h, a                                       ; $4de2: $67
    add a                                         ; $4de3: $87
    ld h, l                                       ; $4de4: $65
    add a                                         ; $4de5: $87
    xor c                                         ; $4de6: $a9
    sbc b                                         ; $4de7: $98
    sbc d                                         ; $4de8: $9a
    cp h                                          ; $4de9: $bc
    cp h                                          ; $4dea: $bc
    cp h                                          ; $4deb: $bc
    call $dddc                                    ; $4dec: $cd $dc $dd
    call z, $cced                                 ; $4def: $cc $ed $cc
    cp e                                          ; $4df2: $bb
    cp e                                          ; $4df3: $bb
    xor d                                         ; $4df4: $aa
    xor d                                         ; $4df5: $aa
    sbc d                                         ; $4df6: $9a
    adc b                                         ; $4df7: $88
    adc b                                         ; $4df8: $88
    ld d, a                                       ; $4df9: $57
    add l                                         ; $4dfa: $85
    ld h, [hl]                                    ; $4dfb: $66
    ld a, b                                       ; $4dfc: $78
    ld h, a                                       ; $4dfd: $67
    ld h, [hl]                                    ; $4dfe: $66
    ld [hl], a                                    ; $4dff: $77
    add a                                         ; $4e00: $87
    adc b                                         ; $4e01: $88
    adc b                                         ; $4e02: $88
    sbc c                                         ; $4e03: $99
    sbc d                                         ; $4e04: $9a
    sbc b                                         ; $4e05: $98
    xor d                                         ; $4e06: $aa
    xor e                                         ; $4e07: $ab
    sbc $ee                                       ; $4e08: $de $ee
    db $dd                                        ; $4e0a: $dd
    db $dd                                        ; $4e0b: $dd
    call $dddd                                    ; $4e0c: $cd $dd $dd
    res 5, d                                      ; $4e0f: $cb $aa
    sbc b                                         ; $4e11: $98
    add a                                         ; $4e12: $87
    ld d, h                                       ; $4e13: $54
    ld [hl-], a                                   ; $4e14: $32
    ld hl, $0121                                  ; $4e15: $21 $21 $01
    ld de, $4412                                  ; $4e18: $11 $12 $44
    ld d, [hl]                                    ; $4e1b: $56
    ld d, l                                       ; $4e1c: $55
    ld h, [hl]                                    ; $4e1d: $66
    halt                                          ; $4e1e: $76
    ld h, [hl]                                    ; $4e1f: $66
    ld h, l                                       ; $4e20: $65
    ld h, l                                       ; $4e21: $65
    ld d, h                                       ; $4e22: $54
    ld h, h                                       ; $4e23: $64
    ld d, e                                       ; $4e24: $53
    ld d, h                                       ; $4e25: $54
    ld h, c                                       ; $4e26: $61
    inc hl                                        ; $4e27: $23
    ld bc, $1122                                  ; $4e28: $01 $22 $11
    ld hl, $1111                                  ; $4e2b: $21 $11 $11
    ld [hl+], a                                   ; $4e2e: $22
    inc h                                         ; $4e2f: $24
    ld b, e                                       ; $4e30: $43
    ld b, l                                       ; $4e31: $45
    ld d, [hl]                                    ; $4e32: $56
    ld h, a                                       ; $4e33: $67
    ld a, b                                       ; $4e34: $78
    adc c                                         ; $4e35: $89
    sbc d                                         ; $4e36: $9a
    xor c                                         ; $4e37: $a9
    xor e                                         ; $4e38: $ab
    call z, $edcc                                 ; $4e39: $cc $cc $ed
    sbc $ed                                       ; $4e3c: $de $ed
    db $ed                                        ; $4e3e: $ed
    call $bbdd                                    ; $4e3f: $cd $dd $bb
    call $bbcc                                    ; $4e42: $cd $cc $bb
    cp d                                          ; $4e45: $ba
    cp e                                          ; $4e46: $bb
    call z, $cacb                                 ; $4e47: $cc $cb $ca
    xor d                                         ; $4e4a: $aa
    xor c                                         ; $4e4b: $a9
    xor d                                         ; $4e4c: $aa
    cp e                                          ; $4e4d: $bb
    xor d                                         ; $4e4e: $aa
    xor c                                         ; $4e4f: $a9
    sbc c                                         ; $4e50: $99
    add [hl]                                      ; $4e51: $86
    ld a, b                                       ; $4e52: $78
    halt                                          ; $4e53: $76
    ld h, [hl]                                    ; $4e54: $66
    ld h, [hl]                                    ; $4e55: $66
    ld d, h                                       ; $4e56: $54
    ld d, l                                       ; $4e57: $55
    inc sp                                        ; $4e58: $33
    inc sp                                        ; $4e59: $33
    ld [hl+], a                                   ; $4e5a: $22
    ld de, $2211                                  ; $4e5b: $11 $11 $22
    ld de, $1111                                  ; $4e5e: $11 $11 $11
    ld [hl+], a                                   ; $4e61: $22
    inc hl                                        ; $4e62: $23
    inc sp                                        ; $4e63: $33
    ld [hl-], a                                   ; $4e64: $32
    inc sp                                        ; $4e65: $33
    inc hl                                        ; $4e66: $23
    inc sp                                        ; $4e67: $33
    ld b, h                                       ; $4e68: $44
    ld b, [hl]                                    ; $4e69: $46
    ld h, a                                       ; $4e6a: $67
    adc b                                         ; $4e6b: $88
    adc b                                         ; $4e6c: $88
    add a                                         ; $4e6d: $87
    sbc e                                         ; $4e6e: $9b
    res 6, a                                      ; $4e6f: $cb $b7
    ld d, a                                       ; $4e71: $57
    add a                                         ; $4e72: $87
    sub a                                         ; $4e73: $97
    ld [hl], a                                    ; $4e74: $77
    ld d, [hl]                                    ; $4e75: $56
    ld h, l                                       ; $4e76: $65
    jr c, jr_012_4ede                             ; $4e77: $38 $65

    sbc d                                         ; $4e79: $9a
    cp b                                          ; $4e7a: $b8
    sbc h                                         ; $4e7b: $9c
    sbc d                                         ; $4e7c: $9a
    sbc d                                         ; $4e7d: $9a
    sbc c                                         ; $4e7e: $99
    xor c                                         ; $4e7f: $a9
    sbc c                                         ; $4e80: $99
    sbc c                                         ; $4e81: $99
    xor c                                         ; $4e82: $a9
    cp h                                          ; $4e83: $bc
    db $dd                                        ; $4e84: $dd
    sbc $ee                                       ; $4e85: $de $ee
    call c, $cccc                                 ; $4e87: $dc $cc $cc
    call z, $ccdc                                 ; $4e8a: $cc $dc $cc
    xor e                                         ; $4e8d: $ab
    xor d                                         ; $4e8e: $aa
    xor c                                         ; $4e8f: $a9
    adc b                                         ; $4e90: $88
    ld [hl], a                                    ; $4e91: $77
    sub a                                         ; $4e92: $97
    ld [hl], a                                    ; $4e93: $77
    ld d, [hl]                                    ; $4e94: $56
    ld h, [hl]                                    ; $4e95: $66
    adc c                                         ; $4e96: $89
    ld [hl], h                                    ; $4e97: $74
    ld l, c                                       ; $4e98: $69
    sub [hl]                                      ; $4e99: $96
    add [hl]                                      ; $4e9a: $86
    ld h, [hl]                                    ; $4e9b: $66
    ld d, l                                       ; $4e9c: $55
    ld d, e                                       ; $4e9d: $53
    ld b, h                                       ; $4e9e: $44
    ld d, e                                       ; $4e9f: $53
    ld d, h                                       ; $4ea0: $54
    ld d, [hl]                                    ; $4ea1: $56
    ld h, [hl]                                    ; $4ea2: $66
    ld h, [hl]                                    ; $4ea3: $66
    ld d, l                                       ; $4ea4: $55
    ld b, l                                       ; $4ea5: $45
    ld d, l                                       ; $4ea6: $55
    ld h, l                                       ; $4ea7: $65
    ld d, l                                       ; $4ea8: $55
    ld b, h                                       ; $4ea9: $44
    ld d, l                                       ; $4eaa: $55
    ld d, a                                       ; $4eab: $57
    adc c                                         ; $4eac: $89
    xor c                                         ; $4ead: $a9
    sbc b                                         ; $4eae: $98
    halt                                          ; $4eaf: $76
    ld h, [hl]                                    ; $4eb0: $66
    ld a, b                                       ; $4eb1: $78
    adc b                                         ; $4eb2: $88
    ld [hl], a                                    ; $4eb3: $77
    add a                                         ; $4eb4: $87
    adc b                                         ; $4eb5: $88
    ld h, [hl]                                    ; $4eb6: $66
    halt                                          ; $4eb7: $76
    ld d, l                                       ; $4eb8: $55
    ld d, a                                       ; $4eb9: $57
    add a                                         ; $4eba: $87
    ld d, d                                       ; $4ebb: $52
    ld [hl-], a                                   ; $4ebc: $32
    ld de, $4534                                  ; $4ebd: $11 $34 $45
    adc b                                         ; $4ec0: $88
    ld h, [hl]                                    ; $4ec1: $66
    ld h, [hl]                                    ; $4ec2: $66
    adc b                                         ; $4ec3: $88
    sbc d                                         ; $4ec4: $9a
    cp d                                          ; $4ec5: $ba
    xor e                                         ; $4ec6: $ab
    cp e                                          ; $4ec7: $bb
    cp l                                          ; $4ec8: $bd
    cp d                                          ; $4ec9: $ba
    cp h                                          ; $4eca: $bc
    db $dd                                        ; $4ecb: $dd
    db $db                                        ; $4ecc: $db
    cp h                                          ; $4ecd: $bc
    cp l                                          ; $4ece: $bd
    rst $38                                       ; $4ecf: $ff
    jp z, $cbcb                                   ; $4ed0: $ca $cb $cb

    xor h                                         ; $4ed3: $ac
    cp e                                          ; $4ed4: $bb
    cp e                                          ; $4ed5: $bb
    cp d                                          ; $4ed6: $ba
    cp d                                          ; $4ed7: $ba
    xor e                                         ; $4ed8: $ab
    xor d                                         ; $4ed9: $aa
    xor c                                         ; $4eda: $a9
    sbc c                                         ; $4edb: $99
    ld [hl], a                                    ; $4edc: $77
    ld l, c                                       ; $4edd: $69

jr_012_4ede:
    sbc c                                         ; $4ede: $99
    res 0, [hl]                                   ; $4edf: $cb $86
    ld h, d                                       ; $4ee1: $62
    inc [hl]                                      ; $4ee2: $34
    ld b, h                                       ; $4ee3: $44
    ld h, l                                       ; $4ee4: $65
    ld d, e                                       ; $4ee5: $53
    ld d, h                                       ; $4ee6: $54
    ld [hl+], a                                   ; $4ee7: $22
    inc hl                                        ; $4ee8: $23
    ld [hl+], a                                   ; $4ee9: $22
    ld d, l                                       ; $4eea: $55
    dec [hl]                                      ; $4eeb: $35
    inc hl                                        ; $4eec: $23
    ld [hl+], a                                   ; $4eed: $22
    inc h                                         ; $4eee: $24
    inc sp                                        ; $4eef: $33
    inc sp                                        ; $4ef0: $33
    inc [hl]                                      ; $4ef1: $34
    ld h, l                                       ; $4ef2: $65
    ld h, [hl]                                    ; $4ef3: $66
    ld [hl], a                                    ; $4ef4: $77
    ld h, [hl]                                    ; $4ef5: $66
    ld h, [hl]                                    ; $4ef6: $66
    ld l, b                                       ; $4ef7: $68
    ld h, [hl]                                    ; $4ef8: $66
    ld h, a                                       ; $4ef9: $67
    halt                                          ; $4efa: $76
    ld d, l                                       ; $4efb: $55
    ld h, a                                       ; $4efc: $67
    ld a, b                                       ; $4efd: $78
    adc c                                         ; $4efe: $89
    sbc d                                         ; $4eff: $9a
    sbc e                                         ; $4f00: $9b
    cp d                                          ; $4f01: $ba
    cp e                                          ; $4f02: $bb
    call z, $bacc                                 ; $4f03: $cc $cc $ba
    sbc c                                         ; $4f06: $99
    xor d                                         ; $4f07: $aa
    xor d                                         ; $4f08: $aa
    xor d                                         ; $4f09: $aa
    xor d                                         ; $4f0a: $aa
    sbc c                                         ; $4f0b: $99
    sbc c                                         ; $4f0c: $99
    sbc b                                         ; $4f0d: $98
    sbc b                                         ; $4f0e: $98
    adc b                                         ; $4f0f: $88
    add a                                         ; $4f10: $87
    ld [hl], a                                    ; $4f11: $77
    halt                                          ; $4f12: $76
    halt                                          ; $4f13: $76
    ld d, [hl]                                    ; $4f14: $56
    halt                                          ; $4f15: $76
    ld h, [hl]                                    ; $4f16: $66
    ld a, b                                       ; $4f17: $78
    sbc c                                         ; $4f18: $99
    sbc e                                         ; $4f19: $9b
    cp e                                          ; $4f1a: $bb
    cp e                                          ; $4f1b: $bb
    cp h                                          ; $4f1c: $bc
    xor $ee                                       ; $4f1d: $ee $ee
    xor $ed                                       ; $4f1f: $ee $ed
    adc $ed                                       ; $4f21: $ce $ed
    cp e                                          ; $4f23: $bb
    xor c                                         ; $4f24: $a9
    adc b                                         ; $4f25: $88
    halt                                          ; $4f26: $76
    ld l, d                                       ; $4f27: $6a
    db $dd                                        ; $4f28: $dd
    res 7, d                                      ; $4f29: $cb $ba
    xor c                                         ; $4f2b: $a9
    add a                                         ; $4f2c: $87
    ld h, a                                       ; $4f2d: $67
    ld sp, $1202                                  ; $4f2e: $31 $02 $12
    ld d, a                                       ; $4f31: $57
    ld b, d                                       ; $4f32: $42
    ld [hl], $56                                  ; $4f33: $36 $56
    ld a, b                                       ; $4f35: $78
    ld [hl], l                                    ; $4f36: $75
    ld b, a                                       ; $4f37: $47
    sbc d                                         ; $4f38: $9a
    sbc d                                         ; $4f39: $9a
    xor d                                         ; $4f3a: $aa
    adc b                                         ; $4f3b: $88
    ld [hl], a                                    ; $4f3c: $77
    ld [hl], a                                    ; $4f3d: $77
    ld h, [hl]                                    ; $4f3e: $66
    ld [hl], a                                    ; $4f3f: $77
    ld h, [hl]                                    ; $4f40: $66
    ld d, l                                       ; $4f41: $55
    ld d, h                                       ; $4f42: $54
    dec [hl]                                      ; $4f43: $35
    ld d, l                                       ; $4f44: $55
    ld b, h                                       ; $4f45: $44
    ld b, e                                       ; $4f46: $43
    ld [hl+], a                                   ; $4f47: $22
    ld de, $3412                                  ; $4f48: $11 $12 $34
    ld b, e                                       ; $4f4b: $43
    ld b, e                                       ; $4f4c: $43
    ld b, [hl]                                    ; $4f4d: $46
    ld h, [hl]                                    ; $4f4e: $66
    ld [hl], h                                    ; $4f4f: $74
    add a                                         ; $4f50: $87
    ld a, b                                       ; $4f51: $78
    sbc h                                         ; $4f52: $9c
    adc $dd                                       ; $4f53: $ce $dd
    call c, $bbde                                 ; $4f55: $dc $de $bb
    xor h                                         ; $4f58: $ac
    xor c                                         ; $4f59: $a9
    xor d                                         ; $4f5a: $aa
    sbc c                                         ; $4f5b: $99
    ld a, c                                       ; $4f5c: $79
    adc b                                         ; $4f5d: $88
    halt                                          ; $4f5e: $76
    ld b, d                                       ; $4f5f: $42
    ld e, d                                       ; $4f60: $5a
    sub a                                         ; $4f61: $97
    ld b, b                                       ; $4f62: $40
    inc [hl]                                      ; $4f63: $34
    ld b, h                                       ; $4f64: $44
    inc [hl]                                      ; $4f65: $34
    ld b, l                                       ; $4f66: $45
    ld h, l                                       ; $4f67: $65
    ld h, a                                       ; $4f68: $67
    ld h, a                                       ; $4f69: $67
    ld a, b                                       ; $4f6a: $78
    adc c                                         ; $4f6b: $89
    sbc d                                         ; $4f6c: $9a
    sbc c                                         ; $4f6d: $99
    db $eb                                        ; $4f6e: $eb
    xor [hl]                                      ; $4f6f: $ae
    sbc l                                         ; $4f70: $9d
    reti                                          ; $4f71: $d9


    xor [hl]                                      ; $4f72: $ae
    call $ddbd                                    ; $4f73: $cd $bd $dd
    db $ed                                        ; $4f76: $ed
    call z, $ccdc                                 ; $4f77: $cc $dc $cc
    cp h                                          ; $4f7a: $bc
    db $db                                        ; $4f7b: $db
    cp d                                          ; $4f7c: $ba
    xor d                                         ; $4f7d: $aa
    sbc b                                         ; $4f7e: $98
    add a                                         ; $4f7f: $87
    sbc b                                         ; $4f80: $98
    sbc c                                         ; $4f81: $99
    ld [hl], a                                    ; $4f82: $77
    add a                                         ; $4f83: $87
    dec [hl]                                      ; $4f84: $35
    ld d, [hl]                                    ; $4f85: $56
    ld [hl], h                                    ; $4f86: $74
    ld d, l                                       ; $4f87: $55
    ld [hl-], a                                   ; $4f88: $32
    ld b, l                                       ; $4f89: $45
    ld d, e                                       ; $4f8a: $53
    ld hl, $1032                                  ; $4f8b: $21 $32 $10
    ld [hl+], a                                   ; $4f8e: $22
    ld de, $2111                                  ; $4f8f: $11 $11 $21
    inc hl                                        ; $4f92: $23
    ld b, e                                       ; $4f93: $43
    ld b, h                                       ; $4f94: $44
    ld b, l                                       ; $4f95: $45
    adc b                                         ; $4f96: $88
    ld a, b                                       ; $4f97: $78
    ld a, b                                       ; $4f98: $78
    add a                                         ; $4f99: $87
    ld h, a                                       ; $4f9a: $67
    sub [hl]                                      ; $4f9b: $96
    sub [hl]                                      ; $4f9c: $96
    halt                                          ; $4f9d: $76
    add a                                         ; $4f9e: $87
    ld [hl], l                                    ; $4f9f: $75
    ld d, l                                       ; $4fa0: $55
    ld d, l                                       ; $4fa1: $55
    ld b, h                                       ; $4fa2: $44
    ld b, h                                       ; $4fa3: $44
    inc sp                                        ; $4fa4: $33
    ld [hl-], a                                   ; $4fa5: $32
    ld de, $1211                                  ; $4fa6: $11 $11 $12
    inc hl                                        ; $4fa9: $23
    dec [hl]                                      ; $4faa: $35
    ld b, h                                       ; $4fab: $44
    ld b, h                                       ; $4fac: $44
    ld [hl], l                                    ; $4fad: $75
    ld d, [hl]                                    ; $4fae: $56
    add [hl]                                      ; $4faf: $86
    add [hl]                                      ; $4fb0: $86
    ld h, a                                       ; $4fb1: $67
    ld a, b                                       ; $4fb2: $78
    adc d                                         ; $4fb3: $8a
    sbc d                                         ; $4fb4: $9a
    xor d                                         ; $4fb5: $aa
    xor d                                         ; $4fb6: $aa
    xor d                                         ; $4fb7: $aa
    xor e                                         ; $4fb8: $ab
    cp h                                          ; $4fb9: $bc
    sbc $fe                                       ; $4fba: $de $fe
    xor $dd                                       ; $4fbc: $ee $dd
    db $dd                                        ; $4fbe: $dd
    rst $28                                       ; $4fbf: $ef
    db $dd                                        ; $4fc0: $dd
    call z, $bbcb                                 ; $4fc1: $cc $cb $bb
    cp d                                          ; $4fc4: $ba
    cp d                                          ; $4fc5: $ba
    cp e                                          ; $4fc6: $bb
    xor c                                         ; $4fc7: $a9
    ld a, c                                       ; $4fc8: $79
    sbc b                                         ; $4fc9: $98
    add [hl]                                      ; $4fca: $86
    add [hl]                                      ; $4fcb: $86
    ld h, a                                       ; $4fcc: $67
    halt                                          ; $4fcd: $76
    ld h, [hl]                                    ; $4fce: $66
    ld h, [hl]                                    ; $4fcf: $66
    add [hl]                                      ; $4fd0: $86
    halt                                          ; $4fd1: $76
    halt                                          ; $4fd2: $76
    ld [hl], a                                    ; $4fd3: $77
    ld [hl], a                                    ; $4fd4: $77
    ld a, b                                       ; $4fd5: $78
    ld a, d                                       ; $4fd6: $7a
    sbc c                                         ; $4fd7: $99
    adc c                                         ; $4fd8: $89
    sbc b                                         ; $4fd9: $98
    sbc c                                         ; $4fda: $99
    xor d                                         ; $4fdb: $aa
    xor d                                         ; $4fdc: $aa
    xor c                                         ; $4fdd: $a9
    add [hl]                                      ; $4fde: $86
    ld a, b                                       ; $4fdf: $78
    adc b                                         ; $4fe0: $88
    adc b                                         ; $4fe1: $88
    ld h, l                                       ; $4fe2: $65
    ld a, b                                       ; $4fe3: $78
    ld h, l                                       ; $4fe4: $65
    ld l, b                                       ; $4fe5: $68
    ld a, b                                       ; $4fe6: $78
    add l                                         ; $4fe7: $85
    ld d, h                                       ; $4fe8: $54
    inc [hl]                                      ; $4fe9: $34
    ld d, l                                       ; $4fea: $55
    ld b, h                                       ; $4feb: $44
    ld b, h                                       ; $4fec: $44
    ld d, e                                       ; $4fed: $53
    ld b, h                                       ; $4fee: $44
    ld b, e                                       ; $4fef: $43
    inc [hl]                                      ; $4ff0: $34
    ld b, e                                       ; $4ff1: $43
    inc sp                                        ; $4ff2: $33
    inc [hl]                                      ; $4ff3: $34
    inc sp                                        ; $4ff4: $33
    inc hl                                        ; $4ff5: $23
    ld b, h                                       ; $4ff6: $44
    inc sp                                        ; $4ff7: $33
    ld [hl+], a                                   ; $4ff8: $22
    ld [de], a                                    ; $4ff9: $12
    ld de, $2211                                  ; $4ffa: $11 $11 $22
    ld [hl+], a                                   ; $4ffd: $22
    inc sp                                        ; $4ffe: $33
    inc sp                                        ; $4fff: $33
    ld b, e                                       ; $5000: $43
    ld b, l                                       ; $5001: $45
    ld [hl], a                                    ; $5002: $77
    ld [hl], a                                    ; $5003: $77
    sbc c                                         ; $5004: $99
    sbc b                                         ; $5005: $98
    xor d                                         ; $5006: $aa
    sbc e                                         ; $5007: $9b
    xor d                                         ; $5008: $aa
    xor d                                         ; $5009: $aa
    xor c                                         ; $500a: $a9
    sbc c                                         ; $500b: $99
    sbc d                                         ; $500c: $9a
    sbc b                                         ; $500d: $98
    ld a, b                                       ; $500e: $78
    ld [hl], a                                    ; $500f: $77
    ld h, l                                       ; $5010: $65
    ld h, a                                       ; $5011: $67
    ld h, [hl]                                    ; $5012: $66
    add a                                         ; $5013: $87
    add a                                         ; $5014: $87
    add a                                         ; $5015: $87
    ld [hl], a                                    ; $5016: $77
    adc c                                         ; $5017: $89
    ld a, c                                       ; $5018: $79
    sbc c                                         ; $5019: $99
    xor c                                         ; $501a: $a9
    cp d                                          ; $501b: $ba
    sbc d                                         ; $501c: $9a
    add a                                         ; $501d: $87
    add a                                         ; $501e: $87
    ld [hl], a                                    ; $501f: $77
    sbc d                                         ; $5020: $9a
    xor e                                         ; $5021: $ab
    call $cddd                                    ; $5022: $cd $dd $cd
    db $db                                        ; $5025: $db
    cp h                                          ; $5026: $bc
    call z, $ccbb                                 ; $5027: $cc $bb $cc
    xor c                                         ; $502a: $a9
    sbc e                                         ; $502b: $9b
    jp c, $99aa                                   ; $502c: $da $aa $99

    xor d                                         ; $502f: $aa
    cp d                                          ; $5030: $ba
    ld a, c                                       ; $5031: $79
    sbc d                                         ; $5032: $9a
    and l                                         ; $5033: $a5
    ld a, c                                       ; $5034: $79
    ld l, b                                       ; $5035: $68
    xor b                                         ; $5036: $a8
    ld h, [hl]                                    ; $5037: $66
    ld d, a                                       ; $5038: $57
    ld [hl], a                                    ; $5039: $77
    ld h, h                                       ; $503a: $64
    inc sp                                        ; $503b: $33
    ld b, l                                       ; $503c: $45
    halt                                          ; $503d: $76
    ld d, a                                       ; $503e: $57
    add a                                         ; $503f: $87
    sbc e                                         ; $5040: $9b
    xor d                                         ; $5041: $aa
    xor b                                         ; $5042: $a8
    xor d                                         ; $5043: $aa
    adc b                                         ; $5044: $88
    add a                                         ; $5045: $87
    ld a, b                                       ; $5046: $78
    sbc d                                         ; $5047: $9a
    xor c                                         ; $5048: $a9
    xor e                                         ; $5049: $ab
    cp d                                          ; $504a: $ba
    xor e                                         ; $504b: $ab
    cp e                                          ; $504c: $bb
    cp c                                          ; $504d: $b9
    adc b                                         ; $504e: $88
    ld [hl], a                                    ; $504f: $77
    adc b                                         ; $5050: $88
    ld l, b                                       ; $5051: $68
    ld d, [hl]                                    ; $5052: $56
    ld h, [hl]                                    ; $5053: $66
    ld d, [hl]                                    ; $5054: $56
    ld d, [hl]                                    ; $5055: $56
    ld b, h                                       ; $5056: $44
    ld d, [hl]                                    ; $5057: $56
    ld l, b                                       ; $5058: $68
    ld h, a                                       ; $5059: $67
    ld h, [hl]                                    ; $505a: $66
    ld [hl], a                                    ; $505b: $77
    ld a, c                                       ; $505c: $79
    adc c                                         ; $505d: $89
    sbc b                                         ; $505e: $98
    adc d                                         ; $505f: $8a
    xor e                                         ; $5060: $ab
    cp d                                          ; $5061: $ba
    xor c                                         ; $5062: $a9
    ld a, c                                       ; $5063: $79
    ld d, a                                       ; $5064: $57
    ld [hl], a                                    ; $5065: $77
    ld h, [hl]                                    ; $5066: $66
    ld a, b                                       ; $5067: $78
    add a                                         ; $5068: $87
    ld [hl], a                                    ; $5069: $77
    ld a, b                                       ; $506a: $78
    add l                                         ; $506b: $85
    ld b, l                                       ; $506c: $45
    ld b, h                                       ; $506d: $44
    halt                                          ; $506e: $76
    halt                                          ; $506f: $76
    dec [hl]                                      ; $5070: $35
    ld h, h                                       ; $5071: $64
    ld d, l                                       ; $5072: $55
    ld b, e                                       ; $5073: $43
    inc sp                                        ; $5074: $33
    inc bc                                        ; $5075: $03
    ld b, c                                       ; $5076: $41
    inc sp                                        ; $5077: $33
    ld b, e                                       ; $5078: $43
    inc [hl]                                      ; $5079: $34
    ld d, l                                       ; $507a: $55
    ld d, l                                       ; $507b: $55
    ld d, [hl]                                    ; $507c: $56
    ld [hl], a                                    ; $507d: $77
    sbc b                                         ; $507e: $98
    ld h, l                                       ; $507f: $65
    ld l, c                                       ; $5080: $69
    adc c                                         ; $5081: $89
    sbc e                                         ; $5082: $9b
    xor c                                         ; $5083: $a9
    jp z, $bd99                                   ; $5084: $ca $99 $bd

    xor c                                         ; $5087: $a9
    call $89cb                                    ; $5088: $cd $cb $89
    cp d                                          ; $508b: $ba
    xor l                                         ; $508c: $ad
    xor b                                         ; $508d: $a8
    sbc b                                         ; $508e: $98
    adc b                                         ; $508f: $88
    add a                                         ; $5090: $87
    sbc c                                         ; $5091: $99
    ld l, b                                       ; $5092: $68
    ld h, [hl]                                    ; $5093: $66
    ld a, b                                       ; $5094: $78
    ld a, b                                       ; $5095: $78
    ld a, b                                       ; $5096: $78
    halt                                          ; $5097: $76
    ld h, a                                       ; $5098: $67
    sub [hl]                                      ; $5099: $96
    ld d, [hl]                                    ; $509a: $56
    add [hl]                                      ; $509b: $86
    adc b                                         ; $509c: $88
    ld [hl], a                                    ; $509d: $77
    adc b                                         ; $509e: $88
    ld a, b                                       ; $509f: $78
    sbc b                                         ; $50a0: $98
    sbc b                                         ; $50a1: $98
    ld [hl], a                                    ; $50a2: $77
    add a                                         ; $50a3: $87
    adc b                                         ; $50a4: $88
    adc b                                         ; $50a5: $88
    adc b                                         ; $50a6: $88
    sbc c                                         ; $50a7: $99
    sbc c                                         ; $50a8: $99
    xor c                                         ; $50a9: $a9
    sbc c                                         ; $50aa: $99
    sbc b                                         ; $50ab: $98
    ld a, b                                       ; $50ac: $78
    adc b                                         ; $50ad: $88
    ld a, b                                       ; $50ae: $78
    adc b                                         ; $50af: $88
    adc c                                         ; $50b0: $89
    adc b                                         ; $50b1: $88
    sbc c                                         ; $50b2: $99
    xor d                                         ; $50b3: $aa
    xor e                                         ; $50b4: $ab
    xor d                                         ; $50b5: $aa
    sbc c                                         ; $50b6: $99
    add a                                         ; $50b7: $87
    add a                                         ; $50b8: $87
    ld [hl], a                                    ; $50b9: $77
    halt                                          ; $50ba: $76
    ld h, [hl]                                    ; $50bb: $66
    ld h, [hl]                                    ; $50bc: $66
    ld [hl], a                                    ; $50bd: $77
    ld h, a                                       ; $50be: $67
    ld h, a                                       ; $50bf: $67
    add a                                         ; $50c0: $87
    adc b                                         ; $50c1: $88
    adc b                                         ; $50c2: $88
    adc b                                         ; $50c3: $88
    add a                                         ; $50c4: $87
    ld [hl], a                                    ; $50c5: $77
    ld h, [hl]                                    ; $50c6: $66
    ld h, [hl]                                    ; $50c7: $66
    ld d, [hl]                                    ; $50c8: $56
    ld d, l                                       ; $50c9: $55
    ld d, h                                       ; $50ca: $54
    ld b, h                                       ; $50cb: $44
    ld d, h                                       ; $50cc: $54
    inc sp                                        ; $50cd: $33
    inc sp                                        ; $50ce: $33
    inc hl                                        ; $50cf: $23
    ld [hl-], a                                   ; $50d0: $32
    ld [hl-], a                                   ; $50d1: $32
    inc sp                                        ; $50d2: $33
    ld b, h                                       ; $50d3: $44
    ld b, h                                       ; $50d4: $44
    ld b, h                                       ; $50d5: $44
    inc sp                                        ; $50d6: $33
    ld b, l                                       ; $50d7: $45
    ld l, c                                       ; $50d8: $69
    sub a                                         ; $50d9: $97
    add [hl]                                      ; $50da: $86
    sbc b                                         ; $50db: $98
    ld a, b                                       ; $50dc: $78
    ld a, b                                       ; $50dd: $78
    adc b                                         ; $50de: $88
    ld a, c                                       ; $50df: $79
    sbc c                                         ; $50e0: $99
    adc c                                         ; $50e1: $89
    adc h                                         ; $50e2: $8c
    cp [hl]                                       ; $50e3: $be
    call $cbdd                                    ; $50e4: $cd $dd $cb
    cp d                                          ; $50e7: $ba
    res 3, c                                      ; $50e8: $cb $99
    adc $cb                                       ; $50ea: $ce $cb
    xor c                                         ; $50ec: $a9
    xor c                                         ; $50ed: $a9
    sbc b                                         ; $50ee: $98
    sbc e                                         ; $50ef: $9b
    call $cdcc                                    ; $50f0: $cd $cc $cd
    call z, $babb                                 ; $50f3: $cc $bb $ba
    sbc d                                         ; $50f6: $9a
    xor b                                         ; $50f7: $a8
    add a                                         ; $50f8: $87
    add a                                         ; $50f9: $87
    halt                                          ; $50fa: $76
    ld h, h                                       ; $50fb: $64
    inc [hl]                                      ; $50fc: $34
    inc de                                        ; $50fd: $13
    ld b, e                                       ; $50fe: $43
    inc sp                                        ; $50ff: $33
    inc sp                                        ; $5100: $33
    ld b, h                                       ; $5101: $44
    ld b, h                                       ; $5102: $44
    ld d, l                                       ; $5103: $55
    ld h, [hl]                                    ; $5104: $66
    ld h, a                                       ; $5105: $67
    halt                                          ; $5106: $76
    ld h, a                                       ; $5107: $67
    ld h, a                                       ; $5108: $67
    adc c                                         ; $5109: $89
    halt                                          ; $510a: $76
    ld [hl], a                                    ; $510b: $77
    ld [hl], a                                    ; $510c: $77
    adc b                                         ; $510d: $88
    sbc c                                         ; $510e: $99
    sbc c                                         ; $510f: $99
    adc b                                         ; $5110: $88
    adc c                                         ; $5111: $89
    sbc c                                         ; $5112: $99
    sbc b                                         ; $5113: $98
    sbc c                                         ; $5114: $99
    sbc c                                         ; $5115: $99
    sbc c                                         ; $5116: $99
    sbc b                                         ; $5117: $98
    add a                                         ; $5118: $87
    ld a, b                                       ; $5119: $78
    ld [hl], a                                    ; $511a: $77
    halt                                          ; $511b: $76
    ld h, [hl]                                    ; $511c: $66
    ld h, [hl]                                    ; $511d: $66
    ld h, l                                       ; $511e: $65
    ld d, [hl]                                    ; $511f: $56
    add a                                         ; $5120: $87
    ld h, [hl]                                    ; $5121: $66
    ld [hl], a                                    ; $5122: $77
    halt                                          ; $5123: $76
    ld h, [hl]                                    ; $5124: $66
    ld h, a                                       ; $5125: $67
    ld h, [hl]                                    ; $5126: $66
    ld d, l                                       ; $5127: $55
    ld d, l                                       ; $5128: $55
    ld d, l                                       ; $5129: $55
    ld h, a                                       ; $512a: $67
    ld a, b                                       ; $512b: $78
    adc b                                         ; $512c: $88
    adc c                                         ; $512d: $89
    sbc c                                         ; $512e: $99
    sbc c                                         ; $512f: $99
    xor d                                         ; $5130: $aa
    xor d                                         ; $5131: $aa
    xor c                                         ; $5132: $a9
    sbc b                                         ; $5133: $98
    ld a, b                                       ; $5134: $78
    ld a, b                                       ; $5135: $78
    ld l, b                                       ; $5136: $68
    adc c                                         ; $5137: $89
    sbc c                                         ; $5138: $99
    adc b                                         ; $5139: $88
    sbc d                                         ; $513a: $9a
    adc c                                         ; $513b: $89
    adc e                                         ; $513c: $8b
    xor c                                         ; $513d: $a9
    sbc d                                         ; $513e: $9a
    xor b                                         ; $513f: $a8
    xor c                                         ; $5140: $a9
    xor b                                         ; $5141: $a8
    xor b                                         ; $5142: $a8
    adc b                                         ; $5143: $88
    sbc c                                         ; $5144: $99
    adc c                                         ; $5145: $89
    sbc c                                         ; $5146: $99
    ld [hl], a                                    ; $5147: $77
    ld a, b                                       ; $5148: $78
    sub a                                         ; $5149: $97
    adc b                                         ; $514a: $88
    sub a                                         ; $514b: $97
    halt                                          ; $514c: $76
    ld [hl], a                                    ; $514d: $77
    ld [hl], a                                    ; $514e: $77
    add a                                         ; $514f: $87
    add a                                         ; $5150: $87
    ld [hl], a                                    ; $5151: $77
    halt                                          ; $5152: $76
    ld h, [hl]                                    ; $5153: $66
    ld h, a                                       ; $5154: $67
    add a                                         ; $5155: $87
    ld [hl], a                                    ; $5156: $77
    halt                                          ; $5157: $76
    ld h, [hl]                                    ; $5158: $66
    ld [hl], a                                    ; $5159: $77
    halt                                          ; $515a: $76
    ld h, [hl]                                    ; $515b: $66
    ld [hl], a                                    ; $515c: $77
    add a                                         ; $515d: $87
    ld h, [hl]                                    ; $515e: $66
    ld d, l                                       ; $515f: $55
    ld h, [hl]                                    ; $5160: $66
    ld h, [hl]                                    ; $5161: $66
    halt                                          ; $5162: $76
    ld [hl], a                                    ; $5163: $77
    adc b                                         ; $5164: $88
    adc b                                         ; $5165: $88
    add a                                         ; $5166: $87
    ld a, b                                       ; $5167: $78
    adc b                                         ; $5168: $88
    adc b                                         ; $5169: $88
    ld [hl], a                                    ; $516a: $77
    ld [hl], a                                    ; $516b: $77
    ld [hl], a                                    ; $516c: $77
    ld [hl], a                                    ; $516d: $77
    ld [hl], a                                    ; $516e: $77
    ld [hl], a                                    ; $516f: $77
    add a                                         ; $5170: $87
    ld [hl], a                                    ; $5171: $77
    ld [hl], a                                    ; $5172: $77
    ld [hl], a                                    ; $5173: $77
    ld [hl], a                                    ; $5174: $77
    ld [hl], a                                    ; $5175: $77
    ld [hl], a                                    ; $5176: $77
    ld h, [hl]                                    ; $5177: $66
    ld [hl], a                                    ; $5178: $77
    ld h, [hl]                                    ; $5179: $66
    ld h, a                                       ; $517a: $67
    halt                                          ; $517b: $76
    ld h, a                                       ; $517c: $67
    halt                                          ; $517d: $76
    ld h, a                                       ; $517e: $67
    add a                                         ; $517f: $87
    add a                                         ; $5180: $87
    ld a, b                                       ; $5181: $78
    adc b                                         ; $5182: $88
    ld a, b                                       ; $5183: $78
    adc b                                         ; $5184: $88
    adc b                                         ; $5185: $88
    adc b                                         ; $5186: $88
    adc b                                         ; $5187: $88
    adc b                                         ; $5188: $88
    adc b                                         ; $5189: $88
    adc b                                         ; $518a: $88
    adc b                                         ; $518b: $88
    adc b                                         ; $518c: $88
    adc b                                         ; $518d: $88
    adc b                                         ; $518e: $88
    adc b                                         ; $518f: $88
    adc b                                         ; $5190: $88
    adc b                                         ; $5191: $88
    adc b                                         ; $5192: $88
    adc b                                         ; $5193: $88
    adc b                                         ; $5194: $88
    adc b                                         ; $5195: $88
    adc b                                         ; $5196: $88
    adc b                                         ; $5197: $88
    adc b                                         ; $5198: $88
    adc b                                         ; $5199: $88
    adc b                                         ; $519a: $88
    adc b                                         ; $519b: $88
    add a                                         ; $519c: $87
    adc b                                         ; $519d: $88
    adc b                                         ; $519e: $88
    add a                                         ; $519f: $87
    add a                                         ; $51a0: $87
    ld a, b                                       ; $51a1: $78
    ld a, b                                       ; $51a2: $78
    ld a, b                                       ; $51a3: $78
    add a                                         ; $51a4: $87
    adc b                                         ; $51a5: $88
    adc b                                         ; $51a6: $88
    adc b                                         ; $51a7: $88
    adc b                                         ; $51a8: $88
    adc b                                         ; $51a9: $88
    adc b                                         ; $51aa: $88
    adc b                                         ; $51ab: $88
    adc b                                         ; $51ac: $88
    adc b                                         ; $51ad: $88
    adc b                                         ; $51ae: $88
    adc b                                         ; $51af: $88
    adc b                                         ; $51b0: $88
    adc b                                         ; $51b1: $88
    adc b                                         ; $51b2: $88
    adc b                                         ; $51b3: $88
    adc b                                         ; $51b4: $88
    adc b                                         ; $51b5: $88
    adc b                                         ; $51b6: $88
    adc b                                         ; $51b7: $88
    adc b                                         ; $51b8: $88
    adc b                                         ; $51b9: $88
    adc b                                         ; $51ba: $88
    adc b                                         ; $51bb: $88
    adc b                                         ; $51bc: $88
    adc b                                         ; $51bd: $88
    ld a, b                                       ; $51be: $78
    adc b                                         ; $51bf: $88
    adc b                                         ; $51c0: $88
    adc b                                         ; $51c1: $88
    add a                                         ; $51c2: $87
    adc b                                         ; $51c3: $88
    adc b                                         ; $51c4: $88
    adc b                                         ; $51c5: $88
    adc b                                         ; $51c6: $88
    add a                                         ; $51c7: $87
    ld a, b                                       ; $51c8: $78
    adc b                                         ; $51c9: $88
    ld a, b                                       ; $51ca: $78
    adc b                                         ; $51cb: $88
    adc b                                         ; $51cc: $88
    adc b                                         ; $51cd: $88
    adc b                                         ; $51ce: $88
    adc b                                         ; $51cf: $88
    adc b                                         ; $51d0: $88
    adc b                                         ; $51d1: $88
    adc b                                         ; $51d2: $88
    adc b                                         ; $51d3: $88
    adc b                                         ; $51d4: $88
    adc b                                         ; $51d5: $88
    add a                                         ; $51d6: $87
    adc b                                         ; $51d7: $88
    adc b                                         ; $51d8: $88
    adc b                                         ; $51d9: $88
    adc b                                         ; $51da: $88
    add a                                         ; $51db: $87
    adc b                                         ; $51dc: $88
    adc b                                         ; $51dd: $88
    adc b                                         ; $51de: $88
    adc b                                         ; $51df: $88
    add a                                         ; $51e0: $87
    ld a, b                                       ; $51e1: $78
    add a                                         ; $51e2: $87
    ld [hl], a                                    ; $51e3: $77
    adc b                                         ; $51e4: $88
    adc b                                         ; $51e5: $88
    adc b                                         ; $51e6: $88
    adc b                                         ; $51e7: $88
    adc b                                         ; $51e8: $88
    add a                                         ; $51e9: $87
    ld a, b                                       ; $51ea: $78
    ld a, b                                       ; $51eb: $78
    adc b                                         ; $51ec: $88
    add a                                         ; $51ed: $87
    adc b                                         ; $51ee: $88
    adc b                                         ; $51ef: $88
    adc b                                         ; $51f0: $88
    adc b                                         ; $51f1: $88
    adc b                                         ; $51f2: $88
    adc b                                         ; $51f3: $88
    adc b                                         ; $51f4: $88
    adc b                                         ; $51f5: $88
    adc b                                         ; $51f6: $88
    adc b                                         ; $51f7: $88
    add a                                         ; $51f8: $87
    ld [hl], a                                    ; $51f9: $77
    ld a, b                                       ; $51fa: $78
    adc b                                         ; $51fb: $88
    add a                                         ; $51fc: $87
    ld [hl], a                                    ; $51fd: $77
    ld [hl], a                                    ; $51fe: $77
    adc b                                         ; $51ff: $88
    adc b                                         ; $5200: $88
    adc b                                         ; $5201: $88
    adc b                                         ; $5202: $88
    ld [hl], a                                    ; $5203: $77
    ld [hl], a                                    ; $5204: $77
    ld [hl], a                                    ; $5205: $77
    adc b                                         ; $5206: $88
    adc b                                         ; $5207: $88
    adc b                                         ; $5208: $88
    ld [hl], a                                    ; $5209: $77
    ld [hl], a                                    ; $520a: $77
    add a                                         ; $520b: $87
    ld [hl], a                                    ; $520c: $77
    add a                                         ; $520d: $87
    ld [hl], a                                    ; $520e: $77
    adc b                                         ; $520f: $88
    adc b                                         ; $5210: $88
    adc b                                         ; $5211: $88
    adc b                                         ; $5212: $88
    add a                                         ; $5213: $87
    ld [hl], a                                    ; $5214: $77
    ld [hl], a                                    ; $5215: $77
    ld a, b                                       ; $5216: $78
    adc b                                         ; $5217: $88
    adc b                                         ; $5218: $88
    add a                                         ; $5219: $87
    ld [hl], a                                    ; $521a: $77
    ld [hl], a                                    ; $521b: $77
    ld [hl], a                                    ; $521c: $77
    adc b                                         ; $521d: $88
    add a                                         ; $521e: $87
    add a                                         ; $521f: $87
    adc b                                         ; $5220: $88
    add a                                         ; $5221: $87
    add a                                         ; $5222: $87
    ld [hl], a                                    ; $5223: $77
    ld a, b                                       ; $5224: $78
    ld [hl], a                                    ; $5225: $77
    add a                                         ; $5226: $87
    adc b                                         ; $5227: $88
    ld [hl], a                                    ; $5228: $77
    ld a, b                                       ; $5229: $78
    ld [hl], a                                    ; $522a: $77
    adc b                                         ; $522b: $88
    adc b                                         ; $522c: $88
    adc b                                         ; $522d: $88
    ld [hl], a                                    ; $522e: $77
    ld [hl], a                                    ; $522f: $77
    adc b                                         ; $5230: $88
    adc b                                         ; $5231: $88
    adc b                                         ; $5232: $88
    ld [hl], a                                    ; $5233: $77
    ld a, b                                       ; $5234: $78
    add a                                         ; $5235: $87
    ld a, b                                       ; $5236: $78
    ld a, b                                       ; $5237: $78
    ld [hl], a                                    ; $5238: $77
    ld a, b                                       ; $5239: $78
    adc b                                         ; $523a: $88
    add a                                         ; $523b: $87
    ld [hl], a                                    ; $523c: $77
    ld a, b                                       ; $523d: $78
    ld a, b                                       ; $523e: $78
    adc b                                         ; $523f: $88
    adc b                                         ; $5240: $88
    ld a, b                                       ; $5241: $78
    adc b                                         ; $5242: $88
    ld a, b                                       ; $5243: $78
    add a                                         ; $5244: $87
    add a                                         ; $5245: $87
    adc b                                         ; $5246: $88
    ld [hl], a                                    ; $5247: $77
    ld a, b                                       ; $5248: $78
    adc b                                         ; $5249: $88
    add a                                         ; $524a: $87
    ld [hl], a                                    ; $524b: $77
    ld [hl], a                                    ; $524c: $77
    add a                                         ; $524d: $87
    ld a, b                                       ; $524e: $78
    adc b                                         ; $524f: $88
    add a                                         ; $5250: $87
    add a                                         ; $5251: $87
    adc b                                         ; $5252: $88
    ld [hl], a                                    ; $5253: $77
    ld a, b                                       ; $5254: $78
    adc b                                         ; $5255: $88
    adc b                                         ; $5256: $88
    adc b                                         ; $5257: $88
    ld [hl], a                                    ; $5258: $77
    ld [hl], a                                    ; $5259: $77
    adc b                                         ; $525a: $88
    adc b                                         ; $525b: $88
    ld [hl], a                                    ; $525c: $77
    adc b                                         ; $525d: $88
    add a                                         ; $525e: $87
    ld [hl], a                                    ; $525f: $77
    add a                                         ; $5260: $87
    ld a, b                                       ; $5261: $78
    adc b                                         ; $5262: $88
    adc b                                         ; $5263: $88
    add a                                         ; $5264: $87
    ld [hl], a                                    ; $5265: $77
    ld a, b                                       ; $5266: $78
    adc b                                         ; $5267: $88
    adc b                                         ; $5268: $88
    ld [hl], a                                    ; $5269: $77
    ld [hl], a                                    ; $526a: $77
    adc b                                         ; $526b: $88
    adc b                                         ; $526c: $88
    add a                                         ; $526d: $87
    ld [hl], a                                    ; $526e: $77
    adc b                                         ; $526f: $88
    add a                                         ; $5270: $87
    ld a, b                                       ; $5271: $78
    ld a, b                                       ; $5272: $78
    adc b                                         ; $5273: $88
    adc b                                         ; $5274: $88
    ld [hl], a                                    ; $5275: $77
    ld [hl], a                                    ; $5276: $77
    adc b                                         ; $5277: $88
    adc b                                         ; $5278: $88
    adc b                                         ; $5279: $88
    ld [hl], a                                    ; $527a: $77
    ld [hl], a                                    ; $527b: $77
    ld a, b                                       ; $527c: $78
    adc b                                         ; $527d: $88
    adc b                                         ; $527e: $88
    add a                                         ; $527f: $87
    adc b                                         ; $5280: $88
    adc b                                         ; $5281: $88
    adc b                                         ; $5282: $88
    ld [hl], a                                    ; $5283: $77
    ld [hl], a                                    ; $5284: $77
    adc b                                         ; $5285: $88
    adc b                                         ; $5286: $88
    add a                                         ; $5287: $87

Call_012_5288:
    ld [hl], a                                    ; $5288: $77
    ld [hl], a                                    ; $5289: $77
    ld [hl], a                                    ; $528a: $77
    ld [hl], a                                    ; $528b: $77
    adc b                                         ; $528c: $88
    adc b                                         ; $528d: $88
    ld [hl], a                                    ; $528e: $77
    ld [hl], a                                    ; $528f: $77
    add a                                         ; $5290: $87
    adc b                                         ; $5291: $88
    adc b                                         ; $5292: $88
    add a                                         ; $5293: $87
    ld [hl], a                                    ; $5294: $77
    ld [hl], a                                    ; $5295: $77
    adc b                                         ; $5296: $88
    add a                                         ; $5297: $87
    ld [hl], a                                    ; $5298: $77
    ld [hl], a                                    ; $5299: $77
    ld a, b                                       ; $529a: $78
    adc b                                         ; $529b: $88
    adc b                                         ; $529c: $88
    add a                                         ; $529d: $87
    ld [hl], a                                    ; $529e: $77
    ld [hl], a                                    ; $529f: $77
    add a                                         ; $52a0: $87
    adc b                                         ; $52a1: $88
    adc b                                         ; $52a2: $88
    adc b                                         ; $52a3: $88
    adc b                                         ; $52a4: $88
    ld a, b                                       ; $52a5: $78
    adc b                                         ; $52a6: $88
    adc b                                         ; $52a7: $88
    ld [hl], a                                    ; $52a8: $77
    ld [hl], a                                    ; $52a9: $77
    ld [hl], a                                    ; $52aa: $77
    ld [hl], a                                    ; $52ab: $77
    ld [hl], a                                    ; $52ac: $77
    ld [hl], a                                    ; $52ad: $77
    ld a, b                                       ; $52ae: $78
    adc b                                         ; $52af: $88
    adc b                                         ; $52b0: $88
    adc b                                         ; $52b1: $88
    add a                                         ; $52b2: $87
    ld [hl], a                                    ; $52b3: $77
    adc b                                         ; $52b4: $88
    ld [hl], a                                    ; $52b5: $77
    ld a, b                                       ; $52b6: $78
    ld [hl], a                                    ; $52b7: $77
    ld [hl], a                                    ; $52b8: $77
    ld a, b                                       ; $52b9: $78
    adc b                                         ; $52ba: $88
    adc b                                         ; $52bb: $88
    adc b                                         ; $52bc: $88
    adc b                                         ; $52bd: $88
    ld [hl], a                                    ; $52be: $77
    ld a, b                                       ; $52bf: $78
    add a                                         ; $52c0: $87
    ld [hl], a                                    ; $52c1: $77
    ld [hl], a                                    ; $52c2: $77
    ld [hl], a                                    ; $52c3: $77
    adc b                                         ; $52c4: $88
    adc b                                         ; $52c5: $88
    add a                                         ; $52c6: $87
    ld [hl], a                                    ; $52c7: $77
    ld [hl], a                                    ; $52c8: $77
    add a                                         ; $52c9: $87
    ld [hl], a                                    ; $52ca: $77
    ld [hl], a                                    ; $52cb: $77
    ld [hl], a                                    ; $52cc: $77
    adc b                                         ; $52cd: $88
    adc b                                         ; $52ce: $88
    adc b                                         ; $52cf: $88
    adc b                                         ; $52d0: $88
    ld [hl], a                                    ; $52d1: $77
    ld a, b                                       ; $52d2: $78
    adc b                                         ; $52d3: $88
    adc b                                         ; $52d4: $88
    adc b                                         ; $52d5: $88
    ld [hl], a                                    ; $52d6: $77
    ld [hl], a                                    ; $52d7: $77
    ld [hl], a                                    ; $52d8: $77
    add a                                         ; $52d9: $87
    ld a, b                                       ; $52da: $78
    adc b                                         ; $52db: $88
    adc b                                         ; $52dc: $88
    adc b                                         ; $52dd: $88
    ld a, b                                       ; $52de: $78
    adc b                                         ; $52df: $88
    adc b                                         ; $52e0: $88
    ld [hl], a                                    ; $52e1: $77
    add a                                         ; $52e2: $87
    ld [hl], a                                    ; $52e3: $77
    ld [hl], a                                    ; $52e4: $77
    ld a, b                                       ; $52e5: $78
    adc b                                         ; $52e6: $88
    adc b                                         ; $52e7: $88
    adc b                                         ; $52e8: $88
    ld [hl], a                                    ; $52e9: $77
    ld [hl], a                                    ; $52ea: $77
    add a                                         ; $52eb: $87
    ld [hl], a                                    ; $52ec: $77
    ld a, b                                       ; $52ed: $78
    add a                                         ; $52ee: $87
    ld a, b                                       ; $52ef: $78
    adc b                                         ; $52f0: $88
    adc b                                         ; $52f1: $88
    adc b                                         ; $52f2: $88
    adc b                                         ; $52f3: $88
    ld [hl], a                                    ; $52f4: $77
    add a                                         ; $52f5: $87
    ld [hl], a                                    ; $52f6: $77
    adc b                                         ; $52f7: $88
    adc b                                         ; $52f8: $88
    ld [hl], a                                    ; $52f9: $77
    adc b                                         ; $52fa: $88
    ld a, b                                       ; $52fb: $78
    add a                                         ; $52fc: $87
    ld a, b                                       ; $52fd: $78
    ld a, b                                       ; $52fe: $78
    adc b                                         ; $52ff: $88
    add a                                         ; $5300: $87
    ld [hl], a                                    ; $5301: $77
    ld [hl], a                                    ; $5302: $77
    ld a, b                                       ; $5303: $78
    adc b                                         ; $5304: $88
    adc b                                         ; $5305: $88
    adc b                                         ; $5306: $88
    ld a, b                                       ; $5307: $78
    ld [hl], a                                    ; $5308: $77
    adc b                                         ; $5309: $88
    adc b                                         ; $530a: $88
    ld [hl], a                                    ; $530b: $77
    ld [hl], a                                    ; $530c: $77
    ld [hl], a                                    ; $530d: $77
    add a                                         ; $530e: $87
    ld [hl], a                                    ; $530f: $77
    add a                                         ; $5310: $87
    ld [hl], a                                    ; $5311: $77
    adc b                                         ; $5312: $88
    add a                                         ; $5313: $87
    adc b                                         ; $5314: $88
    add a                                         ; $5315: $87
    ld [hl], a                                    ; $5316: $77
    add a                                         ; $5317: $87
    ld [hl], a                                    ; $5318: $77
    adc b                                         ; $5319: $88
    add a                                         ; $531a: $87
    ld [hl], a                                    ; $531b: $77
    ld [hl], a                                    ; $531c: $77
    ld [hl], a                                    ; $531d: $77
    adc b                                         ; $531e: $88
    add a                                         ; $531f: $87
    adc b                                         ; $5320: $88
    ld a, b                                       ; $5321: $78
    adc b                                         ; $5322: $88
    add a                                         ; $5323: $87
    ld [hl], a                                    ; $5324: $77
    ld l, b                                       ; $5325: $68
    sub [hl]                                      ; $5326: $96
    adc c                                         ; $5327: $89
    adc c                                         ; $5328: $89
    ld [hl], a                                    ; $5329: $77
    sub [hl]                                      ; $532a: $96
    ld [hl], a                                    ; $532b: $77
    ld h, a                                       ; $532c: $67
    adc b                                         ; $532d: $88
    adc b                                         ; $532e: $88
    ld a, b                                       ; $532f: $78
    add a                                         ; $5330: $87
    ld [hl], a                                    ; $5331: $77
    ld [hl], a                                    ; $5332: $77
    adc b                                         ; $5333: $88
    ld [hl], a                                    ; $5334: $77
    add a                                         ; $5335: $87
    adc b                                         ; $5336: $88
    ld h, a                                       ; $5337: $67
    add a                                         ; $5338: $87
    ld [hl], a                                    ; $5339: $77
    sbc b                                         ; $533a: $98
    adc b                                         ; $533b: $88
    ld [hl], a                                    ; $533c: $77
    adc b                                         ; $533d: $88
    add a                                         ; $533e: $87
    ld a, b                                       ; $533f: $78
    sbc b                                         ; $5340: $98
    ld [hl], a                                    ; $5341: $77
    ld [hl], a                                    ; $5342: $77
    ld a, b                                       ; $5343: $78
    adc b                                         ; $5344: $88
    adc b                                         ; $5345: $88
    add a                                         ; $5346: $87
    ld a, b                                       ; $5347: $78
    add a                                         ; $5348: $87
    ld [hl], a                                    ; $5349: $77
    add a                                         ; $534a: $87
    ld [hl], a                                    ; $534b: $77
    ld a, b                                       ; $534c: $78
    ld a, b                                       ; $534d: $78
    ld a, b                                       ; $534e: $78
    ld a, b                                       ; $534f: $78
    adc b                                         ; $5350: $88
    ld [hl], a                                    ; $5351: $77
    ld [hl], a                                    ; $5352: $77
    ld [hl], a                                    ; $5353: $77
    adc b                                         ; $5354: $88
    ld [hl], a                                    ; $5355: $77
    adc b                                         ; $5356: $88
    adc b                                         ; $5357: $88
    ld [hl], a                                    ; $5358: $77
    add a                                         ; $5359: $87
    adc b                                         ; $535a: $88
    ld [hl], a                                    ; $535b: $77
    ld [hl], a                                    ; $535c: $77
    ld [hl], a                                    ; $535d: $77
    ld [hl], a                                    ; $535e: $77
    adc b                                         ; $535f: $88
    add a                                         ; $5360: $87
    adc b                                         ; $5361: $88
    add a                                         ; $5362: $87
    adc b                                         ; $5363: $88
    add a                                         ; $5364: $87
    ld [hl], a                                    ; $5365: $77
    ld [hl], a                                    ; $5366: $77
    ld [hl], a                                    ; $5367: $77
    add a                                         ; $5368: $87
    adc b                                         ; $5369: $88
    adc b                                         ; $536a: $88
    add a                                         ; $536b: $87
    ld a, b                                       ; $536c: $78
    ld [hl], a                                    ; $536d: $77
    adc b                                         ; $536e: $88
    ld [hl], a                                    ; $536f: $77
    add a                                         ; $5370: $87
    ld [hl], a                                    ; $5371: $77
    ld a, b                                       ; $5372: $78
    adc b                                         ; $5373: $88
    adc b                                         ; $5374: $88
    adc b                                         ; $5375: $88
    ld a, b                                       ; $5376: $78
    adc b                                         ; $5377: $88
    add a                                         ; $5378: $87
    adc b                                         ; $5379: $88
    ld [hl], a                                    ; $537a: $77
    ld [hl], a                                    ; $537b: $77
    ld [hl], a                                    ; $537c: $77
    ld [hl], a                                    ; $537d: $77
    ld a, b                                       ; $537e: $78
    adc b                                         ; $537f: $88
    adc b                                         ; $5380: $88
    adc b                                         ; $5381: $88
    ld [hl], a                                    ; $5382: $77
    ld [hl], a                                    ; $5383: $77
    ld a, b                                       ; $5384: $78
    add a                                         ; $5385: $87
    ld [hl], a                                    ; $5386: $77
    add a                                         ; $5387: $87
    ld a, b                                       ; $5388: $78
    ld [hl], a                                    ; $5389: $77
    adc b                                         ; $538a: $88
    ld [hl], a                                    ; $538b: $77
    adc b                                         ; $538c: $88
    ld a, b                                       ; $538d: $78
    adc b                                         ; $538e: $88
    ld [hl], a                                    ; $538f: $77
    add a                                         ; $5390: $87
    ld h, [hl]                                    ; $5391: $66
    ld [hl], a                                    ; $5392: $77
    add a                                         ; $5393: $87
    adc b                                         ; $5394: $88
    add a                                         ; $5395: $87
    sbc b                                         ; $5396: $98
    ld a, b                                       ; $5397: $78
    add a                                         ; $5398: $87
    ld a, b                                       ; $5399: $78
    add a                                         ; $539a: $87
    ld a, b                                       ; $539b: $78
    add a                                         ; $539c: $87
    add a                                         ; $539d: $87
    ld [hl], a                                    ; $539e: $77
    adc b                                         ; $539f: $88
    adc b                                         ; $53a0: $88
    ld a, b                                       ; $53a1: $78
    adc b                                         ; $53a2: $88
    sub a                                         ; $53a3: $97
    adc b                                         ; $53a4: $88
    ld [hl], a                                    ; $53a5: $77
    ld h, a                                       ; $53a6: $67
    ld [hl], a                                    ; $53a7: $77
    ld [hl], a                                    ; $53a8: $77
    adc b                                         ; $53a9: $88
    adc b                                         ; $53aa: $88
    ld a, b                                       ; $53ab: $78
    sbc c                                         ; $53ac: $99
    adc b                                         ; $53ad: $88
    add a                                         ; $53ae: $87
    ld [hl], l                                    ; $53af: $75
    adc b                                         ; $53b0: $88
    ld a, c                                       ; $53b1: $79
    adc b                                         ; $53b2: $88
    ld [hl], a                                    ; $53b3: $77
    ld a, b                                       ; $53b4: $78
    ld a, b                                       ; $53b5: $78
    ld a, b                                       ; $53b6: $78
    ld a, b                                       ; $53b7: $78
    sub [hl]                                      ; $53b8: $96
    ld l, c                                       ; $53b9: $69
    ld l, b                                       ; $53ba: $68
    sub [hl]                                      ; $53bb: $96
    ld a, c                                       ; $53bc: $79
    ld [hl], a                                    ; $53bd: $77
    ld h, [hl]                                    ; $53be: $66
    add a                                         ; $53bf: $87
    add a                                         ; $53c0: $87
    ld [hl], a                                    ; $53c1: $77
    ld a, b                                       ; $53c2: $78
    add a                                         ; $53c3: $87
    sub a                                         ; $53c4: $97
    ld a, b                                       ; $53c5: $78
    xor c                                         ; $53c6: $a9
    add a                                         ; $53c7: $87
    ld h, [hl]                                    ; $53c8: $66
    halt                                          ; $53c9: $76
    ld a, c                                       ; $53ca: $79
    add a                                         ; $53cb: $87
    ld h, a                                       ; $53cc: $67
    add [hl]                                      ; $53cd: $86
    sbc c                                         ; $53ce: $99
    ld h, a                                       ; $53cf: $67
    adc c                                         ; $53d0: $89
    adc c                                         ; $53d1: $89
    and a                                         ; $53d2: $a7
    ld a, b                                       ; $53d3: $78
    ld h, a                                       ; $53d4: $67
    sub a                                         ; $53d5: $97
    adc d                                         ; $53d6: $8a
    ld h, a                                       ; $53d7: $67
    cp b                                          ; $53d8: $b8
    ld a, b                                       ; $53d9: $78
    ld [hl], l                                    ; $53da: $75
    ld h, a                                       ; $53db: $67
    sub a                                         ; $53dc: $97
    adc b                                         ; $53dd: $88
    add a                                         ; $53de: $87
    ld [hl], a                                    ; $53df: $77
    add [hl]                                      ; $53e0: $86
    ld a, c                                       ; $53e1: $79
    adc b                                         ; $53e2: $88
    adc d                                         ; $53e3: $8a
    adc b                                         ; $53e4: $88
    ld a, b                                       ; $53e5: $78
    add e                                         ; $53e6: $83
    adc b                                         ; $53e7: $88
    ld [hl], a                                    ; $53e8: $77
    ld [hl], a                                    ; $53e9: $77
    ld [hl], a                                    ; $53ea: $77
    ld d, l                                       ; $53eb: $55
    adc b                                         ; $53ec: $88
    sub a                                         ; $53ed: $97
    adc c                                         ; $53ee: $89
    add a                                         ; $53ef: $87
    adc c                                         ; $53f0: $89
    ld a, c                                       ; $53f1: $79
    add a                                         ; $53f2: $87
    ld h, l                                       ; $53f3: $65
    ld h, a                                       ; $53f4: $67
    ld a, b                                       ; $53f5: $78
    add a                                         ; $53f6: $87
    ld [hl], a                                    ; $53f7: $77
    adc b                                         ; $53f8: $88
    adc d                                         ; $53f9: $8a
    add a                                         ; $53fa: $87
    sub a                                         ; $53fb: $97
    ld [hl], a                                    ; $53fc: $77
    ld a, d                                       ; $53fd: $7a
    sbc b                                         ; $53fe: $98
    add a                                         ; $53ff: $87
    add l                                         ; $5400: $85
    ld h, a                                       ; $5401: $67
    ld d, a                                       ; $5402: $57
    add a                                         ; $5403: $87
    adc c                                         ; $5404: $89
    xor b                                         ; $5405: $a8
    add a                                         ; $5406: $87
    ld l, b                                       ; $5407: $68
    ld [hl], a                                    ; $5408: $77
    ld [hl], a                                    ; $5409: $77
    adc b                                         ; $540a: $88
    ld h, a                                       ; $540b: $67
    ld a, b                                       ; $540c: $78
    adc c                                         ; $540d: $89
    adc b                                         ; $540e: $88
    add a                                         ; $540f: $87
    ld h, [hl]                                    ; $5410: $66
    add a                                         ; $5411: $87
    adc c                                         ; $5412: $89
    sbc c                                         ; $5413: $99
    add a                                         ; $5414: $87
    ld h, [hl]                                    ; $5415: $66
    ld a, b                                       ; $5416: $78
    ld h, a                                       ; $5417: $67
    sbc b                                         ; $5418: $98
    ld h, [hl]                                    ; $5419: $66
    add a                                         ; $541a: $87
    ld [hl], a                                    ; $541b: $77
    adc b                                         ; $541c: $88
    ld a, b                                       ; $541d: $78
    halt                                          ; $541e: $76
    ld [hl], a                                    ; $541f: $77
    adc b                                         ; $5420: $88
    adc c                                         ; $5421: $89
    sbc c                                         ; $5422: $99
    ret                                           ; $5423: $c9


    adc d                                         ; $5424: $8a
    add a                                         ; $5425: $87
    ld h, [hl]                                    ; $5426: $66
    ld a, e                                       ; $5427: $7b
    sbc e                                         ; $5428: $9b
    add a                                         ; $5429: $87
    ld l, b                                       ; $542a: $68
    add a                                         ; $542b: $87
    add [hl]                                      ; $542c: $86
    sub a                                         ; $542d: $97
    adc d                                         ; $542e: $8a
    ld a, c                                       ; $542f: $79
    add a                                         ; $5430: $87
    ld [hl], a                                    ; $5431: $77
    ld c, b                                       ; $5432: $48
    add l                                         ; $5433: $85
    ld a, e                                       ; $5434: $7b
    ld a, $3a                                     ; $5435: $3e $3a
    halt                                          ; $5437: $76
    ld [hl], l                                    ; $5438: $75
    adc b                                         ; $5439: $88
    ld a, e                                       ; $543a: $7b
    add a                                         ; $543b: $87
    sbc c                                         ; $543c: $99
    ld e, b                                       ; $543d: $58
    ld [hl], l                                    ; $543e: $75
    add [hl]                                      ; $543f: $86
    sbc b                                         ; $5440: $98
    ld [hl], l                                    ; $5441: $75
    sbc c                                         ; $5442: $99
    ld a, b                                       ; $5443: $78
    ld h, a                                       ; $5444: $67
    add a                                         ; $5445: $87
    sbc e                                         ; $5446: $9b
    add [hl]                                      ; $5447: $86
    and l                                         ; $5448: $a5
    add [hl]                                      ; $5449: $86
    adc b                                         ; $544a: $88
    sbc d                                         ; $544b: $9a
    ld a, b                                       ; $544c: $78
    ld h, l                                       ; $544d: $65
    sub a                                         ; $544e: $97
    add a                                         ; $544f: $87
    add a                                         ; $5450: $87
    halt                                          ; $5451: $76
    ld l, b                                       ; $5452: $68
    ld h, a                                       ; $5453: $67
    ld d, a                                       ; $5454: $57
    ld [hl], a                                    ; $5455: $77
    ld l, b                                       ; $5456: $68
    sub a                                         ; $5457: $97
    add a                                         ; $5458: $87
    ld [hl], a                                    ; $5459: $77
    adc b                                         ; $545a: $88
    ld a, c                                       ; $545b: $79
    adc b                                         ; $545c: $88
    adc c                                         ; $545d: $89
    ld a, b                                       ; $545e: $78
    adc b                                         ; $545f: $88
    sub a                                         ; $5460: $97
    ld [hl], a                                    ; $5461: $77
    ld l, b                                       ; $5462: $68
    ld h, a                                       ; $5463: $67
    ld d, l                                       ; $5464: $55
    ld l, b                                       ; $5465: $68
    sbc c                                         ; $5466: $99
    sbc c                                         ; $5467: $99
    ld [hl], a                                    ; $5468: $77
    ld a, b                                       ; $5469: $78
    sbc b                                         ; $546a: $98
    ld a, b                                       ; $546b: $78
    ld [hl], a                                    ; $546c: $77
    adc b                                         ; $546d: $88
    ld d, a                                       ; $546e: $57
    sub a                                         ; $546f: $97
    sub a                                         ; $5470: $97
    ld l, b                                       ; $5471: $68
    ld a, b                                       ; $5472: $78
    ld a, b                                       ; $5473: $78
    sbc c                                         ; $5474: $99
    sbc b                                         ; $5475: $98
    sub [hl]                                      ; $5476: $96
    ld h, [hl]                                    ; $5477: $66
    ld h, [hl]                                    ; $5478: $66
    ld h, a                                       ; $5479: $67
    ld e, b                                       ; $547a: $58
    sbc b                                         ; $547b: $98
    adc b                                         ; $547c: $88
    ld l, b                                       ; $547d: $68
    add a                                         ; $547e: $87
    sbc c                                         ; $547f: $99
    adc b                                         ; $5480: $88
    add a                                         ; $5481: $87
    adc c                                         ; $5482: $89
    ld a, b                                       ; $5483: $78
    add a                                         ; $5484: $87
    halt                                          ; $5485: $76
    add [hl]                                      ; $5486: $86
    sub a                                         ; $5487: $97
    ld a, b                                       ; $5488: $78

Jump_012_5489:
    adc c                                         ; $5489: $89
    adc b                                         ; $548a: $88
    ld a, b                                       ; $548b: $78
    sub [hl]                                      ; $548c: $96
    add l                                         ; $548d: $85
    sbc b                                         ; $548e: $98
    or a                                          ; $548f: $b7
    adc b                                         ; $5490: $88
    ld l, b                                       ; $5491: $68
    ld h, [hl]                                    ; $5492: $66
    sbc c                                         ; $5493: $99
    ld a, c                                       ; $5494: $79
    cp b                                          ; $5495: $b8
    adc b                                         ; $5496: $88
    add l                                         ; $5497: $85
    halt                                          ; $5498: $76
    halt                                          ; $5499: $76
    ld e, b                                       ; $549a: $58
    ld l, b                                       ; $549b: $68
    ld d, a                                       ; $549c: $57
    add a                                         ; $549d: $87
    add [hl]                                      ; $549e: $86
    cp c                                          ; $549f: $b9
    adc c                                         ; $54a0: $89
    add l                                         ; $54a1: $85
    xor c                                         ; $54a2: $a9
    ld l, c                                       ; $54a3: $69
    add [hl]                                      ; $54a4: $86
    ld d, l                                       ; $54a5: $55
    ld h, a                                       ; $54a6: $67
    ld [hl], h                                    ; $54a7: $74
    sbc c                                         ; $54a8: $99
    xor c                                         ; $54a9: $a9
    adc b                                         ; $54aa: $88
    ld a, d                                       ; $54ab: $7a
    ld l, c                                       ; $54ac: $69
    ld [hl], l                                    ; $54ad: $75
    ld b, a                                       ; $54ae: $47
    and a                                         ; $54af: $a7
    add $5b                                       ; $54b0: $c6 $5b
    ld d, a                                       ; $54b2: $57
    adc c                                         ; $54b3: $89
    and h                                         ; $54b4: $a4
    add a                                         ; $54b5: $87
    adc c                                         ; $54b6: $89
    ld e, c                                       ; $54b7: $59
    and h                                         ; $54b8: $a4
    add h                                         ; $54b9: $84
    xor h                                         ; $54ba: $ac
    or [hl]                                       ; $54bb: $b6
    sbc b                                         ; $54bc: $98
    ld e, b                                       ; $54bd: $58
    ld e, d                                       ; $54be: $5a
    sub a                                         ; $54bf: $97
    and a                                         ; $54c0: $a7
    ld [hl], a                                    ; $54c1: $77
    ld [hl], a                                    ; $54c2: $77
    adc b                                         ; $54c3: $88
    ld a, c                                       ; $54c4: $79
    ld e, d                                       ; $54c5: $5a
    ld e, b                                       ; $54c6: $58
    sbc b                                         ; $54c7: $98
    ld h, h                                       ; $54c8: $64
    sub [hl]                                      ; $54c9: $96
    ld l, d                                       ; $54ca: $6a
    or [hl]                                       ; $54cb: $b6
    xor c                                         ; $54cc: $a9
    dec sp                                        ; $54cd: $3b
    ld e, b                                       ; $54ce: $58
    ld h, [hl]                                    ; $54cf: $66
    ld l, b                                       ; $54d0: $68
    ld a, c                                       ; $54d1: $79
    xor c                                         ; $54d2: $a9
    sub [hl]                                      ; $54d3: $96
    ld h, [hl]                                    ; $54d4: $66
    ld h, [hl]                                    ; $54d5: $66
    sbc d                                         ; $54d6: $9a
    sub [hl]                                      ; $54d7: $96
    add l                                         ; $54d8: $85
    sub a                                         ; $54d9: $97
    ld h, h                                       ; $54da: $64
    add h                                         ; $54db: $84
    add [hl]                                      ; $54dc: $86
    adc c                                         ; $54dd: $89
    and l                                         ; $54de: $a5
    ld a, b                                       ; $54df: $78
    add a                                         ; $54e0: $87
    ld [hl], a                                    ; $54e1: $77
    ld e, c                                       ; $54e2: $59
    ld [hl], a                                    ; $54e3: $77
    adc c                                         ; $54e4: $89
    sbc b                                         ; $54e5: $98
    ld h, l                                       ; $54e6: $65
    add l                                         ; $54e7: $85
    ld [hl], l                                    ; $54e8: $75

jr_012_54e9:
    ld b, a                                       ; $54e9: $47
    sbc c                                         ; $54ea: $99
    ret z                                         ; $54eb: $c8

    ld d, l                                       ; $54ec: $55
    add [hl]                                      ; $54ed: $86
    xor b                                         ; $54ee: $a8
    adc b                                         ; $54ef: $88
    adc d                                         ; $54f0: $8a
    ld h, [hl]                                    ; $54f1: $66
    ld h, [hl]                                    ; $54f2: $66
    sub a                                         ; $54f3: $97
    and a                                         ; $54f4: $a7
    ld [hl], a                                    ; $54f5: $77

jr_012_54f6:
    adc b                                         ; $54f6: $88
    ld l, b                                       ; $54f7: $68
    xor c                                         ; $54f8: $a9
    adc b                                         ; $54f9: $88
    ld a, c                                       ; $54fa: $79
    ld [hl], l                                    ; $54fb: $75
    ld d, l                                       ; $54fc: $55
    add a                                         ; $54fd: $87
    ld a, b                                       ; $54fe: $78
    xor c                                         ; $54ff: $a9
    add a                                         ; $5500: $87
    ld a, b                                       ; $5501: $78
    ld [hl], a                                    ; $5502: $77
    ld a, b                                       ; $5503: $78
    sbc d                                         ; $5504: $9a
    adc e                                         ; $5505: $8b
    ld b, a                                       ; $5506: $47
    or l                                          ; $5507: $b5
    add h                                         ; $5508: $84
    ld d, [hl]                                    ; $5509: $56
    ld l, b                                       ; $550a: $68
    sbc e                                         ; $550b: $9b
    sub a                                         ; $550c: $97
    halt                                          ; $550d: $76
    adc b                                         ; $550e: $88
    xor c                                         ; $550f: $a9
    add l                                         ; $5510: $85
    ld e, e                                       ; $5511: $5b
    sub l                                         ; $5512: $95
    and h                                         ; $5513: $a4
    push bc                                       ; $5514: $c5
    halt                                          ; $5515: $76
    ld l, b                                       ; $5516: $68
    ld c, e                                       ; $5517: $4b
    ld [hl], $85                                  ; $5518: $36 $85
    ld a, b                                       ; $551a: $78
    cp d                                          ; $551b: $ba
    and a                                         ; $551c: $a7
    ld h, c                                       ; $551d: $61
    add a                                         ; $551e: $87
    ld a, b                                       ; $551f: $78
    jp z, Jump_012_56b9                           ; $5520: $ca $b9 $56

    ld d, a                                       ; $5523: $57
    ld a, d                                       ; $5524: $7a
    adc c                                         ; $5525: $89
    halt                                          ; $5526: $76
    add [hl]                                      ; $5527: $86
    add a                                         ; $5528: $87
    ld e, b                                       ; $5529: $58
    sbc d                                         ; $552a: $9a
    sub [hl]                                      ; $552b: $96
    and [hl]                                      ; $552c: $a6
    or [hl]                                       ; $552d: $b6
    add a                                         ; $552e: $87
    ld a, e                                       ; $552f: $7b
    ld e, d                                       ; $5530: $5a
    dec de                                        ; $5531: $1b
    ld l, c                                       ; $5532: $69
    sbc b                                         ; $5533: $98
    ld a, c                                       ; $5534: $79
    sub [hl]                                      ; $5535: $96
    adc b                                         ; $5536: $88
    add a                                         ; $5537: $87
    adc b                                         ; $5538: $88
    ld [hl], a                                    ; $5539: $77
    ld h, a                                       ; $553a: $67
    ld l, d                                       ; $553b: $6a
    daa                                           ; $553c: $27
    jp $479b                                      ; $553d: $c3 $9b $47


    adc d                                         ; $5540: $8a
    jr c, jr_012_54f6                             ; $5541: $38 $b3

    adc b                                         ; $5543: $88
    ld l, e                                       ; $5544: $6b
    ld l, d                                       ; $5545: $6a
    sbc d                                         ; $5546: $9a
    ld l, c                                       ; $5547: $69
    and l                                         ; $5548: $a5
    adc c                                         ; $5549: $89
    ld a, c                                       ; $554a: $79
    ld [hl], l                                    ; $554b: $75
    adc c                                         ; $554c: $89
    ld c, c                                       ; $554d: $49
    and a                                         ; $554e: $a7
    adc d                                         ; $554f: $8a
    sbc b                                         ; $5550: $98
    ld h, a                                       ; $5551: $67
    ld a, l                                       ; $5552: $7d
    ld h, l                                       ; $5553: $65
    ld h, l                                       ; $5554: $65
    sub [hl]                                      ; $5555: $96
    ld h, a                                       ; $5556: $67
    sbc b                                         ; $5557: $98
    adc b                                         ; $5558: $88
    daa                                           ; $5559: $27
    rst $00                                       ; $555a: $c7
    sbc b                                         ; $555b: $98
    add l                                         ; $555c: $85
    ld h, d                                       ; $555d: $62
    jr z, jr_012_54e9                             ; $555e: $28 $89

    jp z, $82ba                                   ; $5560: $ca $ba $82

    dec [hl]                                      ; $5563: $35
    inc h                                         ; $5564: $24
    sub [hl]                                      ; $5565: $96
    ld e, b                                       ; $5566: $58
    adc c                                         ; $5567: $89
    cp c                                          ; $5568: $b9
    ld [hl], l                                    ; $5569: $75
    add a                                         ; $556a: $87
    ld [hl], $3a                                  ; $556b: $36 $3a
    ld l, e                                       ; $556d: $6b
    ld h, h                                       ; $556e: $64
    halt                                          ; $556f: $76
    ret                                           ; $5570: $c9


    ld c, d                                       ; $5571: $4a
    and e                                         ; $5572: $a3
    sbc d                                         ; $5573: $9a
    ld [hl], l                                    ; $5574: $75
    ld c, c                                       ; $5575: $49
    ld [hl], a                                    ; $5576: $77
    adc d                                         ; $5577: $8a
    ld a, b                                       ; $5578: $78
    jp c, $b97a                                   ; $5579: $da $7a $b9

    ld e, c                                       ; $557c: $59
    sub c                                         ; $557d: $91
    ld c, e                                       ; $557e: $4b
    and a                                         ; $557f: $a7
    adc d                                         ; $5580: $8a
    sub a                                         ; $5581: $97
    ld [hl], a                                    ; $5582: $77
    or h                                          ; $5583: $b4
    ld a, h                                       ; $5584: $7c
    sub l                                         ; $5585: $95
    ld a, c                                       ; $5586: $79
    sub [hl]                                      ; $5587: $96
    ld d, h                                       ; $5588: $54
    and [hl]                                      ; $5589: $a6
    ld c, d                                       ; $558a: $4a
    and [hl]                                      ; $558b: $a6
    adc d                                         ; $558c: $8a
    sub [hl]                                      ; $558d: $96
    xor c                                         ; $558e: $a9
    ld [hl], a                                    ; $558f: $77
    ld l, b                                       ; $5590: $68
    ld h, e                                       ; $5591: $63
    xor d                                         ; $5592: $aa
    ld b, [hl]                                    ; $5593: $46
    ld a, c                                       ; $5594: $79
    ld a, c                                       ; $5595: $79
    ret                                           ; $5596: $c9


    and a                                         ; $5597: $a7
    ld l, d                                       ; $5598: $6a
    ld h, a                                       ; $5599: $67
    ld l, b                                       ; $559a: $68
    and h                                         ; $559b: $a4
    sbc c                                         ; $559c: $99
    sbc b                                         ; $559d: $98
    adc d                                         ; $559e: $8a
    and a                                         ; $559f: $a7
    adc c                                         ; $55a0: $89
    ld h, h                                       ; $55a1: $64
    ld l, c                                       ; $55a2: $69
    ld h, a                                       ; $55a3: $67
    xor b                                         ; $55a4: $a8
    sub a                                         ; $55a5: $97
    sbc c                                         ; $55a6: $99
    sub [hl]                                      ; $55a7: $96
    ld a, e                                       ; $55a8: $7b
    ld d, l                                       ; $55a9: $55
    ld a, c                                       ; $55aa: $79
    sub l                                         ; $55ab: $95
    ld a, c                                       ; $55ac: $79
    ld b, l                                       ; $55ad: $45
    sbc e                                         ; $55ae: $9b
    ld h, h                                       ; $55af: $64
    cp [hl]                                       ; $55b0: $be
    sub a                                         ; $55b1: $97
    adc b                                         ; $55b2: $88
    ld b, [hl]                                    ; $55b3: $46
    sbc b                                         ; $55b4: $98
    sbc c                                         ; $55b5: $99
    jp z, Jump_012_7756                           ; $55b6: $ca $56 $77

    ld b, h                                       ; $55b9: $44
    add a                                         ; $55ba: $87
    ld l, b                                       ; $55bb: $68
    halt                                          ; $55bc: $76
    ld h, a                                       ; $55bd: $67
    and a                                         ; $55be: $a7
    ld l, c                                       ; $55bf: $69
    xor d                                         ; $55c0: $aa
    ld a, e                                       ; $55c1: $7b
    or h                                          ; $55c2: $b4
    ld [hl], l                                    ; $55c3: $75
    ld [hl], l                                    ; $55c4: $75
    ld e, b                                       ; $55c5: $58
    ld h, a                                       ; $55c6: $67
    sbc b                                         ; $55c7: $98
    sub [hl]                                      ; $55c8: $96
    ld a, b                                       ; $55c9: $78
    add a                                         ; $55ca: $87
    ld a, c                                       ; $55cb: $79
    ld h, [hl]                                    ; $55cc: $66
    ld a, b                                       ; $55cd: $78
    sub a                                         ; $55ce: $97
    adc c                                         ; $55cf: $89
    add a                                         ; $55d0: $87
    ld [hl], a                                    ; $55d1: $77
    adc b                                         ; $55d2: $88
    adc c                                         ; $55d3: $89
    ld a, b                                       ; $55d4: $78
    ld a, b                                       ; $55d5: $78
    sub a                                         ; $55d6: $97
    add l                                         ; $55d7: $85
    add a                                         ; $55d8: $87
    ld l, c                                       ; $55d9: $69
    ld l, c                                       ; $55da: $69
    sbc b                                         ; $55db: $98
    sub [hl]                                      ; $55dc: $96
    ld [hl], l                                    ; $55dd: $75
    adc b                                         ; $55de: $88
    ld l, c                                       ; $55df: $69
    sbc b                                         ; $55e0: $98
    ld a, b                                       ; $55e1: $78
    sbc b                                         ; $55e2: $98
    adc b                                         ; $55e3: $88
    add [hl]                                      ; $55e4: $86
    ld a, b                                       ; $55e5: $78
    ld [hl], h                                    ; $55e6: $74
    ld e, b                                       ; $55e7: $58
    ld [hl], a                                    ; $55e8: $77
    ld a, b                                       ; $55e9: $78
    xor b                                         ; $55ea: $a8
    cp d                                          ; $55eb: $ba
    add a                                         ; $55ec: $87
    adc c                                         ; $55ed: $89
    ld b, [hl]                                    ; $55ee: $46
    ld h, a                                       ; $55ef: $67
    add a                                         ; $55f0: $87
    and a                                         ; $55f1: $a7
    ld l, b                                       ; $55f2: $68
    ld a, b                                       ; $55f3: $78
    ld l, b                                       ; $55f4: $68
    xor d                                         ; $55f5: $aa
    xor c                                         ; $55f6: $a9
    add a                                         ; $55f7: $87
    ld h, [hl]                                    ; $55f8: $66
    ld [hl], l                                    ; $55f9: $75
    ld l, b                                       ; $55fa: $68
    add a                                         ; $55fb: $87
    ld l, c                                       ; $55fc: $69
    add a                                         ; $55fd: $87
    add a                                         ; $55fe: $87
    add [hl]                                      ; $55ff: $86
    sbc d                                         ; $5600: $9a
    ld a, b                                       ; $5601: $78
    adc d                                         ; $5602: $8a
    add a                                         ; $5603: $87
    sub a                                         ; $5604: $97
    halt                                          ; $5605: $76
    add a                                         ; $5606: $87
    ld b, a                                       ; $5607: $47
    halt                                          ; $5608: $76
    ld d, [hl]                                    ; $5609: $56
    sub a                                         ; $560a: $97
    ld a, b                                       ; $560b: $78
    xor c                                         ; $560c: $a9
    sbc d                                         ; $560d: $9a
    cp c                                          ; $560e: $b9
    adc c                                         ; $560f: $89
    add a                                         ; $5610: $87
    ld h, [hl]                                    ; $5611: $66
    ld h, l                                       ; $5612: $65
    adc b                                         ; $5613: $88
    ld h, a                                       ; $5614: $67
    ld a, d                                       ; $5615: $7a
    ld a, c                                       ; $5616: $79
    sbc c                                         ; $5617: $99
    add [hl]                                      ; $5618: $86
    sub a                                         ; $5619: $97
    ld a, b                                       ; $561a: $78
    sbc d                                         ; $561b: $9a
    ld h, a                                       ; $561c: $67
    sub [hl]                                      ; $561d: $96
    ld h, [hl]                                    ; $561e: $66
    add a                                         ; $561f: $87
    adc b                                         ; $5620: $88
    sub a                                         ; $5621: $97
    ld a, c                                       ; $5622: $79
    add [hl]                                      ; $5623: $86
    ld e, b                                       ; $5624: $58
    ld [hl], a                                    ; $5625: $77
    sbc b                                         ; $5626: $98
    xor b                                         ; $5627: $a8
    adc c                                         ; $5628: $89
    ld a, c                                       ; $5629: $79
    ld a, c                                       ; $562a: $79
    halt                                          ; $562b: $76
    add [hl]                                      ; $562c: $86
    ld [hl], a                                    ; $562d: $77
    adc b                                         ; $562e: $88
    ld l, b                                       ; $562f: $68
    adc b                                         ; $5630: $88
    ld a, b                                       ; $5631: $78
    sub a                                         ; $5632: $97
    ld h, a                                       ; $5633: $67
    ld [hl], l                                    ; $5634: $75
    ld h, a                                       ; $5635: $67
    ld [hl], a                                    ; $5636: $77
    ld a, c                                       ; $5637: $79
    adc b                                         ; $5638: $88
    sbc d                                         ; $5639: $9a
    add [hl]                                      ; $563a: $86
    adc b                                         ; $563b: $88
    ld [hl], a                                    ; $563c: $77
    ld a, d                                       ; $563d: $7a
    ld h, a                                       ; $563e: $67
    add a                                         ; $563f: $87
    add l                                         ; $5640: $85
    sub a                                         ; $5641: $97
    ld a, c                                       ; $5642: $79
    xor c                                         ; $5643: $a9
    ld h, a                                       ; $5644: $67
    add [hl]                                      ; $5645: $86
    ld d, l                                       ; $5646: $55
    halt                                          ; $5647: $76
    ld a, c                                       ; $5648: $79
    sbc b                                         ; $5649: $98
    ld a, c                                       ; $564a: $79
    sbc b                                         ; $564b: $98
    adc d                                         ; $564c: $8a
    sub [hl]                                      ; $564d: $96
    ld a, b                                       ; $564e: $78
    halt                                          ; $564f: $76
    adc c                                         ; $5650: $89
    ld l, b                                       ; $5651: $68
    sbc d                                         ; $5652: $9a
    halt                                          ; $5653: $76
    add [hl]                                      ; $5654: $86
    ld d, l                                       ; $5655: $55
    ld a, c                                       ; $5656: $79
    ld l, c                                       ; $5657: $69
    adc b                                         ; $5658: $88
    ld [hl], a                                    ; $5659: $77
    add a                                         ; $565a: $87
    ld a, b                                       ; $565b: $78
    sbc b                                         ; $565c: $98
    ld a, c                                       ; $565d: $79
    add [hl]                                      ; $565e: $86
    ld l, b                                       ; $565f: $68
    add [hl]                                      ; $5660: $86
    ld a, b                                       ; $5661: $78
    add a                                         ; $5662: $87
    adc c                                         ; $5663: $89
    adc b                                         ; $5664: $88
    adc c                                         ; $5665: $89
    ld [hl], a                                    ; $5666: $77
    add a                                         ; $5667: $87
    halt                                          ; $5668: $76
    adc b                                         ; $5669: $88
    ld h, a                                       ; $566a: $67
    add a                                         ; $566b: $87
    ld h, [hl]                                    ; $566c: $66
    add [hl]                                      ; $566d: $86
    ld h, a                                       ; $566e: $67
    add a                                         ; $566f: $87
    adc b                                         ; $5670: $88
    adc b                                         ; $5671: $88
    adc c                                         ; $5672: $89
    add a                                         ; $5673: $87
    adc c                                         ; $5674: $89
    sub a                                         ; $5675: $97
    adc c                                         ; $5676: $89
    halt                                          ; $5677: $76
    ld h, a                                       ; $5678: $67
    halt                                          ; $5679: $76
    adc b                                         ; $567a: $88
    halt                                          ; $567b: $76
    add a                                         ; $567c: $87
    ld h, a                                       ; $567d: $67
    adc b                                         ; $567e: $88
    ld a, b                                       ; $567f: $78
    sbc b                                         ; $5680: $98
    ld a, b                                       ; $5681: $78
    add a                                         ; $5682: $87
    ld l, b                                       ; $5683: $68
    add a                                         ; $5684: $87
    ld l, b                                       ; $5685: $68
    sub a                                         ; $5686: $97
    adc c                                         ; $5687: $89
    sub a                                         ; $5688: $97
    adc c                                         ; $5689: $89
    add a                                         ; $568a: $87
    ld a, c                                       ; $568b: $79
    halt                                          ; $568c: $76
    adc b                                         ; $568d: $88
    ld h, l                                       ; $568e: $65
    ld [hl], a                                    ; $568f: $77
    ld h, a                                       ; $5690: $67
    adc b                                         ; $5691: $88
    ld h, a                                       ; $5692: $67
    adc b                                         ; $5693: $88
    ld a, b                                       ; $5694: $78
    sbc b                                         ; $5695: $98
    ld a, b                                       ; $5696: $78
    adc b                                         ; $5697: $88
    ld a, c                                       ; $5698: $79
    add a                                         ; $5699: $87
    ld [hl], a                                    ; $569a: $77
    halt                                          ; $569b: $76
    ld a, b                                       ; $569c: $78
    sub a                                         ; $569d: $97
    adc c                                         ; $569e: $89
    ld [hl], a                                    ; $569f: $77
    adc b                                         ; $56a0: $88
    add a                                         ; $56a1: $87
    sbc b                                         ; $56a2: $98
    halt                                          ; $56a3: $76
    ld [hl], a                                    ; $56a4: $77
    ld h, a                                       ; $56a5: $67
    adc b                                         ; $56a6: $88
    ld a, b                                       ; $56a7: $78
    sub a                                         ; $56a8: $97
    adc b                                         ; $56a9: $88
    sbc b                                         ; $56aa: $98
    ld a, b                                       ; $56ab: $78
    add a                                         ; $56ac: $87
    ld h, a                                       ; $56ad: $67
    halt                                          ; $56ae: $76
    ld a, b                                       ; $56af: $78
    add a                                         ; $56b0: $87
    adc c                                         ; $56b1: $89
    add a                                         ; $56b2: $87
    adc c                                         ; $56b3: $89
    add a                                         ; $56b4: $87
    adc b                                         ; $56b5: $88
    halt                                          ; $56b6: $76
    adc b                                         ; $56b7: $88
    ld h, a                                       ; $56b8: $67

Jump_012_56b9:
    ld a, b                                       ; $56b9: $78
    ld l, b                                       ; $56ba: $68
    sbc b                                         ; $56bb: $98
    adc b                                         ; $56bc: $88
    sub a                                         ; $56bd: $97
    ld h, a                                       ; $56be: $67
    ld [hl], a                                    ; $56bf: $77
    ld l, c                                       ; $56c0: $69
    sub a                                         ; $56c1: $97
    adc b                                         ; $56c2: $88
    sub a                                         ; $56c3: $97
    adc c                                         ; $56c4: $89
    add a                                         ; $56c5: $87
    ld a, b                                       ; $56c6: $78
    halt                                          ; $56c7: $76
    ld [hl], a                                    ; $56c8: $77
    halt                                          ; $56c9: $76
    adc b                                         ; $56ca: $88
    ld [hl], a                                    ; $56cb: $77
    adc c                                         ; $56cc: $89
    ld a, b                                       ; $56cd: $78
    sbc b                                         ; $56ce: $98
    adc b                                         ; $56cf: $88
    sub a                                         ; $56d0: $97
    ld [hl], a                                    ; $56d1: $77
    ld [hl], a                                    ; $56d2: $77
    ld l, b                                       ; $56d3: $68
    add a                                         ; $56d4: $87
    ld [hl], a                                    ; $56d5: $77
    add [hl]                                      ; $56d6: $86
    ld a, b                                       ; $56d7: $78
    add a                                         ; $56d8: $87
    adc d                                         ; $56d9: $8a
    sbc b                                         ; $56da: $98
    adc c                                         ; $56db: $89
    add a                                         ; $56dc: $87
    adc b                                         ; $56dd: $88
    halt                                          ; $56de: $76
    ld a, b                                       ; $56df: $78
    ld h, [hl]                                    ; $56e0: $66
    ld h, a                                       ; $56e1: $67
    ld h, [hl]                                    ; $56e2: $66
    adc b                                         ; $56e3: $88
    adc b                                         ; $56e4: $88
    xor c                                         ; $56e5: $a9
    ld a, b                                       ; $56e6: $78
    add a                                         ; $56e7: $87
    ld l, b                                       ; $56e8: $68
    sub a                                         ; $56e9: $97
    adc b                                         ; $56ea: $88
    add a                                         ; $56eb: $87
    ld a, b                                       ; $56ec: $78
    halt                                          ; $56ed: $76
    ld l, b                                       ; $56ee: $68
    ld [hl], a                                    ; $56ef: $77
    adc c                                         ; $56f0: $89
    adc b                                         ; $56f1: $88
    sbc c                                         ; $56f2: $99
    adc b                                         ; $56f3: $88
    adc c                                         ; $56f4: $89
    ld [hl], a                                    ; $56f5: $77
    add a                                         ; $56f6: $87
    ld [hl], a                                    ; $56f7: $77
    add a                                         ; $56f8: $87
    ld h, a                                       ; $56f9: $67
    ld [hl], a                                    ; $56fa: $77
    ld h, a                                       ; $56fb: $67
    add [hl]                                      ; $56fc: $86
    ld [hl], a                                    ; $56fd: $77
    sub a                                         ; $56fe: $97
    adc c                                         ; $56ff: $89
    adc b                                         ; $5700: $88
    adc c                                         ; $5701: $89
    add a                                         ; $5702: $87
    adc b                                         ; $5703: $88
    halt                                          ; $5704: $76
    ld [hl], a                                    ; $5705: $77
    halt                                          ; $5706: $76
    ld a, b                                       ; $5707: $78
    ld h, a                                       ; $5708: $67
    adc b                                         ; $5709: $88
    ld [hl], a                                    ; $570a: $77
    sbc b                                         ; $570b: $98
    ld a, b                                       ; $570c: $78
    adc b                                         ; $570d: $88
    ld l, b                                       ; $570e: $68
    add a                                         ; $570f: $87
    adc b                                         ; $5710: $88
    sub a                                         ; $5711: $97
    ld a, b                                       ; $5712: $78
    add a                                         ; $5713: $87
    ld l, b                                       ; $5714: $68
    ld [hl], a                                    ; $5715: $77
    ld a, c                                       ; $5716: $79
    add a                                         ; $5717: $87
    sbc c                                         ; $5718: $99
    add a                                         ; $5719: $87
    adc b                                         ; $571a: $88
    ld h, a                                       ; $571b: $67
    ld a, b                                       ; $571c: $78
    ld h, [hl]                                    ; $571d: $66
    add a                                         ; $571e: $87
    ld [hl], a                                    ; $571f: $77
    adc b                                         ; $5720: $88
    ld a, b                                       ; $5721: $78
    adc b                                         ; $5722: $88
    ld a, b                                       ; $5723: $78
    add a                                         ; $5724: $87
    ld a, b                                       ; $5725: $78
    add a                                         ; $5726: $87
    ld a, b                                       ; $5727: $78
    add a                                         ; $5728: $87
    ld a, b                                       ; $5729: $78
    add a                                         ; $572a: $87
    ld a, b                                       ; $572b: $78
    ld [hl], a                                    ; $572c: $77
    adc c                                         ; $572d: $89
    adc b                                         ; $572e: $88
    adc c                                         ; $572f: $89
    add a                                         ; $5730: $87
    adc b                                         ; $5731: $88
    ld [hl], a                                    ; $5732: $77
    add a                                         ; $5733: $87
    ld [hl], a                                    ; $5734: $77
    ld [hl], a                                    ; $5735: $77
    ld l, b                                       ; $5736: $68
    add a                                         ; $5737: $87
    adc b                                         ; $5738: $88
    sub a                                         ; $5739: $97
    adc c                                         ; $573a: $89
    adc b                                         ; $573b: $88
    adc c                                         ; $573c: $89
    add a                                         ; $573d: $87
    ld [hl], a                                    ; $573e: $77
    halt                                          ; $573f: $76
    adc b                                         ; $5740: $88
    ld [hl], a                                    ; $5741: $77
    adc b                                         ; $5742: $88
    ld [hl], a                                    ; $5743: $77
    adc b                                         ; $5744: $88
    ld [hl], a                                    ; $5745: $77
    adc b                                         ; $5746: $88
    ld [hl], a                                    ; $5747: $77
    adc b                                         ; $5748: $88
    ld l, b                                       ; $5749: $68
    add a                                         ; $574a: $87
    ld h, a                                       ; $574b: $67
    add a                                         ; $574c: $87
    ld a, b                                       ; $574d: $78
    add a                                         ; $574e: $87
    ld a, c                                       ; $574f: $79
    add a                                         ; $5750: $87
    ld a, b                                       ; $5751: $78
    add a                                         ; $5752: $87
    adc c                                         ; $5753: $89
    add a                                         ; $5754: $87

Jump_012_5755:
    adc b                                         ; $5755: $88
    ld [hl], a                                    ; $5756: $77
    adc b                                         ; $5757: $88
    ld [hl], a                                    ; $5758: $77
    add a                                         ; $5759: $87
    ld [hl], a                                    ; $575a: $77
    sbc b                                         ; $575b: $98
    ld a, b                                       ; $575c: $78
    sbc b                                         ; $575d: $98
    ld a, b                                       ; $575e: $78
    add a                                         ; $575f: $87
    adc b                                         ; $5760: $88
    add a                                         ; $5761: $87
    ld l, b                                       ; $5762: $68
    ld [hl], a                                    ; $5763: $77
    ld a, b                                       ; $5764: $78
    add a                                         ; $5765: $87
    adc b                                         ; $5766: $88
    add [hl]                                      ; $5767: $86
    ld a, b                                       ; $5768: $78
    ld [hl], a                                    ; $5769: $77
    adc b                                         ; $576a: $88
    ld [hl], a                                    ; $576b: $77
    sbc c                                         ; $576c: $99
    add a                                         ; $576d: $87
    adc b                                         ; $576e: $88
    ld [hl], a                                    ; $576f: $77
    add a                                         ; $5770: $87
    ld h, a                                       ; $5771: $67
    add a                                         ; $5772: $87
    ld h, a                                       ; $5773: $67
    add a                                         ; $5774: $87
    ld a, c                                       ; $5775: $79
    sbc c                                         ; $5776: $99
    adc c                                         ; $5777: $89
    add a                                         ; $5778: $87
    adc b                                         ; $5779: $88
    add [hl]                                      ; $577a: $86
    ld a, b                                       ; $577b: $78
    ld [hl], a                                    ; $577c: $77
    ld a, b                                       ; $577d: $78
    ld [hl], a                                    ; $577e: $77
    adc b                                         ; $577f: $88
    adc b                                         ; $5780: $88
    sbc c                                         ; $5781: $99
    adc b                                         ; $5782: $88
    adc b                                         ; $5783: $88
    ld [hl], a                                    ; $5784: $77
    ld [hl], a                                    ; $5785: $77
    ld h, a                                       ; $5786: $67
    add [hl]                                      ; $5787: $86
    ld h, a                                       ; $5788: $67
    add a                                         ; $5789: $87
    ld a, c                                       ; $578a: $79
    add a                                         ; $578b: $87
    adc b                                         ; $578c: $88
    add [hl]                                      ; $578d: $86
    ld a, b                                       ; $578e: $78
    ld [hl], a                                    ; $578f: $77
    adc c                                         ; $5790: $89
    ld [hl], a                                    ; $5791: $77
    adc b                                         ; $5792: $88
    add a                                         ; $5793: $87
    sbc b                                         ; $5794: $98

Jump_012_5795:
    ld [hl], a                                    ; $5795: $77
    adc b                                         ; $5796: $88
    ld h, a                                       ; $5797: $67
    add a                                         ; $5798: $87
    ld a, b                                       ; $5799: $78
    sbc b                                         ; $579a: $98
    adc b                                         ; $579b: $88
    sub a                                         ; $579c: $97
    ld a, b                                       ; $579d: $78
    add a                                         ; $579e: $87
    ld a, b                                       ; $579f: $78
    add a                                         ; $57a0: $87
    adc b                                         ; $57a1: $88
    add a                                         ; $57a2: $87
    ld a, b                                       ; $57a3: $78
    ld [hl], a                                    ; $57a4: $77
    ld a, b                                       ; $57a5: $78
    ld [hl], a                                    ; $57a6: $77
    adc b                                         ; $57a7: $88
    ld [hl], a                                    ; $57a8: $77
    adc b                                         ; $57a9: $88
    ld a, b                                       ; $57aa: $78
    adc b                                         ; $57ab: $88
    ld [hl], a                                    ; $57ac: $77
    add a                                         ; $57ad: $87
    ld [hl], a                                    ; $57ae: $77
    add a                                         ; $57af: $87
    adc b                                         ; $57b0: $88
    add a                                         ; $57b1: $87
    ld a, b                                       ; $57b2: $78
    add a                                         ; $57b3: $87
    adc b                                         ; $57b4: $88
    add a                                         ; $57b5: $87
    adc b                                         ; $57b6: $88
    ld [hl], a                                    ; $57b7: $77
    ld a, b                                       ; $57b8: $78
    ld [hl], a                                    ; $57b9: $77
    adc b                                         ; $57ba: $88
    ld [hl], a                                    ; $57bb: $77
    add a                                         ; $57bc: $87
    ld a, b                                       ; $57bd: $78
    adc b                                         ; $57be: $88
    ld a, b                                       ; $57bf: $78
    sbc b                                         ; $57c0: $98
    ld a, b                                       ; $57c1: $78
    sub a                                         ; $57c2: $97
    ld [hl], a                                    ; $57c3: $77
    ld [hl], a                                    ; $57c4: $77
    ld l, b                                       ; $57c5: $68
    ld [hl], a                                    ; $57c6: $77
    ld a, b                                       ; $57c7: $78
    add a                                         ; $57c8: $87
    adc b                                         ; $57c9: $88
    add a                                         ; $57ca: $87
    ld a, b                                       ; $57cb: $78
    ld [hl], a                                    ; $57cc: $77
    adc b                                         ; $57cd: $88
    add [hl]                                      ; $57ce: $86
    adc b                                         ; $57cf: $88
    add a                                         ; $57d0: $87
    adc b                                         ; $57d1: $88
    ld h, a                                       ; $57d2: $67
    add a                                         ; $57d3: $87
    ld [hl], a                                    ; $57d4: $77
    add a                                         ; $57d5: $87
    ld a, b                                       ; $57d6: $78
    add a                                         ; $57d7: $87
    ld a, b                                       ; $57d8: $78
    adc b                                         ; $57d9: $88
    ld a, b                                       ; $57da: $78
    add a                                         ; $57db: $87
    ld a, b                                       ; $57dc: $78
    add a                                         ; $57dd: $87
    ld a, b                                       ; $57de: $78
    ld [hl], a                                    ; $57df: $77
    adc c                                         ; $57e0: $89
    add a                                         ; $57e1: $87
    adc b                                         ; $57e2: $88
    ld [hl], a                                    ; $57e3: $77
    adc b                                         ; $57e4: $88
    ld [hl], a                                    ; $57e5: $77
    adc b                                         ; $57e6: $88
    ld a, b                                       ; $57e7: $78
    sbc b                                         ; $57e8: $98
    ld [hl], a                                    ; $57e9: $77
    add a                                         ; $57ea: $87
    ld h, a                                       ; $57eb: $67
    add a                                         ; $57ec: $87
    ld a, b                                       ; $57ed: $78
    adc b                                         ; $57ee: $88
    adc b                                         ; $57ef: $88
    sub a                                         ; $57f0: $97
    adc b                                         ; $57f1: $88
    ld [hl], a                                    ; $57f2: $77
    ld a, b                                       ; $57f3: $78
    halt                                          ; $57f4: $76
    ld [hl], a                                    ; $57f5: $77
    ld [hl], a                                    ; $57f6: $77
    adc b                                         ; $57f7: $88
    ld a, b                                       ; $57f8: $78
    adc b                                         ; $57f9: $88
    ld [hl], a                                    ; $57fa: $77
    add a                                         ; $57fb: $87
    ld [hl], a                                    ; $57fc: $77
    sbc b                                         ; $57fd: $98
    adc b                                         ; $57fe: $88
    sbc b                                         ; $57ff: $98
    adc b                                         ; $5800: $88
    add a                                         ; $5801: $87
    ld a, b                                       ; $5802: $78
    add a                                         ; $5803: $87
    ld a, b                                       ; $5804: $78
    add a                                         ; $5805: $87
    adc c                                         ; $5806: $89
    add a                                         ; $5807: $87
    ld a, b                                       ; $5808: $78
    halt                                          ; $5809: $76
    adc b                                         ; $580a: $88
    ld [hl], a                                    ; $580b: $77
    adc b                                         ; $580c: $88
    ld [hl], a                                    ; $580d: $77
    ld a, b                                       ; $580e: $78
    ld [hl], a                                    ; $580f: $77
    sbc b                                         ; $5810: $98
    adc b                                         ; $5811: $88
    add a                                         ; $5812: $87
    ld a, b                                       ; $5813: $78
    add a                                         ; $5814: $87
    ld a, b                                       ; $5815: $78
    add [hl]                                      ; $5816: $86
    ld [hl], a                                    ; $5817: $77
    add a                                         ; $5818: $87
    ld a, b                                       ; $5819: $78
    ld [hl], a                                    ; $581a: $77
    ld a, b                                       ; $581b: $78
    add a                                         ; $581c: $87
    sbc b                                         ; $581d: $98
    add a                                         ; $581e: $87
    adc b                                         ; $581f: $88
    adc b                                         ; $5820: $88
    adc b                                         ; $5821: $88
    halt                                          ; $5822: $76
    add a                                         ; $5823: $87
    ld [hl], a                                    ; $5824: $77
    add a                                         ; $5825: $87
    ld a, b                                       ; $5826: $78
    adc b                                         ; $5827: $88
    ld a, b                                       ; $5828: $78
    sub a                                         ; $5829: $97
    ld a, b                                       ; $582a: $78
    add a                                         ; $582b: $87
    ld [hl], a                                    ; $582c: $77
    halt                                          ; $582d: $76
    ld a, b                                       ; $582e: $78
    add a                                         ; $582f: $87
    adc c                                         ; $5830: $89
    add a                                         ; $5831: $87
    adc b                                         ; $5832: $88
    ld [hl], a                                    ; $5833: $77
    adc b                                         ; $5834: $88
    ld [hl], a                                    ; $5835: $77
    adc b                                         ; $5836: $88
    add a                                         ; $5837: $87
    add a                                         ; $5838: $87
    ld [hl], a                                    ; $5839: $77
    ld [hl], a                                    ; $583a: $77
    ld h, a                                       ; $583b: $67
    add a                                         ; $583c: $87
    adc b                                         ; $583d: $88
    add a                                         ; $583e: $87
    adc b                                         ; $583f: $88
    adc b                                         ; $5840: $88
    ld a, b                                       ; $5841: $78
    ld [hl], a                                    ; $5842: $77
    ld a, b                                       ; $5843: $78
    ld [hl], a                                    ; $5844: $77
    ld [hl], a                                    ; $5845: $77
    ld [hl], a                                    ; $5846: $77
    ld a, b                                       ; $5847: $78
    ld a, b                                       ; $5848: $78
    adc b                                         ; $5849: $88
    add a                                         ; $584a: $87
    sbc b                                         ; $584b: $98
    ld [hl], a                                    ; $584c: $77
    adc b                                         ; $584d: $88
    ld a, b                                       ; $584e: $78
    add a                                         ; $584f: $87
    adc b                                         ; $5850: $88
    add a                                         ; $5851: $87
    ld a, b                                       ; $5852: $78
    add a                                         ; $5853: $87
    ld a, c                                       ; $5854: $79
    add a                                         ; $5855: $87
    adc b                                         ; $5856: $88
    ld [hl], a                                    ; $5857: $77
    adc b                                         ; $5858: $88
    add a                                         ; $5859: $87
    adc b                                         ; $585a: $88
    ld [hl], a                                    ; $585b: $77
    adc b                                         ; $585c: $88
    ld h, a                                       ; $585d: $67
    adc b                                         ; $585e: $88
    adc b                                         ; $585f: $88
    adc b                                         ; $5860: $88
    ld a, b                                       ; $5861: $78
    add a                                         ; $5862: $87
    ld [hl], a                                    ; $5863: $77
    add a                                         ; $5864: $87
    ld [hl], a                                    ; $5865: $77
    add a                                         ; $5866: $87
    ld a, b                                       ; $5867: $78
    add a                                         ; $5868: $87
    ld a, b                                       ; $5869: $78
    add a                                         ; $586a: $87
    adc b                                         ; $586b: $88
    add a                                         ; $586c: $87
    adc b                                         ; $586d: $88
    add a                                         ; $586e: $87
    adc b                                         ; $586f: $88
    add a                                         ; $5870: $87
    adc b                                         ; $5871: $88
    ld [hl], a                                    ; $5872: $77
    adc b                                         ; $5873: $88
    ld [hl], a                                    ; $5874: $77
    ld [hl], a                                    ; $5875: $77
    ld l, b                                       ; $5876: $68
    add a                                         ; $5877: $87
    ld [hl], a                                    ; $5878: $77
    add a                                         ; $5879: $87
    ld a, b                                       ; $587a: $78
    adc b                                         ; $587b: $88
    ld a, b                                       ; $587c: $78
    add a                                         ; $587d: $87
    ld a, b                                       ; $587e: $78
    add a                                         ; $587f: $87
    adc b                                         ; $5880: $88
    add a                                         ; $5881: $87
    ld a, b                                       ; $5882: $78
    ld a, b                                       ; $5883: $78
    adc b                                         ; $5884: $88
    ld [hl], a                                    ; $5885: $77
    add a                                         ; $5886: $87
    ld [hl], a                                    ; $5887: $77
    adc b                                         ; $5888: $88
    ld a, b                                       ; $5889: $78
    adc b                                         ; $588a: $88
    ld [hl], a                                    ; $588b: $77
    add a                                         ; $588c: $87
    ld [hl], a                                    ; $588d: $77
    add a                                         ; $588e: $87
    ld a, b                                       ; $588f: $78
    add a                                         ; $5890: $87
    adc b                                         ; $5891: $88
    add a                                         ; $5892: $87
    adc b                                         ; $5893: $88
    add a                                         ; $5894: $87
    ld [hl], a                                    ; $5895: $77
    ld h, a                                       ; $5896: $67
    ld [hl], a                                    ; $5897: $77
    ld [hl], a                                    ; $5898: $77
    adc b                                         ; $5899: $88
    adc b                                         ; $589a: $88
    adc b                                         ; $589b: $88
    ld a, b                                       ; $589c: $78
    adc b                                         ; $589d: $88
    ld a, b                                       ; $589e: $78
    add a                                         ; $589f: $87
    adc b                                         ; $58a0: $88
    adc b                                         ; $58a1: $88
    ld a, b                                       ; $58a2: $78
    add a                                         ; $58a3: $87
    ld a, b                                       ; $58a4: $78
    halt                                          ; $58a5: $76
    ld a, b                                       ; $58a6: $78
    add a                                         ; $58a7: $87
    ld a, b                                       ; $58a8: $78
    ld [hl], a                                    ; $58a9: $77
    ld a, b                                       ; $58aa: $78
    add a                                         ; $58ab: $87
    adc b                                         ; $58ac: $88
    halt                                          ; $58ad: $76
    adc b                                         ; $58ae: $88
    ld [hl], a                                    ; $58af: $77
    adc b                                         ; $58b0: $88
    ld a, b                                       ; $58b1: $78
    sbc b                                         ; $58b2: $98
    adc b                                         ; $58b3: $88
    add a                                         ; $58b4: $87
    ld a, b                                       ; $58b5: $78
    add a                                         ; $58b6: $87
    ld a, b                                       ; $58b7: $78
    add a                                         ; $58b8: $87
    adc b                                         ; $58b9: $88
    add a                                         ; $58ba: $87
    ld a, b                                       ; $58bb: $78
    ld [hl], a                                    ; $58bc: $77
    ld a, b                                       ; $58bd: $78
    ld [hl], a                                    ; $58be: $77
    adc b                                         ; $58bf: $88
    add a                                         ; $58c0: $87
    adc b                                         ; $58c1: $88
    adc b                                         ; $58c2: $88
    adc b                                         ; $58c3: $88
    ld [hl], a                                    ; $58c4: $77
    add a                                         ; $58c5: $87
    halt                                          ; $58c6: $76
    add a                                         ; $58c7: $87
    ld [hl], l                                    ; $58c8: $75
    ld [hl], h                                    ; $58c9: $74
    ld a, c                                       ; $58ca: $79
    ret                                           ; $58cb: $c9


    ld [hl], l                                    ; $58cc: $75
    ld b, l                                       ; $58cd: $45
    ld l, c                                       ; $58ce: $69
    call nc, Call_012_4d67                        ; $58cf: $d4 $67 $4d
    add $76                                       ; $58d2: $c6 $76
    add e                                         ; $58d4: $83
    or h                                          ; $58d5: $b4
    ld h, a                                       ; $58d6: $67
    ld l, e                                       ; $58d7: $6b
    adc c                                         ; $58d8: $89
    ld h, h                                       ; $58d9: $64
    adc d                                         ; $58da: $8a
    xor d                                         ; $58db: $aa
    ld a, b                                       ; $58dc: $78
    ld h, a                                       ; $58dd: $67
    sbc c                                         ; $58de: $99
    ld d, d                                       ; $58df: $52
    add l                                         ; $58e0: $85
    dec d                                         ; $58e1: $15
    adc l                                         ; $58e2: $8d
    db $db                                        ; $58e3: $db
    adc c                                         ; $58e4: $89
    ld h, a                                       ; $58e5: $67
    sbc b                                         ; $58e6: $98
    adc b                                         ; $58e7: $88
    ld [hl-], a                                   ; $58e8: $32
    add [hl]                                      ; $58e9: $86
    adc c                                         ; $58ea: $89
    sbc e                                         ; $58eb: $9b
    sub l                                         ; $58ec: $95
    ld h, a                                       ; $58ed: $67
    ld a, b                                       ; $58ee: $78
    xor d                                         ; $58ef: $aa
    add a                                         ; $58f0: $87
    ld [hl], c                                    ; $58f1: $71
    add hl, sp                                    ; $58f2: $39
    sbc b                                         ; $58f3: $98
    sbc e                                         ; $58f4: $9b
    ret                                           ; $58f5: $c9


    halt                                          ; $58f6: $76
    ld h, [hl]                                    ; $58f7: $66
    ld [hl], l                                    ; $58f8: $75
    ld e, b                                       ; $58f9: $58
    ld a, c                                       ; $58fa: $79
    sbc b                                         ; $58fb: $98
    xor c                                         ; $58fc: $a9
    ld [hl], a                                    ; $58fd: $77
    sbc c                                         ; $58fe: $99
    ld h, a                                       ; $58ff: $67
    add a                                         ; $5900: $87
    ld [hl], a                                    ; $5901: $77
    adc d                                         ; $5902: $8a
    halt                                          ; $5903: $76
    ld h, [hl]                                    ; $5904: $66
    sbc c                                         ; $5905: $99
    ld h, a                                       ; $5906: $67
    ld a, b                                       ; $5907: $78
    sbc b                                         ; $5908: $98
    sbc b                                         ; $5909: $98
    add [hl]                                      ; $590a: $86
    ld [hl], a                                    ; $590b: $77
    ld d, l                                       ; $590c: $55
    ld a, d                                       ; $590d: $7a
    sbc b                                         ; $590e: $98
    adc b                                         ; $590f: $88
    sub a                                         ; $5910: $97
    ld d, [hl]                                    ; $5911: $56
    adc b                                         ; $5912: $88
    ld [hl], a                                    ; $5913: $77
    ld a, b                                       ; $5914: $78
    sub a                                         ; $5915: $97
    ld a, c                                       ; $5916: $79
    sub a                                         ; $5917: $97
    ld a, c                                       ; $5918: $79
    add a                                         ; $5919: $87
    ld d, [hl]                                    ; $591a: $56
    adc b                                         ; $591b: $88
    ld [hl], a                                    ; $591c: $77
    adc c                                         ; $591d: $89
    add a                                         ; $591e: $87
    ld h, [hl]                                    ; $591f: $66
    adc b                                         ; $5920: $88
    ld [hl], a                                    ; $5921: $77
    sbc b                                         ; $5922: $98
    ld [hl], a                                    ; $5923: $77
    ld [hl], a                                    ; $5924: $77
    ld [hl], a                                    ; $5925: $77
    add a                                         ; $5926: $87
    ld l, c                                       ; $5927: $69
    xor c                                         ; $5928: $a9
    add a                                         ; $5929: $87
    ld [hl], a                                    ; $592a: $77
    adc b                                         ; $592b: $88
    ld a, c                                       ; $592c: $79
    adc b                                         ; $592d: $88
    halt                                          ; $592e: $76
    ld a, b                                       ; $592f: $78
    sub a                                         ; $5930: $97
    ld a, b                                       ; $5931: $78
    ld [hl], a                                    ; $5932: $77
    ld [hl], a                                    ; $5933: $77
    ld [hl], a                                    ; $5934: $77
    adc b                                         ; $5935: $88
    add a                                         ; $5936: $87
    ld h, a                                       ; $5937: $67
    ld [hl], a                                    ; $5938: $77
    ld a, b                                       ; $5939: $78
    adc b                                         ; $593a: $88
    xor c                                         ; $593b: $a9
    add a                                         ; $593c: $87
    sub a                                         ; $593d: $97
    ld [hl], a                                    ; $593e: $77
    sbc b                                         ; $593f: $98
    add a                                         ; $5940: $87
    add a                                         ; $5941: $87
    ld h, a                                       ; $5942: $67
    adc b                                         ; $5943: $88
    ld [hl], a                                    ; $5944: $77
    ld h, [hl]                                    ; $5945: $66
    ld a, b                                       ; $5946: $78
    ld a, b                                       ; $5947: $78
    adc c                                         ; $5948: $89
    add a                                         ; $5949: $87
    adc b                                         ; $594a: $88
    ld [hl], a                                    ; $594b: $77
    adc b                                         ; $594c: $88
    ld [hl], a                                    ; $594d: $77
    ld a, b                                       ; $594e: $78
    adc b                                         ; $594f: $88
    add a                                         ; $5950: $87
    ld [hl], a                                    ; $5951: $77
    adc b                                         ; $5952: $88
    ld a, b                                       ; $5953: $78
    adc b                                         ; $5954: $88
    ld a, b                                       ; $5955: $78
    halt                                          ; $5956: $76
    ld [hl], a                                    ; $5957: $77
    add a                                         ; $5958: $87
    ld a, b                                       ; $5959: $78
    add a                                         ; $595a: $87
    adc b                                         ; $595b: $88
    add [hl]                                      ; $595c: $86
    ld a, b                                       ; $595d: $78
    add a                                         ; $595e: $87
    sbc c                                         ; $595f: $99
    add a                                         ; $5960: $87
    adc b                                         ; $5961: $88
    ld [hl], a                                    ; $5962: $77
    add a                                         ; $5963: $87
    ld h, a                                       ; $5964: $67
    add a                                         ; $5965: $87
    ld a, b                                       ; $5966: $78
    adc b                                         ; $5967: $88
    ld a, b                                       ; $5968: $78
    add [hl]                                      ; $5969: $86
    ld h, a                                       ; $596a: $67
    halt                                          ; $596b: $76
    adc b                                         ; $596c: $88
    adc b                                         ; $596d: $88
    adc c                                         ; $596e: $89
    add [hl]                                      ; $596f: $86
    add a                                         ; $5970: $87
    ld [hl], a                                    ; $5971: $77
    adc c                                         ; $5972: $89
    adc b                                         ; $5973: $88
    sbc b                                         ; $5974: $98
    ld h, a                                       ; $5975: $67
    ld a, b                                       ; $5976: $78
    ld [hl], a                                    ; $5977: $77
    add a                                         ; $5978: $87
    ld a, b                                       ; $5979: $78
    ld [hl], a                                    ; $597a: $77
    ld h, a                                       ; $597b: $67
    adc b                                         ; $597c: $88
    adc b                                         ; $597d: $88
    adc b                                         ; $597e: $88
    add a                                         ; $597f: $87
    add a                                         ; $5980: $87
    adc b                                         ; $5981: $88
    adc b                                         ; $5982: $88
    add a                                         ; $5983: $87
    halt                                          ; $5984: $76

Jump_012_5985:
    ld [hl], a                                    ; $5985: $77
    halt                                          ; $5986: $76
    adc c                                         ; $5987: $89
    add [hl]                                      ; $5988: $86
    adc c                                         ; $5989: $89
    sbc c                                         ; $598a: $99
    sbc e                                         ; $598b: $9b
    ld [hl], h                                    ; $598c: $74
    ld b, h                                       ; $598d: $44
    ld d, a                                       ; $598e: $57
    adc b                                         ; $598f: $88
    adc e                                         ; $5990: $8b
    xor b                                         ; $5991: $a8
    and [hl]                                      ; $5992: $a6
    ld h, a                                       ; $5993: $67
    add a                                         ; $5994: $87
    cp l                                          ; $5995: $bd
    ld d, e                                       ; $5996: $53
    ld d, e                                       ; $5997: $53
    ld b, [hl]                                    ; $5998: $46
    sbc c                                         ; $5999: $99
    sbc b                                         ; $599a: $98
    sbc e                                         ; $599b: $9b
    sbc d                                         ; $599c: $9a
    sbc c                                         ; $599d: $99
    ld h, [hl]                                    ; $599e: $66
    add a                                         ; $599f: $87
    add l                                         ; $59a0: $85
    inc [hl]                                      ; $59a1: $34
    ld b, a                                       ; $59a2: $47
    xor d                                         ; $59a3: $aa
    cp c                                          ; $59a4: $b9
    adc c                                         ; $59a5: $89
    halt                                          ; $59a6: $76
    sbc c                                         ; $59a7: $99
    ld [hl], a                                    ; $59a8: $77
    adc b                                         ; $59a9: $88
    ld a, b                                       ; $59aa: $78
    ld h, h                                       ; $59ab: $64
    ld b, l                                       ; $59ac: $45
    adc d                                         ; $59ad: $8a
    sbc b                                         ; $59ae: $98
    ld [hl], a                                    ; $59af: $77
    adc c                                         ; $59b0: $89
    sbc d                                         ; $59b1: $9a
    ld [hl], a                                    ; $59b2: $77
    sbc c                                         ; $59b3: $99
    sbc b                                         ; $59b4: $98
    ld [hl], a                                    ; $59b5: $77
    ld b, l                                       ; $59b6: $45
    ld a, b                                       ; $59b7: $78
    adc c                                         ; $59b8: $89
    xor b                                         ; $59b9: $a8
    adc c                                         ; $59ba: $89
    adc b                                         ; $59bb: $88
    ld l, d                                       ; $59bc: $6a
    and a                                         ; $59bd: $a7
    sbc b                                         ; $59be: $98
    ld d, a                                       ; $59bf: $57
    ld d, e                                       ; $59c0: $53
    ld a, c                                       ; $59c1: $79
    ld a, h                                       ; $59c2: $7c
    ld h, e                                       ; $59c3: $63
    ld h, h                                       ; $59c4: $64
    ld l, d                                       ; $59c5: $6a
    adc $cb                                       ; $59c6: $ce $cb
    or [hl]                                       ; $59c8: $b6
    ld [hl], $57                                  ; $59c9: $36 $57
    adc c                                         ; $59cb: $89
    adc c                                         ; $59cc: $89
    ld [hl], h                                    ; $59cd: $74
    ld b, [hl]                                    ; $59ce: $46
    ld e, b                                       ; $59cf: $58
    or a                                          ; $59d0: $b7
    sbc c                                         ; $59d1: $99
    ld h, [hl]                                    ; $59d2: $66
    ld h, [hl]                                    ; $59d3: $66
    sub a                                         ; $59d4: $97
    adc d                                         ; $59d5: $8a
    ld h, a                                       ; $59d6: $67
    adc c                                         ; $59d7: $89
    adc b                                         ; $59d8: $88
    sbc b                                         ; $59d9: $98
    sbc b                                         ; $59da: $98
    adc b                                         ; $59db: $88
    ld l, b                                       ; $59dc: $68
    adc c                                         ; $59dd: $89
    ld [hl], a                                    ; $59de: $77
    sbc b                                         ; $59df: $98
    adc c                                         ; $59e0: $89
    add [hl]                                      ; $59e1: $86
    ld h, [hl]                                    ; $59e2: $66
    ld d, e                                       ; $59e3: $53
    ld l, b                                       ; $59e4: $68
    adc d                                         ; $59e5: $8a
    res 4, a                                      ; $59e6: $cb $a7
    ld h, a                                       ; $59e8: $67
    ld e, c                                       ; $59e9: $59
    sbc d                                         ; $59ea: $9a
    ld a, b                                       ; $59eb: $78
    add [hl]                                      ; $59ec: $86
    ld h, l                                       ; $59ed: $65
    ld a, e                                       ; $59ee: $7b
    xor d                                         ; $59ef: $aa
    sub a                                         ; $59f0: $97
    ld d, [hl]                                    ; $59f1: $56
    ld h, l                                       ; $59f2: $65
    ld a, b                                       ; $59f3: $78
    halt                                          ; $59f4: $76
    adc b                                         ; $59f5: $88
    sbc c                                         ; $59f6: $99
    ld a, c                                       ; $59f7: $79
    add a                                         ; $59f8: $87
    ld h, l                                       ; $59f9: $65
    ld d, a                                       ; $59fa: $57
    adc c                                         ; $59fb: $89
    add a                                         ; $59fc: $87
    adc b                                         ; $59fd: $88
    halt                                          ; $59fe: $76
    add a                                         ; $59ff: $87
    ld h, l                                       ; $5a00: $65
    ld [hl], a                                    ; $5a01: $77
    ld h, a                                       ; $5a02: $67
    xor b                                         ; $5a03: $a8
    sbc c                                         ; $5a04: $99
    sbc d                                         ; $5a05: $9a
    ret                                           ; $5a06: $c9


    halt                                          ; $5a07: $76
    ld h, [hl]                                    ; $5a08: $66
    adc b                                         ; $5a09: $88
    ld a, c                                       ; $5a0a: $79
    add a                                         ; $5a0b: $87
    ld a, b                                       ; $5a0c: $78
    sbc b                                         ; $5a0d: $98
    ld e, b                                       ; $5a0e: $58
    ld [hl], l                                    ; $5a0f: $75
    ld h, [hl]                                    ; $5a10: $66
    add a                                         ; $5a11: $87
    sub a                                         ; $5a12: $97
    add a                                         ; $5a13: $87
    ld [hl], a                                    ; $5a14: $77
    ld [hl], a                                    ; $5a15: $77
    xor c                                         ; $5a16: $a9
    ld [hl], a                                    ; $5a17: $77
    add [hl]                                      ; $5a18: $86
    ld [hl], a                                    ; $5a19: $77
    adc b                                         ; $5a1a: $88
    adc b                                         ; $5a1b: $88
    add [hl]                                      ; $5a1c: $86
    ld d, a                                       ; $5a1d: $57
    adc b                                         ; $5a1e: $88
    adc c                                         ; $5a1f: $89
    add a                                         ; $5a20: $87
    ld [hl], a                                    ; $5a21: $77
    halt                                          ; $5a22: $76
    ld a, c                                       ; $5a23: $79
    ld a, b                                       ; $5a24: $78
    adc b                                         ; $5a25: $88
    add a                                         ; $5a26: $87
    ld [hl], a                                    ; $5a27: $77
    halt                                          ; $5a28: $76
    add l                                         ; $5a29: $85
    ld d, [hl]                                    ; $5a2a: $56
    sbc d                                         ; $5a2b: $9a
    xor h                                         ; $5a2c: $ac
    sbc c                                         ; $5a2d: $99
    sbc c                                         ; $5a2e: $99
    add b                                         ; $5a2f: $80
    adc h                                         ; $5a30: $8c
    add [hl]                                      ; $5a31: $86
    sbc d                                         ; $5a32: $9a
    and l                                         ; $5a33: $a5
    ld l, e                                       ; $5a34: $6b
    xor a                                         ; $5a35: $af
    ld [hl], e                                    ; $5a36: $73
    add l                                         ; $5a37: $85
    halt                                          ; $5a38: $76
    ld c, b                                       ; $5a39: $48
    sbc d                                         ; $5a3a: $9a
    bit 0, a                                      ; $5a3b: $cb $47
    jr nc, jr_012_5aa8                            ; $5a3d: $30 $69

    ld a, b                                       ; $5a3f: $78
    add [hl]                                      ; $5a40: $86
    adc c                                         ; $5a41: $89
    ld l, e                                       ; $5a42: $6b
    sbc [hl]                                      ; $5a43: $9e
    or [hl]                                       ; $5a44: $b6
    ld h, e                                       ; $5a45: $63
    ld d, l                                       ; $5a46: $55
    ld c, b                                       ; $5a47: $48
    ld h, l                                       ; $5a48: $65
    sbc d                                         ; $5a49: $9a
    add sp, $6a                                   ; $5a4a: $e8 $6a
    ld [hl], l                                    ; $5a4c: $75
    jr nz, jr_012_5a75                            ; $5a4d: $20 $26

    sbc e                                         ; $5a4f: $9b
    cp a                                          ; $5a50: $bf
    db $ec                                        ; $5a51: $ec
    and e                                         ; $5a52: $a3
    ld bc, $8967                                  ; $5a53: $01 $67 $89
    xor c                                         ; $5a56: $a9
    call Call_012_74a8                            ; $5a57: $cd $a8 $74
    inc sp                                        ; $5a5a: $33
    inc de                                        ; $5a5b: $13
    ld l, e                                       ; $5a5c: $6b
    cp b                                          ; $5a5d: $b8
    ld [hl], l                                    ; $5a5e: $75
    inc [hl]                                      ; $5a5f: $34
    add a                                         ; $5a60: $87
    adc c                                         ; $5a61: $89
    sbc h                                         ; $5a62: $9c
    xor h                                         ; $5a63: $ac
    ld [hl], a                                    ; $5a64: $77
    ld b, h                                       ; $5a65: $44
    ld h, [hl]                                    ; $5a66: $66
    ld l, [hl]                                    ; $5a67: $6e
    db $db                                        ; $5a68: $db
    rst $00                                       ; $5a69: $c7
    ld [hl], h                                    ; $5a6a: $74
    ld [hl], a                                    ; $5a6b: $77
    ld a, b                                       ; $5a6c: $78
    ld [hl], a                                    ; $5a6d: $77
    sbc d                                         ; $5a6e: $9a
    and [hl]                                      ; $5a6f: $a6
    inc [hl]                                      ; $5a70: $34
    ld c, b                                       ; $5a71: $48
    add a                                         ; $5a72: $87
    ld h, l                                       ; $5a73: $65
    adc h                                         ; $5a74: $8c

jr_012_5a75:
    xor c                                         ; $5a75: $a9
    xor b                                         ; $5a76: $a8
    ld d, l                                       ; $5a77: $55
    ld h, $6d                                     ; $5a78: $26 $6d
    ret                                           ; $5a7a: $c9


    jp c, Jump_012_5489                           ; $5a7b: $da $89 $54

    ld [hl+], a                                   ; $5a7e: $22
    ld d, l                                       ; $5a7f: $55
    adc a                                         ; $5a80: $8f
    reti                                          ; $5a81: $d9


    sub l                                         ; $5a82: $95
    ld h, a                                       ; $5a83: $67
    xor b                                         ; $5a84: $a8
    ld b, h                                       ; $5a85: $44
    ld e, c                                       ; $5a86: $59
    cp e                                          ; $5a87: $bb
    xor h                                         ; $5a88: $ac
    and [hl]                                      ; $5a89: $a6
    ld h, h                                       ; $5a8a: $64
    ld d, l                                       ; $5a8b: $55
    ld d, l                                       ; $5a8c: $55
    ld a, e                                       ; $5a8d: $7b
    reti                                          ; $5a8e: $d9


    ld [hl], l                                    ; $5a8f: $75
    ld d, e                                       ; $5a90: $53
    ld l, d                                       ; $5a91: $6a
    xor d                                         ; $5a92: $aa
    sbc c                                         ; $5a93: $99
    ld a, b                                       ; $5a94: $78
    ld h, [hl]                                    ; $5a95: $66
    ld b, d                                       ; $5a96: $42
    dec h                                         ; $5a97: $25
    ld h, a                                       ; $5a98: $67
    sbc l                                         ; $5a99: $9d
    jp z, $8899                                   ; $5a9a: $ca $99 $88

    halt                                          ; $5a9d: $76
    ld d, h                                       ; $5a9e: $54
    ld a, d                                       ; $5a9f: $7a
    ld h, a                                       ; $5aa0: $67
    ld a, e                                       ; $5aa1: $7b
    add a                                         ; $5aa2: $87
    sbc d                                         ; $5aa3: $9a
    xor b                                         ; $5aa4: $a8
    sbc d                                         ; $5aa5: $9a
    ld [hl], a                                    ; $5aa6: $77
    sbc b                                         ; $5aa7: $98

jr_012_5aa8:
    ld d, [hl]                                    ; $5aa8: $56
    xor h                                         ; $5aa9: $ac
    xor d                                         ; $5aaa: $aa
    or l                                          ; $5aab: $b5
    ld l, e                                       ; $5aac: $6b
    sub l                                         ; $5aad: $95
    ld b, h                                       ; $5aae: $44
    ld b, l                                       ; $5aaf: $45
    sbc c                                         ; $5ab0: $99
    xor e                                         ; $5ab1: $ab
    xor e                                         ; $5ab2: $ab
    adc d                                         ; $5ab3: $8a
    sub l                                         ; $5ab4: $95
    ld d, [hl]                                    ; $5ab5: $56
    ld l, c                                       ; $5ab6: $69
    sbc e                                         ; $5ab7: $9b
    adc b                                         ; $5ab8: $88
    sub [hl]                                      ; $5ab9: $96
    ld d, l                                       ; $5aba: $55
    adc c                                         ; $5abb: $89
    ld d, a                                       ; $5abc: $57
    halt                                          ; $5abd: $76
    sbc d                                         ; $5abe: $9a
    sub a                                         ; $5abf: $97
    ld h, l                                       ; $5ac0: $65
    dec [hl]                                      ; $5ac1: $35
    ld a, d                                       ; $5ac2: $7a
    adc c                                         ; $5ac3: $89
    and a                                         ; $5ac4: $a7
    sbc d                                         ; $5ac5: $9a
    ld d, l                                       ; $5ac6: $55
    ld [hl], c                                    ; $5ac7: $71
    ld h, e                                       ; $5ac8: $63
    ld l, h                                       ; $5ac9: $6c
    rst $00                                       ; $5aca: $c7
    jp c, Jump_012_7498                           ; $5acb: $da $98 $74

    ld h, h                                       ; $5ace: $64
    ld a, h                                       ; $5acf: $7c
    call c, Call_012_5288                         ; $5ad0: $dc $88 $52
    ld b, h                                       ; $5ad3: $44
    ld b, a                                       ; $5ad4: $47
    ret                                           ; $5ad5: $c9


    add a                                         ; $5ad6: $87
    add a                                         ; $5ad7: $87
    ld h, a                                       ; $5ad8: $67
    halt                                          ; $5ad9: $76
    ld a, c                                       ; $5ada: $79
    adc b                                         ; $5adb: $88
    sbc b                                         ; $5adc: $98
    ld [hl], a                                    ; $5add: $77
    ld [hl], a                                    ; $5ade: $77
    xor b                                         ; $5adf: $a8
    adc c                                         ; $5ae0: $89
    ld h, a                                       ; $5ae1: $67
    ld [hl], $79                                  ; $5ae2: $36 $79
    cp e                                          ; $5ae4: $bb
    or [hl]                                       ; $5ae5: $b6
    and h                                         ; $5ae6: $a4
    ld d, d                                       ; $5ae7: $52
    ld a, b                                       ; $5ae8: $78
    ld a, h                                       ; $5ae9: $7c
    call z, Call_000_20b8                         ; $5aea: $cc $b8 $20
    inc hl                                        ; $5aed: $23
    ld b, a                                       ; $5aee: $47
    jp z, $ddaf                                   ; $5aef: $ca $af $dd

    ld h, h                                       ; $5af2: $64
    add e                                         ; $5af3: $83
    ld l, e                                       ; $5af4: $6b
    adc c                                         ; $5af5: $89
    adc c                                         ; $5af6: $89
    ld d, a                                       ; $5af7: $57
    ld e, b                                       ; $5af8: $58
    sub [hl]                                      ; $5af9: $96
    and a                                         ; $5afa: $a7
    sub a                                         ; $5afb: $97
    ld b, e                                       ; $5afc: $43
    dec [hl]                                      ; $5afd: $35
    sbc d                                         ; $5afe: $9a
    ld [hl], a                                    ; $5aff: $77
    ld d, e                                       ; $5b00: $53
    ld l, b                                       ; $5b01: $68
    xor c                                         ; $5b02: $a9
    sbc e                                         ; $5b03: $9b
    sbc d                                         ; $5b04: $9a
    ld b, e                                       ; $5b05: $43
    add a                                         ; $5b06: $87
    ld h, [hl]                                    ; $5b07: $66
    db $db                                        ; $5b08: $db
    ret c                                         ; $5b09: $d8

    ld d, h                                       ; $5b0a: $54
    ld [bc], a                                    ; $5b0b: $02
    ld e, b                                       ; $5b0c: $58
    cp h                                          ; $5b0d: $bc
    db $db                                        ; $5b0e: $db
    sbc c                                         ; $5b0f: $99
    and h                                         ; $5b10: $a4
    ld b, l                                       ; $5b11: $45
    sbc c                                         ; $5b12: $99
    halt                                          ; $5b13: $76
    ld a, b                                       ; $5b14: $78
    add a                                         ; $5b15: $87
    add a                                         ; $5b16: $87
    adc e                                         ; $5b17: $8b
    add [hl]                                      ; $5b18: $86
    ld d, [hl]                                    ; $5b19: $56
    ld a, c                                       ; $5b1a: $79
    xor l                                         ; $5b1b: $ad
    sbc d                                         ; $5b1c: $9a
    sbc e                                         ; $5b1d: $9b
    ld h, [hl]                                    ; $5b1e: $66
    add e                                         ; $5b1f: $83
    ld b, [hl]                                    ; $5b20: $46
    ld e, b                                       ; $5b21: $58
    xor c                                         ; $5b22: $a9
    sbc b                                         ; $5b23: $98
    ld l, b                                       ; $5b24: $68
    sbc b                                         ; $5b25: $98
    sbc c                                         ; $5b26: $99
    add l                                         ; $5b27: $85
    sub l                                         ; $5b28: $95
    ld b, c                                       ; $5b29: $41
    sbc b                                         ; $5b2a: $98
    xor h                                         ; $5b2b: $ac
    add e                                         ; $5b2c: $83
    ld a, c                                       ; $5b2d: $79
    sbc d                                         ; $5b2e: $9a
    cp c                                          ; $5b2f: $b9
    sub $98                                       ; $5b30: $d6 $98
    add [hl]                                      ; $5b32: $86
    and l                                         ; $5b33: $a5
    ld h, [hl]                                    ; $5b34: $66
    sub e                                         ; $5b35: $93
    ld [hl], a                                    ; $5b36: $77
    and [hl]                                      ; $5b37: $a6
    ret z                                         ; $5b38: $c8

    ld a, e                                       ; $5b39: $7b
    ld h, c                                       ; $5b3a: $61
    ld a, c                                       ; $5b3b: $79
    ld [hl], l                                    ; $5b3c: $75
    sbc c                                         ; $5b3d: $99
    ld a, b                                       ; $5b3e: $78
    add a                                         ; $5b3f: $87
    ld d, a                                       ; $5b40: $57
    cp h                                          ; $5b41: $bc
    ld a, d                                       ; $5b42: $7a
    sub e                                         ; $5b43: $93
    ld [hl], a                                    ; $5b44: $77
    ld a, b                                       ; $5b45: $78
    ld b, [hl]                                    ; $5b46: $46
    xor b                                         ; $5b47: $a8
    sbc e                                         ; $5b48: $9b
    sbc c                                         ; $5b49: $99
    add h                                         ; $5b4a: $84
    ld d, l                                       ; $5b4b: $55
    ld d, [hl]                                    ; $5b4c: $56
    ld l, c                                       ; $5b4d: $69
    ld e, c                                       ; $5b4e: $59
    or [hl]                                       ; $5b4f: $b6
    ret                                           ; $5b50: $c9


    or a                                          ; $5b51: $b7
    rst $20                                       ; $5b52: $e7
    ld [hl], l                                    ; $5b53: $75
    add h                                         ; $5b54: $84
    dec [hl]                                      ; $5b55: $35
    dec sp                                        ; $5b56: $3b
    halt                                          ; $5b57: $76
    ld a, d                                       ; $5b58: $7a
    cp d                                          ; $5b59: $ba
    add sp, -$46                                  ; $5b5a: $e8 $ba
    ld e, c                                       ; $5b5c: $59
    ld a, c                                       ; $5b5d: $79
    add hl, bc                                    ; $5b5e: $09
    ld h, [hl]                                    ; $5b5f: $66
    ld e, c                                       ; $5b60: $59
    sbc e                                         ; $5b61: $9b
    add l                                         ; $5b62: $85
    jp z, $a85d                                   ; $5b63: $ca $5d $a8

    adc d                                         ; $5b66: $8a
    ld d, h                                       ; $5b67: $54
    dec d                                         ; $5b68: $15
    adc d                                         ; $5b69: $8a
    xor h                                         ; $5b6a: $ac
    jp z, $85ba                                   ; $5b6b: $ca $ba $85

    sub l                                         ; $5b6e: $95
    ld b, [hl]                                    ; $5b6f: $46
    ld e, e                                       ; $5b70: $5b
    or l                                          ; $5b71: $b5
    adc a                                         ; $5b72: $8f
    dec [hl]                                      ; $5b73: $35
    ld a, a                                       ; $5b74: $7f
    ld a, b                                       ; $5b75: $78
    xor e                                         ; $5b76: $ab
    or l                                          ; $5b77: $b5
    or a                                          ; $5b78: $b7
    ld b, d                                       ; $5b79: $42
    and [hl]                                      ; $5b7a: $a6
    ld l, c                                       ; $5b7b: $69
    db $ec                                        ; $5b7c: $ec
    adc b                                         ; $5b7d: $88
    sub a                                         ; $5b7e: $97
    add [hl]                                      ; $5b7f: $86
    sub [hl]                                      ; $5b80: $96
    add hl, hl                                    ; $5b81: $29
    halt                                          ; $5b82: $76
    ld e, e                                       ; $5b83: $5b
    sbc d                                         ; $5b84: $9a
    adc d                                         ; $5b85: $8a
    ret                                           ; $5b86: $c9


    add a                                         ; $5b87: $87
    ld h, [hl]                                    ; $5b88: $66
    ld c, d                                       ; $5b89: $4a
    ld h, l                                       ; $5b8a: $65
    ld h, l                                       ; $5b8b: $65
    add [hl]                                      ; $5b8c: $86
    ld h, l                                       ; $5b8d: $65
    ld h, [hl]                                    ; $5b8e: $66
    ld a, h                                       ; $5b8f: $7c
    sbc c                                         ; $5b90: $99
    reti                                          ; $5b91: $d9


    ld h, [hl]                                    ; $5b92: $66
    ld d, h                                       ; $5b93: $54
    inc sp                                        ; $5b94: $33
    ld d, a                                       ; $5b95: $57
    adc d                                         ; $5b96: $8a
    xor d                                         ; $5b97: $aa
    sub [hl]                                      ; $5b98: $96
    ld h, l                                       ; $5b99: $65
    ld h, [hl]                                    ; $5b9a: $66
    ld a, b                                       ; $5b9b: $78
    sbc d                                         ; $5b9c: $9a
    ld [hl], a                                    ; $5b9d: $77
    ld [hl], l                                    ; $5b9e: $75
    ld d, e                                       ; $5b9f: $53
    sub a                                         ; $5ba0: $97
    sbc d                                         ; $5ba1: $9a
    sub a                                         ; $5ba2: $97
    ld d, [hl]                                    ; $5ba3: $56
    ld d, c                                       ; $5ba4: $51
    ld d, [hl]                                    ; $5ba5: $56
    xor c                                         ; $5ba6: $a9
    ld a, e                                       ; $5ba7: $7b
    cp c                                          ; $5ba8: $b9
    add a                                         ; $5ba9: $87
    ld d, [hl]                                    ; $5baa: $56
    ld h, a                                       ; $5bab: $67
    ld b, [hl]                                    ; $5bac: $46
    sub a                                         ; $5bad: $97
    sub l                                         ; $5bae: $95
    ld l, c                                       ; $5baf: $69
    xor d                                         ; $5bb0: $aa
    ld a, l                                       ; $5bb1: $7d
    sbc b                                         ; $5bb2: $98
    res 0, e                                      ; $5bb3: $cb $83
    ld b, a                                       ; $5bb5: $47
    dec [hl]                                      ; $5bb6: $35
    sbc e                                         ; $5bb7: $9b
    sub [hl]                                      ; $5bb8: $96
    and a                                         ; $5bb9: $a7
    ld h, $b9                                     ; $5bba: $26 $b9
    ld a, c                                       ; $5bbc: $79
    xor c                                         ; $5bbd: $a9
    dec [hl]                                      ; $5bbe: $35
    add h                                         ; $5bbf: $84
    ld l, c                                       ; $5bc0: $69
    ret c                                         ; $5bc1: $d8

    ld l, c                                       ; $5bc2: $69
    add [hl]                                      ; $5bc3: $86
    jr c, jr_012_5c3b                             ; $5bc4: $38 $75

    ld e, e                                       ; $5bc6: $5b
    add d                                         ; $5bc7: $82
    sub a                                         ; $5bc8: $97
    xor b                                         ; $5bc9: $a8
    ld l, h                                       ; $5bca: $6c
    ld a, b                                       ; $5bcb: $78
    sbc c                                         ; $5bcc: $99
    ld [hl], a                                    ; $5bcd: $77
    and a                                         ; $5bce: $a7
    ld d, h                                       ; $5bcf: $54
    adc c                                         ; $5bd0: $89
    ld e, b                                       ; $5bd1: $58
    adc b                                         ; $5bd2: $88
    ld a, b                                       ; $5bd3: $78
    add [hl]                                      ; $5bd4: $86
    ld l, b                                       ; $5bd5: $68
    and a                                         ; $5bd6: $a7
    adc d                                         ; $5bd7: $8a
    ld a, c                                       ; $5bd8: $79
    ld e, b                                       ; $5bd9: $58
    ld e, b                                       ; $5bda: $58
    xor c                                         ; $5bdb: $a9
    or a                                          ; $5bdc: $b7
    sbc d                                         ; $5bdd: $9a
    ld d, a                                       ; $5bde: $57
    ld c, b                                       ; $5bdf: $48
    ld h, a                                       ; $5be0: $67
    and [hl]                                      ; $5be1: $a6
    ld a, b                                       ; $5be2: $78
    sbc b                                         ; $5be3: $98
    ld d, a                                       ; $5be4: $57
    add a                                         ; $5be5: $87
    ld [hl], a                                    ; $5be6: $77
    sub a                                         ; $5be7: $97
    add a                                         ; $5be8: $87
    add l                                         ; $5be9: $85
    ld e, b                                       ; $5bea: $58
    sbc b                                         ; $5beb: $98
    ld l, d                                       ; $5bec: $6a
    adc b                                         ; $5bed: $88
    sbc c                                         ; $5bee: $99
    ld [hl], a                                    ; $5bef: $77
    adc b                                         ; $5bf0: $88
    sub [hl]                                      ; $5bf1: $96
    ld e, c                                       ; $5bf2: $59
    ld h, a                                       ; $5bf3: $67
    adc b                                         ; $5bf4: $88
    add l                                         ; $5bf5: $85
    sbc b                                         ; $5bf6: $98
    ld h, [hl]                                    ; $5bf7: $66
    sbc c                                         ; $5bf8: $99
    ld h, a                                       ; $5bf9: $67
    adc c                                         ; $5bfa: $89
    ld h, [hl]                                    ; $5bfb: $66
    xor b                                         ; $5bfc: $a8
    ld a, b                                       ; $5bfd: $78
    sbc b                                         ; $5bfe: $98
    ld l, c                                       ; $5bff: $69
    sub [hl]                                      ; $5c00: $96
    ld e, b                                       ; $5c01: $58
    add l                                         ; $5c02: $85
    ld a, c                                       ; $5c03: $79
    add a                                         ; $5c04: $87
    ld l, e                                       ; $5c05: $6b
    ld [hl], l                                    ; $5c06: $75
    ld a, d                                       ; $5c07: $7a
    ld h, l                                       ; $5c08: $65
    sbc c                                         ; $5c09: $99
    ld h, l                                       ; $5c0a: $65
    add [hl]                                      ; $5c0b: $86
    ld h, [hl]                                    ; $5c0c: $66
    sbc c                                         ; $5c0d: $99
    ld l, c                                       ; $5c0e: $69
    ret                                           ; $5c0f: $c9


    ld l, b                                       ; $5c10: $68
    add l                                         ; $5c11: $85
    ld l, d                                       ; $5c12: $6a
    and l                                         ; $5c13: $a5
    ld l, b                                       ; $5c14: $68
    ld [hl], l                                    ; $5c15: $75
    ld e, b                                       ; $5c16: $58
    add [hl]                                      ; $5c17: $86
    ld a, e                                       ; $5c18: $7b
    add a                                         ; $5c19: $87
    xor d                                         ; $5c1a: $aa
    halt                                          ; $5c1b: $76
    sbc c                                         ; $5c1c: $99
    ld h, [hl]                                    ; $5c1d: $66
    xor b                                         ; $5c1e: $a8
    ld d, a                                       ; $5c1f: $57
    sub [hl]                                      ; $5c20: $96
    ld e, b                                       ; $5c21: $58
    cp c                                          ; $5c22: $b9
    adc c                                         ; $5c23: $89
    sub [hl]                                      ; $5c24: $96
    ld e, c                                       ; $5c25: $59
    ld h, e                                       ; $5c26: $63
    ld e, e                                       ; $5c27: $5b
    sub a                                         ; $5c28: $97
    xor d                                         ; $5c29: $aa
    ld [hl], l                                    ; $5c2a: $75
    ld l, c                                       ; $5c2b: $69
    ld h, [hl]                                    ; $5c2c: $66
    adc d                                         ; $5c2d: $8a
    add h                                         ; $5c2e: $84
    or a                                          ; $5c2f: $b7
    add a                                         ; $5c30: $87
    adc b                                         ; $5c31: $88
    ld e, c                                       ; $5c32: $59
    xor c                                         ; $5c33: $a9
    ld l, b                                       ; $5c34: $68
    and [hl]                                      ; $5c35: $a6
    ld b, [hl]                                    ; $5c36: $46
    add [hl]                                      ; $5c37: $86
    ld a, c                                       ; $5c38: $79
    sub [hl]                                      ; $5c39: $96
    ld a, d                                       ; $5c3a: $7a

jr_012_5c3b:
    ld [hl], h                                    ; $5c3b: $74
    ld a, c                                       ; $5c3c: $79
    adc b                                         ; $5c3d: $88
    ld a, c                                       ; $5c3e: $79
    ld h, [hl]                                    ; $5c3f: $66
    adc b                                         ; $5c40: $88
    ld [hl], a                                    ; $5c41: $77
    adc c                                         ; $5c42: $89
    add a                                         ; $5c43: $87
    add a                                         ; $5c44: $87
    ld e, b                                       ; $5c45: $58
    ld e, c                                       ; $5c46: $59
    ld l, b                                       ; $5c47: $68
    add a                                         ; $5c48: $87
    ld d, l                                       ; $5c49: $55
    sub a                                         ; $5c4a: $97

jr_012_5c4b:
    ld a, b                                       ; $5c4b: $78
    add a                                         ; $5c4c: $87
    ld e, c                                       ; $5c4d: $59
    xor b                                         ; $5c4e: $a8
    ld a, b                                       ; $5c4f: $78
    sbc c                                         ; $5c50: $99
    ld d, [hl]                                    ; $5c51: $56
    sub h                                         ; $5c52: $94
    ld a, c                                       ; $5c53: $79
    ld h, a                                       ; $5c54: $67
    ld a, b                                       ; $5c55: $78
    sub e                                         ; $5c56: $93
    adc e                                         ; $5c57: $8b
    ld h, [hl]                                    ; $5c58: $66
    sbc e                                         ; $5c59: $9b
    ld h, [hl]                                    ; $5c5a: $66
    adc c                                         ; $5c5b: $89
    ld h, [hl]                                    ; $5c5c: $66
    sub [hl]                                      ; $5c5d: $96
    ld d, [hl]                                    ; $5c5e: $56
    ld a, b                                       ; $5c5f: $78
    ld e, d                                       ; $5c60: $5a
    and [hl]                                      ; $5c61: $a6
    ld e, c                                       ; $5c62: $59
    or [hl]                                       ; $5c63: $b6
    adc c                                         ; $5c64: $89
    rst $00                                       ; $5c65: $c7
    adc d                                         ; $5c66: $8a
    ld d, [hl]                                    ; $5c67: $56
    ld d, [hl]                                    ; $5c68: $56
    ld b, l                                       ; $5c69: $45
    sub a                                         ; $5c6a: $97
    ld [hl], a                                    ; $5c6b: $77
    xor c                                         ; $5c6c: $a9
    ld e, c                                       ; $5c6d: $59
    xor d                                         ; $5c6e: $aa
    ld l, c                                       ; $5c6f: $69
    push bc                                       ; $5c70: $c5
    ld h, a                                       ; $5c71: $67
    sub [hl]                                      ; $5c72: $96
    ld l, c                                       ; $5c73: $69
    sub a                                         ; $5c74: $97
    ld l, b                                       ; $5c75: $68
    sbc b                                         ; $5c76: $98
    ld b, h                                       ; $5c77: $44
    halt                                          ; $5c78: $76
    adc c                                         ; $5c79: $89
    ld h, a                                       ; $5c7a: $67
    ld h, a                                       ; $5c7b: $67
    ld h, [hl]                                    ; $5c7c: $66
    sbc c                                         ; $5c7d: $99
    add l                                         ; $5c7e: $85
    xor c                                         ; $5c7f: $a9
    xor c                                         ; $5c80: $a9
    sbc c                                         ; $5c81: $99
    ld b, [hl]                                    ; $5c82: $46
    adc b                                         ; $5c83: $88
    ld [hl], a                                    ; $5c84: $77
    cp b                                          ; $5c85: $b8
    ld h, a                                       ; $5c86: $67
    add [hl]                                      ; $5c87: $86
    add hl, de                                    ; $5c88: $19
    ld l, c                                       ; $5c89: $69
    bit 6, [hl]                                   ; $5c8a: $cb $76
    ld h, l                                       ; $5c8c: $65
    or [hl]                                       ; $5c8d: $b6
    ld c, h                                       ; $5c8e: $4c
    ld d, [hl]                                    ; $5c8f: $56
    adc c                                         ; $5c90: $89
    ld l, b                                       ; $5c91: $68
    xor h                                         ; $5c92: $ac
    ld a, c                                       ; $5c93: $79
    and l                                         ; $5c94: $a5
    ld a, c                                       ; $5c95: $79
    ld e, d                                       ; $5c96: $5a
    ld d, [hl]                                    ; $5c97: $56
    jp z, Jump_012_693d                           ; $5c98: $ca $3d $69

    or l                                          ; $5c9b: $b5
    ld l, d                                       ; $5c9c: $6a
    dec de                                        ; $5c9d: $1b
    sub [hl]                                      ; $5c9e: $96
    ld b, [hl]                                    ; $5c9f: $46

jr_012_5ca0:
    adc c                                         ; $5ca0: $89
    adc e                                         ; $5ca1: $8b
    sub d                                         ; $5ca2: $92
    ld a, d                                       ; $5ca3: $7a
    ld d, a                                       ; $5ca4: $57
    add a                                         ; $5ca5: $87
    sub [hl]                                      ; $5ca6: $96
    add a                                         ; $5ca7: $87
    ld e, d                                       ; $5ca8: $5a
    ld h, a                                       ; $5ca9: $67
    ld l, d                                       ; $5caa: $6a
    ld [hl], a                                    ; $5cab: $77
    and h                                         ; $5cac: $a4
    and a                                         ; $5cad: $a7
    sbc c                                         ; $5cae: $99
    ld h, a                                       ; $5caf: $67
    ld c, b                                       ; $5cb0: $48
    ld [hl], e                                    ; $5cb1: $73
    adc e                                         ; $5cb2: $8b
    cp b                                          ; $5cb3: $b8
    jr c, jr_012_5c4b                             ; $5cb4: $38 $95

    ld l, h                                       ; $5cb6: $6c
    ld a, c                                       ; $5cb7: $79
    sbc c                                         ; $5cb8: $99
    sub e                                         ; $5cb9: $93
    ld d, a                                       ; $5cba: $57
    ld [hl], h                                    ; $5cbb: $74
    ld a, h                                       ; $5cbc: $7c
    add l                                         ; $5cbd: $85
    or [hl]                                       ; $5cbe: $b6
    ld e, c                                       ; $5cbf: $59
    adc h                                         ; $5cc0: $8c
    sub [hl]                                      ; $5cc1: $96
    reti                                          ; $5cc2: $d9


    ld e, c                                       ; $5cc3: $59
    add h                                         ; $5cc4: $84
    ld a, b                                       ; $5cc5: $78
    adc c                                         ; $5cc6: $89
    sbc c                                         ; $5cc7: $99
    ld l, c                                       ; $5cc8: $69
    ld e, b                                       ; $5cc9: $58
    sub l                                         ; $5cca: $95
    ld c, d                                       ; $5ccb: $4a
    ld d, a                                       ; $5ccc: $57
    xor b                                         ; $5ccd: $a8
    or l                                          ; $5cce: $b5
    ld l, d                                       ; $5ccf: $6a
    ld d, a                                       ; $5cd0: $57
    adc b                                         ; $5cd1: $88
    ld d, a                                       ; $5cd2: $57
    cp c                                          ; $5cd3: $b9
    and a                                         ; $5cd4: $a7
    or a                                          ; $5cd5: $b7
    ld l, b                                       ; $5cd6: $68
    adc b                                         ; $5cd7: $88
    ld c, c                                       ; $5cd8: $49
    sub [hl]                                      ; $5cd9: $96
    add [hl]                                      ; $5cda: $86
    ld d, [hl]                                    ; $5cdb: $56
    ld l, d                                       ; $5cdc: $6a
    add h                                         ; $5cdd: $84
    sbc c                                         ; $5cde: $99
    ld d, a                                       ; $5cdf: $57
    xor d                                         ; $5ce0: $aa
    sbc b                                         ; $5ce1: $98
    xor c                                         ; $5ce2: $a9
    ld h, a                                       ; $5ce3: $67
    xor c                                         ; $5ce4: $a9
    ld e, b                                       ; $5ce5: $58
    ld a, b                                       ; $5ce6: $78
    ld b, [hl]                                    ; $5ce7: $46
    sbc b                                         ; $5ce8: $98
    ld l, b                                       ; $5ce9: $68
    sub h                                         ; $5cea: $94
    ld a, l                                       ; $5ceb: $7d
    halt                                          ; $5cec: $76
    ld [hl], l                                    ; $5ced: $75
    sub l                                         ; $5cee: $95
    ld l, b                                       ; $5cef: $68
    sbc b                                         ; $5cf0: $98
    sbc e                                         ; $5cf1: $9b
    add c                                         ; $5cf2: $81
    ld l, b                                       ; $5cf3: $68
    ld d, l                                       ; $5cf4: $55
    sbc c                                         ; $5cf5: $99
    sub [hl]                                      ; $5cf6: $96
    adc e                                         ; $5cf7: $8b
    ld [hl], a                                    ; $5cf8: $77
    sub l                                         ; $5cf9: $95
    ld b, l                                       ; $5cfa: $45
    sbc c                                         ; $5cfb: $99
    ld a, c                                       ; $5cfc: $79
    sub [hl]                                      ; $5cfd: $96
    ld b, [hl]                                    ; $5cfe: $46
    add a                                         ; $5cff: $87
    adc c                                         ; $5d00: $89
    and a                                         ; $5d01: $a7
    ld a, c                                       ; $5d02: $79
    adc c                                         ; $5d03: $89
    ld l, h                                       ; $5d04: $6c
    cp b                                          ; $5d05: $b8
    ld a, c                                       ; $5d06: $79
    ld [hl], l                                    ; $5d07: $75
    adc b                                         ; $5d08: $88
    add a                                         ; $5d09: $87
    sbc e                                         ; $5d0a: $9b
    ld h, [hl]                                    ; $5d0b: $66
    adc b                                         ; $5d0c: $88
    ld d, [hl]                                    ; $5d0d: $56
    sub a                                         ; $5d0e: $97
    add a                                         ; $5d0f: $87
    xor c                                         ; $5d10: $a9
    ld a, c                                       ; $5d11: $79
    sub l                                         ; $5d12: $95
    add a                                         ; $5d13: $87
    adc b                                         ; $5d14: $88
    adc b                                         ; $5d15: $88
    add a                                         ; $5d16: $87
    jr z, jr_012_5ca0                             ; $5d17: $28 $87

    adc d                                         ; $5d19: $8a
    sub a                                         ; $5d1a: $97
    sbc b                                         ; $5d1b: $98
    ld h, a                                       ; $5d1c: $67
    adc c                                         ; $5d1d: $89
    ld h, a                                       ; $5d1e: $67
    adc c                                         ; $5d1f: $89
    ld h, [hl]                                    ; $5d20: $66
    sbc c                                         ; $5d21: $99
    sbc c                                         ; $5d22: $99
    add a                                         ; $5d23: $87
    ld [hl], a                                    ; $5d24: $77
    ld a, c                                       ; $5d25: $79
    ld e, b                                       ; $5d26: $58
    sub a                                         ; $5d27: $97
    sbc d                                         ; $5d28: $9a
    and a                                         ; $5d29: $a7
    adc b                                         ; $5d2a: $88
    ld d, l                                       ; $5d2b: $55
    ld e, b                                       ; $5d2c: $58
    ld [hl], a                                    ; $5d2d: $77
    sbc c                                         ; $5d2e: $99
    or l                                          ; $5d2f: $b5
    xor c                                         ; $5d30: $a9
    ld d, [hl]                                    ; $5d31: $56
    adc c                                         ; $5d32: $89
    add a                                         ; $5d33: $87
    xor c                                         ; $5d34: $a9
    ld d, a                                       ; $5d35: $57
    sbc b                                         ; $5d36: $98
    ld d, [hl]                                    ; $5d37: $56
    and [hl]                                      ; $5d38: $a6
    ld h, a                                       ; $5d39: $67
    ld [hl], l                                    ; $5d3a: $75
    ld l, c                                       ; $5d3b: $69
    and a                                         ; $5d3c: $a7
    ld a, e                                       ; $5d3d: $7b
    add [hl]                                      ; $5d3e: $86
    ld l, b                                       ; $5d3f: $68
    ld h, h                                       ; $5d40: $64
    ld [hl], a                                    ; $5d41: $77
    halt                                          ; $5d42: $76
    ld l, c                                       ; $5d43: $69
    halt                                          ; $5d44: $76
    adc e                                         ; $5d45: $8b
    ld h, [hl]                                    ; $5d46: $66
    xor d                                         ; $5d47: $aa
    halt                                          ; $5d48: $76
    sbc c                                         ; $5d49: $99
    ld h, [hl]                                    ; $5d4a: $66
    halt                                          ; $5d4b: $76
    ld e, b                                       ; $5d4c: $58
    adc b                                         ; $5d4d: $88
    ld a, b                                       ; $5d4e: $78
    or [hl]                                       ; $5d4f: $b6
    ld h, [hl]                                    ; $5d50: $66
    add a                                         ; $5d51: $87
    ld l, c                                       ; $5d52: $69
    add a                                         ; $5d53: $87
    ld l, d                                       ; $5d54: $6a
    sub [hl]                                      ; $5d55: $96
    sbc c                                         ; $5d56: $99
    sub h                                         ; $5d57: $94
    ld e, b                                       ; $5d58: $58
    ld h, a                                       ; $5d59: $67
    adc d                                         ; $5d5a: $8a
    halt                                          ; $5d5b: $76
    adc c                                         ; $5d5c: $89
    ld h, [hl]                                    ; $5d5d: $66
    xor b                                         ; $5d5e: $a8
    ld l, b                                       ; $5d5f: $68
    adc b                                         ; $5d60: $88
    ld l, b                                       ; $5d61: $68
    sub a                                         ; $5d62: $97
    ld [hl], a                                    ; $5d63: $77
    sbc b                                         ; $5d64: $98
    ld a, c                                       ; $5d65: $79
    and a                                         ; $5d66: $a7
    ld l, c                                       ; $5d67: $69
    ld [hl], l                                    ; $5d68: $75
    ld h, a                                       ; $5d69: $67
    add [hl]                                      ; $5d6a: $86
    ld a, c                                       ; $5d6b: $79
    adc b                                         ; $5d6c: $88
    adc d                                         ; $5d6d: $8a
    halt                                          ; $5d6e: $76
    adc b                                         ; $5d6f: $88
    add [hl]                                      ; $5d70: $86
    sbc c                                         ; $5d71: $99
    ld [hl], a                                    ; $5d72: $77
    sbc b                                         ; $5d73: $98
    ld d, a                                       ; $5d74: $57
    adc b                                         ; $5d75: $88
    ld l, b                                       ; $5d76: $68
    and l                                         ; $5d77: $a5
    ld a, c                                       ; $5d78: $79
    sub a                                         ; $5d79: $97
    adc c                                         ; $5d7a: $89
    add a                                         ; $5d7b: $87
    ld [hl], a                                    ; $5d7c: $77
    add l                                         ; $5d7d: $85
    ld l, c                                       ; $5d7e: $69
    ld h, l                                       ; $5d7f: $65
    adc d                                         ; $5d80: $8a
    adc b                                         ; $5d81: $88
    adc c                                         ; $5d82: $89
    ld [hl], l                                    ; $5d83: $75
    adc b                                         ; $5d84: $88
    ld h, [hl]                                    ; $5d85: $66
    adc b                                         ; $5d86: $88
    ld h, a                                       ; $5d87: $67
    sbc c                                         ; $5d88: $99
    ld [hl], a                                    ; $5d89: $77
    sub a                                         ; $5d8a: $97
    ld h, a                                       ; $5d8b: $67
    add [hl]                                      ; $5d8c: $86
    ld l, c                                       ; $5d8d: $69
    add a                                         ; $5d8e: $87
    ld a, c                                       ; $5d8f: $79
    sub [hl]                                      ; $5d90: $96
    ld a, c                                       ; $5d91: $79
    add l                                         ; $5d92: $85
    ld a, c                                       ; $5d93: $79
    ld [hl], a                                    ; $5d94: $77
    sbc d                                         ; $5d95: $9a
    ld [hl], a                                    ; $5d96: $77
    adc b                                         ; $5d97: $88
    ld h, [hl]                                    ; $5d98: $66
    adc c                                         ; $5d99: $89
    ld [hl], a                                    ; $5d9a: $77
    sbc b                                         ; $5d9b: $98
    ld h, a                                       ; $5d9c: $67
    sbc b                                         ; $5d9d: $98
    ld h, a                                       ; $5d9e: $67
    sub a                                         ; $5d9f: $97
    ld l, c                                       ; $5da0: $69
    add a                                         ; $5da1: $87
    ld l, b                                       ; $5da2: $68
    add [hl]                                      ; $5da3: $86
    ld a, b                                       ; $5da4: $78
    sub [hl]                                      ; $5da5: $96
    adc c                                         ; $5da6: $89
    add a                                         ; $5da7: $87
    ld a, d                                       ; $5da8: $7a
    ld [hl], a                                    ; $5da9: $77
    adc b                                         ; $5daa: $88
    ld [hl], a                                    ; $5dab: $77
    adc b                                         ; $5dac: $88
    ld h, a                                       ; $5dad: $67
    sbc b                                         ; $5dae: $98
    ld h, a                                       ; $5daf: $67
    adc b                                         ; $5db0: $88
    ld h, a                                       ; $5db1: $67
    sbc b                                         ; $5db2: $98
    ld a, b                                       ; $5db3: $78
    sub a                                         ; $5db4: $97
    ld a, d                                       ; $5db5: $7a
    sub [hl]                                      ; $5db6: $96
    ld l, b                                       ; $5db7: $68
    add l                                         ; $5db8: $85
    ld a, b                                       ; $5db9: $78
    halt                                          ; $5dba: $76
    ld a, c                                       ; $5dbb: $79
    ld [hl], a                                    ; $5dbc: $77
    sbc c                                         ; $5dbd: $99
    add a                                         ; $5dbe: $87
    sbc b                                         ; $5dbf: $98
    add [hl]                                      ; $5dc0: $86
    adc c                                         ; $5dc1: $89
    ld h, a                                       ; $5dc2: $67
    adc b                                         ; $5dc3: $88
    ld d, [hl]                                    ; $5dc4: $56
    sub a                                         ; $5dc5: $97
    ld h, a                                       ; $5dc6: $67
    sub a                                         ; $5dc7: $97
    ld a, c                                       ; $5dc8: $79
    sbc b                                         ; $5dc9: $98
    ld a, c                                       ; $5dca: $79
    add [hl]                                      ; $5dcb: $86
    ld a, b                                       ; $5dcc: $78
    add [hl]                                      ; $5dcd: $86
    ld l, c                                       ; $5dce: $69
    halt                                          ; $5dcf: $76
    adc b                                         ; $5dd0: $88
    ld [hl], l                                    ; $5dd1: $75
    adc c                                         ; $5dd2: $89
    halt                                          ; $5dd3: $76
    adc c                                         ; $5dd4: $89
    ld h, a                                       ; $5dd5: $67
    sbc c                                         ; $5dd6: $99
    ld [hl], a                                    ; $5dd7: $77
    xor b                                         ; $5dd8: $a8
    ld [hl], a                                    ; $5dd9: $77
    sub a                                         ; $5dda: $97
    ld h, a                                       ; $5ddb: $67
    add a                                         ; $5ddc: $87
    ld l, b                                       ; $5ddd: $68
    add a                                         ; $5dde: $87
    ld l, b                                       ; $5ddf: $68
    sub [hl]                                      ; $5de0: $96
    ld a, c                                       ; $5de1: $79
    ld [hl], a                                    ; $5de2: $77
    ld a, c                                       ; $5de3: $79
    add [hl]                                      ; $5de4: $86
    ld a, b                                       ; $5de5: $78
    halt                                          ; $5de6: $76
    adc c                                         ; $5de7: $89
    ld a, b                                       ; $5de8: $78
    adc c                                         ; $5de9: $89
    ld [hl], a                                    ; $5dea: $77
    sbc b                                         ; $5deb: $98
    ld [hl], a                                    ; $5dec: $77
    sub a                                         ; $5ded: $97
    ld h, a                                       ; $5dee: $67
    add a                                         ; $5def: $87
    ld l, c                                       ; $5df0: $69
    sub a                                         ; $5df1: $97
    ld a, b                                       ; $5df2: $78
    sub [hl]                                      ; $5df3: $96
    ld a, b                                       ; $5df4: $78
    add [hl]                                      ; $5df5: $86
    ld a, c                                       ; $5df6: $79
    ld [hl], a                                    ; $5df7: $77
    adc c                                         ; $5df8: $89
    halt                                          ; $5df9: $76
    adc b                                         ; $5dfa: $88
    ld [hl], a                                    ; $5dfb: $77
    sbc c                                         ; $5dfc: $99
    ld h, a                                       ; $5dfd: $67
    sbc b                                         ; $5dfe: $98
    ld a, b                                       ; $5dff: $78
    sub a                                         ; $5e00: $97
    ld h, a                                       ; $5e01: $67
    add a                                         ; $5e02: $87
    ld l, b                                       ; $5e03: $68
    add [hl]                                      ; $5e04: $86
    ld l, b                                       ; $5e05: $68
    add [hl]                                      ; $5e06: $86
    ld a, b                                       ; $5e07: $78
    add [hl]                                      ; $5e08: $86
    ld a, c                                       ; $5e09: $79
    add a                                         ; $5e0a: $87
    adc d                                         ; $5e0b: $8a
    add [hl]                                      ; $5e0c: $86
    adc b                                         ; $5e0d: $88
    halt                                          ; $5e0e: $76
    adc b                                         ; $5e0f: $88
    ld h, a                                       ; $5e10: $67
    adc b                                         ; $5e11: $88
    ld h, a                                       ; $5e12: $67
    sbc b                                         ; $5e13: $98
    ld a, b                                       ; $5e14: $78
    sbc b                                         ; $5e15: $98
    ld l, b                                       ; $5e16: $68
    sub a                                         ; $5e17: $97
    ld h, a                                       ; $5e18: $67
    add [hl]                                      ; $5e19: $86
    ld l, b                                       ; $5e1a: $68
    sub a                                         ; $5e1b: $97
    ld a, c                                       ; $5e1c: $79
    add a                                         ; $5e1d: $87
    ld a, c                                       ; $5e1e: $79
    add a                                         ; $5e1f: $87
    adc b                                         ; $5e20: $88
    add [hl]                                      ; $5e21: $86
    adc b                                         ; $5e22: $88
    halt                                          ; $5e23: $76
    ld a, b                                       ; $5e24: $78
    ld h, [hl]                                    ; $5e25: $66
    adc b                                         ; $5e26: $88
    ld [hl], a                                    ; $5e27: $77
    sbc b                                         ; $5e28: $98
    ld l, b                                       ; $5e29: $68
    adc b                                         ; $5e2a: $88
    ld l, b                                       ; $5e2b: $68
    sub a                                         ; $5e2c: $97
    ld a, b                                       ; $5e2d: $78
    add [hl]                                      ; $5e2e: $86
    ld a, c                                       ; $5e2f: $79
    add a                                         ; $5e30: $87
    ld a, c                                       ; $5e31: $79
    add [hl]                                      ; $5e32: $86
    ld a, b                                       ; $5e33: $78
    halt                                          ; $5e34: $76
    adc b                                         ; $5e35: $88
    add a                                         ; $5e36: $87
    adc c                                         ; $5e37: $89
    ld h, a                                       ; $5e38: $67
    adc b                                         ; $5e39: $88
    ld [hl], a                                    ; $5e3a: $77
    sub a                                         ; $5e3b: $97
    ld h, a                                       ; $5e3c: $67
    adc b                                         ; $5e3d: $88
    ld l, b                                       ; $5e3e: $68
    sub a                                         ; $5e3f: $97
    adc b                                         ; $5e40: $88
    sub a                                         ; $5e41: $97
    ld a, c                                       ; $5e42: $79
    sub a                                         ; $5e43: $97
    ld a, c                                       ; $5e44: $79
    halt                                          ; $5e45: $76
    ld a, c                                       ; $5e46: $79
    halt                                          ; $5e47: $76
    adc b                                         ; $5e48: $88
    halt                                          ; $5e49: $76
    adc c                                         ; $5e4a: $89
    ld [hl], a                                    ; $5e4b: $77
    adc c                                         ; $5e4c: $89
    ld [hl], a                                    ; $5e4d: $77
    sbc b                                         ; $5e4e: $98
    ld [hl], a                                    ; $5e4f: $77
    sbc b                                         ; $5e50: $98
    ld l, b                                       ; $5e51: $68
    add a                                         ; $5e52: $87
    ld l, b                                       ; $5e53: $68
    sub a                                         ; $5e54: $97
    ld a, b                                       ; $5e55: $78
    sub a                                         ; $5e56: $97
    ld a, c                                       ; $5e57: $79
    add a                                         ; $5e58: $87
    ld a, c                                       ; $5e59: $79
    add [hl]                                      ; $5e5a: $86
    ld a, b                                       ; $5e5b: $78
    add [hl]                                      ; $5e5c: $86
    adc c                                         ; $5e5d: $89
    ld [hl], a                                    ; $5e5e: $77
    adc c                                         ; $5e5f: $89
    ld h, a                                       ; $5e60: $67
    sbc b                                         ; $5e61: $98
    ld [hl], a                                    ; $5e62: $77
    sbc b                                         ; $5e63: $98
    ld h, a                                       ; $5e64: $67
    adc b                                         ; $5e65: $88
    ld l, b                                       ; $5e66: $68
    sub a                                         ; $5e67: $97
    ld a, b                                       ; $5e68: $78
    sub a                                         ; $5e69: $97
    ld a, b                                       ; $5e6a: $78
    add a                                         ; $5e6b: $87
    ld a, c                                       ; $5e6c: $79
    add a                                         ; $5e6d: $87
    ld a, c                                       ; $5e6e: $79
    add [hl]                                      ; $5e6f: $86
    adc b                                         ; $5e70: $88
    ld [hl], a                                    ; $5e71: $77
    adc c                                         ; $5e72: $89
    ld [hl], a                                    ; $5e73: $77
    adc b                                         ; $5e74: $88
    ld [hl], a                                    ; $5e75: $77
    sbc b                                         ; $5e76: $98
    ld [hl], a                                    ; $5e77: $77
    adc b                                         ; $5e78: $88
    ld l, b                                       ; $5e79: $68
    add a                                         ; $5e7a: $87
    ld a, b                                       ; $5e7b: $78
    sub a                                         ; $5e7c: $97
    ld a, b                                       ; $5e7d: $78
    add a                                         ; $5e7e: $87
    ld a, c                                       ; $5e7f: $79
    add a                                         ; $5e80: $87
    ld a, c                                       ; $5e81: $79
    add [hl]                                      ; $5e82: $86
    adc b                                         ; $5e83: $88
    add a                                         ; $5e84: $87
    adc c                                         ; $5e85: $89
    ld [hl], a                                    ; $5e86: $77
    adc b                                         ; $5e87: $88
    ld [hl], a                                    ; $5e88: $77
    sbc b                                         ; $5e89: $98
    ld [hl], a                                    ; $5e8a: $77
    sbc b                                         ; $5e8b: $98
    ld l, b                                       ; $5e8c: $68
    adc b                                         ; $5e8d: $88
    ld a, b                                       ; $5e8e: $78
    sub a                                         ; $5e8f: $97
    adc b                                         ; $5e90: $88
    sub a                                         ; $5e91: $97
    ld a, c                                       ; $5e92: $79
    add a                                         ; $5e93: $87
    ld a, c                                       ; $5e94: $79
    add [hl]                                      ; $5e95: $86
    ld a, c                                       ; $5e96: $79
    add [hl]                                      ; $5e97: $86
    adc c                                         ; $5e98: $89
    ld [hl], a                                    ; $5e99: $77
    adc c                                         ; $5e9a: $89
    ld [hl], a                                    ; $5e9b: $77
    adc b                                         ; $5e9c: $88
    ld [hl], a                                    ; $5e9d: $77
    sbc b                                         ; $5e9e: $98
    ld h, a                                       ; $5e9f: $67
    adc b                                         ; $5ea0: $88
    ld l, b                                       ; $5ea1: $68
    sub a                                         ; $5ea2: $97
    ld a, b                                       ; $5ea3: $78
    sub a                                         ; $5ea4: $97
    ld l, b                                       ; $5ea5: $68
    add a                                         ; $5ea6: $87
    ld l, c                                       ; $5ea7: $69
    add a                                         ; $5ea8: $87
    ld a, b                                       ; $5ea9: $78
    add [hl]                                      ; $5eaa: $86
    ld a, b                                       ; $5eab: $78
    add a                                         ; $5eac: $87
    adc c                                         ; $5ead: $89
    ld [hl], a                                    ; $5eae: $77
    adc b                                         ; $5eaf: $88
    add [hl]                                      ; $5eb0: $86
    sbc b                                         ; $5eb1: $98
    ld [hl], a                                    ; $5eb2: $77
    adc b                                         ; $5eb3: $88
    ld l, b                                       ; $5eb4: $68
    add a                                         ; $5eb5: $87
    ld [hl], a                                    ; $5eb6: $77
    sub a                                         ; $5eb7: $97
    ld a, b                                       ; $5eb8: $78
    add a                                         ; $5eb9: $87
    ld l, b                                       ; $5eba: $68
    add a                                         ; $5ebb: $87
    ld a, b                                       ; $5ebc: $78
    add [hl]                                      ; $5ebd: $86
    ld a, b                                       ; $5ebe: $78
    ld [hl], a                                    ; $5ebf: $77
    adc c                                         ; $5ec0: $89
    ld [hl], a                                    ; $5ec1: $77
    adc b                                         ; $5ec2: $88
    ld h, a                                       ; $5ec3: $67
    adc b                                         ; $5ec4: $88
    ld [hl], a                                    ; $5ec5: $77
    adc b                                         ; $5ec6: $88
    ld h, a                                       ; $5ec7: $67
    add a                                         ; $5ec8: $87
    ld l, b                                       ; $5ec9: $68
    sub a                                         ; $5eca: $97
    ld a, b                                       ; $5ecb: $78
    add a                                         ; $5ecc: $87
    ld l, b                                       ; $5ecd: $68
    adc b                                         ; $5ece: $88
    adc d                                         ; $5ecf: $8a
    sub [hl]                                      ; $5ed0: $96
    ld a, b                                       ; $5ed1: $78
    ld [hl], l                                    ; $5ed2: $75
    ld a, c                                       ; $5ed3: $79
    add a                                         ; $5ed4: $87
    adc c                                         ; $5ed5: $89
    add a                                         ; $5ed6: $87
    sbc c                                         ; $5ed7: $99
    ld [hl], a                                    ; $5ed8: $77
    sbc b                                         ; $5ed9: $98
    ld h, a                                       ; $5eda: $67
    add a                                         ; $5edb: $87
    ld d, a                                       ; $5edc: $57
    sbc b                                         ; $5edd: $98
    ld a, b                                       ; $5ede: $78
    xor b                                         ; $5edf: $a8
    ld l, b                                       ; $5ee0: $68
    add a                                         ; $5ee1: $87
    ld l, b                                       ; $5ee2: $68
    sub a                                         ; $5ee3: $97
    ld a, b                                       ; $5ee4: $78
    add [hl]                                      ; $5ee5: $86
    ld a, b                                       ; $5ee6: $78
    add a                                         ; $5ee7: $87
    adc c                                         ; $5ee8: $89
    ld [hl], a                                    ; $5ee9: $77
    adc b                                         ; $5eea: $88
    halt                                          ; $5eeb: $76
    adc b                                         ; $5eec: $88
    ld [hl], a                                    ; $5eed: $77
    sbc b                                         ; $5eee: $98
    ld h, a                                       ; $5eef: $67
    adc b                                         ; $5ef0: $88
    ld h, a                                       ; $5ef1: $67
    sub a                                         ; $5ef2: $97
    ld a, b                                       ; $5ef3: $78
    add a                                         ; $5ef4: $87
    ld l, b                                       ; $5ef5: $68
    add a                                         ; $5ef6: $87
    ld a, c                                       ; $5ef7: $79
    sub a                                         ; $5ef8: $97
    adc b                                         ; $5ef9: $88
    halt                                          ; $5efa: $76
    ld a, b                                       ; $5efb: $78
    ld [hl], a                                    ; $5efc: $77
    adc b                                         ; $5efd: $88
    halt                                          ; $5efe: $76
    adc b                                         ; $5eff: $88
    add a                                         ; $5f00: $87
    sbc c                                         ; $5f01: $99
    ld [hl], a                                    ; $5f02: $77
    adc b                                         ; $5f03: $88
    ld [hl], a                                    ; $5f04: $77
    add a                                         ; $5f05: $87
    ld [hl], a                                    ; $5f06: $77
    add a                                         ; $5f07: $87
    ld l, b                                       ; $5f08: $68
    add a                                         ; $5f09: $87
    ld a, b                                       ; $5f0a: $78
    add [hl]                                      ; $5f0b: $86
    ld a, b                                       ; $5f0c: $78
    add a                                         ; $5f0d: $87
    ld a, c                                       ; $5f0e: $79
    ld [hl], a                                    ; $5f0f: $77
    adc b                                         ; $5f10: $88
    halt                                          ; $5f11: $76
    adc b                                         ; $5f12: $88
    ld [hl], a                                    ; $5f13: $77
    adc b                                         ; $5f14: $88
    ld [hl], a                                    ; $5f15: $77
    adc b                                         ; $5f16: $88
    ld h, a                                       ; $5f17: $67
    sbc b                                         ; $5f18: $98
    ld [hl], a                                    ; $5f19: $77
    sub a                                         ; $5f1a: $97
    ld l, b                                       ; $5f1b: $68
    add a                                         ; $5f1c: $87
    ld l, b                                       ; $5f1d: $68
    add a                                         ; $5f1e: $87
    ld a, b                                       ; $5f1f: $78
    add [hl]                                      ; $5f20: $86
    ld a, c                                       ; $5f21: $79
    add a                                         ; $5f22: $87
    ld a, c                                       ; $5f23: $79
    add a                                         ; $5f24: $87
    adc b                                         ; $5f25: $88
    halt                                          ; $5f26: $76
    adc b                                         ; $5f27: $88
    ld [hl], a                                    ; $5f28: $77
    adc b                                         ; $5f29: $88
    ld h, a                                       ; $5f2a: $67
    adc b                                         ; $5f2b: $88
    ld [hl], a                                    ; $5f2c: $77
    sub a                                         ; $5f2d: $97
    ld l, b                                       ; $5f2e: $68
    sbc b                                         ; $5f2f: $98
    adc b                                         ; $5f30: $88
    add a                                         ; $5f31: $87
    ld a, b                                       ; $5f32: $78
    add a                                         ; $5f33: $87
    adc b                                         ; $5f34: $88
    add a                                         ; $5f35: $87
    ld a, c                                       ; $5f36: $79
    ld [hl], a                                    ; $5f37: $77
    ld a, b                                       ; $5f38: $78
    add a                                         ; $5f39: $87
    adc b                                         ; $5f3a: $88
    ld [hl], a                                    ; $5f3b: $77
    adc b                                         ; $5f3c: $88
    ld [hl], a                                    ; $5f3d: $77
    adc b                                         ; $5f3e: $88
    ld [hl], a                                    ; $5f3f: $77
    add a                                         ; $5f40: $87
    ld a, b                                       ; $5f41: $78
    sub a                                         ; $5f42: $97
    ld a, b                                       ; $5f43: $78
    add a                                         ; $5f44: $87
    ld l, b                                       ; $5f45: $68
    add a                                         ; $5f46: $87
    ld a, b                                       ; $5f47: $78
    add a                                         ; $5f48: $87
    ld a, c                                       ; $5f49: $79
    ld [hl], a                                    ; $5f4a: $77
    ld a, b                                       ; $5f4b: $78
    ld [hl], a                                    ; $5f4c: $77
    adc b                                         ; $5f4d: $88
    ld [hl], a                                    ; $5f4e: $77
    adc b                                         ; $5f4f: $88
    add a                                         ; $5f50: $87
    adc b                                         ; $5f51: $88
    ld [hl], a                                    ; $5f52: $77
    adc b                                         ; $5f53: $88
    ld [hl], a                                    ; $5f54: $77
    sub a                                         ; $5f55: $97
    ld l, c                                       ; $5f56: $69
    sub a                                         ; $5f57: $97
    ld l, b                                       ; $5f58: $68
    add a                                         ; $5f59: $87
    ld a, b                                       ; $5f5a: $78
    add [hl]                                      ; $5f5b: $86
    ld a, c                                       ; $5f5c: $79
    add [hl]                                      ; $5f5d: $86
    ld l, c                                       ; $5f5e: $69
    halt                                          ; $5f5f: $76
    adc b                                         ; $5f60: $88
    add [hl]                                      ; $5f61: $86
    adc c                                         ; $5f62: $89
    ld [hl], a                                    ; $5f63: $77
    adc b                                         ; $5f64: $88
    ld h, a                                       ; $5f65: $67
    adc b                                         ; $5f66: $88
    ld [hl], a                                    ; $5f67: $77
    sbc b                                         ; $5f68: $98
    ld a, b                                       ; $5f69: $78
    adc b                                         ; $5f6a: $88
    ld h, a                                       ; $5f6b: $67
    sbc b                                         ; $5f6c: $98
    ld l, b                                       ; $5f6d: $68
    sub a                                         ; $5f6e: $97
    ld a, b                                       ; $5f6f: $78
    add [hl]                                      ; $5f70: $86
    ld a, b                                       ; $5f71: $78
    add a                                         ; $5f72: $87
    adc c                                         ; $5f73: $89
    add [hl]                                      ; $5f74: $86
    adc b                                         ; $5f75: $88
    halt                                          ; $5f76: $76
    adc b                                         ; $5f77: $88
    ld [hl], a                                    ; $5f78: $77
    adc c                                         ; $5f79: $89
    ld [hl], a                                    ; $5f7a: $77
    add a                                         ; $5f7b: $87
    ld l, b                                       ; $5f7c: $68
    sbc b                                         ; $5f7d: $98
    ld [hl], a                                    ; $5f7e: $77
    add a                                         ; $5f7f: $87
    ld l, b                                       ; $5f80: $68
    add a                                         ; $5f81: $87
    adc b                                         ; $5f82: $88
    add [hl]                                      ; $5f83: $86
    ld a, c                                       ; $5f84: $79
    adc b                                         ; $5f85: $88
    adc b                                         ; $5f86: $88
    halt                                          ; $5f87: $76
    ld a, c                                       ; $5f88: $79
    sub a                                         ; $5f89: $97
    adc b                                         ; $5f8a: $88
    ld h, a                                       ; $5f8b: $67
    adc b                                         ; $5f8c: $88
    add a                                         ; $5f8d: $87
    adc b                                         ; $5f8e: $88
    ld a, b                                       ; $5f8f: $78
    sbc b                                         ; $5f90: $98
    ld l, b                                       ; $5f91: $68
    add a                                         ; $5f92: $87
    ld l, b                                       ; $5f93: $68
    adc b                                         ; $5f94: $88
    ld [hl], a                                    ; $5f95: $77
    add [hl]                                      ; $5f96: $86
    ld a, b                                       ; $5f97: $78
    add a                                         ; $5f98: $87
    ld a, c                                       ; $5f99: $79
    add [hl]                                      ; $5f9a: $86
    adc b                                         ; $5f9b: $88
    add a                                         ; $5f9c: $87
    adc b                                         ; $5f9d: $88
    ld h, [hl]                                    ; $5f9e: $66
    adc c                                         ; $5f9f: $89
    ld l, b                                       ; $5fa0: $68
    adc b                                         ; $5fa1: $88
    ld h, a                                       ; $5fa2: $67
    sbc b                                         ; $5fa3: $98
    ld [hl], a                                    ; $5fa4: $77
    add a                                         ; $5fa5: $87
    ld l, b                                       ; $5fa6: $68
    add a                                         ; $5fa7: $87
    ld a, b                                       ; $5fa8: $78
    add a                                         ; $5fa9: $87
    ld a, b                                       ; $5faa: $78
    add a                                         ; $5fab: $87
    ld a, b                                       ; $5fac: $78
    add [hl]                                      ; $5fad: $86
    ld l, b                                       ; $5fae: $68
    sub a                                         ; $5faf: $97
    adc c                                         ; $5fb0: $89
    ld [hl], a                                    ; $5fb1: $77
    ld a, c                                       ; $5fb2: $79
    ld a, b                                       ; $5fb3: $78
    adc b                                         ; $5fb4: $88
    ld [hl], a                                    ; $5fb5: $77
    sbc b                                         ; $5fb6: $98
    ld [hl], a                                    ; $5fb7: $77
    adc b                                         ; $5fb8: $88
    ld [hl], a                                    ; $5fb9: $77
    add a                                         ; $5fba: $87
    ld a, b                                       ; $5fbb: $78
    ld a, b                                       ; $5fbc: $78
    ld h, a                                       ; $5fbd: $67
    add [hl]                                      ; $5fbe: $86
    ld a, d                                       ; $5fbf: $7a
    xor b                                         ; $5fc0: $a8
    adc b                                         ; $5fc1: $88
    ld a, b                                       ; $5fc2: $78
    ld l, d                                       ; $5fc3: $6a
    ld e, b                                       ; $5fc4: $58
    ld [hl], a                                    ; $5fc5: $77
    sbc b                                         ; $5fc6: $98
    xor a                                         ; $5fc7: $af
    add a                                         ; $5fc8: $87
    and a                                         ; $5fc9: $a7
    ld d, a                                       ; $5fca: $57
    ld a, e                                       ; $5fcb: $7b
    ld h, [hl]                                    ; $5fcc: $66
    ld a, c                                       ; $5fcd: $79
    ld d, a                                       ; $5fce: $57
    adc b                                         ; $5fcf: $88
    sub a                                         ; $5fd0: $97
    add h                                         ; $5fd1: $84
    ld l, c                                       ; $5fd2: $69
    jr c, jr_012_601c                             ; $5fd3: $38 $47

    ld d, [hl]                                    ; $5fd5: $56
    ld a, c                                       ; $5fd6: $79
    ld [hl], l                                    ; $5fd7: $75
    or a                                          ; $5fd8: $b7
    cp c                                          ; $5fd9: $b9
    ld l, e                                       ; $5fda: $6b
    halt                                          ; $5fdb: $76
    and a                                         ; $5fdc: $a7
    ld l, c                                       ; $5fdd: $69
    ld h, a                                       ; $5fde: $67
    ld [hl], l                                    ; $5fdf: $75
    add a                                         ; $5fe0: $87
    ld c, b                                       ; $5fe1: $48
    ld [hl], l                                    ; $5fe2: $75
    add a                                         ; $5fe3: $87
    halt                                          ; $5fe4: $76
    ld a, b                                       ; $5fe5: $78
    sbc c                                         ; $5fe6: $99
    add [hl]                                      ; $5fe7: $86
    sub l                                         ; $5fe8: $95
    ld e, d                                       ; $5fe9: $5a
    ld [hl], a                                    ; $5fea: $77
    halt                                          ; $5feb: $76
    adc c                                         ; $5fec: $89
    ld a, d                                       ; $5fed: $7a
    ld d, l                                       ; $5fee: $55
    sub l                                         ; $5fef: $95
    add [hl]                                      ; $5ff0: $86
    sbc b                                         ; $5ff1: $98
    ld [hl], a                                    ; $5ff2: $77
    adc b                                         ; $5ff3: $88
    ld e, d                                       ; $5ff4: $5a
    sbc b                                         ; $5ff5: $98
    ld h, a                                       ; $5ff6: $67
    halt                                          ; $5ff7: $76
    adc b                                         ; $5ff8: $88
    sbc b                                         ; $5ff9: $98
    ld h, a                                       ; $5ffa: $67
    ld [hl], a                                    ; $5ffb: $77
    adc c                                         ; $5ffc: $89
    and a                                         ; $5ffd: $a7
    add a                                         ; $5ffe: $87
    add [hl]                                      ; $5fff: $86
    adc c                                         ; $6000: $89
    halt                                          ; $6001: $76
    ld l, c                                       ; $6002: $69
    ld l, c                                       ; $6003: $69
    sub a                                         ; $6004: $97
    add [hl]                                      ; $6005: $86
    sbc b                                         ; $6006: $98
    ld [hl], a                                    ; $6007: $77
    add a                                         ; $6008: $87
    ld e, b                                       ; $6009: $58
    xor b                                         ; $600a: $a8
    ld a, b                                       ; $600b: $78
    sub a                                         ; $600c: $97
    ld l, b                                       ; $600d: $68
    add a                                         ; $600e: $87
    ld a, b                                       ; $600f: $78
    add [hl]                                      ; $6010: $86
    adc b                                         ; $6011: $88
    ld h, l                                       ; $6012: $65
    adc b                                         ; $6013: $88
    adc b                                         ; $6014: $88
    ld a, c                                       ; $6015: $79
    ld h, a                                       ; $6016: $67
    add a                                         ; $6017: $87
    ld [hl], a                                    ; $6018: $77
    sbc b                                         ; $6019: $98
    ld l, c                                       ; $601a: $69
    adc b                                         ; $601b: $88

jr_012_601c:
    add l                                         ; $601c: $85
    and a                                         ; $601d: $a7
    ld a, b                                       ; $601e: $78
    adc b                                         ; $601f: $88
    ld h, a                                       ; $6020: $67
    adc b                                         ; $6021: $88
    ld l, b                                       ; $6022: $68
    sub a                                         ; $6023: $97
    ld a, c                                       ; $6024: $79
    sub [hl]                                      ; $6025: $96
    ld l, c                                       ; $6026: $69
    ld d, [hl]                                    ; $6027: $56
    adc b                                         ; $6028: $88
    sub [hl]                                      ; $6029: $96
    adc b                                         ; $602a: $88
    ld l, b                                       ; $602b: $68
    ld a, c                                       ; $602c: $79
    adc b                                         ; $602d: $88
    adc b                                         ; $602e: $88
    ld l, b                                       ; $602f: $68
    adc b                                         ; $6030: $88
    halt                                          ; $6031: $76
    adc b                                         ; $6032: $88
    adc b                                         ; $6033: $88
    adc b                                         ; $6034: $88
    ld a, c                                       ; $6035: $79
    add a                                         ; $6036: $87
    ld a, b                                       ; $6037: $78
    add a                                         ; $6038: $87
    ld a, b                                       ; $6039: $78
    ld h, [hl]                                    ; $603a: $66
    ld l, c                                       ; $603b: $69
    add a                                         ; $603c: $87
    adc c                                         ; $603d: $89
    ld h, l                                       ; $603e: $65
    ld a, b                                       ; $603f: $78
    adc b                                         ; $6040: $88
    adc b                                         ; $6041: $88
    ld h, a                                       ; $6042: $67
    adc b                                         ; $6043: $88
    halt                                          ; $6044: $76
    sub a                                         ; $6045: $97
    adc c                                         ; $6046: $89
    adc b                                         ; $6047: $88
    ld [hl], a                                    ; $6048: $77
    ld [hl], a                                    ; $6049: $77
    ld a, b                                       ; $604a: $78
    ld [hl], a                                    ; $604b: $77
    adc b                                         ; $604c: $88
    add a                                         ; $604d: $87
    ld a, b                                       ; $604e: $78
    ld [hl], a                                    ; $604f: $77
    ld l, b                                       ; $6050: $68
    add [hl]                                      ; $6051: $86
    adc b                                         ; $6052: $88
    add [hl]                                      ; $6053: $86
    sbc b                                         ; $6054: $98
    add a                                         ; $6055: $87
    adc c                                         ; $6056: $89
    ld l, b                                       ; $6057: $68
    adc b                                         ; $6058: $88
    add a                                         ; $6059: $87
    ld a, b                                       ; $605a: $78
    ld a, c                                       ; $605b: $79
    sub a                                         ; $605c: $97
    ld a, b                                       ; $605d: $78
    add a                                         ; $605e: $87
    ld [hl], a                                    ; $605f: $77
    add [hl]                                      ; $6060: $86
    adc c                                         ; $6061: $89
    add [hl]                                      ; $6062: $86
    ld a, b                                       ; $6063: $78
    ld [hl], a                                    ; $6064: $77
    ld a, c                                       ; $6065: $79
    ld [hl], a                                    ; $6066: $77
    adc b                                         ; $6067: $88
    ld a, b                                       ; $6068: $78
    sbc b                                         ; $6069: $98
    ld [hl], a                                    ; $606a: $77
    sbc b                                         ; $606b: $98
    ld a, b                                       ; $606c: $78
    add a                                         ; $606d: $87
    ld a, b                                       ; $606e: $78
    adc b                                         ; $606f: $88
    adc b                                         ; $6070: $88
    halt                                          ; $6071: $76
    adc c                                         ; $6072: $89
    ld [hl], a                                    ; $6073: $77
    adc b                                         ; $6074: $88
    ld [hl], a                                    ; $6075: $77
    adc c                                         ; $6076: $89
    halt                                          ; $6077: $76
    adc b                                         ; $6078: $88
    add [hl]                                      ; $6079: $86
    ld [hl], a                                    ; $607a: $77
    add a                                         ; $607b: $87
    sbc b                                         ; $607c: $98
    add [hl]                                      ; $607d: $86
    adc c                                         ; $607e: $89
    ld [hl], a                                    ; $607f: $77
    add a                                         ; $6080: $87
    ld h, [hl]                                    ; $6081: $66
    sub a                                         ; $6082: $97
    ld [hl], a                                    ; $6083: $77
    sbc b                                         ; $6084: $98
    ld l, b                                       ; $6085: $68
    add [hl]                                      ; $6086: $86
    ld a, b                                       ; $6087: $78
    add a                                         ; $6088: $87
    adc b                                         ; $6089: $88
    halt                                          ; $608a: $76
    adc c                                         ; $608b: $89
    ld a, b                                       ; $608c: $78
    adc b                                         ; $608d: $88
    halt                                          ; $608e: $76
    sbc c                                         ; $608f: $99
    adc b                                         ; $6090: $88
    sbc b                                         ; $6091: $98
    ld l, b                                       ; $6092: $68
    ld l, b                                       ; $6093: $68
    ld h, a                                       ; $6094: $67
    add a                                         ; $6095: $87
    ld a, b                                       ; $6096: $78
    ld h, a                                       ; $6097: $67
    sub a                                         ; $6098: $97
    ld [hl], a                                    ; $6099: $77
    adc c                                         ; $609a: $89
    add a                                         ; $609b: $87
    adc c                                         ; $609c: $89
    add a                                         ; $609d: $87
    ld a, c                                       ; $609e: $79
    add a                                         ; $609f: $87
    add a                                         ; $60a0: $87
    halt                                          ; $60a1: $76
    adc b                                         ; $60a2: $88
    ld h, [hl]                                    ; $60a3: $66
    adc c                                         ; $60a4: $89
    ld h, a                                       ; $60a5: $67
    adc b                                         ; $60a6: $88
    ld h, [hl]                                    ; $60a7: $66
    adc c                                         ; $60a8: $89
    ld [hl], a                                    ; $60a9: $77
    adc c                                         ; $60aa: $89
    ld [hl], a                                    ; $60ab: $77
    adc b                                         ; $60ac: $88
    add a                                         ; $60ad: $87
    add a                                         ; $60ae: $87
    ld [hl], a                                    ; $60af: $77
    sbc b                                         ; $60b0: $98
    add a                                         ; $60b1: $87
    ld [hl], a                                    ; $60b2: $77
    adc b                                         ; $60b3: $88
    ld [hl], a                                    ; $60b4: $77
    add a                                         ; $60b5: $87
    adc b                                         ; $60b6: $88
    add a                                         ; $60b7: $87
    ld l, b                                       ; $60b8: $68
    sub a                                         ; $60b9: $97
    ld [hl], l                                    ; $60ba: $75
    adc c                                         ; $60bb: $89
    ld h, a                                       ; $60bc: $67
    ld a, b                                       ; $60bd: $78
    adc d                                         ; $60be: $8a
    sbc c                                         ; $60bf: $99
    ld h, [hl]                                    ; $60c0: $66
    call nz, $9988                                ; $60c1: $c4 $88 $99
    ld c, c                                       ; $60c4: $49
    add [hl]                                      ; $60c5: $86
    sbc c                                         ; $60c6: $99
    sub [hl]                                      ; $60c7: $96
    ld h, a                                       ; $60c8: $67
    adc c                                         ; $60c9: $89
    sbc c                                         ; $60ca: $99
    add a                                         ; $60cb: $87
    adc b                                         ; $60cc: $88
    ld h, [hl]                                    ; $60cd: $66
    and a                                         ; $60ce: $a7
    ld l, b                                       ; $60cf: $68
    sub [hl]                                      ; $60d0: $96
    adc b                                         ; $60d1: $88
    add a                                         ; $60d2: $87
    ld a, c                                       ; $60d3: $79
    sub a                                         ; $60d4: $97
    ld l, b                                       ; $60d5: $68
    add l                                         ; $60d6: $85
    adc c                                         ; $60d7: $89
    halt                                          ; $60d8: $76
    ld a, b                                       ; $60d9: $78
    add a                                         ; $60da: $87
    ld a, b                                       ; $60db: $78
    add a                                         ; $60dc: $87
    adc b                                         ; $60dd: $88
    ld a, b                                       ; $60de: $78
    sub a                                         ; $60df: $97
    adc b                                         ; $60e0: $88
    sbc b                                         ; $60e1: $98
    ld a, b                                       ; $60e2: $78
    ld a, b                                       ; $60e3: $78
    ld h, a                                       ; $60e4: $67
    add a                                         ; $60e5: $87
    adc b                                         ; $60e6: $88
    ld a, b                                       ; $60e7: $78
    ld h, a                                       ; $60e8: $67
    sub [hl]                                      ; $60e9: $96
    adc b                                         ; $60ea: $88
    ld a, b                                       ; $60eb: $78
    add a                                         ; $60ec: $87
    add a                                         ; $60ed: $87
    adc b                                         ; $60ee: $88
    ld [hl], a                                    ; $60ef: $77
    ld l, l                                       ; $60f0: $6d
    or d                                          ; $60f1: $b2
    xor d                                         ; $60f2: $aa
    ld e, b                                       ; $60f3: $58
    sub a                                         ; $60f4: $97
    sbc h                                         ; $60f5: $9c
    add [hl]                                      ; $60f6: $86
    sub [hl]                                      ; $60f7: $96
    ld a, c                                       ; $60f8: $79
    ld l, e                                       ; $60f9: $6b
    add a                                         ; $60fa: $87
    sub a                                         ; $60fb: $97
    ld c, b                                       ; $60fc: $48
    sbc b                                         ; $60fd: $98
    ld [hl], a                                    ; $60fe: $77
    ld e, c                                       ; $60ff: $59
    and [hl]                                      ; $6100: $a6
    adc d                                         ; $6101: $8a
    adc d                                         ; $6102: $8a
    ld d, a                                       ; $6103: $57
    ld l, d                                       ; $6104: $6a
    sub a                                         ; $6105: $97
    ld a, b                                       ; $6106: $78
    adc b                                         ; $6107: $88
    ld h, a                                       ; $6108: $67
    ld d, a                                       ; $6109: $57
    or l                                          ; $610a: $b5
    ld a, b                                       ; $610b: $78
    ld c, c                                       ; $610c: $49
    and a                                         ; $610d: $a7
    ld l, c                                       ; $610e: $69
    adc c                                         ; $610f: $89
    sub [hl]                                      ; $6110: $96
    ld a, c                                       ; $6111: $79
    ld l, d                                       ; $6112: $6a
    ld e, c                                       ; $6113: $59
    adc b                                         ; $6114: $88
    ld h, l                                       ; $6115: $65
    adc b                                         ; $6116: $88
    ld a, d                                       ; $6117: $7a
    ld d, [hl]                                    ; $6118: $56
    or [hl]                                       ; $6119: $b6
    adc c                                         ; $611a: $89
    ld l, c                                       ; $611b: $69
    ld [hl], a                                    ; $611c: $77
    and [hl]                                      ; $611d: $a6
    ld e, b                                       ; $611e: $58
    ld a, c                                       ; $611f: $79
    or l                                          ; $6120: $b5
    add [hl]                                      ; $6121: $86
    adc d                                         ; $6122: $8a
    ld e, b                                       ; $6123: $58
    ld [hl], a                                    ; $6124: $77
    ld h, l                                       ; $6125: $65
    xor b                                         ; $6126: $a8
    ld a, b                                       ; $6127: $78
    add [hl]                                      ; $6128: $86
    adc c                                         ; $6129: $89
    ld e, b                                       ; $612a: $58
    xor c                                         ; $612b: $a9
    adc b                                         ; $612c: $88
    ld [hl], a                                    ; $612d: $77
    halt                                          ; $612e: $76
    ld l, b                                       ; $612f: $68
    adc b                                         ; $6130: $88
    sbc c                                         ; $6131: $99
    add [hl]                                      ; $6132: $86
    ld l, b                                       ; $6133: $68
    ld h, a                                       ; $6134: $67
    sub a                                         ; $6135: $97
    ld l, d                                       ; $6136: $6a
    adc b                                         ; $6137: $88
    ld b, a                                       ; $6138: $47
    add [hl]                                      ; $6139: $86
    halt                                          ; $613a: $76
    and a                                         ; $613b: $a7
    ld a, d                                       ; $613c: $7a
    ld [hl], a                                    ; $613d: $77
    sbc c                                         ; $613e: $99
    ld e, c                                       ; $613f: $59
    ld e, b                                       ; $6140: $58
    ld d, [hl]                                    ; $6141: $56
    ld a, d                                       ; $6142: $7a
    halt                                          ; $6143: $76
    adc c                                         ; $6144: $89
    ld h, a                                       ; $6145: $67
    ld [hl], a                                    ; $6146: $77
    adc c                                         ; $6147: $89
    adc d                                         ; $6148: $8a
    ld d, a                                       ; $6149: $57
    halt                                          ; $614a: $76
    or a                                          ; $614b: $b7
    ld l, b                                       ; $614c: $68
    ld h, $86                                     ; $614d: $26 $86
    xor e                                         ; $614f: $ab
    add a                                         ; $6150: $87
    ld d, a                                       ; $6151: $57
    ld [hl], l                                    ; $6152: $75
    sbc d                                         ; $6153: $9a
    ld h, a                                       ; $6154: $67
    and a                                         ; $6155: $a7
    add a                                         ; $6156: $87
    ld a, c                                       ; $6157: $79
    ld a, c                                       ; $6158: $79
    sub [hl]                                      ; $6159: $96
    ld [hl], a                                    ; $615a: $77
    ld a, c                                       ; $615b: $79
    sbc b                                         ; $615c: $98
    halt                                          ; $615d: $76
    ld [hl], a                                    ; $615e: $77
    halt                                          ; $615f: $76
    ld e, d                                       ; $6160: $5a
    sbc b                                         ; $6161: $98
    xor b                                         ; $6162: $a8
    ld h, [hl]                                    ; $6163: $66
    add hl, sp                                    ; $6164: $39
    adc b                                         ; $6165: $88
    and a                                         ; $6166: $a7
    ld h, a                                       ; $6167: $67
    ld c, c                                       ; $6168: $49
    ld a, b                                       ; $6169: $78
    add a                                         ; $616a: $87
    ld [hl], l                                    ; $616b: $75
    adc c                                         ; $616c: $89
    ld a, b                                       ; $616d: $78
    sub a                                         ; $616e: $97
    sub a                                         ; $616f: $97
    add a                                         ; $6170: $87
    add a                                         ; $6171: $87
    ld a, c                                       ; $6172: $79
    ld e, c                                       ; $6173: $59
    adc b                                         ; $6174: $88
    adc b                                         ; $6175: $88
    ld [hl], a                                    ; $6176: $77
    ld d, [hl]                                    ; $6177: $56
    sub a                                         ; $6178: $97
    and [hl]                                      ; $6179: $a6
    and [hl]                                      ; $617a: $a6
    ld a, c                                       ; $617b: $79
    ld b, a                                       ; $617c: $47
    ld l, c                                       ; $617d: $69
    add a                                         ; $617e: $87
    sbc c                                         ; $617f: $99
    ld h, [hl]                                    ; $6180: $66
    add [hl]                                      ; $6181: $86
    sbc b                                         ; $6182: $98
    ld a, b                                       ; $6183: $78
    add a                                         ; $6184: $87
    add [hl]                                      ; $6185: $86
    ld l, c                                       ; $6186: $69
    adc b                                         ; $6187: $88
    ld a, b                                       ; $6188: $78
    add a                                         ; $6189: $87
    ld l, b                                       ; $618a: $68
    ld a, c                                       ; $618b: $79
    adc b                                         ; $618c: $88
    halt                                          ; $618d: $76
    ld a, b                                       ; $618e: $78
    ld [hl], a                                    ; $618f: $77
    adc d                                         ; $6190: $8a
    add a                                         ; $6191: $87
    sub a                                         ; $6192: $97
    add [hl]                                      ; $6193: $86
    adc b                                         ; $6194: $88
    ld a, b                                       ; $6195: $78
    adc b                                         ; $6196: $88
    ld a, b                                       ; $6197: $78
    add [hl]                                      ; $6198: $86
    ld h, a                                       ; $6199: $67
    ld h, a                                       ; $619a: $67
    ld [hl], a                                    ; $619b: $77
    sbc b                                         ; $619c: $98
    adc b                                         ; $619d: $88
    ld [hl], a                                    ; $619e: $77
    ld [hl], a                                    ; $619f: $77
    add a                                         ; $61a0: $87
    add a                                         ; $61a1: $87
    adc b                                         ; $61a2: $88
    adc c                                         ; $61a3: $89
    ld [hl], a                                    ; $61a4: $77
    ld [hl], a                                    ; $61a5: $77
    add a                                         ; $61a6: $87
    ld a, b                                       ; $61a7: $78
    ld [hl], a                                    ; $61a8: $77
    sub [hl]                                      ; $61a9: $96
    ld h, a                                       ; $61aa: $67
    adc b                                         ; $61ab: $88
    halt                                          ; $61ac: $76
    ld l, b                                       ; $61ad: $68
    add a                                         ; $61ae: $87
    sbc c                                         ; $61af: $99
    adc b                                         ; $61b0: $88
    add a                                         ; $61b1: $87
    ld h, a                                       ; $61b2: $67
    sbc b                                         ; $61b3: $98
    ld a, b                                       ; $61b4: $78
    add a                                         ; $61b5: $87
    ld a, b                                       ; $61b6: $78
    ld [hl], a                                    ; $61b7: $77
    adc b                                         ; $61b8: $88
    halt                                          ; $61b9: $76
    add a                                         ; $61ba: $87
    adc b                                         ; $61bb: $88
    ld a, b                                       ; $61bc: $78
    ld a, b                                       ; $61bd: $78
    ld [hl], a                                    ; $61be: $77
    ld l, c                                       ; $61bf: $69
    sbc c                                         ; $61c0: $99
    adc b                                         ; $61c1: $88
    add a                                         ; $61c2: $87
    ld h, a                                       ; $61c3: $67
    adc b                                         ; $61c4: $88
    add a                                         ; $61c5: $87
    adc b                                         ; $61c6: $88
    adc c                                         ; $61c7: $89
    add [hl]                                      ; $61c8: $86
    ld l, c                                       ; $61c9: $69
    ld h, [hl]                                    ; $61ca: $66
    ld a, b                                       ; $61cb: $78
    ld [hl], a                                    ; $61cc: $77
    adc b                                         ; $61cd: $88
    add a                                         ; $61ce: $87
    add a                                         ; $61cf: $87
    adc b                                         ; $61d0: $88
    add a                                         ; $61d1: $87
    adc b                                         ; $61d2: $88
    add a                                         ; $61d3: $87
    ld [hl], a                                    ; $61d4: $77
    ld [hl], a                                    ; $61d5: $77
    ld [hl], a                                    ; $61d6: $77
    adc b                                         ; $61d7: $88
    ld a, b                                       ; $61d8: $78
    adc b                                         ; $61d9: $88
    sub a                                         ; $61da: $97
    ld [hl], a                                    ; $61db: $77
    ld a, b                                       ; $61dc: $78
    add a                                         ; $61dd: $87
    adc c                                         ; $61de: $89
    ld [hl], a                                    ; $61df: $77
    add a                                         ; $61e0: $87
    halt                                          ; $61e1: $76
    add a                                         ; $61e2: $87
    ld l, b                                       ; $61e3: $68
    adc b                                         ; $61e4: $88
    ld a, b                                       ; $61e5: $78
    adc b                                         ; $61e6: $88
    adc b                                         ; $61e7: $88
    sbc b                                         ; $61e8: $98
    add a                                         ; $61e9: $87
    ld [hl], a                                    ; $61ea: $77
    ld h, a                                       ; $61eb: $67
    ld [hl], a                                    ; $61ec: $77
    ld a, b                                       ; $61ed: $78
    add a                                         ; $61ee: $87
    adc c                                         ; $61ef: $89
    add a                                         ; $61f0: $87
    adc b                                         ; $61f1: $88
    ld [hl], a                                    ; $61f2: $77
    ld a, b                                       ; $61f3: $78
    adc b                                         ; $61f4: $88
    ld [hl], a                                    ; $61f5: $77
    ld [hl], a                                    ; $61f6: $77
    adc b                                         ; $61f7: $88
    ld a, b                                       ; $61f8: $78
    adc b                                         ; $61f9: $88
    ld [hl], a                                    ; $61fa: $77
    adc b                                         ; $61fb: $88
    ld [hl], a                                    ; $61fc: $77
    ld [hl], a                                    ; $61fd: $77
    ld [hl], a                                    ; $61fe: $77
    adc b                                         ; $61ff: $88
    ld h, a                                       ; $6200: $67
    add a                                         ; $6201: $87
    ld a, b                                       ; $6202: $78
    adc b                                         ; $6203: $88
    ld [hl], a                                    ; $6204: $77
    adc b                                         ; $6205: $88
    ld a, c                                       ; $6206: $79
    sbc b                                         ; $6207: $98
    sbc b                                         ; $6208: $98
    add l                                         ; $6209: $85
    ld h, a                                       ; $620a: $67
    add [hl]                                      ; $620b: $86
    ld a, c                                       ; $620c: $79
    halt                                          ; $620d: $76
    sbc b                                         ; $620e: $98
    halt                                          ; $620f: $76
    adc b                                         ; $6210: $88
    ld a, b                                       ; $6211: $78
    xor c                                         ; $6212: $a9
    ld a, b                                       ; $6213: $78
    add a                                         ; $6214: $87
    ld h, a                                       ; $6215: $67
    adc b                                         ; $6216: $88
    ld [hl], a                                    ; $6217: $77
    add [hl]                                      ; $6218: $86
    ld d, a                                       ; $6219: $57
    add a                                         ; $621a: $87
    ld l, c                                       ; $621b: $69
    adc b                                         ; $621c: $88
    adc b                                         ; $621d: $88
    sub a                                         ; $621e: $97
    adc b                                         ; $621f: $88
    sbc c                                         ; $6220: $99
    ld l, b                                       ; $6221: $68
    halt                                          ; $6222: $76
    add a                                         ; $6223: $87
    ld h, [hl]                                    ; $6224: $66
    adc b                                         ; $6225: $88
    adc d                                         ; $6226: $8a
    sub a                                         ; $6227: $97
    ld [hl], a                                    ; $6228: $77
    halt                                          ; $6229: $76
    ld a, b                                       ; $622a: $78
    sub a                                         ; $622b: $97
    ld a, c                                       ; $622c: $79
    halt                                          ; $622d: $76
    halt                                          ; $622e: $76
    add a                                         ; $622f: $87
    add a                                         ; $6230: $87
    ld [hl], a                                    ; $6231: $77
    adc d                                         ; $6232: $8a
    sbc b                                         ; $6233: $98
    adc b                                         ; $6234: $88
    ld d, a                                       ; $6235: $57
    sub a                                         ; $6236: $97
    ld [hl], a                                    ; $6237: $77
    ld a, b                                       ; $6238: $78
    ld d, [hl]                                    ; $6239: $56
    ld a, c                                       ; $623a: $79
    adc c                                         ; $623b: $89
    adc b                                         ; $623c: $88
    ld a, b                                       ; $623d: $78
    sub [hl]                                      ; $623e: $96
    adc b                                         ; $623f: $88
    ld h, a                                       ; $6240: $67
    ld a, b                                       ; $6241: $78
    halt                                          ; $6242: $76
    halt                                          ; $6243: $76
    ld [hl], a                                    ; $6244: $77
    ld a, c                                       ; $6245: $79
    ld a, b                                       ; $6246: $78
    sbc b                                         ; $6247: $98
    ld [hl], a                                    ; $6248: $77
    adc b                                         ; $6249: $88
    ld [hl], a                                    ; $624a: $77
    adc b                                         ; $624b: $88
    ld h, a                                       ; $624c: $67
    ld e, b                                       ; $624d: $58
    ld h, [hl]                                    ; $624e: $66
    add a                                         ; $624f: $87
    add a                                         ; $6250: $87
    adc b                                         ; $6251: $88
    ld a, b                                       ; $6252: $78
    add a                                         ; $6253: $87
    ld a, b                                       ; $6254: $78
    ld l, b                                       ; $6255: $68
    xor c                                         ; $6256: $a9
    add [hl]                                      ; $6257: $86
    add a                                         ; $6258: $87
    ld [hl], a                                    ; $6259: $77
    adc d                                         ; $625a: $8a
    adc b                                         ; $625b: $88
    ld a, b                                       ; $625c: $78
    ld a, b                                       ; $625d: $78
    sbc b                                         ; $625e: $98
    adc b                                         ; $625f: $88
    sub a                                         ; $6260: $97
    ld e, b                                       ; $6261: $58
    adc b                                         ; $6262: $88
    adc c                                         ; $6263: $89
    sub a                                         ; $6264: $97
    add a                                         ; $6265: $87
    ld h, a                                       ; $6266: $67
    ld h, a                                       ; $6267: $67
    sbc c                                         ; $6268: $99
    adc c                                         ; $6269: $89
    add a                                         ; $626a: $87
    add [hl]                                      ; $626b: $86
    ld h, a                                       ; $626c: $67
    ld l, b                                       ; $626d: $68
    ld l, b                                       ; $626e: $68
    sbc b                                         ; $626f: $98
    add a                                         ; $6270: $87
    ld h, [hl]                                    ; $6271: $66
    adc b                                         ; $6272: $88
    add a                                         ; $6273: $87
    xor b                                         ; $6274: $a8
    adc c                                         ; $6275: $89
    ld l, b                                       ; $6276: $68
    add a                                         ; $6277: $87
    ld l, c                                       ; $6278: $69
    sub a                                         ; $6279: $97
    add a                                         ; $627a: $87
    add a                                         ; $627b: $87
    ld a, d                                       ; $627c: $7a
    sbc b                                         ; $627d: $98
    halt                                          ; $627e: $76
    halt                                          ; $627f: $76
    ld l, b                                       ; $6280: $68
    add a                                         ; $6281: $87
    sbc c                                         ; $6282: $99
    add [hl]                                      ; $6283: $86
    ld [hl], a                                    ; $6284: $77
    ld d, a                                       ; $6285: $57
    adc b                                         ; $6286: $88
    ld a, c                                       ; $6287: $79
    sbc c                                         ; $6288: $99
    ld [hl], a                                    ; $6289: $77
    add l                                         ; $628a: $85
    ld [hl], a                                    ; $628b: $77
    ld a, c                                       ; $628c: $79
    add a                                         ; $628d: $87
    sbc b                                         ; $628e: $98
    ld [hl], a                                    ; $628f: $77
    ld h, a                                       ; $6290: $67
    adc b                                         ; $6291: $88
    ld h, a                                       ; $6292: $67
    ld d, l                                       ; $6293: $55
    ld h, a                                       ; $6294: $67
    ld l, d                                       ; $6295: $6a
    cp b                                          ; $6296: $b8
    ld l, d                                       ; $6297: $6a
    and [hl]                                      ; $6298: $a6
    sbc b                                         ; $6299: $98
    adc b                                         ; $629a: $88
    xor b                                         ; $629b: $a8
    ld a, b                                       ; $629c: $78
    ld h, a                                       ; $629d: $67
    ld [hl], a                                    ; $629e: $77
    sbc c                                         ; $629f: $99
    ld h, l                                       ; $62a0: $65
    sub [hl]                                      ; $62a1: $96
    halt                                          ; $62a2: $76
    ld l, b                                       ; $62a3: $68
    ld b, a                                       ; $62a4: $47
    ld a, b                                       ; $62a5: $78
    ld l, b                                       ; $62a6: $68
    sub [hl]                                      ; $62a7: $96
    adc c                                         ; $62a8: $89
    ld [hl], a                                    ; $62a9: $77
    or a                                          ; $62aa: $b7
    adc c                                         ; $62ab: $89
    ld a, d                                       ; $62ac: $7a
    ld a, b                                       ; $62ad: $78
    sub a                                         ; $62ae: $97
    halt                                          ; $62af: $76
    sub a                                         ; $62b0: $97
    adc b                                         ; $62b1: $88
    ld [hl], a                                    ; $62b2: $77
    ld [hl], a                                    ; $62b3: $77
    adc c                                         ; $62b4: $89
    add a                                         ; $62b5: $87
    or [hl]                                       ; $62b6: $b6
    adc e                                         ; $62b7: $8b
    ld [hl], a                                    ; $62b8: $77
    add [hl]                                      ; $62b9: $86
    halt                                          ; $62ba: $76
    ld [hl], a                                    ; $62bb: $77
    add a                                         ; $62bc: $87
    sbc d                                         ; $62bd: $9a
    ld [hl], a                                    ; $62be: $77
    ld a, d                                       ; $62bf: $7a
    adc b                                         ; $62c0: $88
    and a                                         ; $62c1: $a7
    sbc b                                         ; $62c2: $98
    ld a, c                                       ; $62c3: $79
    sub a                                         ; $62c4: $97
    sbc c                                         ; $62c5: $99
    add a                                         ; $62c6: $87
    add a                                         ; $62c7: $87
    ld h, [hl]                                    ; $62c8: $66
    sub a                                         ; $62c9: $97
    ld l, c                                       ; $62ca: $69
    add a                                         ; $62cb: $87
    ld h, a                                       ; $62cc: $67
    add [hl]                                      ; $62cd: $86
    adc b                                         ; $62ce: $88
    ld [hl], a                                    ; $62cf: $77
    add a                                         ; $62d0: $87
    ld [hl], a                                    ; $62d1: $77
    halt                                          ; $62d2: $76
    adc c                                         ; $62d3: $89
    adc b                                         ; $62d4: $88
    add a                                         ; $62d5: $87
    add a                                         ; $62d6: $87
    ld a, b                                       ; $62d7: $78
    ld [hl], a                                    ; $62d8: $77
    ld a, b                                       ; $62d9: $78
    adc b                                         ; $62da: $88
    sbc b                                         ; $62db: $98
    ld l, b                                       ; $62dc: $68
    ld h, [hl]                                    ; $62dd: $66
    add [hl]                                      ; $62de: $86
    adc c                                         ; $62df: $89
    adc c                                         ; $62e0: $89
    adc b                                         ; $62e1: $88
    add [hl]                                      ; $62e2: $86
    ld a, b                                       ; $62e3: $78
    halt                                          ; $62e4: $76
    ld a, b                                       ; $62e5: $78
    adc b                                         ; $62e6: $88
    ld [hl], a                                    ; $62e7: $77
    add [hl]                                      ; $62e8: $86
    add a                                         ; $62e9: $87
    adc b                                         ; $62ea: $88
    add a                                         ; $62eb: $87
    sbc b                                         ; $62ec: $98
    ld d, [hl]                                    ; $62ed: $56
    ld h, a                                       ; $62ee: $67
    add a                                         ; $62ef: $87
    ld d, a                                       ; $62f0: $57
    adc b                                         ; $62f1: $88
    ld a, b                                       ; $62f2: $78
    ld [hl], a                                    ; $62f3: $77
    add a                                         ; $62f4: $87
    sub a                                         ; $62f5: $97
    adc b                                         ; $62f6: $88
    sbc c                                         ; $62f7: $99
    adc b                                         ; $62f8: $88
    ld [hl], l                                    ; $62f9: $75
    ld b, a                                       ; $62fa: $47
    ld l, b                                       ; $62fb: $68
    ld a, c                                       ; $62fc: $79
    cp b                                          ; $62fd: $b8
    xor c                                         ; $62fe: $a9
    ld h, l                                       ; $62ff: $65
    add [hl]                                      ; $6300: $86
    ld l, d                                       ; $6301: $6a
    ld [hl], a                                    ; $6302: $77
    ld d, a                                       ; $6303: $57
    ld a, b                                       ; $6304: $78
    sbc b                                         ; $6305: $98
    add l                                         ; $6306: $85
    sbc c                                         ; $6307: $99
    ld a, e                                       ; $6308: $7b
    xor h                                         ; $6309: $ac
    xor d                                         ; $630a: $aa
    and [hl]                                      ; $630b: $a6
    ld [hl], h                                    ; $630c: $74
    add l                                         ; $630d: $85
    ld b, l                                       ; $630e: $45
    ld a, b                                       ; $630f: $78
    adc c                                         ; $6310: $89
    ld l, e                                       ; $6311: $6b
    ld h, a                                       ; $6312: $67
    and h                                         ; $6313: $a4
    xor e                                         ; $6314: $ab
    adc b                                         ; $6315: $88
    or [hl]                                       ; $6316: $b6
    xor b                                         ; $6317: $a8
    ld [hl], $67                                  ; $6318: $36 $67
    ld a, c                                       ; $631a: $79
    adc d                                         ; $631b: $8a
    ld e, b                                       ; $631c: $58
    or a                                          ; $631d: $b7
    sub [hl]                                      ; $631e: $96
    ld [hl], l                                    ; $631f: $75
    add a                                         ; $6320: $87
    sub l                                         ; $6321: $95
    ld a, e                                       ; $6322: $7b
    adc e                                         ; $6323: $8b
    add [hl]                                      ; $6324: $86
    ld h, d                                       ; $6325: $62
    ld l, c                                       ; $6326: $69
    add a                                         ; $6327: $87
    xor c                                         ; $6328: $a9
    ld d, l                                       ; $6329: $55
    sbc c                                         ; $632a: $99
    add [hl]                                      ; $632b: $86
    ld d, e                                       ; $632c: $53
    ld b, h                                       ; $632d: $44
    ld b, a                                       ; $632e: $47
    ld a, d                                       ; $632f: $7a
    adc c                                         ; $6330: $89
    ld l, b                                       ; $6331: $68
    ld d, e                                       ; $6332: $53
    adc e                                         ; $6333: $8b
    sbc d                                         ; $6334: $9a
    ld e, c                                       ; $6335: $59
    ld [hl], l                                    ; $6336: $75
    sub a                                         ; $6337: $97
    sub [hl]                                      ; $6338: $96
    ld l, d                                       ; $6339: $6a
    add a                                         ; $633a: $87
    and a                                         ; $633b: $a7
    ld l, c                                       ; $633c: $69
    ld [hl], a                                    ; $633d: $77
    add a                                         ; $633e: $87
    and a                                         ; $633f: $a7
    xor c                                         ; $6340: $a9
    add [hl]                                      ; $6341: $86
    and h                                         ; $6342: $a4
    ld l, c                                       ; $6343: $69
    add [hl]                                      ; $6344: $86
    sub a                                         ; $6345: $97
    ld l, c                                       ; $6346: $69
    halt                                          ; $6347: $76
    ld h, a                                       ; $6348: $67
    ld l, b                                       ; $6349: $68
    xor l                                         ; $634a: $ad
    ld l, h                                       ; $634b: $6c
    ld [hl], e                                    ; $634c: $73
    sub a                                         ; $634d: $97
    adc h                                         ; $634e: $8c
    ld h, [hl]                                    ; $634f: $66
    adc c                                         ; $6350: $89
    ld a, d                                       ; $6351: $7a
    adc e                                         ; $6352: $8b
    ld e, b                                       ; $6353: $58
    ld d, a                                       ; $6354: $57
    sub l                                         ; $6355: $95
    add [hl]                                      ; $6356: $86
    adc b                                         ; $6357: $88
    add $58                                       ; $6358: $c6 $58
    sub a                                         ; $635a: $97
    ld a, c                                       ; $635b: $79
    ld h, a                                       ; $635c: $67
    adc c                                         ; $635d: $89
    ld a, b                                       ; $635e: $78
    or a                                          ; $635f: $b7
    add l                                         ; $6360: $85
    ld e, c                                       ; $6361: $59
    add [hl]                                      ; $6362: $86
    sub a                                         ; $6363: $97
    ld d, a                                       ; $6364: $57
    ld d, l                                       ; $6365: $55
    sub l                                         ; $6366: $95
    ld e, c                                       ; $6367: $59
    adc d                                         ; $6368: $8a
    ld h, a                                       ; $6369: $67
    adc c                                         ; $636a: $89
    ret z                                         ; $636b: $c8

    ld a, d                                       ; $636c: $7a
    adc e                                         ; $636d: $8b
    ld [hl], h                                    ; $636e: $74
    ld e, d                                       ; $636f: $5a
    adc e                                         ; $6370: $8b
    ld h, a                                       ; $6371: $67
    and h                                         ; $6372: $a4
    sbc c                                         ; $6373: $99
    ld a, b                                       ; $6374: $78
    xor c                                         ; $6375: $a9
    sub [hl]                                      ; $6376: $96
    sub a                                         ; $6377: $97
    ld a, c                                       ; $6378: $79
    adc c                                         ; $6379: $89
    sub h                                         ; $637a: $94
    ld l, h                                       ; $637b: $6c
    add l                                         ; $637c: $85
    ld a, d                                       ; $637d: $7a
    ld h, h                                       ; $637e: $64
    ld c, b                                       ; $637f: $48
    adc b                                         ; $6380: $88
    sbc e                                         ; $6381: $9b
    and [hl]                                      ; $6382: $a6
    ld e, c                                       ; $6383: $59
    add [hl]                                      ; $6384: $86
    ld e, b                                       ; $6385: $58
    ld [hl], a                                    ; $6386: $77
    ld b, d                                       ; $6387: $42
    ld a, b                                       ; $6388: $78
    adc d                                         ; $6389: $8a
    ret z                                         ; $638a: $c8

    ld [hl], a                                    ; $638b: $77
    ld e, b                                       ; $638c: $58
    sbc b                                         ; $638d: $98
    ld [hl], a                                    ; $638e: $77
    ld a, c                                       ; $638f: $79
    sub h                                         ; $6390: $94
    ld e, d                                       ; $6391: $5a
    add l                                         ; $6392: $85
    ld a, c                                       ; $6393: $79
    sub h                                         ; $6394: $94
    sbc e                                         ; $6395: $9b
    add l                                         ; $6396: $85
    ld e, b                                       ; $6397: $58
    ld h, h                                       ; $6398: $64
    sbc b                                         ; $6399: $98
    add a                                         ; $639a: $87
    sbc h                                         ; $639b: $9c
    add a                                         ; $639c: $87
    ld [hl], a                                    ; $639d: $77
    ld [hl], l                                    ; $639e: $75
    ld l, b                                       ; $639f: $68
    adc b                                         ; $63a0: $88
    ld h, a                                       ; $63a1: $67
    add a                                         ; $63a2: $87
    ld [hl], l                                    ; $63a3: $75
    ld [hl], l                                    ; $63a4: $75
    ld l, c                                       ; $63a5: $69
    sub [hl]                                      ; $63a6: $96
    cp e                                          ; $63a7: $bb
    xor c                                         ; $63a8: $a9
    ld a, c                                       ; $63a9: $79
    ld d, h                                       ; $63aa: $54
    ld a, c                                       ; $63ab: $79
    halt                                          ; $63ac: $76
    xor e                                         ; $63ad: $ab
    add a                                         ; $63ae: $87
    sbc b                                         ; $63af: $98
    ld h, h                                       ; $63b0: $64
    xor b                                         ; $63b1: $a8
    ld h, a                                       ; $63b2: $67
    sbc b                                         ; $63b3: $98
    ld h, a                                       ; $63b4: $67
    adc b                                         ; $63b5: $88
    ld [hl], a                                    ; $63b6: $77
    add a                                         ; $63b7: $87
    ld e, b                                       ; $63b8: $58
    and a                                         ; $63b9: $a7
    adc b                                         ; $63ba: $88
    sub a                                         ; $63bb: $97
    ld [hl], a                                    ; $63bc: $77
    add [hl]                                      ; $63bd: $86
    ld e, d                                       ; $63be: $5a
    cp c                                          ; $63bf: $b9
    adc c                                         ; $63c0: $89
    adc b                                         ; $63c1: $88
    ld b, l                                       ; $63c2: $45
    ld d, [hl]                                    ; $63c3: $56
    ld l, b                                       ; $63c4: $68
    cp c                                          ; $63c5: $b9
    add a                                         ; $63c6: $87
    halt                                          ; $63c7: $76
    ld [hl], a                                    ; $63c8: $77
    ld [hl], a                                    ; $63c9: $77
    xor c                                         ; $63ca: $a9
    sbc c                                         ; $63cb: $99
    sbc b                                         ; $63cc: $98
    ld [hl], a                                    ; $63cd: $77
    ld d, [hl]                                    ; $63ce: $56
    ld [hl], a                                    ; $63cf: $77
    sbc d                                         ; $63d0: $9a
    sub a                                         ; $63d1: $97
    ld [hl], a                                    ; $63d2: $77
    ld [hl], l                                    ; $63d3: $75
    ld [hl], a                                    ; $63d4: $77
    sbc c                                         ; $63d5: $99
    ld l, c                                       ; $63d6: $69
    halt                                          ; $63d7: $76
    ld d, [hl]                                    ; $63d8: $56
    halt                                          ; $63d9: $76
    ld a, c                                       ; $63da: $79
    sbc b                                         ; $63db: $98
    adc c                                         ; $63dc: $89
    add [hl]                                      ; $63dd: $86
    adc c                                         ; $63de: $89
    adc b                                         ; $63df: $88
    adc b                                         ; $63e0: $88
    add [hl]                                      ; $63e1: $86
    ld a, b                                       ; $63e2: $78
    ld [hl], l                                    ; $63e3: $75
    ld l, c                                       ; $63e4: $69
    add a                                         ; $63e5: $87
    adc c                                         ; $63e6: $89
    sub l                                         ; $63e7: $95
    adc b                                         ; $63e8: $88
    ld [hl], a                                    ; $63e9: $77
    ld a, d                                       ; $63ea: $7a
    ld h, a                                       ; $63eb: $67
    add a                                         ; $63ec: $87
    add a                                         ; $63ed: $87
    adc b                                         ; $63ee: $88
    ld l, b                                       ; $63ef: $68
    add a                                         ; $63f0: $87
    ld h, a                                       ; $63f1: $67
    sbc b                                         ; $63f2: $98
    adc b                                         ; $63f3: $88
    add a                                         ; $63f4: $87
    ld h, a                                       ; $63f5: $67
    add a                                         ; $63f6: $87
    adc b                                         ; $63f7: $88
    add a                                         ; $63f8: $87
    ld l, c                                       ; $63f9: $69
    ld [hl], a                                    ; $63fa: $77
    add a                                         ; $63fb: $87
    adc b                                         ; $63fc: $88
    ld [hl], a                                    ; $63fd: $77
    ld a, b                                       ; $63fe: $78
    ld h, a                                       ; $63ff: $67
    adc b                                         ; $6400: $88
    adc b                                         ; $6401: $88
    add a                                         ; $6402: $87
    ld a, b                                       ; $6403: $78
    ld [hl], a                                    ; $6404: $77
    ld a, b                                       ; $6405: $78
    adc b                                         ; $6406: $88
    adc c                                         ; $6407: $89
    add a                                         ; $6408: $87
    ld [hl], a                                    ; $6409: $77
    ld [hl], a                                    ; $640a: $77
    ld [hl], a                                    ; $640b: $77
    ld a, b                                       ; $640c: $78
    add a                                         ; $640d: $87
    ld a, b                                       ; $640e: $78
    ld a, b                                       ; $640f: $78
    adc b                                         ; $6410: $88
    add a                                         ; $6411: $87
    adc c                                         ; $6412: $89
    ld [hl], a                                    ; $6413: $77
    add [hl]                                      ; $6414: $86
    halt                                          ; $6415: $76
    add a                                         ; $6416: $87
    adc b                                         ; $6417: $88
    adc b                                         ; $6418: $88
    ld a, b                                       ; $6419: $78
    ld [hl], a                                    ; $641a: $77
    ld a, b                                       ; $641b: $78
    adc b                                         ; $641c: $88
    adc b                                         ; $641d: $88
    add a                                         ; $641e: $87
    ld [hl], a                                    ; $641f: $77
    add a                                         ; $6420: $87
    ld a, b                                       ; $6421: $78
    add a                                         ; $6422: $87
    adc b                                         ; $6423: $88
    add a                                         ; $6424: $87
    add a                                         ; $6425: $87
    ld [hl], a                                    ; $6426: $77
    adc b                                         ; $6427: $88
    ld [hl], a                                    ; $6428: $77
    add a                                         ; $6429: $87
    ld a, b                                       ; $642a: $78
    adc b                                         ; $642b: $88
    ld [hl], a                                    ; $642c: $77
    adc b                                         ; $642d: $88
    adc b                                         ; $642e: $88
    add a                                         ; $642f: $87
    add a                                         ; $6430: $87
    ld [hl], a                                    ; $6431: $77
    ld [hl], a                                    ; $6432: $77
    adc b                                         ; $6433: $88
    ld [hl], a                                    ; $6434: $77
    ld a, b                                       ; $6435: $78
    ld a, b                                       ; $6436: $78
    add a                                         ; $6437: $87
    add a                                         ; $6438: $87
    ld [hl], a                                    ; $6439: $77
    ld a, b                                       ; $643a: $78
    adc b                                         ; $643b: $88
    sbc c                                         ; $643c: $99
    sbc b                                         ; $643d: $98
    add a                                         ; $643e: $87
    ld [hl], a                                    ; $643f: $77
    add a                                         ; $6440: $87
    ld h, a                                       ; $6441: $67
    adc b                                         ; $6442: $88
    adc b                                         ; $6443: $88
    adc c                                         ; $6444: $89
    adc b                                         ; $6445: $88
    adc b                                         ; $6446: $88
    adc b                                         ; $6447: $88
    add a                                         ; $6448: $87
    ld [hl], a                                    ; $6449: $77
    ld h, [hl]                                    ; $644a: $66
    ld [hl], a                                    ; $644b: $77
    adc b                                         ; $644c: $88
    sbc c                                         ; $644d: $99
    add a                                         ; $644e: $87
    ld [hl], a                                    ; $644f: $77
    add a                                         ; $6450: $87
    adc b                                         ; $6451: $88
    adc b                                         ; $6452: $88
    adc c                                         ; $6453: $89
    ld [hl], a                                    ; $6454: $77
    ld [hl], a                                    ; $6455: $77
    ld [hl], a                                    ; $6456: $77
    adc b                                         ; $6457: $88
    ld a, b                                       ; $6458: $78
    add a                                         ; $6459: $87
    ld [hl], a                                    ; $645a: $77
    add a                                         ; $645b: $87
    ld a, b                                       ; $645c: $78
    ld [hl], a                                    ; $645d: $77
    ld a, b                                       ; $645e: $78
    adc b                                         ; $645f: $88
    add a                                         ; $6460: $87
    ld [hl], a                                    ; $6461: $77
    ld [hl], a                                    ; $6462: $77
    ld a, b                                       ; $6463: $78
    adc b                                         ; $6464: $88
    add a                                         ; $6465: $87
    adc b                                         ; $6466: $88
    adc b                                         ; $6467: $88
    add a                                         ; $6468: $87
    ld [hl], a                                    ; $6469: $77
    ld [hl], a                                    ; $646a: $77
    ld a, b                                       ; $646b: $78
    ld [hl], a                                    ; $646c: $77
    ld [hl], a                                    ; $646d: $77
    add a                                         ; $646e: $87
    adc b                                         ; $646f: $88
    adc b                                         ; $6470: $88
    adc b                                         ; $6471: $88
    adc b                                         ; $6472: $88
    adc b                                         ; $6473: $88
    add a                                         ; $6474: $87
    ld [hl], a                                    ; $6475: $77
    ld [hl], a                                    ; $6476: $77
    adc b                                         ; $6477: $88
    adc b                                         ; $6478: $88
    adc b                                         ; $6479: $88
    ld [hl], a                                    ; $647a: $77
    ld [hl], a                                    ; $647b: $77
    ld [hl], a                                    ; $647c: $77
    adc b                                         ; $647d: $88
    adc b                                         ; $647e: $88
    adc b                                         ; $647f: $88
    add a                                         ; $6480: $87
    ld [hl], a                                    ; $6481: $77
    ld a, b                                       ; $6482: $78
    adc b                                         ; $6483: $88
    adc b                                         ; $6484: $88
    ld [hl], a                                    ; $6485: $77
    ld [hl], a                                    ; $6486: $77
    ld [hl], a                                    ; $6487: $77
    adc b                                         ; $6488: $88
    adc b                                         ; $6489: $88
    adc b                                         ; $648a: $88
    add a                                         ; $648b: $87
    ld [hl], a                                    ; $648c: $77
    ld [hl], a                                    ; $648d: $77
    ld a, b                                       ; $648e: $78
    ld [hl], a                                    ; $648f: $77
    add a                                         ; $6490: $87
    ld a, b                                       ; $6491: $78
    adc b                                         ; $6492: $88
    adc b                                         ; $6493: $88
    adc b                                         ; $6494: $88
    adc b                                         ; $6495: $88
    add a                                         ; $6496: $87
    ld [hl], a                                    ; $6497: $77
    ld [hl], a                                    ; $6498: $77
    ld a, b                                       ; $6499: $78
    ld [hl], a                                    ; $649a: $77
    ld a, b                                       ; $649b: $78
    adc b                                         ; $649c: $88
    adc b                                         ; $649d: $88
    adc b                                         ; $649e: $88
    adc b                                         ; $649f: $88
    add a                                         ; $64a0: $87
    adc b                                         ; $64a1: $88
    ld [hl], a                                    ; $64a2: $77
    adc b                                         ; $64a3: $88
    ld [hl], a                                    ; $64a4: $77
    add a                                         ; $64a5: $87
    ld a, b                                       ; $64a6: $78
    add a                                         ; $64a7: $87
    ld [hl], a                                    ; $64a8: $77
    adc b                                         ; $64a9: $88
    adc b                                         ; $64aa: $88
    add a                                         ; $64ab: $87
    ld a, b                                       ; $64ac: $78
    ld [hl], a                                    ; $64ad: $77
    ld a, b                                       ; $64ae: $78
    add a                                         ; $64af: $87
    adc b                                         ; $64b0: $88
    ld [hl], a                                    ; $64b1: $77
    ld a, b                                       ; $64b2: $78
    ld [hl], a                                    ; $64b3: $77
    adc b                                         ; $64b4: $88
    adc b                                         ; $64b5: $88
    adc b                                         ; $64b6: $88
    add a                                         ; $64b7: $87
    adc b                                         ; $64b8: $88
    ld [hl], a                                    ; $64b9: $77
    add a                                         ; $64ba: $87
    ld [hl], a                                    ; $64bb: $77
    add a                                         ; $64bc: $87
    ld a, b                                       ; $64bd: $78
    adc b                                         ; $64be: $88
    adc b                                         ; $64bf: $88
    adc b                                         ; $64c0: $88
    ld a, b                                       ; $64c1: $78
    ld [hl], a                                    ; $64c2: $77
    ld [hl], a                                    ; $64c3: $77
    ld [hl], a                                    ; $64c4: $77
    adc b                                         ; $64c5: $88
    adc b                                         ; $64c6: $88
    add a                                         ; $64c7: $87
    ld [hl], a                                    ; $64c8: $77
    adc b                                         ; $64c9: $88
    adc b                                         ; $64ca: $88
    adc b                                         ; $64cb: $88
    ld [hl], a                                    ; $64cc: $77
    ld [hl], a                                    ; $64cd: $77
    ld [hl], a                                    ; $64ce: $77
    ld [hl], a                                    ; $64cf: $77
    adc b                                         ; $64d0: $88
    add a                                         ; $64d1: $87
    ld a, b                                       ; $64d2: $78
    add a                                         ; $64d3: $87
    ld a, b                                       ; $64d4: $78
    add a                                         ; $64d5: $87
    adc b                                         ; $64d6: $88
    add a                                         ; $64d7: $87
    adc b                                         ; $64d8: $88
    ld [hl], a                                    ; $64d9: $77
    ld [hl], a                                    ; $64da: $77
    ld [hl], a                                    ; $64db: $77
    ld a, b                                       ; $64dc: $78
    adc b                                         ; $64dd: $88
    adc b                                         ; $64de: $88
    adc b                                         ; $64df: $88
    adc b                                         ; $64e0: $88
    ld a, b                                       ; $64e1: $78
    adc b                                         ; $64e2: $88
    ld [hl], a                                    ; $64e3: $77
    ld [hl], a                                    ; $64e4: $77
    ld a, b                                       ; $64e5: $78
    add a                                         ; $64e6: $87
    ld a, b                                       ; $64e7: $78
    add a                                         ; $64e8: $87
    ld a, b                                       ; $64e9: $78
    add a                                         ; $64ea: $87
    adc b                                         ; $64eb: $88
    add a                                         ; $64ec: $87
    adc b                                         ; $64ed: $88
    ld [hl], a                                    ; $64ee: $77
    adc b                                         ; $64ef: $88
    add a                                         ; $64f0: $87
    ld [hl], a                                    ; $64f1: $77
    ld [hl], a                                    ; $64f2: $77
    ld a, b                                       ; $64f3: $78
    adc b                                         ; $64f4: $88
    adc b                                         ; $64f5: $88
    ld a, b                                       ; $64f6: $78
    add a                                         ; $64f7: $87
    ld a, b                                       ; $64f8: $78
    add a                                         ; $64f9: $87
    ld [hl], a                                    ; $64fa: $77
    add a                                         ; $64fb: $87
    ld a, b                                       ; $64fc: $78
    add a                                         ; $64fd: $87
    ld [hl], a                                    ; $64fe: $77
    ld [hl], a                                    ; $64ff: $77
    adc b                                         ; $6500: $88
    add a                                         ; $6501: $87
    adc b                                         ; $6502: $88
    adc b                                         ; $6503: $88
    adc b                                         ; $6504: $88
    ld [hl], a                                    ; $6505: $77
    adc b                                         ; $6506: $88
    adc b                                         ; $6507: $88
    adc b                                         ; $6508: $88
    ld a, b                                       ; $6509: $78
    add a                                         ; $650a: $87
    ld [hl], a                                    ; $650b: $77
    adc b                                         ; $650c: $88
    ld a, b                                       ; $650d: $78
    add a                                         ; $650e: $87
    ld [hl], a                                    ; $650f: $77
    add a                                         ; $6510: $87
    ld [hl], a                                    ; $6511: $77
    ld [hl], a                                    ; $6512: $77
    ld a, b                                       ; $6513: $78
    adc b                                         ; $6514: $88
    adc b                                         ; $6515: $88
    add a                                         ; $6516: $87
    ld a, b                                       ; $6517: $78
    ld [hl], a                                    ; $6518: $77
    ld [hl], a                                    ; $6519: $77
    ld [hl], a                                    ; $651a: $77
    adc b                                         ; $651b: $88
    adc b                                         ; $651c: $88
    adc b                                         ; $651d: $88
    ld a, b                                       ; $651e: $78
    add a                                         ; $651f: $87
    adc b                                         ; $6520: $88
    adc b                                         ; $6521: $88
    ld [hl], a                                    ; $6522: $77
    add a                                         ; $6523: $87
    ld a, b                                       ; $6524: $78
    add a                                         ; $6525: $87
    add a                                         ; $6526: $87
    ld [hl], a                                    ; $6527: $77
    adc b                                         ; $6528: $88
    adc b                                         ; $6529: $88
    adc b                                         ; $652a: $88
    adc b                                         ; $652b: $88
    adc b                                         ; $652c: $88
    halt                                          ; $652d: $76
    ld h, a                                       ; $652e: $67
    ld [hl], a                                    ; $652f: $77
    add a                                         ; $6530: $87
    ld a, b                                       ; $6531: $78
    sbc c                                         ; $6532: $99
    adc b                                         ; $6533: $88
    add a                                         ; $6534: $87
    ld [hl], a                                    ; $6535: $77
    halt                                          ; $6536: $76
    ld [hl], a                                    ; $6537: $77
    add a                                         ; $6538: $87
    ld [hl], a                                    ; $6539: $77
    ld a, b                                       ; $653a: $78
    adc b                                         ; $653b: $88
    adc b                                         ; $653c: $88
    adc b                                         ; $653d: $88
    adc b                                         ; $653e: $88
    adc b                                         ; $653f: $88
    add a                                         ; $6540: $87
    adc b                                         ; $6541: $88
    adc b                                         ; $6542: $88
    adc b                                         ; $6543: $88
    ld [hl], a                                    ; $6544: $77
    ld [hl], a                                    ; $6545: $77
    ld [hl], a                                    ; $6546: $77
    adc b                                         ; $6547: $88
    adc b                                         ; $6548: $88
    adc b                                         ; $6549: $88
    adc b                                         ; $654a: $88
    adc b                                         ; $654b: $88
    adc b                                         ; $654c: $88
    add a                                         ; $654d: $87
    ld [hl], a                                    ; $654e: $77
    ld [hl], a                                    ; $654f: $77
    add a                                         ; $6550: $87
    ld [hl], a                                    ; $6551: $77
    ld a, b                                       ; $6552: $78
    adc b                                         ; $6553: $88
    adc b                                         ; $6554: $88
    ld a, b                                       ; $6555: $78
    adc b                                         ; $6556: $88
    ld [hl], a                                    ; $6557: $77
    ld a, b                                       ; $6558: $78
    ld a, b                                       ; $6559: $78
    adc b                                         ; $655a: $88
    ld [hl], a                                    ; $655b: $77
    ld [hl], a                                    ; $655c: $77
    ld a, b                                       ; $655d: $78
    adc b                                         ; $655e: $88
    adc b                                         ; $655f: $88
    adc b                                         ; $6560: $88
    adc b                                         ; $6561: $88
    add a                                         ; $6562: $87
    ld a, b                                       ; $6563: $78
    adc b                                         ; $6564: $88
    adc b                                         ; $6565: $88
    ld [hl], a                                    ; $6566: $77
    adc b                                         ; $6567: $88
    adc b                                         ; $6568: $88
    adc b                                         ; $6569: $88
    ld [hl], a                                    ; $656a: $77
    adc b                                         ; $656b: $88
    ld [hl], a                                    ; $656c: $77
    ld [hl], a                                    ; $656d: $77
    ld [hl], a                                    ; $656e: $77
    ld [hl], a                                    ; $656f: $77
    add a                                         ; $6570: $87
    ld [hl], a                                    ; $6571: $77
    ld a, b                                       ; $6572: $78
    add a                                         ; $6573: $87
    ld [hl], a                                    ; $6574: $77
    add a                                         ; $6575: $87
    ld a, b                                       ; $6576: $78
    ld [hl], a                                    ; $6577: $77
    ld a, b                                       ; $6578: $78
    adc b                                         ; $6579: $88
    adc b                                         ; $657a: $88
    add a                                         ; $657b: $87
    adc b                                         ; $657c: $88
    ld [hl], a                                    ; $657d: $77
    adc b                                         ; $657e: $88
    adc b                                         ; $657f: $88
    add a                                         ; $6580: $87
    ld [hl], a                                    ; $6581: $77
    ld [hl], a                                    ; $6582: $77
    ld [hl], a                                    ; $6583: $77
    adc b                                         ; $6584: $88
    adc b                                         ; $6585: $88
    add a                                         ; $6586: $87
    ld a, b                                       ; $6587: $78
    add a                                         ; $6588: $87
    ld a, b                                       ; $6589: $78
    adc b                                         ; $658a: $88
    ld a, b                                       ; $658b: $78
    ld [hl], a                                    ; $658c: $77
    ld a, b                                       ; $658d: $78
    ld [hl], a                                    ; $658e: $77
    ld a, b                                       ; $658f: $78
    add a                                         ; $6590: $87
    adc b                                         ; $6591: $88
    ld a, b                                       ; $6592: $78
    adc b                                         ; $6593: $88
    ld [hl], a                                    ; $6594: $77
    adc b                                         ; $6595: $88
    ld a, b                                       ; $6596: $78
    add a                                         ; $6597: $87
    ld a, b                                       ; $6598: $78
    add a                                         ; $6599: $87
    ld [hl], a                                    ; $659a: $77
    ld [hl], a                                    ; $659b: $77
    ld a, b                                       ; $659c: $78
    adc b                                         ; $659d: $88
    adc b                                         ; $659e: $88
    add a                                         ; $659f: $87
    adc b                                         ; $65a0: $88
    ld [hl], a                                    ; $65a1: $77
    ld a, b                                       ; $65a2: $78
    adc b                                         ; $65a3: $88
    adc b                                         ; $65a4: $88
    ld [hl], a                                    ; $65a5: $77
    adc b                                         ; $65a6: $88
    adc b                                         ; $65a7: $88
    adc b                                         ; $65a8: $88
    ld a, b                                       ; $65a9: $78
    add a                                         ; $65aa: $87
    ld [hl], a                                    ; $65ab: $77
    ld [hl], a                                    ; $65ac: $77
    ld a, b                                       ; $65ad: $78
    add a                                         ; $65ae: $87
    ld a, b                                       ; $65af: $78
    add a                                         ; $65b0: $87
    ld a, b                                       ; $65b1: $78
    add a                                         ; $65b2: $87
    ld a, b                                       ; $65b3: $78
    add a                                         ; $65b4: $87
    adc b                                         ; $65b5: $88
    add a                                         ; $65b6: $87
    adc b                                         ; $65b7: $88
    ld [hl], a                                    ; $65b8: $77
    ld [hl], a                                    ; $65b9: $77
    ld [hl], a                                    ; $65ba: $77
    ld [hl], a                                    ; $65bb: $77
    ld [hl], a                                    ; $65bc: $77
    adc b                                         ; $65bd: $88
    ld a, b                                       ; $65be: $78
    add a                                         ; $65bf: $87
    adc b                                         ; $65c0: $88
    adc b                                         ; $65c1: $88
    adc b                                         ; $65c2: $88
    add a                                         ; $65c3: $87
    ld a, b                                       ; $65c4: $78
    adc b                                         ; $65c5: $88
    adc b                                         ; $65c6: $88
    ld [hl], a                                    ; $65c7: $77
    ld [hl], a                                    ; $65c8: $77
    ld [hl], a                                    ; $65c9: $77
    adc b                                         ; $65ca: $88
    adc b                                         ; $65cb: $88
    adc b                                         ; $65cc: $88
    ld [hl], a                                    ; $65cd: $77
    ld [hl], a                                    ; $65ce: $77
    ld [hl], a                                    ; $65cf: $77
    add a                                         ; $65d0: $87
    ld a, b                                       ; $65d1: $78
    adc b                                         ; $65d2: $88
    ld [hl], a                                    ; $65d3: $77
    ld [hl], a                                    ; $65d4: $77
    ld a, b                                       ; $65d5: $78
    add a                                         ; $65d6: $87
    ld a, b                                       ; $65d7: $78
    add a                                         ; $65d8: $87
    ld a, b                                       ; $65d9: $78
    adc b                                         ; $65da: $88
    adc b                                         ; $65db: $88
    ld [hl], a                                    ; $65dc: $77
    adc b                                         ; $65dd: $88
    add a                                         ; $65de: $87
    adc b                                         ; $65df: $88
    add a                                         ; $65e0: $87
    add a                                         ; $65e1: $87
    ld [hl], a                                    ; $65e2: $77
    ld [hl], a                                    ; $65e3: $77
    ld [hl], a                                    ; $65e4: $77
    adc b                                         ; $65e5: $88
    ld a, b                                       ; $65e6: $78
    add a                                         ; $65e7: $87
    ld a, b                                       ; $65e8: $78
    adc b                                         ; $65e9: $88
    ld a, b                                       ; $65ea: $78
    adc b                                         ; $65eb: $88
    adc b                                         ; $65ec: $88
    add a                                         ; $65ed: $87
    ld a, b                                       ; $65ee: $78
    ld [hl], a                                    ; $65ef: $77
    adc b                                         ; $65f0: $88
    add a                                         ; $65f1: $87
    adc b                                         ; $65f2: $88
    ld [hl], a                                    ; $65f3: $77
    ld [hl], a                                    ; $65f4: $77
    ld [hl], a                                    ; $65f5: $77
    adc b                                         ; $65f6: $88
    ld [hl], a                                    ; $65f7: $77
    add a                                         ; $65f8: $87
    ld [hl], a                                    ; $65f9: $77
    adc b                                         ; $65fa: $88
    ld a, b                                       ; $65fb: $78
    add a                                         ; $65fc: $87
    ld a, b                                       ; $65fd: $78
    add a                                         ; $65fe: $87
    ld a, b                                       ; $65ff: $78
    add a                                         ; $6600: $87
    ld a, b                                       ; $6601: $78
    add a                                         ; $6602: $87
    ld a, b                                       ; $6603: $78
    add a                                         ; $6604: $87
    adc b                                         ; $6605: $88
    add a                                         ; $6606: $87
    adc b                                         ; $6607: $88
    adc b                                         ; $6608: $88
    adc b                                         ; $6609: $88
    ld [hl], a                                    ; $660a: $77
    add a                                         ; $660b: $87
    ld [hl], a                                    ; $660c: $77
    adc b                                         ; $660d: $88
    ld [hl], a                                    ; $660e: $77
    add a                                         ; $660f: $87
    add a                                         ; $6610: $87
    add a                                         ; $6611: $87
    ld a, b                                       ; $6612: $78
    add a                                         ; $6613: $87
    ld a, b                                       ; $6614: $78
    ld [hl], a                                    ; $6615: $77
    ld [hl], a                                    ; $6616: $77
    ld [hl], a                                    ; $6617: $77
    ld a, b                                       ; $6618: $78
    ld [hl], a                                    ; $6619: $77
    adc b                                         ; $661a: $88
    ld a, b                                       ; $661b: $78
    adc b                                         ; $661c: $88
    adc b                                         ; $661d: $88
    adc b                                         ; $661e: $88
    add a                                         ; $661f: $87
    adc b                                         ; $6620: $88
    ld a, b                                       ; $6621: $78
    add a                                         ; $6622: $87
    ld a, b                                       ; $6623: $78
    add a                                         ; $6624: $87
    ld [hl], a                                    ; $6625: $77
    add a                                         ; $6626: $87
    ld a, b                                       ; $6627: $78
    add a                                         ; $6628: $87
    adc b                                         ; $6629: $88
    add a                                         ; $662a: $87
    ld a, b                                       ; $662b: $78
    ld [hl], a                                    ; $662c: $77
    ld a, b                                       ; $662d: $78
    ld [hl], a                                    ; $662e: $77
    adc b                                         ; $662f: $88
    add a                                         ; $6630: $87
    add a                                         ; $6631: $87
    ld [hl], a                                    ; $6632: $77
    add a                                         ; $6633: $87
    ld [hl], a                                    ; $6634: $77
    add a                                         ; $6635: $87
    ld [hl], a                                    ; $6636: $77
    add a                                         ; $6637: $87
    ld a, b                                       ; $6638: $78
    add a                                         ; $6639: $87
    adc b                                         ; $663a: $88
    adc b                                         ; $663b: $88
    adc b                                         ; $663c: $88
    add a                                         ; $663d: $87
    adc b                                         ; $663e: $88
    add a                                         ; $663f: $87
    adc b                                         ; $6640: $88
    ld [hl], a                                    ; $6641: $77
    ld a, b                                       ; $6642: $78
    ld [hl], a                                    ; $6643: $77
    adc b                                         ; $6644: $88
    ld [hl], a                                    ; $6645: $77
    adc b                                         ; $6646: $88
    ld [hl], a                                    ; $6647: $77
    add a                                         ; $6648: $87
    ld [hl], a                                    ; $6649: $77
    adc b                                         ; $664a: $88
    ld a, b                                       ; $664b: $78
    add a                                         ; $664c: $87
    ld [hl], a                                    ; $664d: $77
    add a                                         ; $664e: $87
    ld a, b                                       ; $664f: $78
    add a                                         ; $6650: $87
    adc b                                         ; $6651: $88
    add a                                         ; $6652: $87
    adc b                                         ; $6653: $88
    add a                                         ; $6654: $87
    ld a, b                                       ; $6655: $78
    ld [hl], a                                    ; $6656: $77
    ld [hl], a                                    ; $6657: $77
    ld [hl], a                                    ; $6658: $77
    ld [hl], a                                    ; $6659: $77
    ld [hl], a                                    ; $665a: $77
    adc b                                         ; $665b: $88
    adc b                                         ; $665c: $88
    adc b                                         ; $665d: $88
    ld a, b                                       ; $665e: $78
    adc b                                         ; $665f: $88
    adc b                                         ; $6660: $88
    add a                                         ; $6661: $87
    ld [hl], a                                    ; $6662: $77
    ld [hl], a                                    ; $6663: $77
    ld [hl], a                                    ; $6664: $77
    ld [hl], a                                    ; $6665: $77
    ld a, b                                       ; $6666: $78
    ld [hl], a                                    ; $6667: $77
    adc b                                         ; $6668: $88
    adc b                                         ; $6669: $88
    adc b                                         ; $666a: $88
    ld [hl], a                                    ; $666b: $77
    adc b                                         ; $666c: $88
    ld [hl], a                                    ; $666d: $77
    adc b                                         ; $666e: $88
    adc b                                         ; $666f: $88
    adc b                                         ; $6670: $88
    ld [hl], a                                    ; $6671: $77
    add a                                         ; $6672: $87
    ld [hl], a                                    ; $6673: $77
    add a                                         ; $6674: $87
    ld [hl], a                                    ; $6675: $77
    add a                                         ; $6676: $87
    ld a, b                                       ; $6677: $78
    add a                                         ; $6678: $87
    ld a, b                                       ; $6679: $78
    ld [hl], a                                    ; $667a: $77
    ld a, b                                       ; $667b: $78
    ld [hl], a                                    ; $667c: $77
    adc b                                         ; $667d: $88
    add a                                         ; $667e: $87
    adc b                                         ; $667f: $88
    add a                                         ; $6680: $87
    adc b                                         ; $6681: $88
    ld [hl], a                                    ; $6682: $77
    adc b                                         ; $6683: $88
    ld [hl], a                                    ; $6684: $77
    add a                                         ; $6685: $87
    ld [hl], a                                    ; $6686: $77
    adc b                                         ; $6687: $88
    ld a, b                                       ; $6688: $78
    adc b                                         ; $6689: $88
    ld a, b                                       ; $668a: $78
    adc b                                         ; $668b: $88
    adc b                                         ; $668c: $88
    adc b                                         ; $668d: $88
    adc b                                         ; $668e: $88
    add a                                         ; $668f: $87
    adc b                                         ; $6690: $88
    ld [hl], a                                    ; $6691: $77
    ld [hl], a                                    ; $6692: $77
    ld [hl], a                                    ; $6693: $77
    ld a, b                                       ; $6694: $78
    ld [hl], a                                    ; $6695: $77
    adc b                                         ; $6696: $88
    ld a, b                                       ; $6697: $78
    adc b                                         ; $6698: $88
    ld a, b                                       ; $6699: $78
    adc b                                         ; $669a: $88
    ld [hl], a                                    ; $669b: $77
    ld [hl], a                                    ; $669c: $77
    ld [hl], a                                    ; $669d: $77
    ld [hl], a                                    ; $669e: $77
    ld [hl], a                                    ; $669f: $77
    add a                                         ; $66a0: $87
    ld a, b                                       ; $66a1: $78
    add a                                         ; $66a2: $87
    adc b                                         ; $66a3: $88
    add a                                         ; $66a4: $87
    adc b                                         ; $66a5: $88
    adc b                                         ; $66a6: $88
    adc b                                         ; $66a7: $88
    add a                                         ; $66a8: $87
    adc b                                         ; $66a9: $88
    adc b                                         ; $66aa: $88
    adc b                                         ; $66ab: $88
    ld [hl], a                                    ; $66ac: $77
    add a                                         ; $66ad: $87
    ld [hl], a                                    ; $66ae: $77
    ld [hl], a                                    ; $66af: $77
    add a                                         ; $66b0: $87
    ld [hl], a                                    ; $66b1: $77
    ld [hl], a                                    ; $66b2: $77
    ld [hl], a                                    ; $66b3: $77
    ld a, b                                       ; $66b4: $78
    add a                                         ; $66b5: $87
    adc b                                         ; $66b6: $88
    adc b                                         ; $66b7: $88
    adc b                                         ; $66b8: $88
    add a                                         ; $66b9: $87
    adc b                                         ; $66ba: $88
    ld [hl], a                                    ; $66bb: $77
    add a                                         ; $66bc: $87
    ld [hl], a                                    ; $66bd: $77
    adc b                                         ; $66be: $88
    ld [hl], a                                    ; $66bf: $77
    add a                                         ; $66c0: $87
    ld [hl], a                                    ; $66c1: $77
    adc b                                         ; $66c2: $88
    adc b                                         ; $66c3: $88
    adc b                                         ; $66c4: $88
    ld a, b                                       ; $66c5: $78
    add a                                         ; $66c6: $87
    ld a, b                                       ; $66c7: $78
    ld [hl], a                                    ; $66c8: $77
    ld a, b                                       ; $66c9: $78
    add a                                         ; $66ca: $87
    adc b                                         ; $66cb: $88
    add a                                         ; $66cc: $87
    adc b                                         ; $66cd: $88
    add a                                         ; $66ce: $87
    adc b                                         ; $66cf: $88
    adc b                                         ; $66d0: $88
    adc b                                         ; $66d1: $88
    ld [hl], a                                    ; $66d2: $77
    ld [hl], a                                    ; $66d3: $77
    ld [hl], a                                    ; $66d4: $77
    add a                                         ; $66d5: $87
    ld a, b                                       ; $66d6: $78
    add a                                         ; $66d7: $87
    ld [hl], a                                    ; $66d8: $77
    ld [hl], a                                    ; $66d9: $77
    ld a, b                                       ; $66da: $78
    add a                                         ; $66db: $87
    ld a, b                                       ; $66dc: $78
    add a                                         ; $66dd: $87
    ld a, b                                       ; $66de: $78
    adc b                                         ; $66df: $88
    adc b                                         ; $66e0: $88
    adc b                                         ; $66e1: $88
    adc b                                         ; $66e2: $88
    add a                                         ; $66e3: $87
    ld [hl], a                                    ; $66e4: $77
    ld [hl], a                                    ; $66e5: $77
    ld [hl], a                                    ; $66e6: $77
    ld [hl], a                                    ; $66e7: $77
    ld [hl], a                                    ; $66e8: $77
    ld [hl], a                                    ; $66e9: $77
    adc b                                         ; $66ea: $88
    ld a, b                                       ; $66eb: $78
    adc b                                         ; $66ec: $88
    adc b                                         ; $66ed: $88
    adc b                                         ; $66ee: $88
    adc b                                         ; $66ef: $88
    add a                                         ; $66f0: $87
    adc b                                         ; $66f1: $88
    add a                                         ; $66f2: $87
    ld [hl], a                                    ; $66f3: $77
    ld [hl], a                                    ; $66f4: $77
    ld [hl], a                                    ; $66f5: $77
    ld [hl], a                                    ; $66f6: $77
    adc b                                         ; $66f7: $88
    ld [hl], a                                    ; $66f8: $77
    adc b                                         ; $66f9: $88
    ld [hl], a                                    ; $66fa: $77
    ld [hl], a                                    ; $66fb: $77
    ld [hl], a                                    ; $66fc: $77
    add a                                         ; $66fd: $87
    ld a, b                                       ; $66fe: $78
    adc b                                         ; $66ff: $88
    adc b                                         ; $6700: $88
    add a                                         ; $6701: $87
    ld a, b                                       ; $6702: $78
    ld [hl], a                                    ; $6703: $77
    add a                                         ; $6704: $87
    ld [hl], a                                    ; $6705: $77
    adc b                                         ; $6706: $88
    adc b                                         ; $6707: $88
    adc b                                         ; $6708: $88
    add a                                         ; $6709: $87
    add a                                         ; $670a: $87
    ld [hl], a                                    ; $670b: $77
    ld a, b                                       ; $670c: $78
    ld a, b                                       ; $670d: $78
    adc b                                         ; $670e: $88
    ld a, b                                       ; $670f: $78
    adc b                                         ; $6710: $88
    ld [hl], a                                    ; $6711: $77
    ld [hl], a                                    ; $6712: $77
    ld [hl], a                                    ; $6713: $77
    adc b                                         ; $6714: $88
    adc b                                         ; $6715: $88
    adc b                                         ; $6716: $88
    adc b                                         ; $6717: $88
    add a                                         ; $6718: $87
    ld a, b                                       ; $6719: $78
    ld [hl], a                                    ; $671a: $77
    ld [hl], a                                    ; $671b: $77
    ld [hl], a                                    ; $671c: $77
    adc b                                         ; $671d: $88
    ld [hl], a                                    ; $671e: $77
    ld [hl], a                                    ; $671f: $77
    add a                                         ; $6720: $87
    adc b                                         ; $6721: $88
    ld a, b                                       ; $6722: $78
    adc b                                         ; $6723: $88
    ld a, b                                       ; $6724: $78
    adc b                                         ; $6725: $88
    ld [hl], a                                    ; $6726: $77
    ld [hl], a                                    ; $6727: $77
    ld [hl], a                                    ; $6728: $77
    add a                                         ; $6729: $87
    adc b                                         ; $672a: $88
    add a                                         ; $672b: $87
    ld a, b                                       ; $672c: $78
    adc b                                         ; $672d: $88
    adc b                                         ; $672e: $88
    add a                                         ; $672f: $87
    adc b                                         ; $6730: $88
    add a                                         ; $6731: $87
    adc b                                         ; $6732: $88
    add a                                         ; $6733: $87
    ld [hl], a                                    ; $6734: $77
    ld [hl], a                                    ; $6735: $77
    adc b                                         ; $6736: $88
    ld [hl], a                                    ; $6737: $77
    add a                                         ; $6738: $87
    ld a, b                                       ; $6739: $78
    adc b                                         ; $673a: $88
    adc b                                         ; $673b: $88
    add a                                         ; $673c: $87
    ld [hl], a                                    ; $673d: $77
    add a                                         ; $673e: $87
    ld [hl], a                                    ; $673f: $77
    add a                                         ; $6740: $87
    ld [hl], a                                    ; $6741: $77
    ld [hl], a                                    ; $6742: $77
    ld a, b                                       ; $6743: $78
    ld [hl], a                                    ; $6744: $77
    adc b                                         ; $6745: $88
    add a                                         ; $6746: $87
    adc b                                         ; $6747: $88
    add a                                         ; $6748: $87
    ld [hl], a                                    ; $6749: $77
    ld a, b                                       ; $674a: $78
    adc b                                         ; $674b: $88
    add a                                         ; $674c: $87
    adc b                                         ; $674d: $88
    ld [hl], a                                    ; $674e: $77
    add a                                         ; $674f: $87
    adc b                                         ; $6750: $88
    ld [hl], a                                    ; $6751: $77
    ld a, b                                       ; $6752: $78
    adc b                                         ; $6753: $88
    ld [hl], a                                    ; $6754: $77
    adc b                                         ; $6755: $88
    ld a, b                                       ; $6756: $78
    add a                                         ; $6757: $87
    ld a, b                                       ; $6758: $78
    ld [hl], a                                    ; $6759: $77
    ld [hl], a                                    ; $675a: $77
    ld [hl], a                                    ; $675b: $77
    add a                                         ; $675c: $87
    ld [hl], a                                    ; $675d: $77
    ld [hl], a                                    ; $675e: $77
    add a                                         ; $675f: $87
    adc b                                         ; $6760: $88
    ld [hl], a                                    ; $6761: $77
    adc b                                         ; $6762: $88
    ld [hl], a                                    ; $6763: $77
    add a                                         ; $6764: $87
    ld a, b                                       ; $6765: $78
    ld [hl], a                                    ; $6766: $77
    ld a, b                                       ; $6767: $78
    ld [hl], a                                    ; $6768: $77
    add a                                         ; $6769: $87
    add a                                         ; $676a: $87
    adc b                                         ; $676b: $88
    add a                                         ; $676c: $87
    adc b                                         ; $676d: $88
    ld [hl], a                                    ; $676e: $77
    add a                                         ; $676f: $87
    adc b                                         ; $6770: $88
    adc b                                         ; $6771: $88
    ld [hl], a                                    ; $6772: $77
    ld a, b                                       ; $6773: $78
    ld a, b                                       ; $6774: $78
    add a                                         ; $6775: $87
    ld [hl], a                                    ; $6776: $77
    add a                                         ; $6777: $87
    adc b                                         ; $6778: $88
    adc b                                         ; $6779: $88
    ld [hl], a                                    ; $677a: $77
    add a                                         ; $677b: $87
    ld a, b                                       ; $677c: $78
    adc b                                         ; $677d: $88
    add a                                         ; $677e: $87
    ld a, b                                       ; $677f: $78
    add a                                         ; $6780: $87
    add a                                         ; $6781: $87
    ld a, b                                       ; $6782: $78
    add a                                         ; $6783: $87
    adc b                                         ; $6784: $88
    ld [hl], a                                    ; $6785: $77
    adc b                                         ; $6786: $88
    ld [hl], a                                    ; $6787: $77
    adc b                                         ; $6788: $88
    add a                                         ; $6789: $87
    add a                                         ; $678a: $87
    add a                                         ; $678b: $87
    ld [hl], a                                    ; $678c: $77
    ld a, b                                       ; $678d: $78
    add a                                         ; $678e: $87
    ld a, b                                       ; $678f: $78
    adc b                                         ; $6790: $88
    ld a, b                                       ; $6791: $78
    ld a, b                                       ; $6792: $78
    add a                                         ; $6793: $87
    ld [hl], a                                    ; $6794: $77
    ld a, b                                       ; $6795: $78
    adc b                                         ; $6796: $88
    ld [hl], a                                    ; $6797: $77
    ld a, b                                       ; $6798: $78
    ld a, b                                       ; $6799: $78
    adc b                                         ; $679a: $88
    add a                                         ; $679b: $87
    ld [hl], a                                    ; $679c: $77
    ld [hl], a                                    ; $679d: $77
    adc b                                         ; $679e: $88
    ld a, b                                       ; $679f: $78
    add a                                         ; $67a0: $87
    ld a, b                                       ; $67a1: $78
    adc b                                         ; $67a2: $88
    adc b                                         ; $67a3: $88
    add a                                         ; $67a4: $87
    ld [hl], a                                    ; $67a5: $77
    adc b                                         ; $67a6: $88
    adc b                                         ; $67a7: $88
    ld [hl], a                                    ; $67a8: $77
    add a                                         ; $67a9: $87
    ld a, b                                       ; $67aa: $78
    add a                                         ; $67ab: $87
    ld a, b                                       ; $67ac: $78
    add a                                         ; $67ad: $87
    add a                                         ; $67ae: $87
    ld [hl], a                                    ; $67af: $77
    adc b                                         ; $67b0: $88
    ld a, b                                       ; $67b1: $78
    add a                                         ; $67b2: $87
    ld a, b                                       ; $67b3: $78
    add a                                         ; $67b4: $87
    adc b                                         ; $67b5: $88
    adc b                                         ; $67b6: $88
    ld [hl], a                                    ; $67b7: $77
    add a                                         ; $67b8: $87
    ld a, b                                       ; $67b9: $78
    ld [hl], a                                    ; $67ba: $77
    ld a, b                                       ; $67bb: $78
    ld a, b                                       ; $67bc: $78
    adc b                                         ; $67bd: $88
    ld a, b                                       ; $67be: $78
    ld [hl], a                                    ; $67bf: $77
    add a                                         ; $67c0: $87
    adc b                                         ; $67c1: $88
    adc b                                         ; $67c2: $88
    adc b                                         ; $67c3: $88
    ld [hl], a                                    ; $67c4: $77
    ld a, b                                       ; $67c5: $78
    adc b                                         ; $67c6: $88
    adc b                                         ; $67c7: $88
    ld [hl], a                                    ; $67c8: $77
    ld [hl], a                                    ; $67c9: $77
    adc b                                         ; $67ca: $88
    adc b                                         ; $67cb: $88
    ld [hl], a                                    ; $67cc: $77
    adc b                                         ; $67cd: $88
    ld a, b                                       ; $67ce: $78
    adc b                                         ; $67cf: $88
    adc b                                         ; $67d0: $88
    ld [hl], a                                    ; $67d1: $77
    ld [hl], a                                    ; $67d2: $77
    ld a, c                                       ; $67d3: $79
    adc b                                         ; $67d4: $88
    add a                                         ; $67d5: $87
    ld [hl], a                                    ; $67d6: $77
    ld [hl], a                                    ; $67d7: $77
    ld [hl], a                                    ; $67d8: $77
    add a                                         ; $67d9: $87
    adc b                                         ; $67da: $88
    add a                                         ; $67db: $87
    ld a, b                                       ; $67dc: $78
    adc b                                         ; $67dd: $88
    sub a                                         ; $67de: $97
    ld a, b                                       ; $67df: $78
    sub [hl]                                      ; $67e0: $96
    and a                                         ; $67e1: $a7
    adc c                                         ; $67e2: $89
    adc c                                         ; $67e3: $89
    adc b                                         ; $67e4: $88
    ld [hl], a                                    ; $67e5: $77
    ld a, e                                       ; $67e6: $7b
    ld [hl], l                                    ; $67e7: $75
    sub e                                         ; $67e8: $93
    sub l                                         ; $67e9: $95
    sbc d                                         ; $67ea: $9a
    adc c                                         ; $67eb: $89
    adc b                                         ; $67ec: $88
    ld h, [hl]                                    ; $67ed: $66
    adc b                                         ; $67ee: $88
    ld [hl], l                                    ; $67ef: $75
    adc b                                         ; $67f0: $88
    add a                                         ; $67f1: $87
    add a                                         ; $67f2: $87
    ld l, b                                       ; $67f3: $68
    halt                                          ; $67f4: $76
    add a                                         ; $67f5: $87
    sub a                                         ; $67f6: $97
    sub a                                         ; $67f7: $97
    ld a, c                                       ; $67f8: $79
    ld h, a                                       ; $67f9: $67
    halt                                          ; $67fa: $76
    ld a, b                                       ; $67fb: $78
    add a                                         ; $67fc: $87
    sbc b                                         ; $67fd: $98
    halt                                          ; $67fe: $76
    ld [hl], a                                    ; $67ff: $77
    adc b                                         ; $6800: $88
    add a                                         ; $6801: $87
    ld l, b                                       ; $6802: $68
    halt                                          ; $6803: $76
    add a                                         ; $6804: $87
    adc c                                         ; $6805: $89
    adc b                                         ; $6806: $88
    adc b                                         ; $6807: $88
    ld a, c                                       ; $6808: $79
    sbc b                                         ; $6809: $98
    ld a, b                                       ; $680a: $78
    ld a, b                                       ; $680b: $78
    sub [hl]                                      ; $680c: $96
    sbc b                                         ; $680d: $98
    add a                                         ; $680e: $87
    add [hl]                                      ; $680f: $86
    add a                                         ; $6810: $87
    ld l, b                                       ; $6811: $68
    ld e, c                                       ; $6812: $59
    ld [hl], a                                    ; $6813: $77
    add a                                         ; $6814: $87
    ld a, b                                       ; $6815: $78
    add a                                         ; $6816: $87
    sub [hl]                                      ; $6817: $96
    ld l, b                                       ; $6818: $68
    ld h, [hl]                                    ; $6819: $66
    ld [hl], a                                    ; $681a: $77
    adc b                                         ; $681b: $88
    add a                                         ; $681c: $87
    ld [hl], a                                    ; $681d: $77
    ld a, b                                       ; $681e: $78
    adc b                                         ; $681f: $88
    add a                                         ; $6820: $87
    ld [hl], a                                    ; $6821: $77
    ld [hl], a                                    ; $6822: $77
    add a                                         ; $6823: $87
    adc b                                         ; $6824: $88
    ld [hl], a                                    ; $6825: $77
    ld a, c                                       ; $6826: $79
    ld a, b                                       ; $6827: $78
    ld l, b                                       ; $6828: $68
    add a                                         ; $6829: $87
    adc b                                         ; $682a: $88
    add a                                         ; $682b: $87
    adc b                                         ; $682c: $88
    ld [hl], a                                    ; $682d: $77
    ld [hl], a                                    ; $682e: $77
    add a                                         ; $682f: $87
    adc b                                         ; $6830: $88
    ld a, b                                       ; $6831: $78
    add a                                         ; $6832: $87
    ld l, b                                       ; $6833: $68
    add a                                         ; $6834: $87
    ld [hl], a                                    ; $6835: $77
    ld a, b                                       ; $6836: $78
    add a                                         ; $6837: $87
    add a                                         ; $6838: $87
    ld a, b                                       ; $6839: $78
    ld [hl], a                                    ; $683a: $77
    ld a, b                                       ; $683b: $78
    adc b                                         ; $683c: $88
    ld a, b                                       ; $683d: $78
    ld [hl], a                                    ; $683e: $77
    adc b                                         ; $683f: $88
    add a                                         ; $6840: $87
    adc b                                         ; $6841: $88
    ld a, b                                       ; $6842: $78
    ld a, b                                       ; $6843: $78
    ld a, b                                       ; $6844: $78
    ld [hl], a                                    ; $6845: $77
    adc b                                         ; $6846: $88
    adc b                                         ; $6847: $88
    adc b                                         ; $6848: $88
    adc b                                         ; $6849: $88
    ld a, b                                       ; $684a: $78
    ld [hl], a                                    ; $684b: $77
    ld [hl], a                                    ; $684c: $77
    add a                                         ; $684d: $87
    adc b                                         ; $684e: $88
    ld a, b                                       ; $684f: $78
    adc b                                         ; $6850: $88
    adc b                                         ; $6851: $88
    sbc b                                         ; $6852: $98
    ld a, b                                       ; $6853: $78
    adc b                                         ; $6854: $88
    ld [hl], a                                    ; $6855: $77
    ld [hl], a                                    ; $6856: $77
    ld a, b                                       ; $6857: $78
    adc b                                         ; $6858: $88
    adc b                                         ; $6859: $88
    add a                                         ; $685a: $87
    ld a, b                                       ; $685b: $78
    ld [hl], a                                    ; $685c: $77
    ld [hl], a                                    ; $685d: $77
    adc b                                         ; $685e: $88
    ld [hl], a                                    ; $685f: $77
    add a                                         ; $6860: $87
    ld [hl], a                                    ; $6861: $77
    ld [hl], a                                    ; $6862: $77
    ld [hl], a                                    ; $6863: $77
    adc b                                         ; $6864: $88
    adc b                                         ; $6865: $88
    adc b                                         ; $6866: $88
    ld [hl], a                                    ; $6867: $77
    add a                                         ; $6868: $87
    add a                                         ; $6869: $87
    adc b                                         ; $686a: $88
    ld [hl], a                                    ; $686b: $77
    adc b                                         ; $686c: $88
    ld a, b                                       ; $686d: $78
    ld [hl], a                                    ; $686e: $77
    ld a, b                                       ; $686f: $78
    adc b                                         ; $6870: $88
    add a                                         ; $6871: $87
    adc b                                         ; $6872: $88
    ld [hl], a                                    ; $6873: $77
    add a                                         ; $6874: $87
    ld [hl], a                                    ; $6875: $77
    ld a, b                                       ; $6876: $78
    ld a, b                                       ; $6877: $78
    adc b                                         ; $6878: $88
    ld a, b                                       ; $6879: $78
    add a                                         ; $687a: $87
    add a                                         ; $687b: $87
    adc b                                         ; $687c: $88
    adc b                                         ; $687d: $88
    ld [hl], a                                    ; $687e: $77
    ld [hl], a                                    ; $687f: $77
    add a                                         ; $6880: $87
    add a                                         ; $6881: $87
    ld [hl], a                                    ; $6882: $77
    adc b                                         ; $6883: $88
    ld [hl], a                                    ; $6884: $77
    adc b                                         ; $6885: $88
    ld [hl], a                                    ; $6886: $77
    adc b                                         ; $6887: $88
    ld a, b                                       ; $6888: $78

Jump_012_6889:
    add a                                         ; $6889: $87
    ld a, b                                       ; $688a: $78
    add a                                         ; $688b: $87
    ld a, b                                       ; $688c: $78
    ld [hl], a                                    ; $688d: $77
    ld a, b                                       ; $688e: $78
    sbc c                                         ; $688f: $99
    adc b                                         ; $6890: $88
    halt                                          ; $6891: $76
    ld a, b                                       ; $6892: $78
    ld a, b                                       ; $6893: $78
    adc b                                         ; $6894: $88
    adc b                                         ; $6895: $88
    ld [hl], a                                    ; $6896: $77
    ld [hl], a                                    ; $6897: $77
    ld a, b                                       ; $6898: $78
    adc b                                         ; $6899: $88
    ld [hl], a                                    ; $689a: $77
    add a                                         ; $689b: $87
    ld a, b                                       ; $689c: $78
    adc b                                         ; $689d: $88
    ld a, b                                       ; $689e: $78
    ld a, b                                       ; $689f: $78
    add a                                         ; $68a0: $87
    adc b                                         ; $68a1: $88
    ld [hl], a                                    ; $68a2: $77
    add a                                         ; $68a3: $87
    ld [hl], a                                    ; $68a4: $77
    add a                                         ; $68a5: $87
    adc b                                         ; $68a6: $88
    adc b                                         ; $68a7: $88
    ld a, b                                       ; $68a8: $78
    ld [hl], a                                    ; $68a9: $77
    ld [hl], a                                    ; $68aa: $77
    adc b                                         ; $68ab: $88
    add a                                         ; $68ac: $87
    adc c                                         ; $68ad: $89
    add a                                         ; $68ae: $87
    ld [hl], a                                    ; $68af: $77
    add [hl]                                      ; $68b0: $86
    adc b                                         ; $68b1: $88
    ld [hl], a                                    ; $68b2: $77
    adc b                                         ; $68b3: $88
    add a                                         ; $68b4: $87
    sbc b                                         ; $68b5: $98
    add a                                         ; $68b6: $87
    add a                                         ; $68b7: $87
    add a                                         ; $68b8: $87
    ld a, b                                       ; $68b9: $78
    ld [hl], a                                    ; $68ba: $77
    ld a, b                                       ; $68bb: $78
    add a                                         ; $68bc: $87
    adc b                                         ; $68bd: $88
    ld a, b                                       ; $68be: $78
    ld a, b                                       ; $68bf: $78
    adc b                                         ; $68c0: $88
    adc b                                         ; $68c1: $88
    ld a, b                                       ; $68c2: $78
    adc b                                         ; $68c3: $88
    ld [hl], a                                    ; $68c4: $77
    ld a, b                                       ; $68c5: $78
    adc b                                         ; $68c6: $88
    adc b                                         ; $68c7: $88
    ld a, b                                       ; $68c8: $78
    ld [hl], a                                    ; $68c9: $77
    ld a, b                                       ; $68ca: $78
    adc b                                         ; $68cb: $88
    ld [hl], a                                    ; $68cc: $77
    halt                                          ; $68cd: $76
    ld h, a                                       ; $68ce: $67
    adc b                                         ; $68cf: $88
    adc b                                         ; $68d0: $88
    add a                                         ; $68d1: $87
    ld [hl], a                                    ; $68d2: $77
    ld a, b                                       ; $68d3: $78
    ld [hl], a                                    ; $68d4: $77
    ld [hl], a                                    ; $68d5: $77
    adc b                                         ; $68d6: $88
    ld a, b                                       ; $68d7: $78
    add a                                         ; $68d8: $87
    ld [hl], a                                    ; $68d9: $77
    ld a, b                                       ; $68da: $78
    add [hl]                                      ; $68db: $86
    ld [hl], a                                    ; $68dc: $77
    adc b                                         ; $68dd: $88
    sub a                                         ; $68de: $97
    ld l, b                                       ; $68df: $68
    add [hl]                                      ; $68e0: $86
    ld a, b                                       ; $68e1: $78
    adc b                                         ; $68e2: $88
    add a                                         ; $68e3: $87
    ld a, b                                       ; $68e4: $78
    ld a, b                                       ; $68e5: $78
    sbc b                                         ; $68e6: $98
    ld [hl], a                                    ; $68e7: $77
    add a                                         ; $68e8: $87
    ld l, b                                       ; $68e9: $68
    add a                                         ; $68ea: $87
    ld a, b                                       ; $68eb: $78
    add [hl]                                      ; $68ec: $86
    ld a, b                                       ; $68ed: $78
    adc b                                         ; $68ee: $88
    adc b                                         ; $68ef: $88
    sub a                                         ; $68f0: $97
    ld [hl], a                                    ; $68f1: $77
    ld [hl], a                                    ; $68f2: $77
    add a                                         ; $68f3: $87
    add a                                         ; $68f4: $87
    add a                                         ; $68f5: $87
    ld [hl], a                                    ; $68f6: $77
    ld [hl], a                                    ; $68f7: $77
    ld a, b                                       ; $68f8: $78
    add a                                         ; $68f9: $87
    adc c                                         ; $68fa: $89
    adc b                                         ; $68fb: $88
    ld a, b                                       ; $68fc: $78
    ld a, b                                       ; $68fd: $78
    ld [hl], a                                    ; $68fe: $77
    ld [hl], a                                    ; $68ff: $77
    adc b                                         ; $6900: $88
    ld a, b                                       ; $6901: $78
    add a                                         ; $6902: $87
    ld a, c                                       ; $6903: $79
    ld [hl], a                                    ; $6904: $77
    ld [hl], a                                    ; $6905: $77
    ld a, b                                       ; $6906: $78
    adc b                                         ; $6907: $88
    adc b                                         ; $6908: $88
    add a                                         ; $6909: $87
    ld [hl], a                                    ; $690a: $77
    ld a, b                                       ; $690b: $78
    adc b                                         ; $690c: $88
    ld a, b                                       ; $690d: $78
    add a                                         ; $690e: $87
    ld [hl], a                                    ; $690f: $77
    add a                                         ; $6910: $87
    ld h, a                                       ; $6911: $67
    sbc c                                         ; $6912: $99
    ld [hl], a                                    ; $6913: $77
    ld [hl], l                                    ; $6914: $75
    ld a, b                                       ; $6915: $78
    sbc c                                         ; $6916: $99
    ld l, b                                       ; $6917: $68
    add a                                         ; $6918: $87
    halt                                          ; $6919: $76
    adc c                                         ; $691a: $89
    ld h, a                                       ; $691b: $67
    ld e, b                                       ; $691c: $58
    xor b                                         ; $691d: $a8
    add hl, sp                                    ; $691e: $39
    adc c                                         ; $691f: $89
    sbc d                                         ; $6920: $9a
    ld l, b                                       ; $6921: $68
    ld h, a                                       ; $6922: $67
    and [hl]                                      ; $6923: $a6
    ld [hl], a                                    ; $6924: $77
    ld a, b                                       ; $6925: $78
    sbc c                                         ; $6926: $99
    halt                                          ; $6927: $76
    xor b                                         ; $6928: $a8
    ld a, b                                       ; $6929: $78
    ld h, a                                       ; $692a: $67
    halt                                          ; $692b: $76
    xor b                                         ; $692c: $a8
    adc b                                         ; $692d: $88
    sbc c                                         ; $692e: $99
    sub a                                         ; $692f: $97
    ld h, l                                       ; $6930: $65
    ld h, a                                       ; $6931: $67
    add a                                         ; $6932: $87
    sbc c                                         ; $6933: $99
    add a                                         ; $6934: $87
    ld [hl], a                                    ; $6935: $77
    adc b                                         ; $6936: $88
    sbc b                                         ; $6937: $98
    sub a                                         ; $6938: $97
    ld a, c                                       ; $6939: $79
    ld h, a                                       ; $693a: $67
    sub a                                         ; $693b: $97
    add a                                         ; $693c: $87

Jump_012_693d:
    adc b                                         ; $693d: $88
    ld h, a                                       ; $693e: $67
    add a                                         ; $693f: $87
    add a                                         ; $6940: $87
    ld l, b                                       ; $6941: $68
    adc b                                         ; $6942: $88
    ld a, b                                       ; $6943: $78
    ld a, b                                       ; $6944: $78
    and a                                         ; $6945: $a7
    ld a, c                                       ; $6946: $79
    ld [hl], a                                    ; $6947: $77
    add a                                         ; $6948: $87
    adc b                                         ; $6949: $88
    adc b                                         ; $694a: $88
    ld a, c                                       ; $694b: $79
    ld l, b                                       ; $694c: $68
    halt                                          ; $694d: $76
    sbc c                                         ; $694e: $99
    adc c                                         ; $694f: $89
    adc b                                         ; $6950: $88
    add a                                         ; $6951: $87
    adc c                                         ; $6952: $89
    add a                                         ; $6953: $87
    ld [hl], a                                    ; $6954: $77
    add a                                         ; $6955: $87
    ld a, b                                       ; $6956: $78
    add a                                         ; $6957: $87
    ld a, b                                       ; $6958: $78
    ld h, a                                       ; $6959: $67
    sub a                                         ; $695a: $97
    adc c                                         ; $695b: $89
    sbc c                                         ; $695c: $99
    add l                                         ; $695d: $85
    add a                                         ; $695e: $87
    ld a, b                                       ; $695f: $78
    ld l, b                                       ; $6960: $68
    adc b                                         ; $6961: $88
    ld l, c                                       ; $6962: $69
    sub a                                         ; $6963: $97
    ld a, c                                       ; $6964: $79
    ld h, a                                       ; $6965: $67
    sbc b                                         ; $6966: $98
    sbc c                                         ; $6967: $99
    adc b                                         ; $6968: $88
    ld [hl], a                                    ; $6969: $77
    halt                                          ; $696a: $76
    add a                                         ; $696b: $87
    adc b                                         ; $696c: $88
    ld h, a                                       ; $696d: $67
    ld [hl], a                                    ; $696e: $77
    ld l, b                                       ; $696f: $68
    add a                                         ; $6970: $87
    adc b                                         ; $6971: $88
    adc b                                         ; $6972: $88
    sub a                                         ; $6973: $97
    adc b                                         ; $6974: $88
    ld [hl], a                                    ; $6975: $77
    add a                                         ; $6976: $87
    xor b                                         ; $6977: $a8
    ld l, c                                       ; $6978: $69
    ld [hl], a                                    ; $6979: $77
    ld [hl], a                                    ; $697a: $77
    sbc b                                         ; $697b: $98
    ld a, b                                       ; $697c: $78
    ld [hl], a                                    ; $697d: $77
    ld a, b                                       ; $697e: $78
    adc b                                         ; $697f: $88
    add a                                         ; $6980: $87
    adc b                                         ; $6981: $88
    ld [hl], a                                    ; $6982: $77
    ld h, a                                       ; $6983: $67
    ld [hl], a                                    ; $6984: $77
    ld a, b                                       ; $6985: $78
    adc c                                         ; $6986: $89
    adc b                                         ; $6987: $88
    ld h, a                                       ; $6988: $67
    ld [hl], a                                    ; $6989: $77
    add a                                         ; $698a: $87
    adc b                                         ; $698b: $88
    sbc b                                         ; $698c: $98
    ld a, b                                       ; $698d: $78
    halt                                          ; $698e: $76
    ld [hl], a                                    ; $698f: $77
    add a                                         ; $6990: $87
    add a                                         ; $6991: $87
    ld a, b                                       ; $6992: $78
    adc b                                         ; $6993: $88
    add a                                         ; $6994: $87
    add a                                         ; $6995: $87
    ld a, b                                       ; $6996: $78
    sbc b                                         ; $6997: $98
    adc b                                         ; $6998: $88
    ld [hl], a                                    ; $6999: $77
    add a                                         ; $699a: $87
    ld [hl], a                                    ; $699b: $77
    ld [hl], a                                    ; $699c: $77
    add a                                         ; $699d: $87
    ld a, b                                       ; $699e: $78
    ld a, b                                       ; $699f: $78
    adc b                                         ; $69a0: $88
    add a                                         ; $69a1: $87
    adc b                                         ; $69a2: $88
    ld a, b                                       ; $69a3: $78
    adc b                                         ; $69a4: $88
    ld [hl], a                                    ; $69a5: $77
    add a                                         ; $69a6: $87
    ld [hl], a                                    ; $69a7: $77
    ld [hl], a                                    ; $69a8: $77
    ld [hl], a                                    ; $69a9: $77
    ld [hl], a                                    ; $69aa: $77
    add a                                         ; $69ab: $87
    ld l, b                                       ; $69ac: $68
    sbc b                                         ; $69ad: $98
    ld a, b                                       ; $69ae: $78
    ld [hl], a                                    ; $69af: $77
    add a                                         ; $69b0: $87
    halt                                          ; $69b1: $76
    add [hl]                                      ; $69b2: $86
    ld a, b                                       ; $69b3: $78
    ld a, b                                       ; $69b4: $78
    ld [hl], a                                    ; $69b5: $77
    adc b                                         ; $69b6: $88
    ld a, b                                       ; $69b7: $78
    ld a, b                                       ; $69b8: $78
    adc b                                         ; $69b9: $88
    sbc b                                         ; $69ba: $98
    ld a, b                                       ; $69bb: $78
    ld [hl], a                                    ; $69bc: $77
    add a                                         ; $69bd: $87
    adc b                                         ; $69be: $88
    adc b                                         ; $69bf: $88
    adc b                                         ; $69c0: $88
    ld a, b                                       ; $69c1: $78
    add a                                         ; $69c2: $87
    add a                                         ; $69c3: $87
    add a                                         ; $69c4: $87
    ld a, b                                       ; $69c5: $78
    ld a, b                                       ; $69c6: $78
    sub a                                         ; $69c7: $97
    halt                                          ; $69c8: $76
    ld [hl], a                                    ; $69c9: $77
    adc b                                         ; $69ca: $88
    adc b                                         ; $69cb: $88
    adc b                                         ; $69cc: $88
    ld l, b                                       ; $69cd: $68
    ld a, b                                       ; $69ce: $78
    add a                                         ; $69cf: $87
    add a                                         ; $69d0: $87
    ld [hl], a                                    ; $69d1: $77
    adc b                                         ; $69d2: $88
    sbc b                                         ; $69d3: $98
    ld [hl], a                                    ; $69d4: $77
    ld h, a                                       ; $69d5: $67
    ld [hl], a                                    ; $69d6: $77
    ld a, b                                       ; $69d7: $78
    adc b                                         ; $69d8: $88
    ld a, b                                       ; $69d9: $78
    add a                                         ; $69da: $87
    adc b                                         ; $69db: $88
    add a                                         ; $69dc: $87
    add a                                         ; $69dd: $87
    add a                                         ; $69de: $87
    adc b                                         ; $69df: $88
    adc b                                         ; $69e0: $88
    ld [hl], a                                    ; $69e1: $77
    ld [hl], a                                    ; $69e2: $77
    ld a, b                                       ; $69e3: $78
    ld a, b                                       ; $69e4: $78
    add a                                         ; $69e5: $87
    adc b                                         ; $69e6: $88
    ld a, b                                       ; $69e7: $78
    add a                                         ; $69e8: $87
    add a                                         ; $69e9: $87
    ld [hl], a                                    ; $69ea: $77
    ld [hl], a                                    ; $69eb: $77
    ld [hl], a                                    ; $69ec: $77
    adc b                                         ; $69ed: $88
    adc b                                         ; $69ee: $88
    adc b                                         ; $69ef: $88
    adc b                                         ; $69f0: $88
    ld a, b                                       ; $69f1: $78
    adc b                                         ; $69f2: $88
    add a                                         ; $69f3: $87
    add a                                         ; $69f4: $87
    ld [hl], a                                    ; $69f5: $77
    ld [hl], a                                    ; $69f6: $77
    adc b                                         ; $69f7: $88
    adc b                                         ; $69f8: $88
    ld [hl], a                                    ; $69f9: $77
    ld [hl], a                                    ; $69fa: $77
    adc b                                         ; $69fb: $88
    adc b                                         ; $69fc: $88
    adc b                                         ; $69fd: $88
    ld [hl], a                                    ; $69fe: $77
    ld [hl], a                                    ; $69ff: $77
    adc b                                         ; $6a00: $88
    add a                                         ; $6a01: $87
    ld a, b                                       ; $6a02: $78
    ld [hl], a                                    ; $6a03: $77
    ld a, b                                       ; $6a04: $78
    ld a, b                                       ; $6a05: $78
    add a                                         ; $6a06: $87
    adc b                                         ; $6a07: $88
    adc b                                         ; $6a08: $88
    adc b                                         ; $6a09: $88
    ld [hl], a                                    ; $6a0a: $77
    ld [hl], a                                    ; $6a0b: $77
    ld a, b                                       ; $6a0c: $78
    adc b                                         ; $6a0d: $88
    ld [hl], a                                    ; $6a0e: $77
    ld [hl], a                                    ; $6a0f: $77
    adc b                                         ; $6a10: $88
    adc b                                         ; $6a11: $88
    add a                                         ; $6a12: $87
    ld [hl], a                                    ; $6a13: $77
    ld [hl], a                                    ; $6a14: $77
    adc b                                         ; $6a15: $88
    adc b                                         ; $6a16: $88
    ld [hl], a                                    ; $6a17: $77
    ld a, b                                       ; $6a18: $78
    ld [hl], a                                    ; $6a19: $77
    add a                                         ; $6a1a: $87
    add a                                         ; $6a1b: $87
    ld [hl], a                                    ; $6a1c: $77
    add a                                         ; $6a1d: $87
    ld a, b                                       ; $6a1e: $78
    ld a, b                                       ; $6a1f: $78
    add a                                         ; $6a20: $87
    ld [hl], a                                    ; $6a21: $77
    add a                                         ; $6a22: $87
    ld [hl], a                                    ; $6a23: $77
    adc b                                         ; $6a24: $88
    adc b                                         ; $6a25: $88
    adc b                                         ; $6a26: $88
    adc b                                         ; $6a27: $88
    adc b                                         ; $6a28: $88
    adc b                                         ; $6a29: $88
    ld [hl], a                                    ; $6a2a: $77
    add a                                         ; $6a2b: $87
    add a                                         ; $6a2c: $87
    ld [hl], a                                    ; $6a2d: $77
    ld [hl], a                                    ; $6a2e: $77
    ld [hl], a                                    ; $6a2f: $77
    adc b                                         ; $6a30: $88
    ld a, b                                       ; $6a31: $78
    adc b                                         ; $6a32: $88
    adc b                                         ; $6a33: $88
    adc b                                         ; $6a34: $88
    ld a, b                                       ; $6a35: $78
    add a                                         ; $6a36: $87
    ld [hl], a                                    ; $6a37: $77
    ld [hl], a                                    ; $6a38: $77
    ld a, b                                       ; $6a39: $78
    adc b                                         ; $6a3a: $88
    adc b                                         ; $6a3b: $88
    adc b                                         ; $6a3c: $88
    adc b                                         ; $6a3d: $88
    adc b                                         ; $6a3e: $88
    adc b                                         ; $6a3f: $88
    add a                                         ; $6a40: $87
    add a                                         ; $6a41: $87
    ld [hl], a                                    ; $6a42: $77
    adc b                                         ; $6a43: $88
    adc b                                         ; $6a44: $88
    ld a, b                                       ; $6a45: $78
    ld [hl], a                                    ; $6a46: $77
    ld a, b                                       ; $6a47: $78
    adc b                                         ; $6a48: $88
    adc b                                         ; $6a49: $88
    add a                                         ; $6a4a: $87
    ld [hl], a                                    ; $6a4b: $77
    ld [hl], a                                    ; $6a4c: $77
    adc b                                         ; $6a4d: $88
    add a                                         ; $6a4e: $87
    add a                                         ; $6a4f: $87
    add a                                         ; $6a50: $87
    ld [hl], a                                    ; $6a51: $77
    adc b                                         ; $6a52: $88
    ld a, b                                       ; $6a53: $78
    adc b                                         ; $6a54: $88
    add a                                         ; $6a55: $87
    ld a, b                                       ; $6a56: $78
    ld [hl], a                                    ; $6a57: $77
    add a                                         ; $6a58: $87
    ld [hl], a                                    ; $6a59: $77
    ld [hl], a                                    ; $6a5a: $77
    adc b                                         ; $6a5b: $88
    add a                                         ; $6a5c: $87
    ld [hl], a                                    ; $6a5d: $77
    ld [hl], a                                    ; $6a5e: $77
    ld [hl], a                                    ; $6a5f: $77
    adc b                                         ; $6a60: $88
    adc b                                         ; $6a61: $88
    adc b                                         ; $6a62: $88
    adc b                                         ; $6a63: $88
    ld [hl], a                                    ; $6a64: $77
    ld [hl], a                                    ; $6a65: $77
    ld [hl], a                                    ; $6a66: $77
    adc b                                         ; $6a67: $88
    ld [hl], a                                    ; $6a68: $77
    ld [hl], a                                    ; $6a69: $77
    ld [hl], a                                    ; $6a6a: $77
    ld [hl], a                                    ; $6a6b: $77
    adc b                                         ; $6a6c: $88
    adc b                                         ; $6a6d: $88
    add a                                         ; $6a6e: $87
    add a                                         ; $6a6f: $87
    adc b                                         ; $6a70: $88
    adc b                                         ; $6a71: $88
    adc b                                         ; $6a72: $88
    add a                                         ; $6a73: $87
    ld [hl], a                                    ; $6a74: $77
    ld a, b                                       ; $6a75: $78
    ld [hl], a                                    ; $6a76: $77
    ld [hl], a                                    ; $6a77: $77
    adc b                                         ; $6a78: $88
    ld a, b                                       ; $6a79: $78
    adc b                                         ; $6a7a: $88
    ld a, b                                       ; $6a7b: $78
    ld [hl], a                                    ; $6a7c: $77
    add a                                         ; $6a7d: $87
    ld [hl], a                                    ; $6a7e: $77
    adc b                                         ; $6a7f: $88
    add a                                         ; $6a80: $87
    adc b                                         ; $6a81: $88
    adc b                                         ; $6a82: $88
    ld a, b                                       ; $6a83: $78
    ld a, b                                       ; $6a84: $78
    adc b                                         ; $6a85: $88
    adc b                                         ; $6a86: $88
    add a                                         ; $6a87: $87
    ld [hl], a                                    ; $6a88: $77
    ld [hl], a                                    ; $6a89: $77
    ld [hl], a                                    ; $6a8a: $77
    ld a, b                                       ; $6a8b: $78
    ld [hl], a                                    ; $6a8c: $77
    ld [hl], a                                    ; $6a8d: $77
    ld [hl], a                                    ; $6a8e: $77
    adc b                                         ; $6a8f: $88
    add a                                         ; $6a90: $87
    ld [hl], a                                    ; $6a91: $77
    adc b                                         ; $6a92: $88
    adc b                                         ; $6a93: $88
    adc b                                         ; $6a94: $88
    ld [hl], a                                    ; $6a95: $77
    ld [hl], a                                    ; $6a96: $77
    ld [hl], a                                    ; $6a97: $77
    adc b                                         ; $6a98: $88
    adc b                                         ; $6a99: $88
    adc b                                         ; $6a9a: $88
    adc b                                         ; $6a9b: $88
    add a                                         ; $6a9c: $87
    ld [hl], a                                    ; $6a9d: $77
    ld [hl], a                                    ; $6a9e: $77
    ld [hl], a                                    ; $6a9f: $77
    add a                                         ; $6aa0: $87
    adc b                                         ; $6aa1: $88
    adc b                                         ; $6aa2: $88
    adc b                                         ; $6aa3: $88
    adc b                                         ; $6aa4: $88
    ld [hl], a                                    ; $6aa5: $77
    adc b                                         ; $6aa6: $88
    adc b                                         ; $6aa7: $88
    adc b                                         ; $6aa8: $88
    ld [hl], a                                    ; $6aa9: $77
    ld [hl], a                                    ; $6aaa: $77
    ld [hl], a                                    ; $6aab: $77
    ld [hl], a                                    ; $6aac: $77
    ld [hl], a                                    ; $6aad: $77
    adc b                                         ; $6aae: $88
    adc b                                         ; $6aaf: $88
    adc b                                         ; $6ab0: $88
    adc b                                         ; $6ab1: $88
    add a                                         ; $6ab2: $87
    ld [hl], a                                    ; $6ab3: $77
    adc b                                         ; $6ab4: $88
    adc b                                         ; $6ab5: $88
    add a                                         ; $6ab6: $87
    ld [hl], a                                    ; $6ab7: $77
    ld [hl], a                                    ; $6ab8: $77
    ld a, b                                       ; $6ab9: $78
    adc b                                         ; $6aba: $88
    ld [hl], a                                    ; $6abb: $77
    ld [hl], a                                    ; $6abc: $77
    adc b                                         ; $6abd: $88
    adc b                                         ; $6abe: $88
    adc b                                         ; $6abf: $88
    adc b                                         ; $6ac0: $88
    adc b                                         ; $6ac1: $88
    ld [hl], a                                    ; $6ac2: $77
    ld [hl], a                                    ; $6ac3: $77
    ld [hl], a                                    ; $6ac4: $77
    ld [hl], a                                    ; $6ac5: $77
    ld [hl], a                                    ; $6ac6: $77
    adc b                                         ; $6ac7: $88
    ld [hl], a                                    ; $6ac8: $77
    ld a, b                                       ; $6ac9: $78
    adc b                                         ; $6aca: $88
    adc b                                         ; $6acb: $88
    adc b                                         ; $6acc: $88
    ld [hl], a                                    ; $6acd: $77
    ld a, b                                       ; $6ace: $78
    ld [hl], a                                    ; $6acf: $77
    add a                                         ; $6ad0: $87
    adc b                                         ; $6ad1: $88
    adc b                                         ; $6ad2: $88
    adc b                                         ; $6ad3: $88
    add a                                         ; $6ad4: $87
    adc b                                         ; $6ad5: $88
    add a                                         ; $6ad6: $87
    ld [hl], a                                    ; $6ad7: $77
    ld [hl], a                                    ; $6ad8: $77
    adc b                                         ; $6ad9: $88
    adc b                                         ; $6ada: $88
    ld [hl], a                                    ; $6adb: $77
    ld [hl], a                                    ; $6adc: $77
    ld [hl], a                                    ; $6add: $77
    adc b                                         ; $6ade: $88
    adc b                                         ; $6adf: $88
    adc b                                         ; $6ae0: $88
    ld [hl], a                                    ; $6ae1: $77
    ld [hl], a                                    ; $6ae2: $77
    ld [hl], a                                    ; $6ae3: $77
    ld [hl], a                                    ; $6ae4: $77
    ld a, b                                       ; $6ae5: $78
    adc b                                         ; $6ae6: $88
    adc b                                         ; $6ae7: $88
    adc b                                         ; $6ae8: $88
    add a                                         ; $6ae9: $87
    ld a, b                                       ; $6aea: $78
    adc b                                         ; $6aeb: $88
    adc b                                         ; $6aec: $88
    adc b                                         ; $6aed: $88
    adc b                                         ; $6aee: $88
    add a                                         ; $6aef: $87
    add a                                         ; $6af0: $87
    ld [hl], a                                    ; $6af1: $77
    ld [hl], a                                    ; $6af2: $77
    ld a, b                                       ; $6af3: $78
    adc b                                         ; $6af4: $88
    add a                                         ; $6af5: $87
    ld [hl], a                                    ; $6af6: $77
    ld [hl], a                                    ; $6af7: $77
    add a                                         ; $6af8: $87
    add a                                         ; $6af9: $87
    ld [hl], a                                    ; $6afa: $77
    adc b                                         ; $6afb: $88
    ld [hl], a                                    ; $6afc: $77
    ld [hl], a                                    ; $6afd: $77
    ld [hl], a                                    ; $6afe: $77
    ld a, b                                       ; $6aff: $78
    adc b                                         ; $6b00: $88
    adc b                                         ; $6b01: $88
    adc b                                         ; $6b02: $88
    add a                                         ; $6b03: $87
    ld [hl], a                                    ; $6b04: $77
    adc b                                         ; $6b05: $88
    adc b                                         ; $6b06: $88
    ld [hl], a                                    ; $6b07: $77
    ld a, b                                       ; $6b08: $78
    add a                                         ; $6b09: $87
    ld [hl], a                                    ; $6b0a: $77
    adc b                                         ; $6b0b: $88
    add a                                         ; $6b0c: $87
    ld [hl], a                                    ; $6b0d: $77
    adc b                                         ; $6b0e: $88
    add a                                         ; $6b0f: $87
    adc b                                         ; $6b10: $88
    add a                                         ; $6b11: $87
    ld [hl], a                                    ; $6b12: $77
    adc b                                         ; $6b13: $88
    adc b                                         ; $6b14: $88
    add a                                         ; $6b15: $87
    ld a, b                                       ; $6b16: $78
    adc b                                         ; $6b17: $88
    ld [hl], a                                    ; $6b18: $77
    adc b                                         ; $6b19: $88
    adc b                                         ; $6b1a: $88
    add a                                         ; $6b1b: $87
    ld [hl], a                                    ; $6b1c: $77
    ld [hl], a                                    ; $6b1d: $77
    add a                                         ; $6b1e: $87
    ld a, b                                       ; $6b1f: $78
    adc b                                         ; $6b20: $88
    adc b                                         ; $6b21: $88
    ld [hl], a                                    ; $6b22: $77
    ld a, b                                       ; $6b23: $78
    add a                                         ; $6b24: $87
    add a                                         ; $6b25: $87
    adc b                                         ; $6b26: $88
    ld [hl], a                                    ; $6b27: $77
    ld [hl], a                                    ; $6b28: $77
    ld a, b                                       ; $6b29: $78
    adc b                                         ; $6b2a: $88
    adc c                                         ; $6b2b: $89
    adc b                                         ; $6b2c: $88
    ld [hl], a                                    ; $6b2d: $77
    ld [hl], a                                    ; $6b2e: $77
    ld [hl], a                                    ; $6b2f: $77
    add a                                         ; $6b30: $87
    ld [hl], a                                    ; $6b31: $77
    adc b                                         ; $6b32: $88
    adc b                                         ; $6b33: $88
    ld [hl], a                                    ; $6b34: $77
    adc b                                         ; $6b35: $88
    adc b                                         ; $6b36: $88
    adc b                                         ; $6b37: $88
    adc b                                         ; $6b38: $88
    add a                                         ; $6b39: $87
    ld [hl], a                                    ; $6b3a: $77
    ld [hl], a                                    ; $6b3b: $77
    ld [hl], a                                    ; $6b3c: $77
    ld a, b                                       ; $6b3d: $78
    ld [hl], a                                    ; $6b3e: $77
    adc b                                         ; $6b3f: $88
    adc b                                         ; $6b40: $88
    ld a, b                                       ; $6b41: $78
    adc b                                         ; $6b42: $88
    ld [hl], a                                    ; $6b43: $77
    add a                                         ; $6b44: $87
    ld [hl], a                                    ; $6b45: $77
    adc b                                         ; $6b46: $88
    ld [hl], a                                    ; $6b47: $77
    ld [hl], a                                    ; $6b48: $77
    ld a, b                                       ; $6b49: $78
    adc b                                         ; $6b4a: $88
    adc b                                         ; $6b4b: $88
    add a                                         ; $6b4c: $87
    ld a, b                                       ; $6b4d: $78
    add a                                         ; $6b4e: $87
    ld [hl], a                                    ; $6b4f: $77
    add a                                         ; $6b50: $87
    ld [hl], a                                    ; $6b51: $77
    adc b                                         ; $6b52: $88
    adc b                                         ; $6b53: $88
    adc b                                         ; $6b54: $88
    adc b                                         ; $6b55: $88
    adc b                                         ; $6b56: $88
    add a                                         ; $6b57: $87
    ld [hl], a                                    ; $6b58: $77
    ld [hl], a                                    ; $6b59: $77
    ld [hl], a                                    ; $6b5a: $77
    adc b                                         ; $6b5b: $88
    adc b                                         ; $6b5c: $88
    adc b                                         ; $6b5d: $88
    adc b                                         ; $6b5e: $88
    adc b                                         ; $6b5f: $88
    adc b                                         ; $6b60: $88
    add a                                         ; $6b61: $87
    ld [hl], a                                    ; $6b62: $77
    ld [hl], a                                    ; $6b63: $77
    ld [hl], a                                    ; $6b64: $77
    ld [hl], a                                    ; $6b65: $77
    ld a, b                                       ; $6b66: $78
    adc b                                         ; $6b67: $88
    adc b                                         ; $6b68: $88
    adc b                                         ; $6b69: $88
    adc b                                         ; $6b6a: $88
    adc b                                         ; $6b6b: $88
    ld [hl], a                                    ; $6b6c: $77
    ld [hl], a                                    ; $6b6d: $77
    ld [hl], a                                    ; $6b6e: $77
    ld a, b                                       ; $6b6f: $78
    adc b                                         ; $6b70: $88
    ld a, b                                       ; $6b71: $78
    adc b                                         ; $6b72: $88
    adc b                                         ; $6b73: $88
    ld [hl], a                                    ; $6b74: $77
    adc b                                         ; $6b75: $88
    add a                                         ; $6b76: $87
    ld a, b                                       ; $6b77: $78
    ld [hl], a                                    ; $6b78: $77
    ld [hl], a                                    ; $6b79: $77
    ld [hl], a                                    ; $6b7a: $77
    ld a, b                                       ; $6b7b: $78
    adc b                                         ; $6b7c: $88
    adc b                                         ; $6b7d: $88
    adc b                                         ; $6b7e: $88
    add a                                         ; $6b7f: $87
    add a                                         ; $6b80: $87
    ld [hl], a                                    ; $6b81: $77
    ld a, b                                       ; $6b82: $78
    adc b                                         ; $6b83: $88
    add a                                         ; $6b84: $87
    ld [hl], a                                    ; $6b85: $77
    ld a, b                                       ; $6b86: $78
    adc b                                         ; $6b87: $88
    adc b                                         ; $6b88: $88
    adc b                                         ; $6b89: $88
    adc b                                         ; $6b8a: $88
    ld [hl], a                                    ; $6b8b: $77
    ld [hl], a                                    ; $6b8c: $77
    ld [hl], a                                    ; $6b8d: $77
    adc b                                         ; $6b8e: $88
    ld a, b                                       ; $6b8f: $78
    add a                                         ; $6b90: $87
    ld [hl], a                                    ; $6b91: $77
    ld a, b                                       ; $6b92: $78
    add a                                         ; $6b93: $87
    adc b                                         ; $6b94: $88
    adc b                                         ; $6b95: $88
    add a                                         ; $6b96: $87
    ld [hl], a                                    ; $6b97: $77
    add a                                         ; $6b98: $87
    ld [hl], a                                    ; $6b99: $77
    adc b                                         ; $6b9a: $88
    adc b                                         ; $6b9b: $88
    adc b                                         ; $6b9c: $88
    ld [hl], a                                    ; $6b9d: $77
    ld [hl], a                                    ; $6b9e: $77
    ld [hl], a                                    ; $6b9f: $77
    add a                                         ; $6ba0: $87
    adc b                                         ; $6ba1: $88
    adc b                                         ; $6ba2: $88
    adc b                                         ; $6ba3: $88
    add a                                         ; $6ba4: $87
    ld [hl], a                                    ; $6ba5: $77
    ld a, b                                       ; $6ba6: $78
    adc b                                         ; $6ba7: $88
    adc b                                         ; $6ba8: $88
    add a                                         ; $6ba9: $87
    ld [hl], a                                    ; $6baa: $77
    adc b                                         ; $6bab: $88
    add a                                         ; $6bac: $87
    adc b                                         ; $6bad: $88
    adc b                                         ; $6bae: $88
    adc b                                         ; $6baf: $88
    add a                                         ; $6bb0: $87
    ld [hl], a                                    ; $6bb1: $77
    ld [hl], a                                    ; $6bb2: $77
    ld [hl], a                                    ; $6bb3: $77
    adc b                                         ; $6bb4: $88
    adc b                                         ; $6bb5: $88
    ld a, b                                       ; $6bb6: $78
    ld [hl], a                                    ; $6bb7: $77
    ld [hl], a                                    ; $6bb8: $77
    adc b                                         ; $6bb9: $88
    adc b                                         ; $6bba: $88
    adc b                                         ; $6bbb: $88
    adc b                                         ; $6bbc: $88
    add a                                         ; $6bbd: $87
    adc b                                         ; $6bbe: $88
    add a                                         ; $6bbf: $87
    add a                                         ; $6bc0: $87
    ld a, b                                       ; $6bc1: $78
    adc b                                         ; $6bc2: $88
    ld [hl], a                                    ; $6bc3: $77
    ld [hl], a                                    ; $6bc4: $77
    ld [hl], a                                    ; $6bc5: $77
    ld [hl], a                                    ; $6bc6: $77
    ld [hl], a                                    ; $6bc7: $77
    adc b                                         ; $6bc8: $88
    adc b                                         ; $6bc9: $88
    adc b                                         ; $6bca: $88
    adc b                                         ; $6bcb: $88
    adc b                                         ; $6bcc: $88
    adc b                                         ; $6bcd: $88
    ld [hl], a                                    ; $6bce: $77
    ld [hl], a                                    ; $6bcf: $77
    add a                                         ; $6bd0: $87
    ld [hl], a                                    ; $6bd1: $77
    ld [hl], a                                    ; $6bd2: $77
    ld [hl], a                                    ; $6bd3: $77
    ld [hl], a                                    ; $6bd4: $77
    ld [hl], a                                    ; $6bd5: $77
    ld a, b                                       ; $6bd6: $78
    adc b                                         ; $6bd7: $88
    adc b                                         ; $6bd8: $88
    add a                                         ; $6bd9: $87
    ld [hl], a                                    ; $6bda: $77
    ld [hl], a                                    ; $6bdb: $77
    ld a, b                                       ; $6bdc: $78
    adc b                                         ; $6bdd: $88
    ld a, b                                       ; $6bde: $78
    adc b                                         ; $6bdf: $88
    adc b                                         ; $6be0: $88
    adc b                                         ; $6be1: $88
    add a                                         ; $6be2: $87
    ld [hl], a                                    ; $6be3: $77
    ld a, b                                       ; $6be4: $78
    add a                                         ; $6be5: $87
    ld [hl], a                                    ; $6be6: $77
    ld [hl], a                                    ; $6be7: $77
    ld [hl], a                                    ; $6be8: $77
    adc b                                         ; $6be9: $88
    adc b                                         ; $6bea: $88
    adc b                                         ; $6beb: $88
    adc b                                         ; $6bec: $88
    adc b                                         ; $6bed: $88
    adc b                                         ; $6bee: $88
    add a                                         ; $6bef: $87
    add a                                         ; $6bf0: $87
    ld [hl], a                                    ; $6bf1: $77
    ld [hl], a                                    ; $6bf2: $77
    ld [hl], a                                    ; $6bf3: $77
    adc b                                         ; $6bf4: $88
    adc b                                         ; $6bf5: $88
    ld [hl], a                                    ; $6bf6: $77
    ld [hl], a                                    ; $6bf7: $77
    ld a, b                                       ; $6bf8: $78
    adc b                                         ; $6bf9: $88
    ld [hl], a                                    ; $6bfa: $77
    adc b                                         ; $6bfb: $88
    adc b                                         ; $6bfc: $88
    add a                                         ; $6bfd: $87
    add a                                         ; $6bfe: $87
    ld a, b                                       ; $6bff: $78
    adc b                                         ; $6c00: $88
    adc b                                         ; $6c01: $88
    adc b                                         ; $6c02: $88
    adc b                                         ; $6c03: $88
    ld [hl], a                                    ; $6c04: $77
    ld [hl], a                                    ; $6c05: $77
    ld [hl], a                                    ; $6c06: $77
    ld [hl], a                                    ; $6c07: $77
    ld a, b                                       ; $6c08: $78
    add a                                         ; $6c09: $87
    ld [hl], a                                    ; $6c0a: $77
    ld [hl], a                                    ; $6c0b: $77
    ld a, b                                       ; $6c0c: $78
    adc b                                         ; $6c0d: $88
    adc b                                         ; $6c0e: $88
    adc b                                         ; $6c0f: $88
    adc b                                         ; $6c10: $88
    adc b                                         ; $6c11: $88
    ld [hl], a                                    ; $6c12: $77
    ld [hl], a                                    ; $6c13: $77
    ld [hl], a                                    ; $6c14: $77
    ld [hl], a                                    ; $6c15: $77
    adc b                                         ; $6c16: $88
    adc b                                         ; $6c17: $88
    adc b                                         ; $6c18: $88
    adc b                                         ; $6c19: $88
    adc b                                         ; $6c1a: $88
    add a                                         ; $6c1b: $87
    ld a, b                                       ; $6c1c: $78
    adc b                                         ; $6c1d: $88
    add a                                         ; $6c1e: $87
    ld [hl], a                                    ; $6c1f: $77
    add a                                         ; $6c20: $87
    ld [hl], a                                    ; $6c21: $77
    ld a, b                                       ; $6c22: $78
    adc b                                         ; $6c23: $88
    adc b                                         ; $6c24: $88
    adc b                                         ; $6c25: $88
    add a                                         ; $6c26: $87
    ld [hl], a                                    ; $6c27: $77
    ld [hl], a                                    ; $6c28: $77
    ld [hl], a                                    ; $6c29: $77
    ld [hl], a                                    ; $6c2a: $77
    adc b                                         ; $6c2b: $88
    adc b                                         ; $6c2c: $88
    adc b                                         ; $6c2d: $88
    adc b                                         ; $6c2e: $88
    adc b                                         ; $6c2f: $88
    adc b                                         ; $6c30: $88
    adc b                                         ; $6c31: $88
    adc b                                         ; $6c32: $88
    add a                                         ; $6c33: $87
    ld [hl], a                                    ; $6c34: $77
    ld [hl], a                                    ; $6c35: $77
    ld [hl], a                                    ; $6c36: $77
    ld a, b                                       ; $6c37: $78
    adc b                                         ; $6c38: $88
    adc b                                         ; $6c39: $88
    ld [hl], a                                    ; $6c3a: $77
    ld [hl], a                                    ; $6c3b: $77
    ld [hl], a                                    ; $6c3c: $77
    adc b                                         ; $6c3d: $88
    ld a, b                                       ; $6c3e: $78
    ld [hl], a                                    ; $6c3f: $77
    adc b                                         ; $6c40: $88
    adc b                                         ; $6c41: $88
    adc b                                         ; $6c42: $88
    add a                                         ; $6c43: $87
    ld [hl], a                                    ; $6c44: $77
    ld [hl], a                                    ; $6c45: $77
    ld a, b                                       ; $6c46: $78
    adc b                                         ; $6c47: $88
    adc b                                         ; $6c48: $88
    adc b                                         ; $6c49: $88
    adc b                                         ; $6c4a: $88
    ld [hl], a                                    ; $6c4b: $77
    ld [hl], a                                    ; $6c4c: $77
    ld a, b                                       ; $6c4d: $78
    adc b                                         ; $6c4e: $88
    adc b                                         ; $6c4f: $88
    add a                                         ; $6c50: $87
    ld [hl], a                                    ; $6c51: $77
    adc b                                         ; $6c52: $88
    adc b                                         ; $6c53: $88
    ld [hl], a                                    ; $6c54: $77
    ld [hl], a                                    ; $6c55: $77
    ld [hl], a                                    ; $6c56: $77
    ld a, b                                       ; $6c57: $78
    adc b                                         ; $6c58: $88
    adc b                                         ; $6c59: $88
    adc b                                         ; $6c5a: $88
    ld a, b                                       ; $6c5b: $78
    ld [hl], a                                    ; $6c5c: $77
    ld [hl], a                                    ; $6c5d: $77
    ld [hl], a                                    ; $6c5e: $77
    ld [hl], a                                    ; $6c5f: $77
    adc b                                         ; $6c60: $88
    adc b                                         ; $6c61: $88
    add a                                         ; $6c62: $87
    ld [hl], a                                    ; $6c63: $77
    ld a, b                                       ; $6c64: $78
    ld a, b                                       ; $6c65: $78
    adc b                                         ; $6c66: $88
    adc b                                         ; $6c67: $88
    adc b                                         ; $6c68: $88
    adc b                                         ; $6c69: $88
    add a                                         ; $6c6a: $87
    ld [hl], a                                    ; $6c6b: $77
    ld [hl], a                                    ; $6c6c: $77
    ld [hl], a                                    ; $6c6d: $77
    ld a, b                                       ; $6c6e: $78
    adc b                                         ; $6c6f: $88
    adc b                                         ; $6c70: $88
    ld [hl], a                                    ; $6c71: $77
    ld a, b                                       ; $6c72: $78
    adc b                                         ; $6c73: $88
    add a                                         ; $6c74: $87
    ld [hl], a                                    ; $6c75: $77
    ld [hl], a                                    ; $6c76: $77
    ld [hl], a                                    ; $6c77: $77
    ld [hl], a                                    ; $6c78: $77
    ld a, b                                       ; $6c79: $78
    adc b                                         ; $6c7a: $88
    adc b                                         ; $6c7b: $88
    adc b                                         ; $6c7c: $88
    adc b                                         ; $6c7d: $88
    adc b                                         ; $6c7e: $88
    adc b                                         ; $6c7f: $88
    adc b                                         ; $6c80: $88
    adc b                                         ; $6c81: $88
    add a                                         ; $6c82: $87
    ld [hl], a                                    ; $6c83: $77
    ld [hl], a                                    ; $6c84: $77
    ld [hl], a                                    ; $6c85: $77
    ld [hl], a                                    ; $6c86: $77
    ld [hl], a                                    ; $6c87: $77
    ld [hl], a                                    ; $6c88: $77
    ld a, b                                       ; $6c89: $78
    adc b                                         ; $6c8a: $88
    adc b                                         ; $6c8b: $88
    adc b                                         ; $6c8c: $88
    adc b                                         ; $6c8d: $88
    ld [hl], a                                    ; $6c8e: $77
    ld [hl], a                                    ; $6c8f: $77
    adc b                                         ; $6c90: $88
    adc b                                         ; $6c91: $88
    ld [hl], a                                    ; $6c92: $77
    ld [hl], a                                    ; $6c93: $77
    ld [hl], a                                    ; $6c94: $77
    ld a, b                                       ; $6c95: $78
    adc b                                         ; $6c96: $88
    adc b                                         ; $6c97: $88
    ld [hl], a                                    ; $6c98: $77
    ld [hl], a                                    ; $6c99: $77
    adc b                                         ; $6c9a: $88
    adc b                                         ; $6c9b: $88
    add a                                         ; $6c9c: $87
    add a                                         ; $6c9d: $87
    ld [hl], a                                    ; $6c9e: $77
    ld [hl], a                                    ; $6c9f: $77
    adc b                                         ; $6ca0: $88
    adc b                                         ; $6ca1: $88
    add a                                         ; $6ca2: $87
    adc b                                         ; $6ca3: $88
    ld a, b                                       ; $6ca4: $78
    adc b                                         ; $6ca5: $88
    adc b                                         ; $6ca6: $88
    adc b                                         ; $6ca7: $88
    ld [hl], a                                    ; $6ca8: $77
    ld [hl], a                                    ; $6ca9: $77
    ld a, b                                       ; $6caa: $78
    adc b                                         ; $6cab: $88
    add a                                         ; $6cac: $87
    ld [hl], a                                    ; $6cad: $77
    ld a, b                                       ; $6cae: $78
    adc b                                         ; $6caf: $88
    add a                                         ; $6cb0: $87
    ld [hl], a                                    ; $6cb1: $77
    adc b                                         ; $6cb2: $88
    adc b                                         ; $6cb3: $88
    adc b                                         ; $6cb4: $88
    adc b                                         ; $6cb5: $88
    adc b                                         ; $6cb6: $88
    ld a, b                                       ; $6cb7: $78
    adc b                                         ; $6cb8: $88
    adc b                                         ; $6cb9: $88
    ld a, b                                       ; $6cba: $78
    adc b                                         ; $6cbb: $88
    adc b                                         ; $6cbc: $88
    adc b                                         ; $6cbd: $88
    adc b                                         ; $6cbe: $88
    adc b                                         ; $6cbf: $88
    adc b                                         ; $6cc0: $88
    adc b                                         ; $6cc1: $88
    adc b                                         ; $6cc2: $88
    adc b                                         ; $6cc3: $88
    adc b                                         ; $6cc4: $88
    adc b                                         ; $6cc5: $88
    adc b                                         ; $6cc6: $88
    adc b                                         ; $6cc7: $88
    ld [hl], a                                    ; $6cc8: $77
    ld [hl], a                                    ; $6cc9: $77
    ld [hl], a                                    ; $6cca: $77
    ld [hl], a                                    ; $6ccb: $77
    ld [hl], a                                    ; $6ccc: $77
    ld [hl], a                                    ; $6ccd: $77
    ld [hl], a                                    ; $6cce: $77
    ld [hl], a                                    ; $6ccf: $77
    adc b                                         ; $6cd0: $88
    ld a, b                                       ; $6cd1: $78
    ld [hl], h                                    ; $6cd2: $74
    adc b                                         ; $6cd3: $88
    sub a                                         ; $6cd4: $97
    ld a, b                                       ; $6cd5: $78
    adc c                                         ; $6cd6: $89
    adc b                                         ; $6cd7: $88
    ld a, b                                       ; $6cd8: $78
    sbc c                                         ; $6cd9: $99
    adc b                                         ; $6cda: $88
    ld [hl], a                                    ; $6cdb: $77
    ld a, d                                       ; $6cdc: $7a
    sub a                                         ; $6cdd: $97
    sub a                                         ; $6cde: $97
    ld a, b                                       ; $6cdf: $78
    sbc b                                         ; $6ce0: $98
    ld h, a                                       ; $6ce1: $67
    ld [hl], a                                    ; $6ce2: $77
    add a                                         ; $6ce3: $87
    ld h, l                                       ; $6ce4: $65
    ld h, a                                       ; $6ce5: $67
    ld [hl], a                                    ; $6ce6: $77
    ld [hl], a                                    ; $6ce7: $77
    ld h, [hl]                                    ; $6ce8: $66
    ld a, b                                       ; $6ce9: $78
    adc c                                         ; $6cea: $89
    add [hl]                                      ; $6ceb: $86
    ld h, [hl]                                    ; $6cec: $66
    ld h, [hl]                                    ; $6ced: $66
    ld a, b                                       ; $6cee: $78
    sbc c                                         ; $6cef: $99
    sbc b                                         ; $6cf0: $98
    adc b                                         ; $6cf1: $88
    adc b                                         ; $6cf2: $88
    adc b                                         ; $6cf3: $88
    add a                                         ; $6cf4: $87
    ld [hl], a                                    ; $6cf5: $77
    adc b                                         ; $6cf6: $88
    sbc c                                         ; $6cf7: $99
    adc b                                         ; $6cf8: $88
    adc b                                         ; $6cf9: $88
    adc b                                         ; $6cfa: $88
    sbc c                                         ; $6cfb: $99
    xor b                                         ; $6cfc: $a8
    ld d, h                                       ; $6cfd: $54
    ld d, a                                       ; $6cfe: $57
    xor e                                         ; $6cff: $ab
    xor c                                         ; $6d00: $a9
    ld d, e                                       ; $6d01: $53
    ld b, [hl]                                    ; $6d02: $46
    adc b                                         ; $6d03: $88
    halt                                          ; $6d04: $76
    ld h, a                                       ; $6d05: $67
    add [hl]                                      ; $6d06: $86
    ld h, l                                       ; $6d07: $65
    ld d, [hl]                                    ; $6d08: $56
    adc b                                         ; $6d09: $88
    ld a, b                                       ; $6d0a: $78
    adc d                                         ; $6d0b: $8a
    cp d                                          ; $6d0c: $ba
    sub a                                         ; $6d0d: $97
    ld h, [hl]                                    ; $6d0e: $66
    ld h, a                                       ; $6d0f: $67
    add a                                         ; $6d10: $87
    adc b                                         ; $6d11: $88
    sbc c                                         ; $6d12: $99
    adc b                                         ; $6d13: $88
    ld [hl], a                                    ; $6d14: $77
    adc b                                         ; $6d15: $88
    add a                                         ; $6d16: $87
    ld [hl], a                                    ; $6d17: $77
    adc b                                         ; $6d18: $88
    sbc c                                         ; $6d19: $99
    sbc b                                         ; $6d1a: $98
    adc b                                         ; $6d1b: $88
    ld [hl], a                                    ; $6d1c: $77
    halt                                          ; $6d1d: $76
    ld a, b                                       ; $6d1e: $78
    adc b                                         ; $6d1f: $88
    adc b                                         ; $6d20: $88
    sbc c                                         ; $6d21: $99
    sbc b                                         ; $6d22: $98
    halt                                          ; $6d23: $76
    ld h, [hl]                                    ; $6d24: $66
    ld h, [hl]                                    ; $6d25: $66
    ld h, a                                       ; $6d26: $67
    adc b                                         ; $6d27: $88
    adc c                                         ; $6d28: $89
    sbc c                                         ; $6d29: $99
    sbc c                                         ; $6d2a: $99
    add a                                         ; $6d2b: $87
    ld [hl], a                                    ; $6d2c: $77
    ld [hl], a                                    ; $6d2d: $77
    ld a, b                                       ; $6d2e: $78
    adc b                                         ; $6d2f: $88
    sbc b                                         ; $6d30: $98
    adc b                                         ; $6d31: $88
    add a                                         ; $6d32: $87
    adc c                                         ; $6d33: $89
    sub [hl]                                      ; $6d34: $96
    halt                                          ; $6d35: $76
    ld h, a                                       ; $6d36: $67
    ld a, b                                       ; $6d37: $78
    ld h, l                                       ; $6d38: $65
    add a                                         ; $6d39: $87
    ld h, a                                       ; $6d3a: $67
    adc b                                         ; $6d3b: $88
    adc c                                         ; $6d3c: $89
    adc b                                         ; $6d3d: $88
    add a                                         ; $6d3e: $87
    ld [hl], a                                    ; $6d3f: $77
    ld h, a                                       ; $6d40: $67
    ld [hl], a                                    ; $6d41: $77
    ld [hl], a                                    ; $6d42: $77
    adc b                                         ; $6d43: $88
    sbc c                                         ; $6d44: $99
    sbc b                                         ; $6d45: $98
    add a                                         ; $6d46: $87
    ld [hl], a                                    ; $6d47: $77
    halt                                          ; $6d48: $76
    ld h, [hl]                                    ; $6d49: $66
    ld h, a                                       ; $6d4a: $67
    add a                                         ; $6d4b: $87
    ld [hl], a                                    ; $6d4c: $77
    sbc c                                         ; $6d4d: $99
    adc b                                         ; $6d4e: $88
    ld a, b                                       ; $6d4f: $78
    adc b                                         ; $6d50: $88
    ld [hl], a                                    ; $6d51: $77
    ld [hl], a                                    ; $6d52: $77
    ld a, b                                       ; $6d53: $78
    adc b                                         ; $6d54: $88
    adc b                                         ; $6d55: $88
    ld a, b                                       ; $6d56: $78
    ld [hl], a                                    ; $6d57: $77
    add a                                         ; $6d58: $87
    ld [hl], a                                    ; $6d59: $77
    ld [hl], a                                    ; $6d5a: $77
    ld [hl], a                                    ; $6d5b: $77
    ld h, a                                       ; $6d5c: $67
    adc b                                         ; $6d5d: $88
    adc b                                         ; $6d5e: $88
    adc b                                         ; $6d5f: $88
    add a                                         ; $6d60: $87
    add a                                         ; $6d61: $87
    ld a, b                                       ; $6d62: $78
    adc b                                         ; $6d63: $88
    ld [hl], a                                    ; $6d64: $77
    add a                                         ; $6d65: $87
    ld a, b                                       ; $6d66: $78
    adc b                                         ; $6d67: $88
    ld a, b                                       ; $6d68: $78
    adc b                                         ; $6d69: $88
    adc b                                         ; $6d6a: $88
    adc b                                         ; $6d6b: $88
    ld a, b                                       ; $6d6c: $78
    ld [hl], a                                    ; $6d6d: $77
    adc b                                         ; $6d6e: $88
    adc b                                         ; $6d6f: $88
    adc b                                         ; $6d70: $88
    adc b                                         ; $6d71: $88
    adc b                                         ; $6d72: $88
    ld a, b                                       ; $6d73: $78
    add a                                         ; $6d74: $87
    ld [hl], a                                    ; $6d75: $77
    ld [hl], a                                    ; $6d76: $77
    ld [hl], a                                    ; $6d77: $77
    ld [hl], a                                    ; $6d78: $77
    ld h, a                                       ; $6d79: $67
    adc b                                         ; $6d7a: $88
    adc b                                         ; $6d7b: $88
    ld [hl], a                                    ; $6d7c: $77
    add a                                         ; $6d7d: $87
    ld a, b                                       ; $6d7e: $78
    sbc b                                         ; $6d7f: $98
    sbc d                                         ; $6d80: $9a
    halt                                          ; $6d81: $76
    ld h, [hl]                                    ; $6d82: $66
    ld a, b                                       ; $6d83: $78
    add a                                         ; $6d84: $87
    sbc b                                         ; $6d85: $98
    halt                                          ; $6d86: $76
    ld l, b                                       ; $6d87: $68
    adc b                                         ; $6d88: $88
    add a                                         ; $6d89: $87
    ld a, b                                       ; $6d8a: $78
    add a                                         ; $6d8b: $87
    ld a, b                                       ; $6d8c: $78
    adc b                                         ; $6d8d: $88
    sbc c                                         ; $6d8e: $99
    sbc b                                         ; $6d8f: $98
    add a                                         ; $6d90: $87
    add a                                         ; $6d91: $87
    ld [hl], a                                    ; $6d92: $77
    sub a                                         ; $6d93: $97
    ld a, b                                       ; $6d94: $78
    ld [hl], a                                    ; $6d95: $77
    ld a, b                                       ; $6d96: $78
    add a                                         ; $6d97: $87
    add a                                         ; $6d98: $87
    ld a, b                                       ; $6d99: $78
    adc b                                         ; $6d9a: $88
    add a                                         ; $6d9b: $87
    add a                                         ; $6d9c: $87
    ld [hl], a                                    ; $6d9d: $77
    halt                                          ; $6d9e: $76
    ld [hl], a                                    ; $6d9f: $77
    adc b                                         ; $6da0: $88
    ld a, b                                       ; $6da1: $78
    ld [hl], a                                    ; $6da2: $77
    ld a, b                                       ; $6da3: $78
    ld [hl], a                                    ; $6da4: $77
    ld [hl], a                                    ; $6da5: $77
    ld [hl], a                                    ; $6da6: $77
    ld h, a                                       ; $6da7: $67
    sbc c                                         ; $6da8: $99
    adc b                                         ; $6da9: $88
    adc b                                         ; $6daa: $88
    sbc c                                         ; $6dab: $99
    add a                                         ; $6dac: $87
    add a                                         ; $6dad: $87
    halt                                          ; $6dae: $76
    ld c, d                                       ; $6daf: $4a
    add [hl]                                      ; $6db0: $86
    ld [hl], a                                    ; $6db1: $77
    ld l, b                                       ; $6db2: $68
    add [hl]                                      ; $6db3: $86
    sbc b                                         ; $6db4: $98
    adc b                                         ; $6db5: $88
    add a                                         ; $6db6: $87
    ld a, b                                       ; $6db7: $78
    ld a, b                                       ; $6db8: $78
    add a                                         ; $6db9: $87
    ld h, [hl]                                    ; $6dba: $66
    ld a, c                                       ; $6dbb: $79
    adc b                                         ; $6dbc: $88
    sbc b                                         ; $6dbd: $98
    adc c                                         ; $6dbe: $89
    adc b                                         ; $6dbf: $88
    adc b                                         ; $6dc0: $88
    halt                                          ; $6dc1: $76
    ld a, b                                       ; $6dc2: $78
    ld h, a                                       ; $6dc3: $67
    sbc b                                         ; $6dc4: $98
    ld [hl], a                                    ; $6dc5: $77
    adc b                                         ; $6dc6: $88
    sbc b                                         ; $6dc7: $98
    add a                                         ; $6dc8: $87
    halt                                          ; $6dc9: $76
    ld a, b                                       ; $6dca: $78
    ld a, b                                       ; $6dcb: $78
    add a                                         ; $6dcc: $87
    ld a, c                                       ; $6dcd: $79
    adc b                                         ; $6dce: $88
    ld a, b                                       ; $6dcf: $78
    ld h, h                                       ; $6dd0: $64
    ld a, d                                       ; $6dd1: $7a
    sbc c                                         ; $6dd2: $99
    sub a                                         ; $6dd3: $97
    ld a, b                                       ; $6dd4: $78
    ld a, b                                       ; $6dd5: $78
    adc b                                         ; $6dd6: $88
    adc b                                         ; $6dd7: $88
    adc c                                         ; $6dd8: $89
    sbc c                                         ; $6dd9: $99
    adc b                                         ; $6dda: $88
    ld a, b                                       ; $6ddb: $78
    ld [hl], a                                    ; $6ddc: $77
    add a                                         ; $6ddd: $87
    ld h, [hl]                                    ; $6dde: $66
    adc c                                         ; $6ddf: $89
    add a                                         ; $6de0: $87
    ld a, b                                       ; $6de1: $78
    halt                                          ; $6de2: $76
    ld l, b                                       ; $6de3: $68
    ld [hl], a                                    ; $6de4: $77
    halt                                          ; $6de5: $76
    ld a, b                                       ; $6de6: $78
    adc b                                         ; $6de7: $88
    adc b                                         ; $6de8: $88
    adc b                                         ; $6de9: $88
    ld [hl], a                                    ; $6dea: $77
    halt                                          ; $6deb: $76
    ld l, b                                       ; $6dec: $68
    ld h, a                                       ; $6ded: $67
    ld a, b                                       ; $6dee: $78
    ld a, c                                       ; $6def: $79
    add [hl]                                      ; $6df0: $86
    add a                                         ; $6df1: $87
    adc b                                         ; $6df2: $88
    adc c                                         ; $6df3: $89
    adc b                                         ; $6df4: $88
    adc b                                         ; $6df5: $88
    adc b                                         ; $6df6: $88
    halt                                          ; $6df7: $76
    add a                                         ; $6df8: $87
    adc b                                         ; $6df9: $88
    sub a                                         ; $6dfa: $97
    ld [hl], a                                    ; $6dfb: $77
    adc b                                         ; $6dfc: $88
    ld h, a                                       ; $6dfd: $67
    add a                                         ; $6dfe: $87
    ld a, b                                       ; $6dff: $78
    add h                                         ; $6e00: $84
    ld e, c                                       ; $6e01: $59
    sbc b                                         ; $6e02: $98
    adc c                                         ; $6e03: $89
    ld [hl], a                                    ; $6e04: $77
    adc b                                         ; $6e05: $88
    adc b                                         ; $6e06: $88
    adc b                                         ; $6e07: $88
    adc b                                         ; $6e08: $88
    adc b                                         ; $6e09: $88
    ld h, a                                       ; $6e0a: $67
    adc b                                         ; $6e0b: $88
    ld l, b                                       ; $6e0c: $68
    ld a, b                                       ; $6e0d: $78
    ld a, b                                       ; $6e0e: $78
    add a                                         ; $6e0f: $87
    add a                                         ; $6e10: $87
    adc b                                         ; $6e11: $88
    ld a, b                                       ; $6e12: $78
    add a                                         ; $6e13: $87
    add a                                         ; $6e14: $87
    adc c                                         ; $6e15: $89
    add a                                         ; $6e16: $87
    ld [hl], a                                    ; $6e17: $77
    ld a, c                                       ; $6e18: $79
    add a                                         ; $6e19: $87
    ld [hl], a                                    ; $6e1a: $77
    ld a, b                                       ; $6e1b: $78
    adc b                                         ; $6e1c: $88
    halt                                          ; $6e1d: $76
    ld a, c                                       ; $6e1e: $79
    sbc c                                         ; $6e1f: $99
    add [hl]                                      ; $6e20: $86
    sbc d                                         ; $6e21: $9a
    adc c                                         ; $6e22: $89
    halt                                          ; $6e23: $76
    ld h, a                                       ; $6e24: $67
    adc b                                         ; $6e25: $88
    ld [hl], a                                    ; $6e26: $77
    adc b                                         ; $6e27: $88
    adc b                                         ; $6e28: $88
    sbc c                                         ; $6e29: $99
    adc c                                         ; $6e2a: $89
    add a                                         ; $6e2b: $87
    ld a, b                                       ; $6e2c: $78
    halt                                          ; $6e2d: $76
    sub a                                         ; $6e2e: $97
    ld h, a                                       ; $6e2f: $67
    ld d, [hl]                                    ; $6e30: $56
    add a                                         ; $6e31: $87
    ld d, a                                       ; $6e32: $57
    ld [hl], a                                    ; $6e33: $77
    adc b                                         ; $6e34: $88
    sbc b                                         ; $6e35: $98
    adc b                                         ; $6e36: $88
    adc c                                         ; $6e37: $89
    sub a                                         ; $6e38: $97
    ld h, a                                       ; $6e39: $67
    ld [hl], a                                    ; $6e3a: $77
    add a                                         ; $6e3b: $87
    ld a, b                                       ; $6e3c: $78
    adc b                                         ; $6e3d: $88
    add a                                         ; $6e3e: $87
    ld a, b                                       ; $6e3f: $78
    add a                                         ; $6e40: $87
    add a                                         ; $6e41: $87
    ld a, b                                       ; $6e42: $78
    add [hl]                                      ; $6e43: $86
    ld [hl], a                                    ; $6e44: $77
    ld a, b                                       ; $6e45: $78
    adc b                                         ; $6e46: $88
    ld a, b                                       ; $6e47: $78
    add a                                         ; $6e48: $87
    sbc c                                         ; $6e49: $99
    adc b                                         ; $6e4a: $88
    sbc b                                         ; $6e4b: $98
    ld [hl], a                                    ; $6e4c: $77
    ld [hl], a                                    ; $6e4d: $77
    xor c                                         ; $6e4e: $a9
    ld [hl], l                                    ; $6e4f: $75
    ld d, a                                       ; $6e50: $57
    sbc b                                         ; $6e51: $98
    adc c                                         ; $6e52: $89
    ld d, [hl]                                    ; $6e53: $56
    adc c                                         ; $6e54: $89
    adc b                                         ; $6e55: $88
    ld d, h                                       ; $6e56: $54
    ld a, c                                       ; $6e57: $79
    sub a                                         ; $6e58: $97
    ld a, b                                       ; $6e59: $78
    ld a, c                                       ; $6e5a: $79
    xor b                                         ; $6e5b: $a8
    ld a, b                                       ; $6e5c: $78
    ld [hl], a                                    ; $6e5d: $77
    add a                                         ; $6e5e: $87
    halt                                          ; $6e5f: $76
    ld l, b                                       ; $6e60: $68
    adc b                                         ; $6e61: $88
    add a                                         ; $6e62: $87
    ld a, c                                       ; $6e63: $79
    adc b                                         ; $6e64: $88
    halt                                          ; $6e65: $76
    ld [hl], a                                    ; $6e66: $77
    ld a, b                                       ; $6e67: $78
    add a                                         ; $6e68: $87
    adc c                                         ; $6e69: $89
    adc b                                         ; $6e6a: $88
    ld a, b                                       ; $6e6b: $78
    adc b                                         ; $6e6c: $88
    add a                                         ; $6e6d: $87
    ld [hl], a                                    ; $6e6e: $77
    ld a, b                                       ; $6e6f: $78
    adc b                                         ; $6e70: $88
    add a                                         ; $6e71: $87
    add a                                         ; $6e72: $87
    ld [hl], a                                    ; $6e73: $77
    ld a, b                                       ; $6e74: $78
    add a                                         ; $6e75: $87
    ld [hl], a                                    ; $6e76: $77
    add [hl]                                      ; $6e77: $86
    ld h, a                                       ; $6e78: $67
    adc b                                         ; $6e79: $88
    adc b                                         ; $6e7a: $88
    adc b                                         ; $6e7b: $88
    ld h, a                                       ; $6e7c: $67
    sbc c                                         ; $6e7d: $99
    sbc b                                         ; $6e7e: $98
    halt                                          ; $6e7f: $76
    ld h, a                                       ; $6e80: $67
    sbc b                                         ; $6e81: $98
    ld a, b                                       ; $6e82: $78
    add a                                         ; $6e83: $87
    adc c                                         ; $6e84: $89
    adc b                                         ; $6e85: $88
    add a                                         ; $6e86: $87
    ld l, b                                       ; $6e87: $68
    ld [hl], l                                    ; $6e88: $75
    ld h, [hl]                                    ; $6e89: $66
    ld l, c                                       ; $6e8a: $69
    ld [hl], a                                    ; $6e8b: $77
    ld a, b                                       ; $6e8c: $78
    adc c                                         ; $6e8d: $89
    adc b                                         ; $6e8e: $88
    xor b                                         ; $6e8f: $a8
    adc b                                         ; $6e90: $88
    halt                                          ; $6e91: $76
    ld a, c                                       ; $6e92: $79
    ld a, b                                       ; $6e93: $78
    add a                                         ; $6e94: $87
    add a                                         ; $6e95: $87
    ld l, b                                       ; $6e96: $68
    adc b                                         ; $6e97: $88
    ld a, b                                       ; $6e98: $78
    adc b                                         ; $6e99: $88
    ld h, a                                       ; $6e9a: $67
    add [hl]                                      ; $6e9b: $86
    ld a, c                                       ; $6e9c: $79
    add a                                         ; $6e9d: $87
    adc b                                         ; $6e9e: $88
    add a                                         ; $6e9f: $87
    adc d                                         ; $6ea0: $8a
    adc b                                         ; $6ea1: $88
    add a                                         ; $6ea2: $87
    ld [hl], a                                    ; $6ea3: $77
    ld h, a                                       ; $6ea4: $67
    add a                                         ; $6ea5: $87
    ld h, a                                       ; $6ea6: $67
    ld [hl], a                                    ; $6ea7: $77
    sub a                                         ; $6ea8: $97
    halt                                          ; $6ea9: $76
    adc d                                         ; $6eaa: $8a
    add a                                         ; $6eab: $87
    ld h, a                                       ; $6eac: $67
    adc b                                         ; $6ead: $88
    ld a, b                                       ; $6eae: $78
    sbc b                                         ; $6eaf: $98
    add a                                         ; $6eb0: $87
    ld [hl], a                                    ; $6eb1: $77
    add a                                         ; $6eb2: $87
    adc b                                         ; $6eb3: $88
    add a                                         ; $6eb4: $87
    adc c                                         ; $6eb5: $89
    add a                                         ; $6eb6: $87
    ld [hl], a                                    ; $6eb7: $77
    ld h, a                                       ; $6eb8: $67
    ld [hl], a                                    ; $6eb9: $77
    halt                                          ; $6eba: $76
    ld a, b                                       ; $6ebb: $78
    ld [hl], a                                    ; $6ebc: $77
    adc c                                         ; $6ebd: $89
    add a                                         ; $6ebe: $87
    ld a, b                                       ; $6ebf: $78
    adc b                                         ; $6ec0: $88
    add a                                         ; $6ec1: $87
    ld [hl], a                                    ; $6ec2: $77
    sbc b                                         ; $6ec3: $98
    add a                                         ; $6ec4: $87
    ld a, b                                       ; $6ec5: $78
    ld a, b                                       ; $6ec6: $78
    add a                                         ; $6ec7: $87
    sbc b                                         ; $6ec8: $98
    adc b                                         ; $6ec9: $88
    ld [hl], a                                    ; $6eca: $77
    ld a, b                                       ; $6ecb: $78
    add [hl]                                      ; $6ecc: $86
    ld [hl], a                                    ; $6ecd: $77
    sbc b                                         ; $6ece: $98
    ld a, b                                       ; $6ecf: $78
    adc c                                         ; $6ed0: $89
    sbc b                                         ; $6ed1: $98
    adc b                                         ; $6ed2: $88
    ld [hl], a                                    ; $6ed3: $77
    ld [hl], a                                    ; $6ed4: $77
    ld a, b                                       ; $6ed5: $78
    ld a, b                                       ; $6ed6: $78
    adc b                                         ; $6ed7: $88
    sub a                                         ; $6ed8: $97
    ld e, b                                       ; $6ed9: $58
    sub [hl]                                      ; $6eda: $96
    adc b                                         ; $6edb: $88
    ld a, b                                       ; $6edc: $78
    adc b                                         ; $6edd: $88
    ld a, b                                       ; $6ede: $78
    adc b                                         ; $6edf: $88
    add a                                         ; $6ee0: $87
    ld a, b                                       ; $6ee1: $78
    add a                                         ; $6ee2: $87
    ld [hl], a                                    ; $6ee3: $77
    ld [hl], a                                    ; $6ee4: $77
    ld a, b                                       ; $6ee5: $78
    ld h, [hl]                                    ; $6ee6: $66
    ld [hl], a                                    ; $6ee7: $77
    ld [hl], a                                    ; $6ee8: $77
    adc b                                         ; $6ee9: $88
    adc b                                         ; $6eea: $88
    sbc b                                         ; $6eeb: $98
    ld a, d                                       ; $6eec: $7a
    add a                                         ; $6eed: $87
    halt                                          ; $6eee: $76
    ld h, a                                       ; $6eef: $67
    adc b                                         ; $6ef0: $88
    adc b                                         ; $6ef1: $88
    adc c                                         ; $6ef2: $89
    add a                                         ; $6ef3: $87
    adc b                                         ; $6ef4: $88
    ld [hl], a                                    ; $6ef5: $77
    add a                                         ; $6ef6: $87
    ld [hl], a                                    ; $6ef7: $77
    ld [hl], a                                    ; $6ef8: $77
    ld a, b                                       ; $6ef9: $78
    ld a, b                                       ; $6efa: $78
    adc b                                         ; $6efb: $88
    ld a, b                                       ; $6efc: $78
    adc c                                         ; $6efd: $89
    ld a, b                                       ; $6efe: $78
    adc b                                         ; $6eff: $88
    add a                                         ; $6f00: $87
    add a                                         ; $6f01: $87
    ld [hl], a                                    ; $6f02: $77
    adc c                                         ; $6f03: $89
    ld a, b                                       ; $6f04: $78
    add a                                         ; $6f05: $87
    ld h, a                                       ; $6f06: $67
    add a                                         ; $6f07: $87
    ld a, b                                       ; $6f08: $78
    ld [hl], a                                    ; $6f09: $77
    ld h, a                                       ; $6f0a: $67
    adc b                                         ; $6f0b: $88
    adc b                                         ; $6f0c: $88
    ld [hl], a                                    ; $6f0d: $77
    add a                                         ; $6f0e: $87
    ld a, c                                       ; $6f0f: $79
    add a                                         ; $6f10: $87
    halt                                          ; $6f11: $76
    ld a, b                                       ; $6f12: $78
    ld h, [hl]                                    ; $6f13: $66
    halt                                          ; $6f14: $76
    adc b                                         ; $6f15: $88
    ld [hl], a                                    ; $6f16: $77
    ld a, b                                       ; $6f17: $78
    adc e                                         ; $6f18: $8b
    sbc c                                         ; $6f19: $99
    add a                                         ; $6f1a: $87
    add a                                         ; $6f1b: $87
    ld h, a                                       ; $6f1c: $67
    add a                                         ; $6f1d: $87
    ld h, [hl]                                    ; $6f1e: $66
    ld [hl], a                                    ; $6f1f: $77
    adc c                                         ; $6f20: $89
    adc b                                         ; $6f21: $88
    ld [hl], a                                    ; $6f22: $77
    adc c                                         ; $6f23: $89
    add a                                         ; $6f24: $87
    halt                                          ; $6f25: $76
    ld [hl], a                                    ; $6f26: $77
    adc b                                         ; $6f27: $88
    ld [hl], a                                    ; $6f28: $77
    ld d, a                                       ; $6f29: $57
    ld [hl], a                                    ; $6f2a: $77
    ld a, b                                       ; $6f2b: $78
    sbc b                                         ; $6f2c: $98
    ld a, b                                       ; $6f2d: $78
    add a                                         ; $6f2e: $87
    adc b                                         ; $6f2f: $88
    adc b                                         ; $6f30: $88
    ld [hl], a                                    ; $6f31: $77
    ld l, b                                       ; $6f32: $68
    adc b                                         ; $6f33: $88
    sbc b                                         ; $6f34: $98
    ld [hl], a                                    ; $6f35: $77
    ld a, b                                       ; $6f36: $78
    sbc c                                         ; $6f37: $99
    ld [hl], a                                    ; $6f38: $77
    ld [hl], a                                    ; $6f39: $77
    ld a, b                                       ; $6f3a: $78
    ld a, b                                       ; $6f3b: $78
    ld a, b                                       ; $6f3c: $78
    add a                                         ; $6f3d: $87
    adc c                                         ; $6f3e: $89
    adc b                                         ; $6f3f: $88
    add a                                         ; $6f40: $87
    ld d, [hl]                                    ; $6f41: $56
    add a                                         ; $6f42: $87
    ld h, a                                       ; $6f43: $67
    ld [hl], a                                    ; $6f44: $77
    ld a, b                                       ; $6f45: $78
    add a                                         ; $6f46: $87
    adc b                                         ; $6f47: $88
    ld a, b                                       ; $6f48: $78
    sbc b                                         ; $6f49: $98
    add a                                         ; $6f4a: $87
    ld [hl], a                                    ; $6f4b: $77
    ld a, b                                       ; $6f4c: $78
    add a                                         ; $6f4d: $87
    adc b                                         ; $6f4e: $88
    adc b                                         ; $6f4f: $88
    add a                                         ; $6f50: $87
    add a                                         ; $6f51: $87
    adc c                                         ; $6f52: $89
    sbc c                                         ; $6f53: $99
    ld [hl], a                                    ; $6f54: $77
    halt                                          ; $6f55: $76
    ld h, a                                       ; $6f56: $67
    add [hl]                                      ; $6f57: $86
    adc b                                         ; $6f58: $88
    ld [hl], a                                    ; $6f59: $77
    ld a, b                                       ; $6f5a: $78
    ld a, b                                       ; $6f5b: $78
    sbc b                                         ; $6f5c: $98
    ld h, a                                       ; $6f5d: $67
    ld [hl], a                                    ; $6f5e: $77
    adc b                                         ; $6f5f: $88
    adc b                                         ; $6f60: $88
    halt                                          ; $6f61: $76
    add a                                         ; $6f62: $87
    adc d                                         ; $6f63: $8a
    add [hl]                                      ; $6f64: $86
    ld l, b                                       ; $6f65: $68
    ld a, b                                       ; $6f66: $78
    ld [hl], a                                    ; $6f67: $77
    ld [hl], a                                    ; $6f68: $77
    ld l, b                                       ; $6f69: $68
    xor b                                         ; $6f6a: $a8
    adc b                                         ; $6f6b: $88
    ld l, b                                       ; $6f6c: $68
    add a                                         ; $6f6d: $87
    sbc c                                         ; $6f6e: $99
    ld a, b                                       ; $6f6f: $78
    add a                                         ; $6f70: $87
    ld [hl], a                                    ; $6f71: $77
    ld [hl], a                                    ; $6f72: $77
    ld h, a                                       ; $6f73: $67
    halt                                          ; $6f74: $76
    ld [hl], a                                    ; $6f75: $77
    ld h, a                                       ; $6f76: $67
    sbc b                                         ; $6f77: $98
    ld l, b                                       ; $6f78: $68
    add [hl]                                      ; $6f79: $86
    adc b                                         ; $6f7a: $88
    sub a                                         ; $6f7b: $97
    ld a, b                                       ; $6f7c: $78
    ld [hl], a                                    ; $6f7d: $77
    adc b                                         ; $6f7e: $88
    ld [hl], a                                    ; $6f7f: $77
    adc b                                         ; $6f80: $88
    adc b                                         ; $6f81: $88
    sub a                                         ; $6f82: $97
    ld a, b                                       ; $6f83: $78
    add a                                         ; $6f84: $87
    ld h, a                                       ; $6f85: $67
    ld a, b                                       ; $6f86: $78
    sbc b                                         ; $6f87: $98
    ld [hl], a                                    ; $6f88: $77
    adc c                                         ; $6f89: $89
    add a                                         ; $6f8a: $87
    adc b                                         ; $6f8b: $88
    add a                                         ; $6f8c: $87
    halt                                          ; $6f8d: $76
    ld a, b                                       ; $6f8e: $78
    sbc b                                         ; $6f8f: $98
    adc b                                         ; $6f90: $88
    halt                                          ; $6f91: $76
    add a                                         ; $6f92: $87
    adc b                                         ; $6f93: $88
    halt                                          ; $6f94: $76
    halt                                          ; $6f95: $76
    ld a, c                                       ; $6f96: $79
    xor c                                         ; $6f97: $a9
    halt                                          ; $6f98: $76
    ld a, b                                       ; $6f99: $78
    sbc c                                         ; $6f9a: $99
    add [hl]                                      ; $6f9b: $86
    adc c                                         ; $6f9c: $89
    adc b                                         ; $6f9d: $88
    add a                                         ; $6f9e: $87
    ld a, b                                       ; $6f9f: $78
    add a                                         ; $6fa0: $87
    ld h, [hl]                                    ; $6fa1: $66
    adc b                                         ; $6fa2: $88
    adc b                                         ; $6fa3: $88
    ld [hl], a                                    ; $6fa4: $77
    ld a, b                                       ; $6fa5: $78
    ld [hl], a                                    ; $6fa6: $77
    ld a, b                                       ; $6fa7: $78
    add a                                         ; $6fa8: $87
    ld [hl], a                                    ; $6fa9: $77
    ld a, b                                       ; $6faa: $78
    sbc c                                         ; $6fab: $99
    add a                                         ; $6fac: $87
    ld a, b                                       ; $6fad: $78
    ld [hl], a                                    ; $6fae: $77
    ld [hl], a                                    ; $6faf: $77
    ld h, a                                       ; $6fb0: $67
    add a                                         ; $6fb1: $87
    adc b                                         ; $6fb2: $88
    ld [hl], a                                    ; $6fb3: $77
    ld h, a                                       ; $6fb4: $67
    sbc b                                         ; $6fb5: $98
    add a                                         ; $6fb6: $87
    ld h, a                                       ; $6fb7: $67
    ld a, b                                       ; $6fb8: $78
    adc b                                         ; $6fb9: $88
    ld [hl], a                                    ; $6fba: $77
    adc b                                         ; $6fbb: $88
    ld a, b                                       ; $6fbc: $78
    add a                                         ; $6fbd: $87
    adc b                                         ; $6fbe: $88
    adc b                                         ; $6fbf: $88
    adc c                                         ; $6fc0: $89
    ld [hl], a                                    ; $6fc1: $77
    adc c                                         ; $6fc2: $89
    add a                                         ; $6fc3: $87
    ld h, a                                       ; $6fc4: $67
    ld [hl], a                                    ; $6fc5: $77
    ld [hl], a                                    ; $6fc6: $77
    add a                                         ; $6fc7: $87
    ld [hl], a                                    ; $6fc8: $77
    ld a, b                                       ; $6fc9: $78
    ld [hl], a                                    ; $6fca: $77
    adc b                                         ; $6fcb: $88
    ld a, b                                       ; $6fcc: $78
    adc b                                         ; $6fcd: $88
    adc b                                         ; $6fce: $88
    ld a, b                                       ; $6fcf: $78
    adc b                                         ; $6fd0: $88
    adc b                                         ; $6fd1: $88
    ld [hl], a                                    ; $6fd2: $77
    ld a, b                                       ; $6fd3: $78
    add a                                         ; $6fd4: $87
    ld a, b                                       ; $6fd5: $78
    ld [hl], a                                    ; $6fd6: $77
    halt                                          ; $6fd7: $76
    ld [hl], a                                    ; $6fd8: $77
    ld a, b                                       ; $6fd9: $78
    ld [hl], a                                    ; $6fda: $77
    adc b                                         ; $6fdb: $88
    adc b                                         ; $6fdc: $88
    adc b                                         ; $6fdd: $88
    adc b                                         ; $6fde: $88
    ld [hl], a                                    ; $6fdf: $77
    add a                                         ; $6fe0: $87
    ld a, c                                       ; $6fe1: $79
    ld a, b                                       ; $6fe2: $78
    adc b                                         ; $6fe3: $88
    adc b                                         ; $6fe4: $88
    ld h, a                                       ; $6fe5: $67
    ld [hl], a                                    ; $6fe6: $77
    ld a, b                                       ; $6fe7: $78
    add a                                         ; $6fe8: $87
    ld a, b                                       ; $6fe9: $78
    add a                                         ; $6fea: $87
    ld [hl], a                                    ; $6feb: $77
    adc b                                         ; $6fec: $88
    adc b                                         ; $6fed: $88
    ld a, b                                       ; $6fee: $78
    add a                                         ; $6fef: $87
    adc b                                         ; $6ff0: $88
    add a                                         ; $6ff1: $87
    add a                                         ; $6ff2: $87
    ld h, a                                       ; $6ff3: $67
    halt                                          ; $6ff4: $76
    ld [hl], a                                    ; $6ff5: $77
    add a                                         ; $6ff6: $87
    adc b                                         ; $6ff7: $88
    ld a, b                                       ; $6ff8: $78
    add a                                         ; $6ff9: $87
    adc b                                         ; $6ffa: $88
    adc b                                         ; $6ffb: $88
    halt                                          ; $6ffc: $76
    adc b                                         ; $6ffd: $88
    add a                                         ; $6ffe: $87
    adc b                                         ; $6fff: $88
    adc b                                         ; $7000: $88
    adc b                                         ; $7001: $88
    ld [hl], a                                    ; $7002: $77
    adc b                                         ; $7003: $88
    adc b                                         ; $7004: $88
    add a                                         ; $7005: $87
    ld [hl], a                                    ; $7006: $77
    ld [hl], a                                    ; $7007: $77
    adc b                                         ; $7008: $88
    ld [hl], a                                    ; $7009: $77
    ld a, b                                       ; $700a: $78
    ld [hl], a                                    ; $700b: $77
    ld [hl], a                                    ; $700c: $77
    adc b                                         ; $700d: $88
    adc b                                         ; $700e: $88
    ld [hl], a                                    ; $700f: $77
    adc b                                         ; $7010: $88
    adc b                                         ; $7011: $88
    ld a, b                                       ; $7012: $78
    add a                                         ; $7013: $87
    add a                                         ; $7014: $87
    ld [hl], a                                    ; $7015: $77
    ld [hl], a                                    ; $7016: $77
    ld a, b                                       ; $7017: $78
    adc b                                         ; $7018: $88
    ld a, b                                       ; $7019: $78
    add a                                         ; $701a: $87
    ld [hl], a                                    ; $701b: $77
    ld a, b                                       ; $701c: $78
    adc b                                         ; $701d: $88
    adc b                                         ; $701e: $88
    add a                                         ; $701f: $87
    add a                                         ; $7020: $87
    ld a, b                                       ; $7021: $78
    add a                                         ; $7022: $87
    add a                                         ; $7023: $87
    add a                                         ; $7024: $87
    ld [hl], a                                    ; $7025: $77
    adc b                                         ; $7026: $88
    ld [hl], a                                    ; $7027: $77
    adc b                                         ; $7028: $88
    adc b                                         ; $7029: $88
    adc b                                         ; $702a: $88
    adc b                                         ; $702b: $88
    add a                                         ; $702c: $87
    ld [hl], a                                    ; $702d: $77
    add a                                         ; $702e: $87
    ld [hl], a                                    ; $702f: $77
    adc b                                         ; $7030: $88
    adc b                                         ; $7031: $88
    ld [hl], a                                    ; $7032: $77
    ld a, b                                       ; $7033: $78
    adc b                                         ; $7034: $88
    add a                                         ; $7035: $87
    ld a, b                                       ; $7036: $78
    ld [hl], a                                    ; $7037: $77
    add a                                         ; $7038: $87
    ld a, b                                       ; $7039: $78
    add a                                         ; $703a: $87
    ld [hl], a                                    ; $703b: $77
    ld a, b                                       ; $703c: $78
    add a                                         ; $703d: $87
    adc b                                         ; $703e: $88
    ld a, b                                       ; $703f: $78
    adc b                                         ; $7040: $88
    ld [hl], a                                    ; $7041: $77
    add a                                         ; $7042: $87
    adc b                                         ; $7043: $88
    adc b                                         ; $7044: $88
    add a                                         ; $7045: $87
    adc b                                         ; $7046: $88
    add a                                         ; $7047: $87
    ld [hl], a                                    ; $7048: $77
    add a                                         ; $7049: $87
    adc b                                         ; $704a: $88
    ld a, b                                       ; $704b: $78
    adc b                                         ; $704c: $88
    adc b                                         ; $704d: $88
    ld [hl], a                                    ; $704e: $77
    ld a, b                                       ; $704f: $78
    adc b                                         ; $7050: $88
    ld [hl], a                                    ; $7051: $77
    ld a, b                                       ; $7052: $78
    ld a, b                                       ; $7053: $78
    adc b                                         ; $7054: $88
    ld [hl], a                                    ; $7055: $77
    adc b                                         ; $7056: $88
    adc b                                         ; $7057: $88
    adc b                                         ; $7058: $88
    adc b                                         ; $7059: $88
    add a                                         ; $705a: $87
    ld [hl], a                                    ; $705b: $77
    add a                                         ; $705c: $87
    ld a, b                                       ; $705d: $78
    ld [hl], a                                    ; $705e: $77
    ld [hl], a                                    ; $705f: $77
    adc b                                         ; $7060: $88
    add a                                         ; $7061: $87
    ld a, b                                       ; $7062: $78
    add a                                         ; $7063: $87
    ld [hl], a                                    ; $7064: $77
    adc b                                         ; $7065: $88
    adc b                                         ; $7066: $88
    adc b                                         ; $7067: $88
    ld a, b                                       ; $7068: $78
    add a                                         ; $7069: $87
    ld [hl], a                                    ; $706a: $77
    ld [hl], a                                    ; $706b: $77
    ld [hl], a                                    ; $706c: $77
    ld a, b                                       ; $706d: $78
    adc b                                         ; $706e: $88
    add a                                         ; $706f: $87
    adc b                                         ; $7070: $88
    adc b                                         ; $7071: $88
    add a                                         ; $7072: $87
    ld [hl], a                                    ; $7073: $77
    ld a, b                                       ; $7074: $78
    add a                                         ; $7075: $87
    add b                                         ; $7076: $80
    adc c                                         ; $7077: $89
    ld a, b                                       ; $7078: $78
    sbc c                                         ; $7079: $99
    ld a, c                                       ; $707a: $79
    sub a                                         ; $707b: $97
    adc b                                         ; $707c: $88
    xor b                                         ; $707d: $a8
    ld a, b                                       ; $707e: $78
    xor d                                         ; $707f: $aa
    sbc c                                         ; $7080: $99
    sbc d                                         ; $7081: $9a
    add [hl]                                      ; $7082: $86
    adc d                                         ; $7083: $8a
    halt                                          ; $7084: $76
    ld h, a                                       ; $7085: $67
    halt                                          ; $7086: $76
    ld h, l                                       ; $7087: $65
    ld h, [hl]                                    ; $7088: $66
    ld h, [hl]                                    ; $7089: $66
    ld h, a                                       ; $708a: $67
    halt                                          ; $708b: $76
    ld d, l                                       ; $708c: $55
    ld d, a                                       ; $708d: $57
    sbc c                                         ; $708e: $99
    sub a                                         ; $708f: $97
    ld h, [hl]                                    ; $7090: $66
    ld d, a                                       ; $7091: $57
    adc b                                         ; $7092: $88
    adc b                                         ; $7093: $88
    adc c                                         ; $7094: $89
    ld a, b                                       ; $7095: $78
    sbc b                                         ; $7096: $98
    add a                                         ; $7097: $87
    ld [hl], a                                    ; $7098: $77
    ld a, b                                       ; $7099: $78
    adc c                                         ; $709a: $89
    sbc b                                         ; $709b: $98
    adc b                                         ; $709c: $88
    ld [hl], a                                    ; $709d: $77
    ld a, b                                       ; $709e: $78
    sbc b                                         ; $709f: $98
    adc b                                         ; $70a0: $88
    ld a, c                                       ; $70a1: $79
    db $ed                                        ; $70a2: $ed
    adc b                                         ; $70a3: $88
    xor b                                         ; $70a4: $a8
    sub [hl]                                      ; $70a5: $96
    nop                                           ; $70a6: $00
    dec h                                         ; $70a7: $25
    adc c                                         ; $70a8: $89
    ld h, l                                       ; $70a9: $65
    ld d, a                                       ; $70aa: $57
    sbc c                                         ; $70ab: $99
    ld [hl], a                                    ; $70ac: $77
    ld [hl], a                                    ; $70ad: $77
    adc b                                         ; $70ae: $88
    ld h, a                                       ; $70af: $67
    adc c                                         ; $70b0: $89
    xor d                                         ; $70b1: $aa
    adc b                                         ; $70b2: $88
    adc b                                         ; $70b3: $88
    adc b                                         ; $70b4: $88
    ld a, b                                       ; $70b5: $78
    adc b                                         ; $70b6: $88
    sbc c                                         ; $70b7: $99
    add a                                         ; $70b8: $87
    halt                                          ; $70b9: $76
    ld h, [hl]                                    ; $70ba: $66
    ld h, a                                       ; $70bb: $67
    ld [hl], a                                    ; $70bc: $77
    ld a, b                                       ; $70bd: $78
    xor d                                         ; $70be: $aa
    sbc d                                         ; $70bf: $9a
    xor c                                         ; $70c0: $a9
    adc b                                         ; $70c1: $88
    ld [hl], a                                    ; $70c2: $77
    ld h, [hl]                                    ; $70c3: $66
    ld h, l                                       ; $70c4: $65
    ld h, a                                       ; $70c5: $67
    adc c                                         ; $70c6: $89
    sbc c                                         ; $70c7: $99
    sbc c                                         ; $70c8: $99
    add a                                         ; $70c9: $87
    halt                                          ; $70ca: $76
    ld [hl], a                                    ; $70cb: $77
    ld [hl], a                                    ; $70cc: $77
    ld [hl], a                                    ; $70cd: $77
    ld a, b                                       ; $70ce: $78
    adc b                                         ; $70cf: $88
    adc b                                         ; $70d0: $88
    sbc c                                         ; $70d1: $99
    sbc d                                         ; $70d2: $9a
    sbc c                                         ; $70d3: $99
    sbc b                                         ; $70d4: $98
    add a                                         ; $70d5: $87
    halt                                          ; $70d6: $76
    ld h, [hl]                                    ; $70d7: $66
    sbc b                                         ; $70d8: $98
    ld l, b                                       ; $70d9: $68
    ld h, l                                       ; $70da: $65
    ld a, d                                       ; $70db: $7a
    add [hl]                                      ; $70dc: $86
    adc b                                         ; $70dd: $88
    ld d, l                                       ; $70de: $55
    halt                                          ; $70df: $76
    ld h, a                                       ; $70e0: $67
    halt                                          ; $70e1: $76
    ld a, c                                       ; $70e2: $79
    adc b                                         ; $70e3: $88
    adc b                                         ; $70e4: $88
    sbc c                                         ; $70e5: $99
    add a                                         ; $70e6: $87
    ld [hl], a                                    ; $70e7: $77
    ld h, a                                       ; $70e8: $67
    add a                                         ; $70e9: $87
    ld d, [hl]                                    ; $70ea: $56
    ld h, [hl]                                    ; $70eb: $66
    ld a, b                                       ; $70ec: $78
    adc b                                         ; $70ed: $88
    adc b                                         ; $70ee: $88
    add a                                         ; $70ef: $87
    add a                                         ; $70f0: $87
    ld [hl], a                                    ; $70f1: $77
    ld [hl], a                                    ; $70f2: $77
    ld a, b                                       ; $70f3: $78
    adc b                                         ; $70f4: $88
    adc b                                         ; $70f5: $88
    adc c                                         ; $70f6: $89
    sbc c                                         ; $70f7: $99
    adc b                                         ; $70f8: $88
    adc b                                         ; $70f9: $88
    ld [hl], a                                    ; $70fa: $77
    ld h, l                                       ; $70fb: $65
    ld [hl], a                                    ; $70fc: $77
    ld [hl], a                                    ; $70fd: $77
    ld h, a                                       ; $70fe: $67
    ld a, b                                       ; $70ff: $78
    add a                                         ; $7100: $87
    adc c                                         ; $7101: $89
    adc b                                         ; $7102: $88
    add [hl]                                      ; $7103: $86
    ld h, a                                       ; $7104: $67
    ld [hl], a                                    ; $7105: $77
    add a                                         ; $7106: $87
    ld a, d                                       ; $7107: $7a
    sbc b                                         ; $7108: $98
    xor b                                         ; $7109: $a8
    ld [hl], a                                    ; $710a: $77
    sbc c                                         ; $710b: $99
    ld [hl], a                                    ; $710c: $77
    ld [hl], a                                    ; $710d: $77
    ld a, b                                       ; $710e: $78
    sbc b                                         ; $710f: $98
    adc b                                         ; $7110: $88
    adc b                                         ; $7111: $88
    adc c                                         ; $7112: $89
    sub a                                         ; $7113: $97
    ld a, b                                       ; $7114: $78
    ld a, b                                       ; $7115: $78
    adc b                                         ; $7116: $88
    ld [hl], a                                    ; $7117: $77
    add a                                         ; $7118: $87
    adc b                                         ; $7119: $88
    ld [hl], a                                    ; $711a: $77
    halt                                          ; $711b: $76
    ld [hl], a                                    ; $711c: $77
    ld l, b                                       ; $711d: $68
    add a                                         ; $711e: $87
    adc b                                         ; $711f: $88
    add a                                         ; $7120: $87
    ld [hl], a                                    ; $7121: $77
    ld [hl], a                                    ; $7122: $77
    adc b                                         ; $7123: $88
    adc d                                         ; $7124: $8a
    adc b                                         ; $7125: $88
    ld [hl], a                                    ; $7126: $77
    ld h, a                                       ; $7127: $67
    adc b                                         ; $7128: $88
    sbc b                                         ; $7129: $98
    ld d, [hl]                                    ; $712a: $56
    add a                                         ; $712b: $87
    ld a, b                                       ; $712c: $78
    adc b                                         ; $712d: $88
    sbc c                                         ; $712e: $99
    adc b                                         ; $712f: $88
    adc b                                         ; $7130: $88
    sub a                                         ; $7131: $97
    adc c                                         ; $7132: $89
    adc b                                         ; $7133: $88
    adc b                                         ; $7134: $88
    sbc b                                         ; $7135: $98
    ld [hl], a                                    ; $7136: $77
    adc b                                         ; $7137: $88
    ld a, b                                       ; $7138: $78
    adc b                                         ; $7139: $88
    add a                                         ; $713a: $87
    adc b                                         ; $713b: $88
    ld [hl], a                                    ; $713c: $77
    ld a, b                                       ; $713d: $78
    adc b                                         ; $713e: $88
    adc b                                         ; $713f: $88
    add a                                         ; $7140: $87
    ld a, b                                       ; $7141: $78
    halt                                          ; $7142: $76
    halt                                          ; $7143: $76
    ld a, b                                       ; $7144: $78
    halt                                          ; $7145: $76
    ld [hl], a                                    ; $7146: $77
    ld a, c                                       ; $7147: $79
    halt                                          ; $7148: $76
    add [hl]                                      ; $7149: $86
    ld a, b                                       ; $714a: $78
    ld a, b                                       ; $714b: $78
    adc b                                         ; $714c: $88
    sbc c                                         ; $714d: $99
    adc b                                         ; $714e: $88
    add a                                         ; $714f: $87
    add a                                         ; $7150: $87
    adc b                                         ; $7151: $88
    ld b, d                                       ; $7152: $42
    rst $00                                       ; $7153: $c7
    ld e, b                                       ; $7154: $58
    ld h, l                                       ; $7155: $65
    ld l, b                                       ; $7156: $68
    ld a, c                                       ; $7157: $79
    sbc b                                         ; $7158: $98
    sbc b                                         ; $7159: $98
    ld h, a                                       ; $715a: $67
    ld a, b                                       ; $715b: $78
    add a                                         ; $715c: $87
    add a                                         ; $715d: $87
    ld d, [hl]                                    ; $715e: $56
    adc b                                         ; $715f: $88
    adc b                                         ; $7160: $88
    adc b                                         ; $7161: $88
    xor b                                         ; $7162: $a8
    ld a, b                                       ; $7163: $78
    or a                                          ; $7164: $b7
    ld h, a                                       ; $7165: $67
    sub a                                         ; $7166: $97
    ld a, c                                       ; $7167: $79
    add [hl]                                      ; $7168: $86
    ld a, b                                       ; $7169: $78
    adc b                                         ; $716a: $88
    adc b                                         ; $716b: $88
    add [hl]                                      ; $716c: $86
    ld [hl], a                                    ; $716d: $77
    add a                                         ; $716e: $87
    ld a, b                                       ; $716f: $78
    add a                                         ; $7170: $87
    adc b                                         ; $7171: $88
    adc b                                         ; $7172: $88
    add a                                         ; $7173: $87
    add d                                         ; $7174: $82
    sbc c                                         ; $7175: $99
    ld a, c                                       ; $7176: $79
    xor b                                         ; $7177: $a8
    ld [hl], a                                    ; $7178: $77
    ld a, b                                       ; $7179: $78
    ld a, b                                       ; $717a: $78
    sbc b                                         ; $717b: $98
    ld a, b                                       ; $717c: $78
    sbc c                                         ; $717d: $99
    sub a                                         ; $717e: $97
    ld l, b                                       ; $717f: $68
    add [hl]                                      ; $7180: $86
    xor c                                         ; $7181: $a9
    ld d, a                                       ; $7182: $57
    add a                                         ; $7183: $87
    ld d, a                                       ; $7184: $57
    add a                                         ; $7185: $87
    ld [hl], a                                    ; $7186: $77
    add [hl]                                      ; $7187: $86
    ld [hl], a                                    ; $7188: $77
    ld [hl], a                                    ; $7189: $77
    ld a, b                                       ; $718a: $78
    ld h, a                                       ; $718b: $67
    sbc b                                         ; $718c: $98
    adc b                                         ; $718d: $88
    ld h, [hl]                                    ; $718e: $66
    halt                                          ; $718f: $76
    ld h, a                                       ; $7190: $67
    ld h, a                                       ; $7191: $67
    ld a, b                                       ; $7192: $78
    ld a, b                                       ; $7193: $78
    add a                                         ; $7194: $87
    adc b                                         ; $7195: $88
    adc b                                         ; $7196: $88
    sbc c                                         ; $7197: $99
    sbc b                                         ; $7198: $98
    adc b                                         ; $7199: $88
    adc b                                         ; $719a: $88
    ld [hl], a                                    ; $719b: $77
    adc b                                         ; $719c: $88
    adc b                                         ; $719d: $88
    ld [hl], a                                    ; $719e: $77
    add [hl]                                      ; $719f: $86
    adc b                                         ; $71a0: $88
    ld a, b                                       ; $71a1: $78
    sub a                                         ; $71a2: $97
    ld d, a                                       ; $71a3: $57
    ld d, [hl]                                    ; $71a4: $56
    add a                                         ; $71a5: $87
    ld a, c                                       ; $71a6: $79
    adc b                                         ; $71a7: $88
    adc c                                         ; $71a8: $89
    sbc b                                         ; $71a9: $98
    adc b                                         ; $71aa: $88
    sbc c                                         ; $71ab: $99
    sbc b                                         ; $71ac: $98
    ld a, b                                       ; $71ad: $78
    ld [hl], l                                    ; $71ae: $75
    ld [hl], a                                    ; $71af: $77
    adc b                                         ; $71b0: $88
    sbc b                                         ; $71b1: $98
    ld a, b                                       ; $71b2: $78
    sbc c                                         ; $71b3: $99
    halt                                          ; $71b4: $76
    add a                                         ; $71b5: $87
    ld a, b                                       ; $71b6: $78
    ld a, b                                       ; $71b7: $78
    sbc b                                         ; $71b8: $98
    sbc b                                         ; $71b9: $98
    ld [hl], a                                    ; $71ba: $77
    ld [hl], a                                    ; $71bb: $77
    adc c                                         ; $71bc: $89
    halt                                          ; $71bd: $76
    ld h, [hl]                                    ; $71be: $66
    add a                                         ; $71bf: $87
    adc c                                         ; $71c0: $89
    adc b                                         ; $71c1: $88
    adc b                                         ; $71c2: $88
    add a                                         ; $71c3: $87
    adc c                                         ; $71c4: $89
    ld a, b                                       ; $71c5: $78
    adc b                                         ; $71c6: $88
    ld [hl], a                                    ; $71c7: $77
    add a                                         ; $71c8: $87
    ld [hl], a                                    ; $71c9: $77
    add a                                         ; $71ca: $87
    ld a, c                                       ; $71cb: $79
    xor b                                         ; $71cc: $a8
    adc c                                         ; $71cd: $89
    adc b                                         ; $71ce: $88
    adc b                                         ; $71cf: $88
    add [hl]                                      ; $71d0: $86
    ld c, b                                       ; $71d1: $48
    add l                                         ; $71d2: $85
    ld h, [hl]                                    ; $71d3: $66
    ld d, l                                       ; $71d4: $55
    ld a, b                                       ; $71d5: $78
    ld h, a                                       ; $71d6: $67
    add a                                         ; $71d7: $87
    add a                                         ; $71d8: $87
    adc b                                         ; $71d9: $88
    ld [hl], a                                    ; $71da: $77
    adc c                                         ; $71db: $89
    sub a                                         ; $71dc: $97
    ld [hl], a                                    ; $71dd: $77
    add a                                         ; $71de: $87
    ld [hl], a                                    ; $71df: $77
    adc c                                         ; $71e0: $89
    ld [hl], a                                    ; $71e1: $77
    ld [hl], a                                    ; $71e2: $77
    sbc b                                         ; $71e3: $98
    ld [hl], a                                    ; $71e4: $77
    ld [hl], a                                    ; $71e5: $77
    ld a, b                                       ; $71e6: $78
    ld [hl], a                                    ; $71e7: $77
    ld [hl], a                                    ; $71e8: $77
    adc b                                         ; $71e9: $88
    adc b                                         ; $71ea: $88
    adc b                                         ; $71eb: $88
    adc b                                         ; $71ec: $88
    adc b                                         ; $71ed: $88
    ld [hl], a                                    ; $71ee: $77
    adc b                                         ; $71ef: $88
    add h                                         ; $71f0: $84
    sub [hl]                                      ; $71f1: $96
    xor d                                         ; $71f2: $aa
    ld e, b                                       ; $71f3: $58
    ld h, a                                       ; $71f4: $67
    adc b                                         ; $71f5: $88
    ld [hl], a                                    ; $71f6: $77
    ld h, a                                       ; $71f7: $67
    ld a, b                                       ; $71f8: $78
    ld a, b                                       ; $71f9: $78
    add a                                         ; $71fa: $87
    ld [hl], a                                    ; $71fb: $77
    adc c                                         ; $71fc: $89
    add [hl]                                      ; $71fd: $86
    adc d                                         ; $71fe: $8a
    adc b                                         ; $71ff: $88
    add a                                         ; $7200: $87
    ld a, b                                       ; $7201: $78
    ld [hl], a                                    ; $7202: $77
    add a                                         ; $7203: $87
    ld h, a                                       ; $7204: $67
    add a                                         ; $7205: $87
    add [hl]                                      ; $7206: $86
    ld a, b                                       ; $7207: $78
    adc c                                         ; $7208: $89
    ld [hl], a                                    ; $7209: $77
    ld h, a                                       ; $720a: $67
    adc b                                         ; $720b: $88
    ld [hl], a                                    ; $720c: $77
    ld a, b                                       ; $720d: $78
    sub a                                         ; $720e: $97
    ld a, b                                       ; $720f: $78
    add a                                         ; $7210: $87
    ld a, b                                       ; $7211: $78
    add [hl]                                      ; $7212: $86
    ld l, c                                       ; $7213: $69
    adc b                                         ; $7214: $88
    adc b                                         ; $7215: $88
    sub a                                         ; $7216: $97
    ld [hl], a                                    ; $7217: $77
    halt                                          ; $7218: $76
    add a                                         ; $7219: $87
    ld d, [hl]                                    ; $721a: $56
    adc b                                         ; $721b: $88
    ld a, b                                       ; $721c: $78
    adc c                                         ; $721d: $89
    ld h, a                                       ; $721e: $67
    xor b                                         ; $721f: $a8
    ld l, b                                       ; $7220: $68
    add [hl]                                      ; $7221: $86
    adc d                                         ; $7222: $8a
    halt                                          ; $7223: $76
    ld [hl], a                                    ; $7224: $77
    add a                                         ; $7225: $87
    adc b                                         ; $7226: $88
    adc b                                         ; $7227: $88
    ld a, b                                       ; $7228: $78
    sbc b                                         ; $7229: $98
    ld [hl], a                                    ; $722a: $77
    ld a, b                                       ; $722b: $78
    ld [hl], l                                    ; $722c: $75
    ld h, [hl]                                    ; $722d: $66
    ld a, c                                       ; $722e: $79
    ld [hl], a                                    ; $722f: $77
    adc b                                         ; $7230: $88
    ld a, b                                       ; $7231: $78
    sbc b                                         ; $7232: $98
    adc b                                         ; $7233: $88
    sbc b                                         ; $7234: $98
    ld a, c                                       ; $7235: $79
    sub [hl]                                      ; $7236: $96
    ld a, d                                       ; $7237: $7a
    add a                                         ; $7238: $87
    add a                                         ; $7239: $87
    ld l, b                                       ; $723a: $68
    add a                                         ; $723b: $87
    ld [hl], a                                    ; $723c: $77
    add a                                         ; $723d: $87
    ld l, b                                       ; $723e: $68
    sub a                                         ; $723f: $97
    adc c                                         ; $7240: $89
    ld [hl], a                                    ; $7241: $77
    adc b                                         ; $7242: $88
    ld a, b                                       ; $7243: $78
    adc b                                         ; $7244: $88
    sbc b                                         ; $7245: $98
    adc b                                         ; $7246: $88
    add a                                         ; $7247: $87
    ld a, b                                       ; $7248: $78
    halt                                          ; $7249: $76
    ld [hl], a                                    ; $724a: $77
    ld h, a                                       ; $724b: $67
    halt                                          ; $724c: $76
    ld l, c                                       ; $724d: $69
    add a                                         ; $724e: $87
    add a                                         ; $724f: $87
    adc b                                         ; $7250: $88
    adc b                                         ; $7251: $88
    ld a, b                                       ; $7252: $78
    sbc b                                         ; $7253: $98
    add [hl]                                      ; $7254: $86
    ld a, b                                       ; $7255: $78
    add a                                         ; $7256: $87
    adc b                                         ; $7257: $88
    halt                                          ; $7258: $76
    adc b                                         ; $7259: $88
    adc b                                         ; $725a: $88
    ld a, b                                       ; $725b: $78
    ld h, l                                       ; $725c: $65
    add a                                         ; $725d: $87
    halt                                          ; $725e: $76
    ld l, b                                       ; $725f: $68
    add a                                         ; $7260: $87
    ld a, b                                       ; $7261: $78
    sub a                                         ; $7262: $97
    ld a, b                                       ; $7263: $78
    add a                                         ; $7264: $87
    adc c                                         ; $7265: $89
    add a                                         ; $7266: $87
    add a                                         ; $7267: $87
    ld [hl], a                                    ; $7268: $77
    add a                                         ; $7269: $87
    ld [hl], a                                    ; $726a: $77
    adc b                                         ; $726b: $88
    ld a, b                                       ; $726c: $78
    adc b                                         ; $726d: $88
    ld h, a                                       ; $726e: $67
    add a                                         ; $726f: $87
    adc b                                         ; $7270: $88
    add a                                         ; $7271: $87
    adc b                                         ; $7272: $88
    ld [hl], a                                    ; $7273: $77
    sbc b                                         ; $7274: $98
    sbc b                                         ; $7275: $98
    ld a, b                                       ; $7276: $78
    ld [hl], a                                    ; $7277: $77
    adc b                                         ; $7278: $88
    ld h, a                                       ; $7279: $67
    ld a, b                                       ; $727a: $78
    adc b                                         ; $727b: $88
    sub a                                         ; $727c: $97
    ld e, c                                       ; $727d: $59
    add a                                         ; $727e: $87
    ld a, d                                       ; $727f: $7a
    add a                                         ; $7280: $87
    sbc b                                         ; $7281: $98
    ld a, b                                       ; $7282: $78
    adc b                                         ; $7283: $88
    add a                                         ; $7284: $87
    add a                                         ; $7285: $87
    ld h, a                                       ; $7286: $67
    ld [hl], a                                    ; $7287: $77
    halt                                          ; $7288: $76
    ld a, b                                       ; $7289: $78
    ld h, a                                       ; $728a: $67
    sub a                                         ; $728b: $97
    ld [hl], a                                    ; $728c: $77
    adc b                                         ; $728d: $88
    ld a, b                                       ; $728e: $78
    adc b                                         ; $728f: $88
    adc b                                         ; $7290: $88
    adc b                                         ; $7291: $88
    adc b                                         ; $7292: $88
    ld [hl], a                                    ; $7293: $77
    ld a, b                                       ; $7294: $78
    adc b                                         ; $7295: $88
    adc b                                         ; $7296: $88
    ld [hl], a                                    ; $7297: $77
    add a                                         ; $7298: $87
    ld [hl], a                                    ; $7299: $77
    ld [hl], a                                    ; $729a: $77
    add a                                         ; $729b: $87
    adc b                                         ; $729c: $88
    ld a, b                                       ; $729d: $78
    adc b                                         ; $729e: $88
    ld [hl], a                                    ; $729f: $77
    adc b                                         ; $72a0: $88
    ld a, b                                       ; $72a1: $78
    sbc b                                         ; $72a2: $98
    adc b                                         ; $72a3: $88
    ld a, c                                       ; $72a4: $79
    add a                                         ; $72a5: $87
    adc b                                         ; $72a6: $88
    add a                                         ; $72a7: $87
    ld a, b                                       ; $72a8: $78
    add a                                         ; $72a9: $87
    ld [hl], a                                    ; $72aa: $77
    adc b                                         ; $72ab: $88
    ld [hl], a                                    ; $72ac: $77
    add a                                         ; $72ad: $87
    add [hl]                                      ; $72ae: $86
    ld a, b                                       ; $72af: $78
    adc b                                         ; $72b0: $88
    adc c                                         ; $72b1: $89
    ld [hl], a                                    ; $72b2: $77
    sbc b                                         ; $72b3: $98
    add a                                         ; $72b4: $87
    ld [hl], a                                    ; $72b5: $77
    ld [hl], a                                    ; $72b6: $77
    ld h, a                                       ; $72b7: $67
    ld [hl], a                                    ; $72b8: $77
    adc b                                         ; $72b9: $88
    ld l, b                                       ; $72ba: $68
    sub a                                         ; $72bb: $97
    sbc c                                         ; $72bc: $99
    sbc b                                         ; $72bd: $98
    ld a, b                                       ; $72be: $78
    add a                                         ; $72bf: $87
    add a                                         ; $72c0: $87
    ld [hl], a                                    ; $72c1: $77
    ld h, [hl]                                    ; $72c2: $66
    ld a, b                                       ; $72c3: $78
    ld a, c                                       ; $72c4: $79
    add a                                         ; $72c5: $87
    add a                                         ; $72c6: $87
    adc b                                         ; $72c7: $88
    adc c                                         ; $72c8: $89
    add a                                         ; $72c9: $87
    ld [hl], a                                    ; $72ca: $77
    adc b                                         ; $72cb: $88
    add a                                         ; $72cc: $87
    ld h, [hl]                                    ; $72cd: $66
    halt                                          ; $72ce: $76
    ld a, b                                       ; $72cf: $78
    add a                                         ; $72d0: $87
    ld [hl], a                                    ; $72d1: $77
    adc b                                         ; $72d2: $88
    xor b                                         ; $72d3: $a8
    adc b                                         ; $72d4: $88
    add [hl]                                      ; $72d5: $86
    sbc b                                         ; $72d6: $98
    ld a, c                                       ; $72d7: $79
    add [hl]                                      ; $72d8: $86
    and a                                         ; $72d9: $a7
    ld l, c                                       ; $72da: $69
    sub a                                         ; $72db: $97
    add a                                         ; $72dc: $87
    adc b                                         ; $72dd: $88
    add a                                         ; $72de: $87
    ld a, b                                       ; $72df: $78
    adc b                                         ; $72e0: $88
    ld [hl], a                                    ; $72e1: $77
    adc b                                         ; $72e2: $88
    adc b                                         ; $72e3: $88
    add a                                         ; $72e4: $87
    ld h, a                                       ; $72e5: $67
    ld [hl], a                                    ; $72e6: $77
    ld [hl], a                                    ; $72e7: $77
    halt                                          ; $72e8: $76
    ld a, c                                       ; $72e9: $79
    ld l, b                                       ; $72ea: $68
    add a                                         ; $72eb: $87
    adc c                                         ; $72ec: $89
    adc c                                         ; $72ed: $89
    adc b                                         ; $72ee: $88
    adc b                                         ; $72ef: $88
    adc b                                         ; $72f0: $88
    ld a, b                                       ; $72f1: $78
    add a                                         ; $72f2: $87
    ld [hl], a                                    ; $72f3: $77
    ld [hl], a                                    ; $72f4: $77
    ld h, a                                       ; $72f5: $67
    add a                                         ; $72f6: $87
    adc b                                         ; $72f7: $88
    adc b                                         ; $72f8: $88
    add a                                         ; $72f9: $87
    ld a, b                                       ; $72fa: $78
    add a                                         ; $72fb: $87
    ld [hl], a                                    ; $72fc: $77
    ld [hl], a                                    ; $72fd: $77
    add c                                         ; $72fe: $81
    sub h                                         ; $72ff: $94
    add d                                         ; $7300: $82
    ld l, l                                       ; $7301: $6d
    xor $fa                                       ; $7302: $ee $fa
    scf                                           ; $7304: $37
    add a                                         ; $7305: $87
    db $ed                                        ; $7306: $ed
    call c, $d89c                                 ; $7307: $dc $9c $d8
    ld b, e                                       ; $730a: $43
    adc h                                         ; $730b: $8c
    call z, Call_012_4582                         ; $730c: $cc $82 $45
    ld b, [hl]                                    ; $730f: $46
    inc sp                                        ; $7310: $33
    ld d, $78                                     ; $7311: $16 $78
    ld h, [hl]                                    ; $7313: $66
    ld h, l                                       ; $7314: $65
    ld h, d                                       ; $7315: $62
    inc bc                                        ; $7316: $03
    ld hl, $8836                                  ; $7317: $21 $36 $88
    sbc c                                         ; $731a: $99
    adc b                                         ; $731b: $88
    ld [hl], a                                    ; $731c: $77
    adc c                                         ; $731d: $89
    add [hl]                                      ; $731e: $86
    ld h, l                                       ; $731f: $65
    ld e, b                                       ; $7320: $58
    and a                                         ; $7321: $a7
    ld a, d                                       ; $7322: $7a
    rst $28                                       ; $7323: $ef
    db $eb                                        ; $7324: $eb
    xor e                                         ; $7325: $ab
    db $ec                                        ; $7326: $ec
    ld d, c                                       ; $7327: $51
    daa                                           ; $7328: $27
    jp z, Jump_012_5755                           ; $7329: $ca $55 $57

    sbc d                                         ; $732c: $9a
    add h                                         ; $732d: $84
    scf                                           ; $732e: $37
    cp [hl]                                       ; $732f: $be
    sub h                                         ; $7330: $94
    ld b, l                                       ; $7331: $45
    ld l, d                                       ; $7332: $6a
    cp c                                          ; $7333: $b9
    ld [hl], l                                    ; $7334: $75
    ld e, b                                       ; $7335: $58
    xor d                                         ; $7336: $aa
    add [hl]                                      ; $7337: $86
    ld h, a                                       ; $7338: $67
    adc b                                         ; $7339: $88
    sbc c                                         ; $733a: $99
    sbc b                                         ; $733b: $98
    ld h, [hl]                                    ; $733c: $66
    ld l, b                                       ; $733d: $68
    halt                                          ; $733e: $76
    ld [hl], a                                    ; $733f: $77
    add a                                         ; $7340: $87
    ld d, a                                       ; $7341: $57
    adc c                                         ; $7342: $89
    xor b                                         ; $7343: $a8
    ld h, [hl]                                    ; $7344: $66
    ld [hl], a                                    ; $7345: $77
    adc d                                         ; $7346: $8a
    adc b                                         ; $7347: $88
    halt                                          ; $7348: $76
    add a                                         ; $7349: $87
    ld [hl], a                                    ; $734a: $77
    halt                                          ; $734b: $76
    halt                                          ; $734c: $76
    ld h, a                                       ; $734d: $67
    ld h, a                                       ; $734e: $67
    sub a                                         ; $734f: $97
    adc b                                         ; $7350: $88
    ld h, [hl]                                    ; $7351: $66
    add a                                         ; $7352: $87
    adc b                                         ; $7353: $88
    halt                                          ; $7354: $76
    halt                                          ; $7355: $76
    adc c                                         ; $7356: $89
    adc c                                         ; $7357: $89
    adc c                                         ; $7358: $89
    xor b                                         ; $7359: $a8
    ld d, [hl]                                    ; $735a: $56
    ld a, b                                       ; $735b: $78
    ld [hl], l                                    ; $735c: $75
    ld d, [hl]                                    ; $735d: $56
    add a                                         ; $735e: $87
    ld a, b                                       ; $735f: $78
    adc b                                         ; $7360: $88
    add a                                         ; $7361: $87
    adc c                                         ; $7362: $89
    ld a, b                                       ; $7363: $78
    sub a                                         ; $7364: $97
    adc b                                         ; $7365: $88
    ld d, a                                       ; $7366: $57
    adc b                                         ; $7367: $88
    adc c                                         ; $7368: $89
    ld h, a                                       ; $7369: $67
    ld [hl], a                                    ; $736a: $77
    xor b                                         ; $736b: $a8
    ld l, b                                       ; $736c: $68
    halt                                          ; $736d: $76
    add [hl]                                      ; $736e: $86
    ld a, d                                       ; $736f: $7a
    add a                                         ; $7370: $87
    ld h, [hl]                                    ; $7371: $66
    ld h, a                                       ; $7372: $67
    ld [hl], a                                    ; $7373: $77
    adc c                                         ; $7374: $89
    ld h, a                                       ; $7375: $67
    halt                                          ; $7376: $76
    adc b                                         ; $7377: $88
    adc b                                         ; $7378: $88
    ld [hl], l                                    ; $7379: $75
    ld b, l                                       ; $737a: $45
    ld h, [hl]                                    ; $737b: $66
    adc b                                         ; $737c: $88
    adc c                                         ; $737d: $89
    ld a, c                                       ; $737e: $79
    and [hl]                                      ; $737f: $a6
    cp d                                          ; $7380: $ba
    adc c                                         ; $7381: $89
    add a                                         ; $7382: $87
    add [hl]                                      ; $7383: $86
    adc d                                         ; $7384: $8a
    sbc b                                         ; $7385: $98
    ld [hl], a                                    ; $7386: $77
    ld l, b                                       ; $7387: $68
    and a                                         ; $7388: $a7
    xor d                                         ; $7389: $aa
    halt                                          ; $738a: $76
    halt                                          ; $738b: $76
    add [hl]                                      ; $738c: $86
    sbc b                                         ; $738d: $98
    ld [hl], a                                    ; $738e: $77
    ld h, a                                       ; $738f: $67
    sbc b                                         ; $7390: $98
    sbc b                                         ; $7391: $98
    ld a, b                                       ; $7392: $78
    ld [hl], a                                    ; $7393: $77
    ld l, b                                       ; $7394: $68
    sub a                                         ; $7395: $97
    ld [hl], a                                    ; $7396: $77
    ld h, l                                       ; $7397: $65
    rlca                                          ; $7398: $07
    ret                                           ; $7399: $c9


    ld [hl], l                                    ; $739a: $75
    ld h, a                                       ; $739b: $67
    adc c                                         ; $739c: $89
    adc b                                         ; $739d: $88
    ld a, b                                       ; $739e: $78
    sub h                                         ; $739f: $94
    adc d                                         ; $73a0: $8a
    sub [hl]                                      ; $73a1: $96
    sbc d                                         ; $73a2: $9a
    ld a, b                                       ; $73a3: $78
    add a                                         ; $73a4: $87
    ld a, c                                       ; $73a5: $79
    add [hl]                                      ; $73a6: $86
    ld h, [hl]                                    ; $73a7: $66
    add a                                         ; $73a8: $87
    ld [hl], l                                    ; $73a9: $75
    dec a                                         ; $73aa: $3d
    ld [hl], h                                    ; $73ab: $74
    add [hl]                                      ; $73ac: $86
    ld a, c                                       ; $73ad: $79
    ld l, c                                       ; $73ae: $69
    or a                                          ; $73af: $b7
    ld h, a                                       ; $73b0: $67
    ld [hl], a                                    ; $73b1: $77
    ld h, [hl]                                    ; $73b2: $66
    xor e                                         ; $73b3: $ab
    adc b                                         ; $73b4: $88
    sbc b                                         ; $73b5: $98
    and a                                         ; $73b6: $a7
    ld a, c                                       ; $73b7: $79
    halt                                          ; $73b8: $76
    sbc c                                         ; $73b9: $99
    adc b                                         ; $73ba: $88
    xor b                                         ; $73bb: $a8
    ld a, c                                       ; $73bc: $79
    sub [hl]                                      ; $73bd: $96
    ld l, d                                       ; $73be: $6a
    ld [hl], a                                    ; $73bf: $77
    xor e                                         ; $73c0: $ab
    ld a, c                                       ; $73c1: $79
    xor d                                         ; $73c2: $aa
    xor c                                         ; $73c3: $a9
    cp b                                          ; $73c4: $b8
    ld l, d                                       ; $73c5: $6a
    ld h, l                                       ; $73c6: $65
    ld [hl], l                                    ; $73c7: $75
    ld [hl], a                                    ; $73c8: $77
    dec [hl]                                      ; $73c9: $35
    adc b                                         ; $73ca: $88
    sbc d                                         ; $73cb: $9a
    sbc c                                         ; $73cc: $99
    add a                                         ; $73cd: $87
    adc b                                         ; $73ce: $88
    add a                                         ; $73cf: $87
    add a                                         ; $73d0: $87
    add b                                         ; $73d1: $80
    cp c                                          ; $73d2: $b9
    ld l, b                                       ; $73d3: $68
    add l                                         ; $73d4: $85
    xor c                                         ; $73d5: $a9
    ld a, e                                       ; $73d6: $7b
    sub [hl]                                      ; $73d7: $96
    sbc c                                         ; $73d8: $99
    ld [hl], a                                    ; $73d9: $77
    ld h, a                                       ; $73da: $67
    add [hl]                                      ; $73db: $86
    add [hl]                                      ; $73dc: $86
    ld [hl], h                                    ; $73dd: $74
    sbc c                                         ; $73de: $99
    xor d                                         ; $73df: $aa
    ld l, c                                       ; $73e0: $69
    ld c, c                                       ; $73e1: $49
    sub h                                         ; $73e2: $94
    ld e, b                                       ; $73e3: $58
    ld [hl], a                                    ; $73e4: $77
    ld [hl], a                                    ; $73e5: $77
    sbc b                                         ; $73e6: $98
    sbc b                                         ; $73e7: $98
    add a                                         ; $73e8: $87
    ld a, b                                       ; $73e9: $78
    adc d                                         ; $73ea: $8a
    sub a                                         ; $73eb: $97
    ld h, a                                       ; $73ec: $67
    ld h, [hl]                                    ; $73ed: $66
    ld d, h                                       ; $73ee: $54
    ld h, a                                       ; $73ef: $67
    adc c                                         ; $73f0: $89
    ld h, a                                       ; $73f1: $67
    ld d, [hl]                                    ; $73f2: $56
    db $ec                                        ; $73f3: $ec
    cp d                                          ; $73f4: $ba
    ld a, b                                       ; $73f5: $78
    ld l, b                                       ; $73f6: $68
    sub l                                         ; $73f7: $95
    ld h, d                                       ; $73f8: $62
    jp z, $8783                                   ; $73f9: $ca $83 $87

    xor a                                         ; $73fc: $af
    or a                                          ; $73fd: $b7
    inc hl                                        ; $73fe: $23
    ld l, e                                       ; $73ff: $6b
    call c, Call_000_2685                         ; $7400: $dc $85 $26
    sub a                                         ; $7403: $97
    sbc d                                         ; $7404: $9a
    cp d                                          ; $7405: $ba
    cp e                                          ; $7406: $bb
    sbc d                                         ; $7407: $9a
    sbc h                                         ; $7408: $9c
    xor c                                         ; $7409: $a9
    halt                                          ; $740a: $76
    ld b, h                                       ; $740b: $44
    xor e                                         ; $740c: $ab
    add [hl]                                      ; $740d: $86
    ld h, e                                       ; $740e: $63
    ld c, b                                       ; $740f: $48
    adc d                                         ; $7410: $8a
    ld [hl], h                                    ; $7411: $74
    ld l, b                                       ; $7412: $68
    ld b, [hl]                                    ; $7413: $46
    ld d, h                                       ; $7414: $54
    adc b                                         ; $7415: $88
    sub a                                         ; $7416: $97
    ld l, b                                       ; $7417: $68
    sbc c                                         ; $7418: $99
    adc b                                         ; $7419: $88
    ld [hl], a                                    ; $741a: $77
    ld b, d                                       ; $741b: $42
    adc d                                         ; $741c: $8a
    ld [hl], a                                    ; $741d: $77
    adc b                                         ; $741e: $88
    sub a                                         ; $741f: $97
    xor [hl]                                      ; $7420: $ae
    ld [hl], a                                    ; $7421: $77
    ld a, c                                       ; $7422: $79
    jp z, $7657                                   ; $7423: $ca $57 $76

    and [hl]                                      ; $7426: $a6
    adc b                                         ; $7427: $88
    ld [hl], a                                    ; $7428: $77
    sbc e                                         ; $7429: $9b
    xor d                                         ; $742a: $aa

jr_012_742b:
    adc b                                         ; $742b: $88
    and [hl]                                      ; $742c: $a6
    ld l, b                                       ; $742d: $68
    adc b                                         ; $742e: $88
    ld h, h                                       ; $742f: $64
    ld d, l                                       ; $7430: $55
    ld e, c                                       ; $7431: $59
    ld [hl], a                                    ; $7432: $77
    halt                                          ; $7433: $76
    jr c, jr_012_74ad                             ; $7434: $38 $77

    add h                                         ; $7436: $84
    sbc h                                         ; $7437: $9c
    ld e, b                                       ; $7438: $58
    ld h, l                                       ; $7439: $65
    inc hl                                        ; $743a: $23
    adc b                                         ; $743b: $88
    sub [hl]                                      ; $743c: $96
    ld a, d                                       ; $743d: $7a
    reti                                          ; $743e: $d9


    adc e                                         ; $743f: $8b
    sbc d                                         ; $7440: $9a
    adc c                                         ; $7441: $89
    cp l                                          ; $7442: $bd
    db $dd                                        ; $7443: $dd
    reti                                          ; $7444: $d9


    add a                                         ; $7445: $87
    adc e                                         ; $7446: $8b
    xor c                                         ; $7447: $a9
    ld a, b                                       ; $7448: $78
    ld a, e                                       ; $7449: $7b
    xor e                                         ; $744a: $ab
    sub l                                         ; $744b: $95
    ld d, a                                       ; $744c: $57
    jr c, jr_012_7494                             ; $744d: $38 $45

    ld [hl], a                                    ; $744f: $77
    add l                                         ; $7450: $85
    sub [hl]                                      ; $7451: $96
    scf                                           ; $7452: $37
    sbc c                                         ; $7453: $99
    sbc e                                         ; $7454: $9b
    xor b                                         ; $7455: $a8
    ld h, [hl]                                    ; $7456: $66
    ld b, [hl]                                    ; $7457: $46
    cp b                                          ; $7458: $b8
    ld b, [hl]                                    ; $7459: $46
    add [hl]                                      ; $745a: $86
    sbc e                                         ; $745b: $9b
    cp d                                          ; $745c: $ba
    xor b                                         ; $745d: $a8
    cp c                                          ; $745e: $b9
    sbc b                                         ; $745f: $98
    cp h                                          ; $7460: $bc
    dec [hl]                                      ; $7461: $35
    and [hl]                                      ; $7462: $a6
    add l                                         ; $7463: $85
    ld d, $9a                                     ; $7464: $16 $9a
    ld b, b                                       ; $7466: $40
    ld d, $65                                     ; $7467: $16 $65
    adc h                                         ; $7469: $8c
    sbc c                                         ; $746a: $99
    ld l, b                                       ; $746b: $68
    sub [hl]                                      ; $746c: $96
    ld l, c                                       ; $746d: $69
    sub a                                         ; $746e: $97
    ld [hl], l                                    ; $746f: $75
    adc c                                         ; $7470: $89
    ld b, l                                       ; $7471: $45
    ld a, b                                       ; $7472: $78
    ld a, b                                       ; $7473: $78
    ld l, h                                       ; $7474: $6c
    adc h                                         ; $7475: $8c
    or l                                          ; $7476: $b5
    sbc h                                         ; $7477: $9c
    adc b                                         ; $7478: $88
    sbc b                                         ; $7479: $98
    call z, $a899                                 ; $747a: $cc $99 $a8
    sbc b                                         ; $747d: $98
    ld a, b                                       ; $747e: $78
    ld h, h                                       ; $747f: $64
    ld h, d                                       ; $7480: $62
    jr z, jr_012_74d7                             ; $7481: $28 $54

    sub h                                         ; $7483: $94
    ld b, h                                       ; $7484: $44
    ld [hl], a                                    ; $7485: $77
    inc [hl]                                      ; $7486: $34
    ld e, b                                       ; $7487: $58
    adc b                                         ; $7488: $88
    dec [hl]                                      ; $7489: $35
    xor c                                         ; $748a: $a9
    ld a, d                                       ; $748b: $7a
    ld a, [$a999]                                 ; $748c: $fa $99 $a9
    adc d                                         ; $748f: $8a
    and a                                         ; $7490: $a7
    adc b                                         ; $7491: $88
    ld a, c                                       ; $7492: $79
    sub [hl]                                      ; $7493: $96

jr_012_7494:
    adc d                                         ; $7494: $8a
    add $24                                       ; $7495: $c6 $24
    ld a, d                                       ; $7497: $7a

Jump_012_7498:
    adc b                                         ; $7498: $88
    ld a, h                                       ; $7499: $7c
    or a                                          ; $749a: $b7
    ld b, [hl]                                    ; $749b: $46
    ld [hl], e                                    ; $749c: $73
    ld e, b                                       ; $749d: $58
    ld [hl], h                                    ; $749e: $74
    jr c, jr_012_742b                             ; $749f: $38 $8a

    ld d, d                                       ; $74a1: $52
    ld c, b                                       ; $74a2: $48
    ld e, c                                       ; $74a3: $59
    ld a, b                                       ; $74a4: $78
    ld a, h                                       ; $74a5: $7c
    sbc d                                         ; $74a6: $9a
    sbc b                                         ; $74a7: $98

Call_012_74a8:
    cp b                                          ; $74a8: $b8
    xor b                                         ; $74a9: $a8
    ld e, e                                       ; $74aa: $5b
    ld a, b                                       ; $74ab: $78
    ret                                           ; $74ac: $c9


jr_012_74ad:
    ld b, h                                       ; $74ad: $44
    ld [hl], a                                    ; $74ae: $77
    and [hl]                                      ; $74af: $a6
    inc de                                        ; $74b0: $13
    ld d, [hl]                                    ; $74b1: $56
    ld b, h                                       ; $74b2: $44
    ld b, [hl]                                    ; $74b3: $46
    ld d, l                                       ; $74b4: $55
    xor b                                         ; $74b5: $a8
    sub h                                         ; $74b6: $94
    sbc c                                         ; $74b7: $99
    cp c                                          ; $74b8: $b9
    adc e                                         ; $74b9: $8b
    xor d                                         ; $74ba: $aa
    and a                                         ; $74bb: $a7
    ld d, l                                       ; $74bc: $55
    adc d                                         ; $74bd: $8a
    adc c                                         ; $74be: $89
    xor b                                         ; $74bf: $a8
    adc b                                         ; $74c0: $88
    add a                                         ; $74c1: $87
    add l                                         ; $74c2: $85
    dec h                                         ; $74c3: $25
    add a                                         ; $74c4: $87
    sbc d                                         ; $74c5: $9a
    and l                                         ; $74c6: $a5
    ld l, d                                       ; $74c7: $6a
    ld d, l                                       ; $74c8: $55
    ld h, [hl]                                    ; $74c9: $66
    add a                                         ; $74ca: $87
    sbc b                                         ; $74cb: $98
    ld l, e                                       ; $74cc: $6b
    add a                                         ; $74cd: $87
    xor b                                         ; $74ce: $a8
    xor d                                         ; $74cf: $aa
    add [hl]                                      ; $74d0: $86
    adc l                                         ; $74d1: $8d
    or a                                          ; $74d2: $b7
    ld b, l                                       ; $74d3: $45
    ld a, b                                       ; $74d4: $78
    xor c                                         ; $74d5: $a9
    add a                                         ; $74d6: $87

jr_012_74d7:
    ld h, l                                       ; $74d7: $65
    jp z, Jump_012_4582                           ; $74d8: $ca $82 $45

    ld [hl], a                                    ; $74db: $77
    ld a, c                                       ; $74dc: $79
    adc b                                         ; $74dd: $88
    ld l, c                                       ; $74de: $69
    and [hl]                                      ; $74df: $a6
    add c                                         ; $74e0: $81
    adc c                                         ; $74e1: $89
    ld d, a                                       ; $74e2: $57
    halt                                          ; $74e3: $76
    adc h                                         ; $74e4: $8c
    or l                                          ; $74e5: $b5
    ld b, [hl]                                    ; $74e6: $46
    adc e                                         ; $74e7: $8b
    and [hl]                                      ; $74e8: $a6
    ld b, [hl]                                    ; $74e9: $46
    ld a, d                                       ; $74ea: $7a
    add h                                         ; $74eb: $84
    scf                                           ; $74ec: $37
    add [hl]                                      ; $74ed: $86
    adc c                                         ; $74ee: $89
    ld l, e                                       ; $74ef: $6b
    jp c, $a69c                                   ; $74f0: $da $9c $a6

    ld [hl], a                                    ; $74f3: $77
    xor c                                         ; $74f4: $a9
    ld a, b                                       ; $74f5: $78
    ld h, a                                       ; $74f6: $67
    xor d                                         ; $74f7: $aa
    xor b                                         ; $74f8: $a8
    ld d, a                                       ; $74f9: $57
    ld a, b                                       ; $74fa: $78
    xor b                                         ; $74fb: $a8
    adc d                                         ; $74fc: $8a
    ld [hl], l                                    ; $74fd: $75
    ld [hl], a                                    ; $74fe: $77
    ld h, e                                       ; $74ff: $63
    ld [hl], $55                                  ; $7500: $36 $55
    ld b, [hl]                                    ; $7502: $46
    ld l, b                                       ; $7503: $68
    ld a, b                                       ; $7504: $78
    sbc b                                         ; $7505: $98
    ld [hl], $36                                  ; $7506: $36 $36
    adc b                                         ; $7508: $88
    and h                                         ; $7509: $a4
    halt                                          ; $750a: $76
    sbc e                                         ; $750b: $9b
    sub h                                         ; $750c: $94
    ld a, b                                       ; $750d: $78
    adc b                                         ; $750e: $88
    cp e                                          ; $750f: $bb
    adc b                                         ; $7510: $88
    ld a, e                                       ; $7511: $7b
    ret                                           ; $7512: $c9


    ld a, e                                       ; $7513: $7b
    db $fc                                        ; $7514: $fc
    sub l                                         ; $7515: $95
    adc c                                         ; $7516: $89
    ld a, d                                       ; $7517: $7a
    add [hl]                                      ; $7518: $86
    ld b, e                                       ; $7519: $43
    ld h, l                                       ; $751a: $65
    inc hl                                        ; $751b: $23
    ld d, [hl]                                    ; $751c: $56
    sub a                                         ; $751d: $97
    ld b, [hl]                                    ; $751e: $46
    daa                                           ; $751f: $27
    adc d                                         ; $7520: $8a
    xor d                                         ; $7521: $aa
    adc b                                         ; $7522: $88
    add [hl]                                      ; $7523: $86
    ld h, a                                       ; $7524: $67
    ld [hl], a                                    ; $7525: $77
    ld a, d                                       ; $7526: $7a
    sub [hl]                                      ; $7527: $96
    xor l                                         ; $7528: $ad
    cp d                                          ; $7529: $ba
    sub [hl]                                      ; $752a: $96
    inc [hl]                                      ; $752b: $34
    adc e                                         ; $752c: $8b
    ld a, c                                       ; $752d: $79
    ld d, h                                       ; $752e: $54
    ld h, l                                       ; $752f: $65
    adc c                                         ; $7530: $89
    ret                                           ; $7531: $c9


    adc e                                         ; $7532: $8b
    adc b                                         ; $7533: $88
    ld l, d                                       ; $7534: $6a
    and a                                         ; $7535: $a7
    add h                                         ; $7536: $84
    inc b                                         ; $7537: $04
    add h                                         ; $7538: $84
    ld b, h                                       ; $7539: $44
    ld e, c                                       ; $753a: $59
    ld h, e                                       ; $753b: $63
    adc e                                         ; $753c: $8b
    adc e                                         ; $753d: $8b
    cp b                                          ; $753e: $b8
    ld h, [hl]                                    ; $753f: $66
    sbc c                                         ; $7540: $99
    call $cb88                                    ; $7541: $cd $88 $cb
    cp b                                          ; $7544: $b8
    adc e                                         ; $7545: $8b
    ld h, [hl]                                    ; $7546: $66
    ld [hl], h                                    ; $7547: $74
    scf                                           ; $7548: $37
    ld h, [hl]                                    ; $7549: $66
    ld l, c                                       ; $754a: $69
    ld [hl], l                                    ; $754b: $75
    adc d                                         ; $754c: $8a
    add [hl]                                      ; $754d: $86
    ld d, d                                       ; $754e: $52
    inc de                                        ; $754f: $13
    ld h, a                                       ; $7550: $67
    ld d, d                                       ; $7551: $52
    ld l, d                                       ; $7552: $6a
    bit 0, e                                      ; $7553: $cb $43
    jp z, $55b8                                   ; $7555: $ca $b8 $55

    add a                                         ; $7558: $87
    ld h, a                                       ; $7559: $67
    ld h, [hl]                                    ; $755a: $66
    ld d, [hl]                                    ; $755b: $56
    sbc a                                         ; $755c: $9f
    sbc b                                         ; $755d: $98
    ret c                                         ; $755e: $d8

    ld a, c                                       ; $755f: $79
    adc b                                         ; $7560: $88
    add b                                         ; $7561: $80
    sbc c                                         ; $7562: $99
    inc b                                         ; $7563: $04
    ld a, b                                       ; $7564: $78
    xor c                                         ; $7565: $a9
    ld l, e                                       ; $7566: $6b
    ret                                           ; $7567: $c9


    adc c                                         ; $7568: $89
    or a                                          ; $7569: $b7
    call $a787                                    ; $756a: $cd $87 $a7
    ld l, b                                       ; $756d: $68
    ld h, [hl]                                    ; $756e: $66
    ld h, [hl]                                    ; $756f: $66
    sbc l                                         ; $7570: $9d
    ld d, l                                       ; $7571: $55
    add h                                         ; $7572: $84
    adc d                                         ; $7573: $8a
    sub a                                         ; $7574: $97
    ld b, a                                       ; $7575: $47
    ld l, h                                       ; $7576: $6c
    or a                                          ; $7577: $b7
    ld b, h                                       ; $7578: $44
    ld b, h                                       ; $7579: $44
    ld h, [hl]                                    ; $757a: $66
    ld b, l                                       ; $757b: $45
    sub [hl]                                      ; $757c: $96
    ld d, a                                       ; $757d: $57
    inc h                                         ; $757e: $24
    adc b                                         ; $757f: $88
    add a                                         ; $7580: $87
    ld a, b                                       ; $7581: $78
    reti                                          ; $7582: $d9


    cp d                                          ; $7583: $ba
    add [hl]                                      ; $7584: $86
    ld a, d                                       ; $7585: $7a
    sbc b                                         ; $7586: $98
    add [hl]                                      ; $7587: $86
    ld a, d                                       ; $7588: $7a
    cp e                                          ; $7589: $bb
    ld h, l                                       ; $758a: $65
    sbc b                                         ; $758b: $98
    ld [hl], h                                    ; $758c: $74
    ld d, l                                       ; $758d: $55
    ld a, c                                       ; $758e: $79
    ld d, [hl]                                    ; $758f: $56
    ld h, l                                       ; $7590: $65
    adc c                                         ; $7591: $89
    ld d, [hl]                                    ; $7592: $56
    add a                                         ; $7593: $87
    ld [hl], h                                    ; $7594: $74
    rst $10                                       ; $7595: $d7
    add l                                         ; $7596: $85
    ld a, d                                       ; $7597: $7a
    call $b87f                                    ; $7598: $cd $7f $b8
    cp d                                          ; $759b: $ba
    ld l, b                                       ; $759c: $68
    ld [hl], a                                    ; $759d: $77
    ld h, a                                       ; $759e: $67
    ld l, c                                       ; $759f: $69
    add a                                         ; $75a0: $87
    sbc c                                         ; $75a1: $99
    adc c                                         ; $75a2: $89
    ld h, [hl]                                    ; $75a3: $66
    xor b                                         ; $75a4: $a8
    ld b, a                                       ; $75a5: $47
    ld d, e                                       ; $75a6: $53
    ld d, [hl]                                    ; $75a7: $56
    inc sp                                        ; $75a8: $33
    ld [hl], a                                    ; $75a9: $77
    halt                                          ; $75aa: $76
    ld b, a                                       ; $75ab: $47
    ld h, l                                       ; $75ac: $65
    add a                                         ; $75ad: $87
    cp d                                          ; $75ae: $ba
    adc c                                         ; $75af: $89
    sub [hl]                                      ; $75b0: $96
    adc b                                         ; $75b1: $88
    sbc d                                         ; $75b2: $9a
    xor b                                         ; $75b3: $a8
    ld a, c                                       ; $75b4: $79
    sbc d                                         ; $75b5: $9a
    ld h, [hl]                                    ; $75b6: $66
    sbc c                                         ; $75b7: $99
    ld d, [hl]                                    ; $75b8: $56
    ld d, l                                       ; $75b9: $55
    sbc d                                         ; $75ba: $9a
    ld [hl], a                                    ; $75bb: $77
    add a                                         ; $75bc: $87
    add a                                         ; $75bd: $87
    xor c                                         ; $75be: $a9
    and a                                         ; $75bf: $a7
    adc [hl]                                      ; $75c0: $8e
    adc b                                         ; $75c1: $88
    xor b                                         ; $75c2: $a8
    and a                                         ; $75c3: $a7
    ld [hl], $79                                  ; $75c4: $36 $79
    ld a, c                                       ; $75c6: $79
    and a                                         ; $75c7: $a7
    ld d, l                                       ; $75c8: $55
    ld d, l                                       ; $75c9: $55
    ld e, b                                       ; $75ca: $58
    ld l, b                                       ; $75cb: $68
    ld [hl], l                                    ; $75cc: $75
    adc d                                         ; $75cd: $8a
    ret z                                         ; $75ce: $c8

    ld l, d                                       ; $75cf: $6a
    sbc c                                         ; $75d0: $99
    cp b                                          ; $75d1: $b8
    cp d                                          ; $75d2: $ba
    ld l, b                                       ; $75d3: $68
    sbc c                                         ; $75d4: $99
    ld l, c                                       ; $75d5: $69
    ld d, d                                       ; $75d6: $52
    ld d, h                                       ; $75d7: $54
    ld d, [hl]                                    ; $75d8: $56
    ld d, a                                       ; $75d9: $57
    ld b, h                                       ; $75da: $44
    ld b, a                                       ; $75db: $47
    ld l, c                                       ; $75dc: $69
    jp c, $8968                                   ; $75dd: $da $68 $89

    add a                                         ; $75e0: $87
    sbc b                                         ; $75e1: $98
    sbc b                                         ; $75e2: $98
    ld l, b                                       ; $75e3: $68
    add a                                         ; $75e4: $87
    add a                                         ; $75e5: $87
    ld e, c                                       ; $75e6: $59
    add l                                         ; $75e7: $85
    ld h, l                                       ; $75e8: $65
    adc b                                         ; $75e9: $88
    ld h, a                                       ; $75ea: $67
    ld a, b                                       ; $75eb: $78
    and [hl]                                      ; $75ec: $a6
    add e                                         ; $75ed: $83
    sbc h                                         ; $75ee: $9c
    sub a                                         ; $75ef: $97
    ld d, a                                       ; $75f0: $57
    ld a, d                                       ; $75f1: $7a
    sbc e                                         ; $75f2: $9b
    ld h, e                                       ; $75f3: $63
    ld b, h                                       ; $75f4: $44
    adc c                                         ; $75f5: $89
    ld e, b                                       ; $75f6: $58
    add [hl]                                      ; $75f7: $86
    halt                                          ; $75f8: $76
    ld h, a                                       ; $75f9: $67
    ld h, [hl]                                    ; $75fa: $66
    cp a                                          ; $75fb: $bf
    sbc b                                         ; $75fc: $98
    ld l, d                                       ; $75fd: $6a
    xor b                                         ; $75fe: $a8
    cp c                                          ; $75ff: $b9
    ld d, l                                       ; $7600: $55
    or l                                          ; $7601: $b5
    adc b                                         ; $7602: $88
    ld h, e                                       ; $7603: $63
    ld b, a                                       ; $7604: $47
    sbc b                                         ; $7605: $98
    halt                                          ; $7606: $76
    adc d                                         ; $7607: $8a
    sbc c                                         ; $7608: $99
    add [hl]                                      ; $7609: $86
    ld h, [hl]                                    ; $760a: $66
    ld b, l                                       ; $760b: $45
    cp b                                          ; $760c: $b8
    ld [hl], a                                    ; $760d: $77
    sbc h                                         ; $760e: $9c
    ld h, a                                       ; $760f: $67
    ret c                                         ; $7610: $d8

    ld b, a                                       ; $7611: $47
    sbc c                                         ; $7612: $99
    ld [hl], a                                    ; $7613: $77
    ld e, d                                       ; $7614: $5a
    adc c                                         ; $7615: $89
    add [hl]                                      ; $7616: $86
    ld c, d                                       ; $7617: $4a
    sbc b                                         ; $7618: $98
    ld l, b                                       ; $7619: $68
    ld d, h                                       ; $761a: $54
    ld [hl], a                                    ; $761b: $77
    and a                                         ; $761c: $a7
    ld h, [hl]                                    ; $761d: $66
    ld h, a                                       ; $761e: $67
    sub [hl]                                      ; $761f: $96
    adc d                                         ; $7620: $8a
    ld [hl], e                                    ; $7621: $73
    adc b                                         ; $7622: $88
    ld h, $a5                                     ; $7623: $26 $a5
    sbc b                                         ; $7625: $98
    ld d, l                                       ; $7626: $55
    ld h, a                                       ; $7627: $67
    sbc b                                         ; $7628: $98
    ld l, c                                       ; $7629: $69
    sbc c                                         ; $762a: $99
    cp l                                          ; $762b: $bd
    or a                                          ; $762c: $b7
    ld d, a                                       ; $762d: $57
    and a                                         ; $762e: $a7
    sub l                                         ; $762f: $95
    ld h, [hl]                                    ; $7630: $66
    ld a, b                                       ; $7631: $78
    ld l, c                                       ; $7632: $69
    sbc b                                         ; $7633: $98
    ld d, [hl]                                    ; $7634: $56
    call z, $8966                                 ; $7635: $cc $66 $89
    ld b, h                                       ; $7638: $44
    ld l, b                                       ; $7639: $68
    xor c                                         ; $763a: $a9
    ld d, l                                       ; $763b: $55
    xor c                                         ; $763c: $a9
    ld a, e                                       ; $763d: $7b
    adc c                                         ; $763e: $89
    adc e                                         ; $763f: $8b
    xor d                                         ; $7640: $aa
    jp c, $b736                                   ; $7641: $da $36 $b7

    scf                                           ; $7644: $37
    ld d, [hl]                                    ; $7645: $56
    sub [hl]                                      ; $7646: $96
    inc sp                                        ; $7647: $33
    halt                                          ; $7648: $76
    ld a, c                                       ; $7649: $79
    xor d                                         ; $764a: $aa
    and a                                         ; $764b: $a7
    ld [hl], a                                    ; $764c: $77
    ld l, c                                       ; $764d: $69
    sub [hl]                                      ; $764e: $96
    ld [hl], a                                    ; $764f: $77
    ld b, l                                       ; $7650: $45
    ld e, b                                       ; $7651: $58
    ld d, [hl]                                    ; $7652: $56
    xor b                                         ; $7653: $a8
    ld e, b                                       ; $7654: $58
    jp z, Jump_012_7b86                           ; $7655: $ca $86 $7b

    add e                                         ; $7658: $83
    ld h, a                                       ; $7659: $67
    sub a                                         ; $765a: $97
    add a                                         ; $765b: $87
    adc d                                         ; $765c: $8a
    sbc e                                         ; $765d: $9b
    adc d                                         ; $765e: $8a
    or a                                          ; $765f: $b7
    ld d, [hl]                                    ; $7660: $56
    ld [hl], a                                    ; $7661: $77
    ld [hl], l                                    ; $7662: $75
    ld b, [hl]                                    ; $7663: $46
    sub [hl]                                      ; $7664: $96
    ld b, a                                       ; $7665: $47
    cp e                                          ; $7666: $bb
    xor b                                         ; $7667: $a8
    ld h, l                                       ; $7668: $65
    ld e, b                                       ; $7669: $58
    sbc h                                         ; $766a: $9c
    sub [hl]                                      ; $766b: $96
    ld e, b                                       ; $766c: $58
    cp c                                          ; $766d: $b9
    ld h, [hl]                                    ; $766e: $66
    ld h, a                                       ; $766f: $67

jr_012_7670:
    ld d, l                                       ; $7670: $55
    adc d                                         ; $7671: $8a
    xor b                                         ; $7672: $a8
    adc b                                         ; $7673: $88
    add a                                         ; $7674: $87
    add a                                         ; $7675: $87
    ld e, b                                       ; $7676: $58
    sbc b                                         ; $7677: $98
    adc c                                         ; $7678: $89
    cp d                                          ; $7679: $ba
    sub l                                         ; $767a: $95
    scf                                           ; $767b: $37
    cp c                                          ; $767c: $b9
    ld h, c                                       ; $767d: $61
    ld [hl], a                                    ; $767e: $77
    ld c, c                                       ; $767f: $49
    add [hl]                                      ; $7680: $86
    ld c, e                                       ; $7681: $4b
    xor e                                         ; $7682: $ab
    xor e                                         ; $7683: $ab
    db $eb                                        ; $7684: $eb
    adc b                                         ; $7685: $88
    ld h, a                                       ; $7686: $67
    ld [hl], a                                    ; $7687: $77
    adc c                                         ; $7688: $89
    ld a, b                                       ; $7689: $78
    halt                                          ; $768a: $76
    adc b                                         ; $768b: $88
    halt                                          ; $768c: $76
    adc e                                         ; $768d: $8b
    ld h, [hl]                                    ; $768e: $66
    adc b                                         ; $768f: $88
    and l                                         ; $7690: $a5
    dec [hl]                                      ; $7691: $35
    ld h, [hl]                                    ; $7692: $66
    ld l, d                                       ; $7693: $6a
    sub a                                         ; $7694: $97
    ld a, b                                       ; $7695: $78
    sbc b                                         ; $7696: $98
    ld h, [hl]                                    ; $7697: $66
    ld l, b                                       ; $7698: $68
    add l                                         ; $7699: $85
    ld l, b                                       ; $769a: $68
    sub a                                         ; $769b: $97
    halt                                          ; $769c: $76
    ld d, a                                       ; $769d: $57
    ld a, b                                       ; $769e: $78
    or a                                          ; $769f: $b7
    ld l, c                                       ; $76a0: $69
    ld a, b                                       ; $76a1: $78
    sbc c                                         ; $76a2: $99
    ret c                                         ; $76a3: $d8

    ld l, b                                       ; $76a4: $68
    ld a, b                                       ; $76a5: $78
    cp b                                          ; $76a6: $b8
    ld a, e                                       ; $76a7: $7b
    and a                                         ; $76a8: $a7
    sub [hl]                                      ; $76a9: $96
    ld e, d                                       ; $76aa: $5a
    ld b, a                                       ; $76ab: $47
    sub h                                         ; $76ac: $94
    inc de                                        ; $76ad: $13
    ld a, e                                       ; $76ae: $7b
    ld l, b                                       ; $76af: $68
    adc b                                         ; $76b0: $88
    ld h, [hl]                                    ; $76b1: $66
    sub a                                         ; $76b2: $97
    adc e                                         ; $76b3: $8b
    ld h, l                                       ; $76b4: $65
    sbc b                                         ; $76b5: $98
    sbc b                                         ; $76b6: $98
    sub a                                         ; $76b7: $97
    ld h, a                                       ; $76b8: $67
    jp z, Jump_012_5795                           ; $76b9: $ca $95 $57

    adc c                                         ; $76bc: $89
    and a                                         ; $76bd: $a7
    ld b, l                                       ; $76be: $45
    add [hl]                                      ; $76bf: $86
    adc b                                         ; $76c0: $88
    ld c, b                                       ; $76c1: $48
    sbc b                                         ; $76c2: $98
    sbc b                                         ; $76c3: $98
    adc d                                         ; $76c4: $8a
    xor d                                         ; $76c5: $aa
    ld [hl], a                                    ; $76c6: $77
    and a                                         ; $76c7: $a7
    xor h                                         ; $76c8: $ac
    sub [hl]                                      ; $76c9: $96
    ld d, l                                       ; $76ca: $55
    ld [hl], a                                    ; $76cb: $77
    ld [hl], e                                    ; $76cc: $73
    ld [hl], $68                                  ; $76cd: $36 $68
    sbc e                                         ; $76cf: $9b
    add a                                         ; $76d0: $87
    sub l                                         ; $76d1: $95
    ld e, c                                       ; $76d2: $59
    add a                                         ; $76d3: $87
    adc e                                         ; $76d4: $8b
    sub [hl]                                      ; $76d5: $96
    ld h, h                                       ; $76d6: $64
    ld e, d                                       ; $76d7: $5a
    sbc l                                         ; $76d8: $9d
    jp z, Jump_012_5985                           ; $76d9: $ca $85 $59

    and a                                         ; $76dc: $a7
    ld d, l                                       ; $76dd: $55
    ld e, b                                       ; $76de: $58
    cp c                                          ; $76df: $b9
    xor b                                         ; $76e0: $a8
    ld h, [hl]                                    ; $76e1: $66
    sbc b                                         ; $76e2: $98
    ld e, c                                       ; $76e3: $59
    sbc e                                         ; $76e4: $9b
    or a                                          ; $76e5: $b7
    sub a                                         ; $76e6: $97
    ld a, b                                       ; $76e7: $78
    ld [hl], a                                    ; $76e8: $77
    jr c, jr_012_7670                             ; $76e9: $38 $85

    halt                                          ; $76eb: $76
    ld h, a                                       ; $76ec: $67
    ld a, b                                       ; $76ed: $78
    sbc b                                         ; $76ee: $98
    add a                                         ; $76ef: $87
    ld d, [hl]                                    ; $76f0: $56
    adc b                                         ; $76f1: $88
    ld h, a                                       ; $76f2: $67
    ld a, c                                       ; $76f3: $79
    xor b                                         ; $76f4: $a8
    ld a, e                                       ; $76f5: $7b
    xor d                                         ; $76f6: $aa
    cp c                                          ; $76f7: $b9
    ld d, l                                       ; $76f8: $55
    ld d, a                                       ; $76f9: $57
    ld [hl], a                                    ; $76fa: $77
    ld d, h                                       ; $76fb: $54
    ld h, a                                       ; $76fc: $67
    sbc d                                         ; $76fd: $9a
    adc b                                         ; $76fe: $88
    xor e                                         ; $76ff: $ab
    ld h, l                                       ; $7700: $65
    ld e, b                                       ; $7701: $58
    sub [hl]                                      ; $7702: $96
    adc b                                         ; $7703: $88
    add a                                         ; $7704: $87
    adc b                                         ; $7705: $88
    add a                                         ; $7706: $87
    ld d, l                                       ; $7707: $55
    ld a, d                                       ; $7708: $7a
    ld h, e                                       ; $7709: $63
    ret                                           ; $770a: $c9


    sub a                                         ; $770b: $97
    halt                                          ; $770c: $76
    adc h                                         ; $770d: $8c
    and l                                         ; $770e: $a5
    adc c                                         ; $770f: $89
    add a                                         ; $7710: $87
    sbc e                                         ; $7711: $9b
    ld a, d                                       ; $7712: $7a
    ld a, b                                       ; $7713: $78
    adc d                                         ; $7714: $8a
    xor h                                         ; $7715: $ac
    or a                                          ; $7716: $b7
    ld [hl], $b5                                  ; $7717: $36 $b5
    jr nz, jr_012_7741                            ; $7719: $20 $26

    add a                                         ; $771b: $87
    ld h, a                                       ; $771c: $67
    add a                                         ; $771d: $87
    dec [hl]                                      ; $771e: $35
    ld a, b                                       ; $771f: $78
    sbc d                                         ; $7720: $9a
    cp d                                          ; $7721: $ba
    sub l                                         ; $7722: $95
    ld b, h                                       ; $7723: $44
    dec [hl]                                      ; $7724: $35
    ld d, a                                       ; $7725: $57
    halt                                          ; $7726: $76
    add a                                         ; $7727: $87
    ld a, b                                       ; $7728: $78
    xor d                                         ; $7729: $aa
    xor d                                         ; $772a: $aa
    add a                                         ; $772b: $87
    sbc b                                         ; $772c: $98
    adc b                                         ; $772d: $88
    adc e                                         ; $772e: $8b
    cp c                                          ; $772f: $b9
    xor c                                         ; $7730: $a9
    ld [hl], a                                    ; $7731: $77
    and a                                         ; $7732: $a7
    ld l, b                                       ; $7733: $68
    ld [hl], h                                    ; $7734: $74
    ld d, [hl]                                    ; $7735: $56
    adc h                                         ; $7736: $8c
    cp e                                          ; $7737: $bb
    or h                                          ; $7738: $b4
    nop                                           ; $7739: $00
    ld b, a                                       ; $773a: $47
    xor d                                         ; $773b: $aa
    ld [hl], c                                    ; $773c: $71
    add hl, hl                                    ; $773d: $29
    and a                                         ; $773e: $a7
    ld h, [hl]                                    ; $773f: $66
    ld l, d                                       ; $7740: $6a

jr_012_7741:
    xor e                                         ; $7741: $ab
    xor b                                         ; $7742: $a8
    add a                                         ; $7743: $87
    ld [hl], a                                    ; $7744: $77
    ld h, l                                       ; $7745: $65
    ld d, h                                       ; $7746: $54
    ld l, b                                       ; $7747: $68
    xor b                                         ; $7748: $a8
    add [hl]                                      ; $7749: $86
    ld [hl], a                                    ; $774a: $77
    ld l, b                                       ; $774b: $68
    ld d, [hl]                                    ; $774c: $56
    ld a, b                                       ; $774d: $78
    ld h, [hl]                                    ; $774e: $66
    ld a, e                                       ; $774f: $7b
    cp e                                          ; $7750: $bb
    or a                                          ; $7751: $b7
    jp z, $95bc                                   ; $7752: $ca $bc $95

    add [hl]                                      ; $7755: $86

Jump_012_7756:
    ld h, [hl]                                    ; $7756: $66
    ld d, l                                       ; $7757: $55
    ld c, c                                       ; $7758: $49
    cp h                                          ; $7759: $bc
    ret                                           ; $775a: $c9


    sbc d                                         ; $775b: $9a
    xor b                                         ; $775c: $a8
    add l                                         ; $775d: $85
    ld d, l                                       ; $775e: $55
    dec h                                         ; $775f: $25
    ld h, l                                       ; $7760: $65
    add a                                         ; $7761: $87
    sbc e                                         ; $7762: $9b
    ld h, l                                       ; $7763: $65
    ld l, c                                       ; $7764: $69
    res 0, [hl]                                   ; $7765: $cb $86
    adc e                                         ; $7767: $8b
    sbc d                                         ; $7768: $9a
    sub a                                         ; $7769: $97
    ld h, [hl]                                    ; $776a: $66
    sub [hl]                                      ; $776b: $96
    ld l, b                                       ; $776c: $68
    ld [hl], l                                    ; $776d: $75
    sbc h                                         ; $776e: $9c
    ld h, h                                       ; $776f: $64
    add a                                         ; $7770: $87
    xor e                                         ; $7771: $ab
    ld d, e                                       ; $7772: $53
    add [hl]                                      ; $7773: $86
    ld [hl], $b6                                  ; $7774: $36 $b6
    ld d, l                                       ; $7776: $55
    sbc c                                         ; $7777: $99
    adc d                                         ; $7778: $8a
    add e                                         ; $7779: $83
    ld c, c                                       ; $777a: $49
    add [hl]                                      ; $777b: $86
    ld d, l                                       ; $777c: $55
    ld d, l                                       ; $777d: $55
    adc c                                         ; $777e: $89
    ld d, l                                       ; $777f: $55
    sbc e                                         ; $7780: $9b
    sub a                                         ; $7781: $97
    ld h, a                                       ; $7782: $67
    add a                                         ; $7783: $87
    adc d                                         ; $7784: $8a
    xor b                                         ; $7785: $a8
    adc d                                         ; $7786: $8a
    xor e                                         ; $7787: $ab
    sbc c                                         ; $7788: $99
    cp d                                          ; $7789: $ba
    halt                                          ; $778a: $76
    ld e, b                                       ; $778b: $58
    ld h, [hl]                                    ; $778c: $66
    ld [hl], a                                    ; $778d: $77
    ld h, a                                       ; $778e: $67
    sbc e                                         ; $778f: $9b
    ld l, b                                       ; $7790: $68
    cp c                                          ; $7791: $b9
    db $ec                                        ; $7792: $ec
    add l                                         ; $7793: $85
    ld [hl], $88                                  ; $7794: $36 $88
    sbc b                                         ; $7796: $98
    ld h, [hl]                                    ; $7797: $66
    ld h, a                                       ; $7798: $67
    ld h, l                                       ; $7799: $65
    xor e                                         ; $779a: $ab
    ld a, b                                       ; $779b: $78
    halt                                          ; $779c: $76
    ld h, l                                       ; $779d: $65
    xor l                                         ; $779e: $ad
    ld h, a                                       ; $779f: $67
    add h                                         ; $77a0: $84
    ld e, c                                       ; $77a1: $59
    and a                                         ; $77a2: $a7
    scf                                           ; $77a3: $37
    add a                                         ; $77a4: $87
    and a                                         ; $77a5: $a7
    adc c                                         ; $77a6: $89
    ld l, b                                       ; $77a7: $68
    sbc h                                         ; $77a8: $9c
    cp c                                          ; $77a9: $b9
    add [hl]                                      ; $77aa: $86
    add a                                         ; $77ab: $87
    ld h, l                                       ; $77ac: $65
    ld d, [hl]                                    ; $77ad: $56
    halt                                          ; $77ae: $76
    dec [hl]                                      ; $77af: $35
    adc e                                         ; $77b0: $8b
    cp c                                          ; $77b1: $b9
    adc d                                         ; $77b2: $8a
    xor b                                         ; $77b3: $a8
    adc b                                         ; $77b4: $88
    sbc c                                         ; $77b5: $99
    sub [hl]                                      ; $77b6: $96
    ld [hl], a                                    ; $77b7: $77
    ld d, a                                       ; $77b8: $57
    ld e, b                                       ; $77b9: $58
    and a                                         ; $77ba: $a7
    ld b, [hl]                                    ; $77bb: $46
    adc b                                         ; $77bc: $88
    ld h, [hl]                                    ; $77bd: $66
    adc e                                         ; $77be: $8b
    sub l                                         ; $77bf: $95
    adc d                                         ; $77c0: $8a
    and a                                         ; $77c1: $a7
    ld l, b                                       ; $77c2: $68
    ld a, c                                       ; $77c3: $79
    add l                                         ; $77c4: $85
    ld l, e                                       ; $77c5: $6b
    or [hl]                                       ; $77c6: $b6
    ld l, c                                       ; $77c7: $69
    sub a                                         ; $77c8: $97
    ld h, a                                       ; $77c9: $67
    adc b                                         ; $77ca: $88
    adc c                                         ; $77cb: $89
    adc d                                         ; $77cc: $8a
    xor c                                         ; $77cd: $a9
    add [hl]                                      ; $77ce: $86
    ld [hl], a                                    ; $77cf: $77
    add a                                         ; $77d0: $87
    and l                                         ; $77d1: $a5
    ld b, a                                       ; $77d2: $47
    adc b                                         ; $77d3: $88
    sbc d                                         ; $77d4: $9a
    ld a, b                                       ; $77d5: $78
    and a                                         ; $77d6: $a7
    adc b                                         ; $77d7: $88
    ld h, a                                       ; $77d8: $67
    halt                                          ; $77d9: $76
    add a                                         ; $77da: $87
    ld [hl], l                                    ; $77db: $75
    ld b, l                                       ; $77dc: $45
    halt                                          ; $77dd: $76
    ld h, a                                       ; $77de: $67
    xor b                                         ; $77df: $a8
    sbc d                                         ; $77e0: $9a
    sbc c                                         ; $77e1: $99
    ld a, b                                       ; $77e2: $78
    cp c                                          ; $77e3: $b9
    add a                                         ; $77e4: $87
    ld b, $68                                     ; $77e5: $06 $68
    ld [hl], a                                    ; $77e7: $77
    ld d, e                                       ; $77e8: $53
    adc e                                         ; $77e9: $8b
    adc c                                         ; $77ea: $89
    sub [hl]                                      ; $77eb: $96
    halt                                          ; $77ec: $76
    ld l, d                                       ; $77ed: $6a
    sbc d                                         ; $77ee: $9a
    cp b                                          ; $77ef: $b8
    ld h, a                                       ; $77f0: $67
    add a                                         ; $77f1: $87
    ld l, d                                       ; $77f2: $6a
    sub a                                         ; $77f3: $97
    adc c                                         ; $77f4: $89
    ld [hl], a                                    ; $77f5: $77
    adc e                                         ; $77f6: $8b
    ld h, l                                       ; $77f7: $65
    add a                                         ; $77f8: $87
    add a                                         ; $77f9: $87
    sbc b                                         ; $77fa: $98
    ld d, l                                       ; $77fb: $55
    ld d, [hl]                                    ; $77fc: $56
    adc c                                         ; $77fd: $89
    adc b                                         ; $77fe: $88
    adc b                                         ; $77ff: $88
    adc c                                         ; $7800: $89
    add a                                         ; $7801: $87
    xor b                                         ; $7802: $a8
    ld e, b                                       ; $7803: $58
    ld h, [hl]                                    ; $7804: $66
    xor b                                         ; $7805: $a8
    adc b                                         ; $7806: $88
    ld c, c                                       ; $7807: $49
    sbc e                                         ; $7808: $9b
    sub [hl]                                      ; $7809: $96
    adc c                                         ; $780a: $89
    ld d, [hl]                                    ; $780b: $56
    adc c                                         ; $780c: $89
    ld h, a                                       ; $780d: $67
    and a                                         ; $780e: $a7
    ld a, e                                       ; $780f: $7b
    adc e                                         ; $7810: $8b
    sub [hl]                                      ; $7811: $96
    ld h, l                                       ; $7812: $65
    ld a, c                                       ; $7813: $79
    halt                                          ; $7814: $76
    halt                                          ; $7815: $76
    ld h, l                                       ; $7816: $65
    ld b, [hl]                                    ; $7817: $46
    ld h, [hl]                                    ; $7818: $66
    ld d, a                                       ; $7819: $57
    add a                                         ; $781a: $87
    ld e, b                                       ; $781b: $58
    xor d                                         ; $781c: $aa
    cp b                                          ; $781d: $b8
    xor c                                         ; $781e: $a9
    add a                                         ; $781f: $87
    ld d, a                                       ; $7820: $57
    ld d, l                                       ; $7821: $55
    ld h, h                                       ; $7822: $64
    ld [hl], $59                                  ; $7823: $36 $59
    adc b                                         ; $7825: $88
    xor c                                         ; $7826: $a9
    xor d                                         ; $7827: $aa
    adc e                                         ; $7828: $8b
    ret z                                         ; $7829: $c8

    xor h                                         ; $782a: $ac
    ld [hl], h                                    ; $782b: $74
    sbc e                                         ; $782c: $9b
    ld [hl], h                                    ; $782d: $74
    ld a, d                                       ; $782e: $7a
    halt                                          ; $782f: $76
    adc c                                         ; $7830: $89
    sbc c                                         ; $7831: $99
    ld h, h                                       ; $7832: $64
    ld h, [hl]                                    ; $7833: $66
    ld e, b                                       ; $7834: $58
    ld d, e                                       ; $7835: $53
    ld d, e                                       ; $7836: $53
    ld [hl], a                                    ; $7837: $77
    adc e                                         ; $7838: $8b
    xor b                                         ; $7839: $a8
    add e                                         ; $783a: $83
    ld h, a                                       ; $783b: $67
    sbc c                                         ; $783c: $99
    ld d, a                                       ; $783d: $57
    xor h                                         ; $783e: $ac
    sbc b                                         ; $783f: $98
    add [hl]                                      ; $7840: $86
    sub a                                         ; $7841: $97
    ld l, b                                       ; $7842: $68
    xor d                                         ; $7843: $aa
    and a                                         ; $7844: $a7
    ld a, d                                       ; $7845: $7a
    sbc b                                         ; $7846: $98
    ld [hl], a                                    ; $7847: $77
    ld [hl], a                                    ; $7848: $77
    ld e, b                                       ; $7849: $58
    cp c                                          ; $784a: $b9
    add l                                         ; $784b: $85
    ld d, l                                       ; $784c: $55
    ld b, l                                       ; $784d: $45
    ld e, b                                       ; $784e: $58
    sbc d                                         ; $784f: $9a
    ld d, [hl]                                    ; $7850: $56
    adc c                                         ; $7851: $89
    ld h, l                                       ; $7852: $65
    ld [hl], a                                    ; $7853: $77
    add a                                         ; $7854: $87
    adc d                                         ; $7855: $8a
    adc c                                         ; $7856: $89
    cp e                                          ; $7857: $bb
    xor c                                         ; $7858: $a9
    ld a, d                                       ; $7859: $7a
    xor b                                         ; $785a: $a8
    add a                                         ; $785b: $87
    adc e                                         ; $785c: $8b
    ld [hl], a                                    ; $785d: $77
    ld [hl], a                                    ; $785e: $77
    add l                                         ; $785f: $85
    adc c                                         ; $7860: $89
    adc b                                         ; $7861: $88
    xor b                                         ; $7862: $a8
    ld d, h                                       ; $7863: $54
    ld h, a                                       ; $7864: $67
    ld [hl], l                                    ; $7865: $75
    ld b, d                                       ; $7866: $42
    ld e, d                                       ; $7867: $5a
    sub [hl]                                      ; $7868: $96
    sbc b                                         ; $7869: $98
    ld h, [hl]                                    ; $786a: $66
    ld [hl], l                                    ; $786b: $75
    ld h, a                                       ; $786c: $67
    adc c                                         ; $786d: $89
    sbc c                                         ; $786e: $99
    ld a, b                                       ; $786f: $78
    ld l, c                                       ; $7870: $69
    xor c                                         ; $7871: $a9
    ld a, c                                       ; $7872: $79
    ld [hl], l                                    ; $7873: $75
    ld a, b                                       ; $7874: $78
    ld [hl], a                                    ; $7875: $77
    ld [hl], a                                    ; $7876: $77
    ld a, b                                       ; $7877: $78
    sbc d                                         ; $7878: $9a
    adc c                                         ; $7879: $89
    ld [hl], l                                    ; $787a: $75
    ld a, b                                       ; $787b: $78
    sub a                                         ; $787c: $97
    add a                                         ; $787d: $87
    ld l, d                                       ; $787e: $6a
    sub [hl]                                      ; $787f: $96
    ld h, l                                       ; $7880: $65
    ld l, b                                       ; $7881: $68
    sbc c                                         ; $7882: $99
    sub [hl]                                      ; $7883: $96
    ld [hl], a                                    ; $7884: $77
    rst $10                                       ; $7885: $d7
    ld d, a                                       ; $7886: $57
    adc b                                         ; $7887: $88
    sbc b                                         ; $7888: $98
    ld h, [hl]                                    ; $7889: $66
    jr c, jr_012_7903                             ; $788a: $38 $77

    ld [hl], l                                    ; $788c: $75
    sbc e                                         ; $788d: $9b
    ld a, c                                       ; $788e: $79
    cp b                                          ; $788f: $b8
    adc c                                         ; $7890: $89
    ld [hl], a                                    ; $7891: $77
    sbc h                                         ; $7892: $9c
    and h                                         ; $7893: $a4
    ld e, c                                       ; $7894: $59
    ld a, b                                       ; $7895: $78
    ld h, a                                       ; $7896: $67
    add [hl]                                      ; $7897: $86
    and [hl]                                      ; $7898: $a6
    ld [hl], $97                                  ; $7899: $36 $97
    xor c                                         ; $789b: $a9
    ld h, e                                       ; $789c: $63
    add hl, sp                                    ; $789d: $39
    and [hl]                                      ; $789e: $a6
    ld d, l                                       ; $789f: $55
    adc d                                         ; $78a0: $8a
    add a                                         ; $78a1: $87
    ld a, d                                       ; $78a2: $7a
    xor d                                         ; $78a3: $aa
    adc c                                         ; $78a4: $89
    and l                                         ; $78a5: $a5
    ld [hl], a                                    ; $78a6: $77
    ld [hl], a                                    ; $78a7: $77

Call_012_78a8:
jr_012_78a8:
    ld a, e                                       ; $78a8: $7b
    sbc c                                         ; $78a9: $99
    adc c                                         ; $78aa: $89
    sbc d                                         ; $78ab: $9a
    adc b                                         ; $78ac: $88
    ld e, b                                       ; $78ad: $58
    ld h, [hl]                                    ; $78ae: $66
    ld [hl], a                                    ; $78af: $77
    ld d, e                                       ; $78b0: $53
    ld a, b                                       ; $78b1: $78
    sbc b                                         ; $78b2: $98
    ld a, d                                       ; $78b3: $7a
    add [hl]                                      ; $78b4: $86
    ld a, b                                       ; $78b5: $78
    sbc b                                         ; $78b6: $98
    halt                                          ; $78b7: $76
    ld [hl], $aa                                  ; $78b8: $36 $aa
    halt                                          ; $78ba: $76
    add a                                         ; $78bb: $87
    adc b                                         ; $78bc: $88
    adc c                                         ; $78bd: $89
    add [hl]                                      ; $78be: $86
    ld a, d                                       ; $78bf: $7a
    sub [hl]                                      ; $78c0: $96
    xor b                                         ; $78c1: $a8
    scf                                           ; $78c2: $37
    sbc b                                         ; $78c3: $98
    xor d                                         ; $78c4: $aa
    adc b                                         ; $78c5: $88
    ld h, [hl]                                    ; $78c6: $66
    add l                                         ; $78c7: $85
    ld d, l                                       ; $78c8: $55
    ld h, [hl]                                    ; $78c9: $66
    sbc c                                         ; $78ca: $99
    add a                                         ; $78cb: $87
    xor b                                         ; $78cc: $a8
    ld a, c                                       ; $78cd: $79
    xor c                                         ; $78ce: $a9
    ld h, a                                       ; $78cf: $67
    xor c                                         ; $78d0: $a9
    sub [hl]                                      ; $78d1: $96
    ld e, c                                       ; $78d2: $59
    add l                                         ; $78d3: $85
    ld d, l                                       ; $78d4: $55
    adc c                                         ; $78d5: $89
    ld [hl], a                                    ; $78d6: $77
    sbc b                                         ; $78d7: $98
    and a                                         ; $78d8: $a7
    and a                                         ; $78d9: $a7
    ld a, b                                       ; $78da: $78
    ld a, b                                       ; $78db: $78
    ld [hl], l                                    ; $78dc: $75
    add [hl]                                      ; $78dd: $86
    add a                                         ; $78de: $87
    ld a, c                                       ; $78df: $79
    add a                                         ; $78e0: $87
    ld d, a                                       ; $78e1: $57
    sub a                                         ; $78e2: $97
    cp c                                          ; $78e3: $b9
    add [hl]                                      ; $78e4: $86
    ld d, l                                       ; $78e5: $55
    adc b                                         ; $78e6: $88
    sbc c                                         ; $78e7: $99
    ld a, d                                       ; $78e8: $7a
    xor b                                         ; $78e9: $a8
    ld l, b                                       ; $78ea: $68
    ld h, a                                       ; $78eb: $67
    xor d                                         ; $78ec: $aa
    xor d                                         ; $78ed: $aa
    sbc c                                         ; $78ee: $99
    xor c                                         ; $78ef: $a9
    sub [hl]                                      ; $78f0: $96
    ld [hl], h                                    ; $78f1: $74
    ld h, a                                       ; $78f2: $67
    adc c                                         ; $78f3: $89
    ld d, l                                       ; $78f4: $55
    ld d, l                                       ; $78f5: $55
    ld [hl], a                                    ; $78f6: $77
    add [hl]                                      ; $78f7: $86
    ld [hl], a                                    ; $78f8: $77
    ld h, a                                       ; $78f9: $67
    sub a                                         ; $78fa: $97
    ld h, [hl]                                    ; $78fb: $66
    add a                                         ; $78fc: $87
    ld d, [hl]                                    ; $78fd: $56
    ld l, b                                       ; $78fe: $68
    adc e                                         ; $78ff: $8b
    sbc c                                         ; $7900: $99
    sub [hl]                                      ; $7901: $96
    adc c                                         ; $7902: $89

jr_012_7903:
    ld h, [hl]                                    ; $7903: $66
    ld h, [hl]                                    ; $7904: $66
    sub a                                         ; $7905: $97
    ld a, c                                       ; $7906: $79
    xor d                                         ; $7907: $aa
    or a                                          ; $7908: $b7
    ld a, d                                       ; $7909: $7a
    cp d                                          ; $790a: $ba
    cp b                                          ; $790b: $b8
    adc b                                         ; $790c: $88
    ld [hl], h                                    ; $790d: $74
    ld c, b                                       ; $790e: $48
    add h                                         ; $790f: $84
    ld e, b                                       ; $7910: $58
    adc b                                         ; $7911: $88
    sub a                                         ; $7912: $97
    ld a, b                                       ; $7913: $78
    sub a                                         ; $7914: $97
    sub a                                         ; $7915: $97
    sub [hl]                                      ; $7916: $96
    ld d, l                                       ; $7917: $55
    ld d, [hl]                                    ; $7918: $56
    adc c                                         ; $7919: $89
    add a                                         ; $791a: $87
    sbc b                                         ; $791b: $98
    xor h                                         ; $791c: $ac
    add a                                         ; $791d: $87
    sub [hl]                                      ; $791e: $96
    jr c, jr_012_78a8                             ; $791f: $38 $87

    ld h, l                                       ; $7921: $65
    ld a, c                                       ; $7922: $79
    add a                                         ; $7923: $87
    ld h, [hl]                                    ; $7924: $66
    sbc d                                         ; $7925: $9a
    add a                                         ; $7926: $87
    ld a, c                                       ; $7927: $79
    adc c                                         ; $7928: $89
    add l                                         ; $7929: $85
    ld d, [hl]                                    ; $792a: $56
    ld h, l                                       ; $792b: $65
    add a                                         ; $792c: $87
    ld [hl], a                                    ; $792d: $77
    add a                                         ; $792e: $87
    xor c                                         ; $792f: $a9
    ld e, b                                       ; $7930: $58
    adc e                                         ; $7931: $8b
    add a                                         ; $7932: $87
    adc c                                         ; $7933: $89
    sbc c                                         ; $7934: $99
    adc b                                         ; $7935: $88
    adc b                                         ; $7936: $88
    adc b                                         ; $7937: $88
    add a                                         ; $7938: $87
    add [hl]                                      ; $7939: $86
    adc d                                         ; $793a: $8a
    halt                                          ; $793b: $76
    ld h, [hl]                                    ; $793c: $66
    adc b                                         ; $793d: $88
    sbc b                                         ; $793e: $98
    add l                                         ; $793f: $85
    adc b                                         ; $7940: $88
    ld d, l                                       ; $7941: $55
    ld b, a                                       ; $7942: $47
    ld d, [hl]                                    ; $7943: $56
    adc d                                         ; $7944: $8a
    ld a, b                                       ; $7945: $78
    adc c                                         ; $7946: $89
    add a                                         ; $7947: $87
    ld a, d                                       ; $7948: $7a
    adc c                                         ; $7949: $89
    adc b                                         ; $794a: $88
    ld d, [hl]                                    ; $794b: $56
    ld a, c                                       ; $794c: $79
    ld [hl], l                                    ; $794d: $75
    adc c                                         ; $794e: $89
    ld a, b                                       ; $794f: $78
    add [hl]                                      ; $7950: $86
    add [hl]                                      ; $7951: $86
    ld h, a                                       ; $7952: $67
    ld [hl], a                                    ; $7953: $77
    ld c, b                                       ; $7954: $48
    ld [hl], a                                    ; $7955: $77
    ld l, d                                       ; $7956: $6a
    ld [hl], a                                    ; $7957: $77
    ld a, d                                       ; $7958: $7a
    ld [hl], a                                    ; $7959: $77
    cp d                                          ; $795a: $ba
    ld [hl], a                                    ; $795b: $77
    ld a, b                                       ; $795c: $78
    sbc b                                         ; $795d: $98
    ld l, b                                       ; $795e: $68
    ld [hl], a                                    ; $795f: $77
    ld h, a                                       ; $7960: $67
    sub a                                         ; $7961: $97
    sbc c                                         ; $7962: $99
    sub [hl]                                      ; $7963: $96
    ld e, b                                       ; $7964: $58
    add a                                         ; $7965: $87
    ld h, a                                       ; $7966: $67
    ld a, b                                       ; $7967: $78
    ld h, [hl]                                    ; $7968: $66
    xor b                                         ; $7969: $a8
    ld a, b                                       ; $796a: $78
    ld l, c                                       ; $796b: $69
    ld d, [hl]                                    ; $796c: $56
    ld a, b                                       ; $796d: $78
    add a                                         ; $796e: $87
    add [hl]                                      ; $796f: $86
    sub a                                         ; $7970: $97
    ld a, c                                       ; $7971: $79
    ld h, a                                       ; $7972: $67
    add a                                         ; $7973: $87
    sbc e                                         ; $7974: $9b
    add a                                         ; $7975: $87
    ld a, c                                       ; $7976: $79
    ld a, b                                       ; $7977: $78
    add a                                         ; $7978: $87
    ld a, b                                       ; $7979: $78
    halt                                          ; $797a: $76
    ld h, [hl]                                    ; $797b: $66
    ld h, h                                       ; $797c: $64
    ld d, [hl]                                    ; $797d: $56
    ld e, c                                       ; $797e: $59
    ld a, b                                       ; $797f: $78
    cp b                                          ; $7980: $b8
    xor e                                         ; $7981: $ab
    ld [hl], a                                    ; $7982: $77
    sbc c                                         ; $7983: $99
    xor d                                         ; $7984: $aa
    ld a, b                                       ; $7985: $78
    ld h, a                                       ; $7986: $67
    ld [hl], a                                    ; $7987: $77
    ld l, b                                       ; $7988: $68
    ld d, l                                       ; $7989: $55
    sbc b                                         ; $798a: $98
    ld l, c                                       ; $798b: $69
    sub [hl]                                      ; $798c: $96
    ld a, c                                       ; $798d: $79
    ld [hl], a                                    ; $798e: $77
    halt                                          ; $798f: $76
    adc c                                         ; $7990: $89
    ld h, d                                       ; $7991: $62
    ld a, c                                       ; $7992: $79
    adc b                                         ; $7993: $88
    ld a, c                                       ; $7994: $79
    ld l, b                                       ; $7995: $68
    sbc e                                         ; $7996: $9b
    sub [hl]                                      ; $7997: $96
    ld h, [hl]                                    ; $7998: $66
    ld a, c                                       ; $7999: $79

Jump_012_799a:
    sbc d                                         ; $799a: $9a
    add h                                         ; $799b: $84
    ld h, a                                       ; $799c: $67
    adc c                                         ; $799d: $89
    add a                                         ; $799e: $87
    ld d, h                                       ; $799f: $54
    adc d                                         ; $79a0: $8a
    xor b                                         ; $79a1: $a8
    adc c                                         ; $79a2: $89
    add a                                         ; $79a3: $87
    xor c                                         ; $79a4: $a9
    ld a, b                                       ; $79a5: $78
    ld a, b                                       ; $79a6: $78
    xor c                                         ; $79a7: $a9
    sub a                                         ; $79a8: $97
    ld h, [hl]                                    ; $79a9: $66
    ld d, a                                       ; $79aa: $57
    ld [hl], a                                    ; $79ab: $77
    ld d, h                                       ; $79ac: $54
    ld [hl], a                                    ; $79ad: $77
    ld a, b                                       ; $79ae: $78
    adc c                                         ; $79af: $89
    add [hl]                                      ; $79b0: $86
    adc c                                         ; $79b1: $89
    ld [hl], a                                    ; $79b2: $77
    adc c                                         ; $79b3: $89
    add [hl]                                      ; $79b4: $86
    ld h, a                                       ; $79b5: $67
    adc c                                         ; $79b6: $89
    adc b                                         ; $79b7: $88
    adc c                                         ; $79b8: $89
    xor d                                         ; $79b9: $aa
    halt                                          ; $79ba: $76
    ld l, b                                       ; $79bb: $68
    ld [hl], l                                    ; $79bc: $75
    ld a, b                                       ; $79bd: $78
    halt                                          ; $79be: $76
    ld a, c                                       ; $79bf: $79
    adc b                                         ; $79c0: $88
    adc d                                         ; $79c1: $8a
    add a                                         ; $79c2: $87
    ld l, c                                       ; $79c3: $69
    add [hl]                                      ; $79c4: $86
    ld h, a                                       ; $79c5: $67
    sbc c                                         ; $79c6: $99
    sbc b                                         ; $79c7: $98
    sbc b                                         ; $79c8: $98
    adc b                                         ; $79c9: $88
    ld h, [hl]                                    ; $79ca: $66
    ld [hl], a                                    ; $79cb: $77
    ld h, a                                       ; $79cc: $67
    sbc b                                         ; $79cd: $98
    sub a                                         ; $79ce: $97
    ld b, [hl]                                    ; $79cf: $46
    sbc e                                         ; $79d0: $9b
    jp z, $8886                                   ; $79d1: $ca $86 $88

    and a                                         ; $79d4: $a7
    ld h, [hl]                                    ; $79d5: $66
    add [hl]                                      ; $79d6: $86
    add a                                         ; $79d7: $87
    adc b                                         ; $79d8: $88
    adc b                                         ; $79d9: $88
    halt                                          ; $79da: $76
    ld l, b                                       ; $79db: $68
    ld h, [hl]                                    ; $79dc: $66
    adc b                                         ; $79dd: $88
    ld [hl], a                                    ; $79de: $77
    ld l, b                                       ; $79df: $68
    add [hl]                                      ; $79e0: $86
    adc c                                         ; $79e1: $89
    sbc b                                         ; $79e2: $98
    ld l, b                                       ; $79e3: $68
    sbc b                                         ; $79e4: $98
    ld [hl], a                                    ; $79e5: $77
    ld [hl], a                                    ; $79e6: $77
    add a                                         ; $79e7: $87
    adc d                                         ; $79e8: $8a
    sub a                                         ; $79e9: $97
    ld l, b                                       ; $79ea: $68
    sbc b                                         ; $79eb: $98
    adc c                                         ; $79ec: $89
    add [hl]                                      ; $79ed: $86
    adc b                                         ; $79ee: $88
    ld [hl], a                                    ; $79ef: $77
    add [hl]                                      ; $79f0: $86
    ld h, [hl]                                    ; $79f1: $66
    sbc c                                         ; $79f2: $99
    sbc b                                         ; $79f3: $98
    sbc c                                         ; $79f4: $99
    ld a, b                                       ; $79f5: $78
    add [hl]                                      ; $79f6: $86
    ld [hl], a                                    ; $79f7: $77
    ld a, b                                       ; $79f8: $78
    sub a                                         ; $79f9: $97
    ld [hl], a                                    ; $79fa: $77
    ld h, a                                       ; $79fb: $67
    add [hl]                                      ; $79fc: $86
    ld [hl], a                                    ; $79fd: $77
    adc c                                         ; $79fe: $89
    add a                                         ; $79ff: $87
    ld h, a                                       ; $7a00: $67
    ld d, a                                       ; $7a01: $57
    sbc b                                         ; $7a02: $98
    add a                                         ; $7a03: $87
    ld a, e                                       ; $7a04: $7b
    add [hl]                                      ; $7a05: $86
    adc c                                         ; $7a06: $89
    ld a, b                                       ; $7a07: $78
    sbc c                                         ; $7a08: $99
    sub a                                         ; $7a09: $97
    adc b                                         ; $7a0a: $88
    ld [hl], a                                    ; $7a0b: $77
    ld [hl], l                                    ; $7a0c: $75
    ld h, a                                       ; $7a0d: $67
    halt                                          ; $7a0e: $76
    ld a, c                                       ; $7a0f: $79
    add a                                         ; $7a10: $87
    sbc b                                         ; $7a11: $98
    adc b                                         ; $7a12: $88
    and a                                         ; $7a13: $a7
    xor d                                         ; $7a14: $aa
    ld a, c                                       ; $7a15: $79
    ld h, l                                       ; $7a16: $65
    halt                                          ; $7a17: $76
    ld h, l                                       ; $7a18: $65
    ld [hl], a                                    ; $7a19: $77
    ld h, l                                       ; $7a1a: $65
    ld [hl], a                                    ; $7a1b: $77
    adc b                                         ; $7a1c: $88
    ld [hl], a                                    ; $7a1d: $77
    add a                                         ; $7a1e: $87
    ld h, a                                       ; $7a1f: $67
    xor d                                         ; $7a20: $aa
    sbc b                                         ; $7a21: $98
    ld a, b                                       ; $7a22: $78
    sbc c                                         ; $7a23: $99
    ld [hl], a                                    ; $7a24: $77
    adc b                                         ; $7a25: $88
    and a                                         ; $7a26: $a7
    ld [hl], a                                    ; $7a27: $77
    adc b                                         ; $7a28: $88
    ld [hl], a                                    ; $7a29: $77
    ld [hl], a                                    ; $7a2a: $77
    ld l, b                                       ; $7a2b: $68
    ld h, a                                       ; $7a2c: $67
    ld a, b                                       ; $7a2d: $78
    halt                                          ; $7a2e: $76
    adc b                                         ; $7a2f: $88
    adc d                                         ; $7a30: $8a
    add a                                         ; $7a31: $87
    add a                                         ; $7a32: $87
    adc c                                         ; $7a33: $89
    ld [hl], a                                    ; $7a34: $77
    adc c                                         ; $7a35: $89
    add [hl]                                      ; $7a36: $86
    ld l, c                                       ; $7a37: $69
    sub a                                         ; $7a38: $97
    ld h, [hl]                                    ; $7a39: $66
    add [hl]                                      ; $7a3a: $86
    ld d, a                                       ; $7a3b: $57
    ld [hl], a                                    ; $7a3c: $77
    ld h, a                                       ; $7a3d: $67
    add a                                         ; $7a3e: $87
    ld a, b                                       ; $7a3f: $78
    adc b                                         ; $7a40: $88
    ld h, a                                       ; $7a41: $67
    ld a, b                                       ; $7a42: $78
    sbc c                                         ; $7a43: $99
    ld h, [hl]                                    ; $7a44: $66
    adc c                                         ; $7a45: $89
    adc d                                         ; $7a46: $8a
    adc b                                         ; $7a47: $88
    ld [hl], a                                    ; $7a48: $77
    adc c                                         ; $7a49: $89
    ld h, a                                       ; $7a4a: $67
    ld [hl], a                                    ; $7a4b: $77
    ld [hl], a                                    ; $7a4c: $77
    adc b                                         ; $7a4d: $88
    ld a, b                                       ; $7a4e: $78
    xor b                                         ; $7a4f: $a8
    add [hl]                                      ; $7a50: $86
    add [hl]                                      ; $7a51: $86
    adc b                                         ; $7a52: $88
    ld h, a                                       ; $7a53: $67
    add a                                         ; $7a54: $87
    adc c                                         ; $7a55: $89
    ld [hl], l                                    ; $7a56: $75
    ld l, b                                       ; $7a57: $68
    ld l, b                                       ; $7a58: $68
    sbc b                                         ; $7a59: $98
    ld [hl], a                                    ; $7a5a: $77
    adc c                                         ; $7a5b: $89
    adc b                                         ; $7a5c: $88
    add a                                         ; $7a5d: $87
    adc b                                         ; $7a5e: $88
    adc b                                         ; $7a5f: $88
    add a                                         ; $7a60: $87
    ld a, c                                       ; $7a61: $79
    sub a                                         ; $7a62: $97
    halt                                          ; $7a63: $76
    ld d, [hl]                                    ; $7a64: $56
    ld a, b                                       ; $7a65: $78
    add a                                         ; $7a66: $87
    adc b                                         ; $7a67: $88
    add a                                         ; $7a68: $87
    adc c                                         ; $7a69: $89
    sbc b                                         ; $7a6a: $98
    ld a, c                                       ; $7a6b: $79
    add a                                         ; $7a6c: $87
    sbc b                                         ; $7a6d: $98
    ld h, [hl]                                    ; $7a6e: $66
    adc c                                         ; $7a6f: $89
    add a                                         ; $7a70: $87
    ld a, b                                       ; $7a71: $78
    halt                                          ; $7a72: $76
    ld a, b                                       ; $7a73: $78
    halt                                          ; $7a74: $76
    ld h, a                                       ; $7a75: $67
    adc b                                         ; $7a76: $88
    sub a                                         ; $7a77: $97
    ld [hl], a                                    ; $7a78: $77
    sbc b                                         ; $7a79: $98
    sbc c                                         ; $7a7a: $99

Call_012_7a7b:
    adc c                                         ; $7a7b: $89
    adc b                                         ; $7a7c: $88
    add a                                         ; $7a7d: $87
    ld [hl], a                                    ; $7a7e: $77
    sub a                                         ; $7a7f: $97
    ld l, b                                       ; $7a80: $68
    sub a                                         ; $7a81: $97
    ld [hl], a                                    ; $7a82: $77
    adc c                                         ; $7a83: $89
    ld a, c                                       ; $7a84: $79
    add a                                         ; $7a85: $87
    ld a, b                                       ; $7a86: $78
    sbc b                                         ; $7a87: $98
    halt                                          ; $7a88: $76
    ld a, b                                       ; $7a89: $78
    ld a, b                                       ; $7a8a: $78
    adc b                                         ; $7a8b: $88
    ld [hl], a                                    ; $7a8c: $77
    sbc b                                         ; $7a8d: $98
    ld a, b                                       ; $7a8e: $78
    ld h, a                                       ; $7a8f: $67
    adc b                                         ; $7a90: $88
    add a                                         ; $7a91: $87
    ld [hl], a                                    ; $7a92: $77
    sbc b                                         ; $7a93: $98
    ld a, b                                       ; $7a94: $78
    sbc b                                         ; $7a95: $98
    ld l, c                                       ; $7a96: $69
    add [hl]                                      ; $7a97: $86
    adc c                                         ; $7a98: $89
    adc c                                         ; $7a99: $89
    sub [hl]                                      ; $7a9a: $96
    ld h, a                                       ; $7a9b: $67
    ld a, b                                       ; $7a9c: $78
    halt                                          ; $7a9d: $76
    ld [hl], a                                    ; $7a9e: $77
    halt                                          ; $7a9f: $76
    adc c                                         ; $7aa0: $89
    ld a, b                                       ; $7aa1: $78
    ld h, [hl]                                    ; $7aa2: $66
    ld [hl], a                                    ; $7aa3: $77
    halt                                          ; $7aa4: $76
    ld h, a                                       ; $7aa5: $67
    adc b                                         ; $7aa6: $88
    ld h, a                                       ; $7aa7: $67
    add a                                         ; $7aa8: $87
    ld [hl], a                                    ; $7aa9: $77
    adc c                                         ; $7aaa: $89
    ld a, d                                       ; $7aab: $7a
    sbc b                                         ; $7aac: $98
    adc c                                         ; $7aad: $89
    adc b                                         ; $7aae: $88
    adc c                                         ; $7aaf: $89
    sbc c                                         ; $7ab0: $99
    halt                                          ; $7ab1: $76
    ld [hl], a                                    ; $7ab2: $77
    ld [hl], a                                    ; $7ab3: $77
    adc b                                         ; $7ab4: $88
    ld a, c                                       ; $7ab5: $79
    halt                                          ; $7ab6: $76
    add a                                         ; $7ab7: $87
    add [hl]                                      ; $7ab8: $86
    ld h, [hl]                                    ; $7ab9: $66
    ld h, l                                       ; $7aba: $65
    adc b                                         ; $7abb: $88
    add [hl]                                      ; $7abc: $86
    ld a, b                                       ; $7abd: $78
    sub a                                         ; $7abe: $97
    ld d, a                                       ; $7abf: $57
    sbc b                                         ; $7ac0: $98
    adc b                                         ; $7ac1: $88
    adc b                                         ; $7ac2: $88
    sbc b                                         ; $7ac3: $98
    ld h, a                                       ; $7ac4: $67
    adc c                                         ; $7ac5: $89
    add a                                         ; $7ac6: $87
    adc b                                         ; $7ac7: $88
    adc b                                         ; $7ac8: $88
    adc c                                         ; $7ac9: $89
    sbc b                                         ; $7aca: $98
    adc c                                         ; $7acb: $89
    ld [hl], a                                    ; $7acc: $77
    halt                                          ; $7acd: $76
    ld [hl], l                                    ; $7ace: $75
    ld d, [hl]                                    ; $7acf: $56
    add a                                         ; $7ad0: $87
    ld a, b                                       ; $7ad1: $78
    ld h, a                                       ; $7ad2: $67
    ld a, b                                       ; $7ad3: $78
    sub a                                         ; $7ad4: $97
    ld l, b                                       ; $7ad5: $68
    halt                                          ; $7ad6: $76
    ld a, b                                       ; $7ad7: $78
    ld [hl], a                                    ; $7ad8: $77
    ld [hl], a                                    ; $7ad9: $77
    ld h, a                                       ; $7ada: $67
    add a                                         ; $7adb: $87
    ld a, d                                       ; $7adc: $7a
    sub [hl]                                      ; $7add: $96
    ld [hl], a                                    ; $7ade: $77
    ld a, b                                       ; $7adf: $78
    adc b                                         ; $7ae0: $88
    ld a, b                                       ; $7ae1: $78
    ld a, b                                       ; $7ae2: $78
    adc b                                         ; $7ae3: $88
    adc b                                         ; $7ae4: $88
    sbc d                                         ; $7ae5: $9a
    add a                                         ; $7ae6: $87
    adc b                                         ; $7ae7: $88
    ld [hl], a                                    ; $7ae8: $77
    add a                                         ; $7ae9: $87
    ld d, a                                       ; $7aea: $57
    ld [hl], a                                    ; $7aeb: $77
    ld [hl], a                                    ; $7aec: $77
    adc b                                         ; $7aed: $88
    ld a, b                                       ; $7aee: $78
    add a                                         ; $7aef: $87
    ld h, a                                       ; $7af0: $67
    ld a, b                                       ; $7af1: $78
    ld [hl], a                                    ; $7af2: $77
    ld a, b                                       ; $7af3: $78
    adc b                                         ; $7af4: $88
    ld [hl], a                                    ; $7af5: $77
    ld a, b                                       ; $7af6: $78
    ld a, b                                       ; $7af7: $78
    sbc c                                         ; $7af8: $99
    adc b                                         ; $7af9: $88
    sbc c                                         ; $7afa: $99
    xor b                                         ; $7afb: $a8
    ld [hl], a                                    ; $7afc: $77
    ld e, b                                       ; $7afd: $58
    add a                                         ; $7afe: $87
    add a                                         ; $7aff: $87
    add a                                         ; $7b00: $87
    halt                                          ; $7b01: $76
    ld [hl], a                                    ; $7b02: $77
    ld a, b                                       ; $7b03: $78
    ld [hl], a                                    ; $7b04: $77
    ld a, c                                       ; $7b05: $79
    sub a                                         ; $7b06: $97
    ld [hl], a                                    ; $7b07: $77
    ld h, a                                       ; $7b08: $67
    adc b                                         ; $7b09: $88
    add a                                         ; $7b0a: $87
    ld a, b                                       ; $7b0b: $78
    sbc c                                         ; $7b0c: $99
    ld [hl], a                                    ; $7b0d: $77
    ld a, b                                       ; $7b0e: $78
    adc b                                         ; $7b0f: $88
    adc c                                         ; $7b10: $89
    sub a                                         ; $7b11: $97
    ld [hl], a                                    ; $7b12: $77
    adc c                                         ; $7b13: $89
    sbc c                                         ; $7b14: $99
    ld [hl], a                                    ; $7b15: $77
    add a                                         ; $7b16: $87
    adc b                                         ; $7b17: $88
    adc b                                         ; $7b18: $88
    add a                                         ; $7b19: $87
    ld a, b                                       ; $7b1a: $78
    ld [hl], a                                    ; $7b1b: $77
    sbc b                                         ; $7b1c: $98
    adc b                                         ; $7b1d: $88
    ld d, a                                       ; $7b1e: $57
    add a                                         ; $7b1f: $87
    add a                                         ; $7b20: $87
    halt                                          ; $7b21: $76
    ld h, a                                       ; $7b22: $67
    ld h, a                                       ; $7b23: $67
    adc b                                         ; $7b24: $88
    adc b                                         ; $7b25: $88
    adc b                                         ; $7b26: $88
    sbc c                                         ; $7b27: $99
    ld [hl], a                                    ; $7b28: $77
    ld h, [hl]                                    ; $7b29: $66
    ld a, b                                       ; $7b2a: $78
    sbc b                                         ; $7b2b: $98
    adc c                                         ; $7b2c: $89
    sbc d                                         ; $7b2d: $9a
    sbc b                                         ; $7b2e: $98
    add a                                         ; $7b2f: $87
    sbc b                                         ; $7b30: $98
    ld h, l                                       ; $7b31: $65
    ld a, c                                       ; $7b32: $79
    adc c                                         ; $7b33: $89
    sbc c                                         ; $7b34: $99
    adc b                                         ; $7b35: $88
    adc b                                         ; $7b36: $88
    sbc b                                         ; $7b37: $98
    add a                                         ; $7b38: $87
    ld a, b                                       ; $7b39: $78
    sbc b                                         ; $7b3a: $98
    add [hl]                                      ; $7b3b: $86
    ld l, b                                       ; $7b3c: $68
    ld [hl], a                                    ; $7b3d: $77
    ld a, b                                       ; $7b3e: $78
    add a                                         ; $7b3f: $87
    adc b                                         ; $7b40: $88
    add [hl]                                      ; $7b41: $86
    ld a, b                                       ; $7b42: $78
    ld a, b                                       ; $7b43: $78
    halt                                          ; $7b44: $76
    ld a, b                                       ; $7b45: $78
    ld [hl], l                                    ; $7b46: $75
    ld a, b                                       ; $7b47: $78
    add a                                         ; $7b48: $87
    ld a, c                                       ; $7b49: $79
    sbc b                                         ; $7b4a: $98
    add a                                         ; $7b4b: $87
    ld a, b                                       ; $7b4c: $78
    add a                                         ; $7b4d: $87
    halt                                          ; $7b4e: $76
    ld l, b                                       ; $7b4f: $68
    adc b                                         ; $7b50: $88
    add a                                         ; $7b51: $87
    ld h, [hl]                                    ; $7b52: $66
    adc c                                         ; $7b53: $89
    adc b                                         ; $7b54: $88
    ld a, c                                       ; $7b55: $79
    sbc b                                         ; $7b56: $98
    sbc b                                         ; $7b57: $98
    ld a, b                                       ; $7b58: $78
    adc b                                         ; $7b59: $88
    add a                                         ; $7b5a: $87
    ld h, l                                       ; $7b5b: $65
    ld e, b                                       ; $7b5c: $58
    adc c                                         ; $7b5d: $89
    add a                                         ; $7b5e: $87
    ld h, [hl]                                    ; $7b5f: $66
    sub a                                         ; $7b60: $97
    ld [hl], a                                    ; $7b61: $77
    add a                                         ; $7b62: $87
    ld h, a                                       ; $7b63: $67
    add a                                         ; $7b64: $87
    adc b                                         ; $7b65: $88
    adc b                                         ; $7b66: $88
    add a                                         ; $7b67: $87
    sbc b                                         ; $7b68: $98
    ld h, [hl]                                    ; $7b69: $66
    ld a, c                                       ; $7b6a: $79
    add a                                         ; $7b6b: $87
    add a                                         ; $7b6c: $87
    ld a, c                                       ; $7b6d: $79
    sub a                                         ; $7b6e: $97
    ld [hl], a                                    ; $7b6f: $77
    adc b                                         ; $7b70: $88
    add a                                         ; $7b71: $87
    ld [hl], a                                    ; $7b72: $77
    adc b                                         ; $7b73: $88
    ld [hl], a                                    ; $7b74: $77
    ld d, [hl]                                    ; $7b75: $56
    adc b                                         ; $7b76: $88
    halt                                          ; $7b77: $76
    adc c                                         ; $7b78: $89
    adc b                                         ; $7b79: $88
    add [hl]                                      ; $7b7a: $86
    ld a, b                                       ; $7b7b: $78
    adc b                                         ; $7b7c: $88
    adc b                                         ; $7b7d: $88
    adc b                                         ; $7b7e: $88
    ld [hl], a                                    ; $7b7f: $77
    adc b                                         ; $7b80: $88
    ld [hl], a                                    ; $7b81: $77
    adc c                                         ; $7b82: $89
    adc b                                         ; $7b83: $88
    ld [hl], a                                    ; $7b84: $77
    ld a, b                                       ; $7b85: $78

Jump_012_7b86:
    sbc c                                         ; $7b86: $99
    ld a, b                                       ; $7b87: $78
    add a                                         ; $7b88: $87
    ld h, a                                       ; $7b89: $67
    ld a, b                                       ; $7b8a: $78
    halt                                          ; $7b8b: $76
    ld h, a                                       ; $7b8c: $67
    ld [hl], a                                    ; $7b8d: $77
    ld h, [hl]                                    ; $7b8e: $66
    adc b                                         ; $7b8f: $88
    adc b                                         ; $7b90: $88
    ld [hl], a                                    ; $7b91: $77
    add a                                         ; $7b92: $87
    adc c                                         ; $7b93: $89
    ld [hl], a                                    ; $7b94: $77
    add a                                         ; $7b95: $87
    ld a, b                                       ; $7b96: $78
    sbc b                                         ; $7b97: $98
    halt                                          ; $7b98: $76
    ld h, [hl]                                    ; $7b99: $66
    ld a, b                                       ; $7b9a: $78
    adc c                                         ; $7b9b: $89
    add a                                         ; $7b9c: $87
    add a                                         ; $7b9d: $87
    adc c                                         ; $7b9e: $89
    ld [hl], a                                    ; $7b9f: $77
    adc b                                         ; $7ba0: $88
    sub a                                         ; $7ba1: $97
    adc b                                         ; $7ba2: $88
    ld [hl], a                                    ; $7ba3: $77
    ld h, [hl]                                    ; $7ba4: $66
    ld a, b                                       ; $7ba5: $78
    add a                                         ; $7ba6: $87
    ld a, c                                       ; $7ba7: $79
    add a                                         ; $7ba8: $87
    adc b                                         ; $7ba9: $88
    halt                                          ; $7baa: $76
    ld h, a                                       ; $7bab: $67
    adc c                                         ; $7bac: $89
    adc b                                         ; $7bad: $88
    adc b                                         ; $7bae: $88
    adc c                                         ; $7baf: $89
    add l                                         ; $7bb0: $85
    ld h, [hl]                                    ; $7bb1: $66
    adc b                                         ; $7bb2: $88
    ld a, c                                       ; $7bb3: $79
    adc b                                         ; $7bb4: $88
    adc b                                         ; $7bb5: $88
    sbc b                                         ; $7bb6: $98
    adc b                                         ; $7bb7: $88
    ld a, b                                       ; $7bb8: $78
    add a                                         ; $7bb9: $87
    ld l, b                                       ; $7bba: $68
    ld [hl], a                                    ; $7bbb: $77
    add a                                         ; $7bbc: $87
    ld [hl], a                                    ; $7bbd: $77
    adc c                                         ; $7bbe: $89
    adc b                                         ; $7bbf: $88
    add a                                         ; $7bc0: $87
    ld [hl], a                                    ; $7bc1: $77
    adc c                                         ; $7bc2: $89
    add a                                         ; $7bc3: $87
    adc b                                         ; $7bc4: $88
    add a                                         ; $7bc5: $87
    ld a, b                                       ; $7bc6: $78
    adc b                                         ; $7bc7: $88
    sbc b                                         ; $7bc8: $98
    ld a, b                                       ; $7bc9: $78
    ld h, a                                       ; $7bca: $67
    ld a, b                                       ; $7bcb: $78
    sub a                                         ; $7bcc: $97
    ld a, b                                       ; $7bcd: $78
    ld [hl], a                                    ; $7bce: $77
    ld a, b                                       ; $7bcf: $78
    add a                                         ; $7bd0: $87
    ld a, b                                       ; $7bd1: $78
    ld [hl], a                                    ; $7bd2: $77
    adc b                                         ; $7bd3: $88
    adc b                                         ; $7bd4: $88
    ld [hl], a                                    ; $7bd5: $77
    ld [hl], a                                    ; $7bd6: $77
    adc b                                         ; $7bd7: $88
    ld [hl], a                                    ; $7bd8: $77
    adc c                                         ; $7bd9: $89
    ld [hl], a                                    ; $7bda: $77
    ld a, b                                       ; $7bdb: $78
    adc b                                         ; $7bdc: $88
    sbc c                                         ; $7bdd: $99
    add a                                         ; $7bde: $87
    ld a, b                                       ; $7bdf: $78
    add a                                         ; $7be0: $87
    ld [hl], a                                    ; $7be1: $77
    ld [hl], a                                    ; $7be2: $77
    ld [hl], a                                    ; $7be3: $77
    ld [hl], a                                    ; $7be4: $77
    ld [hl], a                                    ; $7be5: $77
    ld a, b                                       ; $7be6: $78
    ld [hl], a                                    ; $7be7: $77
    adc b                                         ; $7be8: $88
    adc b                                         ; $7be9: $88
    ld [hl], a                                    ; $7bea: $77
    add a                                         ; $7beb: $87
    add a                                         ; $7bec: $87
    ld a, b                                       ; $7bed: $78
    halt                                          ; $7bee: $76
    ld a, c                                       ; $7bef: $79
    adc b                                         ; $7bf0: $88
    sbc b                                         ; $7bf1: $98
    ld a, b                                       ; $7bf2: $78
    adc b                                         ; $7bf3: $88
    add a                                         ; $7bf4: $87
    add a                                         ; $7bf5: $87
    ld [hl], a                                    ; $7bf6: $77
    ld a, b                                       ; $7bf7: $78
    halt                                          ; $7bf8: $76
    ld [hl], a                                    ; $7bf9: $77
    ld [hl], a                                    ; $7bfa: $77
    adc b                                         ; $7bfb: $88
    ld [hl], a                                    ; $7bfc: $77
    adc b                                         ; $7bfd: $88
    adc b                                         ; $7bfe: $88
    adc b                                         ; $7bff: $88
    sbc b                                         ; $7c00: $98
    ld [hl], a                                    ; $7c01: $77
    ld h, a                                       ; $7c02: $67
    add a                                         ; $7c03: $87
    ld [hl], a                                    ; $7c04: $77
    ld h, [hl]                                    ; $7c05: $66
    adc b                                         ; $7c06: $88
    ld a, b                                       ; $7c07: $78
    add a                                         ; $7c08: $87
    adc b                                         ; $7c09: $88
    adc b                                         ; $7c0a: $88
    adc b                                         ; $7c0b: $88
    ld [hl], a                                    ; $7c0c: $77
    adc b                                         ; $7c0d: $88
    add a                                         ; $7c0e: $87
    ld h, a                                       ; $7c0f: $67
    add a                                         ; $7c10: $87
    sbc b                                         ; $7c11: $98
    ld h, l                                       ; $7c12: $65
    ld l, b                                       ; $7c13: $68
    adc b                                         ; $7c14: $88
    adc b                                         ; $7c15: $88
    add a                                         ; $7c16: $87
    adc c                                         ; $7c17: $89
    ld [hl], a                                    ; $7c18: $77
    ld a, b                                       ; $7c19: $78
    adc b                                         ; $7c1a: $88
    ld [hl], a                                    ; $7c1b: $77
    ld [hl], a                                    ; $7c1c: $77
    adc b                                         ; $7c1d: $88
    add a                                         ; $7c1e: $87
    add a                                         ; $7c1f: $87
    adc b                                         ; $7c20: $88
    add [hl]                                      ; $7c21: $86
    halt                                          ; $7c22: $76
    add a                                         ; $7c23: $87
    add a                                         ; $7c24: $87
    ld h, a                                       ; $7c25: $67
    ld a, b                                       ; $7c26: $78
    adc b                                         ; $7c27: $88
    add [hl]                                      ; $7c28: $86
    ld l, b                                       ; $7c29: $68
    add a                                         ; $7c2a: $87
    add a                                         ; $7c2b: $87
    ld a, b                                       ; $7c2c: $78
    sbc c                                         ; $7c2d: $99
    add a                                         ; $7c2e: $87
    adc b                                         ; $7c2f: $88
    adc b                                         ; $7c30: $88
    add a                                         ; $7c31: $87
    ld h, a                                       ; $7c32: $67
    ld a, b                                       ; $7c33: $78
    ld h, a                                       ; $7c34: $67
    ld a, b                                       ; $7c35: $78
    ld a, b                                       ; $7c36: $78
    adc b                                         ; $7c37: $88
    adc b                                         ; $7c38: $88
    adc b                                         ; $7c39: $88
    halt                                          ; $7c3a: $76
    ld a, b                                       ; $7c3b: $78
    ld [hl], a                                    ; $7c3c: $77
    ld [hl], a                                    ; $7c3d: $77
    ld [hl], a                                    ; $7c3e: $77
    adc b                                         ; $7c3f: $88
    add a                                         ; $7c40: $87
    adc b                                         ; $7c41: $88
    ld [hl], a                                    ; $7c42: $77
    ld a, b                                       ; $7c43: $78
    sbc b                                         ; $7c44: $98
    ld a, b                                       ; $7c45: $78
    ld [hl], a                                    ; $7c46: $77
    ld a, c                                       ; $7c47: $79
    add a                                         ; $7c48: $87
    adc b                                         ; $7c49: $88
    ld [hl], a                                    ; $7c4a: $77
    ld a, b                                       ; $7c4b: $78
    ld [hl], a                                    ; $7c4c: $77
    adc b                                         ; $7c4d: $88
    adc b                                         ; $7c4e: $88
    adc c                                         ; $7c4f: $89
    sbc b                                         ; $7c50: $98
    add a                                         ; $7c51: $87
    ld h, a                                       ; $7c52: $67
    ld [hl], a                                    ; $7c53: $77
    ld h, a                                       ; $7c54: $67
    halt                                          ; $7c55: $76
    ld l, b                                       ; $7c56: $68
    add a                                         ; $7c57: $87
    ld [hl], a                                    ; $7c58: $77
    ld [hl], a                                    ; $7c59: $77
    adc b                                         ; $7c5a: $88
    add a                                         ; $7c5b: $87
    add a                                         ; $7c5c: $87
    adc b                                         ; $7c5d: $88
    adc b                                         ; $7c5e: $88
    ld a, b                                       ; $7c5f: $78
    adc b                                         ; $7c60: $88
    ld [hl], a                                    ; $7c61: $77
    ld a, b                                       ; $7c62: $78
    adc b                                         ; $7c63: $88
    ld [hl], a                                    ; $7c64: $77
    adc b                                         ; $7c65: $88
    adc b                                         ; $7c66: $88
    sbc b                                         ; $7c67: $98
    adc b                                         ; $7c68: $88
    add a                                         ; $7c69: $87
    ld [hl], a                                    ; $7c6a: $77
    ld [hl], a                                    ; $7c6b: $77
    add a                                         ; $7c6c: $87
    ld [hl], a                                    ; $7c6d: $77
    adc b                                         ; $7c6e: $88
    ld [hl], a                                    ; $7c6f: $77
    ld h, a                                       ; $7c70: $67
    adc b                                         ; $7c71: $88
    ld a, b                                       ; $7c72: $78
    adc b                                         ; $7c73: $88
    adc b                                         ; $7c74: $88
    add a                                         ; $7c75: $87
    ld [hl], a                                    ; $7c76: $77
    ld [hl], a                                    ; $7c77: $77
    adc b                                         ; $7c78: $88
    adc b                                         ; $7c79: $88
    adc b                                         ; $7c7a: $88
    add [hl]                                      ; $7c7b: $86
    ld a, b                                       ; $7c7c: $78
    adc b                                         ; $7c7d: $88
    add a                                         ; $7c7e: $87
    ld a, b                                       ; $7c7f: $78
    adc b                                         ; $7c80: $88
    add a                                         ; $7c81: $87
    adc b                                         ; $7c82: $88
    adc b                                         ; $7c83: $88
    adc b                                         ; $7c84: $88
    add a                                         ; $7c85: $87
    ld [hl], a                                    ; $7c86: $77
    ld [hl], a                                    ; $7c87: $77
    ld [hl], a                                    ; $7c88: $77
    adc b                                         ; $7c89: $88
    ld [hl], a                                    ; $7c8a: $77
    ld [hl], a                                    ; $7c8b: $77
    ld [hl], a                                    ; $7c8c: $77
    adc b                                         ; $7c8d: $88
    ld [hl], a                                    ; $7c8e: $77
    ld [hl], a                                    ; $7c8f: $77
    sbc c                                         ; $7c90: $99
    adc b                                         ; $7c91: $88
    ld [hl], a                                    ; $7c92: $77
    ld [hl], a                                    ; $7c93: $77
    adc b                                         ; $7c94: $88
    ld [hl], a                                    ; $7c95: $77
    ld a, b                                       ; $7c96: $78
    ld a, b                                       ; $7c97: $78
    adc b                                         ; $7c98: $88
    ld a, b                                       ; $7c99: $78
    adc b                                         ; $7c9a: $88
    add a                                         ; $7c9b: $87
    add a                                         ; $7c9c: $87
    ld [hl], a                                    ; $7c9d: $77
    adc b                                         ; $7c9e: $88
    ld [hl], a                                    ; $7c9f: $77
    add a                                         ; $7ca0: $87
    adc b                                         ; $7ca1: $88
    ld a, b                                       ; $7ca2: $78
    adc b                                         ; $7ca3: $88
    adc b                                         ; $7ca4: $88
    add a                                         ; $7ca5: $87
    ld a, b                                       ; $7ca6: $78
    ld [hl], a                                    ; $7ca7: $77
    ld [hl], a                                    ; $7ca8: $77
    ld a, b                                       ; $7ca9: $78
    add a                                         ; $7caa: $87
    ld a, b                                       ; $7cab: $78
    add a                                         ; $7cac: $87
    ld [hl], a                                    ; $7cad: $77
    ld a, b                                       ; $7cae: $78
    ld a, b                                       ; $7caf: $78
    adc b                                         ; $7cb0: $88
    ld [hl], a                                    ; $7cb1: $77
    adc b                                         ; $7cb2: $88
    add a                                         ; $7cb3: $87
    adc b                                         ; $7cb4: $88
    add a                                         ; $7cb5: $87
    ld [hl], a                                    ; $7cb6: $77
    ld a, b                                       ; $7cb7: $78
    ld [hl], a                                    ; $7cb8: $77
    ld [hl], a                                    ; $7cb9: $77
    ld [hl], a                                    ; $7cba: $77
    ld [hl], a                                    ; $7cbb: $77
    adc b                                         ; $7cbc: $88
    ld [hl], a                                    ; $7cbd: $77
    add a                                         ; $7cbe: $87
    adc b                                         ; $7cbf: $88
    adc b                                         ; $7cc0: $88
    add a                                         ; $7cc1: $87
    ld [hl], a                                    ; $7cc2: $77
    ld [hl], a                                    ; $7cc3: $77
    ld a, b                                       ; $7cc4: $78
    add a                                         ; $7cc5: $87
    ld [hl], a                                    ; $7cc6: $77
    adc b                                         ; $7cc7: $88
    add a                                         ; $7cc8: $87
    adc b                                         ; $7cc9: $88
    add a                                         ; $7cca: $87
    ld a, b                                       ; $7ccb: $78
    add a                                         ; $7ccc: $87
    ld [hl], a                                    ; $7ccd: $77
    ld [hl], a                                    ; $7cce: $77
    ld [hl], a                                    ; $7ccf: $77
    adc b                                         ; $7cd0: $88
    adc b                                         ; $7cd1: $88
    ld [hl], a                                    ; $7cd2: $77
    adc b                                         ; $7cd3: $88
    add a                                         ; $7cd4: $87
    adc b                                         ; $7cd5: $88
    ld [hl], a                                    ; $7cd6: $77
    add a                                         ; $7cd7: $87
    ld [hl], a                                    ; $7cd8: $77
    ld [hl], a                                    ; $7cd9: $77
    ld [hl], a                                    ; $7cda: $77
    adc b                                         ; $7cdb: $88
    add a                                         ; $7cdc: $87
    ld [hl], a                                    ; $7cdd: $77
    adc b                                         ; $7cde: $88
    add a                                         ; $7cdf: $87
    adc b                                         ; $7ce0: $88
    add a                                         ; $7ce1: $87
    adc b                                         ; $7ce2: $88
    ld [hl], a                                    ; $7ce3: $77
    adc b                                         ; $7ce4: $88
    ld a, b                                       ; $7ce5: $78
    add a                                         ; $7ce6: $87
    add a                                         ; $7ce7: $87
    adc b                                         ; $7ce8: $88
    ld [hl], a                                    ; $7ce9: $77
    add a                                         ; $7cea: $87
    ld a, b                                       ; $7ceb: $78
    adc b                                         ; $7cec: $88
    ld [hl], a                                    ; $7ced: $77
    adc b                                         ; $7cee: $88
    adc b                                         ; $7cef: $88
    add a                                         ; $7cf0: $87
    ld a, b                                       ; $7cf1: $78
    add a                                         ; $7cf2: $87
    ld a, b                                       ; $7cf3: $78
    add a                                         ; $7cf4: $87
    ld [hl], a                                    ; $7cf5: $77
    adc b                                         ; $7cf6: $88
    ld a, b                                       ; $7cf7: $78
    adc b                                         ; $7cf8: $88
    ld [hl], a                                    ; $7cf9: $77
    adc b                                         ; $7cfa: $88
    add a                                         ; $7cfb: $87
    ld [hl], a                                    ; $7cfc: $77
    adc b                                         ; $7cfd: $88
    ld a, b                                       ; $7cfe: $78
    adc b                                         ; $7cff: $88
    adc b                                         ; $7d00: $88
    adc b                                         ; $7d01: $88
    ld [hl], a                                    ; $7d02: $77
    ld a, b                                       ; $7d03: $78
    adc b                                         ; $7d04: $88
    ld a, b                                       ; $7d05: $78
    ld [hl], a                                    ; $7d06: $77
    ld [hl], a                                    ; $7d07: $77
    adc b                                         ; $7d08: $88
    ld [hl], a                                    ; $7d09: $77
    adc b                                         ; $7d0a: $88
    adc b                                         ; $7d0b: $88
    adc b                                         ; $7d0c: $88
    ld a, b                                       ; $7d0d: $78
    add a                                         ; $7d0e: $87
    adc b                                         ; $7d0f: $88
    add a                                         ; $7d10: $87
    adc b                                         ; $7d11: $88
    add a                                         ; $7d12: $87
    ld a, b                                       ; $7d13: $78
    add a                                         ; $7d14: $87
    adc b                                         ; $7d15: $88
    add a                                         ; $7d16: $87
    adc b                                         ; $7d17: $88
    ld a, b                                       ; $7d18: $78
    ld [hl], a                                    ; $7d19: $77
    ld [hl], a                                    ; $7d1a: $77
    add a                                         ; $7d1b: $87
    ld [hl], a                                    ; $7d1c: $77
    add a                                         ; $7d1d: $87
    add a                                         ; $7d1e: $87
    adc b                                         ; $7d1f: $88
    adc b                                         ; $7d20: $88
    adc b                                         ; $7d21: $88
    adc b                                         ; $7d22: $88
    add a                                         ; $7d23: $87
    ld [hl], a                                    ; $7d24: $77
    ld [hl], a                                    ; $7d25: $77
    ld a, b                                       ; $7d26: $78
    add a                                         ; $7d27: $87
    adc b                                         ; $7d28: $88
    adc b                                         ; $7d29: $88
    adc b                                         ; $7d2a: $88
    adc b                                         ; $7d2b: $88
    add a                                         ; $7d2c: $87
    ld a, b                                       ; $7d2d: $78
    ld a, b                                       ; $7d2e: $78
    add a                                         ; $7d2f: $87
    add a                                         ; $7d30: $87
    add a                                         ; $7d31: $87
    adc b                                         ; $7d32: $88
    add a                                         ; $7d33: $87
    adc b                                         ; $7d34: $88
    adc b                                         ; $7d35: $88
    ld [hl], a                                    ; $7d36: $77
    ld a, b                                       ; $7d37: $78
    adc b                                         ; $7d38: $88
    add a                                         ; $7d39: $87
    ld [hl], a                                    ; $7d3a: $77
    adc b                                         ; $7d3b: $88
    adc b                                         ; $7d3c: $88
    ld [hl], a                                    ; $7d3d: $77
    ld [hl], a                                    ; $7d3e: $77
    ld [hl], a                                    ; $7d3f: $77
    adc b                                         ; $7d40: $88
    adc b                                         ; $7d41: $88
    add a                                         ; $7d42: $87
    ld a, b                                       ; $7d43: $78
    adc b                                         ; $7d44: $88
    ld [hl], a                                    ; $7d45: $77
    ld a, b                                       ; $7d46: $78
    ld [hl], a                                    ; $7d47: $77
    ld [hl], a                                    ; $7d48: $77
    ld [hl], a                                    ; $7d49: $77
    adc b                                         ; $7d4a: $88
    adc b                                         ; $7d4b: $88
    adc b                                         ; $7d4c: $88
    adc b                                         ; $7d4d: $88
    ld [hl], a                                    ; $7d4e: $77
    ld a, b                                       ; $7d4f: $78
    add a                                         ; $7d50: $87
    ld [hl], a                                    ; $7d51: $77
    ld [hl], a                                    ; $7d52: $77
    ld [hl], a                                    ; $7d53: $77
    ld [hl], a                                    ; $7d54: $77
    ld [hl], a                                    ; $7d55: $77
    adc b                                         ; $7d56: $88
    adc b                                         ; $7d57: $88
    adc b                                         ; $7d58: $88
    ld [hl], a                                    ; $7d59: $77
    adc b                                         ; $7d5a: $88
    ld [hl], a                                    ; $7d5b: $77
    add a                                         ; $7d5c: $87
    ld a, b                                       ; $7d5d: $78
    add a                                         ; $7d5e: $87
    ld a, b                                       ; $7d5f: $78
    add a                                         ; $7d60: $87
    ld a, b                                       ; $7d61: $78
    adc b                                         ; $7d62: $88
    ld [hl], a                                    ; $7d63: $77
    add a                                         ; $7d64: $87
    ld [hl], a                                    ; $7d65: $77
    ld a, b                                       ; $7d66: $78
    ld [hl], a                                    ; $7d67: $77
    ld [hl], a                                    ; $7d68: $77
    add a                                         ; $7d69: $87
    add a                                         ; $7d6a: $87
    add a                                         ; $7d6b: $87
    ld a, b                                       ; $7d6c: $78
    adc b                                         ; $7d6d: $88
    ld a, b                                       ; $7d6e: $78
    add a                                         ; $7d6f: $87
    add a                                         ; $7d70: $87
    ld [hl], a                                    ; $7d71: $77
    ld [hl], a                                    ; $7d72: $77
    ld [hl], a                                    ; $7d73: $77
    ld a, b                                       ; $7d74: $78
    ld a, b                                       ; $7d75: $78
    adc b                                         ; $7d76: $88
    adc b                                         ; $7d77: $88
    ld a, b                                       ; $7d78: $78
    ld [hl], a                                    ; $7d79: $77
    ld [hl], a                                    ; $7d7a: $77
    ld [hl], a                                    ; $7d7b: $77
    ld [hl], a                                    ; $7d7c: $77
    adc b                                         ; $7d7d: $88
    adc b                                         ; $7d7e: $88
    ld [hl], a                                    ; $7d7f: $77
    adc b                                         ; $7d80: $88
    add a                                         ; $7d81: $87
    ld [hl], a                                    ; $7d82: $77
    ld [hl], a                                    ; $7d83: $77
    adc b                                         ; $7d84: $88
    ld [hl], a                                    ; $7d85: $77
    ld [hl], a                                    ; $7d86: $77
    ld [hl], a                                    ; $7d87: $77
    ld [hl], a                                    ; $7d88: $77
    ld [hl], a                                    ; $7d89: $77
    ld a, b                                       ; $7d8a: $78
    adc b                                         ; $7d8b: $88
    adc b                                         ; $7d8c: $88
    ld a, b                                       ; $7d8d: $78
    adc b                                         ; $7d8e: $88
    ld [hl], a                                    ; $7d8f: $77
    add a                                         ; $7d90: $87
    adc b                                         ; $7d91: $88
    adc b                                         ; $7d92: $88
    ld [hl], a                                    ; $7d93: $77
    ld [hl], a                                    ; $7d94: $77
    ld [hl], a                                    ; $7d95: $77
    ld [hl], a                                    ; $7d96: $77
    adc b                                         ; $7d97: $88
    add a                                         ; $7d98: $87
    ld [hl], a                                    ; $7d99: $77
    ld [hl], a                                    ; $7d9a: $77
    adc b                                         ; $7d9b: $88
    add a                                         ; $7d9c: $87
    ld [hl], a                                    ; $7d9d: $77
    ld [hl], a                                    ; $7d9e: $77
    ld [hl], a                                    ; $7d9f: $77
    adc b                                         ; $7da0: $88
    ld [hl], a                                    ; $7da1: $77
    adc b                                         ; $7da2: $88
    add a                                         ; $7da3: $87
    adc b                                         ; $7da4: $88
    add a                                         ; $7da5: $87
    add a                                         ; $7da6: $87
    add a                                         ; $7da7: $87
    add a                                         ; $7da8: $87
    ld [hl], a                                    ; $7da9: $77
    ld a, b                                       ; $7daa: $78
    adc b                                         ; $7dab: $88
    ld [hl], a                                    ; $7dac: $77
    ld a, b                                       ; $7dad: $78
    adc b                                         ; $7dae: $88
    adc b                                         ; $7daf: $88
    adc b                                         ; $7db0: $88
    adc b                                         ; $7db1: $88
    ld [hl], a                                    ; $7db2: $77
    ld [hl], a                                    ; $7db3: $77
    ld [hl], a                                    ; $7db4: $77
    ld [hl], a                                    ; $7db5: $77
    ld [hl], a                                    ; $7db6: $77
    adc b                                         ; $7db7: $88
    adc b                                         ; $7db8: $88
    adc b                                         ; $7db9: $88
    adc b                                         ; $7dba: $88
    adc b                                         ; $7dbb: $88
    adc b                                         ; $7dbc: $88
    add a                                         ; $7dbd: $87
    ld a, b                                       ; $7dbe: $78
    ld [hl], a                                    ; $7dbf: $77
    add a                                         ; $7dc0: $87
    ld a, b                                       ; $7dc1: $78
    adc b                                         ; $7dc2: $88
    adc b                                         ; $7dc3: $88
    add a                                         ; $7dc4: $87
    ld [hl], a                                    ; $7dc5: $77
    ld [hl], a                                    ; $7dc6: $77
    add a                                         ; $7dc7: $87
    ld a, b                                       ; $7dc8: $78
    adc b                                         ; $7dc9: $88
    ld [hl], a                                    ; $7dca: $77
    ld [hl], a                                    ; $7dcb: $77
    add a                                         ; $7dcc: $87
    ld a, b                                       ; $7dcd: $78
    add a                                         ; $7dce: $87
    ld a, b                                       ; $7dcf: $78
    adc b                                         ; $7dd0: $88
    adc b                                         ; $7dd1: $88
    add a                                         ; $7dd2: $87
    add a                                         ; $7dd3: $87
    ld a, b                                       ; $7dd4: $78
    add a                                         ; $7dd5: $87
    ld a, b                                       ; $7dd6: $78
    adc b                                         ; $7dd7: $88
    ld [hl], a                                    ; $7dd8: $77
    adc b                                         ; $7dd9: $88
    ld a, b                                       ; $7dda: $78
    adc b                                         ; $7ddb: $88
    adc b                                         ; $7ddc: $88
    ld [hl], a                                    ; $7ddd: $77
    ld [hl], a                                    ; $7dde: $77
    ld [hl], a                                    ; $7ddf: $77
    add a                                         ; $7de0: $87
    ld a, b                                       ; $7de1: $78
    add a                                         ; $7de2: $87
    ld a, b                                       ; $7de3: $78
    adc b                                         ; $7de4: $88
    adc b                                         ; $7de5: $88
    adc b                                         ; $7de6: $88
    adc b                                         ; $7de7: $88
    adc b                                         ; $7de8: $88
    ld a, b                                       ; $7de9: $78
    ld [hl], a                                    ; $7dea: $77
    ld a, b                                       ; $7deb: $78
    ld a, b                                       ; $7dec: $78
    add a                                         ; $7ded: $87
    ld [hl], a                                    ; $7dee: $77
    ld a, b                                       ; $7def: $78
    adc b                                         ; $7df0: $88
    ld a, b                                       ; $7df1: $78
    ld [hl], a                                    ; $7df2: $77
    ld a, b                                       ; $7df3: $78
    add a                                         ; $7df4: $87
    adc b                                         ; $7df5: $88
    adc b                                         ; $7df6: $88
    add a                                         ; $7df7: $87
    ld [hl], a                                    ; $7df8: $77
    ld [hl], a                                    ; $7df9: $77
    ld [hl], a                                    ; $7dfa: $77
    ld a, b                                       ; $7dfb: $78
    adc b                                         ; $7dfc: $88
    adc b                                         ; $7dfd: $88
    adc b                                         ; $7dfe: $88
    add a                                         ; $7dff: $87
    add a                                         ; $7e00: $87
    ld [hl], a                                    ; $7e01: $77
    adc b                                         ; $7e02: $88
    ld [hl], a                                    ; $7e03: $77
    adc b                                         ; $7e04: $88
    add a                                         ; $7e05: $87
    add a                                         ; $7e06: $87
    ld [hl], a                                    ; $7e07: $77
    ld a, b                                       ; $7e08: $78
    ld [hl], a                                    ; $7e09: $77
    ld [hl], a                                    ; $7e0a: $77
    ld [hl], a                                    ; $7e0b: $77
    ld [hl], a                                    ; $7e0c: $77
    adc b                                         ; $7e0d: $88
    adc b                                         ; $7e0e: $88
    adc b                                         ; $7e0f: $88
    adc b                                         ; $7e10: $88
    adc b                                         ; $7e11: $88
    adc b                                         ; $7e12: $88
    ld a, b                                       ; $7e13: $78
    adc b                                         ; $7e14: $88
    ld a, b                                       ; $7e15: $78
    add a                                         ; $7e16: $87
    ld [hl], a                                    ; $7e17: $77
    ld a, b                                       ; $7e18: $78
    ld [hl], a                                    ; $7e19: $77
    ld a, b                                       ; $7e1a: $78
    add a                                         ; $7e1b: $87
    ld a, b                                       ; $7e1c: $78
    add a                                         ; $7e1d: $87
    adc b                                         ; $7e1e: $88
    ld a, b                                       ; $7e1f: $78
    adc b                                         ; $7e20: $88
    ld a, b                                       ; $7e21: $78
    add a                                         ; $7e22: $87
    ld [hl], a                                    ; $7e23: $77
    add a                                         ; $7e24: $87
    ld [hl], a                                    ; $7e25: $77
    ld a, b                                       ; $7e26: $78
    ld [hl], a                                    ; $7e27: $77
    ld [hl], a                                    ; $7e28: $77
    ld [hl], a                                    ; $7e29: $77
    adc b                                         ; $7e2a: $88
    adc b                                         ; $7e2b: $88
    adc b                                         ; $7e2c: $88
    adc b                                         ; $7e2d: $88
    adc b                                         ; $7e2e: $88
    ld [hl], a                                    ; $7e2f: $77
    add a                                         ; $7e30: $87
    ld [hl], a                                    ; $7e31: $77
    ld a, b                                       ; $7e32: $78
    ld [hl], a                                    ; $7e33: $77
    adc b                                         ; $7e34: $88
    ld a, b                                       ; $7e35: $78
    ld [hl], a                                    ; $7e36: $77
    adc b                                         ; $7e37: $88
    adc b                                         ; $7e38: $88
    adc b                                         ; $7e39: $88
    add a                                         ; $7e3a: $87
    ld [hl], a                                    ; $7e3b: $77
    ld [hl], a                                    ; $7e3c: $77
    ld a, b                                       ; $7e3d: $78
    add a                                         ; $7e3e: $87
    adc b                                         ; $7e3f: $88
    adc b                                         ; $7e40: $88
    adc b                                         ; $7e41: $88
    adc b                                         ; $7e42: $88
    ld [hl], a                                    ; $7e43: $77
    ld [hl], a                                    ; $7e44: $77
    ld [hl], a                                    ; $7e45: $77
    add a                                         ; $7e46: $87
    ld [hl], a                                    ; $7e47: $77
    ld [hl], a                                    ; $7e48: $77
    adc b                                         ; $7e49: $88
    adc b                                         ; $7e4a: $88
    adc b                                         ; $7e4b: $88
    adc b                                         ; $7e4c: $88
    adc b                                         ; $7e4d: $88
    ld a, b                                       ; $7e4e: $78
    add a                                         ; $7e4f: $87
    add a                                         ; $7e50: $87
    ld [hl], a                                    ; $7e51: $77
    ld [hl], a                                    ; $7e52: $77
    ld [hl], a                                    ; $7e53: $77
    adc b                                         ; $7e54: $88
    ld [hl], a                                    ; $7e55: $77
    adc b                                         ; $7e56: $88
    adc b                                         ; $7e57: $88
    adc b                                         ; $7e58: $88
    adc b                                         ; $7e59: $88
    ld [hl], a                                    ; $7e5a: $77
    ld [hl], a                                    ; $7e5b: $77
    ld [hl], a                                    ; $7e5c: $77
    adc b                                         ; $7e5d: $88
    add a                                         ; $7e5e: $87
    adc b                                         ; $7e5f: $88
    adc b                                         ; $7e60: $88
    adc b                                         ; $7e61: $88
    add a                                         ; $7e62: $87
    add a                                         ; $7e63: $87
    add a                                         ; $7e64: $87
    ld [hl], a                                    ; $7e65: $77
    ld [hl], a                                    ; $7e66: $77
    ld [hl], a                                    ; $7e67: $77
    ld a, b                                       ; $7e68: $78
    adc b                                         ; $7e69: $88
    adc b                                         ; $7e6a: $88
    adc b                                         ; $7e6b: $88
    ld a, b                                       ; $7e6c: $78
    adc b                                         ; $7e6d: $88
    adc b                                         ; $7e6e: $88
    adc b                                         ; $7e6f: $88
    adc b                                         ; $7e70: $88
    add a                                         ; $7e71: $87
    add a                                         ; $7e72: $87
    ld a, b                                       ; $7e73: $78
    add a                                         ; $7e74: $87
    ld a, b                                       ; $7e75: $78
    add a                                         ; $7e76: $87
    ld a, b                                       ; $7e77: $78
    adc b                                         ; $7e78: $88
    adc b                                         ; $7e79: $88
    add a                                         ; $7e7a: $87
    ld a, b                                       ; $7e7b: $78
    ld a, b                                       ; $7e7c: $78
    adc b                                         ; $7e7d: $88
    ld [hl], a                                    ; $7e7e: $77
    ld [hl], a                                    ; $7e7f: $77
    adc b                                         ; $7e80: $88
    add a                                         ; $7e81: $87
    ld a, b                                       ; $7e82: $78
    adc b                                         ; $7e83: $88
    add a                                         ; $7e84: $87
    ld [hl], a                                    ; $7e85: $77
    ld a, b                                       ; $7e86: $78
    ld [hl], a                                    ; $7e87: $77
    ld [hl], a                                    ; $7e88: $77
    ld a, b                                       ; $7e89: $78
    adc b                                         ; $7e8a: $88
    adc b                                         ; $7e8b: $88
    adc b                                         ; $7e8c: $88
    adc b                                         ; $7e8d: $88
    add a                                         ; $7e8e: $87
    ld a, b                                       ; $7e8f: $78
    adc b                                         ; $7e90: $88
    adc b                                         ; $7e91: $88
    adc b                                         ; $7e92: $88
    adc b                                         ; $7e93: $88
    ld [hl], a                                    ; $7e94: $77
    ld [hl], a                                    ; $7e95: $77
    ld [hl], a                                    ; $7e96: $77
    ld [hl], a                                    ; $7e97: $77
    ld a, b                                       ; $7e98: $78
    ld [hl], a                                    ; $7e99: $77
    adc b                                         ; $7e9a: $88
    adc b                                         ; $7e9b: $88
    ld [hl], a                                    ; $7e9c: $77
    ld [hl], a                                    ; $7e9d: $77
    adc b                                         ; $7e9e: $88
    add a                                         ; $7e9f: $87
    add a                                         ; $7ea0: $87
    adc b                                         ; $7ea1: $88
    adc b                                         ; $7ea2: $88
    add a                                         ; $7ea3: $87
    add a                                         ; $7ea4: $87
    ld [hl], a                                    ; $7ea5: $77
    ld a, b                                       ; $7ea6: $78
    ld a, b                                       ; $7ea7: $78
    ld [hl], a                                    ; $7ea8: $77
    ld a, b                                       ; $7ea9: $78
    add a                                         ; $7eaa: $87
    ld [hl], a                                    ; $7eab: $77
    adc b                                         ; $7eac: $88
    adc b                                         ; $7ead: $88
    adc b                                         ; $7eae: $88
    ld [hl], a                                    ; $7eaf: $77
    add a                                         ; $7eb0: $87
    ld [hl], a                                    ; $7eb1: $77
    ld a, b                                       ; $7eb2: $78
    adc b                                         ; $7eb3: $88
    add a                                         ; $7eb4: $87
    ld [hl], a                                    ; $7eb5: $77
    ld a, b                                       ; $7eb6: $78
    adc b                                         ; $7eb7: $88
    adc b                                         ; $7eb8: $88
    adc b                                         ; $7eb9: $88
    adc b                                         ; $7eba: $88
    ld [hl], a                                    ; $7ebb: $77
    ld [hl], a                                    ; $7ebc: $77
    adc b                                         ; $7ebd: $88
    adc b                                         ; $7ebe: $88
    adc b                                         ; $7ebf: $88
    adc b                                         ; $7ec0: $88
    adc b                                         ; $7ec1: $88
    add a                                         ; $7ec2: $87
    ld a, b                                       ; $7ec3: $78
    add a                                         ; $7ec4: $87
    ld [hl], a                                    ; $7ec5: $77
    ld [hl], a                                    ; $7ec6: $77
    ld [hl], a                                    ; $7ec7: $77
    ld [hl], a                                    ; $7ec8: $77
    ld a, b                                       ; $7ec9: $78
    adc b                                         ; $7eca: $88
    adc b                                         ; $7ecb: $88
    adc b                                         ; $7ecc: $88
    ld [hl], a                                    ; $7ecd: $77
    add a                                         ; $7ece: $87
    ld a, b                                       ; $7ecf: $78
    add a                                         ; $7ed0: $87
    adc b                                         ; $7ed1: $88
    adc b                                         ; $7ed2: $88
    ld [hl], a                                    ; $7ed3: $77
    ld [hl], a                                    ; $7ed4: $77
    adc b                                         ; $7ed5: $88
    add a                                         ; $7ed6: $87
    ld a, b                                       ; $7ed7: $78
    adc b                                         ; $7ed8: $88
    add a                                         ; $7ed9: $87
    ld [hl], a                                    ; $7eda: $77
    ld [hl], a                                    ; $7edb: $77
    add a                                         ; $7edc: $87
    ld a, b                                       ; $7edd: $78
    ld a, b                                       ; $7ede: $78
    adc b                                         ; $7edf: $88
    adc b                                         ; $7ee0: $88
    adc b                                         ; $7ee1: $88
    ld a, b                                       ; $7ee2: $78
    add a                                         ; $7ee3: $87
    ld a, b                                       ; $7ee4: $78
    add a                                         ; $7ee5: $87
    ld [hl], a                                    ; $7ee6: $77
    adc b                                         ; $7ee7: $88
    adc b                                         ; $7ee8: $88
    ld [hl], a                                    ; $7ee9: $77
    add a                                         ; $7eea: $87
    adc b                                         ; $7eeb: $88
    ld a, b                                       ; $7eec: $78
    adc b                                         ; $7eed: $88
    adc b                                         ; $7eee: $88
    ld [hl], a                                    ; $7eef: $77
    adc b                                         ; $7ef0: $88
    adc b                                         ; $7ef1: $88
    ld [hl], a                                    ; $7ef2: $77
    adc b                                         ; $7ef3: $88
    adc b                                         ; $7ef4: $88
    adc b                                         ; $7ef5: $88
    add a                                         ; $7ef6: $87
    ld a, b                                       ; $7ef7: $78
    adc b                                         ; $7ef8: $88
    ld [hl], a                                    ; $7ef9: $77
    ld a, b                                       ; $7efa: $78
    add a                                         ; $7efb: $87
    ld [hl], a                                    ; $7efc: $77
    ld [hl], a                                    ; $7efd: $77
    ld [hl], a                                    ; $7efe: $77
    add a                                         ; $7eff: $87
    adc b                                         ; $7f00: $88
    adc b                                         ; $7f01: $88
    adc b                                         ; $7f02: $88
    add a                                         ; $7f03: $87
    ld [hl], a                                    ; $7f04: $77
    adc b                                         ; $7f05: $88
    ld a, b                                       ; $7f06: $78
    ld a, b                                       ; $7f07: $78
    add a                                         ; $7f08: $87
    adc b                                         ; $7f09: $88
    adc b                                         ; $7f0a: $88
    ld a, b                                       ; $7f0b: $78
    add a                                         ; $7f0c: $87
    ld [hl], a                                    ; $7f0d: $77
    ld [hl], a                                    ; $7f0e: $77
    ld [hl], a                                    ; $7f0f: $77
    add a                                         ; $7f10: $87
    ld [hl], a                                    ; $7f11: $77
    ld a, b                                       ; $7f12: $78
    adc b                                         ; $7f13: $88
    ld [hl], a                                    ; $7f14: $77
    ld [hl], a                                    ; $7f15: $77
    add a                                         ; $7f16: $87
    ld a, b                                       ; $7f17: $78
    adc b                                         ; $7f18: $88
    adc b                                         ; $7f19: $88
    adc b                                         ; $7f1a: $88
    adc b                                         ; $7f1b: $88
    ld [hl], a                                    ; $7f1c: $77
    ld a, b                                       ; $7f1d: $78
    adc b                                         ; $7f1e: $88
    ld [hl], a                                    ; $7f1f: $77
    adc b                                         ; $7f20: $88
    ld a, b                                       ; $7f21: $78
    adc b                                         ; $7f22: $88
    ld [hl], a                                    ; $7f23: $77
    ld [hl], a                                    ; $7f24: $77
    ld a, b                                       ; $7f25: $78
    adc b                                         ; $7f26: $88
    adc b                                         ; $7f27: $88
    adc b                                         ; $7f28: $88
    adc b                                         ; $7f29: $88
    adc b                                         ; $7f2a: $88
    add a                                         ; $7f2b: $87
    add a                                         ; $7f2c: $87
    ld [hl], a                                    ; $7f2d: $77
    ld [hl], a                                    ; $7f2e: $77
    ld [hl], a                                    ; $7f2f: $77
    add a                                         ; $7f30: $87
    adc b                                         ; $7f31: $88
    adc b                                         ; $7f32: $88
    adc b                                         ; $7f33: $88
    adc b                                         ; $7f34: $88
    adc b                                         ; $7f35: $88
    adc b                                         ; $7f36: $88
    adc b                                         ; $7f37: $88
    add a                                         ; $7f38: $87
    ld [hl], a                                    ; $7f39: $77
    adc b                                         ; $7f3a: $88
    add a                                         ; $7f3b: $87
    ld a, b                                       ; $7f3c: $78
    adc b                                         ; $7f3d: $88
    add a                                         ; $7f3e: $87
    ld [hl], a                                    ; $7f3f: $77
    add a                                         ; $7f40: $87
    ld a, b                                       ; $7f41: $78
    ld a, b                                       ; $7f42: $78
    ld a, b                                       ; $7f43: $78
    adc b                                         ; $7f44: $88
    add a                                         ; $7f45: $87
    adc b                                         ; $7f46: $88
    ld [hl], a                                    ; $7f47: $77
    adc b                                         ; $7f48: $88
    add a                                         ; $7f49: $87
    ld [hl], a                                    ; $7f4a: $77
    adc b                                         ; $7f4b: $88
    adc b                                         ; $7f4c: $88
    adc b                                         ; $7f4d: $88
    ld a, b                                       ; $7f4e: $78
    adc b                                         ; $7f4f: $88
    add a                                         ; $7f50: $87
    ld [hl], a                                    ; $7f51: $77
    ld [hl], a                                    ; $7f52: $77
    ld a, b                                       ; $7f53: $78
    adc b                                         ; $7f54: $88
    adc b                                         ; $7f55: $88
    add a                                         ; $7f56: $87
    ld a, b                                       ; $7f57: $78
    add a                                         ; $7f58: $87
    add a                                         ; $7f59: $87
    ld [hl], a                                    ; $7f5a: $77
    ld a, b                                       ; $7f5b: $78
    adc b                                         ; $7f5c: $88
    adc b                                         ; $7f5d: $88
    adc b                                         ; $7f5e: $88
    adc b                                         ; $7f5f: $88
    adc b                                         ; $7f60: $88
    ld [hl], a                                    ; $7f61: $77
    ld [hl], a                                    ; $7f62: $77
    ld a, b                                       ; $7f63: $78
    adc b                                         ; $7f64: $88
    adc b                                         ; $7f65: $88
    add a                                         ; $7f66: $87
    ld a, b                                       ; $7f67: $78
    add a                                         ; $7f68: $87
    ld a, b                                       ; $7f69: $78
    add a                                         ; $7f6a: $87
    add a                                         ; $7f6b: $87
    ld [hl], a                                    ; $7f6c: $77
    ld a, b                                       ; $7f6d: $78
    add a                                         ; $7f6e: $87
    ld [hl], a                                    ; $7f6f: $77
    add a                                         ; $7f70: $87
    ld [hl], a                                    ; $7f71: $77
    add a                                         ; $7f72: $87
    ld a, b                                       ; $7f73: $78
    adc b                                         ; $7f74: $88
    adc b                                         ; $7f75: $88
    adc b                                         ; $7f76: $88
    adc b                                         ; $7f77: $88
    add a                                         ; $7f78: $87
    ld [hl], a                                    ; $7f79: $77
    ld a, b                                       ; $7f7a: $78
    adc b                                         ; $7f7b: $88
    adc b                                         ; $7f7c: $88
    adc b                                         ; $7f7d: $88
    adc b                                         ; $7f7e: $88
    ld a, b                                       ; $7f7f: $78
    adc b                                         ; $7f80: $88
    ld a, b                                       ; $7f81: $78
    add a                                         ; $7f82: $87
    ld [hl], a                                    ; $7f83: $77
    ld [hl], a                                    ; $7f84: $77
    ld a, b                                       ; $7f85: $78
    adc b                                         ; $7f86: $88
    adc b                                         ; $7f87: $88
    ld a, b                                       ; $7f88: $78
    add a                                         ; $7f89: $87
    ld a, b                                       ; $7f8a: $78
    adc b                                         ; $7f8b: $88
    add a                                         ; $7f8c: $87
    add a                                         ; $7f8d: $87
    ld [hl], a                                    ; $7f8e: $77
    ld [hl], a                                    ; $7f8f: $77
    add a                                         ; $7f90: $87
    adc b                                         ; $7f91: $88
    ld [hl], a                                    ; $7f92: $77
    ld [hl], a                                    ; $7f93: $77
    ld [hl], a                                    ; $7f94: $77
    adc b                                         ; $7f95: $88
    add a                                         ; $7f96: $87
    adc b                                         ; $7f97: $88
    add a                                         ; $7f98: $87
    ld a, b                                       ; $7f99: $78
    adc b                                         ; $7f9a: $88
    adc b                                         ; $7f9b: $88
    adc b                                         ; $7f9c: $88
    ld a, b                                       ; $7f9d: $78
    adc b                                         ; $7f9e: $88
    adc b                                         ; $7f9f: $88
    adc b                                         ; $7fa0: $88
    adc b                                         ; $7fa1: $88
    add a                                         ; $7fa2: $87
    add a                                         ; $7fa3: $87
    ld [hl], a                                    ; $7fa4: $77
    adc b                                         ; $7fa5: $88
    ld a, b                                       ; $7fa6: $78
    adc b                                         ; $7fa7: $88
    add a                                         ; $7fa8: $87
    ld [hl], a                                    ; $7fa9: $77
    ld [hl], a                                    ; $7faa: $77
    adc b                                         ; $7fab: $88
    ld a, b                                       ; $7fac: $78
    adc b                                         ; $7fad: $88
    ld [hl], a                                    ; $7fae: $77
    adc b                                         ; $7faf: $88
    add a                                         ; $7fb0: $87
    ld [hl], a                                    ; $7fb1: $77
    add a                                         ; $7fb2: $87
    ld [hl], a                                    ; $7fb3: $77
    adc b                                         ; $7fb4: $88
    ld a, b                                       ; $7fb5: $78
    ld [hl], a                                    ; $7fb6: $77
    ld a, b                                       ; $7fb7: $78
    adc b                                         ; $7fb8: $88
    add a                                         ; $7fb9: $87
    ld [hl], a                                    ; $7fba: $77
    adc b                                         ; $7fbb: $88
    ld [hl], a                                    ; $7fbc: $77
    ld [hl], a                                    ; $7fbd: $77
    ld a, b                                       ; $7fbe: $78
    ld [hl], a                                    ; $7fbf: $77
    add a                                         ; $7fc0: $87
    ld [hl], a                                    ; $7fc1: $77
    ld [hl], a                                    ; $7fc2: $77
    ld a, b                                       ; $7fc3: $78
    adc b                                         ; $7fc4: $88
    adc b                                         ; $7fc5: $88
    ld [hl], a                                    ; $7fc6: $77
    ld a, b                                       ; $7fc7: $78
    ld [hl], a                                    ; $7fc8: $77
    ld a, b                                       ; $7fc9: $78
    adc b                                         ; $7fca: $88
    adc b                                         ; $7fcb: $88
    adc b                                         ; $7fcc: $88
    adc b                                         ; $7fcd: $88
    adc b                                         ; $7fce: $88
    add a                                         ; $7fcf: $87
    adc b                                         ; $7fd0: $88
    add a                                         ; $7fd1: $87
    ld [hl], a                                    ; $7fd2: $77
    ld [hl], a                                    ; $7fd3: $77
    ld [hl], a                                    ; $7fd4: $77
    ld [hl], a                                    ; $7fd5: $77
    ld a, b                                       ; $7fd6: $78
    adc b                                         ; $7fd7: $88
    ld a, b                                       ; $7fd8: $78
    add a                                         ; $7fd9: $87
    adc b                                         ; $7fda: $88
    add a                                         ; $7fdb: $87
    adc b                                         ; $7fdc: $88
    add a                                         ; $7fdd: $87
    ld a, b                                       ; $7fde: $78
    add a                                         ; $7fdf: $87
    add a                                         ; $7fe0: $87
    ld [hl], a                                    ; $7fe1: $77
    adc b                                         ; $7fe2: $88
    add a                                         ; $7fe3: $87
    ld a, b                                       ; $7fe4: $78
    adc b                                         ; $7fe5: $88
    ld [hl], a                                    ; $7fe6: $77
    ld [hl], a                                    ; $7fe7: $77
    adc b                                         ; $7fe8: $88
    add a                                         ; $7fe9: $87
    ld [hl], a                                    ; $7fea: $77
    ld a, b                                       ; $7feb: $78
    adc b                                         ; $7fec: $88
    adc b                                         ; $7fed: $88
    ld a, b                                       ; $7fee: $78
    adc b                                         ; $7fef: $88
    adc b                                         ; $7ff0: $88
    ld [hl], a                                    ; $7ff1: $77
    ld [hl], a                                    ; $7ff2: $77
    ld [hl], a                                    ; $7ff3: $77
    ld [hl], a                                    ; $7ff4: $77
    ld a, b                                       ; $7ff5: $78
    add a                                         ; $7ff6: $87
    adc b                                         ; $7ff7: $88
    adc b                                         ; $7ff8: $88
    add a                                         ; $7ff9: $87
    adc b                                         ; $7ffa: $88
    adc b                                         ; $7ffb: $88
    adc b                                         ; $7ffc: $88
    ld [hl], a                                    ; $7ffd: $77
    ld a, b                                       ; $7ffe: $78
    adc b                                         ; $7fff: $88
