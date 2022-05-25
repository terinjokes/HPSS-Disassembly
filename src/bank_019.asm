; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    db $87

    ld [hl], a                                    ; $4001: $77
    ld [hl], a                                    ; $4002: $77
    adc b                                         ; $4003: $88
    adc b                                         ; $4004: $88
    add a                                         ; $4005: $87
    ld [hl], a                                    ; $4006: $77
    ld [hl], a                                    ; $4007: $77
    ld a, b                                       ; $4008: $78
    adc b                                         ; $4009: $88
    adc b                                         ; $400a: $88
    ld [hl], a                                    ; $400b: $77
    ld [hl], a                                    ; $400c: $77
    ld a, b                                       ; $400d: $78
    adc b                                         ; $400e: $88
    ld [hl], a                                    ; $400f: $77
    adc b                                         ; $4010: $88
    add a                                         ; $4011: $87
    ld [hl], a                                    ; $4012: $77
    adc b                                         ; $4013: $88
    ld [hl], a                                    ; $4014: $77
    ld [hl], a                                    ; $4015: $77
    ld [hl], a                                    ; $4016: $77
    adc b                                         ; $4017: $88
    adc b                                         ; $4018: $88
    adc b                                         ; $4019: $88
    ld [hl], a                                    ; $401a: $77
    ld [hl], a                                    ; $401b: $77
    ld a, b                                       ; $401c: $78
    add a                                         ; $401d: $87
    ld a, b                                       ; $401e: $78
    adc b                                         ; $401f: $88
    add a                                         ; $4020: $87
    ld a, b                                       ; $4021: $78
    add a                                         ; $4022: $87
    ld [hl], a                                    ; $4023: $77
    adc b                                         ; $4024: $88
    add a                                         ; $4025: $87
    adc b                                         ; $4026: $88
    add a                                         ; $4027: $87
    ld [hl], a                                    ; $4028: $77
    adc b                                         ; $4029: $88
    add a                                         ; $402a: $87
    adc b                                         ; $402b: $88
    add a                                         ; $402c: $87
    ld [hl], a                                    ; $402d: $77
    adc b                                         ; $402e: $88
    adc b                                         ; $402f: $88
    adc b                                         ; $4030: $88
    ld [hl], a                                    ; $4031: $77
    ld [hl], a                                    ; $4032: $77
    ld [hl], a                                    ; $4033: $77
    ld a, b                                       ; $4034: $78
    adc b                                         ; $4035: $88
    add a                                         ; $4036: $87
    ld [hl], a                                    ; $4037: $77
    ld [hl], a                                    ; $4038: $77
    ld [hl], a                                    ; $4039: $77
    adc b                                         ; $403a: $88
    adc b                                         ; $403b: $88
    adc b                                         ; $403c: $88
    adc b                                         ; $403d: $88
    adc b                                         ; $403e: $88
    add a                                         ; $403f: $87
    adc b                                         ; $4040: $88
    adc b                                         ; $4041: $88
    adc b                                         ; $4042: $88
    adc b                                         ; $4043: $88
    ld [hl], a                                    ; $4044: $77
    ld [hl], a                                    ; $4045: $77
    adc b                                         ; $4046: $88
    adc b                                         ; $4047: $88
    adc b                                         ; $4048: $88
    ld [hl], a                                    ; $4049: $77
    ld [hl], a                                    ; $404a: $77
    adc b                                         ; $404b: $88
    ld [hl], a                                    ; $404c: $77
    adc b                                         ; $404d: $88
    add a                                         ; $404e: $87
    ld [hl], a                                    ; $404f: $77
    adc b                                         ; $4050: $88
    adc b                                         ; $4051: $88
    adc b                                         ; $4052: $88
    adc b                                         ; $4053: $88
    ld [hl], a                                    ; $4054: $77
    add a                                         ; $4055: $87
    ld [hl], a                                    ; $4056: $77
    ld a, b                                       ; $4057: $78
    adc b                                         ; $4058: $88
    adc b                                         ; $4059: $88
    adc b                                         ; $405a: $88
    add a                                         ; $405b: $87
    ld [hl], a                                    ; $405c: $77
    adc b                                         ; $405d: $88
    adc b                                         ; $405e: $88
    adc b                                         ; $405f: $88
    add a                                         ; $4060: $87
    ld [hl], a                                    ; $4061: $77
    ld [hl], a                                    ; $4062: $77
    ld [hl], a                                    ; $4063: $77
    adc b                                         ; $4064: $88
    adc b                                         ; $4065: $88
    ld [hl], a                                    ; $4066: $77

Call_019_4067:
    ld [hl], a                                    ; $4067: $77
    ld [hl], a                                    ; $4068: $77
    adc b                                         ; $4069: $88
    adc b                                         ; $406a: $88
    adc b                                         ; $406b: $88
    ld [hl], a                                    ; $406c: $77
    ld [hl], a                                    ; $406d: $77
    ld [hl], a                                    ; $406e: $77
    adc b                                         ; $406f: $88
    adc b                                         ; $4070: $88
    add a                                         ; $4071: $87
    ld a, b                                       ; $4072: $78
    adc b                                         ; $4073: $88
    add a                                         ; $4074: $87
    ld a, b                                       ; $4075: $78
    add a                                         ; $4076: $87

Call_019_4077:
    ld [hl], a                                    ; $4077: $77
    adc b                                         ; $4078: $88
    ld [hl], a                                    ; $4079: $77
    ld a, b                                       ; $407a: $78
    adc b                                         ; $407b: $88
    ld a, b                                       ; $407c: $78
    adc b                                         ; $407d: $88
    ld [hl], a                                    ; $407e: $77
    adc b                                         ; $407f: $88
    add a                                         ; $4080: $87
    ld a, b                                       ; $4081: $78
    adc b                                         ; $4082: $88
    adc b                                         ; $4083: $88
    adc b                                         ; $4084: $88
    ld [hl], a                                    ; $4085: $77

Call_019_4086:
    ld [hl], a                                    ; $4086: $77
    ld [hl], a                                    ; $4087: $77
    ld [hl], a                                    ; $4088: $77
    ld a, b                                       ; $4089: $78
    adc b                                         ; $408a: $88
    adc b                                         ; $408b: $88
    adc b                                         ; $408c: $88
    adc b                                         ; $408d: $88
    add a                                         ; $408e: $87
    ld [hl], a                                    ; $408f: $77
    add a                                         ; $4090: $87
    ld [hl], a                                    ; $4091: $77
    ld [hl], a                                    ; $4092: $77
    ld [hl], a                                    ; $4093: $77
    ld [hl], a                                    ; $4094: $77
    adc b                                         ; $4095: $88
    adc b                                         ; $4096: $88
    add a                                         ; $4097: $87
    ld [hl], a                                    ; $4098: $77
    ld [hl], a                                    ; $4099: $77
    ld [hl], a                                    ; $409a: $77
    adc b                                         ; $409b: $88
    add a                                         ; $409c: $87
    ld [hl], a                                    ; $409d: $77
    adc b                                         ; $409e: $88
    ld [hl], a                                    ; $409f: $77
    adc b                                         ; $40a0: $88
    adc b                                         ; $40a1: $88
    adc b                                         ; $40a2: $88
    adc b                                         ; $40a3: $88
    ld [hl], a                                    ; $40a4: $77
    ld [hl], a                                    ; $40a5: $77
    ld a, b                                       ; $40a6: $78
    ld [hl], a                                    ; $40a7: $77
    ld a, b                                       ; $40a8: $78
    adc b                                         ; $40a9: $88
    ld [hl], a                                    ; $40aa: $77
    ld [hl], a                                    ; $40ab: $77
    ld [hl], a                                    ; $40ac: $77
    ld a, b                                       ; $40ad: $78
    adc b                                         ; $40ae: $88
    ld [hl], a                                    ; $40af: $77
    adc b                                         ; $40b0: $88
    ld [hl], a                                    ; $40b1: $77
    ld a, b                                       ; $40b2: $78
    add a                                         ; $40b3: $87
    ld a, b                                       ; $40b4: $78
    adc b                                         ; $40b5: $88
    add a                                         ; $40b6: $87
    ld [hl], a                                    ; $40b7: $77
    ld a, b                                       ; $40b8: $78
    adc b                                         ; $40b9: $88
    adc b                                         ; $40ba: $88
    ld [hl], a                                    ; $40bb: $77
    ld [hl], a                                    ; $40bc: $77
    add a                                         ; $40bd: $87
    ld [hl], a                                    ; $40be: $77
    adc b                                         ; $40bf: $88
    adc b                                         ; $40c0: $88
    add a                                         ; $40c1: $87
    ld [hl], a                                    ; $40c2: $77
    ld [hl], a                                    ; $40c3: $77
    adc b                                         ; $40c4: $88
    ld a, b                                       ; $40c5: $78
    ld a, b                                       ; $40c6: $78
    adc b                                         ; $40c7: $88
    adc b                                         ; $40c8: $88
    adc b                                         ; $40c9: $88
    ld [hl], a                                    ; $40ca: $77
    ld [hl], a                                    ; $40cb: $77
    add a                                         ; $40cc: $87
    ld a, b                                       ; $40cd: $78
    adc b                                         ; $40ce: $88
    adc b                                         ; $40cf: $88
    adc b                                         ; $40d0: $88
    adc b                                         ; $40d1: $88
    adc b                                         ; $40d2: $88
    adc b                                         ; $40d3: $88
    adc b                                         ; $40d4: $88
    adc b                                         ; $40d5: $88
    adc b                                         ; $40d6: $88
    adc b                                         ; $40d7: $88
    adc b                                         ; $40d8: $88
    adc b                                         ; $40d9: $88
    adc b                                         ; $40da: $88
    adc b                                         ; $40db: $88
    adc b                                         ; $40dc: $88
    adc b                                         ; $40dd: $88
    adc b                                         ; $40de: $88
    adc b                                         ; $40df: $88
    add a                                         ; $40e0: $87
    ld a, b                                       ; $40e1: $78
    adc b                                         ; $40e2: $88
    ld [hl], a                                    ; $40e3: $77
    adc b                                         ; $40e4: $88
    add a                                         ; $40e5: $87
    ld [hl], a                                    ; $40e6: $77
    ld [hl], a                                    ; $40e7: $77
    adc b                                         ; $40e8: $88
    ld [hl], a                                    ; $40e9: $77
    ld a, b                                       ; $40ea: $78
    adc b                                         ; $40eb: $88
    ld [hl], a                                    ; $40ec: $77
    add a                                         ; $40ed: $87
    ld [hl], a                                    ; $40ee: $77
    adc b                                         ; $40ef: $88
    add a                                         ; $40f0: $87
    ld a, b                                       ; $40f1: $78
    add a                                         ; $40f2: $87
    ld [hl], a                                    ; $40f3: $77
    ld [hl], a                                    ; $40f4: $77
    adc c                                         ; $40f5: $89
    add a                                         ; $40f6: $87
    ld l, b                                       ; $40f7: $68
    adc b                                         ; $40f8: $88
    ld [hl], a                                    ; $40f9: $77
    ld a, b                                       ; $40fa: $78
    adc b                                         ; $40fb: $88
    ld [hl], a                                    ; $40fc: $77
    ld a, b                                       ; $40fd: $78
    adc b                                         ; $40fe: $88
    ld [hl], a                                    ; $40ff: $77
    adc b                                         ; $4100: $88
    add a                                         ; $4101: $87
    ld a, b                                       ; $4102: $78
    adc b                                         ; $4103: $88
    ld [hl], a                                    ; $4104: $77
    ld a, b                                       ; $4105: $78
    sbc b                                         ; $4106: $98
    halt                                          ; $4107: $76
    ld a, c                                       ; $4108: $79
    add a                                         ; $4109: $87
    halt                                          ; $410a: $76
    adc c                                         ; $410b: $89
    sub a                                         ; $410c: $97
    ld h, a                                       ; $410d: $67
    adc b                                         ; $410e: $88
    ld [hl], a                                    ; $410f: $77
    ld h, a                                       ; $4110: $67
    sbc c                                         ; $4111: $99
    halt                                          ; $4112: $76
    ld a, c                                       ; $4113: $79
    sbc b                                         ; $4114: $98
    halt                                          ; $4115: $76
    ld a, c                                       ; $4116: $79
    xor b                                         ; $4117: $a8
    ld h, [hl]                                    ; $4118: $66
    adc c                                         ; $4119: $89
    add a                                         ; $411a: $87
    ld h, a                                       ; $411b: $67
    sbc c                                         ; $411c: $99
    halt                                          ; $411d: $76
    ld a, c                                       ; $411e: $79
    add a                                         ; $411f: $87
    ld h, [hl]                                    ; $4120: $66
    ld a, c                                       ; $4121: $79
    sub a                                         ; $4122: $97
    ld d, a                                       ; $4123: $57
    sbc c                                         ; $4124: $99
    halt                                          ; $4125: $76
    ld l, c                                       ; $4126: $69
    xor b                                         ; $4127: $a8
    ld h, [hl]                                    ; $4128: $66
    adc b                                         ; $4129: $88
    add a                                         ; $412a: $87
    ld h, a                                       ; $412b: $67
    sbc d                                         ; $412c: $9a
    ld [hl], l                                    ; $412d: $75
    ld a, c                                       ; $412e: $79
    add a                                         ; $412f: $87
    ld h, [hl]                                    ; $4130: $66
    adc d                                         ; $4131: $8a
    sub [hl]                                      ; $4132: $96
    ld e, b                                       ; $4133: $58
    sbc b                                         ; $4134: $98
    halt                                          ; $4135: $76
    ld a, c                                       ; $4136: $79
    and a                                         ; $4137: $a7
    ld d, a                                       ; $4138: $57
    sbc b                                         ; $4139: $98
    ld [hl], a                                    ; $413a: $77
    ld l, b                                       ; $413b: $68
    xor b                                         ; $413c: $a8
    ld d, [hl]                                    ; $413d: $56
    sbc c                                         ; $413e: $99
    ld [hl], a                                    ; $413f: $77
    ld h, a                                       ; $4140: $67
    xor c                                         ; $4141: $a9
    ld h, l                                       ; $4142: $65
    adc c                                         ; $4143: $89
    halt                                          ; $4144: $76
    ld h, a                                       ; $4145: $67
    xor d                                         ; $4146: $aa
    ld [hl], h                                    ; $4147: $74
    ld a, d                                       ; $4148: $7a
    sub a                                         ; $4149: $97
    ld h, [hl]                                    ; $414a: $66
    adc e                                         ; $414b: $8b
    sub h                                         ; $414c: $94
    ld e, c                                       ; $414d: $59
    and a                                         ; $414e: $a7
    ld h, l                                       ; $414f: $65
    adc e                                         ; $4150: $8b
    or [hl]                                       ; $4151: $b6
    scf                                           ; $4152: $37
    xor c                                         ; $4153: $a9
    ld [hl], l                                    ; $4154: $75
    ld e, c                                       ; $4155: $59
    ret                                           ; $4156: $c9


    dec [hl]                                      ; $4157: $35
    xor c                                         ; $4158: $a9
    add [hl]                                      ; $4159: $86
    ld d, a                                       ; $415a: $57
    bit 2, h                                      ; $415b: $cb $54
    adc d                                         ; $415d: $8a
    sub a                                         ; $415e: $97
    ld d, l                                       ; $415f: $55
    xor h                                         ; $4160: $ac
    ld [hl], e                                    ; $4161: $73
    ld a, d                                       ; $4162: $7a
    sub a                                         ; $4163: $97
    ld h, h                                       ; $4164: $64
    adc h                                         ; $4165: $8c
    sub h                                         ; $4166: $94
    ld c, c                                       ; $4167: $49
    xor b                                         ; $4168: $a8
    ld h, h                                       ; $4169: $64
    ld l, e                                       ; $416a: $6b
    add $37                                       ; $416b: $c6 $37
    cp c                                          ; $416d: $b9
    ld [hl], l                                    ; $416e: $75
    ld c, c                                       ; $416f: $49
    reti                                          ; $4170: $d9


    inc [hl]                                      ; $4171: $34
    sbc e                                         ; $4172: $9b
    add [hl]                                      ; $4173: $86
    ld b, l                                       ; $4174: $45
    cp l                                          ; $4175: $bd
    ld [hl], d                                    ; $4176: $72
    ld l, e                                       ; $4177: $6b
    cp b                                          ; $4178: $b8
    ld b, h                                       ; $4179: $44
    ld a, h                                       ; $417a: $7c
    push de                                       ; $417b: $d5
    ld d, $cc                                     ; $417c: $16 $cc
    ld [hl], e                                    ; $417e: $73
    ld c, b                                       ; $417f: $48
    call z, $5d50                                 ; $4180: $cc $50 $5d
    sub $24                                       ; $4183: $d6 $24
    sbc l                                         ; $4185: $9d
    push bc                                       ; $4186: $c5
    dec b                                         ; $4187: $05
    xor $61                                       ; $4188: $ee $61
    ld c, c                                       ; $418a: $49
    call c, Call_019_6e40                         ; $418b: $dc $40 $6e
    sub $14                                       ; $418e: $d6 $14
    xor l                                         ; $4190: $ad
    or h                                          ; $4191: $b4
    ld d, $ed                                     ; $4192: $16 $ed
    ld d, c                                       ; $4194: $51
    ld c, d                                       ; $4195: $4a

Call_019_4196:
    db $eb                                        ; $4196: $eb
    ld sp, $c48e                                  ; $4197: $31 $8e $c4
    dec d                                         ; $419a: $15
    cp [hl]                                       ; $419b: $be
    sub d                                         ; $419c: $92
    add hl, de                                    ; $419d: $19
    ei                                            ; $419e: $fb
    ld hl, $d88c                                  ; $419f: $21 $8c $d8
    ld [de], a                                    ; $41a2: $12
    xor a                                         ; $41a3: $af
    sub d                                         ; $41a4: $92
    daa                                           ; $41a5: $27
    call $3b71                                    ; $41a6: $cd $71 $3b
    add sp, $22                                   ; $41a9: $e8 $22
    adc l                                         ; $41ab: $8d
    sub $14                                       ; $41ac: $d6 $14
    adc $71                                       ; $41ae: $ce $71
    add hl, sp                                    ; $41b0: $39
    call c, $5d51                                 ; $41b1: $dc $51 $5d
    sub $14                                       ; $41b4: $d6 $14
    xor l                                         ; $41b6: $ad
    or h                                          ; $41b7: $b4
    ld d, $dd                                     ; $41b8: $16 $dd
    ld d, c                                       ; $41ba: $51
    ld e, d                                       ; $41bb: $5a
    jp c, Jump_019_6d41                           ; $41bc: $da $41 $6d

    and $04                                       ; $41bf: $e6 $04
    cp [hl]                                       ; $41c1: $be
    and e                                         ; $41c2: $a3
    daa                                           ; $41c3: $27
    call c, Call_019_4b61                         ; $41c4: $dc $61 $4b
    ld [$7e22], a                                 ; $41c7: $ea $22 $7e
    push bc                                       ; $41ca: $c5
    ld d, $cc                                     ; $41cb: $16 $cc
    add h                                         ; $41cd: $84
    ld b, a                                       ; $41ce: $47
    cp e                                          ; $41cf: $bb
    add h                                         ; $41d0: $84
    ld c, c                                       ; $41d1: $49
    xor d                                         ; $41d2: $aa
    ld [hl], l                                    ; $41d3: $75
    ld e, b                                       ; $41d4: $58
    cp d                                          ; $41d5: $ba
    ld h, e                                       ; $41d6: $63
    ld e, d                                       ; $41d7: $5a
    reti                                          ; $41d8: $d9


    ld [hl+], a                                   ; $41d9: $22

jr_019_41da:
    sbc a                                         ; $41da: $9f
    or d                                          ; $41db: $b2
    jr jr_019_41da                                ; $41dc: $18 $fc

    ld b, c                                       ; $41de: $41
    ld l, h                                       ; $41df: $6c
    ret c                                         ; $41e0: $d8

    inc hl                                        ; $41e1: $23
    sbc l                                         ; $41e2: $9d
    or h                                          ; $41e3: $b4
    ld d, $cd                                     ; $41e4: $16 $cd
    ld [hl], c                                    ; $41e6: $71
    dec sp                                        ; $41e7: $3b
    ld sp, hl                                     ; $41e8: $f9
    ld [de], a                                    ; $41e9: $12

jr_019_41ea:
    sbc a                                         ; $41ea: $9f
    or d                                          ; $41eb: $b2
    ld [$41ec], sp                                ; $41ec: $08 $ec $41
    ld l, h                                       ; $41ef: $6c
    ret z                                         ; $41f0: $c8

    inc hl                                        ; $41f1: $23
    sbc l                                         ; $41f2: $9d
    or h                                          ; $41f3: $b4
    daa                                           ; $41f4: $27
    call z, Call_000_3a71                         ; $41f5: $cc $71 $3a
    ld sp, hl                                     ; $41f8: $f9
    ld [de], a                                    ; $41f9: $12
    xor a                                         ; $41fa: $af
    or d                                          ; $41fb: $b2
    jr jr_019_41ea                                ; $41fc: $18 $ec

    ld sp, $c47e                                  ; $41fe: $31 $7e $c4
    ld d, $cd                                     ; $4201: $16 $cd
    ld h, c                                       ; $4203: $61
    ld e, l                                       ; $4204: $5d
    and $15                                       ; $4205: $e6 $15
    call Call_019_4b72                            ; $4207: $cd $72 $4b
    add sp, $13                                   ; $420a: $e8 $13
    cp a                                          ; $420c: $bf
    add b                                         ; $420d: $80
    ld c, e                                       ; $420e: $4b
    reti                                          ; $420f: $d9


    inc sp                                        ; $4210: $33
    sbc l                                         ; $4211: $9d
    or l                                          ; $4212: $b5
    ld h, $cc                                     ; $4213: $26 $cc
    ld [hl], c                                    ; $4215: $71
    ld c, e                                       ; $4216: $4b
    add sp, $13                                   ; $4217: $e8 $13
    cp a                                          ; $4219: $bf
    sub c                                         ; $421a: $91
    ld a, [hl+]                                   ; $421b: $2a
    ld a, [$9e21]                                 ; $421c: $fa $21 $9e
    or e                                          ; $421f: $b3
    rla                                           ; $4220: $17
    db $ec                                        ; $4221: $ec
    ld b, b                                       ; $4222: $40
    ld l, [hl]                                    ; $4223: $6e
    call nc, $dd16                                ; $4224: $d4 $16 $dd
    ld d, c                                       ; $4227: $51
    ld e, h                                       ; $4228: $5c
    and $15                                       ; $4229: $e6 $15
    call $4b71                                    ; $422b: $cd $71 $4b
    add sp, $23                                   ; $422e: $e8 $23
    xor l                                         ; $4230: $ad
    sub e                                         ; $4231: $93
    add hl, sp                                    ; $4232: $39
    bit 2, d                                      ; $4233: $cb $52
    ld l, h                                       ; $4235: $6c
    push de                                       ; $4236: $d5
    dec d                                         ; $4237: $15
    db $dd                                        ; $4238: $dd
    ld h, c                                       ; $4239: $61
    ld e, h                                       ; $423a: $5c
    and $04                                       ; $423b: $e6 $04
    sbc $60                                       ; $423d: $de $60
    ld e, e                                       ; $423f: $5b
    rst $20                                       ; $4240: $e7
    inc hl                                        ; $4241: $23
    cp a                                          ; $4242: $bf
    ld [hl], c                                    ; $4243: $71

jr_019_4244:
    ld c, h                                       ; $4244: $4c
    rst $20                                       ; $4245: $e7
    inc d                                         ; $4246: $14
    cp [hl]                                       ; $4247: $be
    add c                                         ; $4248: $81
    dec sp                                        ; $4249: $3b
    ld hl, sp+$14                                 ; $424a: $f8 $14
    adc $71                                       ; $424c: $ce $71
    ld c, h                                       ; $424e: $4c
    rst $20                                       ; $424f: $e7
    inc d                                         ; $4250: $14
    cp [hl]                                       ; $4251: $be
    add c                                         ; $4252: $81
    ld c, e                                       ; $4253: $4b
    rst $20                                       ; $4254: $e7
    dec b                                         ; $4255: $05
    cp [hl]                                       ; $4256: $be
    ld [hl], d                                    ; $4257: $72
    dec sp                                        ; $4258: $3b
    add sp, $13                                   ; $4259: $e8 $13
    cp [hl]                                       ; $425b: $be
    add c                                         ; $425c: $81
    dec sp                                        ; $425d: $3b
    add sp, $14                                   ; $425e: $e8 $14
    cp [hl]                                       ; $4260: $be
    ld [hl], c                                    ; $4261: $71
    ld c, h                                       ; $4262: $4c
    rst $10                                       ; $4263: $d7
    dec d                                         ; $4264: $15
    call z, Call_019_7b62                         ; $4265: $cc $62 $7b
    or [hl]                                       ; $4268: $b6
    ld b, [hl]                                    ; $4269: $46
    xor e                                         ; $426a: $ab
    ld [hl], e                                    ; $426b: $73
    ld e, d                                       ; $426c: $5a
    rst $00                                       ; $426d: $c7
    dec [hl]                                      ; $426e: $35
    cp h                                          ; $426f: $bc
    add d                                         ; $4270: $82
    ld l, e                                       ; $4271: $6b
    push bc                                       ; $4272: $c5
    ld h, $cc                                     ; $4273: $26 $cc
    ld d, d                                       ; $4275: $52
    ld a, l                                       ; $4276: $7d
    or h                                          ; $4277: $b4
    jr c, jr_019_4244                             ; $4278: $38 $ca

    ld d, e                                       ; $427a: $53
    ld a, h                                       ; $427b: $7c
    and h                                         ; $427c: $a4
    add hl, hl                                    ; $427d: $29
    jp hl                                         ; $427e: $e9


    inc hl                                        ; $427f: $23
    xor l                                         ; $4280: $ad
    add d                                         ; $4281: $82
    dec sp                                        ; $4282: $3b
    add sp, $04                                   ; $4283: $e8 $04
    sbc $50                                       ; $4285: $de $50
    ld l, [hl]                                    ; $4287: $6e
    call nc, $dc17                                ; $4288: $d4 $17 $dc
    ld b, c                                       ; $428b: $41
    ld a, [hl]                                    ; $428c: $7e
    jp $fb18                                      ; $428d: $c3 $18 $fb


    ld hl, $a29f                                  ; $4290: $21 $9f $a2
    ld a, [hl+]                                   ; $4293: $2a
    ld sp, hl                                     ; $4294: $f9
    inc de                                        ; $4295: $13
    cp [hl]                                       ; $4296: $be
    ld [hl], c                                    ; $4297: $71

jr_019_4298:
    ld e, h                                       ; $4298: $5c
    rst $10                                       ; $4299: $d7
    dec h                                         ; $429a: $25
    cp l                                          ; $429b: $bd
    ld [hl], d                                    ; $429c: $72
    ld e, e                                       ; $429d: $5b
    rst $10                                       ; $429e: $d7
    dec h                                         ; $429f: $25
    cp l                                          ; $42a0: $bd
    ld h, d                                       ; $42a1: $62
    ld e, h                                       ; $42a2: $5c
    push de                                       ; $42a3: $d5
    ld d, $db                                     ; $42a4: $16 $db
    ld b, d                                       ; $42a6: $42
    adc [hl]                                      ; $42a7: $8e
    and d                                         ; $42a8: $a2
    ld a, [hl-]                                   ; $42a9: $3a
    ret c                                         ; $42aa: $d8

    inc [hl]                                      ; $42ab: $34

jr_019_42ac:
    xor h                                         ; $42ac: $ac
    add d                                         ; $42ad: $82
    ld c, e                                       ; $42ae: $4b
    sub $16                                       ; $42af: $d6 $16
    call c, $8e41                                 ; $42b1: $dc $41 $8e
    and d                                         ; $42b4: $a2
    ld a, [hl+]                                   ; $42b5: $2a
    add sp, $14                                   ; $42b6: $e8 $14
    db $dd                                        ; $42b8: $dd
    ld d, c                                       ; $42b9: $51
    ld a, l                                       ; $42ba: $7d
    or h                                          ; $42bb: $b4
    jr z, jr_019_4298                             ; $42bc: $28 $da

    inc sp                                        ; $42be: $33
    xor l                                         ; $42bf: $ad
    add d                                         ; $42c0: $82
    ld e, h                                       ; $42c1: $5c
    push bc                                       ; $42c2: $c5
    rla                                           ; $42c3: $17
    db $db                                        ; $42c4: $db
    ld [hl-], a                                   ; $42c5: $32
    xor [hl]                                      ; $42c6: $ae
    add c                                         ; $42c7: $81
    ld c, l                                       ; $42c8: $4d
    call nc, $db17                                ; $42c9: $d4 $17 $db
    ld b, e                                       ; $42cc: $43
    ld a, l                                       ; $42cd: $7d
    or h                                          ; $42ce: $b4
    jr z, jr_019_42ac                             ; $42cf: $28 $db

    ld [hl-], a                                   ; $42d1: $32
    adc [hl]                                      ; $42d2: $8e
    and e                                         ; $42d3: $a3
    add hl, hl                                    ; $42d4: $29
    jp hl                                         ; $42d5: $e9


    ld [de], a                                    ; $42d6: $12
    cp a                                          ; $42d7: $bf
    ld h, b                                       ; $42d8: $60
    ld e, [hl]                                    ; $42d9: $5e
    jp $f81a                                      ; $42da: $c3 $1a $f8


    inc d                                         ; $42dd: $14
    call Call_019_6c61                            ; $42de: $cd $61 $6c
    push bc                                       ; $42e1: $c5
    ld d, $dc                                     ; $42e2: $16 $dc
    ld b, c                                       ; $42e4: $41
    adc [hl]                                      ; $42e5: $8e
    or d                                          ; $42e6: $b2
    ld a, [hl+]                                   ; $42e7: $2a
    ld sp, hl                                     ; $42e8: $f9
    inc de                                        ; $42e9: $13
    adc $70                                       ; $42ea: $ce $70
    ld e, [hl]                                    ; $42ec: $5e
    call nc, $f909                                ; $42ed: $d4 $09 $f9
    inc de                                        ; $42f0: $13
    call $7d61                                    ; $42f1: $cd $61 $7d
    or h                                          ; $42f4: $b4
    add hl, hl                                    ; $42f5: $29
    jp hl                                         ; $42f6: $e9


    inc h                                         ; $42f7: $24
    call $8d52                                    ; $42f8: $cd $52 $8d
    sub e                                         ; $42fb: $93
    ld c, d                                       ; $42fc: $4a
    rst $00                                       ; $42fd: $c7
    dec h                                         ; $42fe: $25
    bit 0, d                                      ; $42ff: $cb $42
    sbc l                                         ; $4301: $9d
    add e                                         ; $4302: $83
    ld e, e                                       ; $4303: $5b
    add $27                                       ; $4304: $c6 $27
    jp z, $9d43                                   ; $4306: $ca $43 $9d

    add d                                         ; $4309: $82
    ld e, h                                       ; $430a: $5c
    or l                                          ; $430b: $b5
    add hl, sp                                    ; $430c: $39
    ret c                                         ; $430d: $d8

    dec h                                         ; $430e: $25
    bit 0, e                                      ; $430f: $cb $43
    sbc h                                         ; $4311: $9c
    add e                                         ; $4312: $83
    ld l, d                                       ; $4313: $6a
    or [hl]                                       ; $4314: $b6
    scf                                           ; $4315: $37
    cp e                                          ; $4316: $bb
    ld d, h                                       ; $4317: $54
    ld a, e                                       ; $4318: $7b
    or [hl]                                       ; $4319: $b6
    ld b, [hl]                                    ; $431a: $46
    cp e                                          ; $431b: $bb
    ld h, e                                       ; $431c: $63
    ld a, h                                       ; $431d: $7c
    or l                                          ; $431e: $b5
    daa                                           ; $431f: $27
    db $db                                        ; $4320: $db
    ld [hl-], a                                   ; $4321: $32
    sbc [hl]                                      ; $4322: $9e
    sub d                                         ; $4323: $92
    ld c, e                                       ; $4324: $4b
    rst $10                                       ; $4325: $d7
    dec d                                         ; $4326: $15
    call c, $9f41                                 ; $4327: $dc $41 $9f
    sub c                                         ; $432a: $91
    ld c, h                                       ; $432b: $4c
    push bc                                       ; $432c: $c5
    jr z, @-$34                                   ; $432d: $28 $ca

    ld d, e                                       ; $432f: $53
    adc h                                         ; $4330: $8c
    sub h                                         ; $4331: $94
    ld c, c                                       ; $4332: $49

jr_019_4333:
    reti                                          ; $4333: $d9


    inc [hl]                                      ; $4334: $34
    xor l                                         ; $4335: $ad
    add d                                         ; $4336: $82
    ld c, e                                       ; $4337: $4b
    sub $16                                       ; $4338: $d6 $16
    call c, $8e41                                 ; $433a: $dc $41 $8e
    and d                                         ; $433d: $a2
    inc l                                         ; $433e: $2c
    and $07                                       ; $433f: $e6 $07
    ld [$ad33], a                                 ; $4341: $ea $33 $ad
    ld [hl], e                                    ; $4344: $73
    ld l, d                                       ; $4345: $6a
    or a                                          ; $4346: $b7
    ld [hl], $bb                                  ; $4347: $36 $bb
    ld d, e                                       ; $4349: $53
    ld a, h                                       ; $434a: $7c
    or l                                          ; $434b: $b5
    scf                                           ; $434c: $37
    bit 0, e                                      ; $434d: $cb $43
    adc l                                         ; $434f: $8d
    and h                                         ; $4350: $a4
    jr z, @-$15                                   ; $4351: $28 $e9

    inc hl                                        ; $4353: $23
    xor [hl]                                      ; $4354: $ae
    add c                                         ; $4355: $81
    ld c, h                                       ; $4356: $4c
    and $05                                       ; $4357: $e6 $05
    db $ed                                        ; $4359: $ed
    jr nc, @-$6f                                  ; $435a: $30 $8f

    sub c                                         ; $435c: $91
    inc a                                         ; $435d: $3c
    push hl                                       ; $435e: $e5
    rla                                           ; $435f: $17
    db $eb                                        ; $4360: $eb
    ld [hl-], a                                   ; $4361: $32
    xor [hl]                                      ; $4362: $ae
    add c                                         ; $4363: $81
    ld c, l                                       ; $4364: $4d

Jump_019_4365:
    call nz, $e929                                ; $4365: $c4 $29 $e9
    inc h                                         ; $4368: $24
    call z, Call_019_7c52                         ; $4369: $cc $52 $7c
    and e                                         ; $436c: $a3
    ld c, d                                       ; $436d: $4a
    add $27                                       ; $436e: $c6 $27
    ret                                           ; $4370: $c9


    inc [hl]                                      ; $4371: $34
    cp e                                          ; $4372: $bb
    ld h, e                                       ; $4373: $63
    adc h                                         ; $4374: $8c
    sub h                                         ; $4375: $94
    ld e, d                                       ; $4376: $5a
    or [hl]                                       ; $4377: $b6
    jr c, jr_019_4333                             ; $4378: $38 $b9

    ld b, l                                       ; $437a: $45
    sbc e                                         ; $437b: $9b
    ld [hl], h                                    ; $437c: $74
    ld l, d                                       ; $437d: $6a
    or [hl]                                       ; $437e: $b6
    ld [hl], $bb                                  ; $437f: $36 $bb

jr_019_4381:
    ld d, e                                       ; $4381: $53
    ld a, l                                       ; $4382: $7d
    and e                                         ; $4383: $a3
    ld a, [hl-]                                   ; $4384: $3a
    add sp, $15                                   ; $4385: $e8 $15
    db $dd                                        ; $4387: $dd
    ld b, c                                       ; $4388: $41

jr_019_4389:
    sbc [hl]                                      ; $4389: $9e
    add c                                         ; $438a: $81
    ld c, h                                       ; $438b: $4c
    push de                                       ; $438c: $d5
    jr @-$14                                      ; $438d: $18 $ea

    inc hl                                        ; $438f: $23
    cp [hl]                                       ; $4390: $be
    ld [hl], c                                    ; $4391: $71
    ld e, [hl]                                    ; $4392: $5e
    jp $e82a                                      ; $4393: $c3 $2a $e8


Call_019_4396:
    dec d                                         ; $4396: $15
    db $dd                                        ; $4397: $dd
    ld b, c                                       ; $4398: $41
    adc [hl]                                      ; $4399: $8e
    sub c                                         ; $439a: $91
    ld c, h                                       ; $439b: $4c
    push de                                       ; $439c: $d5
    jr jr_019_4389                                ; $439d: $18 $ea

    inc hl                                        ; $439f: $23
    cp l                                          ; $43a0: $bd
    ld h, c                                       ; $43a1: $61
    ld a, l                                       ; $43a2: $7d
    and d                                         ; $43a3: $a2
    ld c, e                                       ; $43a4: $4b
    push bc                                       ; $43a5: $c5
    jr z, jr_019_4381                             ; $43a6: $28 $d9

    inc [hl]                                      ; $43a8: $34
    cp h                                          ; $43a9: $bc
    ld h, e                                       ; $43aa: $63
    ld a, h                                       ; $43ab: $7c

jr_019_43ac:
    and h                                         ; $43ac: $a4
    ld a, [hl-]                                   ; $43ad: $3a
    rst $10                                       ; $43ae: $d7
    ld h, $db                                     ; $43af: $26 $db
    ld b, e                                       ; $43b1: $43
    xor l                                         ; $43b2: $ad

jr_019_43b3:
    ld [hl], d                                    ; $43b3: $72
    ld l, h                                       ; $43b4: $6c
    and h                                         ; $43b5: $a4
    ld c, d                                       ; $43b6: $4a
    rst $00                                       ; $43b7: $c7
    dec [hl]                                      ; $43b8: $35
    cp h                                          ; $43b9: $bc
    ld h, d                                       ; $43ba: $62
    ld a, l                                       ; $43bb: $7d
    or h                                          ; $43bc: $b4
    add hl, sp                                    ; $43bd: $39
    reti                                          ; $43be: $d9


    inc h                                         ; $43bf: $24
    adc $50                                       ; $43c0: $ce $50
    ld a, a                                       ; $43c2: $7f
    or c                                          ; $43c3: $b1
    inc l                                         ; $43c4: $2c
    and $17                                       ; $43c5: $e6 $17
    db $db                                        ; $43c7: $db
    inc sp                                        ; $43c8: $33
    xor [hl]                                      ; $43c9: $ae
    ld [hl], c                                    ; $43ca: $71
    ld e, l                                       ; $43cb: $5d
    jp $e62b                                      ; $43cc: $c3 $2b $e6


    daa                                           ; $43cf: $27
    reti                                          ; $43d0: $d9


    dec [hl]                                      ; $43d1: $35
    cp e                                          ; $43d2: $bb

jr_019_43d3:
    ld d, e                                       ; $43d3: $53
    adc h                                         ; $43d4: $8c
    sub e                                         ; $43d5: $93
    ld e, e                                       ; $43d6: $5b
    push bc                                       ; $43d7: $c5
    jr c, jr_019_43b3                             ; $43d8: $38 $d9

    dec [hl]                                      ; $43da: $35
    bit 0, e                                      ; $43db: $cb $43
    sbc l                                         ; $43dd: $9d
    add d                                         ; $43de: $82
    ld l, h                                       ; $43df: $6c
    or h                                          ; $43e0: $b4
    jr c, jr_019_43ac                             ; $43e1: $38 $c9

    inc [hl]                                      ; $43e3: $34
    xor h                                         ; $43e4: $ac
    add e                                         ; $43e5: $83
    ld e, e                                       ; $43e6: $5b
    add $26                                       ; $43e7: $c6 $26
    call c, $8e41                                 ; $43e9: $dc $41 $8e
    and d                                         ; $43ec: $a2
    dec hl                                        ; $43ed: $2b
    rst $30                                       ; $43ee: $f7
    ld b, $ec                                     ; $43ef: $06 $ec
    ld [hl+], a                                   ; $43f1: $22
    cp [hl]                                       ; $43f2: $be
    ld h, c                                       ; $43f3: $61
    ld a, l                                       ; $43f4: $7d
    and e                                         ; $43f5: $a3
    ld c, d                                       ; $43f6: $4a
    rst $00                                       ; $43f7: $c7
    ld [hl], $cb                                  ; $43f8: $36 $cb
    ld b, e                                       ; $43fa: $43
    sbc l                                         ; $43fb: $9d
    add e                                         ; $43fc: $83
    ld e, e                                       ; $43fd: $5b
    or l                                          ; $43fe: $b5
    add hl, sp                                    ; $43ff: $39
    ret z                                         ; $4400: $c8

    ld [hl], $ba                                  ; $4401: $36 $ba
    ld d, h                                       ; $4403: $54
    sbc e                                         ; $4404: $9b
    ld [hl], h                                    ; $4405: $74
    ld l, e                                       ; $4406: $6b
    and l                                         ; $4407: $a5
    jr c, jr_019_43d3                             ; $4408: $38 $c9

    inc [hl]                                      ; $440a: $34

jr_019_440b:
    xor h                                         ; $440b: $ac
    ld [hl], d                                    ; $440c: $72
    ld l, l                                       ; $440d: $6d
    call nz, $e929                                ; $440e: $c4 $29 $e9
    inc d                                         ; $4411: $14
    call Call_019_7e51                            ; $4412: $cd $51 $7e
    or d                                          ; $4415: $b2
    inc l                                         ; $4416: $2c
    and $07                                       ; $4417: $e6 $07
    db $eb                                        ; $4419: $eb
    ld [hl-], a                                   ; $441a: $32
    xor [hl]                                      ; $441b: $ae
    add c                                         ; $441c: $81
    ld e, l                                       ; $441d: $5d
    push de                                       ; $441e: $d5
    jr jr_019_440b                                ; $441f: $18 $ea

    inc hl                                        ; $4421: $23
    cp [hl]                                       ; $4422: $be
    ld [hl], c                                    ; $4423: $71
    ld l, l                                       ; $4424: $6d
    jp $e919                                      ; $4425: $c3 $19 $e9


    inc d                                         ; $4428: $14
    db $dd                                        ; $4429: $dd
    ld d, c                                       ; $442a: $51
    adc [hl]                                      ; $442b: $8e
    and d                                         ; $442c: $a2
    dec sp                                        ; $442d: $3b
    and $16                                       ; $442e: $e6 $16
    db $db                                        ; $4430: $db
    inc sp                                        ; $4431: $33
    xor l                                         ; $4432: $ad
    ld [hl], d                                    ; $4433: $72
    ld l, h                                       ; $4434: $6c
    or h                                          ; $4435: $b4
    add hl, hl                                    ; $4436: $29
    ret c                                         ; $4437: $d8

    inc h                                         ; $4438: $24
    cp h                                          ; $4439: $bc
    ld h, d                                       ; $443a: $62
    ld a, l                                       ; $443b: $7d
    and e                                         ; $443c: $a3
    ld a, [hl-]                                   ; $443d: $3a
    rst $10                                       ; $443e: $d7
    ld h, $db                                     ; $443f: $26 $db
    ld b, e                                       ; $4441: $43
    sbc l                                         ; $4442: $9d
    add e                                         ; $4443: $83
    ld c, e                                       ; $4444: $4b
    add $26                                       ; $4445: $c6 $26
    bit 0, d                                      ; $4447: $cb $42
    adc [hl]                                      ; $4449: $8e
    and d                                         ; $444a: $a2
    dec hl                                        ; $444b: $2b
    rst $20                                       ; $444c: $e7
    inc d                                         ; $444d: $14
    db $dd                                        ; $444e: $dd

jr_019_444f:
    ld b, b                                       ; $444f: $40
    adc a                                         ; $4450: $8f
    and c                                         ; $4451: $a1
    dec hl                                        ; $4452: $2b
    or $06                                        ; $4453: $f6 $06
    db $fc                                        ; $4455: $fc
    ld [hl+], a                                   ; $4456: $22
    cp [hl]                                       ; $4457: $be
    ld h, c                                       ; $4458: $61
    ld l, l                                       ; $4459: $6d
    or e                                          ; $445a: $b3
    ld a, [hl-]                                   ; $445b: $3a
    ret z                                         ; $445c: $c8

    dec [hl]                                      ; $445d: $35
    cp h                                          ; $445e: $bc
    ld h, d                                       ; $445f: $62

jr_019_4460:
    adc l                                         ; $4460: $8d
    or e                                          ; $4461: $b3
    ld a, [hl-]                                   ; $4462: $3a
    add sp, $15                                   ; $4463: $e8 $15
    call c, $9e31                                 ; $4465: $dc $31 $9e
    add c                                         ; $4468: $81
    ld e, l                                       ; $4469: $5d
    or e                                          ; $446a: $b3
    ld a, [hl+]                                   ; $446b: $2a
    ret c                                         ; $446c: $d8

    dec h                                         ; $446d: $25
    call z, $9d42                                 ; $446e: $cc $42 $9d
    add d                                         ; $4471: $82
    ld c, h                                       ; $4472: $4c
    push bc                                       ; $4473: $c5
    jr z, jr_019_4460                             ; $4474: $28 $ea

    inc hl                                        ; $4476: $23
    cp l                                          ; $4477: $bd
    ld h, c                                       ; $4478: $61
    ld l, l                                       ; $4479: $6d
    or e                                          ; $447a: $b3
    ld a, [hl+]                                   ; $447b: $2a
    rst $20                                       ; $447c: $e7
    ld d, $db                                     ; $447d: $16 $db

jr_019_447f:
    inc sp                                        ; $447f: $33
    xor l                                         ; $4480: $ad
    ld [hl], d                                    ; $4481: $72
    ld l, h                                       ; $4482: $6c
    or l                                          ; $4483: $b5
    jr c, jr_019_444f                             ; $4484: $38 $c9

    inc [hl]                                      ; $4486: $34
    xor l                                         ; $4487: $ad
    ld [hl], d                                    ; $4488: $72
    ld e, h                                       ; $4489: $5c
    push bc                                       ; $448a: $c5
    daa                                           ; $448b: $27
    db $db                                        ; $448c: $db

jr_019_448d:
    ld [hl-], a                                   ; $448d: $32
    sbc [hl]                                      ; $448e: $9e
    sub c                                         ; $448f: $91
    ld c, l                                       ; $4490: $4d
    db $e4                                        ; $4491: $e4
    ld [$14f9], sp                                ; $4492: $08 $f9 $14
    call c, $8d42                                 ; $4495: $dc $42 $8d
    sub e                                         ; $4498: $93
    ld c, e                                       ; $4499: $4b
    sub $26                                       ; $449a: $d6 $26
    db $db                                        ; $449c: $db
    ld b, d                                       ; $449d: $42
    sbc l                                         ; $449e: $9d
    add d                                         ; $449f: $82
    ld e, h                                       ; $44a0: $5c
    push bc                                       ; $44a1: $c5
    jr z, jr_019_448d                             ; $44a2: $28 $e9

    dec h                                         ; $44a4: $25
    bit 0, e                                      ; $44a5: $cb $43
    sbc l                                         ; $44a7: $9d
    add e                                         ; $44a8: $83
    ld e, e                                       ; $44a9: $5b
    add $27                                       ; $44aa: $c6 $27
    jp c, $bd33                                   ; $44ac: $da $33 $bd

    ld h, c                                       ; $44af: $61
    adc [hl]                                      ; $44b0: $8e
    and d                                         ; $44b1: $a2
    ld c, e                                       ; $44b2: $4b
    push bc                                       ; $44b3: $c5
    jr c, jr_019_447f                             ; $44b4: $38 $c9

    ld b, h                                       ; $44b6: $44
    xor h                                         ; $44b7: $ac
    ld [hl], d                                    ; $44b8: $72
    ld l, l                                       ; $44b9: $6d
    or e                                          ; $44ba: $b3
    ld a, [hl+]                                   ; $44bb: $2a
    rst $20                                       ; $44bc: $e7
    ld d, $eb                                     ; $44bd: $16 $eb
    inc hl                                        ; $44bf: $23
    cp l                                          ; $44c0: $bd
    ld h, c                                       ; $44c1: $61
    ld a, l                                       ; $44c2: $7d
    and e                                         ; $44c3: $a3
    ld c, d                                       ; $44c4: $4a
    rst $10                                       ; $44c5: $d7
    ld h, $ca                                     ; $44c6: $26 $ca
    inc [hl]                                      ; $44c8: $34
    xor h                                         ; $44c9: $ac
    ld h, d                                       ; $44ca: $62
    ld a, h                                       ; $44cb: $7c
    and h                                         ; $44cc: $a4
    ld a, [hl-]                                   ; $44cd: $3a
    sub $27                                       ; $44ce: $d6 $27
    jp c, $bc34                                   ; $44d0: $da $34 $bc

    ld d, e                                       ; $44d3: $53
    ld a, h                                       ; $44d4: $7c
    sub h                                         ; $44d5: $94
    ld c, c                                       ; $44d6: $49
    cp b                                          ; $44d7: $b8
    ld b, l                                       ; $44d8: $45
    sbc h                                         ; $44d9: $9c
    add h                                         ; $44da: $84
    ld c, c                                       ; $44db: $49
    ret z                                         ; $44dc: $c8

    inc [hl]                                      ; $44dd: $34
    xor l                                         ; $44de: $ad
    add d                                         ; $44df: $82
    ld c, h                                       ; $44e0: $4c
    push de                                       ; $44e1: $d5
    ld b, $ec                                     ; $44e2: $06 $ec
    ld hl, $909f                                  ; $44e4: $21 $9f $90
    dec a                                         ; $44e7: $3d
    db $e4                                        ; $44e8: $e4
    ld [$13fa], sp                                ; $44e9: $08 $fa $13
    adc $61                                       ; $44ec: $ce $61
    ld l, [hl]                                    ; $44ee: $6e
    or d                                          ; $44ef: $b2
    dec hl                                        ; $44f0: $2b
    sub $17                                       ; $44f1: $d6 $17
    jp c, $bc34                                   ; $44f3: $da $34 $bc

    ld h, d                                       ; $44f6: $62
    ld a, h                                       ; $44f7: $7c
    sub e                                         ; $44f8: $93
    ld e, e                                       ; $44f9: $5b
    add $37                                       ; $44fa: $c6 $37
    ret                                           ; $44fc: $c9


    ld b, h                                       ; $44fd: $44
    xor h                                         ; $44fe: $ac
    ld h, d                                       ; $44ff: $62
    adc l                                         ; $4500: $8d
    sub e                                         ; $4501: $93
    ld c, e                                       ; $4502: $4b
    add $27                                       ; $4503: $c6 $27
    db $db                                        ; $4505: $db
    ld [hl-], a                                   ; $4506: $32
    xor [hl]                                      ; $4507: $ae
    ld [hl], c                                    ; $4508: $71
    ld l, [hl]                                    ; $4509: $6e
    or e                                          ; $450a: $b3
    ld a, [hl+]                                   ; $450b: $2a
    rst $20                                       ; $450c: $e7
    dec d                                         ; $450d: $15
    call c, $ae32                                 ; $450e: $dc $32 $ae
    add c                                         ; $4511: $81
    ld e, l                                       ; $4512: $5d
    jp $f81a                                      ; $4513: $c3 $1a $f8


    dec d                                         ; $4516: $15
    db $dd                                        ; $4517: $dd

jr_019_4518:
    ld b, c                                       ; $4518: $41
    sbc [hl]                                      ; $4519: $9e
    sub c                                         ; $451a: $91
    inc a                                         ; $451b: $3c
    push hl                                       ; $451c: $e5
    rlca                                          ; $451d: $07
    ld a, [$be23]                                 ; $451e: $fa $23 $be
    ld h, c                                       ; $4521: $61
    ld l, l                                       ; $4522: $6d
    jp $e82a                                      ; $4523: $c3 $2a $e8


    inc d                                         ; $4526: $14
    db $dd                                        ; $4527: $dd
    ld b, c                                       ; $4528: $41
    sbc [hl]                                      ; $4529: $9e
    sub c                                         ; $452a: $91
    ld c, h                                       ; $452b: $4c
    push de                                       ; $452c: $d5
    rla                                           ; $452d: $17
    ld [$be23], a                                 ; $452e: $ea $23 $be
    ld h, c                                       ; $4531: $61
    ld a, l                                       ; $4532: $7d
    and e                                         ; $4533: $a3
    ld a, [hl-]                                   ; $4534: $3a
    rst $10                                       ; $4535: $d7
    dec h                                         ; $4536: $25
    call z, $ad42                                 ; $4537: $cc $42 $ad
    ld [hl], d                                    ; $453a: $72
    ld e, h                                       ; $453b: $5c
    or l                                          ; $453c: $b5
    jr c, jr_019_4518                             ; $453d: $38 $d9

    inc [hl]                                      ; $453f: $34
    cp h                                          ; $4540: $bc
    ld h, d                                       ; $4541: $62
    ld a, l                                       ; $4542: $7d
    and e                                         ; $4543: $a3
    dec sp                                        ; $4544: $3b
    sub $27                                       ; $4545: $d6 $27
    jp c, $9d43                                   ; $4547: $da $43 $9d

    add d                                         ; $454a: $82
    ld e, h                                       ; $454b: $5c
    push bc                                       ; $454c: $c5
    jr @-$15                                      ; $454d: $18 $e9

    inc h                                         ; $454f: $24
    call Call_019_7d52                            ; $4550: $cd $52 $7d
    and e                                         ; $4553: $a3
    ld a, [hl-]                                   ; $4554: $3a
    rst $20                                       ; $4555: $e7
    dec d                                         ; $4556: $15
    call c, $9e32                                 ; $4557: $dc $32 $9e
    sub c                                         ; $455a: $91
    ld c, h                                       ; $455b: $4c
    push de                                       ; $455c: $d5
    rla                                           ; $455d: $17
    ld [$be22], a                                 ; $455e: $ea $22 $be
    ld [hl], b                                    ; $4561: $70
    ld l, [hl]                                    ; $4562: $6e
    or e                                          ; $4563: $b3
    ld a, [hl+]                                   ; $4564: $2a
    add sp, $15                                   ; $4565: $e8 $15
    call c, $8e41                                 ; $4567: $dc $41 $8e
    sub d                                         ; $456a: $92
    ld c, h                                       ; $456b: $4c
    push de                                       ; $456c: $d5
    jr z, @-$25                                   ; $456d: $28 $d9

    inc h                                         ; $456f: $24
    cp h                                          ; $4570: $bc
    ld h, d                                       ; $4571: $62
    ld a, l                                       ; $4572: $7d
    and e                                         ; $4573: $a3
    ld a, [hl-]                                   ; $4574: $3a
    rst $10                                       ; $4575: $d7
    ld d, $da                                     ; $4576: $16 $da
    inc sp                                        ; $4578: $33
    xor l                                         ; $4579: $ad
    ld [hl], d                                    ; $457a: $72
    ld l, h                                       ; $457b: $6c
    or l                                          ; $457c: $b5
    jr c, @-$35                                   ; $457d: $38 $c9

    inc [hl]                                      ; $457f: $34
    xor l                                         ; $4580: $ad
    add d                                         ; $4581: $82
    ld c, h                                       ; $4582: $4c
    add $26                                       ; $4583: $c6 $26
    call c, $8e41                                 ; $4585: $dc $41 $8e
    and d                                         ; $4588: $a2
    dec hl                                        ; $4589: $2b
    rst $30                                       ; $458a: $f7
    dec b                                         ; $458b: $05
    db $ec                                        ; $458c: $ec
    ld b, c                                       ; $458d: $41
    adc a                                         ; $458e: $8f
    and c                                         ; $458f: $a1
    inc l                                         ; $4590: $2c
    and $06                                       ; $4591: $e6 $06
    db $ec                                        ; $4593: $ec
    ld hl, $81af                                  ; $4594: $21 $af $81
    ld c, l                                       ; $4597: $4d
    call nc, $ea18                                ; $4598: $d4 $18 $ea
    inc hl                                        ; $459b: $23
    cp [hl]                                       ; $459c: $be
    ld h, c                                       ; $459d: $61
    ld l, [hl]                                    ; $459e: $6e
    or e                                          ; $459f: $b3
    ld a, [hl+]                                   ; $45a0: $2a
    add sp, $15                                   ; $45a1: $e8 $15
    call c, $8e41                                 ; $45a3: $dc $41 $8e
    sub d                                         ; $45a6: $92
    dec sp                                        ; $45a7: $3b
    sub $16                                       ; $45a8: $d6 $16
    db $db                                        ; $45aa: $db
    ld [hl-], a                                   ; $45ab: $32
    sbc [hl]                                      ; $45ac: $9e
    sub d                                         ; $45ad: $92
    ld c, h                                       ; $45ae: $4c
    sub $16                                       ; $45af: $d6 $16
    db $eb                                        ; $45b1: $eb
    ld [hl-], a                                   ; $45b2: $32
    xor [hl]                                      ; $45b3: $ae
    add c                                         ; $45b4: $81
    ld c, h                                       ; $45b5: $4c
    push hl                                       ; $45b6: $e5
    rlca                                          ; $45b7: $07
    db $eb                                        ; $45b8: $eb
    ld [hl-], a                                   ; $45b9: $32
    xor [hl]                                      ; $45ba: $ae
    add c                                         ; $45bb: $81
    ld c, h                                       ; $45bc: $4c
    sub $16                                       ; $45bd: $d6 $16
    db $ec                                        ; $45bf: $ec
    ld sp, $919e                                  ; $45c0: $31 $9e $91
    ld c, h                                       ; $45c3: $4c
    sub $16                                       ; $45c4: $d6 $16
    call c, $9e42                                 ; $45c6: $dc $42 $9e
    sub d                                         ; $45c9: $92
    dec sp                                        ; $45ca: $3b
    rst $10                                       ; $45cb: $d7
    dec d                                         ; $45cc: $15
    call Call_019_7e51                            ; $45cd: $cd $51 $7e
    or e                                          ; $45d0: $b3
    ld a, [hl+]                                   ; $45d1: $2a
    add sp, $14                                   ; $45d2: $e8 $14
    adc $60                                       ; $45d4: $ce $60
    ld l, [hl]                                    ; $45d6: $6e
    jp nz, $f81a                                  ; $45d7: $c2 $1a $f8

    inc d                                         ; $45da: $14
    db $dd                                        ; $45db: $dd
    ld d, b                                       ; $45dc: $50
    ld a, [hl]                                    ; $45dd: $7e
    or d                                          ; $45de: $b2
    ld a, [hl+]                                   ; $45df: $2a
    ld hl, sp+$04                                 ; $45e0: $f8 $04
    db $dd                                        ; $45e2: $dd
    ld b, c                                       ; $45e3: $41
    adc a                                         ; $45e4: $8f
    and d                                         ; $45e5: $a2
    dec hl                                        ; $45e6: $2b
    rst $20                                       ; $45e7: $e7
    dec d                                         ; $45e8: $15
    db $dd                                        ; $45e9: $dd
    ld b, c                                       ; $45ea: $41
    adc a                                         ; $45eb: $8f
    and c                                         ; $45ec: $a1
    dec sp                                        ; $45ed: $3b
    and $15                                       ; $45ee: $e6 $15
    call c, $8e41                                 ; $45f0: $dc $41 $8e
    and c                                         ; $45f3: $a1
    dec sp                                        ; $45f4: $3b
    rst $20                                       ; $45f5: $e7
    dec d                                         ; $45f6: $15
    db $dd                                        ; $45f7: $dd
    ld b, c                                       ; $45f8: $41
    adc [hl]                                      ; $45f9: $8e
    and d                                         ; $45fa: $a2
    dec hl                                        ; $45fb: $2b
    rst $20                                       ; $45fc: $e7
    inc d                                         ; $45fd: $14
    db $dd                                        ; $45fe: $dd
    ld d, c                                       ; $45ff: $51
    adc [hl]                                      ; $4600: $8e
    or d                                          ; $4601: $b2
    ld a, [hl+]                                   ; $4602: $2a
    add sp, $14                                   ; $4603: $e8 $14
    db $dd                                        ; $4605: $dd
    ld d, c                                       ; $4606: $51
    ld a, [hl]                                    ; $4607: $7e
    or d                                          ; $4608: $b2
    ld a, [hl+]                                   ; $4609: $2a
    ld hl, sp+$14                                 ; $460a: $f8 $14
    call Call_019_7e51                            ; $460c: $cd $51 $7e
    or e                                          ; $460f: $b3
    ld a, [hl+]                                   ; $4610: $2a
    add sp, $14                                   ; $4611: $e8 $14
    call Call_019_7e51                            ; $4613: $cd $51 $7e
    or e                                          ; $4616: $b3
    ld a, [hl+]                                   ; $4617: $2a
    add sp, $14                                   ; $4618: $e8 $14
    call Call_019_6e61                            ; $461a: $cd $61 $6e
    or e                                          ; $461d: $b3
    ld a, [hl+]                                   ; $461e: $2a
    add sp, $14                                   ; $461f: $e8 $14
    call Call_019_6e61                            ; $4621: $cd $61 $6e
    or e                                          ; $4624: $b3
    add hl, hl                                    ; $4625: $29
    jp hl                                         ; $4626: $e9


    inc hl                                        ; $4627: $23
    cp [hl]                                       ; $4628: $be
    ld h, c                                       ; $4629: $61
    ld e, l                                       ; $462a: $5d
    call nz, $ea18                                ; $462b: $c4 $18 $ea
    ld [hl+], a                                   ; $462e: $22
    cp [hl]                                       ; $462f: $be
    add c                                         ; $4630: $81
    ld e, l                                       ; $4631: $5d
    push de                                       ; $4632: $d5
    rla                                           ; $4633: $17
    db $eb                                        ; $4634: $eb
    ld [hl+], a                                   ; $4635: $22
    xor a                                         ; $4636: $af
    add c                                         ; $4637: $81
    ld c, h                                       ; $4638: $4c
    and $06                                       ; $4639: $e6 $06
    db $ec                                        ; $463b: $ec
    ld sp, $919f                                  ; $463c: $31 $9f $91
    inc a                                         ; $463f: $3c
    and $05                                       ; $4640: $e6 $05
    db $ed                                        ; $4642: $ed
    ld b, c                                       ; $4643: $41
    adc a                                         ; $4644: $8f
    and c                                         ; $4645: $a1
    dec hl                                        ; $4646: $2b
    rst $20                                       ; $4647: $e7
    inc b                                         ; $4648: $04
    db $dd                                        ; $4649: $dd
    ld b, c                                       ; $464a: $41
    ld a, [hl]                                    ; $464b: $7e
    or d                                          ; $464c: $b2
    ld a, [hl+]                                   ; $464d: $2a
    add sp, $14                                   ; $464e: $e8 $14
    adc $60                                       ; $4650: $ce $60
    ld l, [hl]                                    ; $4652: $6e
    jp $ea18                                      ; $4653: $c3 $18 $ea


    ld [hl+], a                                   ; $4656: $22
    cp [hl]                                       ; $4657: $be
    add c                                         ; $4658: $81
    ld c, h                                       ; $4659: $4c
    push de                                       ; $465a: $d5
    ld d, $ec                                     ; $465b: $16 $ec
    ld sp, $a29e                                  ; $465d: $31 $9e $a2
    ld a, [hl-]                                   ; $4660: $3a
    add sp, $24                                   ; $4661: $e8 $24
    call Call_019_6d61                            ; $4663: $cd $61 $6d
    push bc                                       ; $4666: $c5
    daa                                           ; $4667: $27
    db $db                                        ; $4668: $db
    ld [hl-], a                                   ; $4669: $32
    sbc [hl]                                      ; $466a: $9e
    sub d                                         ; $466b: $92
    dec sp                                        ; $466c: $3b
    rst $10                                       ; $466d: $d7
    dec d                                         ; $466e: $15
    call Call_019_7d51                            ; $466f: $cd $51 $7d
    or h                                          ; $4672: $b4
    jr z, @-$24                                   ; $4673: $28 $da

    inc sp                                        ; $4675: $33
    xor l                                         ; $4676: $ad
    add d                                         ; $4677: $82
    ld c, e                                       ; $4678: $4b
    rst $10                                       ; $4679: $d7
    dec h                                         ; $467a: $25
    call z, Call_019_7d52                         ; $467b: $cc $52 $7d
    or h                                          ; $467e: $b4
    add hl, hl                                    ; $467f: $29
    jp c, $ad23                                   ; $4680: $da $23 $ad

    add d                                         ; $4683: $82
    ld e, e                                       ; $4684: $5b
    sub $26                                       ; $4685: $d6 $26
    call c, $8d42                                 ; $4687: $dc $42 $8d
    and e                                         ; $468a: $a3
    ld a, [hl-]                                   ; $468b: $3a
    ret c                                         ; $468c: $d8

    inc h                                         ; $468d: $24
    cp l                                          ; $468e: $bd
    ld h, d                                       ; $468f: $62
    ld e, h                                       ; $4690: $5c
    push bc                                       ; $4691: $c5
    daa                                           ; $4692: $27
    db $db                                        ; $4693: $db
    ld b, d                                       ; $4694: $42

Call_019_4695:
    adc l                                         ; $4695: $8d
    or e                                          ; $4696: $b3
    add hl, sp                                    ; $4697: $39
    jp hl                                         ; $4698: $e9


    inc hl                                        ; $4699: $23
    xor [hl]                                      ; $469a: $ae
    ld [hl], c                                    ; $469b: $71
    ld c, h                                       ; $469c: $4c
    push de                                       ; $469d: $d5
    ld d, $dd                                     ; $469e: $16 $dd
    ld sp, $a28f                                  ; $46a0: $31 $8f $a2
    ld a, [hl+]                                   ; $46a3: $2a
    ld hl, sp+$13                                 ; $46a4: $f8 $13

Call_019_46a6:
    adc $61                                       ; $46a6: $ce $61
    ld l, l                                       ; $46a8: $6d
    call nc, $eb17                                ; $46a9: $d4 $17 $eb
    ld [hl+], a                                   ; $46ac: $22
    sbc a                                         ; $46ad: $9f
    add d                                         ; $46ae: $82
    dec sp                                        ; $46af: $3b
    rst $20                                       ; $46b0: $e7
    dec d                                         ; $46b1: $15
    call Call_019_6e51                            ; $46b2: $cd $51 $6e
    jp $ea28                                      ; $46b5: $c3 $28 $ea


    ld [hl+], a                                   ; $46b8: $22
    xor [hl]                                      ; $46b9: $ae
    add c                                         ; $46ba: $81
    ld c, h                                       ; $46bb: $4c
    and $15                                       ; $46bc: $e6 $15
    call c, $8e41                                 ; $46be: $dc $41 $8e
    and e                                         ; $46c1: $a3
    ld a, [hl+]                                   ; $46c2: $2a
    jp hl                                         ; $46c3: $e9


    inc hl                                        ; $46c4: $23
    cp [hl]                                       ; $46c5: $be
    ld [hl], c                                    ; $46c6: $71
    ld e, l                                       ; $46c7: $5d
    push de                                       ; $46c8: $d5
    rla                                           ; $46c9: $17
    db $ec                                        ; $46ca: $ec
    ld [hl-], a                                   ; $46cb: $32
    adc [hl]                                      ; $46cc: $8e
    and d                                         ; $46cd: $a2
    ld a, [hl-]                                   ; $46ce: $3a
    add sp, $14                                   ; $46cf: $e8 $14
    adc $61                                       ; $46d1: $ce $61
    ld e, l                                       ; $46d3: $5d
    call nz, $eb17                                ; $46d4: $c4 $17 $eb
    ld [hl-], a                                   ; $46d7: $32
    sbc a                                         ; $46d8: $9f
    sub d                                         ; $46d9: $92
    ld a, [hl-]                                   ; $46da: $3a
    rst $20                                       ; $46db: $e7
    inc d                                         ; $46dc: $14
    call Call_019_6d61                            ; $46dd: $cd $61 $6d
    db $d3                                        ; $46e0: $d3
    daa                                           ; $46e1: $27
    ld a, [$9f22]                                 ; $46e2: $fa $22 $9f
    add d                                         ; $46e5: $82
    dec sp                                        ; $46e6: $3b
    rst $20                                       ; $46e7: $e7
    dec d                                         ; $46e8: $15
    call Call_019_6d51                            ; $46e9: $cd $51 $6d
    call nz, $eb17                                ; $46ec: $c4 $17 $eb
    ld [hl-], a                                   ; $46ef: $32
    sbc [hl]                                      ; $46f0: $9e
    and d                                         ; $46f1: $a2
    ld a, [hl-]                                   ; $46f2: $3a
    add sp, $14                                   ; $46f3: $e8 $14
    cp [hl]                                       ; $46f5: $be
    ld [hl], c                                    ; $46f6: $71
    ld e, h                                       ; $46f7: $5c
    push de                                       ; $46f8: $d5
    daa                                           ; $46f9: $27
    call c, $8d42                                 ; $46fa: $dc $42 $8d
    or e                                          ; $46fd: $b3
    add hl, hl                                    ; $46fe: $29
    ld [$ae23], a                                 ; $46ff: $ea $23 $ae
    ld [hl], d                                    ; $4702: $72
    ld c, h                                       ; $4703: $4c
    sub $16                                       ; $4704: $d6 $16
    call c, $7e41                                 ; $4706: $dc $41 $7e
    or d                                          ; $4709: $b2
    add hl, hl                                    ; $470a: $29
    ld sp, hl                                     ; $470b: $f9
    inc hl                                        ; $470c: $23
    cp [hl]                                       ; $470d: $be
    ld [hl], c                                    ; $470e: $71
    ld c, h                                       ; $470f: $4c
    sub $16                                       ; $4710: $d6 $16
    call c, $7e42                                 ; $4712: $dc $42 $7e
    and e                                         ; $4715: $a3
    add hl, hl                                    ; $4716: $29
    jp hl                                         ; $4717: $e9


    inc hl                                        ; $4718: $23
    cp [hl]                                       ; $4719: $be
    ld [hl], c                                    ; $471a: $71
    ld c, h                                       ; $471b: $4c
    push de                                       ; $471c: $d5
    ld h, $dc                                     ; $471d: $26 $dc
    ld b, d                                       ; $471f: $42
    adc [hl]                                      ; $4720: $8e
    or e                                          ; $4721: $b3
    add hl, hl                                    ; $4722: $29
    jp hl                                         ; $4723: $e9


    inc hl                                        ; $4724: $23
    xor [hl]                                      ; $4725: $ae
    add d                                         ; $4726: $82
    ld c, h                                       ; $4727: $4c
    sub $16                                       ; $4728: $d6 $16
    call c, Call_019_7d42                         ; $472a: $dc $42 $7d
    and e                                         ; $472d: $a3
    add hl, sp                                    ; $472e: $39
    reti                                          ; $472f: $d9


    inc [hl]                                      ; $4730: $34
    xor h                                         ; $4731: $ac
    add e                                         ; $4732: $83
    ld e, c                                       ; $4733: $59
    ret z                                         ; $4734: $c8

    ld b, l                                       ; $4735: $45
    sbc h                                         ; $4736: $9c
    sub h                                         ; $4737: $94
    ld c, c                                       ; $4738: $49
    ret                                           ; $4739: $c9


    inc [hl]                                      ; $473a: $34
    sbc l                                         ; $473b: $9d
    sub d                                         ; $473c: $92
    ld c, c                                       ; $473d: $49
    ret c                                         ; $473e: $d8

    inc h                                         ; $473f: $24
    xor l                                         ; $4740: $ad
    ld [hl], d                                    ; $4741: $72
    ld c, e                                       ; $4742: $4b
    and $16                                       ; $4743: $e6 $16
    db $dd                                        ; $4745: $dd
    ld b, c                                       ; $4746: $41
    ld a, a                                       ; $4747: $7f
    or d                                          ; $4748: $b2
    add hl, hl                                    ; $4749: $29
    ld sp, hl                                     ; $474a: $f9
    inc de                                        ; $474b: $13
    cp [hl]                                       ; $474c: $be
    ld [hl], b                                    ; $474d: $70
    ld e, l                                       ; $474e: $5d
    db $e4                                        ; $474f: $e4
    rla                                           ; $4750: $17
    db $eb                                        ; $4751: $eb
    ld [hl-], a                                   ; $4752: $32
    sbc [hl]                                      ; $4753: $9e
    sub d                                         ; $4754: $92
    dec sp                                        ; $4755: $3b
    rst $20                                       ; $4756: $e7
    dec d                                         ; $4757: $15
    call Call_019_6d51                            ; $4758: $cd $51 $6d
    jp $ea28                                      ; $475b: $c3 $28 $ea


    inc hl                                        ; $475e: $23
    xor [hl]                                      ; $475f: $ae
    add d                                         ; $4760: $82
    ld c, e                                       ; $4761: $4b
    rst $20                                       ; $4762: $e7
    dec h                                         ; $4763: $25
    call Call_019_6d52                            ; $4764: $cd $52 $6d
    call nz, $ea28                                ; $4767: $c4 $28 $ea
    inc sp                                        ; $476a: $33
    xor [hl]                                      ; $476b: $ae
    add d                                         ; $476c: $82
    ld c, e                                       ; $476d: $4b
    rst $20                                       ; $476e: $e7
    dec h                                         ; $476f: $25
    call Call_019_6d52                            ; $4770: $cd $52 $6d
    call nz, $eb17                                ; $4773: $c4 $17 $eb
    ld [hl-], a                                   ; $4776: $32
    sbc [hl]                                      ; $4777: $9e
    sub d                                         ; $4778: $92
    dec sp                                        ; $4779: $3b
    rst $20                                       ; $477a: $e7
    inc d                                         ; $477b: $14
    db $dd                                        ; $477c: $dd
    ld d, c                                       ; $477d: $51
    ld l, [hl]                                    ; $477e: $6e
    call nz, $eb18                                ; $477f: $c4 $18 $eb
    ld [hl-], a                                   ; $4782: $32
    xor [hl]                                      ; $4783: $ae
    sub d                                         ; $4784: $92
    ld c, e                                       ; $4785: $4b
    rst $10                                       ; $4786: $d7
    dec h                                         ; $4787: $25
    call $7d62                                    ; $4788: $cd $62 $7d
    or h                                          ; $478b: $b4
    add hl, hl                                    ; $478c: $29
    jp c, $9d24                                   ; $478d: $da $24 $9d

    add e                                         ; $4790: $83
    ld e, c                                       ; $4791: $59
    ret z                                         ; $4792: $c8

    dec [hl]                                      ; $4793: $35
    sbc h                                         ; $4794: $9c
    add e                                         ; $4795: $83
    ld e, c                                       ; $4796: $59
    ret c                                         ; $4797: $d8

    inc [hl]                                      ; $4798: $34
    sbc l                                         ; $4799: $9d
    sub e                                         ; $479a: $93
    ld c, c                                       ; $479b: $49
    ret c                                         ; $479c: $d8

    inc h                                         ; $479d: $24
    xor [hl]                                      ; $479e: $ae
    add c                                         ; $479f: $81
    ld c, e                                       ; $47a0: $4b
    and $06                                       ; $47a1: $e6 $06
    db $ed                                        ; $47a3: $ed
    ld sp, $919f                                  ; $47a4: $31 $9f $91
    dec sp                                        ; $47a7: $3b
    rst $20                                       ; $47a8: $e7
    dec d                                         ; $47a9: $15
    db $dd                                        ; $47aa: $dd
    ld d, c                                       ; $47ab: $51
    ld a, [hl]                                    ; $47ac: $7e
    jp $e929                                      ; $47ad: $c3 $29 $e9


    inc hl                                        ; $47b0: $23
    cp [hl]                                       ; $47b1: $be
    ld [hl], c                                    ; $47b2: $71
    ld e, l                                       ; $47b3: $5d
    call nc, $ea18                                ; $47b4: $d4 $18 $ea
    inc hl                                        ; $47b7: $23
    xor [hl]                                      ; $47b8: $ae
    add d                                         ; $47b9: $82
    ld c, h                                       ; $47ba: $4c
    sub $26                                       ; $47bb: $d6 $26
    call z, Call_019_7c52                         ; $47bd: $cc $52 $7c
    or h                                          ; $47c0: $b4
    scf                                           ; $47c1: $37
    jp c, $8d43                                   ; $47c2: $da $43 $8d

    and e                                         ; $47c5: $a3
    add hl, sp                                    ; $47c6: $39
    jp hl                                         ; $47c7: $e9


    inc hl                                        ; $47c8: $23
    cp [hl]                                       ; $47c9: $be
    ld [hl], c                                    ; $47ca: $71
    ld e, l                                       ; $47cb: $5d
    call nc, $eb17                                ; $47cc: $d4 $17 $eb
    ld hl, $919f                                  ; $47cf: $21 $9f $91
    inc a                                         ; $47d2: $3c
    and $06                                       ; $47d3: $e6 $06
    db $ed                                        ; $47d5: $ed
    ld sp, $918f                                  ; $47d6: $31 $8f $91
    dec sp                                        ; $47d9: $3b
    rst $20                                       ; $47da: $e7
    dec d                                         ; $47db: $15
    db $dd                                        ; $47dc: $dd
    ld b, c                                       ; $47dd: $41
    adc [hl]                                      ; $47de: $8e
    or d                                          ; $47df: $b2
    ld a, [hl+]                                   ; $47e0: $2a
    add sp, $14                                   ; $47e1: $e8 $14
    call Call_019_6d61                            ; $47e3: $cd $61 $6d
    jp $ea19                                      ; $47e6: $c3 $19 $ea


    inc h                                         ; $47e9: $24
    xor [hl]                                      ; $47ea: $ae
    ld [hl], d                                    ; $47eb: $72
    ld e, h                                       ; $47ec: $5c
    sub $26                                       ; $47ed: $d6 $26
    call z, $8d42                                 ; $47ef: $cc $42 $8d
    or e                                          ; $47f2: $b3
    add hl, sp                                    ; $47f3: $39
    jp hl                                         ; $47f4: $e9


    inc hl                                        ; $47f5: $23
    cp [hl]                                       ; $47f6: $be
    ld [hl], c                                    ; $47f7: $71
    ld e, h                                       ; $47f8: $5c
    push de                                       ; $47f9: $d5
    ld d, $ec                                     ; $47fa: $16 $ec
    ld sp, $a28f                                  ; $47fc: $31 $8f $a2
    dec hl                                        ; $47ff: $2b
    add sp, $14                                   ; $4800: $e8 $14
    adc $51                                       ; $4802: $ce $51
    ld a, [hl]                                    ; $4804: $7e
    jp $e929                                      ; $4805: $c3 $29 $e9


    inc hl                                        ; $4808: $23
    xor l                                         ; $4809: $ad
    add d                                         ; $480a: $82
    ld e, e                                       ; $480b: $5b
    rst $10                                       ; $480c: $d7
    dec h                                         ; $480d: $25
    cp h                                          ; $480e: $bc
    ld [hl], d                                    ; $480f: $72
    ld e, d                                       ; $4810: $5a
    rst $10                                       ; $4811: $d7
    dec h                                         ; $4812: $25
    cp l                                          ; $4813: $bd
    ld [hl], d                                    ; $4814: $72
    ld e, e                                       ; $4815: $5b
    sub $16                                       ; $4816: $d6 $16
    db $dd                                        ; $4818: $dd
    ld sp, $b27f                                  ; $4819: $31 $7f $b2
    ld a, [hl+]                                   ; $481c: $2a
    ld sp, hl                                     ; $481d: $f9
    inc de                                        ; $481e: $13
    adc $80                                       ; $481f: $ce $80
    ld e, l                                       ; $4821: $5d
    db $e4                                        ; $4822: $e4
    rla                                           ; $4823: $17
    db $ec                                        ; $4824: $ec
    ld sp, $a28f                                  ; $4825: $31 $8f $a2
    dec sp                                        ; $4828: $3b
    rst $20                                       ; $4829: $e7
    dec d                                         ; $482a: $15
    adc $51                                       ; $482b: $ce $51
    ld l, [hl]                                    ; $482d: $6e
    jp $ea28                                      ; $482e: $c3 $28 $ea


    inc sp                                        ; $4831: $33
    sbc l                                         ; $4832: $9d
    and e                                         ; $4833: $a3
    add hl, sp                                    ; $4834: $39
    jp c, $9d33                                   ; $4835: $da $33 $9d

    and d                                         ; $4838: $a2
    add hl, sp                                    ; $4839: $39
    jp hl                                         ; $483a: $e9


    inc hl                                        ; $483b: $23
    cp [hl]                                       ; $483c: $be
    add b                                         ; $483d: $80
    ld e, h                                       ; $483e: $5c
    push hl                                       ; $483f: $e5
    ld d, $dd                                     ; $4840: $16 $dd
    ld b, d                                       ; $4842: $42
    ld a, [hl]                                    ; $4843: $7e
    or e                                          ; $4844: $b3
    add hl, hl                                    ; $4845: $29
    ld [$ae23], a                                 ; $4846: $ea $23 $ae
    add c                                         ; $4849: $81
    ld c, e                                       ; $484a: $4b
    push hl                                       ; $484b: $e5
    dec d                                         ; $484c: $15
    db $dd                                        ; $484d: $dd
    ld b, c                                       ; $484e: $41
    ld a, [hl]                                    ; $484f: $7e
    or e                                          ; $4850: $b3
    add hl, hl                                    ; $4851: $29
    jp hl                                         ; $4852: $e9


    inc hl                                        ; $4853: $23
    xor [hl]                                      ; $4854: $ae
    add d                                         ; $4855: $82
    ld c, e                                       ; $4856: $4b
    ret c                                         ; $4857: $d8

    inc h                                         ; $4858: $24
    cp l                                          ; $4859: $bd
    ld [hl], c                                    ; $485a: $71
    ld e, h                                       ; $485b: $5c
    push de                                       ; $485c: $d5
    rla                                           ; $485d: $17
    db $db                                        ; $485e: $db
    ld [hl-], a                                   ; $485f: $32
    sbc l                                         ; $4860: $9d
    and d                                         ; $4861: $a2
    ld c, d                                       ; $4862: $4a
    ret c                                         ; $4863: $d8

    dec [hl]                                      ; $4864: $35
    xor h                                         ; $4865: $ac
    add e                                         ; $4866: $83
    ld l, c                                       ; $4867: $69
    ret z                                         ; $4868: $c8

    ld b, l                                       ; $4869: $45
    sbc e                                         ; $486a: $9b
    sub h                                         ; $486b: $94
    ld c, b                                       ; $486c: $48
    jp z, $8c53                                   ; $486d: $ca $53 $8c

    or h                                          ; $4870: $b4
    scf                                           ; $4871: $37
    db $db                                        ; $4872: $db
    ld b, e                                       ; $4873: $43
    ld a, [hl]                                    ; $4874: $7e
    and e                                         ; $4875: $a3
    add hl, hl                                    ; $4876: $29
    ld [$ae23], a                                 ; $4877: $ea $23 $ae
    sub c                                         ; $487a: $91
    dec sp                                        ; $487b: $3b
    rst $20                                       ; $487c: $e7
    inc b                                         ; $487d: $04
    xor $50                                       ; $487e: $ee $50
    adc [hl]                                      ; $4880: $8e
    jp $fa19                                      ; $4881: $c3 $19 $fa


    ld [de], a                                    ; $4884: $12
    cp [hl]                                       ; $4885: $be
    add c                                         ; $4886: $81
    ld c, h                                       ; $4887: $4c
    and $16                                       ; $4888: $e6 $16
    call c, Call_019_7d41                         ; $488a: $dc $41 $7d
    or e                                          ; $488d: $b3
    add hl, hl                                    ; $488e: $29
    ld [$ae23], a                                 ; $488f: $ea $23 $ae
    add c                                         ; $4892: $81
    ld c, h                                       ; $4893: $4c
    and $15                                       ; $4894: $e6 $15

Call_019_4896:
    db $dd                                        ; $4896: $dd
    ld b, c                                       ; $4897: $41
    ld a, [hl]                                    ; $4898: $7e
    or e                                          ; $4899: $b3
    add hl, hl                                    ; $489a: $29
    jp hl                                         ; $489b: $e9


    inc hl                                        ; $489c: $23
    cp l                                          ; $489d: $bd
    ld [hl], d                                    ; $489e: $72
    ld e, h                                       ; $489f: $5c
    push de                                       ; $48a0: $d5
    daa                                           ; $48a1: $27
    db $db                                        ; $48a2: $db
    ld [hl-], a                                   ; $48a3: $32
    sbc [hl]                                      ; $48a4: $9e
    sub d                                         ; $48a5: $92
    dec sp                                        ; $48a6: $3b
    rst $20                                       ; $48a7: $e7
    dec d                                         ; $48a8: $15
    call z, Call_019_7d51                         ; $48a9: $cc $51 $7d
    or e                                          ; $48ac: $b3
    add hl, hl                                    ; $48ad: $29
    jp hl                                         ; $48ae: $e9


    inc hl                                        ; $48af: $23
    cp [hl]                                       ; $48b0: $be
    ld [hl], d                                    ; $48b1: $72
    ld e, h                                       ; $48b2: $5c
    push de                                       ; $48b3: $d5
    ld h, $dc                                     ; $48b4: $26 $dc
    ld b, d                                       ; $48b6: $42
    adc [hl]                                      ; $48b7: $8e
    and e                                         ; $48b8: $a3
    ld a, [hl-]                                   ; $48b9: $3a
    add sp, $24                                   ; $48ba: $e8 $24
    cp l                                          ; $48bc: $bd
    ld [hl], c                                    ; $48bd: $71
    ld e, h                                       ; $48be: $5c
    push de                                       ; $48bf: $d5
    ld d, $ec                                     ; $48c0: $16 $ec
    ld b, c                                       ; $48c2: $41
    adc [hl]                                      ; $48c3: $8e
    and d                                         ; $48c4: $a2
    ld a, [hl+]                                   ; $48c5: $2a
    add sp, $13                                   ; $48c6: $e8 $13
    adc $61                                       ; $48c8: $ce $61
    ld e, [hl]                                    ; $48ca: $5e
    call nc, $fb17                                ; $48cb: $d4 $17 $fb
    ld [hl+], a                                   ; $48ce: $22
    xor a                                         ; $48cf: $af
    sub c                                         ; $48d0: $91
    inc a                                         ; $48d1: $3c
    and $05                                       ; $48d2: $e6 $05
    db $dd                                        ; $48d4: $dd
    ld b, c                                       ; $48d5: $41
    adc [hl]                                      ; $48d6: $8e
    or d                                          ; $48d7: $b2
    ld a, [hl+]                                   ; $48d8: $2a
    add sp, $13                                   ; $48d9: $e8 $13
    adc $61                                       ; $48db: $ce $61
    ld e, l                                       ; $48dd: $5d
    call nc, $eb17                                ; $48de: $d4 $17 $eb
    ld [hl-], a                                   ; $48e1: $32
    sbc [hl]                                      ; $48e2: $9e
    sub d                                         ; $48e3: $92
    dec sp                                        ; $48e4: $3b
    rst $20                                       ; $48e5: $e7
    inc d                                         ; $48e6: $14
    call Call_019_6e51                            ; $48e7: $cd $51 $6e
    call nz, $ea18                                ; $48ea: $c4 $18 $ea
    ld [hl+], a                                   ; $48ed: $22
    xor [hl]                                      ; $48ee: $ae
    add c                                         ; $48ef: $81
    ld c, h                                       ; $48f0: $4c
    and $06                                       ; $48f1: $e6 $06
    db $ec                                        ; $48f3: $ec
    ld b, c                                       ; $48f4: $41
    adc [hl]                                      ; $48f5: $8e
    and d                                         ; $48f6: $a2
    ld a, [hl+]                                   ; $48f7: $2a
    add sp, $14                                   ; $48f8: $e8 $14
    adc $60                                       ; $48fa: $ce $60
    ld l, [hl]                                    ; $48fc: $6e
    call nz, $ea18                                ; $48fd: $c4 $18 $ea
    ld [hl+], a                                   ; $4900: $22
    xor [hl]                                      ; $4901: $ae
    add c                                         ; $4902: $81
    inc a                                         ; $4903: $3c
    and $15                                       ; $4904: $e6 $15
    db $dd                                        ; $4906: $dd
    ld b, c                                       ; $4907: $41
    ld a, [hl]                                    ; $4908: $7e
    or e                                          ; $4909: $b3
    add hl, hl                                    ; $490a: $29
    jp hl                                         ; $490b: $e9


    inc de                                        ; $490c: $13
    cp [hl]                                       ; $490d: $be
    ld [hl], c                                    ; $490e: $71
    ld c, l                                       ; $490f: $4d
    push de                                       ; $4910: $d5
    rlca                                          ; $4911: $07
    db $ec                                        ; $4912: $ec
    ld sp, $a29e                                  ; $4913: $31 $9e $a2
    dec hl                                        ; $4916: $2b
    add sp, $14                                   ; $4917: $e8 $14
    adc $60                                       ; $4919: $ce $60
    ld l, l                                       ; $491b: $6d
    call nc, $eb18                                ; $491c: $d4 $18 $eb
    ld [hl+], a                                   ; $491f: $22
    xor [hl]                                      ; $4920: $ae
    sub c                                         ; $4921: $91
    inc a                                         ; $4922: $3c
    and $05                                       ; $4923: $e6 $05
    db $dd                                        ; $4925: $dd
    ld b, c                                       ; $4926: $41
    adc [hl]                                      ; $4927: $8e
    or d                                          ; $4928: $b2
    ld a, [hl+]                                   ; $4929: $2a
    jp hl                                         ; $492a: $e9


    inc de                                        ; $492b: $13
    adc $60                                       ; $492c: $ce $60
    ld l, l                                       ; $492e: $6d
    call nc, $eb18                                ; $492f: $d4 $18 $eb
    ld [hl+], a                                   ; $4932: $22
    xor [hl]                                      ; $4933: $ae
    sub c                                         ; $4934: $91
    inc a                                         ; $4935: $3c
    rst $20                                       ; $4936: $e7
    dec b                                         ; $4937: $05
    db $dd                                        ; $4938: $dd
    ld b, c                                       ; $4939: $41
    ld a, [hl]                                    ; $493a: $7e
    or d                                          ; $493b: $b2
    add hl, hl                                    ; $493c: $29
    jp hl                                         ; $493d: $e9


    inc hl                                        ; $493e: $23
    cp [hl]                                       ; $493f: $be
    add c                                         ; $4940: $81
    ld c, h                                       ; $4941: $4c
    and $16                                       ; $4942: $e6 $16
    db $dd                                        ; $4944: $dd
    ld b, c                                       ; $4945: $41
    ld a, [hl]                                    ; $4946: $7e

Call_019_4947:
    or e                                          ; $4947: $b3
    add hl, de                                    ; $4948: $19
    ld [$bf13], a                                 ; $4949: $ea $13 $bf
    ld [hl], b                                    ; $494c: $70
    ld e, l                                       ; $494d: $5d
    db $e4                                        ; $494e: $e4
    rla                                           ; $494f: $17
    db $eb                                        ; $4950: $eb
    ld sp, $a19e                                  ; $4951: $31 $9e $a1
    dec sp                                        ; $4954: $3b
    rst $20                                       ; $4955: $e7
    inc d                                         ; $4956: $14
    sbc $51                                       ; $4957: $de $51
    ld l, [hl]                                    ; $4959: $6e
    jp $ea18                                      ; $495a: $c3 $18 $ea


    inc hl                                        ; $495d: $23
    xor [hl]                                      ; $495e: $ae
    add c                                         ; $495f: $81
    ld c, h                                       ; $4960: $4c
    push hl                                       ; $4961: $e5
    ld d, $ec                                     ; $4962: $16 $ec
    ld sp, $a18f                                  ; $4964: $31 $8f $a1
    dec hl                                        ; $4967: $2b
    add sp, $04                                   ; $4968: $e8 $04
    adc $51                                       ; $496a: $ce $51
    ld l, [hl]                                    ; $496c: $6e
    jp $ea18                                      ; $496d: $c3 $18 $ea


    ld [hl+], a                                   ; $4970: $22
    xor a                                         ; $4971: $af
    add b                                         ; $4972: $80
    ld c, h                                       ; $4973: $4c
    push hl                                       ; $4974: $e5
    ld d, $ec                                     ; $4975: $16 $ec
    ld sp, $a28f                                  ; $4977: $31 $8f $a2
    ld a, [hl+]                                   ; $497a: $2a
    ld hl, sp+$04                                 ; $497b: $f8 $04
    adc $60                                       ; $497d: $ce $60
    ld l, [hl]                                    ; $497f: $6e
    call nc, $fb18                                ; $4980: $d4 $18 $fb
    ld [hl+], a                                   ; $4983: $22
    xor [hl]                                      ; $4984: $ae
    sub c                                         ; $4985: $91
    dec sp                                        ; $4986: $3b
    rst $20                                       ; $4987: $e7
    dec d                                         ; $4988: $15
    db $dd                                        ; $4989: $dd
    ld d, c                                       ; $498a: $51
    ld l, [hl]                                    ; $498b: $6e
    jp $ea18                                      ; $498c: $c3 $18 $ea


    ld [hl+], a                                   ; $498f: $22
    xor a                                         ; $4990: $af
    add c                                         ; $4991: $81
    inc a                                         ; $4992: $3c
    and $15                                       ; $4993: $e6 $15
    db $dd                                        ; $4995: $dd
    ld d, c                                       ; $4996: $51
    ld a, [hl]                                    ; $4997: $7e
    jp $fa19                                      ; $4998: $c3 $19 $fa


    ld [de], a                                    ; $499b: $12
    cp a                                          ; $499c: $bf
    ld [hl], c                                    ; $499d: $71
    ld c, l                                       ; $499e: $4d
    push de                                       ; $499f: $d5
    ld d, $ec                                     ; $49a0: $16 $ec
    ld sp, $a28e                                  ; $49a2: $31 $8e $a2
    ld a, [hl+]                                   ; $49a5: $2a
    ld hl, sp+$14                                 ; $49a6: $f8 $14
    adc $61                                       ; $49a8: $ce $61
    ld l, l                                       ; $49aa: $6d
    call nz, $eb18                                ; $49ab: $c4 $18 $eb
    ld [hl-], a                                   ; $49ae: $32
    sbc [hl]                                      ; $49af: $9e
    sub c                                         ; $49b0: $91
    dec sp                                        ; $49b1: $3b
    rst $20                                       ; $49b2: $e7
    dec d                                         ; $49b3: $15
    db $dd                                        ; $49b4: $dd
    ld d, c                                       ; $49b5: $51
    ld a, [hl]                                    ; $49b6: $7e
    or d                                          ; $49b7: $b2
    add hl, hl                                    ; $49b8: $29
    jp hl                                         ; $49b9: $e9


    inc de                                        ; $49ba: $13
    cp [hl]                                       ; $49bb: $be
    ld [hl], c                                    ; $49bc: $71
    ld e, l                                       ; $49bd: $5d
    push de                                       ; $49be: $d5
    ld d, $dc                                     ; $49bf: $16 $dc
    ld sp, $a28e                                  ; $49c1: $31 $8e $a2
    ld a, [hl+]                                   ; $49c4: $2a
    add sp, $14                                   ; $49c5: $e8 $14
    adc $60                                       ; $49c7: $ce $60
    ld l, [hl]                                    ; $49c9: $6e
    jp $ea18                                      ; $49ca: $c3 $18 $ea


    ld [de], a                                    ; $49cd: $12
    xor [hl]                                      ; $49ce: $ae
    add c                                         ; $49cf: $81
    ld c, h                                       ; $49d0: $4c
    and $06                                       ; $49d1: $e6 $06
    db $ec                                        ; $49d3: $ec
    ld sp, $a18e                                  ; $49d4: $31 $8e $a1
    ld a, [hl+]                                   ; $49d7: $2a
    add sp, $14                                   ; $49d8: $e8 $14
    adc $60                                       ; $49da: $ce $60
    ld l, [hl]                                    ; $49dc: $6e
    call nc, $eb18                                ; $49dd: $d4 $18 $eb
    ld [de], a                                    ; $49e0: $12
    xor a                                         ; $49e1: $af
    add c                                         ; $49e2: $81
    ld c, h                                       ; $49e3: $4c
    and $06                                       ; $49e4: $e6 $06
    db $ec                                        ; $49e6: $ec
    ld b, c                                       ; $49e7: $41
    adc [hl]                                      ; $49e8: $8e
    or d                                          ; $49e9: $b2
    ld a, [hl+]                                   ; $49ea: $2a
    add sp, $14                                   ; $49eb: $e8 $14
    adc $61                                       ; $49ed: $ce $61
    ld e, l                                       ; $49ef: $5d
    push de                                       ; $49f0: $d5
    rla                                           ; $49f1: $17
    db $ec                                        ; $49f2: $ec
    ld [hl+], a                                   ; $49f3: $22
    sbc [hl]                                      ; $49f4: $9e
    sub c                                         ; $49f5: $91
    dec sp                                        ; $49f6: $3b
    rst $20                                       ; $49f7: $e7
    dec d                                         ; $49f8: $15
    db $dd                                        ; $49f9: $dd
    ld d, b                                       ; $49fa: $50
    ld a, [hl]                                    ; $49fb: $7e
    jp $ea18                                      ; $49fc: $c3 $18 $ea


    ld [hl+], a                                   ; $49ff: $22
    xor [hl]                                      ; $4a00: $ae
    add c                                         ; $4a01: $81
    ld c, h                                       ; $4a02: $4c
    sub $16                                       ; $4a03: $d6 $16
    call c, $8e41                                 ; $4a05: $dc $41 $8e
    or d                                          ; $4a08: $b2
    add hl, hl                                    ; $4a09: $29
    jp hl                                         ; $4a0a: $e9


    inc hl                                        ; $4a0b: $23
    cp [hl]                                       ; $4a0c: $be
    ld [hl], c                                    ; $4a0d: $71
    ld c, l                                       ; $4a0e: $4d
    push hl                                       ; $4a0f: $e5
    rlca                                          ; $4a10: $07
    db $ec                                        ; $4a11: $ec
    ld hl, $919f                                  ; $4a12: $21 $9f $91
    dec sp                                        ; $4a15: $3b
    rst $20                                       ; $4a16: $e7
    dec d                                         ; $4a17: $15
    db $dd                                        ; $4a18: $dd
    ld d, c                                       ; $4a19: $51
    ld l, [hl]                                    ; $4a1a: $6e
    jp $fa18                                      ; $4a1b: $c3 $18 $fa


    inc hl                                        ; $4a1e: $23
    cp [hl]                                       ; $4a1f: $be
    add c                                         ; $4a20: $81
    ld c, h                                       ; $4a21: $4c
    push de                                       ; $4a22: $d5
    ld d, $dc                                     ; $4a23: $16 $dc
    ld sp, $a28f                                  ; $4a25: $31 $8f $a2
    dec hl                                        ; $4a28: $2b
    rst $30                                       ; $4a29: $f7
    inc d                                         ; $4a2a: $14
    db $dd                                        ; $4a2b: $dd
    ld d, c                                       ; $4a2c: $51
    ld a, [hl]                                    ; $4a2d: $7e
    jp $e929                                      ; $4a2e: $c3 $29 $e9


    inc de                                        ; $4a31: $13
    cp [hl]                                       ; $4a32: $be
    ld [hl], c                                    ; $4a33: $71
    ld e, l                                       ; $4a34: $5d
    push de                                       ; $4a35: $d5
    rla                                           ; $4a36: $17
    db $eb                                        ; $4a37: $eb
    ld [hl+], a                                   ; $4a38: $22
    sbc [hl]                                      ; $4a39: $9e
    sub c                                         ; $4a3a: $91
    dec sp                                        ; $4a3b: $3b
    and $15                                       ; $4a3c: $e6 $15
    db $dd                                        ; $4a3e: $dd
    ld b, c                                       ; $4a3f: $41
    adc [hl]                                      ; $4a40: $8e
    or d                                          ; $4a41: $b2
    ld a, [hl+]                                   ; $4a42: $2a
    ld sp, hl                                     ; $4a43: $f9
    inc de                                        ; $4a44: $13
    adc $61                                       ; $4a45: $ce $61
    ld l, l                                       ; $4a47: $6d
    call nz, $eb18                                ; $4a48: $c4 $18 $eb
    ld [hl+], a                                   ; $4a4b: $22
    xor [hl]                                      ; $4a4c: $ae
    sub c                                         ; $4a4d: $91
    ld c, h                                       ; $4a4e: $4c
    and $06                                       ; $4a4f: $e6 $06
    db $ed                                        ; $4a51: $ed
    ld b, c                                       ; $4a52: $41
    adc a                                         ; $4a53: $8f
    and c                                         ; $4a54: $a1
    dec hl                                        ; $4a55: $2b
    ld hl, sp+$04                                 ; $4a56: $f8 $04
    sbc $50                                       ; $4a58: $de $50
    ld a, [hl]                                    ; $4a5a: $7e
    jp $f919                                      ; $4a5b: $c3 $19 $f9


    inc de                                        ; $4a5e: $13
    adc $80                                       ; $4a5f: $ce $80
    ld e, l                                       ; $4a61: $5d
    call nc, $eb17                                ; $4a62: $d4 $17 $eb
    ld [hl+], a                                   ; $4a65: $22
    xor [hl]                                      ; $4a66: $ae
    add c                                         ; $4a67: $81
    inc a                                         ; $4a68: $3c
    and $06                                       ; $4a69: $e6 $06
    db $ec                                        ; $4a6b: $ec
    ld b, c                                       ; $4a6c: $41
    adc a                                         ; $4a6d: $8f
    and d                                         ; $4a6e: $a2
    dec hl                                        ; $4a6f: $2b
    add sp, $14                                   ; $4a70: $e8 $14
    db $dd                                        ; $4a72: $dd
    ld d, c                                       ; $4a73: $51
    ld a, [hl]                                    ; $4a74: $7e
    jp $f919                                      ; $4a75: $c3 $19 $f9


    inc hl                                        ; $4a78: $23
    cp [hl]                                       ; $4a79: $be
    ld [hl], c                                    ; $4a7a: $71
    ld e, l                                       ; $4a7b: $5d
    push de                                       ; $4a7c: $d5
    rla                                           ; $4a7d: $17
    db $eb                                        ; $4a7e: $eb
    ld [hl-], a                                   ; $4a7f: $32
    sbc [hl]                                      ; $4a80: $9e
    sub d                                         ; $4a81: $92
    dec sp                                        ; $4a82: $3b
    add sp, $14                                   ; $4a83: $e8 $14
    call Call_019_6e61                            ; $4a85: $cd $61 $6e
    call nz, $ea18                                ; $4a88: $c4 $18 $ea
    ld [hl+], a                                   ; $4a8b: $22
    xor [hl]                                      ; $4a8c: $ae
    add c                                         ; $4a8d: $81
    ld c, h                                       ; $4a8e: $4c
    sub $15                                       ; $4a8f: $d6 $15
    call c, $7e41                                 ; $4a91: $dc $41 $7e
    or e                                          ; $4a94: $b3
    add hl, hl                                    ; $4a95: $29
    jp hl                                         ; $4a96: $e9


    inc hl                                        ; $4a97: $23
    cp [hl]                                       ; $4a98: $be
    ld [hl], c                                    ; $4a99: $71
    ld c, h                                       ; $4a9a: $4c
    sub $16                                       ; $4a9b: $d6 $16
    db $ec                                        ; $4a9d: $ec
    ld sp, $a28e                                  ; $4a9e: $31 $8e $a2
    dec hl                                        ; $4aa1: $2b
    add sp, $14                                   ; $4aa2: $e8 $14
    call Call_019_6d61                            ; $4aa4: $cd $61 $6d
    call nz, $ea18                                ; $4aa7: $c4 $18 $ea
    ld [hl+], a                                   ; $4aaa: $22
    xor [hl]                                      ; $4aab: $ae
    add d                                         ; $4aac: $82
    ld c, e                                       ; $4aad: $4b
    rst $10                                       ; $4aae: $d7
    dec d                                         ; $4aaf: $15
    call c, Call_019_7e51                         ; $4ab0: $dc $51 $7e
    or e                                          ; $4ab3: $b3
    add hl, hl                                    ; $4ab4: $29
    jp hl                                         ; $4ab5: $e9


    inc hl                                        ; $4ab6: $23
    cp [hl]                                       ; $4ab7: $be
    ld [hl], c                                    ; $4ab8: $71
    ld e, h                                       ; $4ab9: $5c
    push de                                       ; $4aba: $d5
    rla                                           ; $4abb: $17
    call c, $8e31                                 ; $4abc: $dc $31 $8e
    and d                                         ; $4abf: $a2
    ld a, [hl+]                                   ; $4ac0: $2a
    jp hl                                         ; $4ac1: $e9


    inc de                                        ; $4ac2: $13
    cp [hl]                                       ; $4ac3: $be
    ld [hl], b                                    ; $4ac4: $70
    ld e, h                                       ; $4ac5: $5c
    call nc, $dc17                                ; $4ac6: $d4 $17 $dc
    ld sp, $a28e                                  ; $4ac9: $31 $8e $a2
    ld a, [hl+]                                   ; $4acc: $2a
    jp hl                                         ; $4acd: $e9


    inc d                                         ; $4ace: $14
    cp a                                          ; $4acf: $bf
    ld h, c                                       ; $4ad0: $61
    ld e, l                                       ; $4ad1: $5d
    db $e4                                        ; $4ad2: $e4
    rla                                           ; $4ad3: $17
    db $ec                                        ; $4ad4: $ec
    ld sp, $b28e                                  ; $4ad5: $31 $8e $b2
    add hl, hl                                    ; $4ad8: $29
    ld sp, hl                                     ; $4ad9: $f9
    inc de                                        ; $4ada: $13
    cp a                                          ; $4adb: $bf
    ld [hl], c                                    ; $4adc: $71
    ld c, l                                       ; $4add: $4d
    and $06                                       ; $4ade: $e6 $06
    db $dd                                        ; $4ae0: $dd
    ld b, c                                       ; $4ae1: $41
    ld a, [hl]                                    ; $4ae2: $7e
    or e                                          ; $4ae3: $b3
    add hl, de                                    ; $4ae4: $19
    ld a, [$be22]                                 ; $4ae5: $fa $22 $be
    add c                                         ; $4ae8: $81
    ld c, h                                       ; $4ae9: $4c
    rst $20                                       ; $4aea: $e7
    dec b                                         ; $4aeb: $05
    db $dd                                        ; $4aec: $dd
    ld b, c                                       ; $4aed: $41
    ld a, [hl]                                    ; $4aee: $7e
    jp $ea19                                      ; $4aef: $c3 $19 $ea


    ld [hl+], a                                   ; $4af2: $22
    xor [hl]                                      ; $4af3: $ae
    sub c                                         ; $4af4: $91
    ld c, e                                       ; $4af5: $4b
    rst $20                                       ; $4af6: $e7
    dec d                                         ; $4af7: $15
    adc $51                                       ; $4af8: $ce $51
    ld l, [hl]                                    ; $4afa: $6e
    call nz, $eb18                                ; $4afb: $c4 $18 $eb
    inc hl                                        ; $4afe: $23
    sbc [hl]                                      ; $4aff: $9e
    sub d                                         ; $4b00: $92
    ld a, [hl-]                                   ; $4b01: $3a
    rst $20                                       ; $4b02: $e7
    inc d                                         ; $4b03: $14
    call $5d61                                    ; $4b04: $cd $61 $5d
    push de                                       ; $4b07: $d5
    rla                                           ; $4b08: $17
    call c, $8e41                                 ; $4b09: $dc $41 $8e
    and e                                         ; $4b0c: $a3
    ld a, [hl+]                                   ; $4b0d: $2a
    jp hl                                         ; $4b0e: $e9


    inc hl                                        ; $4b0f: $23
    cp l                                          ; $4b10: $bd
    add c                                         ; $4b11: $81
    ld e, e                                       ; $4b12: $5b
    rst $10                                       ; $4b13: $d7
    ld d, $bd                                     ; $4b14: $16 $bd
    ld h, d                                       ; $4b16: $62
    ld l, h                                       ; $4b17: $6c
    push bc                                       ; $4b18: $c5
    daa                                           ; $4b19: $27
    call z, Call_019_7d42                         ; $4b1a: $cc $42 $7d
    or e                                          ; $4b1d: $b3
    jr c, @-$14                                   ; $4b1e: $38 $ea

    inc sp                                        ; $4b20: $33
    sbc h                                         ; $4b21: $9c
    sub e                                         ; $4b22: $93
    ld c, c                                       ; $4b23: $49
    ret                                           ; $4b24: $c9


    ld b, h                                       ; $4b25: $44
    adc e                                         ; $4b26: $8b
    or h                                          ; $4b27: $b4
    ld b, a                                       ; $4b28: $47
    bit 0, e                                      ; $4b29: $cb $43
    ld a, h                                       ; $4b2b: $7c
    push bc                                       ; $4b2c: $c5
    ld h, $dc                                     ; $4b2d: $26 $dc
    ld d, c                                       ; $4b2f: $51
    adc [hl]                                      ; $4b30: $8e
    jp $fa19                                      ; $4b31: $c3 $19 $fa


    inc de                                        ; $4b34: $13
    xor [hl]                                      ; $4b35: $ae
    sub c                                         ; $4b36: $91
    dec sp                                        ; $4b37: $3b
    add sp, $14                                   ; $4b38: $e8 $14
    cp [hl]                                       ; $4b3a: $be
    ld [hl], c                                    ; $4b3b: $71
    ld c, h                                       ; $4b3c: $4c
    and $15                                       ; $4b3d: $e6 $15
    sbc $60                                       ; $4b3f: $de $60
    ld e, l                                       ; $4b41: $5d
    push de                                       ; $4b42: $d5
    rlca                                          ; $4b43: $07
    db $ec                                        ; $4b44: $ec
    ld sp, $b18e                                  ; $4b45: $31 $8e $b1
    add hl, hl                                    ; $4b48: $29
    ld [$ae23], a                                 ; $4b49: $ea $23 $ae
    sub d                                         ; $4b4c: $92
    ld a, [hl-]                                   ; $4b4d: $3a
    jp hl                                         ; $4b4e: $e9


jr_019_4b4f:
    inc hl                                        ; $4b4f: $23
    xor [hl]                                      ; $4b50: $ae
    add c                                         ; $4b51: $81
    ld c, e                                       ; $4b52: $4b
    add sp, $14                                   ; $4b53: $e8 $14
    adc $71                                       ; $4b55: $ce $71
    ld e, l                                       ; $4b57: $5d
    push de                                       ; $4b58: $d5
    rlca                                          ; $4b59: $07
    call z, Call_019_7d42                         ; $4b5a: $cc $42 $7d
    call nz, $db27                                ; $4b5d: $c4 $27 $db
    ld b, d                                       ; $4b60: $42

Call_019_4b61:
    adc l                                         ; $4b61: $8d
    or e                                          ; $4b62: $b3
    jr z, jr_019_4b4f                             ; $4b63: $28 $ea

    ld [hl-], a                                   ; $4b65: $32
    sbc [hl]                                      ; $4b66: $9e
    sub d                                         ; $4b67: $92
    dec sp                                        ; $4b68: $3b
    add sp, $14                                   ; $4b69: $e8 $14
    cp l                                          ; $4b6b: $bd
    add c                                         ; $4b6c: $81
    ld e, e                                       ; $4b6d: $5b
    rst $20                                       ; $4b6e: $e7
    dec d                                         ; $4b6f: $15
    adc $51                                       ; $4b70: $ce $51

Call_019_4b72:
    ld e, l                                       ; $4b72: $5d
    push de                                       ; $4b73: $d5
    ld d, $dd                                     ; $4b74: $16 $dd
    ld b, c                                       ; $4b76: $41
    ld a, [hl]                                    ; $4b77: $7e
    jp $ea28                                      ; $4b78: $c3 $28 $ea


    ld [hl+], a                                   ; $4b7b: $22
    xor [hl]                                      ; $4b7c: $ae
    sub c                                         ; $4b7d: $91
    dec sp                                        ; $4b7e: $3b
    add sp, $14                                   ; $4b7f: $e8 $14
    cp [hl]                                       ; $4b81: $be
    ld [hl], c                                    ; $4b82: $71
    ld e, h                                       ; $4b83: $5c
    and $15                                       ; $4b84: $e6 $15
    db $dd                                        ; $4b86: $dd
    ld d, c                                       ; $4b87: $51
    ld l, [hl]                                    ; $4b88: $6e
    jp $eb18                                      ; $4b89: $c3 $18 $eb


    ld hl, $a19f                                  ; $4b8c: $21 $9f $a1
    ld a, [hl+]                                   ; $4b8f: $2a
    jp hl                                         ; $4b90: $e9


    inc de                                        ; $4b91: $13
    cp [hl]                                       ; $4b92: $be
    add c                                         ; $4b93: $81
    ld c, h                                       ; $4b94: $4c
    rst $10                                       ; $4b95: $d7
    ld b, $ce                                     ; $4b96: $06 $ce
    ld d, c                                       ; $4b98: $51
    ld l, l                                       ; $4b99: $6d
    call nz, $eb17                                ; $4b9a: $c4 $17 $eb
    ld [hl-], a                                   ; $4b9d: $32
    sbc [hl]                                      ; $4b9e: $9e
    or d                                          ; $4b9f: $b2
    add hl, sp                                    ; $4ba0: $39
    ld sp, hl                                     ; $4ba1: $f9
    inc hl                                        ; $4ba2: $23
    xor [hl]                                      ; $4ba3: $ae
    add c                                         ; $4ba4: $81
    ld c, h                                       ; $4ba5: $4c
    and $15                                       ; $4ba6: $e6 $15
    db $dd                                        ; $4ba8: $dd
    ld d, c                                       ; $4ba9: $51
    ld l, l                                       ; $4baa: $6d
    call nz, $dc17                                ; $4bab: $c4 $17 $dc
    ld [hl-], a                                   ; $4bae: $32
    adc [hl]                                      ; $4baf: $8e
    and e                                         ; $4bb0: $a3
    add hl, hl                                    ; $4bb1: $29
    ld [$ae13], a                                 ; $4bb2: $ea $13 $ae
    add b                                         ; $4bb5: $80
    ld c, e                                       ; $4bb6: $4b
    and $15                                       ; $4bb7: $e6 $15
    db $dd                                        ; $4bb9: $dd
    ld d, c                                       ; $4bba: $51
    ld a, l                                       ; $4bbb: $7d
    jp $eb18                                      ; $4bbc: $c3 $18 $eb


    ld [hl-], a                                   ; $4bbf: $32
    adc [hl]                                      ; $4bc0: $8e
    and e                                         ; $4bc1: $a3
    add hl, hl                                    ; $4bc2: $29
    ld [$ae22], a                                 ; $4bc3: $ea $22 $ae
    sub d                                         ; $4bc6: $92
    dec sp                                        ; $4bc7: $3b
    jp hl                                         ; $4bc8: $e9


    inc d                                         ; $4bc9: $14
    cp [hl]                                       ; $4bca: $be
    ld [hl], c                                    ; $4bcb: $71
    ld e, h                                       ; $4bcc: $5c
    and $16                                       ; $4bcd: $e6 $16
    db $dd                                        ; $4bcf: $dd
    ld d, c                                       ; $4bd0: $51
    ld a, l                                       ; $4bd1: $7d
    db $d3                                        ; $4bd2: $d3
    daa                                           ; $4bd3: $27
    db $eb                                        ; $4bd4: $eb
    ld [hl-], a                                   ; $4bd5: $32
    adc [hl]                                      ; $4bd6: $8e
    and d                                         ; $4bd7: $a2
    ld a, [hl+]                                   ; $4bd8: $2a
    jp hl                                         ; $4bd9: $e9


    inc de                                        ; $4bda: $13
    cp [hl]                                       ; $4bdb: $be
    add c                                         ; $4bdc: $81
    ld c, h                                       ; $4bdd: $4c
    and $05                                       ; $4bde: $e6 $05
    db $dd                                        ; $4be0: $dd
    ld d, c                                       ; $4be1: $51
    ld l, l                                       ; $4be2: $6d
    call nz, $dc18                                ; $4be3: $c4 $18 $dc
    ld [hl-], a                                   ; $4be6: $32
    adc [hl]                                      ; $4be7: $8e
    or d                                          ; $4be8: $b2
    add hl, hl                                    ; $4be9: $29
    ld sp, hl                                     ; $4bea: $f9
    ld [hl+], a                                   ; $4beb: $22
    xor a                                         ; $4bec: $af
    sub c                                         ; $4bed: $91
    dec sp                                        ; $4bee: $3b
    rst $30                                       ; $4bef: $f7
    inc d                                         ; $4bf0: $14
    adc $51                                       ; $4bf1: $ce $51
    ld e, l                                       ; $4bf3: $5d
    push de                                       ; $4bf4: $d5
    rla                                           ; $4bf5: $17
    db $ec                                        ; $4bf6: $ec
    ld b, c                                       ; $4bf7: $41
    adc [hl]                                      ; $4bf8: $8e
    or e                                          ; $4bf9: $b3
    add hl, hl                                    ; $4bfa: $29
    db $eb                                        ; $4bfb: $eb
    ld [hl+], a                                   ; $4bfc: $22
    sbc [hl]                                      ; $4bfd: $9e
    and d                                         ; $4bfe: $a2
    ld a, [hl-]                                   ; $4bff: $3a
    jp hl                                         ; $4c00: $e9


    inc de                                        ; $4c01: $13
    cp [hl]                                       ; $4c02: $be
    add b                                         ; $4c03: $80
    ld e, e                                       ; $4c04: $5b
    push hl                                       ; $4c05: $e5
    dec d                                         ; $4c06: $15
    db $dd                                        ; $4c07: $dd
    ld d, c                                       ; $4c08: $51
    ld l, l                                       ; $4c09: $6d
    call nz, $ec17                                ; $4c0a: $c4 $17 $ec
    ld b, c                                       ; $4c0d: $41
    adc [hl]                                      ; $4c0e: $8e
    or e                                          ; $4c0f: $b3
    add hl, hl                                    ; $4c10: $29
    ld [$ae22], a                                 ; $4c11: $ea $22 $ae
    sub c                                         ; $4c14: $91
    dec sp                                        ; $4c15: $3b
    add sp, $05                                   ; $4c16: $e8 $05
    cp [hl]                                       ; $4c18: $be
    ld h, c                                       ; $4c19: $61
    ld e, h                                       ; $4c1a: $5c
    push de                                       ; $4c1b: $d5
    dec d                                         ; $4c1c: $15
    db $dd                                        ; $4c1d: $dd
    ld d, c                                       ; $4c1e: $51
    ld l, l                                       ; $4c1f: $6d
    call nz, $ec17                                ; $4c20: $c4 $17 $ec
    ld sp, $a28f                                  ; $4c23: $31 $8f $a2
    ld a, [hl+]                                   ; $4c26: $2a
    ld sp, hl                                     ; $4c27: $f9
    inc de                                        ; $4c28: $13
    cp [hl]                                       ; $4c29: $be
    add b                                         ; $4c2a: $80
    ld c, h                                       ; $4c2b: $4c
    sub $06                                       ; $4c2c: $d6 $06
    call Call_019_6d51                            ; $4c2e: $cd $51 $6d
    call nz, $dc17                                ; $4c31: $c4 $17 $dc
    ld [hl-], a                                   ; $4c34: $32
    adc [hl]                                      ; $4c35: $8e
    or d                                          ; $4c36: $b2
    add hl, hl                                    ; $4c37: $29
    ld sp, hl                                     ; $4c38: $f9
    inc hl                                        ; $4c39: $23
    xor [hl]                                      ; $4c3a: $ae
    add c                                         ; $4c3b: $81
    ld c, e                                       ; $4c3c: $4b
    rst $20                                       ; $4c3d: $e7
    dec d                                         ; $4c3e: $15
    call Call_019_6d61                            ; $4c3f: $cd $61 $6d
    push de                                       ; $4c42: $d5
    rla                                           ; $4c43: $17
    call c, $8e41                                 ; $4c44: $dc $41 $8e
    or e                                          ; $4c47: $b3
    add hl, hl                                    ; $4c48: $29
    ld [$ae13], a                                 ; $4c49: $ea $13 $ae
    add c                                         ; $4c4c: $81
    ld c, e                                       ; $4c4d: $4b
    and $15                                       ; $4c4e: $e6 $15
    call Call_019_6d61                            ; $4c50: $cd $61 $6d
    call nc, $ec17                                ; $4c53: $d4 $17 $ec
    ld [hl-], a                                   ; $4c56: $32
    adc a                                         ; $4c57: $8f
    and e                                         ; $4c58: $a3
    ld a, [hl+]                                   ; $4c59: $2a
    jp hl                                         ; $4c5a: $e9


    inc de                                        ; $4c5b: $13
    cp [hl]                                       ; $4c5c: $be
    ld [hl], c                                    ; $4c5d: $71
    ld c, h                                       ; $4c5e: $4c
    sub $16                                       ; $4c5f: $d6 $16
    db $dd                                        ; $4c61: $dd
    ld b, c                                       ; $4c62: $41
    ld a, l                                       ; $4c63: $7d
    call nz, $eb18                                ; $4c64: $c4 $18 $eb
    ld [hl+], a                                   ; $4c67: $22
    xor [hl]                                      ; $4c68: $ae
    and c                                         ; $4c69: $a1
    ld c, d                                       ; $4c6a: $4a

jr_019_4c6b:
    rst $20                                       ; $4c6b: $e7
    inc d                                         ; $4c6c: $14
    adc $61                                       ; $4c6d: $ce $61
    ld l, l                                       ; $4c6f: $6d
    push de                                       ; $4c70: $d5
    rla                                           ; $4c71: $17
    call c, $8e32                                 ; $4c72: $dc $32 $8e
    and d                                         ; $4c75: $a2
    add hl, sp                                    ; $4c76: $39
    jp hl                                         ; $4c77: $e9


    inc hl                                        ; $4c78: $23
    cp [hl]                                       ; $4c79: $be
    add c                                         ; $4c7a: $81
    ld c, e                                       ; $4c7b: $4b
    and $15                                       ; $4c7c: $e6 $15
    db $dd                                        ; $4c7e: $dd
    ld d, c                                       ; $4c7f: $51
    ld l, [hl]                                    ; $4c80: $6e
    jp $ea19                                      ; $4c81: $c3 $19 $ea


    ld [hl+], a                                   ; $4c84: $22
    xor [hl]                                      ; $4c85: $ae
    add c                                         ; $4c86: $81
    ld c, h                                       ; $4c87: $4c
    rst $10                                       ; $4c88: $d7
    ld d, $cd                                     ; $4c89: $16 $cd
    ld d, c                                       ; $4c8b: $51

jr_019_4c8c:
    ld l, l                                       ; $4c8c: $6d
    push bc                                       ; $4c8d: $c5
    jr jr_019_4c6b                                ; $4c8e: $18 $db

    ld [hl-], a                                   ; $4c90: $32
    adc l                                         ; $4c91: $8d
    or d                                          ; $4c92: $b2
    add hl, sp                                    ; $4c93: $39
    add sp, $24                                   ; $4c94: $e8 $24
    cp [hl]                                       ; $4c96: $be
    ld [hl], c                                    ; $4c97: $71
    ld e, h                                       ; $4c98: $5c
    push de                                       ; $4c99: $d5
    ld d, $cd                                     ; $4c9a: $16 $cd
    ld b, d                                       ; $4c9c: $42
    ld a, [hl]                                    ; $4c9d: $7e
    or h                                          ; $4c9e: $b4
    jr z, jr_019_4c8c                             ; $4c9f: $28 $eb

    ld [hl-], a                                   ; $4ca1: $32
    sbc [hl]                                      ; $4ca2: $9e
    and d                                         ; $4ca3: $a2
    ld a, [hl-]                                   ; $4ca4: $3a
    add sp, $14                                   ; $4ca5: $e8 $14
    adc $70                                       ; $4ca7: $ce $70
    ld e, l                                       ; $4ca9: $5d
    push de                                       ; $4caa: $d5
    rla                                           ; $4cab: $17
    call c, $8e41                                 ; $4cac: $dc $41 $8e
    or d                                          ; $4caf: $b2
    add hl, hl                                    ; $4cb0: $29
    ld [$ae23], a                                 ; $4cb1: $ea $23 $ae
    add c                                         ; $4cb4: $81
    dec sp                                        ; $4cb5: $3b
    rst $20                                       ; $4cb6: $e7
    inc d                                         ; $4cb7: $14
    adc $61                                       ; $4cb8: $ce $61
    ld e, l                                       ; $4cba: $5d
    push de                                       ; $4cbb: $d5
    rla                                           ; $4cbc: $17
    call c, $8d41                                 ; $4cbd: $dc $41 $8d
    jp nz, $ea29                                  ; $4cc0: $c2 $29 $ea

    inc hl                                        ; $4cc3: $23
    xor [hl]                                      ; $4cc4: $ae
    sub c                                         ; $4cc5: $91
    ld a, [hl-]                                   ; $4cc6: $3a
    add sp, $14                                   ; $4cc7: $e8 $14
    cp [hl]                                       ; $4cc9: $be
    ld h, d                                       ; $4cca: $62
    ld e, h                                       ; $4ccb: $5c
    sub $15                                       ; $4ccc: $d6 $15
    db $dd                                        ; $4cce: $dd
    ld d, c                                       ; $4ccf: $51
    ld l, l                                       ; $4cd0: $6d
    call nz, $eb18                                ; $4cd1: $c4 $18 $eb
    ld [hl-], a                                   ; $4cd4: $32
    sbc [hl]                                      ; $4cd5: $9e
    and d                                         ; $4cd6: $a2
    add hl, hl                                    ; $4cd7: $29
    jp hl                                         ; $4cd8: $e9


    inc hl                                        ; $4cd9: $23
    xor [hl]                                      ; $4cda: $ae
    sub b                                         ; $4cdb: $90
    ld c, e                                       ; $4cdc: $4b
    rst $30                                       ; $4cdd: $f7
    inc d                                         ; $4cde: $14
    adc $51                                       ; $4cdf: $ce $51
    ld e, l                                       ; $4ce1: $5d
    call nc, $ed07                                ; $4ce2: $d4 $07 $ed
    ld sp, $b28f                                  ; $4ce5: $31 $8f $b2
    add hl, hl                                    ; $4ce8: $29
    ld sp, hl                                     ; $4ce9: $f9
    ld [hl+], a                                   ; $4cea: $22
    cp [hl]                                       ; $4ceb: $be
    add c                                         ; $4cec: $81
    inc a                                         ; $4ced: $3c
    rst $20                                       ; $4cee: $e7
    dec b                                         ; $4cef: $05
    db $dd                                        ; $4cf0: $dd
    ld h, b                                       ; $4cf1: $60
    ld l, l                                       ; $4cf2: $6d
    call nc, $ec17                                ; $4cf3: $d4 $17 $ec
    ld sp, $b28e                                  ; $4cf6: $31 $8e $b2
    add hl, hl                                    ; $4cf9: $29
    ld [$af13], a                                 ; $4cfa: $ea $13 $af
    add c                                         ; $4cfd: $81
    ld c, e                                       ; $4cfe: $4b
    rst $20                                       ; $4cff: $e7
    inc d                                         ; $4d00: $14
    adc $61                                       ; $4d01: $ce $61
    ld e, l                                       ; $4d03: $5d
    call nc, $ec16                                ; $4d04: $d4 $16 $ec
    ld b, c                                       ; $4d07: $41
    adc [hl]                                      ; $4d08: $8e
    or e                                          ; $4d09: $b3
    add hl, hl                                    ; $4d0a: $29
    ld [$ae22], a                                 ; $4d0b: $ea $22 $ae
    and c                                         ; $4d0e: $a1
    ld a, [hl-]                                   ; $4d0f: $3a
    add sp, $14                                   ; $4d10: $e8 $14
    cp [hl]                                       ; $4d12: $be
    ld [hl], c                                    ; $4d13: $71
    ld e, h                                       ; $4d14: $5c
    and $06                                       ; $4d15: $e6 $06
    db $dd                                        ; $4d17: $dd
    ld b, c                                       ; $4d18: $41
    ld a, [hl]                                    ; $4d19: $7e
    jp $fa28                                      ; $4d1a: $c3 $28 $fa


    ld [hl+], a                                   ; $4d1d: $22
    sbc [hl]                                      ; $4d1e: $9e
    sub c                                         ; $4d1f: $91
    ld a, [hl-]                                   ; $4d20: $3a
    ld hl, sp+$13                                 ; $4d21: $f8 $13
    adc $70                                       ; $4d23: $ce $70
    ld e, l                                       ; $4d25: $5d
    push de                                       ; $4d26: $d5
    ld d, $dc                                     ; $4d27: $16 $dc
    ld b, c                                       ; $4d29: $41
    adc [hl]                                      ; $4d2a: $8e
    jp $eb19                                      ; $4d2b: $c3 $19 $eb


    inc hl                                        ; $4d2e: $23
    sbc [hl]                                      ; $4d2f: $9e
    sub d                                         ; $4d30: $92
    ld a, [hl-]                                   ; $4d31: $3a
    add sp, $14                                   ; $4d32: $e8 $14
    cp [hl]                                       ; $4d34: $be
    ld [hl], c                                    ; $4d35: $71
    ld e, h                                       ; $4d36: $5c
    push hl                                       ; $4d37: $e5
    ld d, $ec                                     ; $4d38: $16 $ec
    ld b, c                                       ; $4d3a: $41
    ld a, [hl]                                    ; $4d3b: $7e
    jp $eb18                                      ; $4d3c: $c3 $18 $eb


    ld [hl+], a                                   ; $4d3f: $22
    sbc a                                         ; $4d40: $9f
    and d                                         ; $4d41: $a2
    ld a, [hl+]                                   ; $4d42: $2a
    jp hl                                         ; $4d43: $e9


    inc de                                        ; $4d44: $13
    cp [hl]                                       ; $4d45: $be
    add c                                         ; $4d46: $81
    ld c, h                                       ; $4d47: $4c
    rst $20                                       ; $4d48: $e7
    dec b                                         ; $4d49: $05
    adc $61                                       ; $4d4a: $ce $61
    ld e, h                                       ; $4d4c: $5c
    push hl                                       ; $4d4d: $e5
    ld d, $dd                                     ; $4d4e: $16 $dd
    ld b, c                                       ; $4d50: $41
    ld a, [hl]                                    ; $4d51: $7e
    db $d3                                        ; $4d52: $d3
    rla                                           ; $4d53: $17
    ei                                            ; $4d54: $fb
    ld sp, $b28f                                  ; $4d55: $31 $8f $b2
    add hl, hl                                    ; $4d58: $29
    ld [$ae22], a                                 ; $4d59: $ea $22 $ae
    sub c                                         ; $4d5c: $91
    dec sp                                        ; $4d5d: $3b
    ld hl, sp+$04                                 ; $4d5e: $f8 $04
    cp a                                          ; $4d60: $bf
    ld [hl], c                                    ; $4d61: $71
    ld c, h                                       ; $4d62: $4c
    and $05                                       ; $4d63: $e6 $05
    sbc $51                                       ; $4d65: $de $51
    ld l, l                                       ; $4d67: $6d
    call nc, $ec17                                ; $4d68: $d4 $17 $ec
    ld sp, $b38e                                  ; $4d6b: $31 $8e $b3
    add hl, de                                    ; $4d6e: $19
    db $eb                                        ; $4d6f: $eb
    ld [hl+], a                                   ; $4d70: $22
    sbc [hl]                                      ; $4d71: $9e
    and c                                         ; $4d72: $a1
    ld a, [hl-]                                   ; $4d73: $3a
    ld sp, hl                                     ; $4d74: $f9
    inc de                                        ; $4d75: $13
    cp [hl]                                       ; $4d76: $be
    add c                                         ; $4d77: $81
    ld c, e                                       ; $4d78: $4b
    rst $20                                       ; $4d79: $e7
    inc d                                         ; $4d7a: $14
    adc $61                                       ; $4d7b: $ce $61
    ld e, l                                       ; $4d7d: $5d
    push de                                       ; $4d7e: $d5
    ld d, $dd                                     ; $4d7f: $16 $dd
    ld b, c                                       ; $4d81: $41
    ld a, [hl]                                    ; $4d82: $7e
    call nz, $ec18                                ; $4d83: $c4 $18 $ec
    ld [hl+], a                                   ; $4d86: $22
    adc [hl]                                      ; $4d87: $8e
    or d                                          ; $4d88: $b2
    add hl, hl                                    ; $4d89: $29
    ld a, [$ae22]                                 ; $4d8a: $fa $22 $ae
    sub c                                         ; $4d8d: $91
    ld a, [hl-]                                   ; $4d8e: $3a
    ld hl, sp+$13                                 ; $4d8f: $f8 $13
    cp [hl]                                       ; $4d91: $be
    add c                                         ; $4d92: $81
    ld c, e                                       ; $4d93: $4b
    rst $20                                       ; $4d94: $e7
    inc d                                         ; $4d95: $14
    call $5c70                                    ; $4d96: $cd $70 $5c
    and $16                                       ; $4d99: $e6 $16
    adc $51                                       ; $4d9b: $ce $51
    ld e, l                                       ; $4d9d: $5d
    push de                                       ; $4d9e: $d5
    ld d, $dd                                     ; $4d9f: $16 $dd
    ld b, c                                       ; $4da1: $41
    ld a, l                                       ; $4da2: $7d
    call nz, $dc17                                ; $4da3: $c4 $17 $dc
    ld sp, $c37e                                  ; $4da6: $31 $7e $c3
    jr @-$12                                      ; $4da9: $18 $ec

    ld [hl+], a                                   ; $4dab: $22
    adc [hl]                                      ; $4dac: $8e
    or d                                          ; $4dad: $b2
    jr z, @-$04                                   ; $4dae: $28 $fa

    ld [hl+], a                                   ; $4db0: $22
    sbc [hl]                                      ; $4db1: $9e
    and d                                         ; $4db2: $a2
    ld a, [hl+]                                   ; $4db3: $2a
    jp hl                                         ; $4db4: $e9


    inc de                                        ; $4db5: $13
    cp [hl]                                       ; $4db6: $be
    sub b                                         ; $4db7: $90
    ld c, d                                       ; $4db8: $4a
    ld hl, sp+$14                                 ; $4db9: $f8 $14
    cp [hl]                                       ; $4dbb: $be
    ld [hl], c                                    ; $4dbc: $71
    ld c, h                                       ; $4dbd: $4c
    rst $20                                       ; $4dbe: $e7
    dec d                                         ; $4dbf: $15
    adc $61                                       ; $4dc0: $ce $61
    ld e, l                                       ; $4dc2: $5d
    sub $16                                       ; $4dc3: $d6 $16
    call Call_019_6d51                            ; $4dc5: $cd $51 $6d
    push de                                       ; $4dc8: $d5
    rla                                           ; $4dc9: $17
    call Call_019_7d41                            ; $4dca: $cd $41 $7d
    call nz, $dc17                                ; $4dcd: $c4 $17 $dc
    ld b, c                                       ; $4dd0: $41
    ld a, [hl]                                    ; $4dd1: $7e
    call nz, $db18                                ; $4dd2: $c4 $18 $db
    ld sp, $b29d                                  ; $4dd5: $31 $9d $b2
    add hl, hl                                    ; $4dd8: $29
    db $eb                                        ; $4dd9: $eb
    ld [hl+], a                                   ; $4dda: $22

jr_019_4ddb:
    sbc [hl]                                      ; $4ddb: $9e
    and d                                         ; $4ddc: $a2
    ld a, [hl+]                                   ; $4ddd: $2a
    ld [$ae13], a                                 ; $4dde: $ea $13 $ae
    sub c                                         ; $4de1: $91
    dec sp                                        ; $4de2: $3b
    add sp, $14                                   ; $4de3: $e8 $14
    cp [hl]                                       ; $4de5: $be
    ld [hl], c                                    ; $4de6: $71
    ld c, h                                       ; $4de7: $4c
    rst $10                                       ; $4de8: $d7
    dec b                                         ; $4de9: $05
    call $6b70                                    ; $4dea: $cd $70 $6b
    push hl                                       ; $4ded: $e5
    dec d                                         ; $4dee: $15
    call Call_019_6c61                            ; $4def: $cd $61 $6c
    push de                                       ; $4df2: $d5
    ld d, $dc                                     ; $4df3: $16 $dc
    ld d, b                                       ; $4df5: $50
    ld a, l                                       ; $4df6: $7d
    call nc, $dd17                                ; $4df7: $d4 $17 $dd
    ld sp, $c37d                                  ; $4dfa: $31 $7d $c3
    jr jr_019_4ddb                                ; $4dfd: $18 $dc

    ld [hl-], a                                   ; $4dff: $32
    adc [hl]                                      ; $4e00: $8e
    or e                                          ; $4e01: $b3
    add hl, hl                                    ; $4e02: $29
    ld [$9e22], a                                 ; $4e03: $ea $22 $9e
    and d                                         ; $4e06: $a2
    ld a, [hl+]                                   ; $4e07: $2a
    jp c, $ae13                                   ; $4e08: $da $13 $ae

    and c                                         ; $4e0b: $a1
    ld c, d                                       ; $4e0c: $4a
    add sp, $23                                   ; $4e0d: $e8 $23
    xor [hl]                                      ; $4e0f: $ae
    add c                                         ; $4e10: $81
    dec sp                                        ; $4e11: $3b
    add sp, $14                                   ; $4e12: $e8 $14
    call $5b80                                    ; $4e14: $cd $80 $5b
    rst $20                                       ; $4e17: $e7
    dec d                                         ; $4e18: $15
    call $5c71                                    ; $4e19: $cd $71 $5c
    and $16                                       ; $4e1c: $e6 $16
    adc $51                                       ; $4e1e: $ce $51
    ld l, l                                       ; $4e20: $6d
    push de                                       ; $4e21: $d5
    ld d, $dc                                     ; $4e22: $16 $dc
    ld d, c                                       ; $4e24: $51
    ld a, l                                       ; $4e25: $7d
    push bc                                       ; $4e26: $c5
    rla                                           ; $4e27: $17

jr_019_4e28:
    call Call_019_7d42                            ; $4e28: $cd $42 $7d
    call nz, $dc27                                ; $4e2b: $c4 $27 $dc
    ld b, d                                       ; $4e2e: $42
    ld a, l                                       ; $4e2f: $7d
    push bc                                       ; $4e30: $c5
    rla                                           ; $4e31: $17
    call c, Call_019_7d41                         ; $4e32: $dc $41 $7d
    jp $eb27                                      ; $4e35: $c3 $27 $eb


    ld sp, $c28e                                  ; $4e38: $31 $8e $c2
    jr z, jr_019_4e28                             ; $4e3b: $28 $eb

    ld [hl-], a                                   ; $4e3d: $32
    sbc [hl]                                      ; $4e3e: $9e
    and d                                         ; $4e3f: $a2
    add hl, hl                                    ; $4e40: $29
    ld [$ad22], a                                 ; $4e41: $ea $22 $ad
    and c                                         ; $4e44: $a1
    ld a, [hl-]                                   ; $4e45: $3a
    jp hl                                         ; $4e46: $e9


    inc d                                         ; $4e47: $14
    sbc a                                         ; $4e48: $9f
    add d                                         ; $4e49: $82
    ld a, [hl-]                                   ; $4e4a: $3a
    add sp, $13                                   ; $4e4b: $e8 $13
    cp [hl]                                       ; $4e4d: $be
    add c                                         ; $4e4e: $81
    ld c, e                                       ; $4e4f: $4b
    reti                                          ; $4e50: $d9


    dec b                                         ; $4e51: $05
    xor [hl]                                      ; $4e52: $ae
    ld [hl], c                                    ; $4e53: $71
    ld c, e                                       ; $4e54: $4b
    add sp, $14                                   ; $4e55: $e8 $14
    cp [hl]                                       ; $4e57: $be
    add c                                         ; $4e58: $81
    ld c, e                                       ; $4e59: $4b
    rst $20                                       ; $4e5a: $e7
    inc d                                         ; $4e5b: $14
    cp [hl]                                       ; $4e5c: $be
    ld [hl], c                                    ; $4e5d: $71
    ld c, e                                       ; $4e5e: $4b
    rst $20                                       ; $4e5f: $e7
    dec d                                         ; $4e60: $15
    cp [hl]                                       ; $4e61: $be
    ld [hl], c                                    ; $4e62: $71
    ld e, e                                       ; $4e63: $5b
    and $15                                       ; $4e64: $e6 $15
    call $5c61                                    ; $4e66: $cd $61 $5c
    rst $10                                       ; $4e69: $d7
    dec d                                         ; $4e6a: $15
    cp l                                          ; $4e6b: $bd
    ld [hl], c                                    ; $4e6c: $71
    ld e, e                                       ; $4e6d: $5b
    and $15                                       ; $4e6e: $e6 $15
    call $5c61                                    ; $4e70: $cd $61 $5c
    rst $10                                       ; $4e73: $d7
    dec d                                         ; $4e74: $15
    cp l                                          ; $4e75: $bd
    ld [hl], c                                    ; $4e76: $71
    ld e, e                                       ; $4e77: $5b
    and $15                                       ; $4e78: $e6 $15
    call $5c61                                    ; $4e7a: $cd $61 $5c
    sub $15                                       ; $4e7d: $d6 $15
    call Call_019_6b61                            ; $4e7f: $cd $61 $6b
    and $15                                       ; $4e82: $e6 $15
    call $5c61                                    ; $4e84: $cd $61 $5c
    sub $15                                       ; $4e87: $d6 $15
    call $5b71                                    ; $4e89: $cd $71 $5b
    rst $10                                       ; $4e8c: $d7
    dec d                                         ; $4e8d: $15
    cp l                                          ; $4e8e: $bd
    ld [hl], c                                    ; $4e8f: $71
    ld e, e                                       ; $4e90: $5b
    rst $10                                       ; $4e91: $d7
    dec d                                         ; $4e92: $15
    cp [hl]                                       ; $4e93: $be
    ld [hl], c                                    ; $4e94: $71
    ld c, e                                       ; $4e95: $4b
    rst $20                                       ; $4e96: $e7
    inc d                                         ; $4e97: $14
    cp [hl]                                       ; $4e98: $be
    ld [hl], c                                    ; $4e99: $71
    ld c, e                                       ; $4e9a: $4b
    rst $20                                       ; $4e9b: $e7
    dec d                                         ; $4e9c: $15
    cp [hl]                                       ; $4e9d: $be
    ld [hl], c                                    ; $4e9e: $71
    ld c, h                                       ; $4e9f: $4c
    rst $20                                       ; $4ea0: $e7
    inc d                                         ; $4ea1: $14
    adc $71                                       ; $4ea2: $ce $71
    ld c, h                                       ; $4ea4: $4c
    rst $10                                       ; $4ea5: $d7
    dec b                                         ; $4ea6: $05
    cp [hl]                                       ; $4ea7: $be
    ld h, c                                       ; $4ea8: $61
    ld e, e                                       ; $4ea9: $5b
    and $14                                       ; $4eaa: $e6 $14
    adc $71                                       ; $4eac: $ce $71
    ld e, h                                       ; $4eae: $5c
    rst $10                                       ; $4eaf: $d7
    dec d                                         ; $4eb0: $15
    adc $70                                       ; $4eb1: $ce $70
    ld e, e                                       ; $4eb3: $5b
    and $15                                       ; $4eb4: $e6 $15
    adc $61                                       ; $4eb6: $ce $61
    ld e, h                                       ; $4eb8: $5c
    and $15                                       ; $4eb9: $e6 $15
    call $5b70                                    ; $4ebb: $cd $70 $5b
    rst $20                                       ; $4ebe: $e7
    dec d                                         ; $4ebf: $15
    cp l                                          ; $4ec0: $bd
    ld [hl], c                                    ; $4ec1: $71
    ld c, e                                       ; $4ec2: $4b
    rst $20                                       ; $4ec3: $e7
    inc d                                         ; $4ec4: $14
    cp l                                          ; $4ec5: $bd
    add c                                         ; $4ec6: $81
    ld c, e                                       ; $4ec7: $4b
    add sp, $14                                   ; $4ec8: $e8 $14
    xor [hl]                                      ; $4eca: $ae
    add d                                         ; $4ecb: $82

jr_019_4ecc:
    ld a, [hl-]                                   ; $4ecc: $3a
    jp hl                                         ; $4ecd: $e9


    inc hl                                        ; $4ece: $23
    xor l                                         ; $4ecf: $ad
    sub d                                         ; $4ed0: $92
    ld a, [hl-]                                   ; $4ed1: $3a

jr_019_4ed2:
    jp c, $9e23                                   ; $4ed2: $da $23 $9e

    and d                                         ; $4ed5: $a2
    add hl, hl                                    ; $4ed6: $29
    ld [$9e22], a                                 ; $4ed7: $ea $22 $9e
    and d                                         ; $4eda: $a2
    add hl, hl                                    ; $4edb: $29
    db $db                                        ; $4edc: $db
    ld [hl+], a                                   ; $4edd: $22
    sbc [hl]                                      ; $4ede: $9e
    and e                                         ; $4edf: $a3
    add hl, hl                                    ; $4ee0: $29
    db $db                                        ; $4ee1: $db
    ld [hl+], a                                   ; $4ee2: $22
    sbc [hl]                                      ; $4ee3: $9e
    and e                                         ; $4ee4: $a3
    add hl, hl                                    ; $4ee5: $29
    db $db                                        ; $4ee6: $db
    ld [hl+], a                                   ; $4ee7: $22
    sbc l                                         ; $4ee8: $9d
    or e                                          ; $4ee9: $b3
    add hl, hl                                    ; $4eea: $29
    db $db                                        ; $4eeb: $db
    ld [hl-], a                                   ; $4eec: $32
    adc l                                         ; $4eed: $8d
    or e                                          ; $4eee: $b3
    jr z, jr_019_4ecc                             ; $4eef: $28 $db

    ld [hl-], a                                   ; $4ef1: $32
    adc l                                         ; $4ef2: $8d
    or h                                          ; $4ef3: $b4
    jr jr_019_4ed2                                ; $4ef4: $18 $dc

    ld sp, $c38d                                  ; $4ef6: $31 $8d $c3
    daa                                           ; $4ef9: $27
    call c, Call_019_7d41                         ; $4efa: $dc $41 $7d
    call nz, $dc17                                ; $4efd: $c4 $17 $dc
    ld d, c                                       ; $4f00: $51
    ld a, h                                       ; $4f01: $7c
    call nz, $dc17                                ; $4f02: $c4 $17 $dc
    ld d, d                                       ; $4f05: $52
    ld l, l                                       ; $4f06: $6d
    push bc                                       ; $4f07: $c5
    ld d, $cc                                     ; $4f08: $16 $cc
    ld h, c                                       ; $4f0a: $61
    ld l, h                                       ; $4f0b: $6c
    sub $16                                       ; $4f0c: $d6 $16
    call $5c51                                    ; $4f0e: $cd $51 $5c
    sub $15                                       ; $4f11: $d6 $15
    call $5c61                                    ; $4f13: $cd $61 $5c
    rst $10                                       ; $4f16: $d7
    ld b, $ce                                     ; $4f17: $06 $ce
    ld h, c                                       ; $4f19: $61
    ld e, h                                       ; $4f1a: $5c
    and $15                                       ; $4f1b: $e6 $15
    call $5c61                                    ; $4f1d: $cd $61 $5c
    rst $10                                       ; $4f20: $d7
    dec d                                         ; $4f21: $15
    call $5b71                                    ; $4f22: $cd $71 $5b
    and $25                                       ; $4f25: $e6 $25
    cp l                                          ; $4f27: $bd
    ld [hl], d                                    ; $4f28: $72
    ld c, e                                       ; $4f29: $4b
    ret c                                         ; $4f2a: $d8

    inc d                                         ; $4f2b: $14
    cp l                                          ; $4f2c: $bd
    add c                                         ; $4f2d: $81
    ld e, e                                       ; $4f2e: $5b
    rst $20                                       ; $4f2f: $e7
    inc d                                         ; $4f30: $14
    cp [hl]                                       ; $4f31: $be
    add c                                         ; $4f32: $81
    ld c, e                                       ; $4f33: $4b
    add sp, $14                                   ; $4f34: $e8 $14
    cp [hl]                                       ; $4f36: $be
    add b                                         ; $4f37: $80
    ld c, e                                       ; $4f38: $4b
    rst $20                                       ; $4f39: $e7
    inc d                                         ; $4f3a: $14
    adc $70                                       ; $4f3b: $ce $70
    ld c, h                                       ; $4f3d: $4c
    rst $20                                       ; $4f3e: $e7
    dec b                                         ; $4f3f: $05
    adc $61                                       ; $4f40: $ce $61
    ld e, h                                       ; $4f42: $5c
    rst $10                                       ; $4f43: $d7
    dec d                                         ; $4f44: $15
    call $5c71                                    ; $4f45: $cd $71 $5c
    rst $10                                       ; $4f48: $d7
    dec d                                         ; $4f49: $15
    cp [hl]                                       ; $4f4a: $be
    ld [hl], d                                    ; $4f4b: $72
    ld c, e                                       ; $4f4c: $4b
    rst $20                                       ; $4f4d: $e7
    inc d                                         ; $4f4e: $14
    cp l                                          ; $4f4f: $bd
    add c                                         ; $4f50: $81
    ld c, e                                       ; $4f51: $4b
    ret c                                         ; $4f52: $d8

    inc d                                         ; $4f53: $14
    cp [hl]                                       ; $4f54: $be
    add c                                         ; $4f55: $81
    ld c, e                                       ; $4f56: $4b
    rst $20                                       ; $4f57: $e7
    inc d                                         ; $4f58: $14
    adc $71                                       ; $4f59: $ce $71
    ld c, h                                       ; $4f5b: $4c
    rst $20                                       ; $4f5c: $e7
    inc d                                         ; $4f5d: $14
    adc $70                                       ; $4f5e: $ce $70
    ld e, h                                       ; $4f60: $5c
    and $15                                       ; $4f61: $e6 $15
    adc $60                                       ; $4f63: $ce $60
    ld e, h                                       ; $4f65: $5c
    and $15                                       ; $4f66: $e6 $15
    call $5c61                                    ; $4f68: $cd $61 $5c
    sub $15                                       ; $4f6b: $d6 $15
    call Call_019_6c60                            ; $4f6d: $cd $60 $6c
    push de                                       ; $4f70: $d5
    ld b, $ce                                     ; $4f71: $06 $ce
    ld b, c                                       ; $4f73: $41
    ld e, l                                       ; $4f74: $5d
    push de                                       ; $4f75: $d5
    ld d, $dd                                     ; $4f76: $16 $dd
    ld d, c                                       ; $4f78: $51
    ld l, l                                       ; $4f79: $6d
    push de                                       ; $4f7a: $d5
    ld b, $ce                                     ; $4f7b: $06 $ce
    ld b, c                                       ; $4f7d: $41
    ld l, l                                       ; $4f7e: $6d
    push de                                       ; $4f7f: $d5
    ld d, $dd                                     ; $4f80: $16 $dd
    ld d, c                                       ; $4f82: $51
    ld l, l                                       ; $4f83: $6d
    push de                                       ; $4f84: $d5
    rlca                                          ; $4f85: $07

jr_019_4f86:
    call Call_019_6c51                            ; $4f86: $cd $51 $6c
    call nc, $dd16                                ; $4f89: $d4 $16 $dd
    ld d, c                                       ; $4f8c: $51
    ld l, l                                       ; $4f8d: $6d
    call nc, $dc16                                ; $4f8e: $d4 $16 $dc
    ld b, c                                       ; $4f91: $41
    ld a, l                                       ; $4f92: $7d
    jp $dc17                                      ; $4f93: $c3 $17 $dc


    ld sp, $c28d                                  ; $4f96: $31 $8d $c2
    jr z, jr_019_4f86                             ; $4f99: $28 $eb

    ld [hl-], a                                   ; $4f9b: $32
    adc [hl]                                      ; $4f9c: $8e
    and e                                         ; $4f9d: $a3
    add hl, hl                                    ; $4f9e: $29
    ld [$9e22], a                                 ; $4f9f: $ea $22 $9e
    and c                                         ; $4fa2: $a1
    ld a, [hl-]                                   ; $4fa3: $3a
    ld [$af13], a                                 ; $4fa4: $ea $13 $af
    sub c                                         ; $4fa7: $91
    ld a, [hl-]                                   ; $4fa8: $3a
    add sp, $14                                   ; $4fa9: $e8 $14
    xor a                                         ; $4fab: $af
    ld [hl], c                                    ; $4fac: $71
    ld c, h                                       ; $4fad: $4c
    rst $20                                       ; $4fae: $e7
    inc d                                         ; $4faf: $14
    adc $61                                       ; $4fb0: $ce $61
    ld e, h                                       ; $4fb2: $5c
    rst $10                                       ; $4fb3: $d7
    ld b, $be                                     ; $4fb4: $06 $be
    ld d, c                                       ; $4fb6: $51
    ld l, h                                       ; $4fb7: $6c
    push hl                                       ; $4fb8: $e5
    dec h                                         ; $4fb9: $25
    db $dd                                        ; $4fba: $dd
    ld d, c                                       ; $4fbb: $51
    ld l, l                                       ; $4fbc: $6d
    push de                                       ; $4fbd: $d5
    rla                                           ; $4fbe: $17
    call c, Call_019_7c51                         ; $4fbf: $dc $51 $7c
    db $d3                                        ; $4fc2: $d3
    daa                                           ; $4fc3: $27
    call c, Call_019_7d41                         ; $4fc4: $dc $41 $7d
    jp $ec18                                      ; $4fc7: $c3 $18 $ec


    ld sp, $b38e                                  ; $4fca: $31 $8e $b3
    add hl, hl                                    ; $4fcd: $29
    db $eb                                        ; $4fce: $eb
    ld [hl+], a                                   ; $4fcf: $22
    sbc [hl]                                      ; $4fd0: $9e
    and d                                         ; $4fd1: $a2
    ld a, [hl+]                                   ; $4fd2: $2a
    db $eb                                        ; $4fd3: $eb
    inc de                                        ; $4fd4: $13
    sbc a                                         ; $4fd5: $9f
    sub c                                         ; $4fd6: $91
    ld a, [hl-]                                   ; $4fd7: $3a
    add sp, $13                                   ; $4fd8: $e8 $13
    cp [hl]                                       ; $4fda: $be
    add c                                         ; $4fdb: $81
    ld c, e                                       ; $4fdc: $4b
    add sp, $05                                   ; $4fdd: $e8 $05
    cp [hl]                                       ; $4fdf: $be
    add b                                         ; $4fe0: $80
    ld e, e                                       ; $4fe1: $5b
    and $15                                       ; $4fe2: $e6 $15
    call Call_019_6c60                            ; $4fe4: $cd $60 $6c
    push hl                                       ; $4fe7: $e5
    ld d, $dd                                     ; $4fe8: $16 $dd
    ld d, c                                       ; $4fea: $51
    ld l, l                                       ; $4feb: $6d
    call nz, $ec17                                ; $4fec: $c4 $17 $ec
    ld b, c                                       ; $4fef: $41
    adc l                                         ; $4ff0: $8d
    jp $dc18                                      ; $4ff1: $c3 $18 $dc


    ld [hl+], a                                   ; $4ff4: $22
    adc [hl]                                      ; $4ff5: $8e
    and d                                         ; $4ff6: $a2
    add hl, hl                                    ; $4ff7: $29
    ld [$9e23], a                                 ; $4ff8: $ea $23 $9e
    sub d                                         ; $4ffb: $92
    ld a, [hl-]                                   ; $4ffc: $3a
    jp hl                                         ; $4ffd: $e9


    inc de                                        ; $4ffe: $13
    xor [hl]                                      ; $4fff: $ae
    add c                                         ; $5000: $81
    ld c, e                                       ; $5001: $4b
    add sp, $14                                   ; $5002: $e8 $14
    cp [hl]                                       ; $5004: $be

jr_019_5005:
    add c                                         ; $5005: $81
    ld e, d                                       ; $5006: $5a
    rst $30                                       ; $5007: $f7
    inc d                                         ; $5008: $14
    adc $71                                       ; $5009: $ce $71
    ld e, h                                       ; $500b: $5c
    and $15                                       ; $500c: $e6 $15
    db $dd                                        ; $500e: $dd
    ld h, b                                       ; $500f: $60
    adc l                                         ; $5010: $8d
    call nc, $dd17                                ; $5011: $d4 $17 $dd
    ld sp, $c37e                                  ; $5014: $31 $7e $c3
    jr jr_019_5005                                ; $5017: $18 $ec

    ld [hl+], a                                   ; $5019: $22
    adc [hl]                                      ; $501a: $8e
    and d                                         ; $501b: $a2
    add hl, hl                                    ; $501c: $29
    ld [$ae23], a                                 ; $501d: $ea $23 $ae
    sub d                                         ; $5020: $92
    dec sp                                        ; $5021: $3b
    jp hl                                         ; $5022: $e9


    inc d                                         ; $5023: $14
    xor [hl]                                      ; $5024: $ae
    add c                                         ; $5025: $81
    ld c, e                                       ; $5026: $4b
    rst $20                                       ; $5027: $e7
    inc d                                         ; $5028: $14
    adc $71                                       ; $5029: $ce $71
    ld e, h                                       ; $502b: $5c
    and $15                                       ; $502c: $e6 $15
    db $dd                                        ; $502e: $dd
    ld d, b                                       ; $502f: $50
    ld l, l                                       ; $5030: $6d
    call nc, $ec17                                ; $5031: $d4 $17 $ec
    ld sp, $b28e                                  ; $5034: $31 $8e $b2
    add hl, de                                    ; $5037: $19
    ld [$af12], a                                 ; $5038: $ea $12 $af
    add c                                         ; $503b: $81
    dec sp                                        ; $503c: $3b
    rst $20                                       ; $503d: $e7
    inc d                                         ; $503e: $14
    sbc $60                                       ; $503f: $de $60
    ld e, l                                       ; $5041: $5d
    push de                                       ; $5042: $d5
    rlca                                          ; $5043: $07
    db $ec                                        ; $5044: $ec
    ld sp, $b28e                                  ; $5045: $31 $8e $b2
    add hl, hl                                    ; $5048: $29
    ld [$ae22], a                                 ; $5049: $ea $22 $ae
    sub c                                         ; $504c: $91
    ld a, [hl-]                                   ; $504d: $3a
    add sp, $14                                   ; $504e: $e8 $14
    cp a                                          ; $5050: $bf
    ld h, c                                       ; $5051: $61
    ld c, l                                       ; $5052: $4d
    push hl                                       ; $5053: $e5
    dec d                                         ; $5054: $15
    db $dd                                        ; $5055: $dd
    ld b, c                                       ; $5056: $41
    ld a, [hl]                                    ; $5057: $7e
    jp $fb18                                      ; $5058: $c3 $18 $fb


    ld [hl+], a                                   ; $505b: $22
    xor [hl]                                      ; $505c: $ae
    sub c                                         ; $505d: $91
    dec sp                                        ; $505e: $3b
    add sp, $13                                   ; $505f: $e8 $13
    adc $70                                       ; $5061: $ce $70
    ld e, h                                       ; $5063: $5c
    push hl                                       ; $5064: $e5
    ld d, $dd                                     ; $5065: $16 $dd
    ld b, d                                       ; $5067: $42
    ld a, l                                       ; $5068: $7d
    or e                                          ; $5069: $b3
    jr z, @-$23                                   ; $506a: $28 $db

    ld b, e                                       ; $506c: $43
    adc h                                         ; $506d: $8c
    or h                                          ; $506e: $b4
    scf                                           ; $506f: $37
    cp h                                          ; $5070: $bc
    ld d, e                                       ; $5071: $53
    ld l, e                                       ; $5072: $6b
    add $26                                       ; $5073: $c6 $26
    cp l                                          ; $5075: $bd

Call_019_5076:
    ld [hl], d                                    ; $5076: $72
    ld e, e                                       ; $5077: $5b
    rst $10                                       ; $5078: $d7
    dec d                                         ; $5079: $15
    adc $61                                       ; $507a: $ce $61
    ld e, l                                       ; $507c: $5d
    push de                                       ; $507d: $d5
    rla                                           ; $507e: $17
    call c, $8e41                                 ; $507f: $dc $41 $8e
    jp nz, $fa28                                  ; $5082: $c2 $28 $fa

    ld [hl+], a                                   ; $5085: $22
    sbc a                                         ; $5086: $9f
    and d                                         ; $5087: $a2
    ld a, [hl+]                                   ; $5088: $2a
    ld sp, hl                                     ; $5089: $f9
    inc de                                        ; $508a: $13
    cp a                                          ; $508b: $bf
    ld [hl], b                                    ; $508c: $70
    ld c, l                                       ; $508d: $4d
    and $06                                       ; $508e: $e6 $06
    db $dd                                        ; $5090: $dd
    ld d, c                                       ; $5091: $51
    ld a, l                                       ; $5092: $7d
    call nz, $dd18                                ; $5093: $c4 $18 $dd
    ld [hl-], a                                   ; $5096: $32
    ld a, l                                       ; $5097: $7d
    call nz, $eb27                                ; $5098: $c4 $27 $eb
    ld b, c                                       ; $509b: $41
    adc [hl]                                      ; $509c: $8e
    or e                                          ; $509d: $b3
    add hl, de                                    ; $509e: $19
    ld [$ad23], a                                 ; $509f: $ea $23 $ad
    and d                                         ; $50a2: $a2
    ld a, [hl-]                                   ; $50a3: $3a
    reti                                          ; $50a4: $d9


    inc h                                         ; $50a5: $24
    xor l                                         ; $50a6: $ad
    sub e                                         ; $50a7: $93
    ld c, c                                       ; $50a8: $49
    jp z, $8c43                                   ; $50a9: $ca $43 $8c

    or h                                          ; $50ac: $b4
    scf                                           ; $50ad: $37
    bit 2, d                                      ; $50ae: $cb $52
    adc l                                         ; $50b0: $8d
    jp $ea28                                      ; $50b1: $c3 $28 $ea


    inc hl                                        ; $50b4: $23
    sbc [hl]                                      ; $50b5: $9e
    and d                                         ; $50b6: $a2
    ld a, [hl-]                                   ; $50b7: $3a
    jp hl                                         ; $50b8: $e9


    inc hl                                        ; $50b9: $23
    xor [hl]                                      ; $50ba: $ae
    sub c                                         ; $50bb: $91
    ld a, [hl-]                                   ; $50bc: $3a
    jp hl                                         ; $50bd: $e9


    inc d                                         ; $50be: $14
    xor [hl]                                      ; $50bf: $ae
    add c                                         ; $50c0: $81
    ld c, e                                       ; $50c1: $4b
    rst $20                                       ; $50c2: $e7
    inc d                                         ; $50c3: $14
    adc $71                                       ; $50c4: $ce $71
    ld e, h                                       ; $50c6: $5c
    sub $15                                       ; $50c7: $d6 $15
    call $5c61                                    ; $50c9: $cd $61 $5c
    push de                                       ; $50cc: $d5
    ld d, $dd                                     ; $50cd: $16 $dd
    ld b, c                                       ; $50cf: $41
    ld l, [hl]                                    ; $50d0: $6e
    call nz, $dc17                                ; $50d1: $c4 $17 $dc

jr_019_50d4:
    ld b, c                                       ; $50d4: $41
    adc [hl]                                      ; $50d5: $8e
    or e                                          ; $50d6: $b3
    add hl, de                                    ; $50d7: $19
    db $eb                                        ; $50d8: $eb
    ld [hl+], a                                   ; $50d9: $22
    adc [hl]                                      ; $50da: $8e
    and d                                         ; $50db: $a2
    add hl, hl                                    ; $50dc: $29
    ld [$ae22], a                                 ; $50dd: $ea $22 $ae
    sub c                                         ; $50e0: $91
    ld a, [hl-]                                   ; $50e1: $3a
    ld hl, sp+$14                                 ; $50e2: $f8 $14
    cp l                                          ; $50e4: $bd
    add d                                         ; $50e5: $82
    ld c, d                                       ; $50e6: $4a
    ret c                                         ; $50e7: $d8

    inc h                                         ; $50e8: $24
    xor l                                         ; $50e9: $ad
    sub d                                         ; $50ea: $92
    ld c, c                                       ; $50eb: $49
    add sp, $23                                   ; $50ec: $e8 $23
    xor [hl]                                      ; $50ee: $ae
    add c                                         ; $50ef: $81
    ld c, e                                       ; $50f0: $4b
    rst $20                                       ; $50f1: $e7
    dec d                                         ; $50f2: $15
    call $5b71                                    ; $50f3: $cd $71 $5b
    sub $16                                       ; $50f6: $d6 $16
    cp l                                          ; $50f8: $bd
    ld h, d                                       ; $50f9: $62
    ld e, h                                       ; $50fa: $5c
    rst $10                                       ; $50fb: $d7
    dec d                                         ; $50fc: $15
    adc $61                                       ; $50fd: $ce $61
    ld e, l                                       ; $50ff: $5d
    push hl                                       ; $5100: $e5
    ld b, $dd                                     ; $5101: $06 $dd
    ld b, c                                       ; $5103: $41
    ld a, l                                       ; $5104: $7d
    push bc                                       ; $5105: $c5
    jr jr_019_50d4                                ; $5106: $18 $cc

    ld b, d                                       ; $5108: $42
    ld a, h                                       ; $5109: $7c
    push bc                                       ; $510a: $c5
    ld h, $bc                                     ; $510b: $26 $bc
    ld h, d                                       ; $510d: $62
    ld e, h                                       ; $510e: $5c
    sub $16                                       ; $510f: $d6 $16
    call Call_019_6b61                            ; $5111: $cd $61 $6b
    sub $25                                       ; $5114: $d6 $25
    call Call_019_6b61                            ; $5116: $cd $61 $6b
    rst $00                                       ; $5119: $c7
    dec h                                         ; $511a: $25
    xor h                                         ; $511b: $ac
    sub d                                         ; $511c: $92
    ld c, c                                       ; $511d: $49
    add sp, $23                                   ; $511e: $e8 $23
    xor [hl]                                      ; $5120: $ae
    sub d                                         ; $5121: $92

jr_019_5122:
    ld a, [hl-]                                   ; $5122: $3a
    jp hl                                         ; $5123: $e9


    inc hl                                        ; $5124: $23
    xor [hl]                                      ; $5125: $ae
    and c                                         ; $5126: $a1
    dec sp                                        ; $5127: $3b
    ret                                           ; $5128: $c9


    ld b, h                                       ; $5129: $44
    adc d                                         ; $512a: $8a
    or a                                          ; $512b: $b7
    ld b, l                                       ; $512c: $45
    sbc e                                         ; $512d: $9b
    sub l                                         ; $512e: $95
    add hl, sp                                    ; $512f: $39
    cp e                                          ; $5130: $bb
    ld d, e                                       ; $5131: $53
    ld l, e                                       ; $5132: $6b
    sub $25                                       ; $5133: $d6 $25
    cp l                                          ; $5135: $bd
    add d                                         ; $5136: $82
    ld c, d                                       ; $5137: $4a
    reti                                          ; $5138: $d9


    inc h                                         ; $5139: $24
    adc h                                         ; $513a: $8c
    and l                                         ; $513b: $a5
    scf                                           ; $513c: $37
    cp h                                          ; $513d: $bc
    ld h, d                                       ; $513e: $62
    ld e, e                                       ; $513f: $5b
    rst $10                                       ; $5140: $d7
    dec h                                         ; $5141: $25
    cp e                                          ; $5142: $bb
    sub e                                         ; $5143: $93
    jr c, jr_019_5122                             ; $5144: $38 $dc

    ld [hl-], a                                   ; $5146: $32
    adc h                                         ; $5147: $8c
    push bc                                       ; $5148: $c5
    daa                                           ; $5149: $27
    cp h                                          ; $514a: $bc
    add e                                         ; $514b: $83

jr_019_514c:
    ld c, c                                       ; $514c: $49
    jp c, $9c32                                   ; $514d: $da $32 $9c

    call nz, $cd26                                ; $5150: $c4 $26 $cd
    ld h, c                                       ; $5153: $61
    ld c, e                                       ; $5154: $4b
    add sp, $04                                   ; $5155: $e8 $04
    cp [hl]                                       ; $5157: $be
    and c                                         ; $5158: $a1
    add hl, sp                                    ; $5159: $39
    db $eb                                        ; $515a: $eb
    ld [hl-], a                                   ; $515b: $32
    adc l                                         ; $515c: $8d
    push de                                       ; $515d: $d5
    rlca                                          ; $515e: $07
    call $5b81                                    ; $515f: $cd $81 $5b
    ret                                           ; $5162: $c9


    inc h                                         ; $5163: $24
    adc l                                         ; $5164: $8d
    or h                                          ; $5165: $b4
    daa                                           ; $5166: $27
    call z, $5a61                                 ; $5167: $cc $61 $5a
    reti                                          ; $516a: $d9


    inc hl                                        ; $516b: $23
    adc [hl]                                      ; $516c: $8e
    or e                                          ; $516d: $b3
    jr jr_019_514c                                ; $516e: $18 $dc

    ld h, c                                       ; $5170: $61
    ld e, e                                       ; $5171: $5b
    reti                                          ; $5172: $d9


    inc hl                                        ; $5173: $23
    sbc l                                         ; $5174: $9d
    jp nc, $dd17                                  ; $5175: $d2 $17 $dd

    ld d, c                                       ; $5178: $51
    ld e, h                                       ; $5179: $5c
    add sp, $03                                   ; $517a: $e8 $03
    cp a                                          ; $517c: $bf
    and c                                         ; $517d: $a1
    ld a, [hl+]                                   ; $517e: $2a
    db $db                                        ; $517f: $db
    ld b, d                                       ; $5180: $42
    ld a, h                                       ; $5181: $7c
    rst $10                                       ; $5182: $d7
    inc h                                         ; $5183: $24
    xor l                                         ; $5184: $ad
    sub e                                         ; $5185: $93
    add hl, sp                                    ; $5186: $39
    bit 2, e                                      ; $5187: $cb $53
    ld l, d                                       ; $5189: $6a
    ret                                           ; $518a: $c9


    inc sp                                        ; $518b: $33
    adc l                                         ; $518c: $8d
    or l                                          ; $518d: $b5
    ld h, $cd                                     ; $518e: $26 $cd
    add c                                         ; $5190: $81
    ld a, [hl-]                                   ; $5191: $3a
    ld [$9d22], a                                 ; $5192: $ea $22 $9d
    or l                                          ; $5195: $b5
    ld h, $bc                                     ; $5196: $26 $bc
    add e                                         ; $5198: $83
    add hl, sp                                    ; $5199: $39
    jp z, Jump_019_6b52                           ; $519a: $ca $52 $6b

    ret z                                         ; $519d: $c8

    dec h                                         ; $519e: $25
    sbc h                                         ; $519f: $9c
    and l                                         ; $51a0: $a5
    scf                                           ; $51a1: $37
    cp e                                          ; $51a2: $bb
    ld [hl], e                                    ; $51a3: $73
    ld l, c                                       ; $51a4: $69
    cp d                                          ; $51a5: $ba
    ld d, h                                       ; $51a6: $54
    adc c                                         ; $51a7: $89
    cp b                                          ; $51a8: $b8
    ld b, l                                       ; $51a9: $45
    adc e                                         ; $51aa: $8b
    or [hl]                                       ; $51ab: $b6
    ld [hl], $ac                                  ; $51ac: $36 $ac
    sub e                                         ; $51ae: $93
    ld c, b                                       ; $51af: $48
    cp h                                          ; $51b0: $bc
    ld d, d                                       ; $51b1: $52
    ld l, e                                       ; $51b2: $6b
    ret c                                         ; $51b3: $d8

    inc h                                         ; $51b4: $24
    sbc l                                         ; $51b5: $9d
    and e                                         ; $51b6: $a3
    daa                                           ; $51b7: $27
    call z, $5972                                 ; $51b8: $cc $72 $59
    jp z, Jump_019_6c42                           ; $51bb: $ca $42 $6c

    rst $10                                       ; $51be: $d7
    inc d                                         ; $51bf: $14
    xor l                                         ; $51c0: $ad
    and h                                         ; $51c1: $a4
    daa                                           ; $51c2: $27
    cp l                                          ; $51c3: $bd
    add d                                         ; $51c4: $82
    add hl, sp                                    ; $51c5: $39
    call c, Call_019_6d31                         ; $51c6: $dc $31 $6d
    rst $20                                       ; $51c9: $e7
    inc de                                        ; $51ca: $13
    xor [hl]                                      ; $51cb: $ae
    or e                                          ; $51cc: $b3
    rla                                           ; $51cd: $17
    call Call_000_3981                            ; $51ce: $cd $81 $39
    db $ec                                        ; $51d1: $ec
    ld b, c                                       ; $51d2: $41
    ld l, h                                       ; $51d3: $6c
    ret c                                         ; $51d4: $d8

    inc hl                                        ; $51d5: $23
    sbc h                                         ; $51d6: $9c
    or [hl]                                       ; $51d7: $b6
    inc h                                         ; $51d8: $24
    xor l                                         ; $51d9: $ad
    or e                                          ; $51da: $b3
    rla                                           ; $51db: $17
    call $4a71                                    ; $51dc: $cd $71 $4a
    bit 2, c                                      ; $51df: $cb $51
    ld e, e                                       ; $51e1: $5b
    jp c, $8d22                                   ; $51e2: $da $22 $8d

    add $15                                       ; $51e5: $c6 $15
    xor h                                         ; $51e7: $ac
    and h                                         ; $51e8: $a4
    daa                                           ; $51e9: $27
    call z, $3983                                 ; $51ea: $cc $83 $39
    cp e                                          ; $51ed: $bb
    ld [hl], e                                    ; $51ee: $73
    ld e, d                                       ; $51ef: $5a
    bit 0, d                                      ; $51f0: $cb $42
    ld l, e                                       ; $51f2: $6b
    ret z                                         ; $51f3: $c8

    inc [hl]                                      ; $51f4: $34
    sbc e                                         ; $51f5: $9b
    or [hl]                                       ; $51f6: $b6
    dec [hl]                                      ; $51f7: $35
    xor h                                         ; $51f8: $ac
    sub l                                         ; $51f9: $95
    scf                                           ; $51fa: $37
    xor d                                         ; $51fb: $aa
    add l                                         ; $51fc: $85
    ld b, a                                       ; $51fd: $47
    xor e                                         ; $51fe: $ab
    add e                                         ; $51ff: $83
    ld c, c                                       ; $5200: $49
    bit 4, d                                      ; $5201: $cb $62
    ld l, d                                       ; $5203: $6a
    ret                                           ; $5204: $c9


    ld b, e                                       ; $5205: $43
    ld a, h                                       ; $5206: $7c
    rst $00                                       ; $5207: $c7
    inc [hl]                                      ; $5208: $34
    sbc e                                         ; $5209: $9b
    and a                                         ; $520a: $a7
    ld b, h                                       ; $520b: $44
    adc h                                         ; $520c: $8c
    or a                                          ; $520d: $b7
    dec d                                         ; $520e: $15
    xor h                                         ; $520f: $ac
    and l                                         ; $5210: $a5
    ld h, $ac                                     ; $5211: $26 $ac
    and h                                         ; $5213: $a4
    daa                                           ; $5214: $27
    call z, $3982                                 ; $5215: $cc $82 $39
    cp e                                          ; $5218: $bb
    add e                                         ; $5219: $83
    ld c, c                                       ; $521a: $49
    cp e                                          ; $521b: $bb
    ld [hl], e                                    ; $521c: $73
    ld c, c                                       ; $521d: $49
    cp d                                          ; $521e: $ba
    ld [hl], h                                    ; $521f: $74
    ld e, c                                       ; $5220: $59
    xor d                                         ; $5221: $aa
    add h                                         ; $5222: $84
    ld c, b                                       ; $5223: $48
    xor e                                         ; $5224: $ab
    add h                                         ; $5225: $84
    ld c, b                                       ; $5226: $48
    cp e                                          ; $5227: $bb
    add h                                         ; $5228: $84
    ld c, b                                       ; $5229: $48
    cp e                                          ; $522a: $bb
    add e                                         ; $522b: $83
    add hl, sp                                    ; $522c: $39
    cp d                                          ; $522d: $ba
    add e                                         ; $522e: $83
    ld c, c                                       ; $522f: $49
    cp d                                          ; $5230: $ba
    ld [hl], e                                    ; $5231: $73
    ld e, c                                       ; $5232: $59
    cp b                                          ; $5233: $b8
    ld h, [hl]                                    ; $5234: $66
    ld l, b                                       ; $5235: $68
    sub a                                         ; $5236: $97
    ld a, b                                       ; $5237: $78
    ld [hl], a                                    ; $5238: $77
    ld [hl], a                                    ; $5239: $77
    sbc d                                         ; $523a: $9a
    ld [hl], l                                    ; $523b: $75
    ld l, b                                       ; $523c: $68
    xor d                                         ; $523d: $aa
    ld [hl], h                                    ; $523e: $74
    ld e, b                                       ; $523f: $58
    cp e                                          ; $5240: $bb
    ld [hl], h                                    ; $5241: $74
    ld e, b                                       ; $5242: $58
    cp d                                          ; $5243: $ba
    ld [hl], h                                    ; $5244: $74
    ld e, b                                       ; $5245: $58
    xor d                                         ; $5246: $aa
    add [hl]                                      ; $5247: $86
    ld d, a                                       ; $5248: $57
    sbc d                                         ; $5249: $9a
    and a                                         ; $524a: $a7
    ld d, [hl]                                    ; $524b: $56
    adc c                                         ; $524c: $89
    xor b                                         ; $524d: $a8
    ld d, h                                       ; $524e: $54
    ld a, d                                       ; $524f: $7a
    ret                                           ; $5250: $c9


    ld b, h                                       ; $5251: $44
    ld a, d                                       ; $5252: $7a
    cp d                                          ; $5253: $ba
    ld d, e                                       ; $5254: $53
    ld l, c                                       ; $5255: $69
    cp e                                          ; $5256: $bb
    ld h, e                                       ; $5257: $63
    ld e, b                                       ; $5258: $58
    xor e                                         ; $5259: $ab
    add h                                         ; $525a: $84
    ld b, a                                       ; $525b: $47
    xor e                                         ; $525c: $ab
    and [hl]                                      ; $525d: $a6
    dec [hl]                                      ; $525e: $35
    sbc e                                         ; $525f: $9b
    or a                                          ; $5260: $b7
    inc [hl]                                      ; $5261: $34
    adc e                                         ; $5262: $8b
    cp b                                          ; $5263: $b8
    ld d, e                                       ; $5264: $53
    ld l, e                                       ; $5265: $6b
    cp c                                          ; $5266: $b9
    ld [hl], h                                    ; $5267: $74
    ld e, c                                       ; $5268: $59
    xor c                                         ; $5269: $a9
    add [hl]                                      ; $526a: $86
    ld d, a                                       ; $526b: $57
    sbc b                                         ; $526c: $98
    adc c                                         ; $526d: $89
    ld h, l                                       ; $526e: $65
    ld l, b                                       ; $526f: $68
    sbc d                                         ; $5270: $9a
    add l                                         ; $5271: $85
    ld b, a                                       ; $5272: $47
    sbc d                                         ; $5273: $9a
    and a                                         ; $5274: $a7
    ld b, l                                       ; $5275: $45
    adc d                                         ; $5276: $8a
    cp c                                          ; $5277: $b9
    ld d, e                                       ; $5278: $53
    ld l, d                                       ; $5279: $6a
    xor c                                         ; $527a: $a9
    add l                                         ; $527b: $85
    ld b, [hl]                                    ; $527c: $46
    sbc e                                         ; $527d: $9b
    or a                                          ; $527e: $b7
    inc sp                                        ; $527f: $33
    adc e                                         ; $5280: $8b
    ret                                           ; $5281: $c9


    ld d, d                                       ; $5282: $52
    ld e, d                                       ; $5283: $5a
    cp e                                          ; $5284: $bb
    sub h                                         ; $5285: $94
    ld h, $ab                                     ; $5286: $26 $ab
    or a                                          ; $5288: $b7
    inc sp                                        ; $5289: $33
    ld a, e                                       ; $528a: $7b
    cp d                                          ; $528b: $ba
    ld [hl], e                                    ; $528c: $73
    scf                                           ; $528d: $37
    cp h                                          ; $528e: $bc
    and [hl]                                      ; $528f: $a6
    inc sp                                        ; $5290: $33
    adc h                                         ; $5291: $8c
    ret                                           ; $5292: $c9


    ld d, d                                       ; $5293: $52
    ld c, c                                       ; $5294: $49
    db $db                                        ; $5295: $db
    add l                                         ; $5296: $85
    dec [hl]                                      ; $5297: $35
    sbc e                                         ; $5298: $9b
    sub a                                         ; $5299: $97
    ld [hl], l                                    ; $529a: $75
    ld c, b                                       ; $529b: $48
    cp c                                          ; $529c: $b9
    adc b                                         ; $529d: $88
    ld h, h                                       ; $529e: $64
    ld a, d                                       ; $529f: $7a
    sbc b                                         ; $52a0: $98
    add [hl]                                      ; $52a1: $86
    ld b, a                                       ; $52a2: $47
    xor c                                         ; $52a3: $a9
    adc b                                         ; $52a4: $88
    ld [hl], l                                    ; $52a5: $75
    ld a, c                                       ; $52a6: $79
    add a                                         ; $52a7: $87
    sbc c                                         ; $52a8: $99
    ld h, [hl]                                    ; $52a9: $66
    adc b                                         ; $52aa: $88
    adc c                                         ; $52ab: $89
    sub [hl]                                      ; $52ac: $96
    ld d, a                                       ; $52ad: $57
    add a                                         ; $52ae: $87
    sbc e                                         ; $52af: $9b
    add h                                         ; $52b0: $84
    ld d, a                                       ; $52b1: $57
    adc c                                         ; $52b2: $89
    cp d                                          ; $52b3: $ba
    ld d, e                                       ; $52b4: $53
    ld l, c                                       ; $52b5: $69
    sbc d                                         ; $52b6: $9a
    or a                                          ; $52b7: $b7
    inc h                                         ; $52b8: $24
    adc d                                         ; $52b9: $8a
    xor e                                         ; $52ba: $ab
    add e                                         ; $52bb: $83
    scf                                           ; $52bc: $37
    xor e                                         ; $52bd: $ab
    cp c                                          ; $52be: $b9
    ld b, d                                       ; $52bf: $42
    ld l, d                                       ; $52c0: $6a
    xor d                                         ; $52c1: $aa
    and [hl]                                      ; $52c2: $a6
    dec [hl]                                      ; $52c3: $35
    sbc d                                         ; $52c4: $9a
    sbc c                                         ; $52c5: $99
    sub [hl]                                      ; $52c6: $96
    dec [hl]                                      ; $52c7: $35
    sbc c                                         ; $52c8: $99
    sbc c                                         ; $52c9: $99
    sub l                                         ; $52ca: $95
    scf                                           ; $52cb: $37
    xor c                                         ; $52cc: $a9
    adc c                                         ; $52cd: $89
    add h                                         ; $52ce: $84
    ld e, b                                       ; $52cf: $58
    sbc b                                         ; $52d0: $98
    adc d                                         ; $52d1: $8a
    ld [hl], h                                    ; $52d2: $74
    ld e, c                                       ; $52d3: $59
    sub a                                         ; $52d4: $97
    xor e                                         ; $52d5: $ab
    ld h, e                                       ; $52d6: $63
    ld l, c                                       ; $52d7: $69
    adc b                                         ; $52d8: $88
    xor d                                         ; $52d9: $aa
    ld d, d                                       ; $52da: $52
    ld l, d                                       ; $52db: $6a
    add a                                         ; $52dc: $87
    xor d                                         ; $52dd: $aa
    ld d, e                                       ; $52de: $53
    ld a, c                                       ; $52df: $79
    adc b                                         ; $52e0: $88
    xor c                                         ; $52e1: $a9
    ld b, e                                       ; $52e2: $43
    ld a, c                                       ; $52e3: $79
    adc b                                         ; $52e4: $88
    cp c                                          ; $52e5: $b9
    ld b, e                                       ; $52e6: $43
    ld a, c                                       ; $52e7: $79
    ld a, b                                       ; $52e8: $78
    cp c                                          ; $52e9: $b9
    ld b, h                                       ; $52ea: $44
    adc c                                         ; $52eb: $89
    ld a, b                                       ; $52ec: $78
    cp d                                          ; $52ed: $ba
    ld d, e                                       ; $52ee: $53
    ld a, c                                       ; $52ef: $79
    add a                                         ; $52f0: $87
    cp e                                          ; $52f1: $bb
    ld h, e                                       ; $52f2: $63
    ld e, b                                       ; $52f3: $58
    sbc b                                         ; $52f4: $98
    xor d                                         ; $52f5: $aa
    ld [hl], e                                    ; $52f6: $73
    ld e, b                                       ; $52f7: $58
    sbc b                                         ; $52f8: $98
    adc d                                         ; $52f9: $8a
    sub h                                         ; $52fa: $94
    ld b, a                                       ; $52fb: $47
    sbc b                                         ; $52fc: $98
    adc d                                         ; $52fd: $8a
    and l                                         ; $52fe: $a5
    scf                                           ; $52ff: $37
    sbc b                                         ; $5300: $98
    adc d                                         ; $5301: $8a
    and [hl]                                      ; $5302: $a6
    ld b, l                                       ; $5303: $45
    sbc c                                         ; $5304: $99
    adc b                                         ; $5305: $88
    sbc b                                         ; $5306: $98
    ld d, l                                       ; $5307: $55
    ld a, d                                       ; $5308: $7a
    sub a                                         ; $5309: $97
    ld l, b                                       ; $530a: $68
    add [hl]                                      ; $530b: $86
    ld a, c                                       ; $530c: $79
    sub [hl]                                      ; $530d: $96
    ld l, b                                       ; $530e: $68
    sbc b                                         ; $530f: $98
    add a                                         ; $5310: $87
    add a                                         ; $5311: $87
    ld h, [hl]                                    ; $5312: $66
    sbc d                                         ; $5313: $9a
    add a                                         ; $5314: $87
    ld h, a                                       ; $5315: $67
    ld [hl], a                                    ; $5316: $77
    adc c                                         ; $5317: $89
    sbc b                                         ; $5318: $98
    ld h, [hl]                                    ; $5319: $66
    ld a, b                                       ; $531a: $78
    ld [hl], a                                    ; $531b: $77
    sbc c                                         ; $531c: $99
    halt                                          ; $531d: $76
    ld [hl], a                                    ; $531e: $77
    ld [hl], a                                    ; $531f: $77
    adc c                                         ; $5320: $89
    add a                                         ; $5321: $87
    ld h, a                                       ; $5322: $67
    adc c                                         ; $5323: $89
    add a                                         ; $5324: $87
    adc b                                         ; $5325: $88
    ld h, [hl]                                    ; $5326: $66
    ld a, b                                       ; $5327: $78
    adc b                                         ; $5328: $88
    add a                                         ; $5329: $87
    ld h, a                                       ; $532a: $67
    sbc c                                         ; $532b: $99
    add a                                         ; $532c: $87
    ld [hl], a                                    ; $532d: $77
    halt                                          ; $532e: $76
    ld h, a                                       ; $532f: $67
    adc b                                         ; $5330: $88
    sbc c                                         ; $5331: $99
    add a                                         ; $5332: $87
    ld [hl], a                                    ; $5333: $77
    ld [hl], a                                    ; $5334: $77
    ld a, b                                       ; $5335: $78
    add a                                         ; $5336: $87
    ld a, b                                       ; $5337: $78
    adc b                                         ; $5338: $88
    add a                                         ; $5339: $87
    ld [hl], a                                    ; $533a: $77
    adc b                                         ; $533b: $88
    ld [hl], a                                    ; $533c: $77
    ld a, b                                       ; $533d: $78
    adc b                                         ; $533e: $88
    adc b                                         ; $533f: $88
    add a                                         ; $5340: $87
    ld h, [hl]                                    ; $5341: $66
    ld a, b                                       ; $5342: $78
    ld a, b                                       ; $5343: $78
    sbc b                                         ; $5344: $98
    ld h, [hl]                                    ; $5345: $66
    ld a, b                                       ; $5346: $78
    adc b                                         ; $5347: $88
    add a                                         ; $5348: $87
    ld [hl], a                                    ; $5349: $77
    add a                                         ; $534a: $87
    ld [hl], a                                    ; $534b: $77
    adc b                                         ; $534c: $88
    adc b                                         ; $534d: $88
    ld [hl], a                                    ; $534e: $77
    adc c                                         ; $534f: $89
    add a                                         ; $5350: $87
    ld [hl], a                                    ; $5351: $77
    add a                                         ; $5352: $87
    adc b                                         ; $5353: $88
    add a                                         ; $5354: $87
    ld h, a                                       ; $5355: $67
    ld [hl], a                                    ; $5356: $77
    ld a, c                                       ; $5357: $79
    xor b                                         ; $5358: $a8
    halt                                          ; $5359: $76
    ld h, a                                       ; $535a: $67
    adc c                                         ; $535b: $89
    add a                                         ; $535c: $87
    ld h, a                                       ; $535d: $67
    ld a, b                                       ; $535e: $78
    adc c                                         ; $535f: $89
    sbc b                                         ; $5360: $98
    ld d, l                                       ; $5361: $55
    ld a, c                                       ; $5362: $79
    adc b                                         ; $5363: $88
    ld [hl], a                                    ; $5364: $77
    ld h, a                                       ; $5365: $67
    adc b                                         ; $5366: $88
    adc b                                         ; $5367: $88
    adc b                                         ; $5368: $88
    ld [hl], a                                    ; $5369: $77
    ld a, b                                       ; $536a: $78
    add a                                         ; $536b: $87
    ld [hl], a                                    ; $536c: $77
    ld [hl], a                                    ; $536d: $77
    ld a, b                                       ; $536e: $78
    sbc d                                         ; $536f: $9a
    add a                                         ; $5370: $87
    ld h, [hl]                                    ; $5371: $66
    ld a, b                                       ; $5372: $78
    sbc b                                         ; $5373: $98
    halt                                          ; $5374: $76
    ld [hl], a                                    ; $5375: $77
    ld [hl], a                                    ; $5376: $77
    sbc d                                         ; $5377: $9a
    sub [hl]                                      ; $5378: $96
    ld h, a                                       ; $5379: $67
    adc b                                         ; $537a: $88
    adc b                                         ; $537b: $88
    add a                                         ; $537c: $87
    ld [hl], a                                    ; $537d: $77
    ld [hl], a                                    ; $537e: $77
    adc c                                         ; $537f: $89
    add a                                         ; $5380: $87
    ld h, a                                       ; $5381: $67
    adc b                                         ; $5382: $88
    adc b                                         ; $5383: $88
    halt                                          ; $5384: $76
    ld [hl], a                                    ; $5385: $77
    ld a, b                                       ; $5386: $78
    sbc d                                         ; $5387: $9a
    add [hl]                                      ; $5388: $86
    ld h, a                                       ; $5389: $67
    ld a, b                                       ; $538a: $78
    sbc c                                         ; $538b: $99
    halt                                          ; $538c: $76
    ld h, a                                       ; $538d: $67
    ld [hl], a                                    ; $538e: $77
    adc d                                         ; $538f: $8a
    sub a                                         ; $5390: $97
    ld h, a                                       ; $5391: $67
    ld [hl], a                                    ; $5392: $77
    adc c                                         ; $5393: $89
    add a                                         ; $5394: $87
    ld h, a                                       ; $5395: $67
    adc b                                         ; $5396: $88
    ld a, b                                       ; $5397: $78
    sbc c                                         ; $5398: $99
    add a                                         ; $5399: $87
    ld [hl], a                                    ; $539a: $77
    ld a, b                                       ; $539b: $78
    adc b                                         ; $539c: $88
    halt                                          ; $539d: $76
    adc b                                         ; $539e: $88
    adc b                                         ; $539f: $88
    ld a, b                                       ; $53a0: $78
    ld bc, $8888                                  ; $53a1: $01 $88 $88
    adc b                                         ; $53a4: $88
    adc b                                         ; $53a5: $88
    adc b                                         ; $53a6: $88

Call_019_53a7:
    adc b                                         ; $53a7: $88
    adc b                                         ; $53a8: $88
    adc b                                         ; $53a9: $88
    adc b                                         ; $53aa: $88
    adc b                                         ; $53ab: $88
    adc b                                         ; $53ac: $88
    adc b                                         ; $53ad: $88
    adc b                                         ; $53ae: $88
    adc b                                         ; $53af: $88
    adc b                                         ; $53b0: $88
    adc b                                         ; $53b1: $88
    adc b                                         ; $53b2: $88
    adc b                                         ; $53b3: $88
    ld [hl], a                                    ; $53b4: $77
    ld [hl], a                                    ; $53b5: $77
    ld [hl], a                                    ; $53b6: $77
    ld [hl], a                                    ; $53b7: $77
    adc b                                         ; $53b8: $88
    adc b                                         ; $53b9: $88
    adc b                                         ; $53ba: $88
    adc b                                         ; $53bb: $88
    ld [hl], a                                    ; $53bc: $77
    ld [hl], a                                    ; $53bd: $77
    ld [hl], a                                    ; $53be: $77
    ld [hl], a                                    ; $53bf: $77
    add a                                         ; $53c0: $87
    adc b                                         ; $53c1: $88
    adc b                                         ; $53c2: $88
    adc b                                         ; $53c3: $88
    adc b                                         ; $53c4: $88
    ld [hl], a                                    ; $53c5: $77
    ld [hl], a                                    ; $53c6: $77
    ld [hl], a                                    ; $53c7: $77
    ld [hl], a                                    ; $53c8: $77
    adc b                                         ; $53c9: $88
    adc b                                         ; $53ca: $88
    adc b                                         ; $53cb: $88
    ld [hl], a                                    ; $53cc: $77
    ld [hl], a                                    ; $53cd: $77
    ld [hl], a                                    ; $53ce: $77
    ld a, b                                       ; $53cf: $78
    adc b                                         ; $53d0: $88
    adc c                                         ; $53d1: $89
    adc b                                         ; $53d2: $88
    add a                                         ; $53d3: $87
    ld [hl], a                                    ; $53d4: $77
    ld [hl], a                                    ; $53d5: $77
    ld [hl], a                                    ; $53d6: $77
    ld [hl], a                                    ; $53d7: $77
    adc b                                         ; $53d8: $88
    adc c                                         ; $53d9: $89
    adc b                                         ; $53da: $88
    ld [hl], a                                    ; $53db: $77
    ld [hl], a                                    ; $53dc: $77
    ld [hl], a                                    ; $53dd: $77
    adc b                                         ; $53de: $88
    adc b                                         ; $53df: $88
    adc b                                         ; $53e0: $88
    adc b                                         ; $53e1: $88
    add a                                         ; $53e2: $87
    ld [hl], a                                    ; $53e3: $77
    ld [hl], a                                    ; $53e4: $77
    ld [hl], a                                    ; $53e5: $77
    ld [hl], a                                    ; $53e6: $77
    ld a, b                                       ; $53e7: $78
    adc b                                         ; $53e8: $88
    adc b                                         ; $53e9: $88
    adc b                                         ; $53ea: $88
    adc b                                         ; $53eb: $88
    add a                                         ; $53ec: $87
    ld [hl], a                                    ; $53ed: $77
    ld [hl], a                                    ; $53ee: $77
    ld [hl], a                                    ; $53ef: $77
    adc b                                         ; $53f0: $88
    adc b                                         ; $53f1: $88
    adc b                                         ; $53f2: $88
    ld a, b                                       ; $53f3: $78
    adc b                                         ; $53f4: $88
    adc b                                         ; $53f5: $88
    adc b                                         ; $53f6: $88
    adc b                                         ; $53f7: $88
    ld [hl], a                                    ; $53f8: $77
    halt                                          ; $53f9: $76
    ld h, [hl]                                    ; $53fa: $66
    ld [hl], a                                    ; $53fb: $77
    adc c                                         ; $53fc: $89
    xor d                                         ; $53fd: $aa
    sbc b                                         ; $53fe: $98
    add a                                         ; $53ff: $87
    ld h, l                                       ; $5400: $65
    ld d, [hl]                                    ; $5401: $56
    ld a, b                                       ; $5402: $78
    sbc d                                         ; $5403: $9a
    cp e                                          ; $5404: $bb
    and a                                         ; $5405: $a7
    ld h, h                                       ; $5406: $64
    ld b, h                                       ; $5407: $44
    ld d, [hl]                                    ; $5408: $56
    adc d                                         ; $5409: $8a
    call $86ca                                    ; $540a: $cd $ca $86
    ld b, e                                       ; $540d: $43
    inc h                                         ; $540e: $24
    ld a, c                                       ; $540f: $79
    cp h                                          ; $5410: $bc
    call z, Call_019_4396                         ; $5411: $cc $96 $43
    inc hl                                        ; $5414: $23
    ld l, b                                       ; $5415: $68
    cp l                                          ; $5416: $bd
    xor $b8                                       ; $5417: $ee $b8
    ld b, d                                       ; $5419: $42
    ld de, $9a46                                  ; $541a: $11 $46 $9a
    call $96dc                                    ; $541d: $cd $dc $96
    ld b, e                                       ; $5420: $43
    ld [hl+], a                                   ; $5421: $22
    ld b, a                                       ; $5422: $47
    sbc h                                         ; $5423: $9c
    sbc $db                                       ; $5424: $de $db
    add l                                         ; $5426: $85
    ld hl, $3701                                  ; $5427: $21 $01 $37
    xor l                                         ; $542a: $ad
    cp $ed                                        ; $542b: $fe $ed
    and [hl]                                      ; $542d: $a6
    jr nz, jr_019_5430                            ; $542e: $20 $00

jr_019_5430:
    ld h, $9d                                     ; $5430: $26 $9d
    rst $28                                       ; $5432: $ef
    db $eb                                        ; $5433: $eb
    ld [hl], h                                    ; $5434: $74
    stop                                          ; $5435: $10 $00
    ld [hl], $9d                                  ; $5437: $36 $9d
    rst $38                                       ; $5439: $ff
    db $eb                                        ; $543a: $eb
    ld [hl], h                                    ; $543b: $74
    stop                                          ; $543c: $10 $00
    dec h                                         ; $543e: $25
    adc d                                         ; $543f: $8a
    db $dd                                        ; $5440: $dd
    call c, Call_019_75a9                         ; $5441: $dc $a9 $75
    ld [hl-], a                                   ; $5444: $32
    inc hl                                        ; $5445: $23
    ld b, l                                       ; $5446: $45
    ld d, a                                       ; $5447: $57
    sbc d                                         ; $5448: $9a
    sbc c                                         ; $5449: $99
    sbc c                                         ; $544a: $99
    sbc c                                         ; $544b: $99
    adc b                                         ; $544c: $88
    ld [hl], a                                    ; $544d: $77
    halt                                          ; $544e: $76
    ld d, l                                       ; $544f: $55
    ld d, [hl]                                    ; $5450: $56
    ld [hl], a                                    ; $5451: $77
    adc c                                         ; $5452: $89
    sbc c                                         ; $5453: $99
    sbc c                                         ; $5454: $99
    add a                                         ; $5455: $87
    ld h, [hl]                                    ; $5456: $66
    ld [hl], a                                    ; $5457: $77
    add a                                         ; $5458: $87
    add [hl]                                      ; $5459: $86
    ld h, [hl]                                    ; $545a: $66
    ld a, b                                       ; $545b: $78
    adc c                                         ; $545c: $89
    xor d                                         ; $545d: $aa
    cp e                                          ; $545e: $bb
    cp d                                          ; $545f: $ba
    add a                                         ; $5460: $87
    ld d, l                                       ; $5461: $55
    ld b, h                                       ; $5462: $44
    ld b, l                                       ; $5463: $45
    ld l, b                                       ; $5464: $68
    xor h                                         ; $5465: $ac
    call $badc                                    ; $5466: $cd $dc $ba
    add [hl]                                      ; $5469: $86
    ld d, e                                       ; $546a: $53
    ld [hl+], a                                   ; $546b: $22
    ld b, [hl]                                    ; $546c: $46
    adc c                                         ; $546d: $89
    cp l                                          ; $546e: $bd
    db $dd                                        ; $546f: $dd
    res 5, c                                      ; $5470: $cb $a9
    ld [hl], l                                    ; $5472: $75
    ld d, l                                       ; $5473: $55
    ld h, l                                       ; $5474: $65
    ld h, a                                       ; $5475: $67
    adc c                                         ; $5476: $89
    xor d                                         ; $5477: $aa
    xor d                                         ; $5478: $aa
    xor c                                         ; $5479: $a9
    add a                                         ; $547a: $87
    ld h, l                                       ; $547b: $65
    ld h, [hl]                                    ; $547c: $66
    ld [hl], a                                    ; $547d: $77
    adc c                                         ; $547e: $89
    sbc d                                         ; $547f: $9a
    sbc c                                         ; $5480: $99
    sbc b                                         ; $5481: $98
    adc b                                         ; $5482: $88
    ld [hl], a                                    ; $5483: $77
    ld h, a                                       ; $5484: $67
    ld a, b                                       ; $5485: $78
    adc c                                         ; $5486: $89
    sbc b                                         ; $5487: $98
    adc b                                         ; $5488: $88
    ld [hl], a                                    ; $5489: $77
    ld a, b                                       ; $548a: $78
    adc b                                         ; $548b: $88
    adc b                                         ; $548c: $88
    adc b                                         ; $548d: $88
    adc b                                         ; $548e: $88
    add a                                         ; $548f: $87
    add a                                         ; $5490: $87
    ld [hl], a                                    ; $5491: $77
    ld [hl], a                                    ; $5492: $77
    ld [hl], a                                    ; $5493: $77
    ld [hl], a                                    ; $5494: $77
    adc b                                         ; $5495: $88
    adc c                                         ; $5496: $89
    sbc c                                         ; $5497: $99
    adc b                                         ; $5498: $88
    ld [hl], a                                    ; $5499: $77
    ld [hl], a                                    ; $549a: $77
    add a                                         ; $549b: $87
    ld a, b                                       ; $549c: $78
    adc b                                         ; $549d: $88
    adc b                                         ; $549e: $88
    adc b                                         ; $549f: $88
    adc b                                         ; $54a0: $88
    adc b                                         ; $54a1: $88
    add a                                         ; $54a2: $87
    ld [hl], a                                    ; $54a3: $77
    ld [hl], a                                    ; $54a4: $77
    ld [hl], a                                    ; $54a5: $77
    adc b                                         ; $54a6: $88
    adc b                                         ; $54a7: $88
    sbc c                                         ; $54a8: $99
    sbc b                                         ; $54a9: $98
    add a                                         ; $54aa: $87
    ld [hl], a                                    ; $54ab: $77
    ld [hl], a                                    ; $54ac: $77
    ld [hl], a                                    ; $54ad: $77
    ld [hl], a                                    ; $54ae: $77
    ld [hl], a                                    ; $54af: $77
    add a                                         ; $54b0: $87
    ld a, b                                       ; $54b1: $78
    adc b                                         ; $54b2: $88
    adc b                                         ; $54b3: $88
    adc b                                         ; $54b4: $88
    add a                                         ; $54b5: $87
    ld [hl], a                                    ; $54b6: $77
    ld [hl], a                                    ; $54b7: $77
    ld a, b                                       ; $54b8: $78
    add a                                         ; $54b9: $87
    ld [hl], a                                    ; $54ba: $77
    ld [hl], a                                    ; $54bb: $77
    ld a, b                                       ; $54bc: $78
    adc b                                         ; $54bd: $88
    sbc c                                         ; $54be: $99
    adc b                                         ; $54bf: $88
    adc b                                         ; $54c0: $88
    ld [hl], a                                    ; $54c1: $77
    ld [hl], a                                    ; $54c2: $77
    ld [hl], a                                    ; $54c3: $77
    adc b                                         ; $54c4: $88
    ld [hl], a                                    ; $54c5: $77
    ld a, b                                       ; $54c6: $78
    ld [hl], a                                    ; $54c7: $77
    ld [hl], a                                    ; $54c8: $77
    ld [hl], a                                    ; $54c9: $77
    ld [hl], a                                    ; $54ca: $77
    adc b                                         ; $54cb: $88
    adc b                                         ; $54cc: $88
    add a                                         ; $54cd: $87
    ld [hl], a                                    ; $54ce: $77
    ld [hl], a                                    ; $54cf: $77
    add a                                         ; $54d0: $87
    ld [hl], a                                    ; $54d1: $77
    ld [hl], a                                    ; $54d2: $77
    ld a, b                                       ; $54d3: $78
    adc b                                         ; $54d4: $88
    adc b                                         ; $54d5: $88
    adc b                                         ; $54d6: $88
    adc b                                         ; $54d7: $88
    ld [hl], a                                    ; $54d8: $77
    ld [hl], a                                    ; $54d9: $77
    ld [hl], a                                    ; $54da: $77
    ld [hl], a                                    ; $54db: $77
    ld [hl], a                                    ; $54dc: $77
    ld [hl], a                                    ; $54dd: $77
    ld [hl], a                                    ; $54de: $77
    adc b                                         ; $54df: $88
    adc b                                         ; $54e0: $88
    adc b                                         ; $54e1: $88
    ld [hl], a                                    ; $54e2: $77
    ld [hl], a                                    ; $54e3: $77
    ld [hl], a                                    ; $54e4: $77
    ld a, b                                       ; $54e5: $78
    adc b                                         ; $54e6: $88
    adc b                                         ; $54e7: $88
    adc b                                         ; $54e8: $88
    adc b                                         ; $54e9: $88
    add a                                         ; $54ea: $87
    ld [hl], a                                    ; $54eb: $77
    ld [hl], a                                    ; $54ec: $77
    ld [hl], a                                    ; $54ed: $77
    ld [hl], a                                    ; $54ee: $77
    ld [hl], a                                    ; $54ef: $77
    add a                                         ; $54f0: $87
    ld [hl], a                                    ; $54f1: $77
    ld [hl], a                                    ; $54f2: $77
    ld [hl], a                                    ; $54f3: $77
    ld a, b                                       ; $54f4: $78
    adc b                                         ; $54f5: $88
    adc b                                         ; $54f6: $88
    adc b                                         ; $54f7: $88
    adc b                                         ; $54f8: $88
    add a                                         ; $54f9: $87
    ld [hl], a                                    ; $54fa: $77
    ld [hl], a                                    ; $54fb: $77
    ld [hl], a                                    ; $54fc: $77
    ld a, b                                       ; $54fd: $78
    adc b                                         ; $54fe: $88
    adc b                                         ; $54ff: $88
    adc b                                         ; $5500: $88
    ld [hl], a                                    ; $5501: $77
    ld [hl], a                                    ; $5502: $77
    ld [hl], a                                    ; $5503: $77
    ld [hl], a                                    ; $5504: $77
    adc b                                         ; $5505: $88
    adc b                                         ; $5506: $88
    adc b                                         ; $5507: $88
    add a                                         ; $5508: $87
    ld [hl], a                                    ; $5509: $77
    ld [hl], a                                    ; $550a: $77
    ld [hl], a                                    ; $550b: $77
    ld [hl], a                                    ; $550c: $77
    adc b                                         ; $550d: $88
    adc b                                         ; $550e: $88
    adc b                                         ; $550f: $88
    adc b                                         ; $5510: $88
    adc b                                         ; $5511: $88
    adc b                                         ; $5512: $88
    add a                                         ; $5513: $87
    ld [hl], a                                    ; $5514: $77
    ld [hl], a                                    ; $5515: $77
    ld [hl], a                                    ; $5516: $77
    ld [hl], a                                    ; $5517: $77
    ld [hl], a                                    ; $5518: $77
    ld [hl], a                                    ; $5519: $77
    ld [hl], a                                    ; $551a: $77
    ld [hl], a                                    ; $551b: $77
    adc b                                         ; $551c: $88
    adc b                                         ; $551d: $88
    adc b                                         ; $551e: $88
    adc b                                         ; $551f: $88
    adc b                                         ; $5520: $88
    adc b                                         ; $5521: $88
    ld [hl], a                                    ; $5522: $77
    ld [hl], a                                    ; $5523: $77
    ld [hl], a                                    ; $5524: $77
    ld [hl], a                                    ; $5525: $77
    ld [hl], a                                    ; $5526: $77
    ld [hl], a                                    ; $5527: $77
    ld [hl], a                                    ; $5528: $77
    ld [hl], a                                    ; $5529: $77
    ld a, b                                       ; $552a: $78
    adc b                                         ; $552b: $88
    adc b                                         ; $552c: $88
    adc b                                         ; $552d: $88
    adc b                                         ; $552e: $88
    adc b                                         ; $552f: $88
    adc b                                         ; $5530: $88
    adc b                                         ; $5531: $88
    add a                                         ; $5532: $87
    ld [hl], a                                    ; $5533: $77
    ld [hl], a                                    ; $5534: $77
    ld [hl], a                                    ; $5535: $77
    ld [hl], a                                    ; $5536: $77
    ld [hl], a                                    ; $5537: $77
    ld [hl], a                                    ; $5538: $77
    ld a, b                                       ; $5539: $78
    adc b                                         ; $553a: $88
    adc b                                         ; $553b: $88
    adc b                                         ; $553c: $88
    adc b                                         ; $553d: $88
    adc b                                         ; $553e: $88
    adc b                                         ; $553f: $88
    add a                                         ; $5540: $87
    ld [hl], a                                    ; $5541: $77
    ld [hl], a                                    ; $5542: $77
    ld [hl], a                                    ; $5543: $77
    ld [hl], a                                    ; $5544: $77
    ld [hl], a                                    ; $5545: $77
    ld [hl], a                                    ; $5546: $77
    adc b                                         ; $5547: $88
    adc b                                         ; $5548: $88
    adc b                                         ; $5549: $88
    adc b                                         ; $554a: $88
    adc b                                         ; $554b: $88
    adc b                                         ; $554c: $88
    add a                                         ; $554d: $87
    ld [hl], a                                    ; $554e: $77
    ld [hl], a                                    ; $554f: $77
    add a                                         ; $5550: $87
    ld [hl], a                                    ; $5551: $77
    ld [hl], a                                    ; $5552: $77
    ld a, b                                       ; $5553: $78
    adc b                                         ; $5554: $88
    adc b                                         ; $5555: $88
    adc b                                         ; $5556: $88
    adc b                                         ; $5557: $88
    adc b                                         ; $5558: $88
    adc b                                         ; $5559: $88
    adc b                                         ; $555a: $88
    adc b                                         ; $555b: $88
    ld [hl], a                                    ; $555c: $77
    ld [hl], a                                    ; $555d: $77
    ld [hl], a                                    ; $555e: $77
    ld [hl], a                                    ; $555f: $77
    add a                                         ; $5560: $87
    ld [hl], a                                    ; $5561: $77
    ld a, b                                       ; $5562: $78
    adc b                                         ; $5563: $88
    adc b                                         ; $5564: $88
    adc b                                         ; $5565: $88
    adc b                                         ; $5566: $88
    adc b                                         ; $5567: $88
    adc b                                         ; $5568: $88
    ld [hl], a                                    ; $5569: $77
    ld [hl], a                                    ; $556a: $77
    ld [hl], a                                    ; $556b: $77
    ld [hl], a                                    ; $556c: $77
    ld [hl], a                                    ; $556d: $77
    adc b                                         ; $556e: $88
    adc b                                         ; $556f: $88
    adc b                                         ; $5570: $88
    adc b                                         ; $5571: $88
    adc b                                         ; $5572: $88
    adc b                                         ; $5573: $88
    adc b                                         ; $5574: $88
    adc b                                         ; $5575: $88
    adc b                                         ; $5576: $88
    adc b                                         ; $5577: $88
    adc b                                         ; $5578: $88
    adc b                                         ; $5579: $88
    adc b                                         ; $557a: $88
    adc b                                         ; $557b: $88
    adc b                                         ; $557c: $88
    adc b                                         ; $557d: $88
    adc b                                         ; $557e: $88
    adc b                                         ; $557f: $88

    db $88, $77, $88, $78, $87, $78, $88, $77, $87, $78, $78, $87, $78, $87, $78, $87
    db $88, $87, $87, $78, $78, $87, $87, $78, $77, $88, $87, $87, $77, $88, $77, $87
    db $87, $77, $88, $77, $88, $77, $88, $77, $88, $77, $77, $77, $88, $78, $87, $88
    db $88, $78, $77, $88, $87, $88, $78, $78, $88, $77, $78, $87, $88, $77, $87, $78
    db $86, $78, $87, $78, $87, $78, $77, $88, $77, $78, $87, $78, $78, $87, $88, $77
    db $87, $78, $77, $78, $77, $87, $78, $77, $88, $77, $87, $79, $87, $79, $87, $78
    db $87, $88, $78, $87, $78, $87, $88, $88, $78, $77, $88, $78, $87, $78, $77, $88
    db $88, $88, $87, $78, $88, $78, $78, $88, $78, $88, $77, $89, $77, $87, $87, $89
    db $87, $86, $78, $87, $78, $97, $68, $97, $78, $87, $88, $77, $79, $76, $89, $77
    db $89, $86, $79, $86, $78, $78, $77, $88, $76, $87, $78, $77, $78, $77, $87, $77
    db $96, $78, $87, $78, $88, $77, $88, $77, $88, $87, $78, $97, $78, $87, $98, $68
    db $88, $67, $98, $78, $86, $97, $78, $87, $79, $86, $89, $77, $79, $96, $69, $87
    db $87, $87, $78, $67, $96, $88, $79, $76, $78, $77, $88, $78, $78, $87, $87, $97
    db $87, $68, $87, $68, $77, $97, $7a, $99, $87, $89, $87, $77, $87, $76, $78, $68
    db $66, $97, $68, $86, $78, $86, $79, $67, $98, $86, $79, $88, $88, $87, $8a, $76
    db $88, $78, $76, $88, $96, $88, $87, $67, $87, $68, $96, $68, $97, $68, $98, $68
    db $88, $78, $98, $59, $c8, $6a, $a9, $89, $99, $87, $8a, $76, $98, $76, $78, $65
    db $46, $57, $67, $95, $56, $97, $67, $7a, $87, $8a, $97, $8b, $76, $a7, $89, $5b
    db $86, $aa, $79, $a8, $99, $95, $79, $54, $76, $56, $65, $37, $95, $38, $77, $57
    db $67, $65, $79, $76, $8a, $78, $97, $8c, $89, $99, $9c, $a8, $7b, $d7, $b8, $b9
    db $a6, $7b, $67, $55, $83, $56, $17, $62, $54, $38, $48, $64, $a8, $57, $9b, $6b
    db $b6, $da, $aa, $9a, $b7, $8d, $a6, $aa, $a9, $94, $9b, $64, $69, $76, $89, $37
    db $82, $28, $54, $65, $87, $a8, $5a, $f9, $6e, $a9, $98, $a7, $7a, $79, $57, $87
    db $56, $95, $a8, $67, $6a, $a3, $b8, $5a, $37, $85, $47, $82, $88, $77, $44, $87
    db $49, $88, $5b, $88, $ae, $99, $9d, $aa, $5a, $a7, $75, $6c, $32, $88, $37, $78
    db $51, $c5, $78, $59, $a9, $67, $9b, $48, $c5, $79, $57, $69, $66, $25, $45, $63
    db $8b, $86, $7c, $a9, $c7, $c9, $c6, $ba, $87, $ac, $a9, $58, $68, $89, $89, $47
    db $94, $46, $c4, $17, $47, $29, $a3, $59, $c6, $bc, $a5, $9c, $a6, $78, $8a, $a4
    db $88, $6e, $54, $7d, $73, $aa, $86, $a9, $83, $5a, $64, $08, $82, $8b, $69, $99
    db $69, $b8, $75, $d7, $23, $d3, $86, $89, $36, $a8, $7a, $6a, $d7, $7e, $da, $8a
    db $88, $bb, $57, $88, $28, $59, $71, $58, $35, $a3, $96, $53, $ba, $55, $3d, $a2
    db $48, $96, $d0, $ba, $79, $67, $94, $a9, $94, $4d, $55, $5b, $76, $aa, $66, $9c
    db $69, $67, $ca, $58, $78, $b5, $9a, $4d, $93, $b8, $49, $96, $8a, $57, $95, $b5
    db $4a, $87, $64, $a8, $3b, $74, $b5, $68, $48, $94, $67, $78, $66, $b7, $96, $6a
    db $99, $77, $b9, $b4, $c8, $bb, $7e, $99, $ca, $99, $9a, $a9, $b5, $d7, $88, $68
    db $86, $51, $a4, $53, $53, $37, $25, $54, $48, $0a, $55, $75, $67, $9a, $2a, $aa
    db $69, $98, $8c, $aa, $a9, $cb, $c7, $ac, $b7, $8a, $c8, $b6, $9d, $88, $7a, $87
    db $86, $49, $53, $74, $80, $75, $25, $28, $22, $46, $24, $64, $48, $28, $47, $6a
    db $3d, $79, $b5, $e5, $c9, $da, $8c, $9a, $d9, $ba, $9d, $89, $aa, $a8, $b7, $aa
    db $89, $7a, $7a, $39, $78, $84, $57, $36, $64, $63, $46, $60, $76, $42, $68, $45
    db $95, $68, $98, $97, $e8, $c7, $cf, $6a, $8f, $89, $87, $d9, $8c, $7a, $99, $8b
    db $88, $a9, $66, $97, $66, $45, $86, $45, $94, $26, $65, $23, $55, $22, $28, $46
    db $08, $78, $28, $7a, $c4, $cd, $8b, $c9, $a8, $cb, $d5, $db, $a9, $79, $89, $7b
    db $69, $8c, $48, $97, $56, $c2, $88, $59, $a5, $67, $a6, $a5, $8a, $78, $5b, $75
    db $94, $59, $37, $54, $a8, $36, $c5, $b5, $9c, $95, $b7, $b8, $99, $99, $c6, $cb
    db $8e, $59, $c8, $97, $bb, $86, $8b, $57, $b5, $93, $86, $25, $80, $65, $52, $62
    db $66, $23, $56, $16, $07, $43, $35, $45, $58, $53, $b6, $89, $68, $d4, $9c, $4e
    db $9a, $9d, $c9, $dc, $bb, $ca, $c9, $fb, $ad, $9c, $c6, $c9, $4b, $a3, $48, $a2
    db $4a, $50, $48, $30, $54, $23, $26, $16, $34, $56, $85, $67, $8a, $49, $b7, $8a
    db $c8, $9d, $bb, $9b, $d9, $bc, $8a, $e7, $ac, $8a, $7d, $5d, $87, $a7, $b5, $b6
    db $8a, $75, $7a, $4a, $87, $98, $59, $76, $72, $76, $24, $74, $34, $53, $75, $23
    db $92, $73, $87, $29, $94, $8f, $4c, $d7, $be, $ac, $9a, $f8, $ae, $8e, $9a, $b6
    db $ac, $4c, $b3, $89, $79, $38, $73, $57, $08, $4a, $05, $92, $23, $64, $05, $35
    db $66, $44, $88, $46, $94, $d7, $5d, $77, $c5, $9f, $57, $c7, $c9, $9a, $7c, $c2
    db $db, $59, $96, $9a, $5b, $7a, $45, $9b, $28, $55, $92, $96, $27, $88, $14, $a4
    db $37, $76, $18, $43, $76, $33, $6b, $38, $69, $a7, $bd, $7d, $be, $ab, $cc, $c9
    db $b8, $bc, $9b, $7a, $6a, $86, $85, $a6, $47, $77, $85, $95, $e5, $79, $89, $96
    db $89, $b7, $7b, $97, $b7, $7b, $88, $58, $98, $92, $9a, $75, $b6, $98, $6e, $5b
    db $89, $a8, $c7, $bd, $9b, $ab, $8b, $a9, $a5, $a6, $55, $43, $53, $01, $24, $10
    db $32, $31, $55, $08, $44, $77, $49, $76, $99, $99, $88, $a7, $98, $a4, $99, $75
    db $aa, $76, $b8, $94, $c8, $6a, $8a, $8b, $6a, $b6, $99, $77, $a9, $65, $a8, $54
    db $87, $63, $47, $43, $66, $55, $48, $57, $57, $77, $88, $7a, $79, $c5, $8e, $67
    db $c7, $da, $aa, $8c, $d7, $db, $8f, $a9, $ab, $99, $97, $97, $88, $59, $77, $75
    db $97, $57, $73, $76, $76, $2c, $39, $55, $76, $62, $68, $16, $65, $45, $88, $79
    db $ba, $9a, $aa, $d7, $ae, $2d, $a2, $d8, $79, $8a, $89, $a8, $aa, $69, $99, $68
    db $89, $78, $96, $96, $68, $66, $54, $74, $05, $32, $02, $40, $24, $22, $64, $44
    db $66, $46, $95, $69, $69, $88, $6c, $89, $ac, $a9, $8a, $aa, $ba, $ca, $db, $6f
    db $a8, $9a, $8d, $7c, $9b, $b9, $9f, $9a, $d9, $bb, $ba, $ab, $a9, $97, $a6, $8b
    db $2b, $a4, $77, $7a, $54, $86, $87, $36, $74, $45, $45, $47, $37, $24, $87, $45
    db $94, $88, $86, $5a, $37, $a7, $4b, $67, $a7, $8a, $b8, $99, $9b, $89, $c8, $79
    db $65, $75, $65, $46, $63, $54, $56, $07, $44, $44, $33, $02, $50, $34, $41, $66
    db $3b, $74, $bb, $68, $ad, $68, $8e, $98, $c6, $ac, $8b, $9b, $8d, $ca, $ab, $9f
    db $89, $f8, $fa, $7f, $bb, $8d, $d6, $cb, $b8, $d9, $ac, $ca, $9a, $bb, $aa, $a8
    db $b6, $77, $75, $38, $51, $69, $14, $85, $45, $7a, $55, $89, $65, $98, $47, $88
    db $47, $66, $57, $35, $63, $45, $33, $63, $66, $55, $87, $76, $95, $77, $57, $48
    db $55, $55, $63, $44, $44, $32, $34, $24, $22, $33, $32, $35, $45, $25, $66, $42
    db $96, $66, $76, $a7, $9c, $8a, $ba, $ab, $cb, $ee, $ad, $de, $af, $fb, $cf, $db
    db $fb, $af, $cb, $ba, $ec, $9d, $cc, $ac, $ca, $ca, $aa, $b9, $ab, $99, $a8, $88
    db $9b, $8b, $59, $b8, $3b, $85, $a8, $8a, $78, $9a, $7a, $99, $a9, $99, $8a, $77
    db $a5, $96, $75, $76, $44, $54, $52, $04, $42, $02, $20, $12, $11, $33, $32, $35
    db $32, $44, $42, $36, $15, $52, $37, $33, $78, $45, $87, $72, $c7, $39, $84, $94
    db $98, $48, $77, $64, $b5, $67, $a3, $66, $98, $3a, $97, $89, $9a, $ba, $9f, $6b
    db $b9, $9c, $89, $c8, $8a, $9a, $c7, $cc, $a8, $bc, $ab, $c9, $ee, $bd, $af, $db
    db $ab, $ba, $99, $76, $88, $66, $89, $66, $7a, $88, $99, $a7, $db, $be, $ba, $eb
    db $9d, $a7, $a9, $76, $87, $77, $68, $75, $78, $56, $b5, $66, $53, $46, $16, $36
    db $14, $46, $13, $54, $18, $35, $66, $26, $74, $55, $45, $a4, $66, $c6, $ab, $cc
    db $a9, $8e, $b8, $99, $a4, $d7, $66, $a4, $5b, $26, $85, $a6, $85, $b8, $7c, $99
    db $c7, $9b, $9a, $ad, $a8, $cb, $7c, $97, $99, $68, $78, $89, $89, $6b, $56, $76
    db $63, $54, $15, $42, $23, $31, $13, $40, $20, $41, $42, $43, $12, $53, $44, $75
    db $84, $7a, $97, $a8, $8c, $79, $cb, $9b, $8e, $7b, $ba, $a8, $ca, $9c, $a8, $a8
    db $a8, $9a, $69, $98, $69, $68, $88, $56, $84, $44, $45, $64, $65, $75, $86, $8a
    db $89, $99, $ab, $bb, $be, $dc, $de, $cd, $ec, $fa, $de, $ab, $da, $aa, $a8, $9a
    db $98, $a7, $97, $97, $88, $88, $68, $a6, $59, $67, $66, $89, $58, $78, $86, $a5
    db $98, $85, $a7, $67, $95, $a6, $7a, $97, $8a, $78, $9a, $6c, $8b, $98, $98, $68
    db $85, $66, $56, $52, $54, $24, $22, $31, $22, $03, $21, $12, $11, $10, $21, $11
    db $20, $20, $24, $13, $33, $53, $45, $54, $65, $56, $86, $78, $88, $9a, $88, $8b
    db $a9, $d7, $ab, $ba, $d8, $ea, $bd, $9c, $b8, $bd, $8a, $ab, $9a, $a8, $99, $59
    db $87, $88, $a7, $8b, $89, $c7, $ba, $aa, $a9, $aa, $aa, $ba, $ba, $aa, $ac, $cd
    db $bd, $da, $ea, $ec, $be, $ca, $bd, $ba, $ca, $ba, $aa, $69, $a9, $6a, $89, $85
    db $58, $46, $36, $61, $65, $36, $06, $23, $12, $42, $24, $32, $46, $47, $48, $74
    db $85, $55, $62, $44, $22, $65, $54, $76, $47, $68, $8a, $5a, $a7, $d9, $9c, $b8
    db $d8, $ac, $a8, $99, $a9, $77, $98, $9a, $ba, $8d, $9b, $aa, $ba, $7a, $97, $a5
    db $88, $76, $75, $76, $65, $66, $45, $43, $44, $22, $51, $35, $34, $25, $64, $45
    db $64, $58, $66, $87, $8c, $9c, $9b, $db, $bc, $da, $9b, $ca, $a9, $ca, $8b, $87
    db $88, $54, $54, $31, $21, $02, $30, $42, $32, $23, $35, $25, $55, $53, $87, $78
    db $a9, $bc, $bc, $dc, $dc, $ec, $cf, $ce, $ce, $dd, $ed, $eb, $db, $bb, $aa, $ab
    db $a9, $bb, $9c, $ba, $ac, $b9, $bc, $99, $da, $9a, $c7, $88, $96, $78, $95, $8b
    db $87, $a9, $79, $9b, $aa, $bb, $ac, $ab, $ab, $aa, $a9, $87, $86, $56, $54, $44
    db $33, $44, $33, $44, $34, $53, $34, $42, $44, $33, $44, $43, $43, $32, $31, $32
    db $23, $03, $30, $34, $23, $34, $33, $43, $64, $44, $55, $56, $78, $86, $a9, $8a
    db $8c, $9b, $c9, $bc, $c9, $db, $bb, $cd, $bb, $ac, $ca, $ba, $aa, $9c, $9a, $7a
    db $a9, $8b, $99, $9c, $9b, $9c, $cb, $bc, $db, $de, $da, $ee, $ad, $ba, $cc, $bb
    db $bc, $7b, $aa, $a9, $7b, $96, $a8, $85, $98, $67, $85, $66, $34, $46, $33, $32
    db $42, $23, $23, $33, $44, $62, $45, $54, $45, $54, $64, $55, $45, $54, $44, $25
    db $24, $32, $52, $34, $42, $63, $14, $61, $36, $23, $35, $22, $51, $37, $35, $65
    db $87, $97, $a9, $ab, $ab, $de, $ad, $dd, $dc, $de, $ce, $de, $ce, $de, $cf, $ec
    db $ed, $dc, $ec, $ee, $dc, $de, $cb, $dc, $db, $db, $bd, $bc, $bc, $ad, $ba, $bc
    db $ac, $8d, $89, $98, $78, $89, $69, $79, $76, $6a, $67, $96, $88, $58, $68, $75
    db $68, $63, $59, $34, $74, $44, $65, $27, $54, $64, $65, $48, $47, $65, $75, $55
    db $64, $54, $65, $25, $52, $43, $52, $52, $60, $61, $32, $64, $16, $37, $14, $44
    db $53, $55, $35, $64, $55, $8a, $6a, $6b, $9a, $8a, $9a, $9a, $9b, $ba, $8a, $bb
    db $ca, $ce, $bc, $eb, $da, $ce, $9a, $e7, $ac, $88, $96, $b7, $86, $a8, $86, $89
    db $67, $77, $66, $75, $46, $77, $57, $86, $79, $67, $88, $87, $67, $57, $55, $57
    db $55, $65, $66, $87, $87, $99, $9b, $bb, $ad, $ca, $fa, $ed, $da, $ca, $a9, $a8
    db $88, $96, $67, $48, $55, $67, $64, $96, $64, $85, $73, $75, $24, $34, $13, $40
    db $41, $42, $46, $66, $79, $79, $9a, $9a, $bb, $ab, $bb, $bb, $cb, $cb, $cc, $bc
    db $db, $dd, $cd, $ce, $cc, $ec, $dd, $ce, $d9, $eb, $b9, $cc, $9b, $cb, $9e, $7a
    db $a8, $89, $57, $46, $62, $45, $23, $42, $32, $22, $31, $32, $21, $31, $32, $04
    db $12, $24, $14, $14, $04, $32, $33, $61, $67, $45, $66, $56, $87, $79, $79, $b6
    db $bb, $9b, $ac, $9b, $ca, $ab, $c8, $a9, $a7, $88, $85, $6a, $45, $95, $66, $54
    db $55, $64, $58, $56, $88, $77, $b8, $9a, $9b, $9b, $aa, $aa, $ba, $bb, $cb, $cb
    db $ce, $ac, $cd, $9f, $9c, $ce, $8c, $bb, $9e, $b8, $ea, $d8, $eb, $9b, $a9, $99
    db $98, $88, $78, $57, $66, $56, $45, $45, $55, $35, $44, $44, $44, $54, $44, $44
    db $45, $44, $45, $53, $45, $34, $34, $43, $34, $23, $42, $43, $24, $24, $25, $14
    db $25, $07, $36, $56, $67, $96, $a8, $79, $97, $ca, $ab, $ab, $cb, $bb, $bd, $cc
    db $cc, $cc, $dc, $bd, $bb, $bb, $cb, $ab, $aa, $ba, $bb, $bb, $bb, $cb, $bb, $bc
    db $bb, $cb, $cb, $bc, $bc, $bc, $cc, $cd, $ce, $dd, $dd, $de, $dd, $dd, $ce, $c9
    db $dc, $99, $98, $97, $87, $66, $65, $55, $55, $54, $44, $34, $23, $31, $22, $20
    db $20, $11, $11, $21, $21, $22, $12, $11, $22, $12, $23, $13, $32, $33, $33, $45
    db $66, $75, $87, $66, $78, $66, $77, $76, $56, $56, $64, $58, $36, $67, $57, $77
    db $67, $76, $86, $55, $55, $65, $44, $75, $57, $96, $89, $7a, $8a, $a9, $ba, $bb
    db $bc, $cc, $ee, $cd, $de, $ed, $fb, $ec, $cd, $cc, $eb, $cc, $bc, $9a, $aa, $a9
    db $ba, $bc, $bb, $bc, $ba, $c9, $b8, $b9, $89, $98, $68, $76, $87, $66, $65, $65
    db $43, $74, $46, $44, $36, $52, $45, $54, $54, $47, $55, $55, $66, $54, $76, $55
    db $64, $66, $47, $55, $74, $77, $75, $68, $59, $58, $65, $85, $36, $54, $35, $54
    db $46, $45, $65, $77, $77, $77, $a7, $99, $8a, $9b, $ab, $cb, $cc, $cc, $cd, $cd
    db $dd, $dd, $dd, $cd, $ed, $de, $cd, $ce, $be, $bc, $bd, $bb, $cb, $c9, $cb, $bb
    db $a9, $c9, $a9, $b7, $87, $69, $75, $78, $68, $77, $68, $67, $68, $65, $86, $55
    db $86, $73, $87, $36, $55, $54, $55, $44, $53, $43, $44, $24, $41, $34, $12, $32
    db $32, $24, $32, $43, $23, $24, $33, $33, $52, $35, $44, $55, $46, $46, $65, $66
    db $65, $76, $76, $66, $66, $66, $65, $66, $56, $56, $56, $55, $44, $64, $34, $55
    db $45, $56, $76, $69, $78, $89, $ab, $aa, $bd, $bc, $dd, $dc, $ed, $de, $de, $df
    db $fc, $fe, $ff, $df, $fe, $fd, $ed, $cd, $e9, $cc, $b9, $ab, $88, $97, $67, $77
    db $57, $66, $55, $64, $67, $54, $68, $45, $76, $58, $57, $66, $66, $85, $77, $87
    db $87, $98, $89, $98, $9a, $a9, $aa, $9b, $aa, $89, $a7, $98, $84, $75, $43, $52
    db $23, $21, $22, $33, $15, $33, $46, $35, $54, $66, $56, $68, $68, $75, $96, $78
    db $89, $87, $a8, $99, $99, $89, $a8, $cb, $9d, $ac, $be, $cd, $dc, $ec, $bc, $9b
    db $a7, $99, $76, $56, $55, $43, $22, $50, $24, $12, $25, $26, $43, $65, $46, $66
    db $66, $98, $7a, $a9, $9c, $ab, $ab, $c8, $cb, $aa, $ba, $a9, $aa, $99, $a9, $8b
    db $89, $99, $77, $98, $66, $85, $58, $64, $44, $62, $35, $03, $34, $02, $12, $22
    db $24, $14, $53, $26, $75, $58, $86, $77, $a7, $a9, $b9, $aa, $ac, $9c, $c9, $db
    db $ba, $cb, $9b, $ca, $9b, $b8, $ab, $9a, $a8, $98, $77, $87, $59, $77, $89, $96
    db $98, $a9, $aa, $8c, $9a, $ac, $98, $e9, $ad, $bb, $cb, $cd, $9c, $ba, $ab, $89
    db $88, $77, $55, $65, $54, $44, $33, $32, $22, $31, $12, $21, $10, $21, $11, $21
    db $23, $32, $45, $32, $52, $55, $37, $65, $67, $67, $98, $79, $89, $aa, $8c, $a9
    db $aa, $bb, $ac, $bc, $cb, $bc, $cb, $dc, $ad, $ba, $db, $9d, $cb, $db, $cc, $cb
    db $cc, $cb, $ac, $ab, $ab, $9d, $a9, $cb, $9a, $c9, $b9, $bb, $99, $ca, $7c, $ba
    db $9b, $8b, $8a, $a7, $a8, $69, $45, $72, $45, $14, $33, $24, $22, $51, $34, $53
    db $44, $55, $34, $65, $46, $74, $4a, $56, $88, $77, $9a, $8a, $88, $99, $98, $77
    db $48, $57, $46, $56, $55, $55, $55, $46, $45, $45, $34, $33, $54, $24, $24, $15
    db $34, $53, $84, $77, $78, $88, $b7, $aa, $9c, $9c, $cb, $cd, $cd, $cd, $cd, $ac
    db $9b, $9c, $ba, $ab, $98, $b6, $85, $97, $57, $55, $65, $57, $55, $65, $56, $57
    db $56, $55, $66, $55, $54, $54, $56, $65, $66, $75, $76, $78, $69, $79, $99, $88
    db $98, $9b, $89, $88, $97, $96, $97, $75, $96, $78, $87, $66, $76, $75, $66, $65
    db $84, $66, $65, $65, $55, $56, $45, $54, $65, $56, $67, $77, $88, $88, $99, $a9
    db $ba, $bb, $cb, $dc, $cd, $dd, $dc, $ee, $dd, $ed, $ed, $ee, $ed, $ef, $ee, $ff
    db $ee, $fe, $cd, $cc, $bc, $ac, $99, $99, $67, $74, $63, $53, $44, $24, $43, $34
    db $36, $27, $56, $65, $86, $85, $79, $58, $77, $96, $88, $78, $67, $76, $76, $67
    db $66, $66, $65, $56, $55, $44, $44, $44, $34, $33, $43, $33, $32, $33, $41, $22
    db $11, $11, $01, $20, $12, $12, $33, $34, $64, $75, $98, $7a, $89, $ab, $aa, $cb
    db $cd, $bc, $cc, $de, $ce, $dd, $ee, $cf, $ed, $ed, $dd, $dc, $ac, $ca, $aa, $b7
    db $a9, $98, $88, $97, $98, $67, $a7, $89, $99, $89, $a9, $9a, $aa, $ac, $ab, $bb
    db $bb, $ac, $bb, $aa, $99, $97, $88, $77, $77, $66, $66, $65, $55, $54, $44, $44
    db $44, $34, $44, $43, $43, $33, $22, $12, $10, $10, $00, $00, $01, $11, $22, $34
    db $45, $56, $67, $88, $99, $aa, $bb, $bb, $cc, $cb, $cc, $cc, $cc, $cc, $cc, $dd
    db $dc, $dd, $dd, $cc, $bc, $cb, $aa, $b9, $b8, $a8, $98, $89, $78, $78, $77, $87
    db $87, $78, $88, $9a, $99, $ba, $ab, $ca, $bc, $ca, $bd, $bb, $bb, $aa, $99, $88
    db $87, $66, $65, $55, $54, $44, $43, $44, $32, $33, $23, $22, $21, $22, $11, $11
    db $11, $01, $11, $11, $12, $24, $25, $46, $66, $a8, $99, $bb, $ab, $cc, $ac, $ab
    db $aa, $99, $a8, $99, $89, $99, $a9, $aa, $bb, $ba, $cb, $bc, $bb, $cb, $bb, $ac
    db $ad, $ab, $aa, $aa, $98, $a8, $98, $88, $87, $a8, $a8, $98, $99, $9a, $b9, $ba
    db $bc, $bb, $ab, $a9, $98, $76, $55, $54, $33, $23, $24, $22, $43, $34, $34, $44
    db $44, $43, $44, $33, $43, $33, $32, $31, $52, $23, $42, $34, $55, $57, $58, $96
    db $89, $87, $98, $98, $97, $88, $88, $98, $98, $8a, $78, $98, $89, $88, $99, $ba
    db $bb, $bd, $cc, $cc, $bd, $cb, $bc, $ba, $aa, $a9, $aa, $a9, $99, $79, $98, $78
    db $88, $78, $86, $76, $98, $67, $88, $88, $8a, $89, $9a, $99, $9a, $98, $99, $a8
    db $a9, $b9, $9b, $98, $a9, $97, $a7, $97, $78, $77, $98, $78, $87, $87, $86, $77
    db $56, $55, $44, $44, $33, $42, $15, $34, $53, $64, $65, $55, $74, $55, $66, $45
    db $85, $76, $88, $88, $a9, $aa, $9b, $9a, $9a, $8a, $88, $99, $89, $86, $87, $86
    db $87, $85, $58, $55, $85, $64, $56, $56, $55, $77, $59, $67, $87, $97, $98, $79
    db $89, $88, $8a, $89, $99, $aa, $9a, $c9, $ac, $bb, $ba, $ab, $a9, $a9, $ab, $9a
    db $ab, $9a, $aa, $8a, $88, $98, $77, $77, $66, $77, $65, $66, $65, $66, $56, $65
    db $55, $55, $45, $55, $45, $66, $65, $77, $75, $a7, $78, $88, $87, $78, $88, $89
    db $89, $88, $98, $77, $85, $85, $66, $56, $66, $67, $76, $77, $77, $87, $69, $87
    db $68, $96, $78, $76, $77, $57, $55, $64, $57, $56, $56, $75, $76, $65, $57, $56
    db $46, $34, $64, $34, $55, $55, $66, $76, $88, $87, $a9, $99, $aa, $bb, $ba, $bc
    db $bc, $bc, $cc, $cc, $bc, $cb, $bb, $cb, $be, $bb, $cc, $bc, $aa, $cc, $bb, $9b
    db $99, $a7, $77, $78, $77, $55, $77, $54, $67, $67, $85, $78, $95, $77, $77, $98
    db $88, $98, $89, $a9, $89, $a9, $89, $89, $99, $88, $99, $79, $86, $87, $77, $75
    db $85, $65, $54, $55, $44, $44, $43, $33, $33, $43, $22, $23, $23, $32, $43, $33
    db $54, $43, $53, $26, $25, $54, $55, $77, $68, $8a, $99, $9a, $aa, $aa, $ba, $bb
    db $ab, $ab, $aa, $aa, $9b, $a9, $a9, $ba, $ab, $ba, $bb, $cb, $bb, $cb, $ba, $ab
    db $b9, $9a, $a8, $a9, $a9, $9b, $88, $aa, $89, $a8, $89, $97, $78, $77, $66, $66
    db $56, $65, $55, $66, $67, $56, $68, $67, $77, $67, $87, $77, $87, $86, $87, $76
    db $87, $68, $87, $78, $77, $77, $77, $76, $56, $55, $55, $55, $45, $55, $45, $44
    db $45, $44, $54, $44, $44, $55, $54, $55, $45, $56, $55, $65, $67, $57, $68, $68
    db $88, $88, $9a, $89, $a9, $bb, $9a, $ba, $ab, $9a, $aa, $ba, $9b, $ba, $aa, $a9
    db $9a, $a8, $89, $99, $88, $97, $88, $87, $88, $88, $78, $88, $89, $89, $9a, $aa
    db $aa, $aa, $bb, $aa, $ca, $cb, $ab, $ba, $cb, $ba, $bc, $cb, $ba, $bb, $9a, $98
    db $88, $78, $65, $56, $35, $32, $32, $23, $21, $23, $31, $23, $22, $43, $44, $44
    db $56, $66, $87, $88, $9a, $9a, $ab, $9b, $99, $9a, $98, $a9, $a8, $99, $98, $77
    db $96, $87, $76, $76, $77, $46, $74, $66, $56, $55, $54, $66, $56, $66, $55, $56
    db $65, $66, $77, $87, $79, $98, $9a, $89, $aa, $9a, $a9, $aa, $98, $99, $98, $87
    db $99, $89, $79, $98, $89, $87, $87, $87, $77, $78, $86, $88, $77, $88, $88, $99
    db $99, $8a, $99, $98, $99, $99, $99, $89, $99, $89, $89, $88, $87, $88, $87, $77
    db $87, $66, $66, $66, $65, $55, $55, $55, $55, $55, $55, $45, $53, $45, $44, $44
    db $45, $35, $55, $55, $66, $67, $77, $87, $89, $88, $88, $98, $98, $9a, $9a, $a9
    db $aa, $aa, $9a, $aa, $aa, $aa, $9a, $a9, $89, $88, $89, $77, $77, $87, $78, $67
    db $88, $77, $77, $88, $88, $78, $98, $89, $8a, $99, $9a, $99, $aa, $9a, $9a, $aa
    db $99, $aa, $99, $a9, $99, $99, $99, $89, $88, $88, $87, $77, $86, $77, $67, $66
    db $86, $66, $76, $56, $66, $66, $66, $66, $76, $76, $77, $67, $77, $68, $76, $78
    db $87, $88, $78, $88, $89, $88, $98, $99, $99, $99, $99, $9a, $99, $99, $9a, $88
    db $98, $87, $87, $67, $76, $66, $66, $66, $66, $66, $66, $66, $65, $66, $56, $66
    db $66, $66, $67, $77, $67, $77, $77, $77, $87, $87, $77, $78, $77, $77, $77, $77
    db $87, $77, $67, $76, $76, $66, $66, $66, $66, $66, $65, $66, $66, $67, $67, $77
    db $88, $88, $99, $99, $99, $99, $a9, $a9, $99, $99, $99, $99, $99, $89, $99, $88
    db $89, $88, $88, $88, $88, $88, $88, $88, $99, $99, $99, $99, $99, $99, $99, $9a
    db $99, $9a, $a9, $9a, $98, $99, $89, $98, $88, $88, $77, $77, $77, $76, $66, $66
    db $66, $66, $66, $56, $65, $66, $66, $66, $66, $65, $66, $66, $66, $66, $76, $67
    db $66, $76, $67, $77, $77, $78, $78, $88, $88, $88, $88, $88, $88, $88, $88, $88
    db $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88
    db $89, $98, $89, $99, $98, $98, $99, $98, $89, $88, $88, $88, $88, $88, $88, $88
    db $88, $88, $88, $87, $77, $77, $77, $77, $76, $76, $67, $76, $67, $77, $77, $77
    db $87, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $87, $87, $87, $88, $78
    db $87, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77
    db $87, $77, $77, $77, $77, $77, $77, $77, $77, $78, $88, $88, $88, $88, $88, $88
    db $88, $88, $88, $88, $88, $88, $88, $78, $87, $78, $78, $78, $77, $77, $77, $77
    db $87, $77, $77, $77, $77, $78, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88
    db $78, $01

    adc b                                         ; $6502: $88
    adc b                                         ; $6503: $88
    adc b                                         ; $6504: $88
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

    db $88, $88, $88, $88, $78, $87, $78, $77, $77, $77, $77, $77, $77, $87, $77, $77
    db $87, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77
    db $87, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77

    adc b                                         ; $6540: $88
    adc b                                         ; $6541: $88
    ld a, b                                       ; $6542: $78
    ld a, b                                       ; $6543: $78
    adc b                                         ; $6544: $88
    adc b                                         ; $6545: $88
    adc b                                         ; $6546: $88
    adc b                                         ; $6547: $88
    adc b                                         ; $6548: $88
    ld a, b                                       ; $6549: $78
    adc b                                         ; $654a: $88
    ld a, b                                       ; $654b: $78
    adc c                                         ; $654c: $89
    sbc c                                         ; $654d: $99
    sbc c                                         ; $654e: $99
    sbc c                                         ; $654f: $99
    sbc d                                         ; $6550: $9a
    cp h                                          ; $6551: $bc
    sbc $de                                       ; $6552: $de $de
    sub d                                         ; $6554: $92
    jr nz, jr_019_65ac                            ; $6555: $20 $55

    ld b, $71                                     ; $6557: $06 $71
    ld sp, $8c6f                                  ; $6559: $31 $6f $8c
    sub h                                         ; $655c: $94
    db $ec                                        ; $655d: $ec
    ld hl, sp+$68                                 ; $655e: $f8 $68
    sbc a                                         ; $6560: $9f
    sbc b                                         ; $6561: $98
    jr nz, jr_019_6574                            ; $6562: $20 $10

    daa                                           ; $6564: $27
    rst $08                                       ; $6565: $cf
    call nz, $5a20                                ; $6566: $c4 $20 $5a
    or a                                          ; $6569: $b7
    inc hl                                        ; $656a: $23
    ld l, d                                       ; $656b: $6a
    cp h                                          ; $656c: $bc
    db $dd                                        ; $656d: $dd
    cp e                                          ; $656e: $bb
    cp e                                          ; $656f: $bb
    cp e                                          ; $6570: $bb
    cp h                                          ; $6571: $bc
    xor e                                         ; $6572: $ab
    xor [hl]                                      ; $6573: $ae

jr_019_6574:
    call z, $b6ca                                 ; $6574: $cc $ca $b6
    ld b, e                                       ; $6577: $43
    ld l, b                                       ; $6578: $68
    sbc e                                         ; $6579: $9b
    adc d                                         ; $657a: $8a
    adc b                                         ; $657b: $88
    or [hl]                                       ; $657c: $b6
    cp b                                          ; $657d: $b8
    sbc d                                         ; $657e: $9a
    ld l, e                                       ; $657f: $6b
    add l                                         ; $6580: $85
    ld b, c                                       ; $6581: $41
    inc hl                                        ; $6582: $23
    ld b, e                                       ; $6583: $43
    inc [hl]                                      ; $6584: $34
    inc sp                                        ; $6585: $33
    ld [hl+], a                                   ; $6586: $22
    db $10                                        ; $6587: $10
    ld de, $0011                                  ; $6588: $11 $11 $00
    ld bc, $2511                                  ; $658b: $01 $11 $25
    ld a, c                                       ; $658e: $79
    add a                                         ; $658f: $87
    ld h, h                                       ; $6590: $64
    ld [hl+], a                                   ; $6591: $22
    ld b, h                                       ; $6592: $44
    ld [hl], a                                    ; $6593: $77
    adc c                                         ; $6594: $89
    ld b, a                                       ; $6595: $47
    ld d, [hl]                                    ; $6596: $56
    add [hl]                                      ; $6597: $86
    xor e                                         ; $6598: $ab
    call $dddf                                    ; $6599: $cd $df $dd
    db $eb                                        ; $659c: $eb
    db $ed                                        ; $659d: $ed
    sbc $de                                       ; $659e: $de $de
    xor $ed                                       ; $65a0: $ee $ed
    call c, $c9bb                                 ; $65a2: $dc $bb $c9
    xor e                                         ; $65a5: $ab
    xor d                                         ; $65a6: $aa
    add a                                         ; $65a7: $87
    ld h, [hl]                                    ; $65a8: $66
    ld d, l                                       ; $65a9: $55
    ld d, h                                       ; $65aa: $54
    ld d, [hl]                                    ; $65ab: $56

jr_019_65ac:
    ld l, b                                       ; $65ac: $68
    adc c                                         ; $65ad: $89
    xor d                                         ; $65ae: $aa
    call $eede                                    ; $65af: $cd $de $ee
    rst $28                                       ; $65b2: $ef
    rst $38                                       ; $65b3: $ff
    cp $fe                                        ; $65b4: $fe $fe
    xor $de                                       ; $65b6: $ee $de
    res 2, a                                      ; $65b8: $cb $97
    add a                                         ; $65ba: $87
    ld a, b                                       ; $65bb: $78
    ld [hl], a                                    ; $65bc: $77
    ld d, l                                       ; $65bd: $55
    ld h, [hl]                                    ; $65be: $66
    add [hl]                                      ; $65bf: $86
    ld d, h                                       ; $65c0: $54
    ld [hl-], a                                   ; $65c1: $32
    ld [hl+], a                                   ; $65c2: $22
    ld [hl+], a                                   ; $65c3: $22
    db $10                                        ; $65c4: $10
    stop                                          ; $65c5: $10 $00
    ld de, $0011                                  ; $65c7: $11 $11 $00
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    nop                                           ; $65cc: $00
    ld bc, $4302                                  ; $65cd: $01 $02 $43
    ld b, d                                       ; $65d0: $42
    ld hl, $3302                                  ; $65d1: $21 $02 $33
    add a                                         ; $65d4: $87
    ld h, a                                       ; $65d5: $67
    ld l, d                                       ; $65d6: $6a
    adc b                                         ; $65d7: $88
    ld h, a                                       ; $65d8: $67
    add a                                         ; $65d9: $87
    cp l                                          ; $65da: $bd
    db $fd                                        ; $65db: $fd
    cp l                                          ; $65dc: $bd
    set 3, [hl]                                   ; $65dd: $cb $de
    db $ec                                        ; $65df: $ec
    call $fdbd                                    ; $65e0: $cd $bd $fd
    rst $28                                       ; $65e3: $ef
    cp $fd                                        ; $65e4: $fe $fd
    call z, $99ba                                 ; $65e6: $cc $ba $99
    xor d                                         ; $65e9: $aa
    sbc l                                         ; $65ea: $9d
    adc $d6                                       ; $65eb: $ce $d6
    add l                                         ; $65ed: $85
    ld b, h                                       ; $65ee: $44
    ld hl, $0111                                  ; $65ef: $21 $11 $01
    ld bc, $1210                                  ; $65f2: $01 $10 $12
    inc de                                        ; $65f5: $13
    ld b, l                                       ; $65f6: $45
    sbc b                                         ; $65f7: $98
    ld a, c                                       ; $65f8: $79
    adc c                                         ; $65f9: $89
    xor e                                         ; $65fa: $ab
    xor c                                         ; $65fb: $a9
    sbc b                                         ; $65fc: $98
    adc c                                         ; $65fd: $89
    sbc c                                         ; $65fe: $99
    sbc c                                         ; $65ff: $99
    sbc d                                         ; $6600: $9a
    sbc c                                         ; $6601: $99
    sbc c                                         ; $6602: $99
    sbc c                                         ; $6603: $99
    adc c                                         ; $6604: $89
    sbc b                                         ; $6605: $98
    add a                                         ; $6606: $87
    adc c                                         ; $6607: $89
    adc c                                         ; $6608: $89
    sbc c                                         ; $6609: $99
    adc c                                         ; $660a: $89
    sbc c                                         ; $660b: $99
    cp e                                          ; $660c: $bb
    ret                                           ; $660d: $c9


    sbc d                                         ; $660e: $9a
    add [hl]                                      ; $660f: $86
    ld h, [hl]                                    ; $6610: $66
    ld b, h                                       ; $6611: $44
    ld b, [hl]                                    ; $6612: $46
    ld d, e                                       ; $6613: $53
    jr nz, jr_019_6637                            ; $6614: $20 $21

    ld bc, $1111                                  ; $6616: $01 $11 $11
    ld [hl+], a                                   ; $6619: $22
    inc sp                                        ; $661a: $33
    ld d, l                                       ; $661b: $55
    ld b, l                                       ; $661c: $45
    ld h, h                                       ; $661d: $64
    ld d, [hl]                                    ; $661e: $56
    ld h, [hl]                                    ; $661f: $66
    add a                                         ; $6620: $87
    ld a, b                                       ; $6621: $78
    ld a, b                                       ; $6622: $78
    add a                                         ; $6623: $87
    ld a, b                                       ; $6624: $78
    adc c                                         ; $6625: $89
    xor e                                         ; $6626: $ab
    cp l                                          ; $6627: $bd
    adc $ee                                       ; $6628: $ce $ee
    rst $38                                       ; $662a: $ff
    xor $ee                                       ; $662b: $ee $ee
    db $dd                                        ; $662d: $dd
    call c, $cccc                                 ; $662e: $dc $cc $cc
    db $dd                                        ; $6631: $dd
    sbc $ee                                       ; $6632: $de $ee
    rst $28                                       ; $6634: $ef
    rst $38                                       ; $6635: $ff
    rst $38                                       ; $6636: $ff

jr_019_6637:
    rst $38                                       ; $6637: $ff
    rst $38                                       ; $6638: $ff
    rst $28                                       ; $6639: $ef
    db $ed                                        ; $663a: $ed
    call c, $bacb                                 ; $663b: $dc $cb $ba
    sbc d                                         ; $663e: $9a
    sbc c                                         ; $663f: $99
    sbc c                                         ; $6640: $99
    sub a                                         ; $6641: $97
    halt                                          ; $6642: $76
    ld h, [hl]                                    ; $6643: $66
    ld d, h                                       ; $6644: $54
    ld b, e                                       ; $6645: $43
    inc hl                                        ; $6646: $23
    ld [hl-], a                                   ; $6647: $32
    ld sp, $0010                                  ; $6648: $31 $10 $00
    nop                                           ; $664b: $00
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    nop                                           ; $664e: $00
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665a: $00
    nop                                           ; $665b: $00
    nop                                           ; $665c: $00
    nop                                           ; $665d: $00
    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    ld de, $5624                                  ; $6660: $11 $24 $56
    sbc e                                         ; $6663: $9b
    call $ffde                                    ; $6664: $cd $de $ff
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    rst $38                                       ; $6669: $ff
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    rst $38                                       ; $666c: $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    rst $38                                       ; $6671: $ff
    rst $38                                       ; $6672: $ff
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    rst $38                                       ; $6678: $ff
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    rst $38                                       ; $667b: $ff
    cp $ee                                        ; $667c: $fe $ee
    db $dd                                        ; $667e: $dd
    db $db                                        ; $667f: $db
    cp h                                          ; $6680: $bc
    cp d                                          ; $6681: $ba
    xor c                                         ; $6682: $a9
    adc b                                         ; $6683: $88
    ld [hl], a                                    ; $6684: $77
    ld [hl], a                                    ; $6685: $77
    ld a, b                                       ; $6686: $78
    ld a, b                                       ; $6687: $78
    ld [hl], a                                    ; $6688: $77
    halt                                          ; $6689: $76
    ld [hl], l                                    ; $668a: $75
    ld d, h                                       ; $668b: $54
    inc [hl]                                      ; $668c: $34
    ld b, e                                       ; $668d: $43
    ld [hl+], a                                   ; $668e: $22
    stop                                          ; $668f: $10 $00
    ld de, $1111                                  ; $6691: $11 $11 $11
    ld de, $1111                                  ; $6694: $11 $11 $11
    ld de, $1111                                  ; $6697: $11 $11 $11
    ld [de], a                                    ; $669a: $12
    ld [de], a                                    ; $669b: $12
    ld [hl+], a                                   ; $669c: $22
    ld [hl+], a                                   ; $669d: $22
    inc sp                                        ; $669e: $33
    inc [hl]                                      ; $669f: $34
    ld b, h                                       ; $66a0: $44
    ld b, l                                       ; $66a1: $45
    ld d, l                                       ; $66a2: $55
    ld d, l                                       ; $66a3: $55
    ld d, l                                       ; $66a4: $55
    ld d, l                                       ; $66a5: $55
    ld h, [hl]                                    ; $66a6: $66
    ld h, [hl]                                    ; $66a7: $66
    ld h, [hl]                                    ; $66a8: $66
    ld h, [hl]                                    ; $66a9: $66
    ld h, [hl]                                    ; $66aa: $66
    ld [hl], a                                    ; $66ab: $77
    ld a, b                                       ; $66ac: $78
    adc b                                         ; $66ad: $88
    sbc d                                         ; $66ae: $9a
    sbc d                                         ; $66af: $9a
    cp e                                          ; $66b0: $bb
    cp e                                          ; $66b1: $bb
    call $ddcd                                    ; $66b2: $cd $cd $dd
    db $ed                                        ; $66b5: $ed
    xor $ee                                       ; $66b6: $ee $ee
    xor $de                                       ; $66b8: $ee $de
    db $dd                                        ; $66ba: $dd
    db $dd                                        ; $66bb: $dd
    call c, $cccc                                 ; $66bc: $dc $cc $cc
    res 7, e                                      ; $66bf: $cb $bb
    cp e                                          ; $66c1: $bb
    cp d                                          ; $66c2: $ba
    xor d                                         ; $66c3: $aa
    xor d                                         ; $66c4: $aa
    xor c                                         ; $66c5: $a9
    xor d                                         ; $66c6: $aa
    sbc e                                         ; $66c7: $9b
    xor d                                         ; $66c8: $aa
    xor d                                         ; $66c9: $aa
    xor c                                         ; $66ca: $a9
    sbc c                                         ; $66cb: $99
    sbc b                                         ; $66cc: $98
    sbc b                                         ; $66cd: $98
    adc b                                         ; $66ce: $88
    ld a, c                                       ; $66cf: $79
    adc b                                         ; $66d0: $88
    adc b                                         ; $66d1: $88
    adc b                                         ; $66d2: $88
    adc b                                         ; $66d3: $88
    ld [hl], a                                    ; $66d4: $77
    ld [hl], a                                    ; $66d5: $77
    ld [hl], a                                    ; $66d6: $77
    ld h, a                                       ; $66d7: $67
    ld h, [hl]                                    ; $66d8: $66
    ld h, l                                       ; $66d9: $65
    ld d, l                                       ; $66da: $55
    ld d, l                                       ; $66db: $55
    ld d, l                                       ; $66dc: $55
    ld h, l                                       ; $66dd: $65
    ld h, l                                       ; $66de: $65
    ld d, [hl]                                    ; $66df: $56
    ld d, l                                       ; $66e0: $55
    ld h, l                                       ; $66e1: $65
    ld d, l                                       ; $66e2: $55
    ld d, [hl]                                    ; $66e3: $56
    ld d, l                                       ; $66e4: $55
    ld h, l                                       ; $66e5: $65
    ld b, [hl]                                    ; $66e6: $46
    ld [hl], l                                    ; $66e7: $75
    halt                                          ; $66e8: $76
    ld [hl], a                                    ; $66e9: $77
    ld l, b                                       ; $66ea: $68
    ld [hl], a                                    ; $66eb: $77
    ld a, b                                       ; $66ec: $78
    sbc c                                         ; $66ed: $99
    xor c                                         ; $66ee: $a9
    xor b                                         ; $66ef: $a8
    adc d                                         ; $66f0: $8a
    sbc c                                         ; $66f1: $99
    sbc c                                         ; $66f2: $99
    adc c                                         ; $66f3: $89
    sbc c                                         ; $66f4: $99
    xor c                                         ; $66f5: $a9
    xor c                                         ; $66f6: $a9
    sbc d                                         ; $66f7: $9a
    adc c                                         ; $66f8: $89
    xor b                                         ; $66f9: $a8
    xor c                                         ; $66fa: $a9
    xor d                                         ; $66fb: $aa
    sbc d                                         ; $66fc: $9a
    sbc c                                         ; $66fd: $99
    sbc c                                         ; $66fe: $99
    adc b                                         ; $66ff: $88
    add a                                         ; $6700: $87
    adc b                                         ; $6701: $88
    adc b                                         ; $6702: $88
    adc b                                         ; $6703: $88
    ld a, b                                       ; $6704: $78
    add a                                         ; $6705: $87
    add [hl]                                      ; $6706: $86
    ld [hl], a                                    ; $6707: $77
    ld [hl], a                                    ; $6708: $77
    ld h, a                                       ; $6709: $67
    ld [hl], a                                    ; $670a: $77
    halt                                          ; $670b: $76
    ld [hl], a                                    ; $670c: $77
    ld [hl], a                                    ; $670d: $77
    ld [hl], a                                    ; $670e: $77
    ld [hl], a                                    ; $670f: $77
    add a                                         ; $6710: $87
    ld [hl], a                                    ; $6711: $77
    ld [hl], a                                    ; $6712: $77
    ld [hl], a                                    ; $6713: $77
    ld h, a                                       ; $6714: $67
    ld [hl], a                                    ; $6715: $77
    ld a, b                                       ; $6716: $78
    add a                                         ; $6717: $87
    adc b                                         ; $6718: $88
    adc b                                         ; $6719: $88
    adc b                                         ; $671a: $88
    adc b                                         ; $671b: $88
    adc b                                         ; $671c: $88
    adc b                                         ; $671d: $88
    adc b                                         ; $671e: $88
    sub a                                         ; $671f: $97
    adc c                                         ; $6720: $89
    adc b                                         ; $6721: $88
    adc b                                         ; $6722: $88
    adc b                                         ; $6723: $88
    sbc c                                         ; $6724: $99
    ld a, b                                       ; $6725: $78
    sbc c                                         ; $6726: $99
    sbc c                                         ; $6727: $99
    adc c                                         ; $6728: $89
    sbc c                                         ; $6729: $99
    sbc c                                         ; $672a: $99
    sbc c                                         ; $672b: $99
    sbc c                                         ; $672c: $99
    adc d                                         ; $672d: $8a
    adc c                                         ; $672e: $89
    xor c                                         ; $672f: $a9
    adc c                                         ; $6730: $89
    sbc c                                         ; $6731: $99
    adc b                                         ; $6732: $88
    sbc b                                         ; $6733: $98
    sbc b                                         ; $6734: $98
    adc b                                         ; $6735: $88
    ld [hl], a                                    ; $6736: $77
    ld [hl], a                                    ; $6737: $77
    ld [hl], a                                    ; $6738: $77
    ld [hl], a                                    ; $6739: $77
    ld [hl], a                                    ; $673a: $77
    halt                                          ; $673b: $76
    ld h, [hl]                                    ; $673c: $66
    ld h, [hl]                                    ; $673d: $66
    ld h, [hl]                                    ; $673e: $66
    ld h, [hl]                                    ; $673f: $66
    ld d, l                                       ; $6740: $55
    ld d, l                                       ; $6741: $55
    ld d, l                                       ; $6742: $55
    ld d, l                                       ; $6743: $55
    ld d, l                                       ; $6744: $55
    ld d, l                                       ; $6745: $55
    ld d, l                                       ; $6746: $55
    ld d, l                                       ; $6747: $55
    ld h, [hl]                                    ; $6748: $66
    ld h, [hl]                                    ; $6749: $66
    ld h, [hl]                                    ; $674a: $66
    ld h, [hl]                                    ; $674b: $66
    ld h, a                                       ; $674c: $67
    ld [hl], a                                    ; $674d: $77
    ld [hl], a                                    ; $674e: $77
    ld [hl], a                                    ; $674f: $77
    add a                                         ; $6750: $87
    adc b                                         ; $6751: $88
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
    ld a, b                                       ; $675c: $78
    ld [hl], a                                    ; $675d: $77
    ld [hl], a                                    ; $675e: $77
    ld [hl], a                                    ; $675f: $77
    add a                                         ; $6760: $87
    ld [hl], a                                    ; $6761: $77
    ld [hl], a                                    ; $6762: $77
    ld [hl], a                                    ; $6763: $77
    ld [hl], a                                    ; $6764: $77

Jump_019_6765:
    ld a, b                                       ; $6765: $78
    ld a, b                                       ; $6766: $78
    ld a, b                                       ; $6767: $78
    ld [hl], a                                    ; $6768: $77
    ld [hl], a                                    ; $6769: $77
    ld [hl], a                                    ; $676a: $77
    add a                                         ; $676b: $87
    adc b                                         ; $676c: $88
    ld a, b                                       ; $676d: $78
    adc b                                         ; $676e: $88
    ld a, b                                       ; $676f: $78
    adc b                                         ; $6770: $88
    add a                                         ; $6771: $87
    add a                                         ; $6772: $87
    adc b                                         ; $6773: $88
    ld [hl], a                                    ; $6774: $77
    halt                                          ; $6775: $76
    add a                                         ; $6776: $87
    ld [hl], a                                    ; $6777: $77
    ld h, a                                       ; $6778: $67
    ld h, [hl]                                    ; $6779: $66
    ld h, a                                       ; $677a: $67
    ld h, [hl]                                    ; $677b: $66
    ld h, l                                       ; $677c: $65
    halt                                          ; $677d: $76
    ld h, [hl]                                    ; $677e: $66
    ld d, [hl]                                    ; $677f: $56
    add [hl]                                      ; $6780: $86
    ld h, [hl]                                    ; $6781: $66
    ld h, [hl]                                    ; $6782: $66
    ld h, [hl]                                    ; $6783: $66
    ld h, [hl]                                    ; $6784: $66

Call_019_6785:
    ld h, [hl]                                    ; $6785: $66
    ld h, [hl]                                    ; $6786: $66
    ld h, [hl]                                    ; $6787: $66
    ld h, [hl]                                    ; $6788: $66
    halt                                          ; $6789: $76
    ld [hl], a                                    ; $678a: $77
    ld [hl], a                                    ; $678b: $77
    ld [hl], a                                    ; $678c: $77
    ld [hl], a                                    ; $678d: $77
    ld [hl], a                                    ; $678e: $77
    ld [hl], a                                    ; $678f: $77
    add a                                         ; $6790: $87
    ld [hl], a                                    ; $6791: $77
    ld [hl], a                                    ; $6792: $77
    ld [hl], a                                    ; $6793: $77
    ld a, b                                       ; $6794: $78
    ld [hl], a                                    ; $6795: $77
    add a                                         ; $6796: $87
    ld a, b                                       ; $6797: $78
    adc b                                         ; $6798: $88
    adc b                                         ; $6799: $88
    sub a                                         ; $679a: $97
    adc c                                         ; $679b: $89
    sbc c                                         ; $679c: $99
    adc c                                         ; $679d: $89
    sbc c                                         ; $679e: $99
    sbc b                                         ; $679f: $98
    sbc c                                         ; $67a0: $99
    adc b                                         ; $67a1: $88
    sbc c                                         ; $67a2: $99
    sbc c                                         ; $67a3: $99
    sbc c                                         ; $67a4: $99
    adc c                                         ; $67a5: $89
    sbc b                                         ; $67a6: $98

Call_019_67a7:
    sbc c                                         ; $67a7: $99
    adc b                                         ; $67a8: $88
    sbc c                                         ; $67a9: $99
    sbc b                                         ; $67aa: $98
    sbc b                                         ; $67ab: $98
    adc c                                         ; $67ac: $89
    adc c                                         ; $67ad: $89
    add a                                         ; $67ae: $87
    sbc b                                         ; $67af: $98
    add a                                         ; $67b0: $87
    ld a, b                                       ; $67b1: $78
    add a                                         ; $67b2: $87
    adc b                                         ; $67b3: $88
    ld [hl], a                                    ; $67b4: $77
    ld [hl], a                                    ; $67b5: $77
    ld [hl], a                                    ; $67b6: $77
    ld [hl], a                                    ; $67b7: $77
    ld [hl], a                                    ; $67b8: $77
    ld [hl], a                                    ; $67b9: $77
    ld h, a                                       ; $67ba: $67
    ld [hl], a                                    ; $67bb: $77
    halt                                          ; $67bc: $76
    ld [hl], a                                    ; $67bd: $77
    ld h, a                                       ; $67be: $67
    adc b                                         ; $67bf: $88
    add a                                         ; $67c0: $87
    ld l, b                                       ; $67c1: $68
    ld [hl], a                                    ; $67c2: $77
    ld [hl], a                                    ; $67c3: $77
    ld [hl], a                                    ; $67c4: $77
    add a                                         ; $67c5: $87
    ld [hl], a                                    ; $67c6: $77
    ld a, b                                       ; $67c7: $78
    ld [hl], a                                    ; $67c8: $77
    ld [hl], a                                    ; $67c9: $77
    ld [hl], a                                    ; $67ca: $77
    ld [hl], a                                    ; $67cb: $77
    ld [hl], a                                    ; $67cc: $77
    ld [hl], a                                    ; $67cd: $77
    ld [hl], a                                    ; $67ce: $77
    ld [hl], a                                    ; $67cf: $77
    adc b                                         ; $67d0: $88
    adc b                                         ; $67d1: $88
    adc b                                         ; $67d2: $88
    adc b                                         ; $67d3: $88
    adc b                                         ; $67d4: $88
    add a                                         ; $67d5: $87
    adc b                                         ; $67d6: $88
    ld a, b                                       ; $67d7: $78
    ld a, b                                       ; $67d8: $78
    ld [hl], a                                    ; $67d9: $77
    ld [hl], a                                    ; $67da: $77
    ld [hl], a                                    ; $67db: $77
    ld [hl], a                                    ; $67dc: $77
    ld [hl], a                                    ; $67dd: $77
    ld [hl], a                                    ; $67de: $77
    ld a, b                                       ; $67df: $78
    add a                                         ; $67e0: $87
    ld a, b                                       ; $67e1: $78
    ld [hl], a                                    ; $67e2: $77
    add a                                         ; $67e3: $87
    ld [hl], a                                    ; $67e4: $77
    ld a, b                                       ; $67e5: $78
    adc b                                         ; $67e6: $88
    adc b                                         ; $67e7: $88
    adc b                                         ; $67e8: $88
    adc b                                         ; $67e9: $88
    adc b                                         ; $67ea: $88
    adc b                                         ; $67eb: $88
    adc b                                         ; $67ec: $88
    adc b                                         ; $67ed: $88
    adc b                                         ; $67ee: $88
    adc b                                         ; $67ef: $88
    adc b                                         ; $67f0: $88
    adc b                                         ; $67f1: $88
    adc b                                         ; $67f2: $88
    adc b                                         ; $67f3: $88
    adc b                                         ; $67f4: $88
    adc b                                         ; $67f5: $88
    adc b                                         ; $67f6: $88
    adc b                                         ; $67f7: $88
    adc b                                         ; $67f8: $88
    adc b                                         ; $67f9: $88
    adc b                                         ; $67fa: $88
    adc b                                         ; $67fb: $88
    adc b                                         ; $67fc: $88
    adc b                                         ; $67fd: $88
    add a                                         ; $67fe: $87
    ld a, b                                       ; $67ff: $78
    add a                                         ; $6800: $87
    ld [hl], a                                    ; $6801: $77
    ld [hl], a                                    ; $6802: $77
    ld [hl], a                                    ; $6803: $77
    ld [hl], a                                    ; $6804: $77
    ld [hl], a                                    ; $6805: $77
    ld [hl], a                                    ; $6806: $77
    ld [hl], a                                    ; $6807: $77
    ld [hl], a                                    ; $6808: $77
    ld [hl], a                                    ; $6809: $77
    ld [hl], a                                    ; $680a: $77
    ld [hl], a                                    ; $680b: $77
    ld [hl], a                                    ; $680c: $77
    ld [hl], a                                    ; $680d: $77
    ld [hl], a                                    ; $680e: $77
    ld [hl], a                                    ; $680f: $77
    add a                                         ; $6810: $87
    ld [hl], a                                    ; $6811: $77
    ld [hl], a                                    ; $6812: $77
    ld [hl], a                                    ; $6813: $77
    ld [hl], a                                    ; $6814: $77
    ld [hl], a                                    ; $6815: $77
    ld [hl], a                                    ; $6816: $77
    ld [hl], a                                    ; $6817: $77
    ld [hl], a                                    ; $6818: $77
    ld [hl], a                                    ; $6819: $77
    ld [hl], a                                    ; $681a: $77
    ld [hl], a                                    ; $681b: $77
    ld [hl], a                                    ; $681c: $77
    ld [hl], a                                    ; $681d: $77
    ld [hl], a                                    ; $681e: $77
    ld [hl], a                                    ; $681f: $77
    add a                                         ; $6820: $87
    ld [hl], a                                    ; $6821: $77
    ld [hl], a                                    ; $6822: $77
    ld [hl], a                                    ; $6823: $77
    ld [hl], a                                    ; $6824: $77
    ld [hl], a                                    ; $6825: $77
    ld [hl], a                                    ; $6826: $77
    ld [hl], a                                    ; $6827: $77
    ld [hl], a                                    ; $6828: $77
    add a                                         ; $6829: $87
    ld a, b                                       ; $682a: $78
    ld a, b                                       ; $682b: $78
    ld [hl], a                                    ; $682c: $77
    add a                                         ; $682d: $87
    add a                                         ; $682e: $87
    add a                                         ; $682f: $87
    adc b                                         ; $6830: $88
    adc b                                         ; $6831: $88
    adc b                                         ; $6832: $88
    adc b                                         ; $6833: $88
    adc b                                         ; $6834: $88
    adc b                                         ; $6835: $88
    adc b                                         ; $6836: $88
    adc b                                         ; $6837: $88
    adc b                                         ; $6838: $88
    adc b                                         ; $6839: $88
    adc b                                         ; $683a: $88
    adc b                                         ; $683b: $88
    adc b                                         ; $683c: $88
    adc b                                         ; $683d: $88
    adc b                                         ; $683e: $88
    adc b                                         ; $683f: $88
    adc b                                         ; $6840: $88
    adc b                                         ; $6841: $88
    adc b                                         ; $6842: $88
    adc b                                         ; $6843: $88
    adc b                                         ; $6844: $88
    adc b                                         ; $6845: $88
    adc b                                         ; $6846: $88
    adc b                                         ; $6847: $88
    adc b                                         ; $6848: $88
    adc b                                         ; $6849: $88
    adc b                                         ; $684a: $88
    adc b                                         ; $684b: $88
    adc b                                         ; $684c: $88
    adc b                                         ; $684d: $88
    adc b                                         ; $684e: $88
    add a                                         ; $684f: $87
    add a                                         ; $6850: $87
    ld [hl], a                                    ; $6851: $77
    ld [hl], a                                    ; $6852: $77
    ld [hl], a                                    ; $6853: $77
    ld [hl], a                                    ; $6854: $77
    ld [hl], a                                    ; $6855: $77
    ld [hl], a                                    ; $6856: $77
    ld [hl], a                                    ; $6857: $77
    ld [hl], a                                    ; $6858: $77
    halt                                          ; $6859: $76
    ld [hl], a                                    ; $685a: $77
    ld [hl], a                                    ; $685b: $77
    ld [hl], a                                    ; $685c: $77
    ld [hl], a                                    ; $685d: $77
    ld [hl], a                                    ; $685e: $77
    ld [hl], a                                    ; $685f: $77
    add a                                         ; $6860: $87
    ld [hl], a                                    ; $6861: $77
    ld [hl], a                                    ; $6862: $77
    ld [hl], a                                    ; $6863: $77
    ld [hl], a                                    ; $6864: $77

Jump_019_6865:
    ld [hl], a                                    ; $6865: $77
    ld [hl], a                                    ; $6866: $77
    ld [hl], a                                    ; $6867: $77
    ld [hl], a                                    ; $6868: $77
    ld a, b                                       ; $6869: $78
    ld a, b                                       ; $686a: $78
    adc b                                         ; $686b: $88
    adc b                                         ; $686c: $88
    adc b                                         ; $686d: $88
    adc b                                         ; $686e: $88
    adc b                                         ; $686f: $88
    adc b                                         ; $6870: $88
    adc b                                         ; $6871: $88
    adc b                                         ; $6872: $88
    adc b                                         ; $6873: $88
    add a                                         ; $6874: $87

Call_019_6875:
    add a                                         ; $6875: $87
    ld a, b                                       ; $6876: $78
    ld a, b                                       ; $6877: $78
    ld [hl], a                                    ; $6878: $77
    ld [hl], a                                    ; $6879: $77
    ld [hl], a                                    ; $687a: $77
    ld [hl], a                                    ; $687b: $77
    ld [hl], a                                    ; $687c: $77
    ld [hl], a                                    ; $687d: $77
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
    ld [hl], a                                    ; $688a: $77
    ld [hl], a                                    ; $688b: $77
    ld [hl], a                                    ; $688c: $77
    ld [hl], a                                    ; $688d: $77
    ld [hl], a                                    ; $688e: $77
    ld [hl], a                                    ; $688f: $77
    add a                                         ; $6890: $87
    ld [hl], a                                    ; $6891: $77
    ld [hl], a                                    ; $6892: $77
    halt                                          ; $6893: $76
    add a                                         ; $6894: $87
    adc b                                         ; $6895: $88
    ld [hl], a                                    ; $6896: $77
    ld [hl], a                                    ; $6897: $77
    adc b                                         ; $6898: $88
    adc b                                         ; $6899: $88
    ld [hl], a                                    ; $689a: $77
    ld [hl], a                                    ; $689b: $77
    adc b                                         ; $689c: $88
    adc b                                         ; $689d: $88
    ld a, b                                       ; $689e: $78
    adc b                                         ; $689f: $88
    adc b                                         ; $68a0: $88
    adc b                                         ; $68a1: $88
    adc b                                         ; $68a2: $88
    adc b                                         ; $68a3: $88
    adc b                                         ; $68a4: $88
    adc b                                         ; $68a5: $88
    adc b                                         ; $68a6: $88
    adc b                                         ; $68a7: $88
    adc b                                         ; $68a8: $88
    adc b                                         ; $68a9: $88
    adc b                                         ; $68aa: $88
    adc b                                         ; $68ab: $88
    ld a, b                                       ; $68ac: $78
    adc b                                         ; $68ad: $88
    adc b                                         ; $68ae: $88
    adc b                                         ; $68af: $88
    adc b                                         ; $68b0: $88
    adc b                                         ; $68b1: $88
    adc b                                         ; $68b2: $88
    adc b                                         ; $68b3: $88
    adc b                                         ; $68b4: $88
    adc b                                         ; $68b5: $88
    adc b                                         ; $68b6: $88
    adc b                                         ; $68b7: $88
    add a                                         ; $68b8: $87
    add a                                         ; $68b9: $87
    ld [hl], a                                    ; $68ba: $77
    ld [hl], a                                    ; $68bb: $77
    ld [hl], a                                    ; $68bc: $77
    ld [hl], a                                    ; $68bd: $77
    ld [hl], a                                    ; $68be: $77
    ld [hl], a                                    ; $68bf: $77
    add a                                         ; $68c0: $87
    ld [hl], a                                    ; $68c1: $77
    ld [hl], a                                    ; $68c2: $77
    ld [hl], a                                    ; $68c3: $77
    add [hl]                                      ; $68c4: $86
    ld a, b                                       ; $68c5: $78
    ld [hl], a                                    ; $68c6: $77
    ld [hl], a                                    ; $68c7: $77
    ld [hl], a                                    ; $68c8: $77
    ld [hl], a                                    ; $68c9: $77
    ld [hl], a                                    ; $68ca: $77
    ld [hl], a                                    ; $68cb: $77
    add a                                         ; $68cc: $87
    ld a, b                                       ; $68cd: $78
    ld a, b                                       ; $68ce: $78
    add a                                         ; $68cf: $87
    add a                                         ; $68d0: $87
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
    adc b                                         ; $68df: $88
    adc b                                         ; $68e0: $88
    adc b                                         ; $68e1: $88
    adc b                                         ; $68e2: $88
    adc b                                         ; $68e3: $88
    adc b                                         ; $68e4: $88
    adc b                                         ; $68e5: $88
    adc b                                         ; $68e6: $88
    adc b                                         ; $68e7: $88
    ld [hl], a                                    ; $68e8: $77
    adc b                                         ; $68e9: $88
    adc b                                         ; $68ea: $88
    ld a, b                                       ; $68eb: $78
    ld a, b                                       ; $68ec: $78
    adc b                                         ; $68ed: $88
    ld [hl], a                                    ; $68ee: $77
    add a                                         ; $68ef: $87
    adc b                                         ; $68f0: $88
    adc b                                         ; $68f1: $88
    adc b                                         ; $68f2: $88
    adc b                                         ; $68f3: $88
    add a                                         ; $68f4: $87
    adc b                                         ; $68f5: $88
    adc b                                         ; $68f6: $88
    adc b                                         ; $68f7: $88
    adc b                                         ; $68f8: $88
    adc b                                         ; $68f9: $88
    adc b                                         ; $68fa: $88
    adc b                                         ; $68fb: $88
    adc b                                         ; $68fc: $88
    add a                                         ; $68fd: $87
    ld a, b                                       ; $68fe: $78
    add a                                         ; $68ff: $87
    adc b                                         ; $6900: $88
    add a                                         ; $6901: $87
    ld [hl], a                                    ; $6902: $77
    ld a, b                                       ; $6903: $78
    ld a, b                                       ; $6904: $78
    ld [hl], a                                    ; $6905: $77
    add a                                         ; $6906: $87
    adc b                                         ; $6907: $88
    adc b                                         ; $6908: $88
    add a                                         ; $6909: $87
    add a                                         ; $690a: $87
    add a                                         ; $690b: $87
    adc b                                         ; $690c: $88
    ld [hl], a                                    ; $690d: $77
    adc b                                         ; $690e: $88
    add a                                         ; $690f: $87
    adc b                                         ; $6910: $88
    ld a, b                                       ; $6911: $78
    ld a, b                                       ; $6912: $78
    ld a, b                                       ; $6913: $78
    ld [hl], a                                    ; $6914: $77
    ld [hl], a                                    ; $6915: $77
    ld [hl], a                                    ; $6916: $77
    ld a, b                                       ; $6917: $78
    ld [hl], a                                    ; $6918: $77
    add a                                         ; $6919: $87
    ld a, b                                       ; $691a: $78
    ld a, b                                       ; $691b: $78
    ld [hl], a                                    ; $691c: $77
    ld [hl], a                                    ; $691d: $77
    ld [hl], a                                    ; $691e: $77
    ld [hl], a                                    ; $691f: $77
    add a                                         ; $6920: $87
    halt                                          ; $6921: $76
    ld a, b                                       ; $6922: $78
    ld a, b                                       ; $6923: $78
    add a                                         ; $6924: $87
    add [hl]                                      ; $6925: $86
    add a                                         ; $6926: $87
    ld a, b                                       ; $6927: $78
    ld [hl], a                                    ; $6928: $77
    add a                                         ; $6929: $87
    ld a, b                                       ; $692a: $78
    adc b                                         ; $692b: $88
    ld a, b                                       ; $692c: $78
    add a                                         ; $692d: $87
    ld a, b                                       ; $692e: $78
    ld [hl], a                                    ; $692f: $77
    add a                                         ; $6930: $87
    ld [hl], a                                    ; $6931: $77
    ld a, b                                       ; $6932: $78
    adc b                                         ; $6933: $88
    ld a, b                                       ; $6934: $78
    add a                                         ; $6935: $87
    adc b                                         ; $6936: $88
    adc b                                         ; $6937: $88
    adc b                                         ; $6938: $88
    adc b                                         ; $6939: $88
    adc b                                         ; $693a: $88
    adc b                                         ; $693b: $88
    adc b                                         ; $693c: $88
    ld a, b                                       ; $693d: $78
    adc b                                         ; $693e: $88
    adc b                                         ; $693f: $88
    adc b                                         ; $6940: $88
    adc b                                         ; $6941: $88
    adc b                                         ; $6942: $88
    adc b                                         ; $6943: $88
    adc b                                         ; $6944: $88
    adc b                                         ; $6945: $88
    adc b                                         ; $6946: $88
    adc b                                         ; $6947: $88
    adc b                                         ; $6948: $88
    adc b                                         ; $6949: $88
    adc b                                         ; $694a: $88
    adc b                                         ; $694b: $88
    adc b                                         ; $694c: $88
    adc b                                         ; $694d: $88
    adc b                                         ; $694e: $88
    adc b                                         ; $694f: $88
    adc b                                         ; $6950: $88
    adc b                                         ; $6951: $88
    adc b                                         ; $6952: $88
    adc b                                         ; $6953: $88

Jump_019_6954:
    ld [hl], a                                    ; $6954: $77
    ld [hl], a                                    ; $6955: $77
    ld [hl], a                                    ; $6956: $77
    ld [hl], a                                    ; $6957: $77
    ld [hl], a                                    ; $6958: $77
    ld [hl], a                                    ; $6959: $77
    ld [hl], a                                    ; $695a: $77
    ld [hl], a                                    ; $695b: $77
    ld [hl], a                                    ; $695c: $77
    ld [hl], a                                    ; $695d: $77
    ld [hl], a                                    ; $695e: $77
    ld [hl], a                                    ; $695f: $77
    add a                                         ; $6960: $87
    ld [hl], a                                    ; $6961: $77
    ld [hl], a                                    ; $6962: $77
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
    add a                                         ; $696f: $87
    add a                                         ; $6970: $87
    ld a, b                                       ; $6971: $78
    ld a, b                                       ; $6972: $78
    add a                                         ; $6973: $87
    adc b                                         ; $6974: $88
    adc b                                         ; $6975: $88
    ld a, b                                       ; $6976: $78
    ld [hl], a                                    ; $6977: $77
    ld [hl], a                                    ; $6978: $77
    adc b                                         ; $6979: $88
    sbc b                                         ; $697a: $98
    adc b                                         ; $697b: $88
    adc b                                         ; $697c: $88
    ld a, b                                       ; $697d: $78
    ld [hl], a                                    ; $697e: $77
    ld [hl], a                                    ; $697f: $77
    add a                                         ; $6980: $87
    ld [hl], a                                    ; $6981: $77
    ld [hl], a                                    ; $6982: $77
    ld [hl], a                                    ; $6983: $77
    ld a, b                                       ; $6984: $78
    add a                                         ; $6985: $87
    ld [hl], a                                    ; $6986: $77
    add a                                         ; $6987: $87
    adc b                                         ; $6988: $88
    ld a, b                                       ; $6989: $78
    ld a, b                                       ; $698a: $78
    add a                                         ; $698b: $87
    adc b                                         ; $698c: $88
    adc b                                         ; $698d: $88
    adc b                                         ; $698e: $88
    adc b                                         ; $698f: $88
    adc b                                         ; $6990: $88
    adc b                                         ; $6991: $88
    adc b                                         ; $6992: $88
    adc b                                         ; $6993: $88
    adc b                                         ; $6994: $88
    ld a, b                                       ; $6995: $78
    ld a, b                                       ; $6996: $78
    add a                                         ; $6997: $87
    adc b                                         ; $6998: $88
    ld a, b                                       ; $6999: $78
    add a                                         ; $699a: $87
    adc b                                         ; $699b: $88
    ld a, b                                       ; $699c: $78
    add a                                         ; $699d: $87
    adc b                                         ; $699e: $88
    ld a, b                                       ; $699f: $78
    add a                                         ; $69a0: $87
    ld a, b                                       ; $69a1: $78
    ld a, b                                       ; $69a2: $78
    add a                                         ; $69a3: $87
    adc b                                         ; $69a4: $88
    ld [hl], a                                    ; $69a5: $77
    adc b                                         ; $69a6: $88
    add a                                         ; $69a7: $87
    ld a, b                                       ; $69a8: $78
    ld [hl], a                                    ; $69a9: $77
    add a                                         ; $69aa: $87
    add a                                         ; $69ab: $87
    ld [hl], a                                    ; $69ac: $77
    adc c                                         ; $69ad: $89
    ld a, b                                       ; $69ae: $78
    ld [hl], a                                    ; $69af: $77
    adc b                                         ; $69b0: $88
    ld a, b                                       ; $69b1: $78
    ld [hl], a                                    ; $69b2: $77
    add a                                         ; $69b3: $87
    ld [hl], a                                    ; $69b4: $77
    adc b                                         ; $69b5: $88
    ld a, b                                       ; $69b6: $78
    ld a, b                                       ; $69b7: $78
    ld a, b                                       ; $69b8: $78
    add a                                         ; $69b9: $87
    add a                                         ; $69ba: $87
    add a                                         ; $69bb: $87
    ld a, b                                       ; $69bc: $78
    adc b                                         ; $69bd: $88
    ld a, b                                       ; $69be: $78
    ld a, b                                       ; $69bf: $78
    adc b                                         ; $69c0: $88
    adc b                                         ; $69c1: $88
    adc b                                         ; $69c2: $88
    adc b                                         ; $69c3: $88
    ld a, b                                       ; $69c4: $78
    ld a, b                                       ; $69c5: $78
    adc b                                         ; $69c6: $88
    add a                                         ; $69c7: $87
    add a                                         ; $69c8: $87
    ld [hl], a                                    ; $69c9: $77
    ld [hl], a                                    ; $69ca: $77
    ld [hl], a                                    ; $69cb: $77
    ld [hl], a                                    ; $69cc: $77
    ld [hl], a                                    ; $69cd: $77
    ld [hl], a                                    ; $69ce: $77
    ld [hl], a                                    ; $69cf: $77
    add a                                         ; $69d0: $87
    ld [hl], a                                    ; $69d1: $77
    ld [hl], a                                    ; $69d2: $77
    ld [hl], a                                    ; $69d3: $77
    ld a, b                                       ; $69d4: $78
    adc b                                         ; $69d5: $88
    adc b                                         ; $69d6: $88
    adc b                                         ; $69d7: $88
    adc b                                         ; $69d8: $88
    adc b                                         ; $69d9: $88
    add a                                         ; $69da: $87
    adc b                                         ; $69db: $88
    adc b                                         ; $69dc: $88
    adc b                                         ; $69dd: $88
    adc b                                         ; $69de: $88
    adc b                                         ; $69df: $88
    adc b                                         ; $69e0: $88
    adc b                                         ; $69e1: $88
    adc b                                         ; $69e2: $88
    adc b                                         ; $69e3: $88
    adc b                                         ; $69e4: $88
    adc b                                         ; $69e5: $88
    add a                                         ; $69e6: $87
    add a                                         ; $69e7: $87
    ld [hl], a                                    ; $69e8: $77
    add a                                         ; $69e9: $87
    adc b                                         ; $69ea: $88
    adc b                                         ; $69eb: $88
    ld [hl], a                                    ; $69ec: $77
    adc b                                         ; $69ed: $88
    ld a, b                                       ; $69ee: $78
    ld [hl], a                                    ; $69ef: $77
    adc b                                         ; $69f0: $88
    ld [hl], a                                    ; $69f1: $77
    ld [hl], a                                    ; $69f2: $77
    ld a, b                                       ; $69f3: $78
    adc b                                         ; $69f4: $88
    adc b                                         ; $69f5: $88
    adc b                                         ; $69f6: $88
    adc b                                         ; $69f7: $88
    adc b                                         ; $69f8: $88
    add a                                         ; $69f9: $87
    ld a, b                                       ; $69fa: $78
    ld [hl], a                                    ; $69fb: $77
    adc b                                         ; $69fc: $88
    ld [hl], a                                    ; $69fd: $77
    ld [hl], a                                    ; $69fe: $77
    ld [hl], a                                    ; $69ff: $77
    add a                                         ; $6a00: $87
    ld [hl], a                                    ; $6a01: $77
    ld [hl], a                                    ; $6a02: $77
    ld [hl], a                                    ; $6a03: $77
    ld a, b                                       ; $6a04: $78
    adc b                                         ; $6a05: $88
    add a                                         ; $6a06: $87
    ld a, b                                       ; $6a07: $78
    ld [hl], a                                    ; $6a08: $77
    ld [hl], a                                    ; $6a09: $77
    ld [hl], a                                    ; $6a0a: $77
    ld [hl], a                                    ; $6a0b: $77
    ld [hl], a                                    ; $6a0c: $77
    ld [hl], a                                    ; $6a0d: $77
    ld [hl], a                                    ; $6a0e: $77
    ld [hl], a                                    ; $6a0f: $77
    add a                                         ; $6a10: $87
    adc b                                         ; $6a11: $88
    adc b                                         ; $6a12: $88
    ld a, b                                       ; $6a13: $78
    add a                                         ; $6a14: $87
    adc b                                         ; $6a15: $88
    add a                                         ; $6a16: $87
    adc b                                         ; $6a17: $88
    adc b                                         ; $6a18: $88
    adc b                                         ; $6a19: $88
    adc b                                         ; $6a1a: $88
    adc b                                         ; $6a1b: $88
    adc b                                         ; $6a1c: $88
    adc b                                         ; $6a1d: $88
    adc b                                         ; $6a1e: $88
    adc b                                         ; $6a1f: $88
    adc b                                         ; $6a20: $88
    adc b                                         ; $6a21: $88
    adc b                                         ; $6a22: $88
    adc b                                         ; $6a23: $88
    adc b                                         ; $6a24: $88
    adc b                                         ; $6a25: $88
    adc b                                         ; $6a26: $88
    adc b                                         ; $6a27: $88
    adc b                                         ; $6a28: $88
    adc b                                         ; $6a29: $88
    adc b                                         ; $6a2a: $88
    adc b                                         ; $6a2b: $88
    adc b                                         ; $6a2c: $88
    adc b                                         ; $6a2d: $88
    adc b                                         ; $6a2e: $88
    adc b                                         ; $6a2f: $88
    adc b                                         ; $6a30: $88
    adc b                                         ; $6a31: $88
    ld a, b                                       ; $6a32: $78
    ld a, b                                       ; $6a33: $78
    ld [hl], a                                    ; $6a34: $77
    ld [hl], a                                    ; $6a35: $77
    ld [hl], a                                    ; $6a36: $77
    ld [hl], a                                    ; $6a37: $77
    ld [hl], a                                    ; $6a38: $77
    ld [hl], a                                    ; $6a39: $77
    ld [hl], a                                    ; $6a3a: $77
    ld [hl], a                                    ; $6a3b: $77
    ld [hl], a                                    ; $6a3c: $77
    add a                                         ; $6a3d: $87
    ld [hl], a                                    ; $6a3e: $77
    ld a, b                                       ; $6a3f: $78
    adc b                                         ; $6a40: $88
    ld [hl], a                                    ; $6a41: $77
    add a                                         ; $6a42: $87
    ld [hl], a                                    ; $6a43: $77
    add a                                         ; $6a44: $87
    adc b                                         ; $6a45: $88
    adc b                                         ; $6a46: $88
    add a                                         ; $6a47: $87
    ld a, b                                       ; $6a48: $78
    ld [hl], a                                    ; $6a49: $77
    ld [hl], a                                    ; $6a4a: $77
    ld a, b                                       ; $6a4b: $78
    ld [hl], a                                    ; $6a4c: $77
    ld [hl], a                                    ; $6a4d: $77
    ld [hl], a                                    ; $6a4e: $77
    ld [hl], a                                    ; $6a4f: $77
    add a                                         ; $6a50: $87
    add a                                         ; $6a51: $87
    ld [hl], a                                    ; $6a52: $77
    ld [hl], a                                    ; $6a53: $77
    ld [hl], a                                    ; $6a54: $77
    ld [hl], a                                    ; $6a55: $77
    ld [hl], a                                    ; $6a56: $77
    ld [hl], a                                    ; $6a57: $77
    ld [hl], a                                    ; $6a58: $77
    adc b                                         ; $6a59: $88
    adc b                                         ; $6a5a: $88
    adc b                                         ; $6a5b: $88
    adc b                                         ; $6a5c: $88
    adc b                                         ; $6a5d: $88
    adc b                                         ; $6a5e: $88
    adc b                                         ; $6a5f: $88
    adc b                                         ; $6a60: $88
    adc b                                         ; $6a61: $88
    ld [hl], a                                    ; $6a62: $77
    ld [hl], a                                    ; $6a63: $77
    ld a, b                                       ; $6a64: $78
    adc b                                         ; $6a65: $88
    adc b                                         ; $6a66: $88
    sbc b                                         ; $6a67: $98
    ld [hl], a                                    ; $6a68: $77
    ld a, b                                       ; $6a69: $78
    add a                                         ; $6a6a: $87
    ld [hl], a                                    ; $6a6b: $77
    ld [hl], a                                    ; $6a6c: $77
    adc b                                         ; $6a6d: $88
    ld [hl], a                                    ; $6a6e: $77
    ld [hl], a                                    ; $6a6f: $77
    add a                                         ; $6a70: $87
    adc b                                         ; $6a71: $88
    adc b                                         ; $6a72: $88
    halt                                          ; $6a73: $76
    ld a, b                                       ; $6a74: $78
    sbc b                                         ; $6a75: $98
    ld [hl], a                                    ; $6a76: $77
    ld a, b                                       ; $6a77: $78
    adc b                                         ; $6a78: $88
    add a                                         ; $6a79: $87
    ld [hl], a                                    ; $6a7a: $77
    adc b                                         ; $6a7b: $88
    sbc c                                         ; $6a7c: $99
    sub a                                         ; $6a7d: $97
    ld h, a                                       ; $6a7e: $67
    sbc c                                         ; $6a7f: $99
    add [hl]                                      ; $6a80: $86
    ld h, a                                       ; $6a81: $67
    ld a, b                                       ; $6a82: $78
    add a                                         ; $6a83: $87
    ld h, a                                       ; $6a84: $67
    ld a, b                                       ; $6a85: $78
    sbc c                                         ; $6a86: $99
    sub a                                         ; $6a87: $97
    ld d, l                                       ; $6a88: $55
    adc d                                         ; $6a89: $8a
    add [hl]                                      ; $6a8a: $86
    ld h, a                                       ; $6a8b: $67
    adc b                                         ; $6a8c: $88
    add a                                         ; $6a8d: $87
    ld h, [hl]                                    ; $6a8e: $66
    ld a, b                                       ; $6a8f: $78
    sbc d                                         ; $6a90: $9a
    sub a                                         ; $6a91: $97
    ld d, l                                       ; $6a92: $55
    sbc d                                         ; $6a93: $9a
    add [hl]                                      ; $6a94: $86
    ld h, a                                       ; $6a95: $67
    adc b                                         ; $6a96: $88
    add a                                         ; $6a97: $87
    ld h, [hl]                                    ; $6a98: $66
    ld a, b                                       ; $6a99: $78
    sbc d                                         ; $6a9a: $9a
    sub a                                         ; $6a9b: $97
    ld d, l                                       ; $6a9c: $55
    sbc d                                         ; $6a9d: $9a
    sub [hl]                                      ; $6a9e: $96
    ld d, a                                       ; $6a9f: $57
    add a                                         ; $6aa0: $87
    ld a, c                                       ; $6aa1: $79
    add l                                         ; $6aa2: $85
    ld l, b                                       ; $6aa3: $68
    cp e                                          ; $6aa4: $bb
    sub h                                         ; $6aa5: $94
    ld b, a                                       ; $6aa6: $47
    sbc d                                         ; $6aa7: $9a
    add l                                         ; $6aa8: $85
    ld h, a                                       ; $6aa9: $67
    sbc c                                         ; $6aaa: $99
    ld [hl], l                                    ; $6aab: $75
    ld b, a                                       ; $6aac: $47
    sbc e                                         ; $6aad: $9b
    cp c                                          ; $6aae: $b9
    ld b, e                                       ; $6aaf: $43
    adc e                                         ; $6ab0: $8b
    and a                                         ; $6ab1: $a7
    ld b, [hl]                                    ; $6ab2: $46
    adc b                                         ; $6ab3: $88
    ld [hl], a                                    ; $6ab4: $77
    add [hl]                                      ; $6ab5: $86
    ld e, b                                       ; $6ab6: $58
    sbc d                                         ; $6ab7: $9a
    xor b                                         ; $6ab8: $a8
    ld d, l                                       ; $6ab9: $55
    adc d                                         ; $6aba: $8a
    and [hl]                                      ; $6abb: $a6
    ld d, a                                       ; $6abc: $57
    ld [hl], a                                    ; $6abd: $77
    halt                                          ; $6abe: $76
    ld a, b                                       ; $6abf: $78
    adc d                                         ; $6ac0: $8a
    cp b                                          ; $6ac1: $b8
    dec [hl]                                      ; $6ac2: $35
    sbc d                                         ; $6ac3: $9a
    add l                                         ; $6ac4: $85
    ld h, a                                       ; $6ac5: $67
    ld l, b                                       ; $6ac6: $68
    sbc b                                         ; $6ac7: $98
    dec [hl]                                      ; $6ac8: $35
    rst $08                                       ; $6ac9: $cf
    and e                                         ; $6aca: $a3
    ld c, c                                       ; $6acb: $49
    xor c                                         ; $6acc: $a9
    ld [hl], a                                    ; $6acd: $77
    ld [hl], l                                    ; $6ace: $75
    ld a, c                                       ; $6acf: $79
    ld h, e                                       ; $6ad0: $63
    ld e, h                                       ; $6ad1: $5c
    jp hl                                         ; $6ad2: $e9


    ld b, h                                       ; $6ad3: $44
    adc h                                         ; $6ad4: $8c
    halt                                          ; $6ad5: $76
    halt                                          ; $6ad6: $76
    ld d, a                                       ; $6ad7: $57
    or a                                          ; $6ad8: $b7
    dec [hl]                                      ; $6ad9: $35
    sbc h                                         ; $6ada: $9c
    rst $10                                       ; $6adb: $d7
    ld [hl], $ab                                  ; $6adc: $36 $ab
    add [hl]                                      ; $6ade: $86
    ld h, [hl]                                    ; $6adf: $66
    adc c                                         ; $6ae0: $89
    sub l                                         ; $6ae1: $95
    ld [hl], $ac                                  ; $6ae2: $36 $ac
    rst $00                                       ; $6ae4: $c7
    ld h, $aa                                     ; $6ae5: $26 $aa
    add [hl]                                      ; $6ae7: $86
    halt                                          ; $6ae8: $76
    ld l, c                                       ; $6ae9: $69
    and a                                         ; $6aea: $a7
    inc b                                         ; $6aeb: $04
    xor h                                         ; $6aec: $ac
    cp d                                          ; $6aed: $ba
    ld b, h                                       ; $6aee: $44
    adc d                                         ; $6aef: $8a
    sub [hl]                                      ; $6af0: $96
    ld [hl], l                                    ; $6af1: $75
    ld a, b                                       ; $6af2: $78
    add a                                         ; $6af3: $87
    ld [hl], a                                    ; $6af4: $77
    jp z, $9865                                   ; $6af5: $ca $65 $98

    sbc b                                         ; $6af8: $98
    halt                                          ; $6af9: $76
    ld h, [hl]                                    ; $6afa: $66
    ld h, a                                       ; $6afb: $67
    ld [hl], a                                    ; $6afc: $77
    sbc a                                         ; $6afd: $9f
    sub e                                         ; $6afe: $93
    ld l, d                                       ; $6aff: $6a
    sub [hl]                                      ; $6b00: $96
    halt                                          ; $6b01: $76
    ld h, a                                       ; $6b02: $67
    adc c                                         ; $6b03: $89
    ld b, e                                       ; $6b04: $43
    adc l                                         ; $6b05: $8d
    rst $10                                       ; $6b06: $d7
    ld h, $99                                     ; $6b07: $26 $99
    add a                                         ; $6b09: $87
    ld d, [hl]                                    ; $6b0a: $56
    ld a, b                                       ; $6b0b: $78
    add l                                         ; $6b0c: $85
    add hl, sp                                    ; $6b0d: $39
    db $eb                                        ; $6b0e: $eb
    ld h, h                                       ; $6b0f: $64
    ld l, c                                       ; $6b10: $69
    sbc c                                         ; $6b11: $99
    halt                                          ; $6b12: $76
    ld l, b                                       ; $6b13: $68
    xor b                                         ; $6b14: $a8
    ld b, l                                       ; $6b15: $45
    adc e                                         ; $6b16: $8b
    rst $00                                       ; $6b17: $c7
    ld d, [hl]                                    ; $6b18: $56
    sbc c                                         ; $6b19: $99
    sub [hl]                                      ; $6b1a: $96
    ld h, a                                       ; $6b1b: $67
    adc b                                         ; $6b1c: $88
    ld [hl], h                                    ; $6b1d: $74
    ld e, b                                       ; $6b1e: $58
    cp e                                          ; $6b1f: $bb
    ld d, h                                       ; $6b20: $54
    adc c                                         ; $6b21: $89
    sbc c                                         ; $6b22: $99
    ld h, l                                       ; $6b23: $65
    sbc b                                         ; $6b24: $98
    ld [hl], a                                    ; $6b25: $77
    ld d, d                                       ; $6b26: $52
    sbc [hl]                                      ; $6b27: $9e
    or l                                          ; $6b28: $b5
    ld e, b                                       ; $6b29: $58
    adc c                                         ; $6b2a: $89
    add [hl]                                      ; $6b2b: $86
    ld e, b                                       ; $6b2c: $58
    sbc b                                         ; $6b2d: $98
    ld [hl], h                                    ; $6b2e: $74
    ld c, d                                       ; $6b2f: $4a
    ld sp, hl                                     ; $6b30: $f9
    ld d, [hl]                                    ; $6b31: $56
    adc b                                         ; $6b32: $88
    xor b                                         ; $6b33: $a8
    ld d, a                                       ; $6b34: $57
    adc b                                         ; $6b35: $88
    ld [hl], a                                    ; $6b36: $77
    scf                                           ; $6b37: $37
    call Call_019_7785                            ; $6b38: $cd $85 $77
    sbc d                                         ; $6b3b: $9a
    ld [hl], h                                    ; $6b3c: $74
    ld a, b                                       ; $6b3d: $78
    adc b                                         ; $6b3e: $88
    ld [hl], h                                    ; $6b3f: $74
    adc d                                         ; $6b40: $8a
    cp c                                          ; $6b41: $b9
    ld h, h                                       ; $6b42: $64
    adc c                                         ; $6b43: $89
    sbc b                                         ; $6b44: $98
    ld h, [hl]                                    ; $6b45: $66
    ld [hl], a                                    ; $6b46: $77
    adc b                                         ; $6b47: $88
    ld h, [hl]                                    ; $6b48: $66
    sbc d                                         ; $6b49: $9a
    and a                                         ; $6b4a: $a7
    ld d, a                                       ; $6b4b: $57
    adc b                                         ; $6b4c: $88
    sub a                                         ; $6b4d: $97
    ld h, [hl]                                    ; $6b4e: $66
    ld e, b                                       ; $6b4f: $58
    adc c                                         ; $6b50: $89
    xor b                                         ; $6b51: $a8

Jump_019_6b52:
    ld e, c                                       ; $6b52: $59
    ld a, b                                       ; $6b53: $78
    sub a                                         ; $6b54: $97

jr_019_6b55:
    ld c, c                                       ; $6b55: $49
    ld d, a                                       ; $6b56: $57
    halt                                          ; $6b57: $76
    adc a                                         ; $6b58: $8f
    ld d, [hl]                                    ; $6b59: $56
    sub a                                         ; $6b5a: $97
    ld a, h                                       ; $6b5b: $7c
    ld b, [hl]                                    ; $6b5c: $46
    sub l                                         ; $6b5d: $95
    ld c, c                                       ; $6b5e: $49
    ld d, [hl]                                    ; $6b5f: $56
    ret z                                         ; $6b60: $c8

Call_019_6b61:
    ld l, b                                       ; $6b61: $68
    ld [hl], a                                    ; $6b62: $77
    ret z                                         ; $6b63: $c8

    ld d, a                                       ; $6b64: $57
    ld [hl], d                                    ; $6b65: $72
    add [hl]                                      ; $6b66: $86
    ld a, d                                       ; $6b67: $7a
    or c                                          ; $6b68: $b1
    sub a                                         ; $6b69: $97
    adc d                                         ; $6b6a: $8a
    sub d                                         ; $6b6b: $92
    or l                                          ; $6b6c: $b5
    ld d, a                                       ; $6b6d: $57
    ld [hl], h                                    ; $6b6e: $74
    ld hl, sp+$69                                 ; $6b6f: $f8 $69
    sub [hl]                                      ; $6b71: $96
    or $59                                        ; $6b72: $f6 $59
    add e                                         ; $6b74: $83
    and h                                         ; $6b75: $a4
    ld a, l                                       ; $6b76: $7d
    and h                                         ; $6b77: $a4
    and l                                         ; $6b78: $a5
    xor h                                         ; $6b79: $ac
    ld [hl], h                                    ; $6b7a: $74
    and e                                         ; $6b7b: $a3
    ld l, c                                       ; $6b7c: $69
    ld h, l                                       ; $6b7d: $65
    cp d                                          ; $6b7e: $ba
    ld a, b                                       ; $6b7f: $78
    ld l, b                                       ; $6b80: $68
    rst $00                                       ; $6b81: $c7
    ld e, b                                       ; $6b82: $58
    ld d, [hl]                                    ; $6b83: $56
    sub l                                         ; $6b84: $95
    ld l, h                                       ; $6b85: $6c
    ld [hl], a                                    ; $6b86: $77
    sub a                                         ; $6b87: $97
    ld a, l                                       ; $6b88: $7d
    ld d, l                                       ; $6b89: $55
    add l                                         ; $6b8a: $85
    ld e, c                                       ; $6b8b: $59
    jr z, jr_019_6b55                             ; $6b8c: $28 $c7

    ld e, e                                       ; $6b8e: $5b
    ld c, d                                       ; $6b8f: $4a
    or l                                          ; $6b90: $b5
    ld l, e                                       ; $6b91: $6b
    jr c, jr_019_6c08                             ; $6b92: $38 $74

    sbc a                                         ; $6b94: $9f
    ld c, b                                       ; $6b95: $48
    ld [hl], a                                    ; $6b96: $77
    jp z, $5648                                   ; $6b97: $ca $48 $56

    and l                                         ; $6b9a: $a5
    ld e, l                                       ; $6b9b: $5d
    ld h, [hl]                                    ; $6b9c: $66
    sub [hl]                                      ; $6b9d: $96
    sbc h                                         ; $6b9e: $9c
    ld d, [hl]                                    ; $6b9f: $56
    add h                                         ; $6ba0: $84
    sub [hl]                                      ; $6ba1: $96
    dec sp                                        ; $6ba2: $3b
    or h                                          ; $6ba3: $b4
    sub [hl]                                      ; $6ba4: $96
    adc h                                         ; $6ba5: $8c
    sub l                                         ; $6ba6: $95
    sub b                                         ; $6ba7: $90
    sbc b                                         ; $6ba8: $98
    ld e, b                                       ; $6ba9: $58
    jp nc, Jump_019_7a87                          ; $6baa: $d2 $87 $7a

    call nz, Call_019_7894                        ; $6bad: $c4 $94 $78
    ld d, l                                       ; $6bb0: $55
    db $f4                                        ; $6bb1: $f4
    ld a, b                                       ; $6bb2: $78
    ld a, c                                       ; $6bb3: $79
    call nc, Call_019_4896                        ; $6bb4: $d4 $96 $48
    ld d, e                                       ; $6bb7: $53
    jp hl                                         ; $6bb8: $e9


    ld e, c                                       ; $6bb9: $59
    ld l, e                                       ; $6bba: $6b
    or a                                          ; $6bbb: $b7
    add a                                         ; $6bbc: $87
    inc e                                         ; $6bbd: $1c
    ld d, [hl]                                    ; $6bbe: $56
    cp d                                          ; $6bbf: $ba
    add hl, de                                    ; $6bc0: $19
    ld e, c                                       ; $6bc1: $59
    xor b                                         ; $6bc2: $a8
    ld a, c                                       ; $6bc3: $79
    add hl, hl                                    ; $6bc4: $29
    ld h, l                                       ; $6bc5: $65
    sbc h                                         ; $6bc6: $9c
    jr c, jr_019_6c31                             ; $6bc7: $38 $68

    cp c                                          ; $6bc9: $b9
    ld l, c                                       ; $6bca: $69
    ld b, [hl]                                    ; $6bcb: $46
    ld [hl], l                                    ; $6bcc: $75
    sbc [hl]                                      ; $6bcd: $9e
    halt                                          ; $6bce: $76
    ld [hl], a                                    ; $6bcf: $77
    ret z                                         ; $6bd0: $c8

    adc b                                         ; $6bd1: $88
    ld h, h                                       ; $6bd2: $64
    ld h, l                                       ; $6bd3: $65
    ret                                           ; $6bd4: $c9


    halt                                          ; $6bd5: $76
    ld d, a                                       ; $6bd6: $57
    ret z                                         ; $6bd7: $c8

    add a                                         ; $6bd8: $87
    ld e, c                                       ; $6bd9: $59
    ld d, l                                       ; $6bda: $55
    db $fc                                        ; $6bdb: $fc
    add hl, sp                                    ; $6bdc: $39
    ld c, c                                       ; $6bdd: $49
    xor b                                         ; $6bde: $a8
    ld a, b                                       ; $6bdf: $78
    dec hl                                        ; $6be0: $2b
    ld h, [hl]                                    ; $6be1: $66
    xor e                                         ; $6be2: $ab
    scf                                           ; $6be3: $37
    ld l, c                                       ; $6be4: $69
    xor b                                         ; $6be5: $a8
    adc b                                         ; $6be6: $88
    ld h, a                                       ; $6be7: $67
    ld h, l                                       ; $6be8: $65
    adc [hl]                                      ; $6be9: $8e
    ld h, [hl]                                    ; $6bea: $66
    ld l, b                                       ; $6beb: $68
    xor c                                         ; $6bec: $a9
    ld a, b                                       ; $6bed: $78
    ld h, h                                       ; $6bee: $64
    scf                                           ; $6bef: $37
    xor e                                         ; $6bf0: $ab
    sub [hl]                                      ; $6bf1: $96
    ld e, c                                       ; $6bf2: $59
    cp c                                          ; $6bf3: $b9
    add [hl]                                      ; $6bf4: $86
    ld h, a                                       ; $6bf5: $67
    ld d, $e9                                     ; $6bf6: $16 $e9
    ld e, b                                       ; $6bf8: $58
    ld a, [hl-]                                   ; $6bf9: $3a
    xor b                                         ; $6bfa: $a8
    add a                                         ; $6bfb: $87
    dec hl                                        ; $6bfc: $2b
    ld b, [hl]                                    ; $6bfd: $46
    cp e                                          ; $6bfe: $bb
    scf                                           ; $6bff: $37
    ld e, c                                       ; $6c00: $59
    xor c                                         ; $6c01: $a9
    adc b                                         ; $6c02: $88
    ld e, b                                       ; $6c03: $58
    ld h, [hl]                                    ; $6c04: $66
    xor e                                         ; $6c05: $ab
    ld d, [hl]                                    ; $6c06: $56
    ld a, c                                       ; $6c07: $79

jr_019_6c08:
    cp b                                          ; $6c08: $b8
    sbc b                                         ; $6c09: $98
    halt                                          ; $6c0a: $76
    ld d, l                                       ; $6c0b: $55

jr_019_6c0c:
    ld a, h                                       ; $6c0c: $7c
    add [hl]                                      ; $6c0d: $86
    ld h, a                                       ; $6c0e: $67
    cp b                                          ; $6c0f: $b8
    add a                                         ; $6c10: $87
    ld h, h                                       ; $6c11: $64
    ld h, $d7                                     ; $6c12: $26 $d7
    ld h, a                                       ; $6c14: $67
    inc a                                         ; $6c15: $3c
    and a                                         ; $6c16: $a7
    add a                                         ; $6c17: $87
    ld c, c                                       ; $6c18: $49
    ld b, a                                       ; $6c19: $47
    xor d                                         ; $6c1a: $aa
    ld h, [hl]                                    ; $6c1b: $66
    ld a, c                                       ; $6c1c: $79
    sbc b                                         ; $6c1d: $98
    add a                                         ; $6c1e: $87
    ld [hl], e                                    ; $6c1f: $73
    ld e, c                                       ; $6c20: $59
    and a                                         ; $6c21: $a7
    sub e                                         ; $6c22: $93
    adc d                                         ; $6c23: $8a
    add a                                         ; $6c24: $87
    sub d                                         ; $6c25: $92
    add [hl]                                      ; $6c26: $86
    ld c, b                                       ; $6c27: $48
    db $f4                                        ; $6c28: $f4
    ld [hl], l                                    ; $6c29: $75
    ld a, d                                       ; $6c2a: $7a
    sub a                                         ; $6c2b: $97
    add [hl]                                      ; $6c2c: $86
    ld b, h                                       ; $6c2d: $44
    ld a, h                                       ; $6c2e: $7c
    ld l, c                                       ; $6c2f: $69
    ld b, l                                       ; $6c30: $45

jr_019_6c31:
    cp b                                          ; $6c31: $b8
    ld a, c                                       ; $6c32: $79
    ld d, l                                       ; $6c33: $55
    ld [hl], l                                    ; $6c34: $75
    ld a, c                                       ; $6c35: $79
    halt                                          ; $6c36: $76
    ld a, b                                       ; $6c37: $78
    sbc b                                         ; $6c38: $98
    add a                                         ; $6c39: $87
    adc b                                         ; $6c3a: $88
    ld h, $b8                                     ; $6c3b: $26 $b8
    ld a, b                                       ; $6c3d: $78
    ld c, d                                       ; $6c3e: $4a
    sub a                                         ; $6c3f: $97
    adc b                                         ; $6c40: $88
    ld e, b                                       ; $6c41: $58

Jump_019_6c42:
    ld d, [hl]                                    ; $6c42: $56
    xor e                                         ; $6c43: $ab
    ld h, a                                       ; $6c44: $67
    ld e, b                                       ; $6c45: $58
    xor c                                         ; $6c46: $a9
    ld a, b                                       ; $6c47: $78
    ld b, h                                       ; $6c48: $44
    ld l, c                                       ; $6c49: $69
    and [hl]                                      ; $6c4a: $a6
    sub d                                         ; $6c4b: $92
    adc d                                         ; $6c4c: $8a
    add a                                         ; $6c4d: $87
    sub [hl]                                      ; $6c4e: $96
    ld [hl], a                                    ; $6c4f: $77
    ld l, b                                       ; $6c50: $68

Call_019_6c51:
    push af                                       ; $6c51: $f5
    halt                                          ; $6c52: $76
    ld a, d                                       ; $6c53: $7a
    and [hl]                                      ; $6c54: $a6
    add [hl]                                      ; $6c55: $86
    ld d, l                                       ; $6c56: $55
    adc l                                         ; $6c57: $8d
    ld b, a                                       ; $6c58: $47
    ld [hl], a                                    ; $6c59: $77
    and a                                         ; $6c5a: $a7
    ld a, b                                       ; $6c5b: $78
    adc b                                         ; $6c5c: $88
    ld d, d                                       ; $6c5d: $52
    adc a                                         ; $6c5e: $8f
    and [hl]                                      ; $6c5f: $a6

Call_019_6c60:
    ld d, h                                       ; $6c60: $54

Call_019_6c61:
    sbc h                                         ; $6c61: $9c
    add a                                         ; $6c62: $87
    ld h, d                                       ; $6c63: $62
    add a                                         ; $6c64: $87
    or a                                          ; $6c65: $b7
    ld e, b                                       ; $6c66: $58
    dec hl                                        ; $6c67: $2b
    sub a                                         ; $6c68: $97
    ld a, b                                       ; $6c69: $78
    ld [hl], a                                    ; $6c6a: $77
    ld h, l                                       ; $6c6b: $65
    sbc h                                         ; $6c6c: $9c
    add a                                         ; $6c6d: $87
    ld d, a                                       ; $6c6e: $57
    cp d                                          ; $6c6f: $ba
    ld l, c                                       ; $6c70: $69
    jr jr_019_6c0c                                ; $6c71: $18 $99

    or e                                          ; $6c73: $b3
    ld [hl], l                                    ; $6c74: $75
    sbc d                                         ; $6c75: $9a
    halt                                          ; $6c76: $76
    adc c                                         ; $6c77: $89
    halt                                          ; $6c78: $76
    ld d, l                                       ; $6c79: $55
    jp c, Jump_019_7876                           ; $6c7a: $da $76 $78

    or a                                          ; $6c7d: $b7
    add h                                         ; $6c7e: $84
    ld e, d                                       ; $6c7f: $5a
    adc [hl]                                      ; $6c80: $8e
    ld d, h                                       ; $6c81: $54
    ld l, b                                       ; $6c82: $68
    cp b                                          ; $6c83: $b8
    ld e, c                                       ; $6c84: $59
    xor c                                         ; $6c85: $a9
    ld h, d                                       ; $6c86: $62
    sbc [hl]                                      ; $6c87: $9e
    rst $00                                       ; $6c88: $c7
    ld d, e                                       ; $6c89: $53
    call $6187                                    ; $6c8a: $cd $87 $61
    or [hl]                                       ; $6c8d: $b6
    xor b                                         ; $6c8e: $a8
    ld d, a                                       ; $6c8f: $57
    ld c, d                                       ; $6c90: $4a
    sbc b                                         ; $6c91: $98
    ld [hl], a                                    ; $6c92: $77
    add [hl]                                      ; $6c93: $86
    ld b, a                                       ; $6c94: $47
    cp h                                          ; $6c95: $bc
    add a                                         ; $6c96: $87
    ld c, b                                       ; $6c97: $48
    bit 5, e                                      ; $6c98: $cb $6b
    daa                                           ; $6c9a: $27
    adc b                                         ; $6c9b: $88
    xor b                                         ; $6c9c: $a8
    add h                                         ; $6c9d: $84
    ld a, d                                       ; $6c9e: $7a
    add a                                         ; $6c9f: $87
    sub a                                         ; $6ca0: $97
    ld h, [hl]                                    ; $6ca1: $66
    ld d, a                                       ; $6ca2: $57
    and $76                                       ; $6ca3: $e6 $76
    ld a, e                                       ; $6ca5: $7b
    or [hl]                                       ; $6ca6: $b6
    add [hl]                                      ; $6ca7: $86
    ld e, b                                       ; $6ca8: $58
    sbc d                                         ; $6ca9: $9a
    ld h, l                                       ; $6caa: $65
    ld a, c                                       ; $6cab: $79
    xor b                                         ; $6cac: $a8
    adc b                                         ; $6cad: $88
    adc b                                         ; $6cae: $88
    ld h, b                                       ; $6caf: $60
    adc l                                         ; $6cb0: $8d
    or [hl]                                       ; $6cb1: $b6
    ld d, h                                       ; $6cb2: $54
    adc e                                         ; $6cb3: $8b
    add [hl]                                      ; $6cb4: $86
    halt                                          ; $6cb5: $76
    ld l, d                                       ; $6cb6: $6a
    xor b                                         ; $6cb7: $a8
    ld d, l                                       ; $6cb8: $55
    xor c                                         ; $6cb9: $a9
    adc b                                         ; $6cba: $88
    sbc b                                         ; $6cbb: $98
    add h                                         ; $6cbc: $84
    ld b, [hl]                                    ; $6cbd: $46
    sbc e                                         ; $6cbe: $9b
    ld [hl], e                                    ; $6cbf: $73
    ld d, a                                       ; $6cc0: $57
    sbc c                                         ; $6cc1: $99
    ld e, b                                       ; $6cc2: $58
    ld h, l                                       ; $6cc3: $65
    xor e                                         ; $6cc4: $ab
    ld c, d                                       ; $6cc5: $4a
    add hl, sp                                    ; $6cc6: $39
    xor b                                         ; $6cc7: $a8
    ld a, b                                       ; $6cc8: $78
    ld a, b                                       ; $6cc9: $78
    add h                                         ; $6cca: $84
    ld a, [hl+]                                   ; $6ccb: $2a
    cp c                                          ; $6ccc: $b9
    ld h, h                                       ; $6ccd: $64
    ld e, d                                       ; $6cce: $5a
    or [hl]                                       ; $6ccf: $b6
    add [hl]                                      ; $6cd0: $86
    ld b, a                                       ; $6cd1: $47
    db $f4                                        ; $6cd2: $f4
    add [hl]                                      ; $6cd3: $86
    ld l, e                                       ; $6cd4: $6b
    sub l                                         ; $6cd5: $95
    xor c                                         ; $6cd6: $a9
    add a                                         ; $6cd7: $87
    daa                                           ; $6cd8: $27
    ld a, e                                       ; $6cd9: $7b
    and l                                         ; $6cda: $a5
    ld b, a                                       ; $6cdb: $47
    xor c                                         ; $6cdc: $a9
    add [hl]                                      ; $6cdd: $86
    ld a, d                                       ; $6cde: $7a
    ld l, h                                       ; $6cdf: $6c
    add l                                         ; $6ce0: $85
    ld [hl], l                                    ; $6ce1: $75
    xor d                                         ; $6ce2: $aa
    ld h, a                                       ; $6ce3: $67
    sub a                                         ; $6ce4: $97
    sub e                                         ; $6ce5: $93
    ld d, [hl]                                    ; $6ce6: $56
    adc d                                         ; $6ce7: $8a
    ld [hl], e                                    ; $6ce8: $73
    ld a, c                                       ; $6ce9: $79
    sbc b                                         ; $6cea: $98
    ld [hl], h                                    ; $6ceb: $74
    sub a                                         ; $6cec: $97
    sbc e                                         ; $6ced: $9b
    ld l, c                                       ; $6cee: $69
    jr z, @-$56                                   ; $6cef: $28 $a8

    ld [hl], a                                    ; $6cf1: $77
    sub a                                         ; $6cf2: $97
    ld h, [hl]                                    ; $6cf3: $66
    ld d, h                                       ; $6cf4: $54
    rst $20                                       ; $6cf5: $e7
    halt                                          ; $6cf6: $76
    ld e, d                                       ; $6cf7: $5a
    and a                                         ; $6cf8: $a7
    ld [hl], l                                    ; $6cf9: $75
    ld e, c                                       ; $6cfa: $59
    push hl                                       ; $6cfb: $e5
    ld h, [hl]                                    ; $6cfc: $66
    ld l, d                                       ; $6cfd: $6a
    and h                                         ; $6cfe: $a4
    sbc b                                         ; $6cff: $98
    adc c                                         ; $6d00: $89
    ld [$a659], sp                                ; $6d01: $08 $59 $a6
    ld b, a                                       ; $6d04: $47
    adc d                                         ; $6d05: $8a
    add [hl]                                      ; $6d06: $86
    ld a, c                                       ; $6d07: $79
    ld e, l                                       ; $6d08: $5d
    add h                                         ; $6d09: $84
    add [hl]                                      ; $6d0a: $86
    sbc d                                         ; $6d0b: $9a
    add a                                         ; $6d0c: $87
    add [hl]                                      ; $6d0d: $86
    add l                                         ; $6d0e: $85
    adc b                                         ; $6d0f: $88
    adc h                                         ; $6d10: $8c
    ld h, a                                       ; $6d11: $67
    ld d, a                                       ; $6d12: $57
    xor c                                         ; $6d13: $a9
    ld a, b                                       ; $6d14: $78
    halt                                          ; $6d15: $76
    adc e                                         ; $6d16: $8b
    ld l, h                                       ; $6d17: $6c
    ld b, a                                       ; $6d18: $47
    xor b                                         ; $6d19: $a8
    ld a, h                                       ; $6d1a: $7c
    adc b                                         ; $6d1b: $88
    ld h, h                                       ; $6d1c: $64
    ld d, h                                       ; $6d1d: $54
    add sp, $66                                   ; $6d1e: $e8 $66
    ld c, c                                       ; $6d20: $49
    or a                                          ; $6d21: $b7
    add [hl]                                      ; $6d22: $86
    scf                                           ; $6d23: $37
    db $f4                                        ; $6d24: $f4
    sub a                                         ; $6d25: $97
    ld a, [hl-]                                   ; $6d26: $3a
    sub [hl]                                      ; $6d27: $96
    ld a, b                                       ; $6d28: $78
    add a                                         ; $6d29: $87
    ld d, l                                       ; $6d2a: $55
    ld c, d                                       ; $6d2b: $4a
    or l                                          ; $6d2c: $b5
    ld h, e                                       ; $6d2d: $63
    adc d                                         ; $6d2e: $8a
    add [hl]                                      ; $6d2f: $86
    add l                                         ; $6d30: $85

Call_019_6d31:
    ld e, h                                       ; $6d31: $5c
    sub [hl]                                      ; $6d32: $96
    and b                                         ; $6d33: $a0
    xor d                                         ; $6d34: $aa
    ld [hl], a                                    ; $6d35: $77
    and [hl]                                      ; $6d36: $a6
    and l                                         ; $6d37: $a5
    inc sp                                        ; $6d38: $33
    adc a                                         ; $6d39: $8f
    ld d, a                                       ; $6d3a: $57
    dec [hl]                                      ; $6d3b: $35
    xor d                                         ; $6d3c: $aa
    ld d, a                                       ; $6d3d: $57
    ld [hl], l                                    ; $6d3e: $75
    adc h                                         ; $6d3f: $8c
    inc e                                         ; $6d40: $1c

Jump_019_6d41:
    ld d, a                                       ; $6d41: $57
    xor c                                         ; $6d42: $a9
    ld a, d                                       ; $6d43: $7a
    ld l, b                                       ; $6d44: $68
    ld h, l                                       ; $6d45: $65
    push bc                                       ; $6d46: $c5
    cp b                                          ; $6d47: $b8
    ld h, [hl]                                    ; $6d48: $66
    ld a, c                                       ; $6d49: $79
    xor b                                         ; $6d4a: $a8
    ld h, a                                       ; $6d4b: $67
    adc b                                         ; $6d4c: $88
    ld a, h                                       ; $6d4d: $7c
    add l                                         ; $6d4e: $85
    ld l, c                                       ; $6d4f: $69
    xor b                                         ; $6d50: $a8

Call_019_6d51:
    ld a, b                                       ; $6d51: $78

Call_019_6d52:
    halt                                          ; $6d52: $76
    add d                                         ; $6d53: $82
    cp d                                          ; $6d54: $ba
    ld a, b                                       ; $6d55: $78
    ld e, d                                       ; $6d56: $5a
    xor b                                         ; $6d57: $a8
    ld [hl], a                                    ; $6d58: $77
    add e                                         ; $6d59: $83
    add sp, $67                                   ; $6d5a: $e8 $67
    dec hl                                        ; $6d5c: $2b
    and a                                         ; $6d5d: $a7
    ld a, b                                       ; $6d5e: $78
    add a                                         ; $6d5f: $87
    ld h, l                                       ; $6d60: $65

Call_019_6d61:
    adc d                                         ; $6d61: $8a
    add a                                         ; $6d62: $87
    ld h, [hl]                                    ; $6d63: $66
    adc b                                         ; $6d64: $88
    ld a, c                                       ; $6d65: $79
    daa                                           ; $6d66: $27
    ld a, c                                       ; $6d67: $79
    and l                                         ; $6d68: $a5
    ld c, b                                       ; $6d69: $48
    adc c                                         ; $6d6a: $89
    add l                                         ; $6d6b: $85
    ld e, d                                       ; $6d6c: $5a
    sub l                                         ; $6d6d: $95
    ld a, d                                       ; $6d6e: $7a
    ld e, e                                       ; $6d6f: $5b
    ld d, a                                       ; $6d70: $57
    adc b                                         ; $6d71: $88
    or a                                          ; $6d72: $b7
    ld d, l                                       ; $6d73: $55
    ld a, d                                       ; $6d74: $7a
    ret c                                         ; $6d75: $d8

    ld [hl], $8a                                  ; $6d76: $36 $8a

jr_019_6d78:
    and [hl]                                      ; $6d78: $a6
    ld a, b                                       ; $6d79: $78
    add a                                         ; $6d7a: $87
    ld a, l                                       ; $6d7b: $7d
    inc l                                         ; $6d7c: $2c
    ld d, a                                       ; $6d7d: $57
    rst $00                                       ; $6d7e: $c7
    sub l                                         ; $6d7f: $95
    ld h, a                                       ; $6d80: $67
    adc d                                         ; $6d81: $8a
    xor b                                         ; $6d82: $a8
    ld b, [hl]                                    ; $6d83: $46
    sbc c                                         ; $6d84: $99
    sub a                                         ; $6d85: $97
    ld d, [hl]                                    ; $6d86: $56
    ld [hl], a                                    ; $6d87: $77
    ld a, [hl]                                    ; $6d88: $7e
    dec [hl]                                      ; $6d89: $35
    ld a, b                                       ; $6d8a: $78
    and a                                         ; $6d8b: $a7
    ld [hl], l                                    ; $6d8c: $75
    ld b, a                                       ; $6d8d: $47
    xor h                                         ; $6d8e: $ac
    halt                                          ; $6d8f: $76
    ld b, a                                       ; $6d90: $47
    cp d                                          ; $6d91: $ba
    ld l, c                                       ; $6d92: $69
    ld [hl], l                                    ; $6d93: $75
    ld l, d                                       ; $6d94: $6a

jr_019_6d95:
    call nc, Call_019_7d65                        ; $6d95: $d4 $65 $7d
    ld [hl], a                                    ; $6d98: $77
    ld h, a                                       ; $6d99: $67
    ld h, h                                       ; $6d9a: $64
    adc l                                         ; $6d9b: $8d
    adc b                                         ; $6d9c: $88
    ld b, h                                       ; $6d9d: $44
    rst $20                                       ; $6d9e: $e7
    sub a                                         ; $6d9f: $97
    add [hl]                                      ; $6da0: $86
    dec sp                                        ; $6da1: $3b
    sbc c                                         ; $6da2: $99
    add l                                         ; $6da3: $85
    ld e, h                                       ; $6da4: $5c
    adc b                                         ; $6da5: $88
    ld [hl], a                                    ; $6da6: $77
    ld [hl], h                                    ; $6da7: $74
    sub a                                         ; $6da8: $97
    xor b                                         ; $6da9: $a8
    ld d, a                                       ; $6daa: $57
    adc b                                         ; $6dab: $88
    sub a                                         ; $6dac: $97
    ld h, l                                       ; $6dad: $65
    jr c, jr_019_6d78                             ; $6dae: $38 $c8

    inc [hl]                                      ; $6db0: $34
    sub a                                         ; $6db1: $97
    or [hl]                                       ; $6db2: $b6
    ld l, b                                       ; $6db3: $68
    ld e, d                                       ; $6db4: $5a
    ld c, d                                       ; $6db5: $4a
    and a                                         ; $6db6: $a7
    sub e                                         ; $6db7: $93
    or l                                          ; $6db8: $b5
    sbc d                                         ; $6db9: $9a
    ld e, b                                       ; $6dba: $58
    ld e, b                                       ; $6dbb: $58
    cp c                                          ; $6dbc: $b9
    ld h, [hl]                                    ; $6dbd: $66
    ld e, b                                       ; $6dbe: $58
    xor b                                         ; $6dbf: $a8
    adc c                                         ; $6dc0: $89
    add hl, sp                                    ; $6dc1: $39
    ld e, b                                       ; $6dc2: $58
    cp c                                          ; $6dc3: $b9
    ld [hl], l                                    ; $6dc4: $75
    ld a, b                                       ; $6dc5: $78
    cp h                                          ; $6dc6: $bc
    scf                                           ; $6dc7: $37
    ld d, [hl]                                    ; $6dc8: $56
    call Call_019_4947                            ; $6dc9: $cd $47 $49
    ret                                           ; $6dcc: $c9


    ld l, c                                       ; $6dcd: $69
    ld l, e                                       ; $6dce: $6b
    ld h, l                                       ; $6dcf: $65
    xor c                                         ; $6dd0: $a9
    ld h, l                                       ; $6dd1: $65
    ld a, b                                       ; $6dd2: $78
    sbc h                                         ; $6dd3: $9c
    ld [$bc67], sp                                ; $6dd4: $08 $67 $bc
    ld d, h                                       ; $6dd7: $54
    ld l, b                                       ; $6dd8: $68
    xor d                                         ; $6dd9: $aa
    jr c, jr_019_6e53                             ; $6dda: $38 $77

    halt                                          ; $6ddc: $76
    adc b                                         ; $6ddd: $88
    xor b                                         ; $6dde: $a8
    ld [hl], a                                    ; $6ddf: $77
    adc c                                         ; $6de0: $89
    and a                                         ; $6de1: $a7
    ld d, h                                       ; $6de2: $54
    adc e                                         ; $6de3: $8b
    ld l, d                                       ; $6de4: $6a
    ld d, l                                       ; $6de5: $55
    or l                                          ; $6de6: $b5
    xor c                                         ; $6de7: $a9
    ld [hl], a                                    ; $6de8: $77
    halt                                          ; $6de9: $76
    jr z, jr_019_6d95                             ; $6dea: $28 $a9

    add a                                         ; $6dec: $87
    add hl, hl                                    ; $6ded: $29
    sbc c                                         ; $6dee: $99
    add l                                         ; $6def: $85
    scf                                           ; $6df0: $37
    cp b                                          ; $6df1: $b8
    adc b                                         ; $6df2: $88
    dec c                                         ; $6df3: $0d
    ld e, d                                       ; $6df4: $5a
    sub [hl]                                      ; $6df5: $96
    sub l                                         ; $6df6: $95
    and [hl]                                      ; $6df7: $a6
    ld h, a                                       ; $6df8: $67
    ld a, a                                       ; $6df9: $7f
    ld d, a                                       ; $6dfa: $57
    ld h, [hl]                                    ; $6dfb: $66
    sbc e                                         ; $6dfc: $9b
    ld e, c                                       ; $6dfd: $59
    ld [hl], l                                    ; $6dfe: $75
    xor a                                         ; $6dff: $af
    ld b, [hl]                                    ; $6e00: $46
    ld h, a                                       ; $6e01: $67
    xor h                                         ; $6e02: $ac
    ld c, b                                       ; $6e03: $48
    ld a, b                                       ; $6e04: $78
    ld [hl], l                                    ; $6e05: $75
    and h                                         ; $6e06: $a4
    rst $20                                       ; $6e07: $e7
    ld e, c                                       ; $6e08: $59
    ld a, [hl-]                                   ; $6e09: $3a
    and a                                         ; $6e0a: $a7
    ld h, a                                       ; $6e0b: $67
    ld [hl], a                                    ; $6e0c: $77
    rst $30                                       ; $6e0d: $f7
    ld d, a                                       ; $6e0e: $57
    ld l, c                                       ; $6e0f: $69
    or [hl]                                       ; $6e10: $b6
    ld a, b                                       ; $6e11: $78
    ld l, d                                       ; $6e12: $6a
    add hl, de                                    ; $6e13: $19
    ld a, c                                       ; $6e14: $79
    or h                                          ; $6e15: $b4
    add [hl]                                      ; $6e16: $86
    adc d                                         ; $6e17: $8a
    add l                                         ; $6e18: $85
    ld [hl], a                                    ; $6e19: $77
    ld l, e                                       ; $6e1a: $6b
    and e                                         ; $6e1b: $a3
    sub h                                         ; $6e1c: $94
    sbc c                                         ; $6e1d: $99
    ld h, [hl]                                    ; $6e1e: $66
    and [hl]                                      ; $6e1f: $a6
    sub l                                         ; $6e20: $95
    ld d, a                                       ; $6e21: $57
    ld a, [hl]                                    ; $6e22: $7e
    ld c, b                                       ; $6e23: $48
    ld h, l                                       ; $6e24: $65
    and a                                         ; $6e25: $a7
    sub a                                         ; $6e26: $97
    ld d, l                                       ; $6e27: $55
    sbc a                                         ; $6e28: $9f
    scf                                           ; $6e29: $37
    ld d, a                                       ; $6e2a: $57
    or a                                          ; $6e2b: $b7
    sub a                                         ; $6e2c: $97
    add a                                         ; $6e2d: $87
    ld h, a                                       ; $6e2e: $67
    sub a                                         ; $6e2f: $97
    cp c                                          ; $6e30: $b9
    ld h, a                                       ; $6e31: $67
    ld l, b                                       ; $6e32: $68
    or a                                          ; $6e33: $b7
    ld h, a                                       ; $6e34: $67
    ld c, b                                       ; $6e35: $48
    ret c                                         ; $6e36: $d8

    ld d, [hl]                                    ; $6e37: $56
    ld c, e                                       ; $6e38: $4b
    and l                                         ; $6e39: $a5
    ld a, c                                       ; $6e3a: $79
    ld e, h                                       ; $6e3b: $5c
    ld h, l                                       ; $6e3c: $65
    ld l, d                                       ; $6e3d: $6a
    or [hl]                                       ; $6e3e: $b6
    ld [hl], l                                    ; $6e3f: $75

Call_019_6e40:
    adc d                                         ; $6e40: $8a
    sub [hl]                                      ; $6e41: $96
    add l                                         ; $6e42: $85
    ld a, h                                       ; $6e43: $7c
    add $56                                       ; $6e44: $c6 $56
    adc d                                         ; $6e46: $8a
    sub [hl]                                      ; $6e47: $96
    sub [hl]                                      ; $6e48: $96
    add a                                         ; $6e49: $87
    ld [hl], a                                    ; $6e4a: $77
    ld c, a                                       ; $6e4b: $4f
    jr c, jr_019_6ec2                             ; $6e4c: $38 $74

    and [hl]                                      ; $6e4e: $a6
    ld [hl], a                                    ; $6e4f: $77
    ld h, [hl]                                    ; $6e50: $66

Call_019_6e51:
    ld a, b                                       ; $6e51: $78
    sbc b                                         ; $6e52: $98

jr_019_6e53:
    ld d, [hl]                                    ; $6e53: $56
    sub l                                         ; $6e54: $95
    and [hl]                                      ; $6e55: $a6
    adc b                                         ; $6e56: $88
    ld l, c                                       ; $6e57: $69
    jr c, jr_019_6eb3                             ; $6e58: $38 $59

    or [hl]                                       ; $6e5a: $b6
    sub e                                         ; $6e5b: $93
    adc b                                         ; $6e5c: $88
    sbc d                                         ; $6e5d: $9a
    add hl, sp                                    ; $6e5e: $39
    ld l, e                                       ; $6e5f: $6b
    or l                                          ; $6e60: $b5

Call_019_6e61:
    sub b                                         ; $6e61: $90
    cp b                                          ; $6e62: $b8
    adc c                                         ; $6e63: $89
    ld c, l                                       ; $6e64: $4d
    ld b, a                                       ; $6e65: $47
    ld h, [hl]                                    ; $6e66: $66
    sub [hl]                                      ; $6e67: $96
    and a                                         ; $6e68: $a7
    halt                                          ; $6e69: $76
    ld l, c                                       ; $6e6a: $69
    add $77                                       ; $6e6b: $c6 $77
    ld l, b                                       ; $6e6d: $68
    and $86                                       ; $6e6e: $e6 $86
    ld e, d                                       ; $6e70: $5a
    add a                                         ; $6e71: $87
    sbc b                                         ; $6e72: $98
    add a                                         ; $6e73: $87
    ld d, h                                       ; $6e74: $54
    xor c                                         ; $6e75: $a9
    sbc d                                         ; $6e76: $9a
    ld b, a                                       ; $6e77: $47
    ld l, b                                       ; $6e78: $68
    xor c                                         ; $6e79: $a9
    ld e, b                                       ; $6e7a: $58
    ld h, a                                       ; $6e7b: $67
    bit 0, [hl]                                   ; $6e7c: $cb $46
    ld l, b                                       ; $6e7e: $68
    xor b                                         ; $6e7f: $a8
    ld l, c                                       ; $6e80: $69
    ld l, b                                       ; $6e81: $68
    ld h, l                                       ; $6e82: $65
    ld h, [hl]                                    ; $6e83: $66
    add sp, -$7b                                  ; $6e84: $e8 $85
    ld e, c                                       ; $6e86: $59
    sbc e                                         ; $6e87: $9b
    ld h, h                                       ; $6e88: $64
    ld d, a                                       ; $6e89: $57
    sbc l                                         ; $6e8a: $9d
    ld [hl], l                                    ; $6e8b: $75
    ld h, a                                       ; $6e8c: $67
    sbc e                                         ; $6e8d: $9b
    adc b                                         ; $6e8e: $88
    ld [hl], a                                    ; $6e8f: $77
    add h                                         ; $6e90: $84
    halt                                          ; $6e91: $76
    cp e                                          ; $6e92: $bb
    ld d, a                                       ; $6e93: $57
    scf                                           ; $6e94: $37
    xor d                                         ; $6e95: $aa
    add [hl]                                      ; $6e96: $86
    ld b, [hl]                                    ; $6e97: $46
    sbc e                                         ; $6e98: $9b
    and l                                         ; $6e99: $a5
    ld d, a                                       ; $6e9a: $57
    sbc c                                         ; $6e9b: $99
    ld [hl], a                                    ; $6e9c: $77
    push bc                                       ; $6e9d: $c5
    add a                                         ; $6e9e: $87
    ld b, [hl]                                    ; $6e9f: $46
    xor a                                         ; $6ea0: $af
    add [hl]                                      ; $6ea1: $86
    ld d, [hl]                                    ; $6ea2: $56
    cp e                                          ; $6ea3: $bb
    adc b                                         ; $6ea4: $88
    ld d, h                                       ; $6ea5: $54
    ld a, c                                       ; $6ea6: $79
    rst $20                                       ; $6ea7: $e7
    ld b, [hl]                                    ; $6ea8: $46
    ld a, c                                       ; $6ea9: $79
    and l                                         ; $6eaa: $a5
    xor c                                         ; $6eab: $a9
    ld e, d                                       ; $6eac: $5a
    dec [hl]                                      ; $6ead: $35
    adc e                                         ; $6eae: $8b
    ret z                                         ; $6eaf: $c8

    ld b, [hl]                                    ; $6eb0: $46
    ld a, d                                       ; $6eb1: $7a
    cp b                                          ; $6eb2: $b8

jr_019_6eb3:
    halt                                          ; $6eb3: $76
    ld d, [hl]                                    ; $6eb4: $56
    xor l                                         ; $6eb5: $ad
    ld d, a                                       ; $6eb6: $57
    ld d, a                                       ; $6eb7: $57
    xor c                                         ; $6eb8: $a9
    ld e, d                                       ; $6eb9: $5a
    add a                                         ; $6eba: $87

jr_019_6ebb:
    ld [hl], a                                    ; $6ebb: $77
    ld d, a                                       ; $6ebc: $57
    adc e                                         ; $6ebd: $8b
    sub [hl]                                      ; $6ebe: $96
    ld d, [hl]                                    ; $6ebf: $56
    adc d                                         ; $6ec0: $8a
    add a                                         ; $6ec1: $87

jr_019_6ec2:
    ld [hl], h                                    ; $6ec2: $74
    ld e, d                                       ; $6ec3: $5a
    cp b                                          ; $6ec4: $b8
    ld d, l                                       ; $6ec5: $55
    ld a, c                                       ; $6ec6: $79
    and a                                         ; $6ec7: $a7
    ld a, d                                       ; $6ec8: $7a
    ld a, [hl-]                                   ; $6ec9: $3a
    ld [hl], l                                    ; $6eca: $75
    ld l, c                                       ; $6ecb: $69
    adc e                                         ; $6ecc: $8b
    ld d, [hl]                                    ; $6ecd: $56
    ld [hl], a                                    ; $6ece: $77
    cp c                                          ; $6ecf: $b9
    add a                                         ; $6ed0: $87
    ld d, h                                       ; $6ed1: $54
    adc a                                         ; $6ed2: $8f
    add [hl]                                      ; $6ed3: $86
    ld d, [hl]                                    ; $6ed4: $56
    sbc h                                         ; $6ed5: $9c
    ld h, [hl]                                    ; $6ed6: $66
    xor c                                         ; $6ed7: $a9
    ld l, c                                       ; $6ed8: $69
    ld [hl], $cb                                  ; $6ed9: $36 $cb
    ld [hl], a                                    ; $6edb: $77
    ld b, [hl]                                    ; $6edc: $46
    sbc d                                         ; $6edd: $9a
    sbc b                                         ; $6ede: $98
    ld h, e                                       ; $6edf: $63
    ld e, d                                       ; $6ee0: $5a
    jp z, Jump_019_7936                           ; $6ee1: $ca $36 $79

    xor b                                         ; $6ee4: $a8
    ld c, h                                       ; $6ee5: $4c
    ld d, a                                       ; $6ee6: $57
    add l                                         ; $6ee7: $85
    ld a, [hl+]                                   ; $6ee8: $2a
    sbc e                                         ; $6ee9: $9b
    add h                                         ; $6eea: $84
    ld l, c                                       ; $6eeb: $69
    ld a, h                                       ; $6eec: $7c
    add l                                         ; $6eed: $85
    halt                                          ; $6eee: $76
    jr c, jr_019_6ebb                             ; $6eef: $38 $ca

    ld h, h                                       ; $6ef1: $64
    adc b                                         ; $6ef2: $88
    xor c                                         ; $6ef3: $a9
    ld h, h                                       ; $6ef4: $64
    xor c                                         ; $6ef5: $a9
    ld [hl], a                                    ; $6ef6: $77
    ld d, l                                       ; $6ef7: $55
    sbc l                                         ; $6ef8: $9d
    add [hl]                                      ; $6ef9: $86
    ld h, a                                       ; $6efa: $67
    adc d                                         ; $6efb: $8a
    add a                                         ; $6efc: $87
    halt                                          ; $6efd: $76
    ld b, [hl]                                    ; $6efe: $46
    ld [$8855], a                                 ; $6eff: $ea $55 $88
    sbc d                                         ; $6f02: $9a
    ld d, [hl]                                    ; $6f03: $56
    and a                                         ; $6f04: $a7
    ld e, d                                       ; $6f05: $5a
    ld d, l                                       ; $6f06: $55
    xor l                                         ; $6f07: $ad
    ld d, [hl]                                    ; $6f08: $56
    ld [hl], a                                    ; $6f09: $77
    adc d                                         ; $6f0a: $8a
    sub [hl]                                      ; $6f0b: $96
    ld h, [hl]                                    ; $6f0c: $66
    ld e, b                                       ; $6f0d: $58
    ld hl, sp+$36                                 ; $6f0e: $f8 $36
    sbc b                                         ; $6f10: $98
    adc d                                         ; $6f11: $8a
    ld c, b                                       ; $6f12: $48
    sub a                                         ; $6f13: $97
    ld e, b                                       ; $6f14: $58
    ld d, [hl]                                    ; $6f15: $56
    cp e                                          ; $6f16: $bb
    ld d, h                                       ; $6f17: $54
    sbc b                                         ; $6f18: $98
    adc d                                         ; $6f19: $8a
    add h                                         ; $6f1a: $84
    ld l, b                                       ; $6f1b: $68
    ld l, c                                       ; $6f1c: $69
    rst $00                                       ; $6f1d: $c7
    add hl, bc                                    ; $6f1e: $09
    cp b                                          ; $6f1f: $b8
    adc c                                         ; $6f20: $89
    ld d, a                                       ; $6f21: $57
    and a                                         ; $6f22: $a7
    ld d, l                                       ; $6f23: $55
    ld a, h                                       ; $6f24: $7c
    or [hl]                                       ; $6f25: $b6
    ld b, [hl]                                    ; $6f26: $46
    and a                                         ; $6f27: $a7
    sbc b                                         ; $6f28: $98
    ld d, h                                       ; $6f29: $54
    adc b                                         ; $6f2a: $88
    ld a, e                                       ; $6f2b: $7b
    add h                                         ; $6f2c: $84
    ld e, e                                       ; $6f2d: $5b
    ld a, d                                       ; $6f2e: $7a
    add l                                         ; $6f2f: $85
    ld l, d                                       ; $6f30: $6a
    add a                                         ; $6f31: $87
    ld d, l                                       ; $6f32: $55
    sbc l                                         ; $6f33: $9d
    halt                                          ; $6f34: $76
    ld [hl], a                                    ; $6f35: $77
    adc d                                         ; $6f36: $8a
    and [hl]                                      ; $6f37: $a6
    ld d, [hl]                                    ; $6f38: $56
    ld [hl], a                                    ; $6f39: $77
    xor d                                         ; $6f3a: $aa
    ld h, l                                       ; $6f3b: $65
    ld a, c                                       ; $6f3c: $79
    adc d                                         ; $6f3d: $8a
    halt                                          ; $6f3e: $76
    ld a, b                                       ; $6f3f: $78
    adc b                                         ; $6f40: $88
    ld h, [hl]                                    ; $6f41: $66
    ld h, a                                       ; $6f42: $67
    sbc d                                         ; $6f43: $9a
    halt                                          ; $6f44: $76
    ld a, b                                       ; $6f45: $78
    adc c                                         ; $6f46: $89
    add [hl]                                      ; $6f47: $86
    ld h, [hl]                                    ; $6f48: $66
    ld a, b                                       ; $6f49: $78
    rst $00                                       ; $6f4a: $c7
    ld h, a                                       ; $6f4b: $67
    sbc b                                         ; $6f4c: $98
    or [hl]                                       ; $6f4d: $b6
    ld l, c                                       ; $6f4e: $69
    sub a                                         ; $6f4f: $97
    add a                                         ; $6f50: $87
    ld b, [hl]                                    ; $6f51: $46
    xor e                                         ; $6f52: $ab
    add a                                         ; $6f53: $87
    ld h, a                                       ; $6f54: $67
    sbc d                                         ; $6f55: $9a
    and a                                         ; $6f56: $a7
    ld d, l                                       ; $6f57: $55
    ld e, b                                       ; $6f58: $58
    xor c                                         ; $6f59: $a9
    ld d, [hl]                                    ; $6f5a: $56
    adc b                                         ; $6f5b: $88
    adc c                                         ; $6f5c: $89
    ld [hl], a                                    ; $6f5d: $77
    ld [hl], a                                    ; $6f5e: $77
    ld [hl], a                                    ; $6f5f: $77
    dec [hl]                                      ; $6f60: $35
    adc d                                         ; $6f61: $8a
    and a                                         ; $6f62: $a7
    ld [hl], a                                    ; $6f63: $77
    adc d                                         ; $6f64: $8a
    xor b                                         ; $6f65: $a8
    ld h, l                                       ; $6f66: $65
    ld d, [hl]                                    ; $6f67: $56
    sbc e                                         ; $6f68: $9b
    add l                                         ; $6f69: $85
    ld a, c                                       ; $6f6a: $79
    sbc c                                         ; $6f6b: $99
    sub l                                         ; $6f6c: $95
    ld a, b                                       ; $6f6d: $78
    halt                                          ; $6f6e: $76
    ld b, l                                       ; $6f6f: $45
    adc d                                         ; $6f70: $8a
    xor b                                         ; $6f71: $a8
    ld a, b                                       ; $6f72: $78
    adc d                                         ; $6f73: $8a
    xor b                                         ; $6f74: $a8
    ld h, l                                       ; $6f75: $65
    ld h, [hl]                                    ; $6f76: $66
    sbc d                                         ; $6f77: $9a
    ld [hl], h                                    ; $6f78: $74
    adc d                                         ; $6f79: $8a
    sbc c                                         ; $6f7a: $99
    add [hl]                                      ; $6f7b: $86
    ld a, b                                       ; $6f7c: $78
    halt                                          ; $6f7d: $76
    ld d, l                                       ; $6f7e: $55
    adc h                                         ; $6f7f: $8c
    sub a                                         ; $6f80: $97
    ld a, b                                       ; $6f81: $78
    sbc d                                         ; $6f82: $9a
    and a                                         ; $6f83: $a7
    ld d, l                                       ; $6f84: $55
    ld h, l                                       ; $6f85: $65
    adc d                                         ; $6f86: $8a
    add [hl]                                      ; $6f87: $86
    adc d                                         ; $6f88: $8a
    ld a, d                                       ; $6f89: $7a
    sub [hl]                                      ; $6f8a: $96
    ld d, a                                       ; $6f8b: $57
    add a                                         ; $6f8c: $87
    ld d, h                                       ; $6f8d: $54
    ld e, c                                       ; $6f8e: $59
    ret                                           ; $6f8f: $c9


    adc b                                         ; $6f90: $88
    ld a, b                                       ; $6f91: $78
    xor c                                         ; $6f92: $a9
    ld [hl], l                                    ; $6f93: $75
    ld b, h                                       ; $6f94: $44
    ld a, h                                       ; $6f95: $7c
    and a                                         ; $6f96: $a7
    ld l, b                                       ; $6f97: $68
    sbc d                                         ; $6f98: $9a
    sub a                                         ; $6f99: $97
    ld [hl], a                                    ; $6f9a: $77
    ld [hl], a                                    ; $6f9b: $77
    ld h, h                                       ; $6f9c: $64
    ld e, c                                       ; $6f9d: $59
    cp d                                          ; $6f9e: $ba
    ld h, a                                       ; $6f9f: $67
    adc c                                         ; $6fa0: $89
    sbc c                                         ; $6fa1: $99
    ld h, l                                       ; $6fa2: $65
    ld h, [hl]                                    ; $6fa3: $66
    ld h, a                                       ; $6fa4: $67
    adc d                                         ; $6fa5: $8a
    sub a                                         ; $6fa6: $97
    adc c                                         ; $6fa7: $89
    adc c                                         ; $6fa8: $89
    sub [hl]                                      ; $6fa9: $96
    ld d, [hl]                                    ; $6faa: $56
    ld h, [hl]                                    ; $6fab: $66
    ld h, a                                       ; $6fac: $67
    adc c                                         ; $6fad: $89
    sbc c                                         ; $6fae: $99
    adc b                                         ; $6faf: $88
    sbc c                                         ; $6fb0: $99
    halt                                          ; $6fb1: $76
    ld d, l                                       ; $6fb2: $55
    ld d, a                                       ; $6fb3: $57
    xor d                                         ; $6fb4: $aa
    ld h, a                                       ; $6fb5: $67
    sbc c                                         ; $6fb6: $99
    sbc c                                         ; $6fb7: $99
    ld [hl], l                                    ; $6fb8: $75
    ld d, [hl]                                    ; $6fb9: $56
    ld h, [hl]                                    ; $6fba: $66
    sbc c                                         ; $6fbb: $99
    ld h, a                                       ; $6fbc: $67
    sbc d                                         ; $6fbd: $9a
    sbc d                                         ; $6fbe: $9a
    add [hl]                                      ; $6fbf: $86
    ld d, [hl]                                    ; $6fc0: $56
    ld h, [hl]                                    ; $6fc1: $66
    adc c                                         ; $6fc2: $89
    add a                                         ; $6fc3: $87
    adc d                                         ; $6fc4: $8a
    sbc c                                         ; $6fc5: $99
    sub a                                         ; $6fc6: $97
    ld d, l                                       ; $6fc7: $55
    ld h, l                                       ; $6fc8: $65
    ld l, b                                       ; $6fc9: $68
    xor b                                         ; $6fca: $a8
    ld l, b                                       ; $6fcb: $68
    sbc d                                         ; $6fcc: $9a
    xor d                                         ; $6fcd: $aa
    ld h, h                                       ; $6fce: $64
    ld h, a                                       ; $6fcf: $67
    ld h, [hl]                                    ; $6fd0: $66
    xor c                                         ; $6fd1: $a9
    ld l, b                                       ; $6fd2: $68
    xor d                                         ; $6fd3: $aa
    sbc d                                         ; $6fd4: $9a
    add l                                         ; $6fd5: $85
    ld d, [hl]                                    ; $6fd6: $56
    ld h, [hl]                                    ; $6fd7: $66
    sbc d                                         ; $6fd8: $9a
    halt                                          ; $6fd9: $76
    sbc d                                         ; $6fda: $9a
    sbc c                                         ; $6fdb: $99
    add [hl]                                      ; $6fdc: $86
    ld d, [hl]                                    ; $6fdd: $56
    add [hl]                                      ; $6fde: $86
    ld b, l                                       ; $6fdf: $45
    adc e                                         ; $6fe0: $8b
    xor c                                         ; $6fe1: $a9
    adc b                                         ; $6fe2: $88
    adc c                                         ; $6fe3: $89
    sub a                                         ; $6fe4: $97
    ld d, l                                       ; $6fe5: $55
    ld d, [hl]                                    ; $6fe6: $56
    ld a, c                                       ; $6fe7: $79
    xor c                                         ; $6fe8: $a9
    ld a, b                                       ; $6fe9: $78
    sbc d                                         ; $6fea: $9a
    sub a                                         ; $6feb: $97
    ld h, [hl]                                    ; $6fec: $66
    ld h, [hl]                                    ; $6fed: $66
    halt                                          ; $6fee: $76
    ld h, a                                       ; $6fef: $67
    adc c                                         ; $6ff0: $89
    xor d                                         ; $6ff1: $aa
    add a                                         ; $6ff2: $87
    ld a, b                                       ; $6ff3: $78
    add a                                         ; $6ff4: $87
    ld d, e                                       ; $6ff5: $53
    ld b, [hl]                                    ; $6ff6: $46
    cp e                                          ; $6ff7: $bb
    halt                                          ; $6ff8: $76
    adc c                                         ; $6ff9: $89
    xor c                                         ; $6ffa: $a9
    halt                                          ; $6ffb: $76
    ld h, a                                       ; $6ffc: $67
    ld [hl], l                                    ; $6ffd: $75
    ld [hl], $ac                                  ; $6ffe: $36 $ac
    sub [hl]                                      ; $7000: $96
    adc b                                         ; $7001: $88
    adc c                                         ; $7002: $89
    sub [hl]                                      ; $7003: $96
    ld b, h                                       ; $7004: $44
    ld d, l                                       ; $7005: $55
    ld e, d                                       ; $7006: $5a
    ret z                                         ; $7007: $c8

    ld a, b                                       ; $7008: $78
    xor c                                         ; $7009: $a9
    adc b                                         ; $700a: $88
    halt                                          ; $700b: $76
    ld h, [hl]                                    ; $700c: $66
    inc sp                                        ; $700d: $33
    ld a, e                                       ; $700e: $7b
    ret                                           ; $700f: $c9


    adc b                                         ; $7010: $88
    adc c                                         ; $7011: $89
    xor b                                         ; $7012: $a8
    ld d, h                                       ; $7013: $54
    ld d, l                                       ; $7014: $55
    ld d, [hl]                                    ; $7015: $56
    xor h                                         ; $7016: $ac
    xor b                                         ; $7017: $a8
    adc c                                         ; $7018: $89
    adc b                                         ; $7019: $88
    halt                                          ; $701a: $76
    ld d, l                                       ; $701b: $55
    ld h, [hl]                                    ; $701c: $66
    ld b, l                                       ; $701d: $45
    xor l                                         ; $701e: $ad
    cp b                                          ; $701f: $b8
    add a                                         ; $7020: $87
    adc c                                         ; $7021: $89
    sub a                                         ; $7022: $97
    ld b, h                                       ; $7023: $44
    ld d, [hl]                                    ; $7024: $56
    ld a, d                                       ; $7025: $7a
    jp z, $9988                                   ; $7026: $ca $88 $99

    add a                                         ; $7029: $87
    halt                                          ; $702a: $76
    ld h, [hl]                                    ; $702b: $66
    ld d, e                                       ; $702c: $53
    ld e, d                                       ; $702d: $5a
    db $db                                        ; $702e: $db
    add [hl]                                      ; $702f: $86
    adc b                                         ; $7030: $88
    sbc c                                         ; $7031: $99
    ld h, h                                       ; $7032: $64
    ld h, [hl]                                    ; $7033: $66
    ld h, [hl]                                    ; $7034: $66
    ld l, d                                       ; $7035: $6a
    jp c, $8887                                   ; $7036: $da $87 $88

    add a                                         ; $7039: $87
    halt                                          ; $703a: $76
    ld h, a                                       ; $703b: $67
    ld h, l                                       ; $703c: $65
    ld e, d                                       ; $703d: $5a
    bit 6, [hl]                                   ; $703e: $cb $76
    adc b                                         ; $7040: $88
    sbc b                                         ; $7041: $98
    ld h, h                                       ; $7042: $64
    ld l, b                                       ; $7043: $68
    add a                                         ; $7044: $87
    ld d, l                                       ; $7045: $55
    xor h                                         ; $7046: $ac
    and a                                         ; $7047: $a7
    ld d, a                                       ; $7048: $57
    ld a, b                                       ; $7049: $78
    add [hl]                                      ; $704a: $86
    ld b, h                                       ; $704b: $44
    ld h, a                                       ; $704c: $67
    ld a, c                                       ; $704d: $79
    cp d                                          ; $704e: $ba
    ld [hl], a                                    ; $704f: $77
    adc b                                         ; $7050: $88
    add a                                         ; $7051: $87
    halt                                          ; $7052: $76
    ld d, [hl]                                    ; $7053: $56
    ld h, [hl]                                    ; $7054: $66
    adc h                                         ; $7055: $8c
    cp b                                          ; $7056: $b8
    ld [hl], a                                    ; $7057: $77
    adc b                                         ; $7058: $88
    add a                                         ; $7059: $87
    ld h, l                                       ; $705a: $65
    ld d, [hl]                                    ; $705b: $56
    ld e, b                                       ; $705c: $58
    cp e                                          ; $705d: $bb
    add [hl]                                      ; $705e: $86
    ld a, b                                       ; $705f: $78
    adc b                                         ; $7060: $88
    ld [hl], l                                    ; $7061: $75
    ld d, a                                       ; $7062: $57
    halt                                          ; $7063: $76
    ld b, l                                       ; $7064: $45
    xor l                                         ; $7065: $ad
    or a                                          ; $7066: $b7
    ld h, a                                       ; $7067: $67
    adc b                                         ; $7068: $88
    sub a                                         ; $7069: $97
    ld d, h                                       ; $706a: $54
    ld h, a                                       ; $706b: $67
    ld a, d                                       ; $706c: $7a
    bit 6, [hl]                                   ; $706d: $cb $76
    adc b                                         ; $706f: $88
    add a                                         ; $7070: $87
    ld h, [hl]                                    ; $7071: $66
    ld h, a                                       ; $7072: $67
    halt                                          ; $7073: $76
    ld d, a                                       ; $7074: $57
    call z, Call_019_67a7                         ; $7075: $cc $a7 $67
    adc c                                         ; $7078: $89
    add [hl]                                      ; $7079: $86
    ld d, h                                       ; $707a: $54
    ld d, [hl]                                    ; $707b: $56
    xor l                                         ; $707c: $ad
    or a                                          ; $707d: $b7
    ld l, b                                       ; $707e: $68
    sbc c                                         ; $707f: $99
    add a                                         ; $7080: $87
    ld h, [hl]                                    ; $7081: $66
    ld h, l                                       ; $7082: $65
    ld b, [hl]                                    ; $7083: $46
    cp a                                          ; $7084: $bf
    or a                                          ; $7085: $b7
    ld h, a                                       ; $7086: $67
    adc c                                         ; $7087: $89
    sub a                                         ; $7088: $97
    ld h, [hl]                                    ; $7089: $66
    halt                                          ; $708a: $76
    inc [hl]                                      ; $708b: $34
    xor [hl]                                      ; $708c: $ae
    rst $00                                       ; $708d: $c7
    ld d, [hl]                                    ; $708e: $56
    adc c                                         ; $708f: $89
    sub a                                         ; $7090: $97
    ld d, [hl]                                    ; $7091: $56
    ld h, [hl]                                    ; $7092: $66
    ld d, l                                       ; $7093: $55
    xor [hl]                                      ; $7094: $ae
    ret z                                         ; $7095: $c8

    ld h, a                                       ; $7096: $67
    ld a, b                                       ; $7097: $78
    sbc b                                         ; $7098: $98
    ld h, l                                       ; $7099: $65
    ld [hl], a                                    ; $709a: $77
    ld d, h                                       ; $709b: $54
    adc l                                         ; $709c: $8d
    jp hl                                         ; $709d: $e9


    ld d, [hl]                                    ; $709e: $56
    ld a, b                                       ; $709f: $78
    adc b                                         ; $70a0: $88
    ld h, h                                       ; $70a1: $64
    ld d, a                                       ; $70a2: $57
    ld h, h                                       ; $70a3: $64
    ld e, h                                       ; $70a4: $5c
    db $eb                                        ; $70a5: $eb
    halt                                          ; $70a6: $76
    ld a, b                                       ; $70a7: $78
    sbc c                                         ; $70a8: $99
    halt                                          ; $70a9: $76
    ld d, a                                       ; $70aa: $57
    ld [hl], l                                    ; $70ab: $75
    ld b, a                                       ; $70ac: $47
    db $ed                                        ; $70ad: $ed
    sub [hl]                                      ; $70ae: $96
    ld d, a                                       ; $70af: $57
    adc c                                         ; $70b0: $89
    add [hl]                                      ; $70b1: $86
    ld d, [hl]                                    ; $70b2: $56
    ld a, b                                       ; $70b3: $78
    ld b, h                                       ; $70b4: $44
    adc l                                         ; $70b5: $8d
    ret c                                         ; $70b6: $d8

    ld d, [hl]                                    ; $70b7: $56
    ld a, c                                       ; $70b8: $79
    sbc b                                         ; $70b9: $98
    ld d, l                                       ; $70ba: $55
    ld a, b                                       ; $70bb: $78
    ld [hl], l                                    ; $70bc: $75
    add hl, sp                                    ; $70bd: $39
    call c, Call_019_6785                         ; $70be: $dc $85 $67
    sbc c                                         ; $70c1: $99
    ld [hl], l                                    ; $70c2: $75
    ld b, a                                       ; $70c3: $47
    add a                                         ; $70c4: $87
    ld d, l                                       ; $70c5: $55
    sbc l                                         ; $70c6: $9d
    ret z                                         ; $70c7: $c8

    ld h, [hl]                                    ; $70c8: $66
    ld a, c                                       ; $70c9: $79
    sub [hl]                                      ; $70ca: $96
    ld d, [hl]                                    ; $70cb: $56
    ld a, b                                       ; $70cc: $78
    ld h, l                                       ; $70cd: $65
    ld a, d                                       ; $70ce: $7a
    db $db                                        ; $70cf: $db
    add [hl]                                      ; $70d0: $86
    ld l, b                                       ; $70d1: $68
    sbc b                                         ; $70d2: $98
    ld h, [hl]                                    ; $70d3: $66
    ld a, b                                       ; $70d4: $78
    add a                                         ; $70d5: $87
    ld b, l                                       ; $70d6: $45
    xor l                                         ; $70d7: $ad
    or a                                          ; $70d8: $b7
    ld d, [hl]                                    ; $70d9: $56
    ld a, c                                       ; $70da: $79
    add [hl]                                      ; $70db: $86
    ld b, [hl]                                    ; $70dc: $46
    adc c                                         ; $70dd: $89
    add [hl]                                      ; $70de: $86
    ld d, [hl]                                    ; $70df: $56
    cp l                                          ; $70e0: $bd
    or a                                          ; $70e1: $b7
    ld b, [hl]                                    ; $70e2: $46
    adc c                                         ; $70e3: $89
    sub a                                         ; $70e4: $97
    ld d, h                                       ; $70e5: $54
    ld l, b                                       ; $70e6: $68
    ld a, c                                       ; $70e7: $79
    cp e                                          ; $70e8: $bb
    halt                                          ; $70e9: $76
    ld a, b                                       ; $70ea: $78
    add a                                         ; $70eb: $87
    ld [hl], a                                    ; $70ec: $77
    ld [hl], a                                    ; $70ed: $77
    halt                                          ; $70ee: $76
    ld b, l                                       ; $70ef: $45
    xor l                                         ; $70f0: $ad
    ret z                                         ; $70f1: $c8

    ld d, l                                       ; $70f2: $55
    adc c                                         ; $70f3: $89
    sub a                                         ; $70f4: $97
    ld d, e                                       ; $70f5: $53
    ld d, a                                       ; $70f6: $57
    ld a, c                                       ; $70f7: $79
    call z, Call_019_6875                         ; $70f8: $cc $75 $68
    add a                                         ; $70fb: $87
    ld [hl], a                                    ; $70fc: $77
    ld h, a                                       ; $70fd: $67
    halt                                          ; $70fe: $76
    ld b, l                                       ; $70ff: $45
    xor l                                         ; $7100: $ad
    ret z                                         ; $7101: $c8

    ld b, l                                       ; $7102: $45
    ld a, d                                       ; $7103: $7a
    xor b                                         ; $7104: $a8
    ld b, e                                       ; $7105: $43
    ld d, a                                       ; $7106: $57
    adc b                                         ; $7107: $88
    xor l                                         ; $7108: $ad
    ret z                                         ; $7109: $c8

    ld h, a                                       ; $710a: $67
    ld a, b                                       ; $710b: $78
    add a                                         ; $710c: $87
    ld h, [hl]                                    ; $710d: $66
    ld a, b                                       ; $710e: $78
    ld [hl], l                                    ; $710f: $75
    ld l, d                                       ; $7110: $6a
    db $ec                                        ; $7111: $ec
    ld [hl], l                                    ; $7112: $75
    ld d, a                                       ; $7113: $57
    sbc c                                         ; $7114: $99
    ld [hl], h                                    ; $7115: $74
    dec [hl]                                      ; $7116: $35
    ld a, b                                       ; $7117: $78
    adc e                                         ; $7118: $8b
    ret                                           ; $7119: $c9


    ld h, [hl]                                    ; $711a: $66
    ld a, b                                       ; $711b: $78
    ld [hl], a                                    ; $711c: $77
    halt                                          ; $711d: $76
    ld h, a                                       ; $711e: $67
    ld [hl], l                                    ; $711f: $75
    ld e, b                                       ; $7120: $58
    adc $96                                       ; $7121: $ce $96
    ld d, a                                       ; $7123: $57
    adc d                                         ; $7124: $8a
    sub [hl]                                      ; $7125: $96
    ld b, l                                       ; $7126: $45
    ld a, b                                       ; $7127: $78
    ld a, d                                       ; $7128: $7a
    jp z, Jump_019_7775                           ; $7129: $ca $75 $77

    ld [hl], a                                    ; $712c: $77
    ld [hl], a                                    ; $712d: $77
    ld h, a                                       ; $712e: $67
    halt                                          ; $712f: $76
    ld d, [hl]                                    ; $7130: $56
    cp [hl]                                       ; $7131: $be
    or a                                          ; $7132: $b7
    ld d, [hl]                                    ; $7133: $56
    adc d                                         ; $7134: $8a
    sub a                                         ; $7135: $97
    ld d, h                                       ; $7136: $54
    ld l, b                                       ; $7137: $68
    ld a, c                                       ; $7138: $79
    cp h                                          ; $7139: $bc
    and [hl]                                      ; $713a: $a6
    ld h, a                                       ; $713b: $67
    ld [hl], a                                    ; $713c: $77
    ld [hl], a                                    ; $713d: $77
    ld h, [hl]                                    ; $713e: $66
    halt                                          ; $713f: $76
    ld d, l                                       ; $7140: $55
    sbc l                                         ; $7141: $9d
    ret z                                         ; $7142: $c8

    ld d, l                                       ; $7143: $55
    ld a, c                                       ; $7144: $79
    sbc b                                         ; $7145: $98
    ld h, h                                       ; $7146: $64
    ld d, a                                       ; $7147: $57
    add a                                         ; $7148: $87
    sbc h                                         ; $7149: $9c
    ret z                                         ; $714a: $c8

    ld h, [hl]                                    ; $714b: $66
    ld [hl], a                                    ; $714c: $77
    ld [hl], a                                    ; $714d: $77
    halt                                          ; $714e: $76
    ld h, a                                       ; $714f: $67
    add l                                         ; $7150: $85
    ld c, b                                       ; $7151: $48
    call $56a5                                    ; $7152: $cd $a5 $56
    adc c                                         ; $7155: $89
    sub [hl]                                      ; $7156: $96
    dec [hl]                                      ; $7157: $35
    ld [hl], a                                    ; $7158: $77
    adc d                                         ; $7159: $8a
    db $db                                        ; $715a: $db
    halt                                          ; $715b: $76
    ld [hl], a                                    ; $715c: $77
    adc b                                         ; $715d: $88
    halt                                          ; $715e: $76
    ld h, a                                       ; $715f: $67
    add l                                         ; $7160: $85
    ld b, a                                       ; $7161: $47
    cp [hl]                                       ; $7162: $be
    add $56                                       ; $7163: $c6 $56
    adc d                                         ; $7165: $8a
    sub a                                         ; $7166: $97
    ld b, h                                       ; $7167: $44
    ld d, a                                       ; $7168: $57
    ld a, c                                       ; $7169: $79
    db $ec                                        ; $716a: $ec
    add l                                         ; $716b: $85
    ld h, a                                       ; $716c: $67
    add a                                         ; $716d: $87
    halt                                          ; $716e: $76
    ld h, [hl]                                    ; $716f: $66
    add l                                         ; $7170: $85
    ld b, a                                       ; $7171: $47
    adc $c6                                       ; $7172: $ce $c6
    ld d, [hl]                                    ; $7174: $56
    adc c                                         ; $7175: $89
    sub [hl]                                      ; $7176: $96
    ld b, l                                       ; $7177: $45
    ld [hl], a                                    ; $7178: $77
    ld h, h                                       ; $7179: $64
    sbc [hl]                                      ; $717a: $9e
    jp hl                                         ; $717b: $e9


    ld d, l                                       ; $717c: $55
    ld l, b                                       ; $717d: $68
    sbc b                                         ; $717e: $98
    ld h, h                                       ; $717f: $64
    ld h, a                                       ; $7180: $67
    ld h, h                                       ; $7181: $64
    ld e, d                                       ; $7182: $5a
    db $ec                                        ; $7183: $ec
    ld [hl], l                                    ; $7184: $75
    ld d, a                                       ; $7185: $57
    sbc c                                         ; $7186: $99
    ld [hl], l                                    ; $7187: $75
    ld d, a                                       ; $7188: $57
    add [hl]                                      ; $7189: $86
    ld d, a                                       ; $718a: $57
    cp l                                          ; $718b: $bd
    or [hl]                                       ; $718c: $b6
    ld d, l                                       ; $718d: $55
    ld a, c                                       ; $718e: $79
    sub [hl]                                      ; $718f: $96
    ld b, l                                       ; $7190: $45
    ld a, b                                       ; $7191: $78
    add [hl]                                      ; $7192: $86
    ld e, b                                       ; $7193: $58
    call z, Call_019_4695                         ; $7194: $cc $95 $46
    sbc c                                         ; $7197: $99
    add [hl]                                      ; $7198: $86
    ld b, [hl]                                    ; $7199: $46
    ld [hl], a                                    ; $719a: $77
    adc d                                         ; $719b: $8a
    db $db                                        ; $719c: $db
    halt                                          ; $719d: $76
    ld l, b                                       ; $719e: $68
    sbc b                                         ; $719f: $98
    add [hl]                                      ; $71a0: $86
    ld a, b                                       ; $71a1: $78
    add l                                         ; $71a2: $85
    ld b, [hl]                                    ; $71a3: $46
    cp l                                          ; $71a4: $bd
    rst $00                                       ; $71a5: $c7
    ld b, l                                       ; $71a6: $45
    adc c                                         ; $71a7: $89
    sub a                                         ; $71a8: $97
    ld d, h                                       ; $71a9: $54
    ld l, b                                       ; $71aa: $68
    adc b                                         ; $71ab: $88
    cp h                                          ; $71ac: $bc
    sub [hl]                                      ; $71ad: $96
    ld d, a                                       ; $71ae: $57
    add a                                         ; $71af: $87
    add a                                         ; $71b0: $87
    ld h, [hl]                                    ; $71b1: $66
    ld [hl], a                                    ; $71b2: $77
    ld d, l                                       ; $71b3: $55
    sbc l                                         ; $71b4: $9d
    jp hl                                         ; $71b5: $e9


    ld d, l                                       ; $71b6: $55
    ld a, c                                       ; $71b7: $79
    xor b                                         ; $71b8: $a8
    ld h, h                                       ; $71b9: $64
    ld e, b                                       ; $71ba: $58
    xor c                                         ; $71bb: $a9
    ld h, l                                       ; $71bc: $65
    adc h                                         ; $71bd: $8c
    ret z                                         ; $71be: $c8

    ld d, h                                       ; $71bf: $54
    ld l, b                                       ; $71c0: $68
    sbc b                                         ; $71c1: $98
    ld d, h                                       ; $71c2: $54
    ld d, [hl]                                    ; $71c3: $56
    adc c                                         ; $71c4: $89
    call z, $5785                                 ; $71c5: $cc $85 $57
    sbc b                                         ; $71c8: $98
    halt                                          ; $71c9: $76
    ld h, [hl]                                    ; $71ca: $66
    add [hl]                                      ; $71cb: $86
    ld d, l                                       ; $71cc: $55
    sbc [hl]                                      ; $71cd: $9e
    rst $20                                       ; $71ce: $e7
    ld b, l                                       ; $71cf: $45
    adc c                                         ; $71d0: $89
    sbc b                                         ; $71d1: $98
    ld h, h                                       ; $71d2: $64
    ld d, [hl]                                    ; $71d3: $56
    ld [hl], a                                    ; $71d4: $77
    sbc h                                         ; $71d5: $9c
    ret z                                         ; $71d6: $c8

    ld d, [hl]                                    ; $71d7: $56
    ld a, b                                       ; $71d8: $78
    adc b                                         ; $71d9: $88
    ld [hl], l                                    ; $71da: $75
    ld h, a                                       ; $71db: $67
    ld h, l                                       ; $71dc: $65
    ld l, e                                       ; $71dd: $6b
    db $eb                                        ; $71de: $eb
    ld h, h                                       ; $71df: $64
    ld l, b                                       ; $71e0: $68
    xor c                                         ; $71e1: $a9
    ld [hl], l                                    ; $71e2: $75
    ld d, a                                       ; $71e3: $57
    add a                                         ; $71e4: $87
    ld d, a                                       ; $71e5: $57
    cp [hl]                                       ; $71e6: $be
    or [hl]                                       ; $71e7: $b6
    ld b, l                                       ; $71e8: $45
    adc d                                         ; $71e9: $8a
    sub a                                         ; $71ea: $97
    ld d, l                                       ; $71eb: $55
    ld a, b                                       ; $71ec: $78
    ld h, l                                       ; $71ed: $65
    ld a, h                                       ; $71ee: $7c
    reti                                          ; $71ef: $d9


    ld d, h                                       ; $71f0: $54
    ld l, c                                       ; $71f1: $69
    sbc b                                         ; $71f2: $98
    ld h, l                                       ; $71f3: $65
    ld l, b                                       ; $71f4: $68
    ld [hl], l                                    ; $71f5: $75
    ld e, c                                       ; $71f6: $59
    db $ed                                        ; $71f7: $ed
    add l                                         ; $71f8: $85
    ld d, a                                       ; $71f9: $57
    xor d                                         ; $71fa: $aa
    add [hl]                                      ; $71fb: $86
    ld d, a                                       ; $71fc: $57
    adc c                                         ; $71fd: $89
    ld [hl], l                                    ; $71fe: $75
    ld e, c                                       ; $71ff: $59
    call z, $5774                                 ; $7200: $cc $74 $57
    sbc c                                         ; $7203: $99
    ld [hl], l                                    ; $7204: $75
    ld d, [hl]                                    ; $7205: $56
    adc b                                         ; $7206: $88
    ld [hl], a                                    ; $7207: $77
    sbc e                                         ; $7208: $9b
    sub a                                         ; $7209: $97
    ld d, [hl]                                    ; $720a: $56
    adc b                                         ; $720b: $88
    add [hl]                                      ; $720c: $86
    ld d, [hl]                                    ; $720d: $56
    adc b                                         ; $720e: $88
    add [hl]                                      ; $720f: $86
    ld h, a                                       ; $7210: $67
    xor h                                         ; $7211: $ac
    xor b                                         ; $7212: $a8
    ld d, [hl]                                    ; $7213: $56
    ld a, c                                       ; $7214: $79
    sbc b                                         ; $7215: $98
    ld h, l                                       ; $7216: $65
    ld h, a                                       ; $7217: $67
    ld a, c                                       ; $7218: $79
    call z, $5774                                 ; $7219: $cc $74 $57
    add a                                         ; $721c: $87
    halt                                          ; $721d: $76
    ld h, a                                       ; $721e: $67
    ld [hl], l                                    ; $721f: $75
    ld [hl], $ce                                  ; $7220: $36 $ce
    or l                                          ; $7222: $b5
    ld [hl], $9a                                  ; $7223: $36 $9a
    sub a                                         ; $7225: $97
    ld d, l                                       ; $7226: $55
    adc b                                         ; $7227: $88
    ld [hl], l                                    ; $7228: $75
    ld l, e                                       ; $7229: $6b
    db $eb                                        ; $722a: $eb
    ld [hl], l                                    ; $722b: $75
    ld l, b                                       ; $722c: $68
    sbc c                                         ; $722d: $99
    ld [hl], l                                    ; $722e: $75
    ld d, a                                       ; $722f: $57
    sbc c                                         ; $7230: $99
    ld h, l                                       ; $7231: $65
    ld e, c                                       ; $7232: $59
    db $db                                        ; $7233: $db
    ld [hl], l                                    ; $7234: $75
    ld d, a                                       ; $7235: $57
    xor c                                         ; $7236: $a9
    ld [hl], l                                    ; $7237: $75
    ld d, [hl]                                    ; $7238: $56
    ld [hl], a                                    ; $7239: $77
    ld a, d                                       ; $723a: $7a
    jp z, Jump_019_7866                           ; $723b: $ca $66 $78

    add a                                         ; $723e: $87
    ld h, [hl]                                    ; $723f: $66
    add a                                         ; $7240: $87
    add a                                         ; $7241: $87
    ld h, l                                       ; $7242: $65
    ld l, c                                       ; $7243: $69
    cp e                                          ; $7244: $bb
    sub [hl]                                      ; $7245: $96
    ld d, a                                       ; $7246: $57
    adc c                                         ; $7247: $89
    add a                                         ; $7248: $87
    ld d, [hl]                                    ; $7249: $56
    ld h, a                                       ; $724a: $67
    adc d                                         ; $724b: $8a
    jp z, Jump_019_6765                           ; $724c: $ca $65 $67

    adc b                                         ; $724f: $88
    add [hl]                                      ; $7250: $86
    ld a, b                                       ; $7251: $78
    ld [hl], h                                    ; $7252: $74
    ld c, b                                       ; $7253: $48
    call $46a5                                    ; $7254: $cd $a5 $46
    sbc d                                         ; $7257: $9a
    add [hl]                                      ; $7258: $86
    ld d, [hl]                                    ; $7259: $56
    adc c                                         ; $725a: $89
    ld [hl], h                                    ; $725b: $74
    add hl, sp                                    ; $725c: $39
    db $dd                                        ; $725d: $dd
    sub l                                         ; $725e: $95
    ld b, [hl]                                    ; $725f: $46
    sbc d                                         ; $7260: $9a
    add l                                         ; $7261: $85
    ld [hl], $99                                  ; $7262: $36 $99
    halt                                          ; $7264: $76
    ld l, c                                       ; $7265: $69
    res 0, l                                      ; $7266: $cb $85
    ld d, a                                       ; $7268: $57
    sbc c                                         ; $7269: $99
    ld [hl], l                                    ; $726a: $75
    ld b, [hl]                                    ; $726b: $46
    ld a, b                                       ; $726c: $78
    adc d                                         ; $726d: $8a
    cp d                                          ; $726e: $ba
    ld d, l                                       ; $726f: $55
    adc b                                         ; $7270: $88
    add [hl]                                      ; $7271: $86
    ld d, l                                       ; $7272: $55
    ld a, b                                       ; $7273: $78
    add a                                         ; $7274: $87
    ld d, h                                       ; $7275: $54
    ld l, d                                       ; $7276: $6a
    db $db                                        ; $7277: $db
    ld [hl], h                                    ; $7278: $74
    ld d, a                                       ; $7279: $57
    adc c                                         ; $727a: $89
    add [hl]                                      ; $727b: $86
    ld d, [hl]                                    ; $727c: $56
    ld [hl], a                                    ; $727d: $77
    adc h                                         ; $727e: $8c
    ret c                                         ; $727f: $d8

    ld d, [hl]                                    ; $7280: $56
    ld a, b                                       ; $7281: $78
    ld [hl], a                                    ; $7282: $77
    ld [hl], a                                    ; $7283: $77
    ld a, b                                       ; $7284: $78
    ld [hl], l                                    ; $7285: $75
    ld e, b                                       ; $7286: $58
    call $5795                                    ; $7287: $cd $95 $57
    sbc d                                         ; $728a: $9a
    add [hl]                                      ; $728b: $86
    ld d, [hl]                                    ; $728c: $56
    ld [hl], a                                    ; $728d: $77
    halt                                          ; $728e: $76
    adc e                                         ; $728f: $8b
    cp b                                          ; $7290: $b8
    ld h, l                                       ; $7291: $65
    ld a, b                                       ; $7292: $78
    sbc b                                         ; $7293: $98
    ld h, [hl]                                    ; $7294: $66
    ld a, b                                       ; $7295: $78
    add [hl]                                      ; $7296: $86
    ld d, a                                       ; $7297: $57
    call $56a6                                    ; $7298: $cd $a6 $56
    sbc d                                         ; $729b: $9a
    sub a                                         ; $729c: $97
    ld d, l                                       ; $729d: $55
    ld a, b                                       ; $729e: $78
    ld [hl], a                                    ; $729f: $77
    adc e                                         ; $72a0: $8b
    or a                                          ; $72a1: $b7
    ld h, [hl]                                    ; $72a2: $66
    ld a, b                                       ; $72a3: $78
    ld [hl], a                                    ; $72a4: $77
    ld h, [hl]                                    ; $72a5: $66
    ld a, b                                       ; $72a6: $78
    add [hl]                                      ; $72a7: $86
    ld b, [hl]                                    ; $72a8: $46
    sbc h                                         ; $72a9: $9c
    rst $00                                       ; $72aa: $c7
    ld b, l                                       ; $72ab: $45
    ld a, c                                       ; $72ac: $79
    sbc b                                         ; $72ad: $98
    ld d, l                                       ; $72ae: $55
    ld h, a                                       ; $72af: $67
    add a                                         ; $72b0: $87
    cp h                                          ; $72b1: $bc
    and a                                         ; $72b2: $a7
    ld d, [hl]                                    ; $72b3: $56
    adc b                                         ; $72b4: $88
    add a                                         ; $72b5: $87
    ld h, [hl]                                    ; $72b6: $66
    ld [hl], a                                    ; $72b7: $77
    ld d, h                                       ; $72b8: $54
    ld l, d                                       ; $72b9: $6a
    call c, Call_019_6875                         ; $72ba: $dc $75 $68
    xor c                                         ; $72bd: $a9
    ld [hl], l                                    ; $72be: $75
    ld d, [hl]                                    ; $72bf: $56
    adc c                                         ; $72c0: $89
    halt                                          ; $72c1: $76
    adc e                                         ; $72c2: $8b
    ret                                           ; $72c3: $c9


    ld h, l                                       ; $72c4: $65
    ld l, b                                       ; $72c5: $68
    adc b                                         ; $72c6: $88
    ld h, [hl]                                    ; $72c7: $66
    ld a, b                                       ; $72c8: $78
    add a                                         ; $72c9: $87
    ld d, [hl]                                    ; $72ca: $56
    xor h                                         ; $72cb: $ac
    or a                                          ; $72cc: $b7
    ld b, l                                       ; $72cd: $45
    adc c                                         ; $72ce: $89
    sbc b                                         ; $72cf: $98
    ld h, l                                       ; $72d0: $65
    ld h, a                                       ; $72d1: $67
    ld a, b                                       ; $72d2: $78
    xor h                                         ; $72d3: $ac
    and [hl]                                      ; $72d4: $a6
    ld h, a                                       ; $72d5: $67
    adc b                                         ; $72d6: $88
    add a                                         ; $72d7: $87
    ld [hl], a                                    ; $72d8: $77
    adc b                                         ; $72d9: $88
    ld h, l                                       ; $72da: $65
    ld l, d                                       ; $72db: $6a
    db $db                                        ; $72dc: $db
    ld h, l                                       ; $72dd: $65
    ld l, b                                       ; $72de: $68
    sbc c                                         ; $72df: $99
    add l                                         ; $72e0: $85
    ld d, [hl]                                    ; $72e1: $56
    ld [hl], a                                    ; $72e2: $77
    ld l, c                                       ; $72e3: $69
    res 0, [hl]                                   ; $72e4: $cb $86
    ld h, a                                       ; $72e6: $67
    adc b                                         ; $72e7: $88
    halt                                          ; $72e8: $76
    ld h, a                                       ; $72e9: $67
    add [hl]                                      ; $72ea: $86
    ld d, [hl]                                    ; $72eb: $56
    xor [hl]                                      ; $72ec: $ae
    rst $00                                       ; $72ed: $c7
    ld d, l                                       ; $72ee: $55
    adc d                                         ; $72ef: $8a
    sub a                                         ; $72f0: $97
    ld d, [hl]                                    ; $72f1: $56
    ld a, c                                       ; $72f2: $79
    add l                                         ; $72f3: $85
    ld c, b                                       ; $72f4: $48
    db $dd                                        ; $72f5: $dd
    sub l                                         ; $72f6: $95
    ld b, [hl]                                    ; $72f7: $46
    adc c                                         ; $72f8: $89
    add [hl]                                      ; $72f9: $86
    ld b, [hl]                                    ; $72fa: $46
    ld [hl], a                                    ; $72fb: $77
    ld h, [hl]                                    ; $72fc: $66
    cp l                                          ; $72fd: $bd
    and a                                         ; $72fe: $a7
    ld d, [hl]                                    ; $72ff: $56
    adc b                                         ; $7300: $88
    add a                                         ; $7301: $87
    ld h, [hl]                                    ; $7302: $66
    adc b                                         ; $7303: $88
    ld h, l                                       ; $7304: $65
    ld l, d                                       ; $7305: $6a
    call c, $5785                                 ; $7306: $dc $85 $57
    xor c                                         ; $7309: $a9
    halt                                          ; $730a: $76
    ld h, [hl]                                    ; $730b: $66
    halt                                          ; $730c: $76
    ld l, b                                       ; $730d: $68
    call $5795                                    ; $730e: $cd $95 $57
    adc b                                         ; $7311: $88
    add [hl]                                      ; $7312: $86
    ld d, [hl]                                    ; $7313: $56
    add a                                         ; $7314: $87
    ld d, h                                       ; $7315: $54
    adc h                                         ; $7316: $8c
    jp c, Jump_019_6954                           ; $7317: $da $54 $69

    sbc b                                         ; $731a: $98
    ld h, l                                       ; $731b: $65
    ld l, b                                       ; $731c: $68
    add [hl]                                      ; $731d: $86
    ld b, [hl]                                    ; $731e: $46
    adc $a5                                       ; $731f: $ce $a5
    ld b, l                                       ; $7321: $45
    adc c                                         ; $7322: $89
    sub a                                         ; $7323: $97
    ld d, [hl]                                    ; $7324: $56
    adc b                                         ; $7325: $88
    ld d, h                                       ; $7326: $54
    ld a, h                                       ; $7327: $7c
    jp hl                                         ; $7328: $e9


    ld d, h                                       ; $7329: $54
    ld l, b                                       ; $732a: $68
    xor c                                         ; $732b: $a9
    halt                                          ; $732c: $76
    ld a, b                                       ; $732d: $78
    add l                                         ; $732e: $85
    ld c, b                                       ; $732f: $48
    adc $a5                                       ; $7330: $ce $a5
    ld b, [hl]                                    ; $7332: $46
    sbc d                                         ; $7333: $9a
    add [hl]                                      ; $7334: $86
    ld d, [hl]                                    ; $7335: $56
    adc b                                         ; $7336: $88
    ld h, l                                       ; $7337: $65
    ld l, h                                       ; $7338: $6c
    jp c, Jump_019_6865                           ; $7339: $da $65 $68

    sbc b                                         ; $733c: $98
    halt                                          ; $733d: $76
    ld l, b                                       ; $733e: $68
    add [hl]                                      ; $733f: $86
    ld d, [hl]                                    ; $7340: $56
    sbc l                                         ; $7341: $9d
    rst $00                                       ; $7342: $c7
    ld d, l                                       ; $7343: $55
    ld a, c                                       ; $7344: $79
    sub a                                         ; $7345: $97
    ld h, [hl]                                    ; $7346: $66
    ld a, b                                       ; $7347: $78
    add [hl]                                      ; $7348: $86
    ld d, a                                       ; $7349: $57
    xor l                                         ; $734a: $ad
    or [hl]                                       ; $734b: $b6
    ld d, [hl]                                    ; $734c: $56
    adc c                                         ; $734d: $89
    sub a                                         ; $734e: $97
    ld d, [hl]                                    ; $734f: $56
    adc b                                         ; $7350: $88
    add a                                         ; $7351: $87
    ld d, [hl]                                    ; $7352: $56
    adc h                                         ; $7353: $8c
    rst $00                                       ; $7354: $c7
    ld b, l                                       ; $7355: $45
    ld a, c                                       ; $7356: $79
    sbc b                                         ; $7357: $98
    ld h, l                                       ; $7358: $65
    ld d, [hl]                                    ; $7359: $56
    ld [hl], a                                    ; $735a: $77
    adc d                                         ; $735b: $8a
    cp c                                          ; $735c: $b9
    ld h, l                                       ; $735d: $65
    ld a, b                                       ; $735e: $78
    adc b                                         ; $735f: $88
    add [hl]                                      ; $7360: $86
    ld h, a                                       ; $7361: $67
    halt                                          ; $7362: $76
    ld h, a                                       ; $7363: $67
    sbc h                                         ; $7364: $9c
    cp b                                          ; $7365: $b8
    ld h, [hl]                                    ; $7366: $66
    ld a, c                                       ; $7367: $79
    sbc b                                         ; $7368: $98
    ld h, l                                       ; $7369: $65
    ld d, a                                       ; $736a: $57
    ld [hl], a                                    ; $736b: $77
    adc d                                         ; $736c: $8a
    jp z, Jump_019_6865                           ; $736d: $ca $65 $68

    sbc b                                         ; $7370: $98
    halt                                          ; $7371: $76
    ld h, a                                       ; $7372: $67
    add [hl]                                      ; $7373: $86
    ld d, [hl]                                    ; $7374: $56
    xor l                                         ; $7375: $ad
    or a                                          ; $7376: $b7
    ld b, [hl]                                    ; $7377: $46
    adc c                                         ; $7378: $89
    sub a                                         ; $7379: $97
    ld h, [hl]                                    ; $737a: $66
    ld a, b                                       ; $737b: $78
    add [hl]                                      ; $737c: $86
    ld e, b                                       ; $737d: $58
    call z, Call_019_46a6                         ; $737e: $cc $a6 $46
    sbc c                                         ; $7381: $99
    add [hl]                                      ; $7382: $86
    ld h, [hl]                                    ; $7383: $66
    adc c                                         ; $7384: $89
    add [hl]                                      ; $7385: $86
    ld e, b                                       ; $7386: $58
    call z, $5696                                 ; $7387: $cc $96 $56
    sbc c                                         ; $738a: $99
    add [hl]                                      ; $738b: $86
    ld d, [hl]                                    ; $738c: $56
    adc c                                         ; $738d: $89
    add a                                         ; $738e: $87
    ld h, [hl]                                    ; $738f: $66
    adc e                                         ; $7390: $8b
    cp b                                          ; $7391: $b8
    ld d, l                                       ; $7392: $55
    ld a, c                                       ; $7393: $79
    sub a                                         ; $7394: $97
    ld h, l                                       ; $7395: $65
    ld d, [hl]                                    ; $7396: $56
    ld [hl], a                                    ; $7397: $77
    adc d                                         ; $7398: $8a
    cp b                                          ; $7399: $b8
    ld h, [hl]                                    ; $739a: $66
    ld a, b                                       ; $739b: $78
    add a                                         ; $739c: $87
    ld [hl], a                                    ; $739d: $77
    ld a, b                                       ; $739e: $78
    add [hl]                                      ; $739f: $86
    ld d, a                                       ; $73a0: $57
    sbc e                                         ; $73a1: $9b
    cp b                                          ; $73a2: $b8
    ld h, [hl]                                    ; $73a3: $66
    ld a, b                                       ; $73a4: $78
    sub a                                         ; $73a5: $97
    ld d, l                                       ; $73a6: $55
    ld h, a                                       ; $73a7: $67
    ld [hl], a                                    ; $73a8: $77
    ld a, e                                       ; $73a9: $7b
    ret                                           ; $73aa: $c9


    ld h, l                                       ; $73ab: $65
    ld l, b                                       ; $73ac: $68
    adc b                                         ; $73ad: $88
    halt                                          ; $73ae: $76
    ld l, b                                       ; $73af: $68
    add [hl]                                      ; $73b0: $86
    ld d, [hl]                                    ; $73b1: $56
    cp [hl]                                       ; $73b2: $be
    rst $00                                       ; $73b3: $c7
    ld d, [hl]                                    ; $73b4: $56
    adc d                                         ; $73b5: $8a
    sub a                                         ; $73b6: $97
    ld h, [hl]                                    ; $73b7: $66
    ld a, c                                       ; $73b8: $79
    add l                                         ; $73b9: $85
    ld e, b                                       ; $73ba: $58
    call $46a5                                    ; $73bb: $cd $a5 $46
    adc c                                         ; $73be: $89
    add [hl]                                      ; $73bf: $86
    ld h, [hl]                                    ; $73c0: $66
    adc b                                         ; $73c1: $88
    ld [hl], l                                    ; $73c2: $75
    ld e, c                                       ; $73c3: $59
    call z, $5795                                 ; $73c4: $cc $95 $57
    sbc c                                         ; $73c7: $99
    add a                                         ; $73c8: $87
    ld h, a                                       ; $73c9: $67
    adc b                                         ; $73ca: $88
    ld [hl], l                                    ; $73cb: $75
    ld l, d                                       ; $73cc: $6a
    res 0, l                                      ; $73cd: $cb $85
    ld d, a                                       ; $73cf: $57
    sbc c                                         ; $73d0: $99
    add [hl]                                      ; $73d1: $86
    ld d, [hl]                                    ; $73d2: $56
    ld a, b                                       ; $73d3: $78
    add a                                         ; $73d4: $87
    ld h, [hl]                                    ; $73d5: $66
    adc e                                         ; $73d6: $8b
    xor b                                         ; $73d7: $a8
    ld d, l                                       ; $73d8: $55
    ld a, c                                       ; $73d9: $79
    sub a                                         ; $73da: $97
    ld h, [hl]                                    ; $73db: $66
    ld h, [hl]                                    ; $73dc: $66
    ld [hl], a                                    ; $73dd: $77
    adc e                                         ; $73de: $8b
    cp c                                          ; $73df: $b9
    add [hl]                                      ; $73e0: $86
    ld l, b                                       ; $73e1: $68
    sbc b                                         ; $73e2: $98
    halt                                          ; $73e3: $76
    ld h, a                                       ; $73e4: $67
    ld [hl], a                                    ; $73e5: $77
    ld h, [hl]                                    ; $73e6: $66
    adc e                                         ; $73e7: $8b
    ret                                           ; $73e8: $c9


    halt                                          ; $73e9: $76
    ld a, c                                       ; $73ea: $79
    sbc b                                         ; $73eb: $98
    ld h, l                                       ; $73ec: $65
    ld h, [hl]                                    ; $73ed: $66
    ld a, b                                       ; $73ee: $78
    ld a, b                                       ; $73ef: $78
    xor e                                         ; $73f0: $ab
    sub l                                         ; $73f1: $95
    ld d, a                                       ; $73f2: $57
    adc b                                         ; $73f3: $88
    halt                                          ; $73f4: $76
    ld d, [hl]                                    ; $73f5: $56
    ld a, b                                       ; $73f6: $78
    ld [hl], l                                    ; $73f7: $75
    ld l, c                                       ; $73f8: $69
    res 0, l                                      ; $73f9: $cb $85
    ld l, b                                       ; $73fb: $68
    sbc b                                         ; $73fc: $98
    halt                                          ; $73fd: $76
    ld h, a                                       ; $73fe: $67
    adc b                                         ; $73ff: $88
    ld h, [hl]                                    ; $7400: $66
    ld l, d                                       ; $7401: $6a
    cp d                                          ; $7402: $ba
    ld [hl], l                                    ; $7403: $75
    ld h, a                                       ; $7404: $67
    adc b                                         ; $7405: $88
    halt                                          ; $7406: $76
    ld h, a                                       ; $7407: $67
    adc b                                         ; $7408: $88
    halt                                          ; $7409: $76
    ld l, b                                       ; $740a: $68
    cp e                                          ; $740b: $bb
    sub [hl]                                      ; $740c: $96
    ld h, a                                       ; $740d: $67
    sbc c                                         ; $740e: $99
    add [hl]                                      ; $740f: $86
    ld h, a                                       ; $7410: $67
    adc b                                         ; $7411: $88
    add a                                         ; $7412: $87
    ld h, [hl]                                    ; $7413: $66
    ld a, d                                       ; $7414: $7a
    cp c                                          ; $7415: $b9
    ld h, l                                       ; $7416: $65
    ld a, b                                       ; $7417: $78
    adc b                                         ; $7418: $88
    ld h, [hl]                                    ; $7419: $66
    ld h, a                                       ; $741a: $67
    add a                                         ; $741b: $87
    ld a, b                                       ; $741c: $78
    xor e                                         ; $741d: $ab
    add [hl]                                      ; $741e: $86
    ld h, a                                       ; $741f: $67
    adc b                                         ; $7420: $88
    halt                                          ; $7421: $76
    ld h, [hl]                                    ; $7422: $66
    ld a, b                                       ; $7423: $78
    add a                                         ; $7424: $87
    ld h, a                                       ; $7425: $67
    adc d                                         ; $7426: $8a
    cp c                                          ; $7427: $b9
    halt                                          ; $7428: $76
    ld a, b                                       ; $7429: $78
    adc b                                         ; $742a: $88
    halt                                          ; $742b: $76
    ld h, a                                       ; $742c: $67
    ld [hl], a                                    ; $742d: $77
    adc d                                         ; $742e: $8a
    cp c                                          ; $742f: $b9
    ld h, l                                       ; $7430: $65
    ld l, b                                       ; $7431: $68
    add a                                         ; $7432: $87
    halt                                          ; $7433: $76
    ld h, a                                       ; $7434: $67
    add a                                         ; $7435: $87
    ld h, [hl]                                    ; $7436: $66
    adc e                                         ; $7437: $8b
    cp c                                          ; $7438: $b9
    halt                                          ; $7439: $76
    ld a, c                                       ; $743a: $79
    sbc b                                         ; $743b: $98
    halt                                          ; $743c: $76
    ld a, b                                       ; $743d: $78
    sbc b                                         ; $743e: $98
    halt                                          ; $743f: $76
    adc c                                         ; $7440: $89
    cp d                                          ; $7441: $ba
    add l                                         ; $7442: $85
    ld h, a                                       ; $7443: $67
    sbc b                                         ; $7444: $98
    ld [hl], l                                    ; $7445: $75
    ld d, a                                       ; $7446: $57
    sbc c                                         ; $7447: $99
    add a                                         ; $7448: $87
    ld h, [hl]                                    ; $7449: $66
    adc d                                         ; $744a: $8a
    xor b                                         ; $744b: $a8
    ld h, [hl]                                    ; $744c: $66
    ld a, b                                       ; $744d: $78
    add a                                         ; $744e: $87
    halt                                          ; $744f: $76
    ld h, a                                       ; $7450: $67
    ld [hl], a                                    ; $7451: $77
    adc c                                         ; $7452: $89
    cp d                                          ; $7453: $ba
    halt                                          ; $7454: $76
    ld h, a                                       ; $7455: $67
    adc b                                         ; $7456: $88
    ld [hl], a                                    ; $7457: $77
    ld h, a                                       ; $7458: $67
    adc b                                         ; $7459: $88
    halt                                          ; $745a: $76
    ld a, b                                       ; $745b: $78
    xor d                                         ; $745c: $aa
    sub a                                         ; $745d: $97
    ld h, a                                       ; $745e: $67
    adc b                                         ; $745f: $88
    add [hl]                                      ; $7460: $86
    ld d, [hl]                                    ; $7461: $56
    ld h, a                                       ; $7462: $67
    ld [hl], a                                    ; $7463: $77
    adc d                                         ; $7464: $8a
    xor b                                         ; $7465: $a8
    ld h, l                                       ; $7466: $65
    ld a, b                                       ; $7467: $78
    add a                                         ; $7468: $87
    halt                                          ; $7469: $76
    ld [hl], a                                    ; $746a: $77
    add a                                         ; $746b: $87
    ld h, [hl]                                    ; $746c: $66
    adc d                                         ; $746d: $8a
    cp c                                          ; $746e: $b9
    halt                                          ; $746f: $76
    adc b                                         ; $7470: $88
    adc b                                         ; $7471: $88
    halt                                          ; $7472: $76
    ld h, a                                       ; $7473: $67
    ld a, b                                       ; $7474: $78
    adc b                                         ; $7475: $88
    adc c                                         ; $7476: $89
    sbc c                                         ; $7477: $99
    halt                                          ; $7478: $76
    ld a, b                                       ; $7479: $78
    add a                                         ; $747a: $87
    halt                                          ; $747b: $76
    ld a, b                                       ; $747c: $78
    sbc c                                         ; $747d: $99
    add a                                         ; $747e: $87
    ld h, a                                       ; $747f: $67
    sbc d                                         ; $7480: $9a
    xor b                                         ; $7481: $a8
    ld h, a                                       ; $7482: $67
    ld a, b                                       ; $7483: $78
    add a                                         ; $7484: $87
    halt                                          ; $7485: $76
    ld h, a                                       ; $7486: $67
    ld a, b                                       ; $7487: $78
    sbc e                                         ; $7488: $9b
    and a                                         ; $7489: $a7
    ld h, [hl]                                    ; $748a: $66
    ld a, c                                       ; $748b: $79
    add a                                         ; $748c: $87
    ld [hl], a                                    ; $748d: $77
    ld a, b                                       ; $748e: $78
    halt                                          ; $748f: $76
    ld h, a                                       ; $7490: $67
    xor h                                         ; $7491: $ac
    xor b                                         ; $7492: $a8
    ld [hl], a                                    ; $7493: $77
    adc c                                         ; $7494: $89
    add [hl]                                      ; $7495: $86
    ld h, [hl]                                    ; $7496: $66
    ld a, b                                       ; $7497: $78
    add a                                         ; $7498: $87
    ld [hl], a                                    ; $7499: $77
    sbc d                                         ; $749a: $9a
    and a                                         ; $749b: $a7
    ld h, [hl]                                    ; $749c: $66
    ld a, b                                       ; $749d: $78
    add a                                         ; $749e: $87
    ld h, [hl]                                    ; $749f: $66
    adc b                                         ; $74a0: $88
    add a                                         ; $74a1: $87
    ld h, [hl]                                    ; $74a2: $66
    adc d                                         ; $74a3: $8a
    cp c                                          ; $74a4: $b9
    ld h, [hl]                                    ; $74a5: $66
    ld a, b                                       ; $74a6: $78
    add a                                         ; $74a7: $87
    ld h, [hl]                                    ; $74a8: $66
    ld a, b                                       ; $74a9: $78
    adc b                                         ; $74aa: $88
    add [hl]                                      ; $74ab: $86
    ld h, a                                       ; $74ac: $67
    sbc d                                         ; $74ad: $9a
    and a                                         ; $74ae: $a7
    ld h, a                                       ; $74af: $67
    adc b                                         ; $74b0: $88
    halt                                          ; $74b1: $76
    ld h, [hl]                                    ; $74b2: $66
    ld [hl], a                                    ; $74b3: $77
    ld [hl], a                                    ; $74b4: $77
    ld a, c                                       ; $74b5: $79
    xor c                                         ; $74b6: $a9
    halt                                          ; $74b7: $76
    ld h, a                                       ; $74b8: $67
    add a                                         ; $74b9: $87
    halt                                          ; $74ba: $76
    ld [hl], a                                    ; $74bb: $77
    adc b                                         ; $74bc: $88
    add a                                         ; $74bd: $87
    ld h, [hl]                                    ; $74be: $66
    ld a, c                                       ; $74bf: $79
    xor d                                         ; $74c0: $aa
    add [hl]                                      ; $74c1: $86
    ld h, a                                       ; $74c2: $67
    ld a, b                                       ; $74c3: $78
    ld [hl], a                                    ; $74c4: $77
    ld h, [hl]                                    ; $74c5: $66
    ld h, a                                       ; $74c6: $67
    ld a, b                                       ; $74c7: $78
    xor d                                         ; $74c8: $aa
    add [hl]                                      ; $74c9: $86
    ld h, a                                       ; $74ca: $67
    adc b                                         ; $74cb: $88
    ld [hl], a                                    ; $74cc: $77
    ld [hl], a                                    ; $74cd: $77
    ld a, b                                       ; $74ce: $78
    halt                                          ; $74cf: $76
    ld h, a                                       ; $74d0: $67
    sbc e                                         ; $74d1: $9b
    xor c                                         ; $74d2: $a9
    ld [hl], a                                    ; $74d3: $77
    adc b                                         ; $74d4: $88
    ld [hl], a                                    ; $74d5: $77
    ld h, [hl]                                    ; $74d6: $66
    ld [hl], a                                    ; $74d7: $77
    ld [hl], a                                    ; $74d8: $77
    adc b                                         ; $74d9: $88
    xor e                                         ; $74da: $ab
    add [hl]                                      ; $74db: $86
    ld h, a                                       ; $74dc: $67
    adc b                                         ; $74dd: $88
    ld [hl], a                                    ; $74de: $77
    ld [hl], a                                    ; $74df: $77
    adc b                                         ; $74e0: $88
    add a                                         ; $74e1: $87
    ld h, a                                       ; $74e2: $67
    sbc e                                         ; $74e3: $9b
    cp c                                          ; $74e4: $b9
    halt                                          ; $74e5: $76
    ld a, b                                       ; $74e6: $78
    ld [hl], a                                    ; $74e7: $77
    halt                                          ; $74e8: $76
    ld [hl], a                                    ; $74e9: $77
    ld a, b                                       ; $74ea: $78
    adc b                                         ; $74eb: $88
    adc c                                         ; $74ec: $89
    xor b                                         ; $74ed: $a8
    halt                                          ; $74ee: $76
    ld a, b                                       ; $74ef: $78
    add a                                         ; $74f0: $87
    ld h, [hl]                                    ; $74f1: $66
    ld a, b                                       ; $74f2: $78
    adc b                                         ; $74f3: $88
    add a                                         ; $74f4: $87
    ld h, a                                       ; $74f5: $67
    sbc e                                         ; $74f6: $9b
    xor b                                         ; $74f7: $a8
    ld h, [hl]                                    ; $74f8: $66
    ld a, b                                       ; $74f9: $78
    adc b                                         ; $74fa: $88
    ld [hl], a                                    ; $74fb: $77
    ld h, a                                       ; $74fc: $67
    ld [hl], a                                    ; $74fd: $77
    adc c                                         ; $74fe: $89
    xor d                                         ; $74ff: $aa
    add [hl]                                      ; $7500: $86
    ld h, a                                       ; $7501: $67
    add a                                         ; $7502: $87
    ld [hl], a                                    ; $7503: $77
    ld h, a                                       ; $7504: $67
    ld a, b                                       ; $7505: $78
    halt                                          ; $7506: $76
    ld l, b                                       ; $7507: $68
    xor e                                         ; $7508: $ab
    and a                                         ; $7509: $a7
    ld h, [hl]                                    ; $750a: $66
    ld a, b                                       ; $750b: $78
    ld [hl], a                                    ; $750c: $77
    ld [hl], a                                    ; $750d: $77
    ld [hl], a                                    ; $750e: $77
    ld [hl], a                                    ; $750f: $77
    adc c                                         ; $7510: $89
    xor d                                         ; $7511: $aa
    add [hl]                                      ; $7512: $86
    ld h, a                                       ; $7513: $67
    add a                                         ; $7514: $87
    halt                                          ; $7515: $76
    ld h, a                                       ; $7516: $67
    ld a, b                                       ; $7517: $78
    ld [hl], a                                    ; $7518: $77
    ld l, b                                       ; $7519: $68
    xor e                                         ; $751a: $ab
    xor b                                         ; $751b: $a8
    ld h, [hl]                                    ; $751c: $66
    ld a, b                                       ; $751d: $78
    add a                                         ; $751e: $87
    ld h, [hl]                                    ; $751f: $66
    adc b                                         ; $7520: $88
    adc b                                         ; $7521: $88
    add a                                         ; $7522: $87
    ld [hl], a                                    ; $7523: $77
    adc c                                         ; $7524: $89
    sub a                                         ; $7525: $97
    ld h, [hl]                                    ; $7526: $66
    ld a, b                                       ; $7527: $78
    ld [hl], a                                    ; $7528: $77
    ld [hl], a                                    ; $7529: $77
    ld [hl], a                                    ; $752a: $77
    ld [hl], a                                    ; $752b: $77
    adc d                                         ; $752c: $8a
    cp d                                          ; $752d: $ba
    add [hl]                                      ; $752e: $86
    ld h, a                                       ; $752f: $67
    adc b                                         ; $7530: $88
    ld [hl], a                                    ; $7531: $77
    ld h, a                                       ; $7532: $67
    adc b                                         ; $7533: $88
    adc b                                         ; $7534: $88
    ld [hl], a                                    ; $7535: $77
    adc c                                         ; $7536: $89
    xor c                                         ; $7537: $a9
    add a                                         ; $7538: $87
    ld [hl], a                                    ; $7539: $77
    ld [hl], a                                    ; $753a: $77
    ld [hl], a                                    ; $753b: $77
    ld [hl], a                                    ; $753c: $77
    ld [hl], a                                    ; $753d: $77
    ld a, b                                       ; $753e: $78
    xor d                                         ; $753f: $aa
    sub a                                         ; $7540: $97
    ld h, [hl]                                    ; $7541: $66
    ld a, b                                       ; $7542: $78
    add a                                         ; $7543: $87
    ld [hl], a                                    ; $7544: $77
    ld a, b                                       ; $7545: $78
    add a                                         ; $7546: $87
    ld [hl], a                                    ; $7547: $77
    adc d                                         ; $7548: $8a
    cp d                                          ; $7549: $ba
    add [hl]                                      ; $754a: $86
    ld h, a                                       ; $754b: $67
    add a                                         ; $754c: $87
    halt                                          ; $754d: $76
    ld [hl], a                                    ; $754e: $77
    ld a, b                                       ; $754f: $78
    adc b                                         ; $7550: $88
    add a                                         ; $7551: $87
    ld a, b                                       ; $7552: $78
    sbc b                                         ; $7553: $98
    ld [hl], a                                    ; $7554: $77
    ld [hl], a                                    ; $7555: $77
    ld [hl], a                                    ; $7556: $77
    ld [hl], a                                    ; $7557: $77
    ld [hl], a                                    ; $7558: $77
    ld [hl], a                                    ; $7559: $77
    adc c                                         ; $755a: $89
    xor d                                         ; $755b: $aa
    add a                                         ; $755c: $87
    ld h, [hl]                                    ; $755d: $66
    ld [hl], a                                    ; $755e: $77
    ld [hl], a                                    ; $755f: $77
    add a                                         ; $7560: $87
    adc b                                         ; $7561: $88
    add a                                         ; $7562: $87
    ld [hl], a                                    ; $7563: $77
    ld a, c                                       ; $7564: $79
    xor c                                         ; $7565: $a9
    ld [hl], a                                    ; $7566: $77
    ld [hl], a                                    ; $7567: $77
    ld [hl], a                                    ; $7568: $77
    ld [hl], a                                    ; $7569: $77
    ld [hl], a                                    ; $756a: $77
    ld [hl], a                                    ; $756b: $77
    ld a, b                                       ; $756c: $78
    sbc d                                         ; $756d: $9a
    xor b                                         ; $756e: $a8
    ld h, [hl]                                    ; $756f: $66
    adc b                                         ; $7570: $88
    add a                                         ; $7571: $87
    ld [hl], a                                    ; $7572: $77
    ld a, b                                       ; $7573: $78
    adc b                                         ; $7574: $88
    ld [hl], a                                    ; $7575: $77
    ld a, b                                       ; $7576: $78
    sbc d                                         ; $7577: $9a
    sub a                                         ; $7578: $97
    ld [hl], a                                    ; $7579: $77
    ld a, b                                       ; $757a: $78
    ld [hl], a                                    ; $757b: $77
    ld [hl], a                                    ; $757c: $77
    ld [hl], a                                    ; $757d: $77
    ld [hl], a                                    ; $757e: $77
    adc c                                         ; $757f: $89
    xor c                                         ; $7580: $a9
    halt                                          ; $7581: $76
    ld h, a                                       ; $7582: $67
    add a                                         ; $7583: $87
    ld [hl], a                                    ; $7584: $77
    ld [hl], a                                    ; $7585: $77
    adc b                                         ; $7586: $88
    halt                                          ; $7587: $76
    ld a, b                                       ; $7588: $78
    sbc e                                         ; $7589: $9b
    xor b                                         ; $758a: $a8
    ld [hl], a                                    ; $758b: $77
    ld a, b                                       ; $758c: $78
    ld [hl], a                                    ; $758d: $77
    ld [hl], a                                    ; $758e: $77
    ld [hl], a                                    ; $758f: $77
    add a                                         ; $7590: $87
    ld a, b                                       ; $7591: $78
    adc c                                         ; $7592: $89
    sbc b                                         ; $7593: $98
    ld h, [hl]                                    ; $7594: $66
    ld a, b                                       ; $7595: $78
    add a                                         ; $7596: $87
    ld h, a                                       ; $7597: $67
    ld a, b                                       ; $7598: $78
    add a                                         ; $7599: $87
    ld [hl], a                                    ; $759a: $77
    ld a, c                                       ; $759b: $79
    xor d                                         ; $759c: $aa
    add a                                         ; $759d: $87
    ld h, a                                       ; $759e: $67
    ld a, b                                       ; $759f: $78
    add a                                         ; $75a0: $87
    ld [hl], a                                    ; $75a1: $77
    adc b                                         ; $75a2: $88
    adc b                                         ; $75a3: $88
    ld [hl], a                                    ; $75a4: $77
    ld a, b                                       ; $75a5: $78
    sbc c                                         ; $75a6: $99
    add a                                         ; $75a7: $87
    ld [hl], a                                    ; $75a8: $77

Call_019_75a9:
    ld [hl], a                                    ; $75a9: $77
    ld [hl], a                                    ; $75aa: $77
    ld [hl], a                                    ; $75ab: $77
    ld [hl], a                                    ; $75ac: $77
    ld [hl], a                                    ; $75ad: $77
    sbc d                                         ; $75ae: $9a
    xor c                                         ; $75af: $a9
    ld h, [hl]                                    ; $75b0: $66
    ld a, b                                       ; $75b1: $78
    add a                                         ; $75b2: $87
    ld [hl], a                                    ; $75b3: $77
    ld a, b                                       ; $75b4: $78
    adc b                                         ; $75b5: $88
    add a                                         ; $75b6: $87
    ld [hl], a                                    ; $75b7: $77
    adc d                                         ; $75b8: $8a
    xor c                                         ; $75b9: $a9
    ld [hl], a                                    ; $75ba: $77
    ld [hl], a                                    ; $75bb: $77
    ld [hl], a                                    ; $75bc: $77
    ld [hl], a                                    ; $75bd: $77
    ld [hl], a                                    ; $75be: $77
    ld [hl], a                                    ; $75bf: $77
    adc b                                         ; $75c0: $88
    sbc d                                         ; $75c1: $9a
    sub a                                         ; $75c2: $97
    ld h, [hl]                                    ; $75c3: $66
    ld a, b                                       ; $75c4: $78
    ld [hl], a                                    ; $75c5: $77
    ld h, [hl]                                    ; $75c6: $66
    ld a, b                                       ; $75c7: $78
    add a                                         ; $75c8: $87
    halt                                          ; $75c9: $76
    ld a, c                                       ; $75ca: $79
    xor d                                         ; $75cb: $aa
    add a                                         ; $75cc: $87
    ld [hl], a                                    ; $75cd: $77
    ld [hl], a                                    ; $75ce: $77
    ld [hl], a                                    ; $75cf: $77
    add a                                         ; $75d0: $87
    ld [hl], a                                    ; $75d1: $77
    ld [hl], a                                    ; $75d2: $77
    sbc d                                         ; $75d3: $9a
    sbc b                                         ; $75d4: $98
    ld h, [hl]                                    ; $75d5: $66
    ld a, b                                       ; $75d6: $78
    add a                                         ; $75d7: $87
    halt                                          ; $75d8: $76
    ld [hl], a                                    ; $75d9: $77
    add a                                         ; $75da: $87
    halt                                          ; $75db: $76
    ld a, c                                       ; $75dc: $79
    xor d                                         ; $75dd: $aa
    sub a                                         ; $75de: $97
    ld h, a                                       ; $75df: $67
    adc b                                         ; $75e0: $88
    ld [hl], a                                    ; $75e1: $77
    ld [hl], a                                    ; $75e2: $77
    ld [hl], a                                    ; $75e3: $77
    adc b                                         ; $75e4: $88
    adc b                                         ; $75e5: $88
    adc c                                         ; $75e6: $89
    sbc b                                         ; $75e7: $98
    ld [hl], a                                    ; $75e8: $77
    ld a, b                                       ; $75e9: $78
    ld [hl], a                                    ; $75ea: $77
    ld [hl], a                                    ; $75eb: $77
    ld a, b                                       ; $75ec: $78
    adc b                                         ; $75ed: $88
    ld [hl], a                                    ; $75ee: $77
    ld a, b                                       ; $75ef: $78
    xor d                                         ; $75f0: $aa
    sub a                                         ; $75f1: $97
    ld [hl], a                                    ; $75f2: $77
    adc b                                         ; $75f3: $88
    ld [hl], a                                    ; $75f4: $77
    ld h, a                                       ; $75f5: $67
    ld a, b                                       ; $75f6: $78
    adc b                                         ; $75f7: $88
    halt                                          ; $75f8: $76
    ld l, b                                       ; $75f9: $68
    sbc c                                         ; $75fa: $99
    sub a                                         ; $75fb: $97
    ld [hl], a                                    ; $75fc: $77
    ld [hl], a                                    ; $75fd: $77
    ld [hl], a                                    ; $75fe: $77
    ld [hl], a                                    ; $75ff: $77
    add a                                         ; $7600: $87
    ld [hl], a                                    ; $7601: $77
    adc c                                         ; $7602: $89
    xor c                                         ; $7603: $a9
    add a                                         ; $7604: $87
    ld [hl], a                                    ; $7605: $77
    add a                                         ; $7606: $87
    halt                                          ; $7607: $76
    ld h, a                                       ; $7608: $67
    ld a, b                                       ; $7609: $78
    adc b                                         ; $760a: $88
    ld [hl], a                                    ; $760b: $77
    ld a, c                                       ; $760c: $79
    sbc c                                         ; $760d: $99
    add a                                         ; $760e: $87
    ld [hl], a                                    ; $760f: $77
    add a                                         ; $7610: $87
    ld [hl], a                                    ; $7611: $77
    ld [hl], a                                    ; $7612: $77
    ld [hl], a                                    ; $7613: $77
    ld [hl], a                                    ; $7614: $77
    sbc d                                         ; $7615: $9a
    sbc b                                         ; $7616: $98
    ld h, [hl]                                    ; $7617: $66
    ld [hl], a                                    ; $7618: $77
    add a                                         ; $7619: $87
    halt                                          ; $761a: $76
    ld [hl], a                                    ; $761b: $77
    adc b                                         ; $761c: $88
    add a                                         ; $761d: $87
    ld a, b                                       ; $761e: $78
    sbc d                                         ; $761f: $9a
    xor b                                         ; $7620: $a8
    ld [hl], a                                    ; $7621: $77
    ld [hl], a                                    ; $7622: $77
    ld [hl], a                                    ; $7623: $77
    ld [hl], a                                    ; $7624: $77
    ld [hl], a                                    ; $7625: $77
    ld [hl], a                                    ; $7626: $77
    adc b                                         ; $7627: $88
    adc c                                         ; $7628: $89
    sbc b                                         ; $7629: $98
    halt                                          ; $762a: $76
    ld [hl], a                                    ; $762b: $77
    ld [hl], a                                    ; $762c: $77
    ld h, [hl]                                    ; $762d: $66
    ld a, b                                       ; $762e: $78
    adc b                                         ; $762f: $88
    add a                                         ; $7630: $87
    ld [hl], a                                    ; $7631: $77
    sbc d                                         ; $7632: $9a
    sbc b                                         ; $7633: $98
    ld [hl], a                                    ; $7634: $77
    ld [hl], a                                    ; $7635: $77
    ld [hl], a                                    ; $7636: $77
    ld [hl], a                                    ; $7637: $77
    ld [hl], a                                    ; $7638: $77
    ld [hl], a                                    ; $7639: $77
    adc b                                         ; $763a: $88
    adc b                                         ; $763b: $88
    sbc b                                         ; $763c: $98
    ld [hl], a                                    ; $763d: $77
    ld [hl], a                                    ; $763e: $77
    ld [hl], a                                    ; $763f: $77
    add [hl]                                      ; $7640: $86
    ld [hl], a                                    ; $7641: $77
    adc b                                         ; $7642: $88
    adc b                                         ; $7643: $88
    add a                                         ; $7644: $87
    ld a, b                                       ; $7645: $78
    sbc c                                         ; $7646: $99
    sub a                                         ; $7647: $97
    ld [hl], a                                    ; $7648: $77
    ld [hl], a                                    ; $7649: $77
    ld [hl], a                                    ; $764a: $77
    ld [hl], a                                    ; $764b: $77
    ld [hl], a                                    ; $764c: $77
    ld [hl], a                                    ; $764d: $77
    adc d                                         ; $764e: $8a
    xor b                                         ; $764f: $a8
    add [hl]                                      ; $7650: $86
    ld [hl], a                                    ; $7651: $77
    add a                                         ; $7652: $87
    ld [hl], a                                    ; $7653: $77
    ld [hl], a                                    ; $7654: $77
    adc b                                         ; $7655: $88
    ld [hl], a                                    ; $7656: $77
    ld a, b                                       ; $7657: $78
    sbc d                                         ; $7658: $9a
    xor b                                         ; $7659: $a8
    ld [hl], a                                    ; $765a: $77
    ld [hl], a                                    ; $765b: $77
    ld [hl], a                                    ; $765c: $77
    ld [hl], a                                    ; $765d: $77
    add a                                         ; $765e: $87
    ld [hl], a                                    ; $765f: $77
    add a                                         ; $7660: $87
    adc b                                         ; $7661: $88
    sbc c                                         ; $7662: $99
    ld [hl], a                                    ; $7663: $77
    ld [hl], a                                    ; $7664: $77
    add a                                         ; $7665: $87
    ld [hl], a                                    ; $7666: $77
    ld [hl], a                                    ; $7667: $77
    adc b                                         ; $7668: $88
    adc b                                         ; $7669: $88
    ld [hl], a                                    ; $766a: $77
    adc c                                         ; $766b: $89
    xor c                                         ; $766c: $a9
    add a                                         ; $766d: $87
    ld [hl], a                                    ; $766e: $77
    ld [hl], a                                    ; $766f: $77
    add a                                         ; $7670: $87
    ld [hl], a                                    ; $7671: $77
    ld [hl], a                                    ; $7672: $77
    adc b                                         ; $7673: $88
    add a                                         ; $7674: $87
    ld [hl], a                                    ; $7675: $77
    sbc c                                         ; $7676: $99
    add a                                         ; $7677: $87
    ld [hl], a                                    ; $7678: $77
    ld [hl], a                                    ; $7679: $77
    ld [hl], a                                    ; $767a: $77
    ld [hl], a                                    ; $767b: $77
    ld [hl], a                                    ; $767c: $77
    ld [hl], a                                    ; $767d: $77
    adc d                                         ; $767e: $8a
    xor c                                         ; $767f: $a9
    add a                                         ; $7680: $87
    ld [hl], a                                    ; $7681: $77
    adc b                                         ; $7682: $88
    ld [hl], a                                    ; $7683: $77
    ld [hl], a                                    ; $7684: $77
    ld a, b                                       ; $7685: $78
    add a                                         ; $7686: $87
    ld [hl], a                                    ; $7687: $77
    adc c                                         ; $7688: $89
    sbc c                                         ; $7689: $99
    ld [hl], a                                    ; $768a: $77
    ld [hl], a                                    ; $768b: $77
    ld [hl], a                                    ; $768c: $77
    ld [hl], a                                    ; $768d: $77
    ld [hl], a                                    ; $768e: $77
    ld [hl], a                                    ; $768f: $77
    adc b                                         ; $7690: $88
    adc c                                         ; $7691: $89
    sbc c                                         ; $7692: $99
    ld [hl], a                                    ; $7693: $77
    ld [hl], a                                    ; $7694: $77
    add a                                         ; $7695: $87
    ld [hl], a                                    ; $7696: $77
    ld [hl], a                                    ; $7697: $77
    adc b                                         ; $7698: $88
    add a                                         ; $7699: $87
    ld [hl], a                                    ; $769a: $77
    adc c                                         ; $769b: $89
    xor c                                         ; $769c: $a9
    add a                                         ; $769d: $87
    ld [hl], a                                    ; $769e: $77
    ld [hl], a                                    ; $769f: $77
    add a                                         ; $76a0: $87
    ld [hl], a                                    ; $76a1: $77
    ld [hl], a                                    ; $76a2: $77
    ld [hl], a                                    ; $76a3: $77
    ld a, b                                       ; $76a4: $78
    adc c                                         ; $76a5: $89
    sub a                                         ; $76a6: $97
    ld [hl], a                                    ; $76a7: $77
    ld [hl], a                                    ; $76a8: $77
    halt                                          ; $76a9: $76
    ld h, a                                       ; $76aa: $67
    ld a, b                                       ; $76ab: $78
    adc b                                         ; $76ac: $88
    add a                                         ; $76ad: $87
    ld a, b                                       ; $76ae: $78
    sbc c                                         ; $76af: $99
    sbc b                                         ; $76b0: $98
    ld [hl], a                                    ; $76b1: $77
    ld [hl], a                                    ; $76b2: $77
    ld [hl], a                                    ; $76b3: $77
    ld [hl], a                                    ; $76b4: $77
    ld [hl], a                                    ; $76b5: $77
    ld [hl], a                                    ; $76b6: $77
    adc b                                         ; $76b7: $88
    xor d                                         ; $76b8: $aa
    add a                                         ; $76b9: $87
    ld h, a                                       ; $76ba: $67
    add a                                         ; $76bb: $87
    ld [hl], a                                    ; $76bc: $77
    ld [hl], a                                    ; $76bd: $77
    ld a, b                                       ; $76be: $78
    adc b                                         ; $76bf: $88
    add a                                         ; $76c0: $87
    ld a, b                                       ; $76c1: $78
    xor d                                         ; $76c2: $aa
    sbc b                                         ; $76c3: $98
    ld [hl], a                                    ; $76c4: $77
    ld [hl], a                                    ; $76c5: $77
    ld [hl], a                                    ; $76c6: $77
    ld [hl], a                                    ; $76c7: $77
    ld [hl], a                                    ; $76c8: $77
    ld a, b                                       ; $76c9: $78
    adc b                                         ; $76ca: $88
    adc c                                         ; $76cb: $89
    sbc b                                         ; $76cc: $98
    ld [hl], a                                    ; $76cd: $77
    ld [hl], a                                    ; $76ce: $77
    ld [hl], a                                    ; $76cf: $77
    ld h, [hl]                                    ; $76d0: $66
    ld a, b                                       ; $76d1: $78
    adc b                                         ; $76d2: $88
    adc b                                         ; $76d3: $88
    ld [hl], a                                    ; $76d4: $77
    ld a, b                                       ; $76d5: $78
    sbc c                                         ; $76d6: $99
    add a                                         ; $76d7: $87
    ld h, a                                       ; $76d8: $67
    ld [hl], a                                    ; $76d9: $77
    ld a, b                                       ; $76da: $78
    ld [hl], a                                    ; $76db: $77
    halt                                          ; $76dc: $76
    ld [hl], a                                    ; $76dd: $77
    adc d                                         ; $76de: $8a
    xor c                                         ; $76df: $a9
    add [hl]                                      ; $76e0: $86
    ld a, b                                       ; $76e1: $78
    add a                                         ; $76e2: $87
    halt                                          ; $76e3: $76
    ld [hl], a                                    ; $76e4: $77
    adc b                                         ; $76e5: $88
    add a                                         ; $76e6: $87
    ld [hl], a                                    ; $76e7: $77
    adc d                                         ; $76e8: $8a
    xor c                                         ; $76e9: $a9
    ld [hl], a                                    ; $76ea: $77
    ld [hl], a                                    ; $76eb: $77
    ld [hl], a                                    ; $76ec: $77
    ld [hl], a                                    ; $76ed: $77
    add a                                         ; $76ee: $87
    ld [hl], a                                    ; $76ef: $77
    add a                                         ; $76f0: $87
    adc c                                         ; $76f1: $89
    sbc c                                         ; $76f2: $99
    add a                                         ; $76f3: $87
    ld [hl], a                                    ; $76f4: $77
    add a                                         ; $76f5: $87
    ld h, [hl]                                    ; $76f6: $66
    ld h, a                                       ; $76f7: $67
    adc b                                         ; $76f8: $88
    add a                                         ; $76f9: $87
    ld [hl], a                                    ; $76fa: $77
    adc c                                         ; $76fb: $89
    xor c                                         ; $76fc: $a9
    add a                                         ; $76fd: $87
    ld [hl], a                                    ; $76fe: $77
    ld [hl], a                                    ; $76ff: $77
    add a                                         ; $7700: $87
    ld [hl], a                                    ; $7701: $77
    ld [hl], a                                    ; $7702: $77
    adc b                                         ; $7703: $88
    add a                                         ; $7704: $87
    ld a, b                                       ; $7705: $78
    adc c                                         ; $7706: $89
    add a                                         ; $7707: $87
    ld [hl], a                                    ; $7708: $77
    ld [hl], a                                    ; $7709: $77
    ld [hl], a                                    ; $770a: $77
    ld [hl], a                                    ; $770b: $77
    ld [hl], a                                    ; $770c: $77
    ld a, b                                       ; $770d: $78
    sbc d                                         ; $770e: $9a
    xor c                                         ; $770f: $a9
    add a                                         ; $7710: $87
    ld [hl], a                                    ; $7711: $77
    ld [hl], a                                    ; $7712: $77
    ld [hl], a                                    ; $7713: $77
    ld [hl], a                                    ; $7714: $77
    adc b                                         ; $7715: $88
    add a                                         ; $7716: $87
    ld [hl], a                                    ; $7717: $77
    ld a, c                                       ; $7718: $79
    sbc c                                         ; $7719: $99
    add a                                         ; $771a: $87
    ld [hl], a                                    ; $771b: $77
    ld [hl], a                                    ; $771c: $77
    ld [hl], a                                    ; $771d: $77
    ld [hl], a                                    ; $771e: $77
    ld [hl], a                                    ; $771f: $77
    adc b                                         ; $7720: $88
    adc b                                         ; $7721: $88
    sbc c                                         ; $7722: $99
    add a                                         ; $7723: $87
    ld [hl], a                                    ; $7724: $77
    ld [hl], a                                    ; $7725: $77
    halt                                          ; $7726: $76
    ld [hl], a                                    ; $7727: $77
    adc b                                         ; $7728: $88
    adc b                                         ; $7729: $88
    add a                                         ; $772a: $87
    ld [hl], a                                    ; $772b: $77
    adc c                                         ; $772c: $89
    sbc b                                         ; $772d: $98
    ld [hl], a                                    ; $772e: $77
    ld [hl], a                                    ; $772f: $77
    add a                                         ; $7730: $87
    ld [hl], a                                    ; $7731: $77
    ld [hl], a                                    ; $7732: $77
    ld [hl], a                                    ; $7733: $77
    ld a, b                                       ; $7734: $78
    sbc d                                         ; $7735: $9a
    sbc b                                         ; $7736: $98
    ld [hl], a                                    ; $7737: $77
    ld a, b                                       ; $7738: $78
    ld [hl], a                                    ; $7739: $77
    ld [hl], a                                    ; $773a: $77
    ld [hl], a                                    ; $773b: $77
    adc b                                         ; $773c: $88
    ld [hl], a                                    ; $773d: $77
    ld a, b                                       ; $773e: $78
    sbc d                                         ; $773f: $9a
    sbc b                                         ; $7740: $98
    ld [hl], a                                    ; $7741: $77
    ld [hl], a                                    ; $7742: $77
    ld [hl], a                                    ; $7743: $77
    ld [hl], a                                    ; $7744: $77
    ld [hl], a                                    ; $7745: $77
    ld a, b                                       ; $7746: $78
    adc b                                         ; $7747: $88
    add a                                         ; $7748: $87
    ld a, b                                       ; $7749: $78
    adc b                                         ; $774a: $88
    add a                                         ; $774b: $87
    ld [hl], a                                    ; $774c: $77
    ld [hl], a                                    ; $774d: $77
    ld a, b                                       ; $774e: $78
    adc b                                         ; $774f: $88
    add a                                         ; $7750: $87
    ld a, b                                       ; $7751: $78
    sbc d                                         ; $7752: $9a
    sbc b                                         ; $7753: $98
    ld [hl], a                                    ; $7754: $77
    ld [hl], a                                    ; $7755: $77
    ld [hl], a                                    ; $7756: $77
    ld [hl], a                                    ; $7757: $77
    ld a, b                                       ; $7758: $78
    adc b                                         ; $7759: $88
    ld [hl], a                                    ; $775a: $77
    ld [hl], a                                    ; $775b: $77
    adc c                                         ; $775c: $89
    sbc b                                         ; $775d: $98
    ld [hl], a                                    ; $775e: $77
    ld [hl], a                                    ; $775f: $77
    add a                                         ; $7760: $87
    ld [hl], a                                    ; $7761: $77
    ld [hl], a                                    ; $7762: $77
    ld [hl], a                                    ; $7763: $77
    ld a, b                                       ; $7764: $78
    adc c                                         ; $7765: $89
    sbc b                                         ; $7766: $98
    ld [hl], a                                    ; $7767: $77
    ld [hl], a                                    ; $7768: $77
    ld [hl], a                                    ; $7769: $77
    ld [hl], a                                    ; $776a: $77
    ld [hl], a                                    ; $776b: $77
    adc b                                         ; $776c: $88
    add a                                         ; $776d: $87
    ld [hl], a                                    ; $776e: $77
    adc c                                         ; $776f: $89
    sbc b                                         ; $7770: $98
    add a                                         ; $7771: $87
    ld [hl], a                                    ; $7772: $77
    ld [hl], a                                    ; $7773: $77
    ld [hl], a                                    ; $7774: $77

Jump_019_7775:
    ld [hl], a                                    ; $7775: $77
    ld [hl], a                                    ; $7776: $77
    adc b                                         ; $7777: $88
    adc c                                         ; $7778: $89
    sbc b                                         ; $7779: $98
    ld [hl], a                                    ; $777a: $77
    ld [hl], a                                    ; $777b: $77
    ld [hl], a                                    ; $777c: $77
    ld [hl], a                                    ; $777d: $77
    ld [hl], a                                    ; $777e: $77
    adc b                                         ; $777f: $88
    add a                                         ; $7780: $87
    ld [hl], a                                    ; $7781: $77
    adc c                                         ; $7782: $89
    sbc c                                         ; $7783: $99
    add a                                         ; $7784: $87

Call_019_7785:
    ld [hl], a                                    ; $7785: $77
    ld [hl], a                                    ; $7786: $77
    ld [hl], a                                    ; $7787: $77
    ld [hl], a                                    ; $7788: $77
    ld a, b                                       ; $7789: $78
    adc b                                         ; $778a: $88
    add a                                         ; $778b: $87
    ld [hl], a                                    ; $778c: $77
    adc b                                         ; $778d: $88
    add a                                         ; $778e: $87
    ld [hl], a                                    ; $778f: $77
    add a                                         ; $7790: $87
    ld [hl], a                                    ; $7791: $77
    adc b                                         ; $7792: $88
    add a                                         ; $7793: $87
    ld [hl], a                                    ; $7794: $77
    adc b                                         ; $7795: $88
    sbc c                                         ; $7796: $99
    add a                                         ; $7797: $87
    ld [hl], a                                    ; $7798: $77
    ld [hl], a                                    ; $7799: $77
    ld [hl], a                                    ; $779a: $77
    ld [hl], a                                    ; $779b: $77
    ld [hl], a                                    ; $779c: $77
    add a                                         ; $779d: $87
    ld [hl], a                                    ; $779e: $77
    ld a, b                                       ; $779f: $78
    adc c                                         ; $77a0: $89
    adc b                                         ; $77a1: $88
    ld [hl], a                                    ; $77a2: $77
    ld [hl], a                                    ; $77a3: $77
    ld [hl], a                                    ; $77a4: $77
    ld [hl], a                                    ; $77a5: $77
    adc b                                         ; $77a6: $88
    adc b                                         ; $77a7: $88
    add a                                         ; $77a8: $87
    ld [hl], a                                    ; $77a9: $77
    ld a, b                                       ; $77aa: $78
    sbc b                                         ; $77ab: $98
    add a                                         ; $77ac: $87
    ld [hl], a                                    ; $77ad: $77
    ld [hl], a                                    ; $77ae: $77
    ld [hl], a                                    ; $77af: $77
    add a                                         ; $77b0: $87
    ld a, b                                       ; $77b1: $78
    adc b                                         ; $77b2: $88
    add a                                         ; $77b3: $87
    ld [hl], a                                    ; $77b4: $77
    adc b                                         ; $77b5: $88
    adc b                                         ; $77b6: $88
    ld [hl], a                                    ; $77b7: $77
    ld [hl], a                                    ; $77b8: $77
    ld [hl], a                                    ; $77b9: $77
    ld [hl], a                                    ; $77ba: $77
    ld [hl], a                                    ; $77bb: $77
    ld [hl], a                                    ; $77bc: $77
    adc b                                         ; $77bd: $88
    adc b                                         ; $77be: $88
    adc b                                         ; $77bf: $88
    add a                                         ; $77c0: $87
    ld [hl], a                                    ; $77c1: $77
    ld [hl], a                                    ; $77c2: $77
    ld [hl], a                                    ; $77c3: $77
    ld [hl], a                                    ; $77c4: $77
    ld [hl], a                                    ; $77c5: $77
    ld a, b                                       ; $77c6: $78
    adc b                                         ; $77c7: $88
    sbc c                                         ; $77c8: $99
    add a                                         ; $77c9: $87
    ld [hl], a                                    ; $77ca: $77
    ld [hl], a                                    ; $77cb: $77
    ld [hl], a                                    ; $77cc: $77
    ld [hl], a                                    ; $77cd: $77
    ld [hl], a                                    ; $77ce: $77
    adc b                                         ; $77cf: $88
    adc b                                         ; $77d0: $88
    adc b                                         ; $77d1: $88
    adc b                                         ; $77d2: $88
    add a                                         ; $77d3: $87
    ld [hl], a                                    ; $77d4: $77
    ld [hl], a                                    ; $77d5: $77
    ld [hl], a                                    ; $77d6: $77
    ld [hl], a                                    ; $77d7: $77
    ld [hl], a                                    ; $77d8: $77
    ld [hl], a                                    ; $77d9: $77
    adc b                                         ; $77da: $88
    sbc b                                         ; $77db: $98
    add a                                         ; $77dc: $87
    ld [hl], a                                    ; $77dd: $77
    ld [hl], a                                    ; $77de: $77
    ld [hl], a                                    ; $77df: $77
    add a                                         ; $77e0: $87
    ld a, b                                       ; $77e1: $78
    adc b                                         ; $77e2: $88
    ld [hl], a                                    ; $77e3: $77
    ld a, b                                       ; $77e4: $78
    adc c                                         ; $77e5: $89
    adc b                                         ; $77e6: $88
    ld [hl], a                                    ; $77e7: $77
    ld [hl], a                                    ; $77e8: $77
    ld [hl], a                                    ; $77e9: $77
    ld [hl], a                                    ; $77ea: $77
    ld [hl], a                                    ; $77eb: $77
    adc b                                         ; $77ec: $88
    adc b                                         ; $77ed: $88
    adc b                                         ; $77ee: $88
    adc b                                         ; $77ef: $88
    adc b                                         ; $77f0: $88
    add a                                         ; $77f1: $87
    ld [hl], a                                    ; $77f2: $77
    ld [hl], a                                    ; $77f3: $77
    ld [hl], a                                    ; $77f4: $77
    ld [hl], a                                    ; $77f5: $77
    ld a, b                                       ; $77f6: $78
    adc b                                         ; $77f7: $88
    sbc c                                         ; $77f8: $99
    add a                                         ; $77f9: $87
    ld [hl], a                                    ; $77fa: $77
    ld [hl], a                                    ; $77fb: $77
    ld [hl], a                                    ; $77fc: $77
    ld [hl], a                                    ; $77fd: $77
    ld a, b                                       ; $77fe: $78
    adc b                                         ; $77ff: $88
    add a                                         ; $7800: $87
    ld a, b                                       ; $7801: $78
    adc c                                         ; $7802: $89
    adc b                                         ; $7803: $88
    ld [hl], a                                    ; $7804: $77
    ld [hl], a                                    ; $7805: $77
    ld [hl], a                                    ; $7806: $77
    ld [hl], a                                    ; $7807: $77
    ld [hl], a                                    ; $7808: $77
    adc b                                         ; $7809: $88
    adc b                                         ; $780a: $88
    add a                                         ; $780b: $87
    ld a, b                                       ; $780c: $78
    adc b                                         ; $780d: $88
    add a                                         ; $780e: $87
    ld [hl], a                                    ; $780f: $77
    add a                                         ; $7810: $87
    ld [hl], a                                    ; $7811: $77
    add a                                         ; $7812: $87
    ld [hl], a                                    ; $7813: $77
    ld [hl], a                                    ; $7814: $77
    adc b                                         ; $7815: $88
    sbc b                                         ; $7816: $98
    add a                                         ; $7817: $87
    ld [hl], a                                    ; $7818: $77
    ld [hl], a                                    ; $7819: $77
    ld [hl], a                                    ; $781a: $77
    ld [hl], a                                    ; $781b: $77
    ld a, b                                       ; $781c: $78
    adc b                                         ; $781d: $88
    ld [hl], a                                    ; $781e: $77
    ld a, b                                       ; $781f: $78
    adc c                                         ; $7820: $89
    adc b                                         ; $7821: $88
    ld [hl], a                                    ; $7822: $77
    ld [hl], a                                    ; $7823: $77
    adc b                                         ; $7824: $88
    ld [hl], a                                    ; $7825: $77
    ld [hl], a                                    ; $7826: $77
    ld a, b                                       ; $7827: $78
    adc b                                         ; $7828: $88
    adc b                                         ; $7829: $88
    add a                                         ; $782a: $87
    ld [hl], a                                    ; $782b: $77
    ld [hl], a                                    ; $782c: $77
    ld [hl], a                                    ; $782d: $77
    ld [hl], a                                    ; $782e: $77
    ld a, b                                       ; $782f: $78
    adc b                                         ; $7830: $88
    add a                                         ; $7831: $87
    ld a, b                                       ; $7832: $78
    adc b                                         ; $7833: $88
    adc b                                         ; $7834: $88
    ld [hl], a                                    ; $7835: $77
    ld [hl], a                                    ; $7836: $77
    ld [hl], a                                    ; $7837: $77
    ld [hl], a                                    ; $7838: $77
    ld [hl], a                                    ; $7839: $77
    ld [hl], a                                    ; $783a: $77
    ld a, b                                       ; $783b: $78
    adc b                                         ; $783c: $88
    adc b                                         ; $783d: $88
    ld [hl], a                                    ; $783e: $77
    ld [hl], a                                    ; $783f: $77
    add a                                         ; $7840: $87
    ld [hl], a                                    ; $7841: $77
    ld [hl], a                                    ; $7842: $77
    adc b                                         ; $7843: $88
    adc b                                         ; $7844: $88
    ld [hl], a                                    ; $7845: $77
    ld a, b                                       ; $7846: $78
    adc b                                         ; $7847: $88
    adc b                                         ; $7848: $88
    ld [hl], a                                    ; $7849: $77
    ld [hl], a                                    ; $784a: $77
    adc b                                         ; $784b: $88
    ld [hl], a                                    ; $784c: $77
    ld [hl], a                                    ; $784d: $77
    ld [hl], a                                    ; $784e: $77
    ld a, b                                       ; $784f: $78
    adc b                                         ; $7850: $88
    add a                                         ; $7851: $87
    ld [hl], a                                    ; $7852: $77
    ld [hl], a                                    ; $7853: $77
    ld [hl], a                                    ; $7854: $77
    ld [hl], a                                    ; $7855: $77
    ld a, b                                       ; $7856: $78
    adc b                                         ; $7857: $88
    add a                                         ; $7858: $87
    ld [hl], a                                    ; $7859: $77
    adc b                                         ; $785a: $88
    adc b                                         ; $785b: $88
    add a                                         ; $785c: $87
    ld [hl], a                                    ; $785d: $77
    ld a, b                                       ; $785e: $78
    add a                                         ; $785f: $87
    add a                                         ; $7860: $87
    ld [hl], a                                    ; $7861: $77
    adc b                                         ; $7862: $88
    adc b                                         ; $7863: $88
    adc b                                         ; $7864: $88
    add a                                         ; $7865: $87

Jump_019_7866:
    ld [hl], a                                    ; $7866: $77
    ld [hl], a                                    ; $7867: $77
    ld [hl], a                                    ; $7868: $77
    ld [hl], a                                    ; $7869: $77
    adc b                                         ; $786a: $88
    adc b                                         ; $786b: $88
    adc b                                         ; $786c: $88
    ld [hl], a                                    ; $786d: $77
    ld a, b                                       ; $786e: $78
    adc b                                         ; $786f: $88
    add a                                         ; $7870: $87
    ld [hl], a                                    ; $7871: $77
    adc b                                         ; $7872: $88
    adc b                                         ; $7873: $88
    ld [hl], a                                    ; $7874: $77
    ld [hl], a                                    ; $7875: $77

Jump_019_7876:
    ld [hl], a                                    ; $7876: $77
    adc b                                         ; $7877: $88
    adc b                                         ; $7878: $88
    add a                                         ; $7879: $87
    ld [hl], a                                    ; $787a: $77
    ld [hl], a                                    ; $787b: $77
    ld [hl], a                                    ; $787c: $77
    ld [hl], a                                    ; $787d: $77
    ld a, b                                       ; $787e: $78
    adc b                                         ; $787f: $88
    add a                                         ; $7880: $87
    ld a, b                                       ; $7881: $78
    adc b                                         ; $7882: $88
    adc b                                         ; $7883: $88
    ld [hl], a                                    ; $7884: $77
    ld [hl], a                                    ; $7885: $77
    ld [hl], a                                    ; $7886: $77
    ld [hl], a                                    ; $7887: $77
    ld [hl], a                                    ; $7888: $77
    ld [hl], a                                    ; $7889: $77
    ld a, b                                       ; $788a: $78
    adc b                                         ; $788b: $88
    add a                                         ; $788c: $87
    ld [hl], a                                    ; $788d: $77
    ld [hl], a                                    ; $788e: $77
    ld [hl], a                                    ; $788f: $77
    add a                                         ; $7890: $87
    ld [hl], a                                    ; $7891: $77
    adc b                                         ; $7892: $88
    adc b                                         ; $7893: $88

Call_019_7894:
    ld [hl], a                                    ; $7894: $77
    adc b                                         ; $7895: $88
    adc b                                         ; $7896: $88
    add a                                         ; $7897: $87
    ld [hl], a                                    ; $7898: $77
    ld [hl], a                                    ; $7899: $77
    ld [hl], a                                    ; $789a: $77
    ld [hl], a                                    ; $789b: $77
    ld [hl], a                                    ; $789c: $77
    ld a, b                                       ; $789d: $78
    adc b                                         ; $789e: $88
    adc b                                         ; $789f: $88
    adc b                                         ; $78a0: $88
    ld [hl], a                                    ; $78a1: $77
    ld [hl], a                                    ; $78a2: $77
    ld [hl], a                                    ; $78a3: $77
    ld [hl], a                                    ; $78a4: $77
    ld a, b                                       ; $78a5: $78
    adc b                                         ; $78a6: $88
    adc b                                         ; $78a7: $88
    ld [hl], a                                    ; $78a8: $77
    ld a, b                                       ; $78a9: $78
    adc b                                         ; $78aa: $88
    adc b                                         ; $78ab: $88
    ld [hl], a                                    ; $78ac: $77
    ld [hl], a                                    ; $78ad: $77
    adc b                                         ; $78ae: $88
    ld [hl], a                                    ; $78af: $77
    add a                                         ; $78b0: $87
    ld [hl], a                                    ; $78b1: $77
    ld a, b                                       ; $78b2: $78
    adc b                                         ; $78b3: $88
    add a                                         ; $78b4: $87
    ld [hl], a                                    ; $78b5: $77
    ld [hl], a                                    ; $78b6: $77
    ld [hl], a                                    ; $78b7: $77
    ld [hl], a                                    ; $78b8: $77
    ld a, b                                       ; $78b9: $78
    adc b                                         ; $78ba: $88
    adc b                                         ; $78bb: $88
    ld [hl], a                                    ; $78bc: $77
    adc b                                         ; $78bd: $88
    adc b                                         ; $78be: $88
    add a                                         ; $78bf: $87
    add a                                         ; $78c0: $87
    ld a, b                                       ; $78c1: $78
    add a                                         ; $78c2: $87
    ld [hl], a                                    ; $78c3: $77
    ld [hl], a                                    ; $78c4: $77
    ld [hl], a                                    ; $78c5: $77
    adc b                                         ; $78c6: $88
    adc b                                         ; $78c7: $88
    add a                                         ; $78c8: $87
    ld [hl], a                                    ; $78c9: $77
    ld [hl], a                                    ; $78ca: $77
    ld [hl], a                                    ; $78cb: $77
    ld [hl], a                                    ; $78cc: $77
    ld a, b                                       ; $78cd: $78
    adc b                                         ; $78ce: $88
    adc b                                         ; $78cf: $88
    add a                                         ; $78d0: $87
    ld a, b                                       ; $78d1: $78
    adc b                                         ; $78d2: $88
    add a                                         ; $78d3: $87
    ld [hl], a                                    ; $78d4: $77
    ld [hl], a                                    ; $78d5: $77
    adc b                                         ; $78d6: $88
    ld [hl], a                                    ; $78d7: $77
    ld [hl], a                                    ; $78d8: $77
    ld [hl], a                                    ; $78d9: $77
    adc b                                         ; $78da: $88
    adc b                                         ; $78db: $88
    add a                                         ; $78dc: $87
    ld [hl], a                                    ; $78dd: $77
    add a                                         ; $78de: $87
    ld [hl], a                                    ; $78df: $77
    add a                                         ; $78e0: $87
    ld a, b                                       ; $78e1: $78
    adc b                                         ; $78e2: $88
    add a                                         ; $78e3: $87
    ld [hl], a                                    ; $78e4: $77
    adc b                                         ; $78e5: $88
    adc b                                         ; $78e6: $88
    add a                                         ; $78e7: $87
    ld [hl], a                                    ; $78e8: $77
    ld a, b                                       ; $78e9: $78
    add a                                         ; $78ea: $87
    ld [hl], a                                    ; $78eb: $77
    ld [hl], a                                    ; $78ec: $77
    ld [hl], a                                    ; $78ed: $77
    adc b                                         ; $78ee: $88
    adc b                                         ; $78ef: $88
    add a                                         ; $78f0: $87
    ld [hl], a                                    ; $78f1: $77
    ld [hl], a                                    ; $78f2: $77
    ld [hl], a                                    ; $78f3: $77
    ld [hl], a                                    ; $78f4: $77
    adc b                                         ; $78f5: $88
    adc b                                         ; $78f6: $88
    add a                                         ; $78f7: $87
    ld [hl], a                                    ; $78f8: $77
    adc b                                         ; $78f9: $88
    adc b                                         ; $78fa: $88
    ld [hl], a                                    ; $78fb: $77
    ld [hl], a                                    ; $78fc: $77
    ld [hl], a                                    ; $78fd: $77
    ld [hl], a                                    ; $78fe: $77
    ld [hl], a                                    ; $78ff: $77
    add a                                         ; $7900: $87
    ld [hl], a                                    ; $7901: $77
    adc b                                         ; $7902: $88
    adc b                                         ; $7903: $88
    add a                                         ; $7904: $87
    ld [hl], a                                    ; $7905: $77
    add a                                         ; $7906: $87
    ld [hl], a                                    ; $7907: $77
    ld [hl], a                                    ; $7908: $77
    adc b                                         ; $7909: $88
    adc b                                         ; $790a: $88
    add a                                         ; $790b: $87
    ld [hl], a                                    ; $790c: $77
    adc b                                         ; $790d: $88
    adc b                                         ; $790e: $88
    add a                                         ; $790f: $87
    add a                                         ; $7910: $87
    ld [hl], a                                    ; $7911: $77
    ld [hl], a                                    ; $7912: $77
    ld [hl], a                                    ; $7913: $77
    ld [hl], a                                    ; $7914: $77
    ld a, b                                       ; $7915: $78
    adc b                                         ; $7916: $88
    adc b                                         ; $7917: $88
    ld [hl], a                                    ; $7918: $77
    ld a, b                                       ; $7919: $78
    ld [hl], a                                    ; $791a: $77
    ld [hl], a                                    ; $791b: $77
    ld [hl], a                                    ; $791c: $77
    adc b                                         ; $791d: $88
    adc b                                         ; $791e: $88
    ld [hl], a                                    ; $791f: $77
    adc b                                         ; $7920: $88
    adc b                                         ; $7921: $88
    adc b                                         ; $7922: $88
    ld [hl], a                                    ; $7923: $77
    ld [hl], a                                    ; $7924: $77
    ld [hl], a                                    ; $7925: $77
    ld [hl], a                                    ; $7926: $77
    ld [hl], a                                    ; $7927: $77
    ld [hl], a                                    ; $7928: $77
    adc b                                         ; $7929: $88
    adc b                                         ; $792a: $88
    adc b                                         ; $792b: $88
    ld [hl], a                                    ; $792c: $77
    ld a, b                                       ; $792d: $78
    ld [hl], a                                    ; $792e: $77
    ld [hl], a                                    ; $792f: $77
    add a                                         ; $7930: $87
    adc b                                         ; $7931: $88
    adc b                                         ; $7932: $88
    ld [hl], a                                    ; $7933: $77
    ld a, b                                       ; $7934: $78
    adc b                                         ; $7935: $88

Jump_019_7936:
    adc b                                         ; $7936: $88
    ld [hl], a                                    ; $7937: $77
    ld [hl], a                                    ; $7938: $77
    ld [hl], a                                    ; $7939: $77
    ld [hl], a                                    ; $793a: $77
    ld [hl], a                                    ; $793b: $77
    ld [hl], a                                    ; $793c: $77
    ld a, b                                       ; $793d: $78
    adc b                                         ; $793e: $88
    adc b                                         ; $793f: $88
    add a                                         ; $7940: $87
    ld a, b                                       ; $7941: $78
    ld [hl], a                                    ; $7942: $77
    ld [hl], a                                    ; $7943: $77
    ld a, b                                       ; $7944: $78
    adc b                                         ; $7945: $88
    adc b                                         ; $7946: $88
    ld [hl], a                                    ; $7947: $77
    ld a, b                                       ; $7948: $78
    adc b                                         ; $7949: $88
    adc b                                         ; $794a: $88
    ld [hl], a                                    ; $794b: $77
    ld [hl], a                                    ; $794c: $77
    ld [hl], a                                    ; $794d: $77
    ld [hl], a                                    ; $794e: $77
    ld [hl], a                                    ; $794f: $77
    add a                                         ; $7950: $87
    ld a, b                                       ; $7951: $78
    adc b                                         ; $7952: $88
    adc b                                         ; $7953: $88
    ld [hl], a                                    ; $7954: $77
    ld a, b                                       ; $7955: $78
    ld [hl], a                                    ; $7956: $77
    ld [hl], a                                    ; $7957: $77
    ld [hl], a                                    ; $7958: $77
    adc b                                         ; $7959: $88
    adc b                                         ; $795a: $88
    ld [hl], a                                    ; $795b: $77
    ld a, b                                       ; $795c: $78
    adc b                                         ; $795d: $88
    add a                                         ; $795e: $87
    ld [hl], a                                    ; $795f: $77
    add a                                         ; $7960: $87
    ld [hl], a                                    ; $7961: $77
    ld [hl], a                                    ; $7962: $77
    ld [hl], a                                    ; $7963: $77
    ld [hl], a                                    ; $7964: $77
    ld a, b                                       ; $7965: $78
    adc b                                         ; $7966: $88
    adc b                                         ; $7967: $88
    ld [hl], a                                    ; $7968: $77
    ld [hl], a                                    ; $7969: $77
    ld [hl], a                                    ; $796a: $77
    ld [hl], a                                    ; $796b: $77
    ld a, b                                       ; $796c: $78
    adc b                                         ; $796d: $88
    add a                                         ; $796e: $87
    ld [hl], a                                    ; $796f: $77
    adc b                                         ; $7970: $88
    adc b                                         ; $7971: $88
    add a                                         ; $7972: $87
    ld [hl], a                                    ; $7973: $77
    ld [hl], a                                    ; $7974: $77
    ld [hl], a                                    ; $7975: $77
    ld [hl], a                                    ; $7976: $77
    ld [hl], a                                    ; $7977: $77
    ld [hl], a                                    ; $7978: $77
    adc b                                         ; $7979: $88
    adc b                                         ; $797a: $88
    add a                                         ; $797b: $87
    ld [hl], a                                    ; $797c: $77
    ld [hl], a                                    ; $797d: $77
    ld [hl], a                                    ; $797e: $77
    ld [hl], a                                    ; $797f: $77
    adc b                                         ; $7980: $88
    adc b                                         ; $7981: $88
    add a                                         ; $7982: $87
    ld [hl], a                                    ; $7983: $77
    adc b                                         ; $7984: $88
    adc b                                         ; $7985: $88
    add a                                         ; $7986: $87
    ld [hl], a                                    ; $7987: $77
    ld [hl], a                                    ; $7988: $77
    adc b                                         ; $7989: $88
    ld [hl], a                                    ; $798a: $77
    ld [hl], a                                    ; $798b: $77
    ld [hl], a                                    ; $798c: $77
    adc b                                         ; $798d: $88
    adc b                                         ; $798e: $88
    add a                                         ; $798f: $87
    add a                                         ; $7990: $87
    ld [hl], a                                    ; $7991: $77
    ld [hl], a                                    ; $7992: $77
    ld [hl], a                                    ; $7993: $77
    ld a, b                                       ; $7994: $78
    adc b                                         ; $7995: $88
    add a                                         ; $7996: $87
    ld [hl], a                                    ; $7997: $77
    adc b                                         ; $7998: $88
    adc b                                         ; $7999: $88
    add a                                         ; $799a: $87
    ld [hl], a                                    ; $799b: $77
    ld [hl], a                                    ; $799c: $77
    ld [hl], a                                    ; $799d: $77
    ld [hl], a                                    ; $799e: $77
    ld [hl], a                                    ; $799f: $77
    adc b                                         ; $79a0: $88
    adc b                                         ; $79a1: $88
    adc b                                         ; $79a2: $88
    add a                                         ; $79a3: $87
    ld [hl], a                                    ; $79a4: $77
    ld [hl], a                                    ; $79a5: $77
    ld [hl], a                                    ; $79a6: $77
    ld [hl], a                                    ; $79a7: $77
    adc b                                         ; $79a8: $88
    adc b                                         ; $79a9: $88
    add a                                         ; $79aa: $87
    ld [hl], a                                    ; $79ab: $77
    adc b                                         ; $79ac: $88
    adc b                                         ; $79ad: $88
    ld [hl], a                                    ; $79ae: $77
    ld [hl], a                                    ; $79af: $77
    add a                                         ; $79b0: $87
    ld [hl], a                                    ; $79b1: $77
    ld [hl], a                                    ; $79b2: $77
    ld [hl], a                                    ; $79b3: $77
    ld a, b                                       ; $79b4: $78
    adc b                                         ; $79b5: $88
    adc b                                         ; $79b6: $88
    add a                                         ; $79b7: $87
    ld [hl], a                                    ; $79b8: $77
    ld [hl], a                                    ; $79b9: $77
    ld [hl], a                                    ; $79ba: $77
    ld [hl], a                                    ; $79bb: $77
    adc b                                         ; $79bc: $88
    adc b                                         ; $79bd: $88
    add a                                         ; $79be: $87
    ld [hl], a                                    ; $79bf: $77
    adc b                                         ; $79c0: $88
    adc b                                         ; $79c1: $88
    adc b                                         ; $79c2: $88
    ld [hl], a                                    ; $79c3: $77
    ld [hl], a                                    ; $79c4: $77
    adc b                                         ; $79c5: $88
    ld [hl], a                                    ; $79c6: $77
    ld [hl], a                                    ; $79c7: $77
    ld [hl], a                                    ; $79c8: $77
    adc b                                         ; $79c9: $88
    adc b                                         ; $79ca: $88
    adc b                                         ; $79cb: $88
    ld [hl], a                                    ; $79cc: $77
    add a                                         ; $79cd: $87
    ld [hl], a                                    ; $79ce: $77
    ld [hl], a                                    ; $79cf: $77
    adc b                                         ; $79d0: $88
    adc b                                         ; $79d1: $88
    adc b                                         ; $79d2: $88
    ld [hl], a                                    ; $79d3: $77
    adc b                                         ; $79d4: $88
    adc b                                         ; $79d5: $88
    add a                                         ; $79d6: $87
    ld [hl], a                                    ; $79d7: $77
    ld [hl], a                                    ; $79d8: $77
    ld [hl], a                                    ; $79d9: $77
    ld [hl], a                                    ; $79da: $77
    ld [hl], a                                    ; $79db: $77
    ld [hl], a                                    ; $79dc: $77
    ld a, b                                       ; $79dd: $78
    adc b                                         ; $79de: $88
    add a                                         ; $79df: $87
    add a                                         ; $79e0: $87
    ld [hl], a                                    ; $79e1: $77
    ld [hl], a                                    ; $79e2: $77
    ld [hl], a                                    ; $79e3: $77
    adc b                                         ; $79e4: $88
    adc b                                         ; $79e5: $88
    add a                                         ; $79e6: $87
    ld [hl], a                                    ; $79e7: $77
    ld a, b                                       ; $79e8: $78
    adc b                                         ; $79e9: $88
    add a                                         ; $79ea: $87
    ld [hl], a                                    ; $79eb: $77
    ld a, b                                       ; $79ec: $78
    adc b                                         ; $79ed: $88
    adc b                                         ; $79ee: $88
    adc b                                         ; $79ef: $88
    adc b                                         ; $79f0: $88
    ld [hl], a                                    ; $79f1: $77
    ld [hl], a                                    ; $79f2: $77
    add a                                         ; $79f3: $87
    ld a, b                                       ; $79f4: $78
    adc b                                         ; $79f5: $88
    adc b                                         ; $79f6: $88
    ld [hl], a                                    ; $79f7: $77
    ld [hl], a                                    ; $79f8: $77
    ld a, b                                       ; $79f9: $78
    adc b                                         ; $79fa: $88
    adc b                                         ; $79fb: $88
    halt                                          ; $79fc: $76
    ld h, [hl]                                    ; $79fd: $66
    ld a, b                                       ; $79fe: $78
    sbc d                                         ; $79ff: $9a
    xor b                                         ; $7a00: $a8
    ld h, [hl]                                    ; $7a01: $66
    ld b, l                                       ; $7a02: $45
    ld a, d                                       ; $7a03: $7a
    cp e                                          ; $7a04: $bb
    sub a                                         ; $7a05: $97
    ld d, h                                       ; $7a06: $54
    inc [hl]                                      ; $7a07: $34
    ld a, e                                       ; $7a08: $7b
    call c, Call_019_53a7                         ; $7a09: $dc $a7 $53
    inc [hl]                                      ; $7a0c: $34
    ld a, h                                       ; $7a0d: $7c
    db $ec                                        ; $7a0e: $ec
    and a                                         ; $7a0f: $a7
    ld b, e                                       ; $7a10: $43
    inc [hl]                                      ; $7a11: $34
    ld a, e                                       ; $7a12: $7b
    db $ed                                        ; $7a13: $ed
    and a                                         ; $7a14: $a7
    ld d, e                                       ; $7a15: $53
    inc h                                         ; $7a16: $24
    ld l, d                                       ; $7a17: $6a
    xor $a8                                       ; $7a18: $ee $a8
    ld d, e                                       ; $7a1a: $53
    inc hl                                        ; $7a1b: $23
    ld e, c                                       ; $7a1c: $59
    xor $b8                                       ; $7a1d: $ee $b8
    ld h, e                                       ; $7a1f: $63
    inc hl                                        ; $7a20: $23
    ld e, c                                       ; $7a21: $59
    rst $28                                       ; $7a22: $ef
    ret                                           ; $7a23: $c9


    ld h, e                                       ; $7a24: $63
    ld [de], a                                    ; $7a25: $12
    ld e, b                                       ; $7a26: $58
    rst $18                                       ; $7a27: $df
    reti                                          ; $7a28: $d9


    ld h, h                                       ; $7a29: $64
    ld [de], a                                    ; $7a2a: $12
    ld b, a                                       ; $7a2b: $47
    rst $08                                       ; $7a2c: $cf
    jp c, $2174                                   ; $7a2d: $da $74 $21

    ld b, [hl]                                    ; $7a30: $46
    cp a                                          ; $7a31: $bf
    db $db                                        ; $7a32: $db
    add h                                         ; $7a33: $84
    ld hl, $af36                                  ; $7a34: $21 $36 $af
    db $ec                                        ; $7a37: $ec
    sub l                                         ; $7a38: $95
    ld sp, $ae25                                  ; $7a39: $31 $25 $ae
    db $ec                                        ; $7a3c: $ec
    sub l                                         ; $7a3d: $95
    ld sp, $9e25                                  ; $7a3e: $31 $25 $9e
    db $ec                                        ; $7a41: $ec
    and [hl]                                      ; $7a42: $a6
    ld sp, $8d14                                  ; $7a43: $31 $14 $8d
    db $fd                                        ; $7a46: $fd
    or [hl]                                       ; $7a47: $b6
    ld sp, $8d14                                  ; $7a48: $31 $14 $8d
    db $fc                                        ; $7a4b: $fc
    rst $00                                       ; $7a4c: $c7
    ld [hl-], a                                   ; $7a4d: $32
    inc de                                        ; $7a4e: $13
    ld a, h                                       ; $7a4f: $7c
    db $ed                                        ; $7a50: $ed
    ret z                                         ; $7a51: $c8

    ld sp, $6c12                                  ; $7a52: $31 $12 $6c
    db $fd                                        ; $7a55: $fd
    ret                                           ; $7a56: $c9


    ld b, c                                       ; $7a57: $41
    ld [de], a                                    ; $7a58: $12
    ld l, h                                       ; $7a59: $6c
    db $fd                                        ; $7a5a: $fd
    reti                                          ; $7a5b: $d9


    ld b, d                                       ; $7a5c: $42
    ld [de], a                                    ; $7a5d: $12
    ld l, h                                       ; $7a5e: $6c
    db $fd                                        ; $7a5f: $fd
    reti                                          ; $7a60: $d9


    ld sp, $6c02                                  ; $7a61: $31 $02 $6c
    db $fd                                        ; $7a64: $fd
    reti                                          ; $7a65: $d9


    ld sp, $6c12                                  ; $7a66: $31 $12 $6c
    db $ed                                        ; $7a69: $ed
    reti                                          ; $7a6a: $d9


    ld sp, $7c12                                  ; $7a6b: $31 $12 $7c
    db $ec                                        ; $7a6e: $ec
    reti                                          ; $7a6f: $d9


    ld sp, $7d12                                  ; $7a70: $31 $12 $7d
    db $ed                                        ; $7a73: $ed
    reti                                          ; $7a74: $d9


    ld sp, $7d12                                  ; $7a75: $31 $12 $7d
    db $dd                                        ; $7a78: $dd
    ret c                                         ; $7a79: $d8

    ld sp, $8d13                                  ; $7a7a: $31 $13 $8d
    call c, Call_000_21d8                         ; $7a7d: $dc $d8 $21
    inc de                                        ; $7a80: $13
    sbc l                                         ; $7a81: $9d
    call c, Call_000_21c7                         ; $7a82: $dc $c7 $21
    inc hl                                        ; $7a85: $23
    sbc [hl]                                      ; $7a86: $9e

Jump_019_7a87:
    call Call_000_21c7                            ; $7a87: $cd $c7 $21
    inc h                                         ; $7a8a: $24
    xor [hl]                                      ; $7a8b: $ae
    call $21b6                                    ; $7a8c: $cd $b6 $21
    inc h                                         ; $7a8f: $24
    cp [hl]                                       ; $7a90: $be
    call $21b5                                    ; $7a91: $cd $b5 $21
    dec h                                         ; $7a94: $25
    cp [hl]                                       ; $7a95: $be
    db $dd                                        ; $7a96: $dd
    and l                                         ; $7a97: $a5
    ld hl, $cd26                                  ; $7a98: $21 $26 $cd
    db $dd                                        ; $7a9b: $dd
    sub h                                         ; $7a9c: $94
    ld hl, $cd27                                  ; $7a9d: $21 $27 $cd
    db $dd                                        ; $7aa0: $dd
    add h                                         ; $7aa1: $84
    ld de, $dd38                                  ; $7aa2: $11 $38 $dd
    call c, Call_000_1173                         ; $7aa5: $dc $73 $11
    ld c, d                                       ; $7aa8: $4a
    db $dd                                        ; $7aa9: $dd
    db $db                                        ; $7aaa: $db
    ld h, d                                       ; $7aab: $62
    ld de, $dd5b                                  ; $7aac: $11 $5b $dd
    jp c, CopyHL2DE_7                           ; $7aaf: $da $42 $12

    ld a, h                                       ; $7ab2: $7c
    db $dd                                        ; $7ab3: $dd
    ret c                                         ; $7ab4: $d8

    ld sp, $9d13                                  ; $7ab5: $31 $13 $9d
    db $dd                                        ; $7ab8: $dd
    or [hl]                                       ; $7ab9: $b6
    ld sp, $bd15                                  ; $7aba: $31 $15 $bd
    db $dd                                        ; $7abd: $dd
    and l                                         ; $7abe: $a5
    ld hl, $cd27                                  ; $7abf: $21 $27 $cd
    call c, Call_000_1173                         ; $7ac2: $dc $73 $11
    ld c, c                                       ; $7ac5: $49

jr_019_7ac6:
    call $63da                                    ; $7ac6: $cd $da $63
    ld [de], a                                    ; $7ac9: $12
    ld l, e                                       ; $7aca: $6b
    db $dd                                        ; $7acb: $dd
    ret c                                         ; $7acc: $d8

    ld b, d                                       ; $7acd: $42
    inc d                                         ; $7ace: $14
    sbc h                                         ; $7acf: $9c
    sbc $b6                                       ; $7ad0: $de $b6
    ld hl, $bc26                                  ; $7ad2: $21 $26 $bc
    db $dd                                        ; $7ad5: $dd
    sub h                                         ; $7ad6: $94
    db $10                                        ; $7ad7: $10
    add hl, sp                                    ; $7ad8: $39
    call $63eb                                    ; $7ad9: $cd $eb $63
    ld bc, $cd6b                                  ; $7adc: $01 $6b $cd
    ret c                                         ; $7adf: $d8

    ld b, c                                       ; $7ae0: $41
    inc bc                                        ; $7ae1: $03
    sbc h                                         ; $7ae2: $9c
    sbc $b6                                       ; $7ae3: $de $b6
    jr nc, jr_019_7afe                            ; $7ae5: $30 $17

jr_019_7ae7:
    cp h                                          ; $7ae7: $bc
    db $ed                                        ; $7ae8: $ed
    ld [hl], h                                    ; $7ae9: $74
    db $10                                        ; $7aea: $10
    ld e, d                                       ; $7aeb: $5a
    cp l                                          ; $7aec: $bd
    ld [$0352], a                                 ; $7aed: $ea $52 $03
    adc e                                         ; $7af0: $8b
    adc $b6                                       ; $7af1: $ce $b6
    jr nc, jr_019_7b0c                            ; $7af3: $30 $17

    xor e                                         ; $7af5: $ab
    db $ed                                        ; $7af6: $ed
    add h                                         ; $7af7: $84
    ld de, $bd5a                                  ; $7af8: $11 $5a $bd
    jp hl                                         ; $7afb: $e9


    ld d, d                                       ; $7afc: $52
    inc b                                         ; $7afd: $04

jr_019_7afe:
    sbc d                                         ; $7afe: $9a
    adc $b6                                       ; $7aff: $ce $b6
    jr nc, jr_019_7b2b                            ; $7b01: $30 $28

    xor e                                         ; $7b03: $ab
    db $ec                                        ; $7b04: $ec
    ld [hl], h                                    ; $7b05: $74
    ld de, $bd6a                                  ; $7b06: $11 $6a $bd
    ret c                                         ; $7b09: $d8

    ld d, c                                       ; $7b0a: $51
    dec d                                         ; $7b0b: $15

jr_019_7b0c:
    xor d                                         ; $7b0c: $aa
    sbc $96                                       ; $7b0d: $de $96
    jr nz, jr_019_7b5a                            ; $7b0f: $20 $49

    xor h                                         ; $7b11: $ac
    ld [$0363], a                                 ; $7b12: $ea $63 $03
    sbc d                                         ; $7b15: $9a
    cp [hl]                                       ; $7b16: $be

jr_019_7b17:
    or a                                          ; $7b17: $b7
    ld b, b                                       ; $7b18: $40
    jr z, jr_019_7ac6                             ; $7b19: $28 $ab

    db $ec                                        ; $7b1b: $ec
    ld [hl], h                                    ; $7b1c: $74
    ld de, $ad7a                                  ; $7b1d: $11 $7a $ad
    ret c                                         ; $7b20: $d8

    ld d, c                                       ; $7b21: $51
    ld d, $aa                                     ; $7b22: $16 $aa
    sbc $95                                       ; $7b24: $de $95
    jr nz, jr_019_7b82                            ; $7b26: $20 $5a

    xor h                                         ; $7b28: $ac
    jp hl                                         ; $7b29: $e9


    ld h, d                                       ; $7b2a: $62

jr_019_7b2b:
    inc b                                         ; $7b2b: $04
    sbc d                                         ; $7b2c: $9a
    adc $a6                                       ; $7b2d: $ce $a6
    jr nc, jr_019_7b7a                            ; $7b2f: $30 $49

    xor e                                         ; $7b31: $ab
    ld [$0373], a                                 ; $7b32: $ea $73 $03

jr_019_7b35:
    sbc d                                         ; $7b35: $9a
    cp [hl]                                       ; $7b36: $be
    or a                                          ; $7b37: $b7
    ld b, b                                       ; $7b38: $40
    add hl, sp                                    ; $7b39: $39
    xor e                                         ; $7b3a: $ab
    db $eb                                        ; $7b3b: $eb
    ld [hl], h                                    ; $7b3c: $74
    ld [bc], a                                    ; $7b3d: $02
    adc d                                         ; $7b3e: $8a
    cp [hl]                                       ; $7b3f: $be
    or a                                          ; $7b40: $b7
    ld b, b                                       ; $7b41: $40
    jr z, @-$53                                   ; $7b42: $28 $ab

    db $eb                                        ; $7b44: $eb
    ld [hl], h                                    ; $7b45: $74
    ld [bc], a                                    ; $7b46: $02
    adc d                                         ; $7b47: $8a
    cp [hl]                                       ; $7b48: $be
    or a                                          ; $7b49: $b7
    ld b, b                                       ; $7b4a: $40
    jr z, jr_019_7ae7                             ; $7b4b: $28 $9a

    db $eb                                        ; $7b4d: $eb
    ld [hl], h                                    ; $7b4e: $74
    ld [bc], a                                    ; $7b4f: $02
    sbc c                                         ; $7b50: $99
    xor [hl]                                      ; $7b51: $ae
    or a                                          ; $7b52: $b7
    ld d, b                                       ; $7b53: $50
    add hl, hl                                    ; $7b54: $29
    sbc d                                         ; $7b55: $9a
    db $eb                                        ; $7b56: $eb
    ld [hl], l                                    ; $7b57: $75
    ld [bc], a                                    ; $7b58: $02
    sbc c                                         ; $7b59: $99

jr_019_7b5a:
    xor [hl]                                      ; $7b5a: $ae
    or a                                          ; $7b5b: $b7
    ld b, b                                       ; $7b5c: $40
    add hl, hl                                    ; $7b5d: $29
    sbc d                                         ; $7b5e: $9a
    db $eb                                        ; $7b5f: $eb
    add h                                         ; $7b60: $84
    inc bc                                        ; $7b61: $03

Call_019_7b62:
    sbc c                                         ; $7b62: $99
    cp [hl]                                       ; $7b63: $be
    and a                                         ; $7b64: $a7
    ld b, b                                       ; $7b65: $40
    add hl, sp                                    ; $7b66: $39
    sbc e                                         ; $7b67: $9b
    ld [$0474], a                                 ; $7b68: $ea $74 $04
    sbc c                                         ; $7b6b: $99
    adc $96                                       ; $7b6c: $ce $96
    jr nc, jr_019_7bca                            ; $7b6e: $30 $5a

    sbc h                                         ; $7b70: $9c
    ret c                                         ; $7b71: $d8

    ld h, e                                       ; $7b72: $63
    ld b, $99                                     ; $7b73: $06 $99
    db $dd                                        ; $7b75: $dd
    add [hl]                                      ; $7b76: $86
    ld hl, $9e79                                  ; $7b77: $21 $79 $9e

jr_019_7b7a:
    rst $10                                       ; $7b7a: $d7
    ld h, c                                       ; $7b7b: $61
    jr jr_019_7b17                                ; $7b7c: $18 $99

    db $ec                                        ; $7b7e: $ec
    ld [hl], l                                    ; $7b7f: $75
    ld [de], a                                    ; $7b80: $12
    adc c                                         ; $7b81: $89

jr_019_7b82:
    xor a                                         ; $7b82: $af
    or a                                          ; $7b83: $b7
    ld d, b                                       ; $7b84: $50
    add hl, hl                                    ; $7b85: $29
    adc d                                         ; $7b86: $8a
    ei                                            ; $7b87: $fb
    ld [hl], l                                    ; $7b88: $75

jr_019_7b89:
    inc bc                                        ; $7b89: $03
    sbc b                                         ; $7b8a: $98
    cp a                                          ; $7b8b: $bf
    and a                                         ; $7b8c: $a7
    ld b, b                                       ; $7b8d: $40
    ld e, c                                       ; $7b8e: $59
    adc h                                         ; $7b8f: $8c
    ld sp, hl                                     ; $7b90: $f9
    ld [hl], h                                    ; $7b91: $74
    ld b, $97                                     ; $7b92: $06 $97
    adc $87                                       ; $7b94: $ce $87
    jr nc, jr_019_7c11                            ; $7b96: $30 $79

    adc l                                         ; $7b98: $8d
    ret c                                         ; $7b99: $d8

    ld h, d                                       ; $7b9a: $62
    jr jr_019_7b35                                ; $7b9b: $18 $98

    db $ec                                        ; $7b9d: $ec
    halt                                          ; $7b9e: $76
    ld [de], a                                    ; $7b9f: $12
    sbc b                                         ; $7ba0: $98
    sbc a                                         ; $7ba1: $9f
    or a                                          ; $7ba2: $b7
    ld h, b                                       ; $7ba3: $60
    ld a, [hl-]                                   ; $7ba4: $3a
    adc d                                         ; $7ba5: $8a
    ld a, [$0575]                                 ; $7ba6: $fa $75 $05
    and a                                         ; $7ba9: $a7
    cp [hl]                                       ; $7baa: $be
    sub a                                         ; $7bab: $97
    ld b, b                                       ; $7bac: $40
    ld l, d                                       ; $7bad: $6a
    ld a, h                                       ; $7bae: $7c
    add sp, -$7d                                  ; $7baf: $e8 $83
    ld [$dd97], sp                                ; $7bb1: $08 $97 $dd
    halt                                          ; $7bb4: $76
    ld hl, $7e99                                  ; $7bb5: $21 $99 $7e
    rst $10                                       ; $7bb8: $d7
    ld h, d                                       ; $7bb9: $62
    add hl, de                                    ; $7bba: $19
    sub a                                         ; $7bbb: $97
    db $ec                                        ; $7bbc: $ec
    halt                                          ; $7bbd: $76
    ld [hl+], a                                   ; $7bbe: $22
    sbc b                                         ; $7bbf: $98
    adc [hl]                                      ; $7bc0: $8e
    add $62                                       ; $7bc1: $c6 $62
    ld a, [hl+]                                   ; $7bc3: $2a
    adc b                                         ; $7bc4: $88
    ei                                            ; $7bc5: $fb
    ld h, [hl]                                    ; $7bc6: $66
    inc b                                         ; $7bc7: $04
    and a                                         ; $7bc8: $a7
    xor a                                         ; $7bc9: $af

jr_019_7bca:
    and [hl]                                      ; $7bca: $a6
    ld d, b                                       ; $7bcb: $50
    ld c, d                                       ; $7bcc: $4a
    ld a, c                                       ; $7bcd: $79
    ld a, [$0465]                                 ; $7bce: $fa $65 $04
    and a                                         ; $7bd1: $a7
    sbc a                                         ; $7bd2: $9f
    and [hl]                                      ; $7bd3: $a6
    ld h, c                                       ; $7bd4: $61
    ld a, [hl-]                                   ; $7bd5: $3a
    ld a, c                                       ; $7bd6: $79
    ei                                            ; $7bd7: $fb
    ld h, [hl]                                    ; $7bd8: $66
    ld [de], a                                    ; $7bd9: $12
    xor b                                         ; $7bda: $a8
    adc a                                         ; $7bdb: $8f
    or [hl]                                       ; $7bdc: $b6
    ld h, c                                       ; $7bdd: $61
    add hl, hl                                    ; $7bde: $29
    adc b                                         ; $7bdf: $88
    ei                                            ; $7be0: $fb
    ld h, a                                       ; $7be1: $67
    ld [hl+], a                                   ; $7be2: $22
    xor b                                         ; $7be3: $a8
    adc a                                         ; $7be4: $8f
    or [hl]                                       ; $7be5: $b6
    ld [hl], d                                    ; $7be6: $72
    add hl, hl                                    ; $7be7: $29
    adc b                                         ; $7be8: $88
    db $ec                                        ; $7be9: $ec
    ld h, a                                       ; $7bea: $67
    ld sp, $7e89                                  ; $7beb: $31 $89 $7e
    add $73                                       ; $7bee: $c6 $73
    jr jr_019_7b89                                ; $7bf0: $18 $97

    call c, Call_019_4077                         ; $7bf2: $dc $77 $40
    adc d                                         ; $7bf5: $8a
    ld a, l                                       ; $7bf6: $7d
    rst $10                                       ; $7bf7: $d7
    ld [hl], h                                    ; $7bf8: $74
    rlca                                          ; $7bf9: $07
    and a                                         ; $7bfa: $a7
    db $dd                                        ; $7bfb: $dd
    ld [hl], a                                    ; $7bfc: $77
    ld b, b                                       ; $7bfd: $40
    ld a, d                                       ; $7bfe: $7a
    ld a, h                                       ; $7bff: $7c
    rst $10                                       ; $7c00: $d7
    ld [hl], l                                    ; $7c01: $75
    ld b, $a7                                     ; $7c02: $06 $a7
    adc $77                                       ; $7c04: $ce $77
    ld d, b                                       ; $7c06: $50
    ld l, d                                       ; $7c07: $6a
    ld l, h                                       ; $7c08: $6c
    rst $20                                       ; $7c09: $e7
    ld [hl], l                                    ; $7c0a: $75
    ld b, $a6                                     ; $7c0b: $06 $a6
    cp [hl]                                       ; $7c0d: $be
    ld [hl], a                                    ; $7c0e: $77
    ld d, b                                       ; $7c0f: $50
    ld l, d                                       ; $7c10: $6a

jr_019_7c11:
    ld l, e                                       ; $7c11: $6b
    add sp, $75                                   ; $7c12: $e8 $75
    dec b                                         ; $7c14: $05
    and [hl]                                      ; $7c15: $a6
    cp a                                          ; $7c16: $bf
    add a                                         ; $7c17: $87
    ld h, b                                       ; $7c18: $60
    ld e, e                                       ; $7c19: $5b
    ld l, d                                       ; $7c1a: $6a
    ld hl, sp+$76                                 ; $7c1b: $f8 $76
    dec b                                         ; $7c1d: $05
    or [hl]                                       ; $7c1e: $b6
    xor a                                         ; $7c1f: $af
    add a                                         ; $7c20: $87
    ld h, b                                       ; $7c21: $60
    ld c, e                                       ; $7c22: $4b
    ld l, d                                       ; $7c23: $6a
    ld sp, hl                                     ; $7c24: $f9
    halt                                          ; $7c25: $76
    inc b                                         ; $7c26: $04
    or a                                          ; $7c27: $b7
    sbc a                                         ; $7c28: $9f
    sub [hl]                                      ; $7c29: $96
    ld [hl], b                                    ; $7c2a: $70
    ld a, [hl-]                                   ; $7c2b: $3a
    ld a, c                                       ; $7c2c: $79
    ld a, [$1267]                                 ; $7c2d: $fa $67 $12
    xor b                                         ; $7c30: $a8
    adc a                                         ; $7c31: $8f
    or [hl]                                       ; $7c32: $b6
    ld [hl], d                                    ; $7c33: $72
    ld a, [de]                                    ; $7c34: $1a
    add a                                         ; $7c35: $87
    db $ec                                        ; $7c36: $ec
    ld h, a                                       ; $7c37: $67
    ld sp, $7e99                                  ; $7c38: $31 $99 $7e
    rst $00                                       ; $7c3b: $c7
    ld [hl], e                                    ; $7c3c: $73
    ld [$dda6], sp                                ; $7c3d: $08 $a6 $dd
    add a                                         ; $7c40: $87
    ld d, b                                       ; $7c41: $50
    ld l, d                                       ; $7c42: $6a
    ld l, h                                       ; $7c43: $6c
    rst $20                                       ; $7c44: $e7
    halt                                          ; $7c45: $76
    dec b                                         ; $7c46: $05
    or a                                          ; $7c47: $b7
    xor a                                         ; $7c48: $af
    add [hl]                                      ; $7c49: $86
    ld h, b                                       ; $7c4a: $60
    dec sp                                        ; $7c4b: $3b
    ld a, c                                       ; $7c4c: $79
    ld a, [$1267]                                 ; $7c4d: $fa $67 $12
    cp b                                          ; $7c50: $b8

Call_019_7c51:
    adc a                                         ; $7c51: $8f

Call_019_7c52:
    or [hl]                                       ; $7c52: $b6
    ld [hl], d                                    ; $7c53: $72
    ld a, [de]                                    ; $7c54: $1a
    sub a                                         ; $7c55: $97
    db $ec                                        ; $7c56: $ec
    ld h, a                                       ; $7c57: $67
    jr nc, @-$64                                  ; $7c58: $30 $9a

    ld l, l                                       ; $7c5a: $6d
    sub $74                                       ; $7c5b: $d6 $74
    rlca                                          ; $7c5d: $07
    and [hl]                                      ; $7c5e: $a6
    adc $87                                       ; $7c5f: $ce $87
    ld d, b                                       ; $7c61: $50
    ld l, e                                       ; $7c62: $6b
    ld l, e                                       ; $7c63: $6b
    ld hl, sp+$66                                 ; $7c64: $f8 $66
    dec b                                         ; $7c66: $05

jr_019_7c67:
    or a                                          ; $7c67: $b7
    xor a                                         ; $7c68: $af
    sub [hl]                                      ; $7c69: $96
    ld h, b                                       ; $7c6a: $60
    dec sp                                        ; $7c6b: $3b
    ld a, c                                       ; $7c6c: $79
    ld a, [$1267]                                 ; $7c6d: $fa $67 $12
    cp b                                          ; $7c70: $b8
    adc a                                         ; $7c71: $8f
    and [hl]                                      ; $7c72: $a6
    ld [hl], d                                    ; $7c73: $72
    ld a, [hl+]                                   ; $7c74: $2a
    add a                                         ; $7c75: $87
    ei                                            ; $7c76: $fb
    ld h, a                                       ; $7c77: $67
    ld hl, $7ea9                                  ; $7c78: $21 $a9 $7e
    add $73                                       ; $7c7b: $c6 $73
    add hl, bc                                    ; $7c7d: $09
    sub [hl]                                      ; $7c7e: $96
    db $dd                                        ; $7c7f: $dd
    ld h, a                                       ; $7c80: $67
    ld b, b                                       ; $7c81: $40
    adc d                                         ; $7c82: $8a
    ld l, l                                       ; $7c83: $6d
    sub $74                                       ; $7c84: $d6 $74
    ld [$cea6], sp                                ; $7c86: $08 $a6 $ce
    ld [hl], a                                    ; $7c89: $77
    ld d, b                                       ; $7c8a: $50
    ld a, e                                       ; $7c8b: $7b
    ld l, h                                       ; $7c8c: $6c
    rst $20                                       ; $7c8d: $e7
    ld [hl], l                                    ; $7c8e: $75
    ld b, $b6                                     ; $7c8f: $06 $b6
    cp [hl]                                       ; $7c91: $be
    ld [hl], a                                    ; $7c92: $77
    ld h, b                                       ; $7c93: $60
    ld e, e                                       ; $7c94: $5b
    ld l, e                                       ; $7c95: $6b
    ld hl, sp+$76                                 ; $7c96: $f8 $76
    dec b                                         ; $7c98: $05
    or [hl]                                       ; $7c99: $b6
    xor a                                         ; $7c9a: $af
    add [hl]                                      ; $7c9b: $86
    ld [hl], b                                    ; $7c9c: $70
    ld c, e                                       ; $7c9d: $4b
    ld a, c                                       ; $7c9e: $79
    ld sp, hl                                     ; $7c9f: $f9
    ld h, a                                       ; $7ca0: $67
    inc bc                                        ; $7ca1: $03
    or a                                          ; $7ca2: $b7
    sbc a                                         ; $7ca3: $9f
    sub [hl]                                      ; $7ca4: $96
    ld [hl], b                                    ; $7ca5: $70
    dec hl                                        ; $7ca6: $2b
    ld a, b                                       ; $7ca7: $78
    ld a, [$1267]                                 ; $7ca8: $fa $67 $12
    cp b                                          ; $7cab: $b8
    adc a                                         ; $7cac: $8f
    and [hl]                                      ; $7cad: $a6
    ld [hl], c                                    ; $7cae: $71
    dec de                                        ; $7caf: $1b
    add a                                         ; $7cb0: $87
    ld a, [$2168]                                 ; $7cb1: $fa $68 $21
    xor c                                         ; $7cb4: $a9
    ld a, [hl]                                    ; $7cb5: $7e
    or [hl]                                       ; $7cb6: $b6
    ld [hl], d                                    ; $7cb7: $72
    ld a, [bc]                                    ; $7cb8: $0a
    sub a                                         ; $7cb9: $97
    db $eb                                        ; $7cba: $eb
    ld h, a                                       ; $7cbb: $67
    jr nc, jr_019_7c67                            ; $7cbc: $30 $a9

    ld l, [hl]                                    ; $7cbe: $6e
    add $83                                       ; $7cbf: $c6 $83
    add hl, bc                                    ; $7cc1: $09
    and [hl]                                      ; $7cc2: $a6
    call c, Call_019_4067                         ; $7cc3: $dc $67 $40
    adc d                                         ; $7cc6: $8a
    ld l, l                                       ; $7cc7: $6d
    rst $10                                       ; $7cc8: $d7
    ld [hl], h                                    ; $7cc9: $74
    ld [$dda6], sp                                ; $7cca: $08 $a6 $dd
    ld [hl], a                                    ; $7ccd: $77
    ld b, b                                       ; $7cce: $40
    ld a, d                                       ; $7ccf: $7a
    adc h                                         ; $7cd0: $8c
    rst $10                                       ; $7cd1: $d7
    ld [hl], l                                    ; $7cd2: $75
    ld b, $b6                                     ; $7cd3: $06 $b6
    cp [hl]                                       ; $7cd5: $be
    add a                                         ; $7cd6: $87
    ld h, c                                       ; $7cd7: $61
    dec sp                                        ; $7cd8: $3b
    adc b                                         ; $7cd9: $88
    ld [$1276], a                                 ; $7cda: $ea $76 $12
    xor b                                         ; $7cdd: $a8
    adc [hl]                                      ; $7cde: $8e
    or a                                          ; $7cdf: $b7
    add d                                         ; $7ce0: $82
    add hl, de                                    ; $7ce1: $19
    sub a                                         ; $7ce2: $97
    call c, Call_019_4077                         ; $7ce3: $dc $77 $40
    ld a, d                                       ; $7ce6: $7a
    ld l, h                                       ; $7ce7: $6c
    add sp, $75                                   ; $7ce8: $e8 $75
    dec b                                         ; $7cea: $05
    or a                                          ; $7ceb: $b7
    xor [hl]                                      ; $7cec: $ae
    sub [hl]                                      ; $7ced: $96
    ld h, c                                       ; $7cee: $61
    dec sp                                        ; $7cef: $3b
    adc b                                         ; $7cf0: $88
    db $eb                                        ; $7cf1: $eb
    ld h, a                                       ; $7cf2: $67
    ld hl, $7d99                                  ; $7cf3: $21 $99 $7d
    rst $00                                       ; $7cf6: $c7
    ld [hl], h                                    ; $7cf7: $74
    rlca                                          ; $7cf8: $07
    and a                                         ; $7cf9: $a7
    adc $87                                       ; $7cfa: $ce $87
    ld d, b                                       ; $7cfc: $50
    ld e, e                                       ; $7cfd: $5b
    ld a, d                                       ; $7cfe: $7a
    jp hl                                         ; $7cff: $e9


    ld h, [hl]                                    ; $7d00: $66
    inc bc                                        ; $7d01: $03
    cp b                                          ; $7d02: $b8
    sbc [hl]                                      ; $7d03: $9e
    and a                                         ; $7d04: $a7
    ld h, d                                       ; $7d05: $62
    add hl, de                                    ; $7d06: $19
    sbc b                                         ; $7d07: $98
    call c, Call_000_3077                         ; $7d08: $dc $77 $30
    ld a, e                                       ; $7d0b: $7b
    ld a, h                                       ; $7d0c: $7c
    ret c                                         ; $7d0d: $d8

    ld h, l                                       ; $7d0e: $65
    inc d                                         ; $7d0f: $14
    cp b                                          ; $7d10: $b8
    xor [hl]                                      ; $7d11: $ae
    and [hl]                                      ; $7d12: $a6
    ld h, c                                       ; $7d13: $61
    ld a, [hl+]                                   ; $7d14: $2a
    adc b                                         ; $7d15: $88
    db $eb                                        ; $7d16: $eb
    ld h, [hl]                                    ; $7d17: $66
    ld sp, $7d9a                                  ; $7d18: $31 $9a $7d
    rst $10                                       ; $7d1b: $d7
    ld h, h                                       ; $7d1c: $64
    rlca                                          ; $7d1d: $07
    or a                                          ; $7d1e: $b7
    cp [hl]                                       ; $7d1f: $be
    add [hl]                                      ; $7d20: $86
    ld d, c                                       ; $7d21: $51
    inc a                                         ; $7d22: $3c
    adc c                                         ; $7d23: $89
    ld a, [$2166]                                 ; $7d24: $fa $66 $21
    xor c                                         ; $7d27: $a9
    adc [hl]                                      ; $7d28: $8e
    add $73                                       ; $7d29: $c6 $73
    add hl, bc                                    ; $7d2b: $09
    and a                                         ; $7d2c: $a7
    db $dd                                        ; $7d2d: $dd
    halt                                          ; $7d2e: $76
    ld d, b                                       ; $7d2f: $50
    ld l, h                                       ; $7d30: $6c
    ld a, d                                       ; $7d31: $7a
    add sp, $66                                   ; $7d32: $e8 $66
    inc de                                        ; $7d34: $13
    cp b                                          ; $7d35: $b8
    adc [hl]                                      ; $7d36: $8e
    and [hl]                                      ; $7d37: $a6
    ld [hl], d                                    ; $7d38: $72
    ld a, [de]                                    ; $7d39: $1a
    sub a                                         ; $7d3a: $97
    db $ec                                        ; $7d3b: $ec
    ld [hl], a                                    ; $7d3c: $77
    ld b, b                                       ; $7d3d: $40
    ld a, e                                       ; $7d3e: $7b
    ld a, h                                       ; $7d3f: $7c
    rst $20                                       ; $7d40: $e7

Call_019_7d41:
    ld [hl], l                                    ; $7d41: $75

Call_019_7d42:
    ld b, $b7                                     ; $7d42: $06 $b7
    cp [hl]                                       ; $7d44: $be
    add a                                         ; $7d45: $87
    ld h, c                                       ; $7d46: $61
    dec sp                                        ; $7d47: $3b
    adc c                                         ; $7d48: $89
    ld a, [$2177]                                 ; $7d49: $fa $77 $21
    xor c                                         ; $7d4c: $a9
    ld a, [hl]                                    ; $7d4d: $7e
    add $74                                       ; $7d4e: $c6 $74
    rlca                                          ; $7d50: $07

Call_019_7d51:
    or a                                          ; $7d51: $b7

Call_019_7d52:
    call Call_019_5076                            ; $7d52: $cd $76 $50
    ld e, e                                       ; $7d55: $5b
    ld a, d                                       ; $7d56: $7a
    jp hl                                         ; $7d57: $e9


    ld h, [hl]                                    ; $7d58: $66
    ld [de], a                                    ; $7d59: $12
    cp c                                          ; $7d5a: $b9
    adc [hl]                                      ; $7d5b: $8e
    and [hl]                                      ; $7d5c: $a6
    ld [hl], d                                    ; $7d5d: $72
    add hl, de                                    ; $7d5e: $19
    and a                                         ; $7d5f: $a7
    call c, Call_019_4077                         ; $7d60: $dc $77 $40
    ld a, e                                       ; $7d63: $7b
    ld a, h                                       ; $7d64: $7c

Call_019_7d65:
    ret c                                         ; $7d65: $d8

    ld [hl], l                                    ; $7d66: $75
    dec b                                         ; $7d67: $05
    cp b                                          ; $7d68: $b8
    xor [hl]                                      ; $7d69: $ae
    sub a                                         ; $7d6a: $97
    ld h, c                                       ; $7d6b: $61
    ld a, [hl-]                                   ; $7d6c: $3a
    adc c                                         ; $7d6d: $89
    ld [$2177], a                                 ; $7d6e: $ea $77 $21
    sbc c                                         ; $7d71: $99
    adc l                                         ; $7d72: $8d
    or a                                          ; $7d73: $b7
    ld [hl], e                                    ; $7d74: $73
    ld [$cda7], sp                                ; $7d75: $08 $a7 $cd
    ld [hl], a                                    ; $7d78: $77
    ld d, b                                       ; $7d79: $50
    ld e, e                                       ; $7d7a: $5b
    ld a, d                                       ; $7d7b: $7a
    add sp, $76                                   ; $7d7c: $e8 $76
    inc de                                        ; $7d7e: $13
    cp b                                          ; $7d7f: $b8
    adc [hl]                                      ; $7d80: $8e
    and a                                         ; $7d81: $a7
    ld [hl], d                                    ; $7d82: $72
    add hl, de                                    ; $7d83: $19
    and a                                         ; $7d84: $a7
    call c, Call_019_4077                         ; $7d85: $dc $77 $40
    ld a, e                                       ; $7d88: $7b
    ld a, h                                       ; $7d89: $7c
    ret c                                         ; $7d8a: $d8

    ld [hl], l                                    ; $7d8b: $75
    dec b                                         ; $7d8c: $05
    or a                                          ; $7d8d: $b7
    xor [hl]                                      ; $7d8e: $ae
    sub a                                         ; $7d8f: $97
    ld h, c                                       ; $7d90: $61
    dec sp                                        ; $7d91: $3b
    sbc c                                         ; $7d92: $99
    db $eb                                        ; $7d93: $eb
    halt                                          ; $7d94: $76
    ld hl, $8d9a                                  ; $7d95: $21 $9a $8d
    rst $00                                       ; $7d98: $c7
    ld h, h                                       ; $7d99: $64
    rlca                                          ; $7d9a: $07
    or a                                          ; $7d9b: $b7
    cp l                                          ; $7d9c: $bd
    add [hl]                                      ; $7d9d: $86
    ld d, b                                       ; $7d9e: $50
    ld c, e                                       ; $7d9f: $4b
    adc d                                         ; $7da0: $8a
    jp hl                                         ; $7da1: $e9


    ld h, [hl]                                    ; $7da2: $66
    ld [de], a                                    ; $7da3: $12
    xor c                                         ; $7da4: $a9
    adc [hl]                                      ; $7da5: $8e
    or a                                          ; $7da6: $b7
    ld h, d                                       ; $7da7: $62
    add hl, de                                    ; $7da8: $19
    xor b                                         ; $7da9: $a8
    call c, Call_019_4077                         ; $7daa: $dc $77 $40
    ld l, e                                       ; $7dad: $6b

jr_019_7dae:
    adc e                                         ; $7dae: $8b
    ret c                                         ; $7daf: $d8

    add l                                         ; $7db0: $85
    inc de                                        ; $7db1: $13
    xor c                                         ; $7db2: $a9
    xor [hl]                                      ; $7db3: $ae
    and a                                         ; $7db4: $a7
    ld h, d                                       ; $7db5: $62
    add hl, de                                    ; $7db6: $19
    xor b                                         ; $7db7: $a8
    db $db                                        ; $7db8: $db
    add [hl]                                      ; $7db9: $86
    ld sp, $8c6a                                  ; $7dba: $31 $6a $8c
    reti                                          ; $7dbd: $d9


    ld [hl], l                                    ; $7dbe: $75
    inc de                                        ; $7dbf: $13
    xor c                                         ; $7dc0: $a9
    xor l                                         ; $7dc1: $ad
    and a                                         ; $7dc2: $a7
    ld h, d                                       ; $7dc3: $62
    rla                                           ; $7dc4: $17
    xor c                                         ; $7dc5: $a9
    call z, Call_019_4086                         ; $7dc6: $cc $86 $40
    ld e, e                                       ; $7dc9: $5b
    sbc e                                         ; $7dca: $9b
    reti                                          ; $7dcb: $d9


    ld [hl], l                                    ; $7dcc: $75
    ld [de], a                                    ; $7dcd: $12
    sbc d                                         ; $7dce: $9a
    sbc l                                         ; $7dcf: $9d
    or a                                          ; $7dd0: $b7
    ld h, e                                       ; $7dd1: $63
    ld d, $b9                                     ; $7dd2: $16 $b9
    call Call_019_4196                            ; $7dd4: $cd $96 $41
    ld c, d                                       ; $7dd7: $4a
    sbc d                                         ; $7dd8: $9a
    jp c, $2175                                   ; $7dd9: $da $75 $21

    adc e                                         ; $7ddc: $8b
    sbc h                                         ; $7ddd: $9c
    ret z                                         ; $7dde: $c8

    ld d, e                                       ; $7ddf: $53
    dec d                                         ; $7de0: $15
    cp d                                          ; $7de1: $ba
    cp l                                          ; $7de2: $bd
    and [hl]                                      ; $7de3: $a6
    ld b, c                                       ; $7de4: $41
    add hl, hl                                    ; $7de5: $29
    cp d                                          ; $7de6: $ba
    res 0, h                                      ; $7de7: $cb $84
    ld hl, $ac6b                                  ; $7de9: $21 $6b $ac
    ret                                           ; $7dec: $c9


    ld d, e                                       ; $7ded: $53
    inc de                                        ; $7dee: $13
    xor d                                         ; $7def: $aa
    xor l                                         ; $7df0: $ad
    or a                                          ; $7df1: $b7
    ld b, d                                       ; $7df2: $42
    jr jr_019_7dae                                ; $7df3: $18 $b9

    call z, Call_000_3185                         ; $7df5: $cc $85 $31
    ld c, e                                       ; $7df8: $4b
    xor e                                         ; $7df9: $ab

jr_019_7dfa:
    jp c, Jump_000_1264                           ; $7dfa: $da $64 $12

    xor e                                         ; $7dfd: $ab
    xor l                                         ; $7dfe: $ad
    or a                                          ; $7dff: $b7
    ld b, e                                       ; $7e00: $43
    ld b, $c9                                     ; $7e01: $06 $c9
    call Call_000_3185                            ; $7e03: $cd $85 $31
    dec sp                                        ; $7e06: $3b
    cp d                                          ; $7e07: $ba

jr_019_7e08:
    jp c, $2164                                   ; $7e08: $da $64 $21

    adc h                                         ; $7e0b: $8c
    xor h                                         ; $7e0c: $ac
    ret z                                         ; $7e0d: $c8

    ld b, e                                       ; $7e0e: $43
    dec d                                         ; $7e0f: $15
    jp z, $95bd                                   ; $7e10: $ca $bd $95

    ld sp, $ba2a                                  ; $7e13: $31 $2a $ba
    db $db                                        ; $7e16: $db
    ld [hl], h                                    ; $7e17: $74
    ld hl, $ac8c                                  ; $7e18: $21 $8c $ac
    ret z                                         ; $7e1b: $c8

    ld d, e                                       ; $7e1c: $53
    dec d                                         ; $7e1d: $15
    cp d                                          ; $7e1e: $ba
    cp l                                          ; $7e1f: $bd
    and [hl]                                      ; $7e20: $a6
    ld sp, $ba29                                  ; $7e21: $31 $29 $ba
    db $db                                        ; $7e24: $db
    ld [hl], h                                    ; $7e25: $74
    ld hl, $ac7b                                  ; $7e26: $21 $7b $ac
    ret z                                         ; $7e29: $c8

    ld d, e                                       ; $7e2a: $53
    inc d                                         ; $7e2b: $14
    cp d                                          ; $7e2c: $ba
    cp l                                          ; $7e2d: $bd
    and [hl]                                      ; $7e2e: $a6
    ld sp, $ba29                                  ; $7e2f: $31 $29 $ba
    db $db                                        ; $7e32: $db
    ld [hl], h                                    ; $7e33: $74
    ld hl, $ac6b                                  ; $7e34: $21 $6b $ac
    reti                                          ; $7e37: $d9


    ld d, e                                       ; $7e38: $53
    inc d                                         ; $7e39: $14
    xor e                                         ; $7e3a: $ab
    cp l                                          ; $7e3b: $bd
    and [hl]                                      ; $7e3c: $a6
    ld b, c                                       ; $7e3d: $41
    jr z, jr_019_7dfa                             ; $7e3e: $28 $ba

    call c, $2174                                 ; $7e40: $dc $74 $21
    ld l, e                                       ; $7e43: $6b
    xor h                                         ; $7e44: $ac
    reti                                          ; $7e45: $d9


    ld h, e                                       ; $7e46: $63
    inc de                                        ; $7e47: $13
    xor e                                         ; $7e48: $ab
    cp l                                          ; $7e49: $bd
    and a                                         ; $7e4a: $a7
    ld b, d                                       ; $7e4b: $42
    jr jr_019_7e08                                ; $7e4c: $18 $ba

    call c, Call_000_2185                         ; $7e4e: $dc $85 $21

Call_019_7e51:
    ld c, e                                       ; $7e51: $4b
    cp e                                          ; $7e52: $bb
    jp c, $1263                                   ; $7e53: $da $63 $12

    sbc e                                         ; $7e56: $9b
    cp l                                          ; $7e57: $bd
    cp b                                          ; $7e58: $b8
    ld b, d                                       ; $7e59: $42
    ld d, $ba                                     ; $7e5a: $16 $ba
    call z, Call_000_3195                         ; $7e5c: $cc $95 $31
    ld a, [hl-]                                   ; $7e5f: $3a
    cp e                                          ; $7e60: $bb
    bit 6, e                                      ; $7e61: $cb $73
    ld hl, $ac7c                                  ; $7e63: $21 $7c $ac
    ret z                                         ; $7e66: $c8

    ld b, d                                       ; $7e67: $42
    inc d                                         ; $7e68: $14
    cp e                                          ; $7e69: $bb
    cp h                                          ; $7e6a: $bc

jr_019_7e6b:
    and [hl]                                      ; $7e6b: $a6
    ld sp, $cb29                                  ; $7e6c: $31 $29 $cb
    res 0, h                                      ; $7e6f: $cb $84
    ld hl, $bb5c                                  ; $7e71: $21 $5c $bb
    ret                                           ; $7e74: $c9


    ld d, e                                       ; $7e75: $53
    ld [de], a                                    ; $7e76: $12
    xor h                                         ; $7e77: $ac
    cp h                                          ; $7e78: $bc
    or a                                          ; $7e79: $b7
    ld b, d                                       ; $7e7a: $42
    ld d, $cb                                     ; $7e7b: $16 $cb
    cp h                                          ; $7e7d: $bc
    sub l                                         ; $7e7e: $95
    ld sp, $cb3a                                  ; $7e7f: $31 $3a $cb
    jp z, $2163                                   ; $7e82: $ca $63 $21

    ld a, l                                       ; $7e85: $7d
    cp h                                          ; $7e86: $bc
    cp b                                          ; $7e87: $b8
    ld b, e                                       ; $7e88: $43
    inc d                                         ; $7e89: $14
    cp h                                          ; $7e8a: $bc
    cp h                                          ; $7e8b: $bc
    and [hl]                                      ; $7e8c: $a6
    ld [hl-], a                                   ; $7e8d: $32
    jr jr_019_7e6b                                ; $7e8e: $18 $db

    res 0, h                                      ; $7e90: $cb $84
    ld sp, $cb5c                                  ; $7e92: $31 $5c $cb
    ret                                           ; $7e95: $c9


    ld h, e                                       ; $7e96: $63
    ld [de], a                                    ; $7e97: $12
    sbc l                                         ; $7e98: $9d
    cp h                                          ; $7e99: $bc
    or a                                          ; $7e9a: $b7
    ld b, d                                       ; $7e9b: $42
    dec d                                         ; $7e9c: $15
    call z, $95bb                                 ; $7e9d: $cc $bb $95
    ld sp, $db2a                                  ; $7ea0: $31 $2a $db
    cp d                                          ; $7ea3: $ba
    ld [hl], h                                    ; $7ea4: $74
    ld hl, $cb6d                                  ; $7ea5: $21 $6d $cb
    cp c                                          ; $7ea8: $b9
    ld d, e                                       ; $7ea9: $53
    inc de                                        ; $7eaa: $13
    xor l                                         ; $7eab: $ad
    cp e                                          ; $7eac: $bb
    and a                                         ; $7ead: $a7
    ld b, d                                       ; $7eae: $42
    ld d, $dc                                     ; $7eaf: $16 $dc
    cp d                                          ; $7eb1: $ba
    sub l                                         ; $7eb2: $95
    ld sp, $db3a                                  ; $7eb3: $31 $3a $db
    cp d                                          ; $7eb6: $ba
    ld [hl], h                                    ; $7eb7: $74
    ld hl, $cb6d                                  ; $7eb8: $21 $6d $cb
    xor c                                         ; $7ebb: $a9
    ld h, e                                       ; $7ebc: $63
    ld [de], a                                    ; $7ebd: $12
    xor l                                         ; $7ebe: $ad
    cp e                                          ; $7ebf: $bb
    and a                                         ; $7ec0: $a7
    ld d, d                                       ; $7ec1: $52
    ld d, $dd                                     ; $7ec2: $16 $dd
    cp d                                          ; $7ec4: $ba
    sub [hl]                                      ; $7ec5: $96
    ld b, c                                       ; $7ec6: $41
    add hl, hl                                    ; $7ec7: $29
    call c, $85b9                                 ; $7ec8: $dc $b9 $85
    ld hl, $db4c                                  ; $7ecb: $21 $4c $db
    xor c                                         ; $7ece: $a9
    ld [hl], h                                    ; $7ecf: $74
    ld de, $cb8d                                  ; $7ed0: $11 $8d $cb
    xor b                                         ; $7ed3: $a8
    ld h, e                                       ; $7ed4: $63
    inc de                                        ; $7ed5: $13
    cp l                                          ; $7ed6: $bd
    cp d                                          ; $7ed7: $ba
    sbc b                                         ; $7ed8: $98
    ld d, c                                       ; $7ed9: $51
    rla                                           ; $7eda: $17
    call c, $97ba                                 ; $7edb: $dc $ba $97
    ld sp, $db3a                                  ; $7ede: $31 $3a $db
    xor c                                         ; $7ee1: $a9
    add l                                         ; $7ee2: $85
    ld hl, $db5c                                  ; $7ee3: $21 $5c $db
    xor c                                         ; $7ee6: $a9
    add h                                         ; $7ee7: $84
    ld [de], a                                    ; $7ee8: $12
    adc l                                         ; $7ee9: $8d
    jp z, $6299                                   ; $7eea: $ca $99 $62

    inc d                                         ; $7eed: $14
    cp l                                          ; $7eee: $bd
    cp d                                          ; $7eef: $ba
    sbc b                                         ; $7ef0: $98
    ld b, c                                       ; $7ef1: $41
    rla                                           ; $7ef2: $17
    db $dd                                        ; $7ef3: $dd
    xor c                                         ; $7ef4: $a9
    sub a                                         ; $7ef5: $97
    ld sp, $dc39                                  ; $7ef6: $31 $39 $dc
    xor c                                         ; $7ef9: $a9
    add l                                         ; $7efa: $85
    ld hl, $db5c                                  ; $7efb: $21 $5c $db
    xor c                                         ; $7efe: $a9
    ld [hl], h                                    ; $7eff: $74
    ld [de], a                                    ; $7f00: $12
    adc l                                         ; $7f01: $8d
    jp z, $6299                                   ; $7f02: $ca $99 $62

    inc d                                         ; $7f05: $14
    cp l                                          ; $7f06: $bd
    cp d                                          ; $7f07: $ba
    sbc b                                         ; $7f08: $98
    ld b, c                                       ; $7f09: $41
    ld h, $dd                                     ; $7f0a: $26 $dd
    cp c                                          ; $7f0c: $b9
    sub a                                         ; $7f0d: $97
    ld sp, $dc39                                  ; $7f0e: $31 $39 $dc
    xor c                                         ; $7f11: $a9
    add l                                         ; $7f12: $85
    ld hl, $ec4b                                  ; $7f13: $21 $4b $ec
    sbc b                                         ; $7f16: $98
    ld [hl], h                                    ; $7f17: $74
    ld [de], a                                    ; $7f18: $12
    ld a, l                                       ; $7f19: $7d
    db $db                                        ; $7f1a: $db
    sbc b                                         ; $7f1b: $98
    ld h, e                                       ; $7f1c: $63
    inc de                                        ; $7f1d: $13
    sbc [hl]                                      ; $7f1e: $9e
    jp z, $5287                                   ; $7f1f: $ca $87 $52

    dec d                                         ; $7f22: $15
    cp [hl]                                       ; $7f23: $be
    ret                                           ; $7f24: $c9


    add a                                         ; $7f25: $87
    ld b, d                                       ; $7f26: $42
    daa                                           ; $7f27: $27
    db $dd                                        ; $7f28: $dd
    cp c                                          ; $7f29: $b9
    halt                                          ; $7f2a: $76
    ld b, c                                       ; $7f2b: $41
    add hl, sp                                    ; $7f2c: $39
    db $ed                                        ; $7f2d: $ed
    xor b                                         ; $7f2e: $a8
    ld [hl], l                                    ; $7f2f: $75
    ld sp, $ec5b                                  ; $7f30: $31 $5b $ec
    sub a                                         ; $7f33: $97
    ld [hl], l                                    ; $7f34: $75
    ld [hl+], a                                   ; $7f35: $22
    ld a, h                                       ; $7f36: $7c
    db $ec                                        ; $7f37: $ec
    add a                                         ; $7f38: $87
    ld h, h                                       ; $7f39: $64
    inc hl                                        ; $7f3a: $23
    adc l                                         ; $7f3b: $8d
    ld [$6377], a                                 ; $7f3c: $ea $77 $63
    inc h                                         ; $7f3f: $24
    xor [hl]                                      ; $7f40: $ae
    reti                                          ; $7f41: $d9


    ld [hl], a                                    ; $7f42: $77
    ld d, e                                       ; $7f43: $53
    dec h                                         ; $7f44: $25
    cp [hl]                                       ; $7f45: $be
    ret                                           ; $7f46: $c9


    halt                                          ; $7f47: $76
    ld d, d                                       ; $7f48: $52
    ld h, $de                                     ; $7f49: $26 $de
    ret z                                         ; $7f4b: $c8

    ld h, [hl]                                    ; $7f4c: $66
    ld d, d                                       ; $7f4d: $52
    jr z, @-$10                                   ; $7f4e: $28 $ee

    or a                                          ; $7f50: $b7
    ld h, [hl]                                    ; $7f51: $66
    ld b, d                                       ; $7f52: $42
    ld a, [hl-]                                   ; $7f53: $3a
    xor $a7                                       ; $7f54: $ee $a7
    ld h, [hl]                                    ; $7f56: $66
    ld [hl-], a                                   ; $7f57: $32
    ld e, e                                       ; $7f58: $5b
    db $fd                                        ; $7f59: $fd
    sub [hl]                                      ; $7f5a: $96
    ld h, l                                       ; $7f5b: $65
    ld [hl-], a                                   ; $7f5c: $32
    ld l, h                                       ; $7f5d: $6c
    db $fc                                        ; $7f5e: $fc
    halt                                          ; $7f5f: $76
    ld h, l                                       ; $7f60: $65
    ld [hl+], a                                   ; $7f61: $22
    adc [hl]                                      ; $7f62: $8e
    ei                                            ; $7f63: $fb
    halt                                          ; $7f64: $76

jr_019_7f65:
    ld h, h                                       ; $7f65: $64
    inc h                                         ; $7f66: $24
    xor [hl]                                      ; $7f67: $ae
    jp hl                                         ; $7f68: $e9


    ld h, [hl]                                    ; $7f69: $66
    ld h, e                                       ; $7f6a: $63
    dec h                                         ; $7f6b: $25
    cp a                                          ; $7f6c: $bf
    ret c                                         ; $7f6d: $d8

    ld h, [hl]                                    ; $7f6e: $66
    ld d, d                                       ; $7f6f: $52
    daa                                           ; $7f70: $27
    rst $18                                       ; $7f71: $df
    ret z                                         ; $7f72: $c8

    ld h, [hl]                                    ; $7f73: $66
    ld d, d                                       ; $7f74: $52
    jr c, jr_019_7f65                             ; $7f75: $38 $ee

    and a                                         ; $7f77: $a7
    ld h, [hl]                                    ; $7f78: $66
    ld b, d                                       ; $7f79: $42
    ld c, d                                       ; $7f7a: $4a
    db $ed                                        ; $7f7b: $ed
    sub [hl]                                      ; $7f7c: $96
    ld h, l                                       ; $7f7d: $65
    ld [hl-], a                                   ; $7f7e: $32
    ld l, h                                       ; $7f7f: $6c
    db $ed                                        ; $7f80: $ed
    add [hl]                                      ; $7f81: $86
    ld h, l                                       ; $7f82: $65
    inc sp                                        ; $7f83: $33
    ld a, l                                       ; $7f84: $7d
    db $eb                                        ; $7f85: $eb
    halt                                          ; $7f86: $76
    ld d, h                                       ; $7f87: $54
    inc h                                         ; $7f88: $24
    sbc [hl]                                      ; $7f89: $9e
    ld [$5475], a                                 ; $7f8a: $ea $75 $54
    dec h                                         ; $7f8d: $25
    cp [hl]                                       ; $7f8e: $be
    reti                                          ; $7f8f: $d9


    ld h, l                                       ; $7f90: $65
    ld d, e                                       ; $7f91: $53
    scf                                           ; $7f92: $37
    adc $c8                                       ; $7f93: $ce $c8
    ld d, l                                       ; $7f95: $55
    ld b, e                                       ; $7f96: $43
    ld c, b                                       ; $7f97: $48
    sbc $b7                                       ; $7f98: $de $b7
    ld d, l                                       ; $7f9a: $55
    ld b, e                                       ; $7f9b: $43
    ld e, d                                       ; $7f9c: $5a
    xor $a6                                       ; $7f9d: $ee $a6
    ld d, l                                       ; $7f9f: $55
    inc sp                                        ; $7fa0: $33
    ld l, e                                       ; $7fa1: $6b
    db $ed                                        ; $7fa2: $ed
    add [hl]                                      ; $7fa3: $86
    ld d, l                                       ; $7fa4: $55
    inc sp                                        ; $7fa5: $33
    adc h                                         ; $7fa6: $8c
    db $ec                                        ; $7fa7: $ec
    ld [hl], l                                    ; $7fa8: $75
    ld d, h                                       ; $7fa9: $54
    inc [hl]                                      ; $7faa: $34
    sbc l                                         ; $7fab: $9d
    ld [$5465], a                                 ; $7fac: $ea $65 $54
    ld [hl], $be                                  ; $7faf: $36 $be
    reti                                          ; $7fb1: $d9


    ld h, l                                       ; $7fb2: $65
    ld d, e                                       ; $7fb3: $53
    scf                                           ; $7fb4: $37
    adc $c8                                       ; $7fb5: $ce $c8
    ld d, l                                       ; $7fb7: $55
    ld b, e                                       ; $7fb8: $43
    ld c, c                                       ; $7fb9: $49
    sbc $b7                                       ; $7fba: $de $b7
    ld d, l                                       ; $7fbc: $55
    inc sp                                        ; $7fbd: $33
    ld l, d                                       ; $7fbe: $6a
    db $ed                                        ; $7fbf: $ed
    sub [hl]                                      ; $7fc0: $96
    ld d, h                                       ; $7fc1: $54
    inc sp                                        ; $7fc2: $33
    ld a, h                                       ; $7fc3: $7c
    db $ec                                        ; $7fc4: $ec
    add l                                         ; $7fc5: $85
    ld d, h                                       ; $7fc6: $54
    inc [hl]                                      ; $7fc7: $34
    sbc l                                         ; $7fc8: $9d
    db $eb                                        ; $7fc9: $eb
    ld [hl], l                                    ; $7fca: $75
    ld d, e                                       ; $7fcb: $53
    ld [hl], $ae                                  ; $7fcc: $36 $ae
    reti                                          ; $7fce: $d9


    ld h, l                                       ; $7fcf: $65
    ld b, e                                       ; $7fd0: $43
    scf                                           ; $7fd1: $37
    adc $c8                                       ; $7fd2: $ce $c8
    ld h, l                                       ; $7fd4: $65
    ld b, e                                       ; $7fd5: $43
    ld c, c                                       ; $7fd6: $49
    sbc $b7                                       ; $7fd7: $de $b7
    ld d, l                                       ; $7fd9: $55
    inc sp                                        ; $7fda: $33
    ld l, d                                       ; $7fdb: $6a
    db $ed                                        ; $7fdc: $ed
    sub [hl]                                      ; $7fdd: $96
    ld d, h                                       ; $7fde: $54
    inc [hl]                                      ; $7fdf: $34
    adc h                                         ; $7fe0: $8c
    db $ec                                        ; $7fe1: $ec
    add [hl]                                      ; $7fe2: $86
    ld d, h                                       ; $7fe3: $54
    dec [hl]                                      ; $7fe4: $35
    sbc l                                         ; $7fe5: $9d
    db $eb                                        ; $7fe6: $eb
    ld [hl], l                                    ; $7fe7: $75
    ld d, e                                       ; $7fe8: $53
    ld [hl], $ad                                  ; $7fe9: $36 $ad
    jp c, Jump_019_4365                           ; $7feb: $da $65 $43

    scf                                           ; $7fee: $37
    cp [hl]                                       ; $7fef: $be
    ret z                                         ; $7ff0: $c8

    ld h, l                                       ; $7ff1: $65
    ld b, e                                       ; $7ff2: $43
    ld c, c                                       ; $7ff3: $49
    adc $b8                                       ; $7ff4: $ce $b8
    ld h, l                                       ; $7ff6: $65
    inc sp                                        ; $7ff7: $33
    ld e, d                                       ; $7ff8: $5a
    db $dd                                        ; $7ff9: $dd
    and a                                         ; $7ffa: $a7
    ld d, h                                       ; $7ffb: $54
    inc sp                                        ; $7ffc: $33
    ld a, e                                       ; $7ffd: $7b
    db $ec                                        ; $7ffe: $ec
    add [hl]                                      ; $7fff: $86
