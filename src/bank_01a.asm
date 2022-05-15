; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    db $65

    inc [hl]                                      ; $4001: $34
    adc h                                         ; $4002: $8c
    ret                                           ; $4003: $c9


    add a                                         ; $4004: $87
    ld h, l                                       ; $4005: $65
    dec [hl]                                      ; $4006: $35
    sbc e                                         ; $4007: $9b
    xor c                                         ; $4008: $a9
    add a                                         ; $4009: $87
    ld h, h                                       ; $400a: $64
    ld b, [hl]                                    ; $400b: $46
    xor e                                         ; $400c: $ab
    xor b                                         ; $400d: $a8
    add a                                         ; $400e: $87
    ld h, h                                       ; $400f: $64
    ld b, a                                       ; $4010: $47
    xor e                                         ; $4011: $ab
    sbc b                                         ; $4012: $98
    add a                                         ; $4013: $87
    ld h, h                                       ; $4014: $64
    ld c, b                                       ; $4015: $48
    cp e                                          ; $4016: $bb
    sbc b                                         ; $4017: $98
    add a                                         ; $4018: $87
    ld d, h                                       ; $4019: $54
    ld e, c                                       ; $401a: $59
    cp d                                          ; $401b: $ba
    sbc b                                         ; $401c: $98
    add a                                         ; $401d: $87
    ld d, h                                       ; $401e: $54
    ld l, c                                       ; $401f: $69
    cp d                                          ; $4020: $ba
    sbc b                                         ; $4021: $98
    add [hl]                                      ; $4022: $86
    ld b, h                                       ; $4023: $44
    ld a, d                                       ; $4024: $7a
    cp d                                          ; $4025: $ba
    adc b                                         ; $4026: $88
    halt                                          ; $4027: $76
    ld b, h                                       ; $4028: $44
    ld a, d                                       ; $4029: $7a
    cp c                                          ; $402a: $b9
    adc b                                         ; $402b: $88
    ld [hl], l                                    ; $402c: $75
    ld b, l                                       ; $402d: $45
    adc d                                         ; $402e: $8a
    xor c                                         ; $402f: $a9
    adc b                                         ; $4030: $88
    ld [hl], l                                    ; $4031: $75
    ld b, [hl]                                    ; $4032: $46
    sbc e                                         ; $4033: $9b
    xor c                                         ; $4034: $a9
    adc b                                         ; $4035: $88
    ld h, l                                       ; $4036: $65
    ld b, [hl]                                    ; $4037: $46
    xor e                                         ; $4038: $ab
    xor b                                         ; $4039: $a8
    add a                                         ; $403a: $87
    ld h, h                                       ; $403b: $64
    ld b, a                                       ; $403c: $47
    xor e                                         ; $403d: $ab
    sbc b                                         ; $403e: $98
    add a                                         ; $403f: $87
    ld h, h                                       ; $4040: $64
    ld e, b                                       ; $4041: $58
    cp d                                          ; $4042: $ba
    sbc b                                         ; $4043: $98
    add a                                         ; $4044: $87
    ld d, h                                       ; $4045: $54
    ld l, c                                       ; $4046: $69
    cp d                                          ; $4047: $ba
    sbc b                                         ; $4048: $98
    add a                                         ; $4049: $87
    ld d, h                                       ; $404a: $54
    ld l, d                                       ; $404b: $6a
    cp d                                          ; $404c: $ba
    adc b                                         ; $404d: $88
    add [hl]                                      ; $404e: $86
    ld d, h                                       ; $404f: $54
    adc d                                         ; $4050: $8a
    xor c                                         ; $4051: $a9
    adc b                                         ; $4052: $88
    halt                                          ; $4053: $76
    ld b, l                                       ; $4054: $45
    ld a, d                                       ; $4055: $7a
    xor c                                         ; $4056: $a9
    adc b                                         ; $4057: $88
    halt                                          ; $4058: $76
    ld b, l                                       ; $4059: $45
    adc d                                         ; $405a: $8a
    xor c                                         ; $405b: $a9
    adc b                                         ; $405c: $88
    ld [hl], l                                    ; $405d: $75
    ld b, l                                       ; $405e: $45
    sbc d                                         ; $405f: $9a
    xor c                                         ; $4060: $a9
    adc b                                         ; $4061: $88
    ld [hl], l                                    ; $4062: $75
    ld b, [hl]                                    ; $4063: $46
    sbc d                                         ; $4064: $9a
    xor b                                         ; $4065: $a8
    adc b                                         ; $4066: $88
    ld [hl], l                                    ; $4067: $75
    ld b, [hl]                                    ; $4068: $46
    sbc d                                         ; $4069: $9a
    sbc b                                         ; $406a: $98
    add a                                         ; $406b: $87
    ld h, l                                       ; $406c: $65
    ld b, a                                       ; $406d: $47
    xor d                                         ; $406e: $aa
    sbc b                                         ; $406f: $98
    add a                                         ; $4070: $87
    ld h, h                                       ; $4071: $64
    ld d, a                                       ; $4072: $57
    xor d                                         ; $4073: $aa
    sbc b                                         ; $4074: $98
    add a                                         ; $4075: $87
    ld h, h                                       ; $4076: $64
    ld e, b                                       ; $4077: $58
    xor d                                         ; $4078: $aa
    sbc b                                         ; $4079: $98
    add a                                         ; $407a: $87
    ld h, h                                       ; $407b: $64
    ld e, b                                       ; $407c: $58
    xor d                                         ; $407d: $aa
    sbc b                                         ; $407e: $98
    add a                                         ; $407f: $87
    ld h, h                                       ; $4080: $64
    ld e, c                                       ; $4081: $59
    xor d                                         ; $4082: $aa
    adc b                                         ; $4083: $88
    add a                                         ; $4084: $87
    ld d, h                                       ; $4085: $54
    ld l, c                                       ; $4086: $69
    xor d                                         ; $4087: $aa
    adc b                                         ; $4088: $88
    add a                                         ; $4089: $87
    ld d, h                                       ; $408a: $54
    ld l, d                                       ; $408b: $6a
    xor c                                         ; $408c: $a9
    adc b                                         ; $408d: $88
    add a                                         ; $408e: $87
    ld d, h                                       ; $408f: $54
    adc d                                         ; $4090: $8a
    xor c                                         ; $4091: $a9
    adc b                                         ; $4092: $88
    add [hl]                                      ; $4093: $86
    ld b, l                                       ; $4094: $45
    adc d                                         ; $4095: $8a
    xor c                                         ; $4096: $a9
    adc b                                         ; $4097: $88
    add [hl]                                      ; $4098: $86
    ld b, l                                       ; $4099: $45
    adc d                                         ; $409a: $8a
    xor c                                         ; $409b: $a9
    adc b                                         ; $409c: $88
    halt                                          ; $409d: $76
    ld b, l                                       ; $409e: $45
    sbc d                                         ; $409f: $9a
    xor c                                         ; $40a0: $a9
    adc b                                         ; $40a1: $88
    ld [hl], l                                    ; $40a2: $75
    ld b, [hl]                                    ; $40a3: $46
    sbc d                                         ; $40a4: $9a
    xor b                                         ; $40a5: $a8
    adc b                                         ; $40a6: $88
    ld [hl], l                                    ; $40a7: $75
    ld b, [hl]                                    ; $40a8: $46
    sbc d                                         ; $40a9: $9a
    sbc b                                         ; $40aa: $98
    adc b                                         ; $40ab: $88
    ld [hl], h                                    ; $40ac: $74
    ld b, a                                       ; $40ad: $47
    xor d                                         ; $40ae: $aa
    sbc b                                         ; $40af: $98
    adc b                                         ; $40b0: $88
    ld h, h                                       ; $40b1: $64
    ld c, b                                       ; $40b2: $48
    xor d                                         ; $40b3: $aa
    sbc b                                         ; $40b4: $98
    adc b                                         ; $40b5: $88
    ld h, h                                       ; $40b6: $64
    ld e, b                                       ; $40b7: $58
    xor d                                         ; $40b8: $aa
    sbc b                                         ; $40b9: $98
    add a                                         ; $40ba: $87
    ld d, h                                       ; $40bb: $54
    ld e, b                                       ; $40bc: $58
    xor d                                         ; $40bd: $aa
    sbc b                                         ; $40be: $98
    add a                                         ; $40bf: $87
    ld d, h                                       ; $40c0: $54
    ld l, c                                       ; $40c1: $69
    xor d                                         ; $40c2: $aa
    adc b                                         ; $40c3: $88
    add a                                         ; $40c4: $87
    ld d, h                                       ; $40c5: $54
    ld l, c                                       ; $40c6: $69
    xor c                                         ; $40c7: $a9
    adc b                                         ; $40c8: $88
    add [hl]                                      ; $40c9: $86
    ld b, h                                       ; $40ca: $44
    ld a, c                                       ; $40cb: $79
    xor c                                         ; $40cc: $a9
    adc b                                         ; $40cd: $88
    add [hl]                                      ; $40ce: $86
    ld b, l                                       ; $40cf: $45
    adc d                                         ; $40d0: $8a
    xor c                                         ; $40d1: $a9
    adc b                                         ; $40d2: $88
    halt                                          ; $40d3: $76
    ld b, l                                       ; $40d4: $45
    adc d                                         ; $40d5: $8a
    xor c                                         ; $40d6: $a9
    adc b                                         ; $40d7: $88
    ld [hl], l                                    ; $40d8: $75
    ld b, [hl]                                    ; $40d9: $46
    sbc d                                         ; $40da: $9a
    xor c                                         ; $40db: $a9
    adc b                                         ; $40dc: $88
    ld [hl], l                                    ; $40dd: $75
    ld b, [hl]                                    ; $40de: $46
    sbc d                                         ; $40df: $9a
    sbc b                                         ; $40e0: $98
    adc b                                         ; $40e1: $88
    ld h, h                                       ; $40e2: $64
    ld b, a                                       ; $40e3: $47
    sbc d                                         ; $40e4: $9a
    sbc b                                         ; $40e5: $98
    adc b                                         ; $40e6: $88
    ld h, h                                       ; $40e7: $64
    ld d, a                                       ; $40e8: $57
    xor d                                         ; $40e9: $aa
    sbc b                                         ; $40ea: $98
    add a                                         ; $40eb: $87
    ld h, h                                       ; $40ec: $64
    ld e, b                                       ; $40ed: $58
    xor d                                         ; $40ee: $aa
    sbc b                                         ; $40ef: $98
    add a                                         ; $40f0: $87
    ld d, h                                       ; $40f1: $54
    ld l, c                                       ; $40f2: $69
    xor d                                         ; $40f3: $aa
    sbc b                                         ; $40f4: $98
    add a                                         ; $40f5: $87
    ld d, h                                       ; $40f6: $54
    ld l, c                                       ; $40f7: $69
    xor d                                         ; $40f8: $aa
    sbc b                                         ; $40f9: $98
    add a                                         ; $40fa: $87
    ld d, h                                       ; $40fb: $54
    ld l, c                                       ; $40fc: $69
    xor c                                         ; $40fd: $a9
    sbc b                                         ; $40fe: $98
    add [hl]                                      ; $40ff: $86
    ld b, h                                       ; $4100: $44
    ld a, d                                       ; $4101: $7a
    xor c                                         ; $4102: $a9
    sbc b                                         ; $4103: $98
    add [hl]                                      ; $4104: $86
    ld b, l                                       ; $4105: $45
    ld a, d                                       ; $4106: $7a
    xor c                                         ; $4107: $a9
    adc b                                         ; $4108: $88
    halt                                          ; $4109: $76
    ld b, l                                       ; $410a: $45
    adc d                                         ; $410b: $8a
    xor c                                         ; $410c: $a9
    adc b                                         ; $410d: $88
    halt                                          ; $410e: $76
    ld b, l                                       ; $410f: $45
    adc d                                         ; $4110: $8a
    xor c                                         ; $4111: $a9
    adc b                                         ; $4112: $88
    ld [hl], l                                    ; $4113: $75
    ld b, l                                       ; $4114: $45
    adc d                                         ; $4115: $8a
    xor c                                         ; $4116: $a9
    adc b                                         ; $4117: $88
    ld [hl], l                                    ; $4118: $75
    ld b, [hl]                                    ; $4119: $46
    sbc d                                         ; $411a: $9a
    xor c                                         ; $411b: $a9
    adc b                                         ; $411c: $88
    ld [hl], l                                    ; $411d: $75
    ld b, [hl]                                    ; $411e: $46
    sbc d                                         ; $411f: $9a
    xor c                                         ; $4120: $a9
    adc b                                         ; $4121: $88
    ld [hl], l                                    ; $4122: $75
    ld b, [hl]                                    ; $4123: $46
    sbc d                                         ; $4124: $9a
    xor b                                         ; $4125: $a8
    adc b                                         ; $4126: $88
    ld h, h                                       ; $4127: $64
    ld b, a                                       ; $4128: $47
    xor d                                         ; $4129: $aa
    xor b                                         ; $412a: $a8
    adc b                                         ; $412b: $88
    ld h, h                                       ; $412c: $64
    ld b, a                                       ; $412d: $47
    xor d                                         ; $412e: $aa
    sbc b                                         ; $412f: $98
    adc b                                         ; $4130: $88
    ld h, h                                       ; $4131: $64
    ld b, a                                       ; $4132: $47
    xor d                                         ; $4133: $aa
    sbc b                                         ; $4134: $98
    add a                                         ; $4135: $87
    ld h, h                                       ; $4136: $64
    ld e, b                                       ; $4137: $58
    xor d                                         ; $4138: $aa
    sbc b                                         ; $4139: $98
    add a                                         ; $413a: $87
    ld d, h                                       ; $413b: $54
    ld e, b                                       ; $413c: $58
    xor d                                         ; $413d: $aa
    sbc b                                         ; $413e: $98
    add a                                         ; $413f: $87
    ld d, h                                       ; $4140: $54
    ld e, b                                       ; $4141: $58
    xor d                                         ; $4142: $aa
    sbc b                                         ; $4143: $98
    add a                                         ; $4144: $87
    ld d, h                                       ; $4145: $54
    ld e, c                                       ; $4146: $59
    xor d                                         ; $4147: $aa
    sbc b                                         ; $4148: $98
    add a                                         ; $4149: $87
    ld d, h                                       ; $414a: $54
    ld l, c                                       ; $414b: $69
    xor d                                         ; $414c: $aa
    sbc b                                         ; $414d: $98
    add a                                         ; $414e: $87
    ld b, h                                       ; $414f: $44
    ld l, c                                       ; $4150: $69
    xor d                                         ; $4151: $aa
    sbc b                                         ; $4152: $98
    add [hl]                                      ; $4153: $86
    ld b, h                                       ; $4154: $44
    ld a, c                                       ; $4155: $79
    xor d                                         ; $4156: $aa
    adc b                                         ; $4157: $88
    add [hl]                                      ; $4158: $86
    ld b, h                                       ; $4159: $44
    ld a, d                                       ; $415a: $7a
    xor d                                         ; $415b: $aa
    adc b                                         ; $415c: $88
    add [hl]                                      ; $415d: $86
    ld b, h                                       ; $415e: $44
    ld a, d                                       ; $415f: $7a
    xor c                                         ; $4160: $a9
    adc b                                         ; $4161: $88
    add [hl]                                      ; $4162: $86
    ld b, l                                       ; $4163: $45
    adc d                                         ; $4164: $8a
    xor c                                         ; $4165: $a9
    adc b                                         ; $4166: $88
    ld [hl], l                                    ; $4167: $75
    ld b, l                                       ; $4168: $45
    adc d                                         ; $4169: $8a
    xor c                                         ; $416a: $a9
    adc b                                         ; $416b: $88
    ld [hl], l                                    ; $416c: $75
    ld b, l                                       ; $416d: $45
    adc d                                         ; $416e: $8a
    xor c                                         ; $416f: $a9
    adc b                                         ; $4170: $88
    ld [hl], l                                    ; $4171: $75
    ld b, l                                       ; $4172: $45
    adc d                                         ; $4173: $8a
    xor c                                         ; $4174: $a9
    adc b                                         ; $4175: $88
    ld [hl], l                                    ; $4176: $75
    ld b, [hl]                                    ; $4177: $46
    sbc d                                         ; $4178: $9a
    xor c                                         ; $4179: $a9
    adc b                                         ; $417a: $88
    ld [hl], h                                    ; $417b: $74
    ld b, [hl]                                    ; $417c: $46
    sbc d                                         ; $417d: $9a
    xor c                                         ; $417e: $a9
    adc b                                         ; $417f: $88
    ld h, h                                       ; $4180: $64
    ld b, [hl]                                    ; $4181: $46
    sbc e                                         ; $4182: $9b
    xor c                                         ; $4183: $a9
    adc b                                         ; $4184: $88
    ld h, h                                       ; $4185: $64
    ld b, a                                       ; $4186: $47
    xor e                                         ; $4187: $ab
    xor b                                         ; $4188: $a8
    adc b                                         ; $4189: $88
    ld h, h                                       ; $418a: $64
    ld b, a                                       ; $418b: $47
    xor d                                         ; $418c: $aa
    sbc b                                         ; $418d: $98
    adc b                                         ; $418e: $88
    ld h, h                                       ; $418f: $64
    ld e, b                                       ; $4190: $58
    xor d                                         ; $4191: $aa
    sbc b                                         ; $4192: $98
    add a                                         ; $4193: $87
    ld d, h                                       ; $4194: $54
    ld e, b                                       ; $4195: $58
    xor d                                         ; $4196: $aa
    sbc b                                         ; $4197: $98
    add a                                         ; $4198: $87
    ld d, h                                       ; $4199: $54
    ld e, b                                       ; $419a: $58
    cp d                                          ; $419b: $ba
    sbc b                                         ; $419c: $98
    add a                                         ; $419d: $87
    ld d, h                                       ; $419e: $54
    ld e, c                                       ; $419f: $59
    cp d                                          ; $41a0: $ba
    sbc b                                         ; $41a1: $98
    add a                                         ; $41a2: $87
    ld d, h                                       ; $41a3: $54
    ld l, c                                       ; $41a4: $69
    cp d                                          ; $41a5: $ba
    sbc b                                         ; $41a6: $98
    add a                                         ; $41a7: $87
    ld b, h                                       ; $41a8: $44
    ld l, c                                       ; $41a9: $69
    cp d                                          ; $41aa: $ba
    adc b                                         ; $41ab: $88
    add [hl]                                      ; $41ac: $86
    ld b, h                                       ; $41ad: $44
    ld a, d                                       ; $41ae: $7a
    cp d                                          ; $41af: $ba
    adc b                                         ; $41b0: $88
    add [hl]                                      ; $41b1: $86
    ld b, h                                       ; $41b2: $44
    ld a, d                                       ; $41b3: $7a
    xor c                                         ; $41b4: $a9
    adc b                                         ; $41b5: $88
    add [hl]                                      ; $41b6: $86
    ld b, h                                       ; $41b7: $44
    adc d                                         ; $41b8: $8a
    xor c                                         ; $41b9: $a9
    adc b                                         ; $41ba: $88
    ld [hl], l                                    ; $41bb: $75
    dec [hl]                                      ; $41bc: $35
    adc d                                         ; $41bd: $8a
    xor c                                         ; $41be: $a9
    adc b                                         ; $41bf: $88
    add l                                         ; $41c0: $85
    ld b, l                                       ; $41c1: $45
    adc d                                         ; $41c2: $8a
    xor c                                         ; $41c3: $a9
    adc b                                         ; $41c4: $88
    ld [hl], l                                    ; $41c5: $75
    ld b, [hl]                                    ; $41c6: $46
    sbc d                                         ; $41c7: $9a
    xor c                                         ; $41c8: $a9
    adc b                                         ; $41c9: $88
    ld [hl], h                                    ; $41ca: $74
    ld b, [hl]                                    ; $41cb: $46
    sbc d                                         ; $41cc: $9a
    xor c                                         ; $41cd: $a9
    adc b                                         ; $41ce: $88
    ld h, h                                       ; $41cf: $64
    ld b, a                                       ; $41d0: $47
    xor e                                         ; $41d1: $ab
    xor b                                         ; $41d2: $a8
    adc b                                         ; $41d3: $88
    ld h, h                                       ; $41d4: $64
    ld b, a                                       ; $41d5: $47
    xor d                                         ; $41d6: $aa
    xor b                                         ; $41d7: $a8
    adc b                                         ; $41d8: $88
    ld h, h                                       ; $41d9: $64
    ld b, a                                       ; $41da: $47
    xor d                                         ; $41db: $aa
    sbc b                                         ; $41dc: $98
    add a                                         ; $41dd: $87
    ld h, h                                       ; $41de: $64
    ld e, b                                       ; $41df: $58
    xor d                                         ; $41e0: $aa
    sbc b                                         ; $41e1: $98
    add a                                         ; $41e2: $87
    ld d, h                                       ; $41e3: $54
    ld e, b                                       ; $41e4: $58
    xor d                                         ; $41e5: $aa
    sbc b                                         ; $41e6: $98
    add a                                         ; $41e7: $87
    ld d, h                                       ; $41e8: $54
    ld e, c                                       ; $41e9: $59
    cp d                                          ; $41ea: $ba
    sbc b                                         ; $41eb: $98
    add a                                         ; $41ec: $87
    ld d, h                                       ; $41ed: $54
    ld l, c                                       ; $41ee: $69
    cp d                                          ; $41ef: $ba
    sbc b                                         ; $41f0: $98
    add a                                         ; $41f1: $87
    ld d, h                                       ; $41f2: $54
    ld l, c                                       ; $41f3: $69
    cp d                                          ; $41f4: $ba
    sbc b                                         ; $41f5: $98
    add a                                         ; $41f6: $87
    ld b, h                                       ; $41f7: $44
    ld a, d                                       ; $41f8: $7a
    cp d                                          ; $41f9: $ba
    adc b                                         ; $41fa: $88
    add [hl]                                      ; $41fb: $86
    ld b, h                                       ; $41fc: $44
    ld a, d                                       ; $41fd: $7a
    cp d                                          ; $41fe: $ba
    adc b                                         ; $41ff: $88
    add [hl]                                      ; $4200: $86
    ld b, h                                       ; $4201: $44
    ld a, d                                       ; $4202: $7a
    xor c                                         ; $4203: $a9
    adc b                                         ; $4204: $88
    add [hl]                                      ; $4205: $86
    ld b, l                                       ; $4206: $45
    adc d                                         ; $4207: $8a
    xor c                                         ; $4208: $a9
    adc b                                         ; $4209: $88
    ld [hl], l                                    ; $420a: $75
    ld b, l                                       ; $420b: $45
    adc d                                         ; $420c: $8a
    xor c                                         ; $420d: $a9
    adc b                                         ; $420e: $88
    ld [hl], l                                    ; $420f: $75
    ld b, l                                       ; $4210: $45
    sbc d                                         ; $4211: $9a
    xor c                                         ; $4212: $a9
    adc b                                         ; $4213: $88
    ld [hl], l                                    ; $4214: $75
    ld b, [hl]                                    ; $4215: $46
    sbc d                                         ; $4216: $9a
    xor c                                         ; $4217: $a9
    adc b                                         ; $4218: $88
    ld [hl], h                                    ; $4219: $74
    ld b, [hl]                                    ; $421a: $46
    sbc d                                         ; $421b: $9a
    xor b                                         ; $421c: $a8
    adc b                                         ; $421d: $88
    ld h, h                                       ; $421e: $64
    ld b, a                                       ; $421f: $47
    sbc d                                         ; $4220: $9a
    xor b                                         ; $4221: $a8
    adc b                                         ; $4222: $88
    ld h, h                                       ; $4223: $64
    ld b, a                                       ; $4224: $47
    xor d                                         ; $4225: $aa
    sbc b                                         ; $4226: $98
    adc b                                         ; $4227: $88
    ld h, h                                       ; $4228: $64
    ld d, a                                       ; $4229: $57
    xor d                                         ; $422a: $aa
    sbc b                                         ; $422b: $98
    adc b                                         ; $422c: $88
    ld h, h                                       ; $422d: $64
    ld e, b                                       ; $422e: $58
    xor d                                         ; $422f: $aa
    sbc b                                         ; $4230: $98
    add a                                         ; $4231: $87
    ld d, h                                       ; $4232: $54
    ld e, b                                       ; $4233: $58
    xor d                                         ; $4234: $aa
    sbc b                                         ; $4235: $98
    add a                                         ; $4236: $87
    ld d, h                                       ; $4237: $54
    ld e, b                                       ; $4238: $58
    xor d                                         ; $4239: $aa
    sbc b                                         ; $423a: $98
    add a                                         ; $423b: $87
    ld d, h                                       ; $423c: $54
    ld e, c                                       ; $423d: $59
    xor d                                         ; $423e: $aa
    sbc b                                         ; $423f: $98
    add a                                         ; $4240: $87
    ld d, h                                       ; $4241: $54
    ld l, c                                       ; $4242: $69
    xor d                                         ; $4243: $aa
    sbc b                                         ; $4244: $98
    add a                                         ; $4245: $87
    ld d, h                                       ; $4246: $54
    ld l, c                                       ; $4247: $69
    xor d                                         ; $4248: $aa
    sbc b                                         ; $4249: $98
    add a                                         ; $424a: $87
    ld b, h                                       ; $424b: $44
    ld l, c                                       ; $424c: $69
    xor d                                         ; $424d: $aa
    adc b                                         ; $424e: $88
    add [hl]                                      ; $424f: $86
    ld b, h                                       ; $4250: $44
    ld a, d                                       ; $4251: $7a
    xor d                                         ; $4252: $aa
    adc b                                         ; $4253: $88
    add [hl]                                      ; $4254: $86
    ld b, h                                       ; $4255: $44
    ld a, d                                       ; $4256: $7a
    xor d                                         ; $4257: $aa
    adc b                                         ; $4258: $88
    add [hl]                                      ; $4259: $86
    ld b, l                                       ; $425a: $45
    adc d                                         ; $425b: $8a
    xor c                                         ; $425c: $a9
    adc b                                         ; $425d: $88
    add [hl]                                      ; $425e: $86
    ld b, l                                       ; $425f: $45
    adc d                                         ; $4260: $8a
    xor c                                         ; $4261: $a9
    adc b                                         ; $4262: $88
    ld [hl], l                                    ; $4263: $75
    ld b, l                                       ; $4264: $45
    adc d                                         ; $4265: $8a
    xor c                                         ; $4266: $a9
    adc b                                         ; $4267: $88
    ld [hl], l                                    ; $4268: $75
    ld b, l                                       ; $4269: $45
    adc d                                         ; $426a: $8a
    xor c                                         ; $426b: $a9
    adc b                                         ; $426c: $88
    ld [hl], l                                    ; $426d: $75
    ld b, l                                       ; $426e: $45
    adc d                                         ; $426f: $8a
    xor c                                         ; $4270: $a9
    adc b                                         ; $4271: $88
    ld [hl], l                                    ; $4272: $75
    ld b, [hl]                                    ; $4273: $46
    sbc d                                         ; $4274: $9a
    xor c                                         ; $4275: $a9
    adc b                                         ; $4276: $88
    ld [hl], l                                    ; $4277: $75
    ld b, [hl]                                    ; $4278: $46
    sbc d                                         ; $4279: $9a
    xor b                                         ; $427a: $a8
    adc b                                         ; $427b: $88
    ld [hl], l                                    ; $427c: $75
    ld b, [hl]                                    ; $427d: $46
    sbc d                                         ; $427e: $9a
    xor b                                         ; $427f: $a8
    adc b                                         ; $4280: $88
    ld [hl], h                                    ; $4281: $74
    ld b, [hl]                                    ; $4282: $46
    sbc d                                         ; $4283: $9a
    xor b                                         ; $4284: $a8
    adc b                                         ; $4285: $88
    ld h, h                                       ; $4286: $64
    ld b, [hl]                                    ; $4287: $46
    sbc d                                         ; $4288: $9a
    sbc b                                         ; $4289: $98
    adc b                                         ; $428a: $88
    ld h, h                                       ; $428b: $64
    ld b, a                                       ; $428c: $47
    sbc d                                         ; $428d: $9a
    sbc b                                         ; $428e: $98
    adc b                                         ; $428f: $88
    ld h, h                                       ; $4290: $64
    ld b, a                                       ; $4291: $47
    sbc d                                         ; $4292: $9a
    sbc b                                         ; $4293: $98
    adc b                                         ; $4294: $88
    ld h, h                                       ; $4295: $64
    ld b, a                                       ; $4296: $47
    xor d                                         ; $4297: $aa
    sbc b                                         ; $4298: $98
    adc b                                         ; $4299: $88
    ld h, h                                       ; $429a: $64
    ld d, a                                       ; $429b: $57
    xor d                                         ; $429c: $aa
    sbc b                                         ; $429d: $98
    adc b                                         ; $429e: $88
    ld h, h                                       ; $429f: $64
    ld e, b                                       ; $42a0: $58
    xor d                                         ; $42a1: $aa
    sbc b                                         ; $42a2: $98
    adc b                                         ; $42a3: $88
    ld h, h                                       ; $42a4: $64
    ld e, b                                       ; $42a5: $58
    xor d                                         ; $42a6: $aa
    sbc b                                         ; $42a7: $98
    adc b                                         ; $42a8: $88
    ld d, h                                       ; $42a9: $54
    ld e, b                                       ; $42aa: $58
    xor d                                         ; $42ab: $aa
    sbc b                                         ; $42ac: $98
    adc b                                         ; $42ad: $88
    ld d, h                                       ; $42ae: $54
    ld e, b                                       ; $42af: $58
    xor d                                         ; $42b0: $aa
    sbc b                                         ; $42b1: $98
    add a                                         ; $42b2: $87
    ld d, h                                       ; $42b3: $54
    ld e, b                                       ; $42b4: $58
    xor d                                         ; $42b5: $aa
    sbc b                                         ; $42b6: $98
    add a                                         ; $42b7: $87
    ld d, h                                       ; $42b8: $54
    ld e, b                                       ; $42b9: $58
    xor d                                         ; $42ba: $aa
    sbc b                                         ; $42bb: $98
    add a                                         ; $42bc: $87
    ld d, h                                       ; $42bd: $54
    ld l, c                                       ; $42be: $69
    xor d                                         ; $42bf: $aa
    sbc b                                         ; $42c0: $98
    add a                                         ; $42c1: $87
    ld d, h                                       ; $42c2: $54
    ld l, c                                       ; $42c3: $69
    xor d                                         ; $42c4: $aa
    sbc b                                         ; $42c5: $98
    add a                                         ; $42c6: $87
    ld d, h                                       ; $42c7: $54
    ld l, c                                       ; $42c8: $69
    xor c                                         ; $42c9: $a9
    sbc b                                         ; $42ca: $98
    add a                                         ; $42cb: $87
    ld d, h                                       ; $42cc: $54
    ld l, c                                       ; $42cd: $69
    xor c                                         ; $42ce: $a9
    adc b                                         ; $42cf: $88
    add a                                         ; $42d0: $87
    ld d, h                                       ; $42d1: $54
    ld a, c                                       ; $42d2: $79
    xor c                                         ; $42d3: $a9
    sbc c                                         ; $42d4: $99
    add a                                         ; $42d5: $87
    ld b, h                                       ; $42d6: $44
    ld a, c                                       ; $42d7: $79
    xor c                                         ; $42d8: $a9
    sbc c                                         ; $42d9: $99
    add [hl]                                      ; $42da: $86
    ld b, h                                       ; $42db: $44
    ld a, c                                       ; $42dc: $79
    xor c                                         ; $42dd: $a9
    adc b                                         ; $42de: $88
    add [hl]                                      ; $42df: $86
    ld b, l                                       ; $42e0: $45
    ld a, c                                       ; $42e1: $79
    xor c                                         ; $42e2: $a9
    adc c                                         ; $42e3: $89
    add [hl]                                      ; $42e4: $86
    ld b, l                                       ; $42e5: $45
    ld a, c                                       ; $42e6: $79
    xor c                                         ; $42e7: $a9
    adc c                                         ; $42e8: $89
    add [hl]                                      ; $42e9: $86
    ld b, l                                       ; $42ea: $45
    adc d                                         ; $42eb: $8a
    xor c                                         ; $42ec: $a9
    adc c                                         ; $42ed: $89
    add [hl]                                      ; $42ee: $86
    ld b, l                                       ; $42ef: $45
    adc c                                         ; $42f0: $89
    xor c                                         ; $42f1: $a9
    adc b                                         ; $42f2: $88
    add [hl]                                      ; $42f3: $86
    ld b, l                                       ; $42f4: $45
    adc c                                         ; $42f5: $89
    xor c                                         ; $42f6: $a9
    adc b                                         ; $42f7: $88
    add l                                         ; $42f8: $85
    ld b, l                                       ; $42f9: $45
    adc c                                         ; $42fa: $89
    xor c                                         ; $42fb: $a9
    adc c                                         ; $42fc: $89
    add l                                         ; $42fd: $85
    ld b, l                                       ; $42fe: $45
    adc d                                         ; $42ff: $8a
    sbc c                                         ; $4300: $99
    adc c                                         ; $4301: $89
    ld [hl], l                                    ; $4302: $75
    ld b, [hl]                                    ; $4303: $46
    adc d                                         ; $4304: $8a
    sbc c                                         ; $4305: $99
    adc c                                         ; $4306: $89
    ld [hl], l                                    ; $4307: $75
    ld b, [hl]                                    ; $4308: $46
    adc c                                         ; $4309: $89
    sbc c                                         ; $430a: $99
    adc b                                         ; $430b: $88
    ld [hl], l                                    ; $430c: $75
    ld b, [hl]                                    ; $430d: $46
    adc c                                         ; $430e: $89
    sbc c                                         ; $430f: $99
    adc c                                         ; $4310: $89
    ld [hl], l                                    ; $4311: $75
    ld b, [hl]                                    ; $4312: $46
    adc c                                         ; $4313: $89
    sbc c                                         ; $4314: $99
    adc b                                         ; $4315: $88
    ld [hl], l                                    ; $4316: $75
    ld b, [hl]                                    ; $4317: $46
    adc d                                         ; $4318: $8a
    sbc c                                         ; $4319: $99
    adc b                                         ; $431a: $88
    ld [hl], l                                    ; $431b: $75
    ld b, [hl]                                    ; $431c: $46
    adc c                                         ; $431d: $89
    sbc c                                         ; $431e: $99
    adc b                                         ; $431f: $88
    add l                                         ; $4320: $85
    ld b, [hl]                                    ; $4321: $46
    adc c                                         ; $4322: $89
    sbc c                                         ; $4323: $99
    adc b                                         ; $4324: $88
    ld [hl], l                                    ; $4325: $75
    ld b, [hl]                                    ; $4326: $46
    adc c                                         ; $4327: $89
    sbc c                                         ; $4328: $99
    adc b                                         ; $4329: $88
    ld [hl], l                                    ; $432a: $75
    ld b, [hl]                                    ; $432b: $46
    adc c                                         ; $432c: $89
    sbc c                                         ; $432d: $99
    adc b                                         ; $432e: $88
    ld [hl], l                                    ; $432f: $75
    ld b, [hl]                                    ; $4330: $46
    adc c                                         ; $4331: $89
    sbc c                                         ; $4332: $99
    sbc b                                         ; $4333: $98
    ld [hl], l                                    ; $4334: $75
    ld b, [hl]                                    ; $4335: $46
    adc c                                         ; $4336: $89
    sbc c                                         ; $4337: $99
    sbc b                                         ; $4338: $98
    ld [hl], l                                    ; $4339: $75
    ld b, [hl]                                    ; $433a: $46
    adc c                                         ; $433b: $89
    sbc c                                         ; $433c: $99
    sbc b                                         ; $433d: $98
    ld [hl], l                                    ; $433e: $75
    ld d, [hl]                                    ; $433f: $56
    adc c                                         ; $4340: $89
    sbc c                                         ; $4341: $99
    sbc b                                         ; $4342: $98
    ld [hl], l                                    ; $4343: $75
    ld b, [hl]                                    ; $4344: $46
    adc c                                         ; $4345: $89
    sbc c                                         ; $4346: $99
    sbc b                                         ; $4347: $98
    ld [hl], l                                    ; $4348: $75
    ld b, [hl]                                    ; $4349: $46
    adc c                                         ; $434a: $89
    sbc c                                         ; $434b: $99
    sbc b                                         ; $434c: $98
    ld [hl], l                                    ; $434d: $75
    ld b, [hl]                                    ; $434e: $46
    adc c                                         ; $434f: $89
    sbc c                                         ; $4350: $99
    sbc b                                         ; $4351: $98
    ld [hl], l                                    ; $4352: $75
    ld b, [hl]                                    ; $4353: $46
    adc c                                         ; $4354: $89
    sbc c                                         ; $4355: $99
    sbc b                                         ; $4356: $98
    ld [hl], l                                    ; $4357: $75
    ld d, [hl]                                    ; $4358: $56
    adc c                                         ; $4359: $89
    sbc c                                         ; $435a: $99
    sbc b                                         ; $435b: $98
    ld [hl], l                                    ; $435c: $75
    ld d, a                                       ; $435d: $57
    sbc c                                         ; $435e: $99
    sbc c                                         ; $435f: $99
    sbc b                                         ; $4360: $98
    ld h, l                                       ; $4361: $65
    ld d, a                                       ; $4362: $57
    sbc c                                         ; $4363: $99
    sbc c                                         ; $4364: $99
    sbc b                                         ; $4365: $98
    ld h, l                                       ; $4366: $65
    ld d, a                                       ; $4367: $57
    sbc d                                         ; $4368: $9a
    sbc c                                         ; $4369: $99
    sbc b                                         ; $436a: $98
    ld h, l                                       ; $436b: $65
    ld d, a                                       ; $436c: $57
    sbc c                                         ; $436d: $99
    sbc c                                         ; $436e: $99
    sbc b                                         ; $436f: $98
    ld h, l                                       ; $4370: $65
    ld d, a                                       ; $4371: $57
    sbc d                                         ; $4372: $9a
    sbc c                                         ; $4373: $99
    sbc b                                         ; $4374: $98
    ld h, h                                       ; $4375: $64
    ld d, a                                       ; $4376: $57
    sbc d                                         ; $4377: $9a
    sbc c                                         ; $4378: $99
    sbc b                                         ; $4379: $98
    ld h, h                                       ; $437a: $64
    ld e, b                                       ; $437b: $58
    sbc d                                         ; $437c: $9a
    sbc c                                         ; $437d: $99
    sub a                                         ; $437e: $97
    ld h, h                                       ; $437f: $64
    ld e, b                                       ; $4380: $58
    sbc d                                         ; $4381: $9a
    sbc c                                         ; $4382: $99
    sub a                                         ; $4383: $97
    ld d, h                                       ; $4384: $54
    ld l, b                                       ; $4385: $68
    sbc d                                         ; $4386: $9a
    sbc c                                         ; $4387: $99
    sub a                                         ; $4388: $97
    ld d, h                                       ; $4389: $54
    ld l, b                                       ; $438a: $68
    sbc c                                         ; $438b: $99
    sbc c                                         ; $438c: $99
    sub a                                         ; $438d: $97
    ld d, h                                       ; $438e: $54
    ld l, b                                       ; $438f: $68
    sbc c                                         ; $4390: $99
    sbc c                                         ; $4391: $99
    add a                                         ; $4392: $87
    ld d, h                                       ; $4393: $54
    ld l, b                                       ; $4394: $68
    sbc c                                         ; $4395: $99
    sbc c                                         ; $4396: $99
    add a                                         ; $4397: $87
    ld d, h                                       ; $4398: $54
    ld l, b                                       ; $4399: $68
    sbc c                                         ; $439a: $99
    sbc c                                         ; $439b: $99
    add a                                         ; $439c: $87
    ld d, l                                       ; $439d: $55
    ld l, b                                       ; $439e: $68
    sbc c                                         ; $439f: $99
    sbc c                                         ; $43a0: $99
    add [hl]                                      ; $43a1: $86
    ld d, l                                       ; $43a2: $55
    ld a, b                                       ; $43a3: $78
    sbc c                                         ; $43a4: $99
    sbc c                                         ; $43a5: $99
    add [hl]                                      ; $43a6: $86
    ld b, l                                       ; $43a7: $45
    ld a, c                                       ; $43a8: $79
    sbc c                                         ; $43a9: $99
    sbc c                                         ; $43aa: $99
    add [hl]                                      ; $43ab: $86
    ld b, l                                       ; $43ac: $45
    ld a, c                                       ; $43ad: $79
    sbc c                                         ; $43ae: $99
    sbc c                                         ; $43af: $99
    add [hl]                                      ; $43b0: $86
    ld b, l                                       ; $43b1: $45
    ld a, c                                       ; $43b2: $79
    sbc c                                         ; $43b3: $99
    sbc c                                         ; $43b4: $99
    add [hl]                                      ; $43b5: $86
    ld b, l                                       ; $43b6: $45
    ld a, c                                       ; $43b7: $79
    sbc c                                         ; $43b8: $99
    adc b                                         ; $43b9: $88
    halt                                          ; $43ba: $76
    ld b, l                                       ; $43bb: $45
    ld a, c                                       ; $43bc: $79
    sbc c                                         ; $43bd: $99
    sbc c                                         ; $43be: $99
    halt                                          ; $43bf: $76
    ld b, [hl]                                    ; $43c0: $46
    adc c                                         ; $43c1: $89
    sbc c                                         ; $43c2: $99
    sbc c                                         ; $43c3: $99
    ld [hl], l                                    ; $43c4: $75
    ld b, [hl]                                    ; $43c5: $46
    adc c                                         ; $43c6: $89
    sbc c                                         ; $43c7: $99
    sbc b                                         ; $43c8: $98
    ld [hl], l                                    ; $43c9: $75
    ld d, [hl]                                    ; $43ca: $56
    adc c                                         ; $43cb: $89
    sbc c                                         ; $43cc: $99
    sbc b                                         ; $43cd: $98
    ld [hl], l                                    ; $43ce: $75
    ld d, [hl]                                    ; $43cf: $56
    adc c                                         ; $43d0: $89
    sbc c                                         ; $43d1: $99
    sbc b                                         ; $43d2: $98
    ld [hl], l                                    ; $43d3: $75
    ld d, [hl]                                    ; $43d4: $56
    adc c                                         ; $43d5: $89
    sbc c                                         ; $43d6: $99
    sbc b                                         ; $43d7: $98
    ld [hl], l                                    ; $43d8: $75
    ld d, a                                       ; $43d9: $57
    adc c                                         ; $43da: $89
    sbc c                                         ; $43db: $99
    sbc b                                         ; $43dc: $98
    ld [hl], l                                    ; $43dd: $75
    ld d, a                                       ; $43de: $57
    adc c                                         ; $43df: $89
    sbc c                                         ; $43e0: $99
    sbc b                                         ; $43e1: $98
    ld h, l                                       ; $43e2: $65
    ld d, a                                       ; $43e3: $57
    sbc c                                         ; $43e4: $99
    sbc c                                         ; $43e5: $99
    sbc b                                         ; $43e6: $98
    ld h, l                                       ; $43e7: $65
    ld d, a                                       ; $43e8: $57
    sbc c                                         ; $43e9: $99
    sbc c                                         ; $43ea: $99
    sbc b                                         ; $43eb: $98
    ld h, l                                       ; $43ec: $65
    ld d, a                                       ; $43ed: $57
    sbc c                                         ; $43ee: $99
    sbc c                                         ; $43ef: $99
    sbc b                                         ; $43f0: $98
    ld h, l                                       ; $43f1: $65
    ld d, a                                       ; $43f2: $57
    sbc c                                         ; $43f3: $99
    sbc c                                         ; $43f4: $99
    sbc b                                         ; $43f5: $98
    ld h, l                                       ; $43f6: $65
    ld h, a                                       ; $43f7: $67
    sbc c                                         ; $43f8: $99
    sbc c                                         ; $43f9: $99
    adc b                                         ; $43fa: $88
    ld h, l                                       ; $43fb: $65
    ld l, b                                       ; $43fc: $68
    sbc c                                         ; $43fd: $99
    sbc c                                         ; $43fe: $99
    add a                                         ; $43ff: $87
    ld h, l                                       ; $4400: $65
    ld l, b                                       ; $4401: $68
    sbc c                                         ; $4402: $99
    sbc c                                         ; $4403: $99
    add a                                         ; $4404: $87
    ld d, l                                       ; $4405: $55
    ld l, b                                       ; $4406: $68
    sbc c                                         ; $4407: $99
    sbc c                                         ; $4408: $99
    add a                                         ; $4409: $87
    ld d, l                                       ; $440a: $55
    ld l, b                                       ; $440b: $68
    sbc c                                         ; $440c: $99
    sbc c                                         ; $440d: $99
    add a                                         ; $440e: $87
    ld d, l                                       ; $440f: $55
    ld l, b                                       ; $4410: $68
    sbc c                                         ; $4411: $99
    sbc c                                         ; $4412: $99
    add a                                         ; $4413: $87
    ld d, l                                       ; $4414: $55
    ld a, b                                       ; $4415: $78
    sbc c                                         ; $4416: $99
    sbc c                                         ; $4417: $99
    add a                                         ; $4418: $87
    ld d, l                                       ; $4419: $55
    ld a, b                                       ; $441a: $78
    sbc c                                         ; $441b: $99
    sbc c                                         ; $441c: $99
    add a                                         ; $441d: $87
    ld d, l                                       ; $441e: $55
    ld a, b                                       ; $441f: $78
    sbc c                                         ; $4420: $99
    sbc c                                         ; $4421: $99
    add [hl]                                      ; $4422: $86
    ld d, l                                       ; $4423: $55
    ld a, b                                       ; $4424: $78
    sbc c                                         ; $4425: $99
    sbc c                                         ; $4426: $99
    add [hl]                                      ; $4427: $86
    ld d, l                                       ; $4428: $55
    ld a, b                                       ; $4429: $78
    sbc c                                         ; $442a: $99
    sbc c                                         ; $442b: $99
    add [hl]                                      ; $442c: $86
    ld d, [hl]                                    ; $442d: $56
    ld a, c                                       ; $442e: $79
    sbc c                                         ; $442f: $99
    sbc c                                         ; $4430: $99
    add [hl]                                      ; $4431: $86
    ld d, [hl]                                    ; $4432: $56
    adc c                                         ; $4433: $89
    sbc c                                         ; $4434: $99
    sbc c                                         ; $4435: $99
    halt                                          ; $4436: $76
    ld d, [hl]                                    ; $4437: $56
    adc c                                         ; $4438: $89
    sbc c                                         ; $4439: $99
    sbc b                                         ; $443a: $98
    halt                                          ; $443b: $76
    ld d, [hl]                                    ; $443c: $56
    adc c                                         ; $443d: $89
    sbc c                                         ; $443e: $99
    sbc b                                         ; $443f: $98
    add [hl]                                      ; $4440: $86
    ld d, [hl]                                    ; $4441: $56
    adc c                                         ; $4442: $89
    sbc c                                         ; $4443: $99
    sbc b                                         ; $4444: $98
    halt                                          ; $4445: $76
    ld d, [hl]                                    ; $4446: $56
    adc c                                         ; $4447: $89
    sbc c                                         ; $4448: $99
    sbc b                                         ; $4449: $98

Jump_01a_444a:
    ld [hl], l                                    ; $444a: $75
    ld d, [hl]                                    ; $444b: $56
    adc c                                         ; $444c: $89
    sbc c                                         ; $444d: $99
    sbc b                                         ; $444e: $98
    ld [hl], l                                    ; $444f: $75
    ld d, a                                       ; $4450: $57
    adc c                                         ; $4451: $89
    sbc c                                         ; $4452: $99
    sbc b                                         ; $4453: $98
    ld [hl], l                                    ; $4454: $75
    ld d, a                                       ; $4455: $57
    adc c                                         ; $4456: $89
    sbc c                                         ; $4457: $99
    sbc b                                         ; $4458: $98
    ld [hl], l                                    ; $4459: $75
    ld d, a                                       ; $445a: $57
    adc c                                         ; $445b: $89
    sbc c                                         ; $445c: $99
    adc b                                         ; $445d: $88
    ld h, l                                       ; $445e: $65
    ld d, a                                       ; $445f: $57
    adc c                                         ; $4460: $89
    sbc c                                         ; $4461: $99
    sbc b                                         ; $4462: $98
    ld [hl], l                                    ; $4463: $75
    ld h, a                                       ; $4464: $67
    adc c                                         ; $4465: $89
    sbc c                                         ; $4466: $99
    sbc b                                         ; $4467: $98
    ld [hl], l                                    ; $4468: $75
    ld h, a                                       ; $4469: $67
    adc c                                         ; $446a: $89
    sbc c                                         ; $446b: $99
    sbc b                                         ; $446c: $98
    ld h, l                                       ; $446d: $65
    ld h, a                                       ; $446e: $67
    adc c                                         ; $446f: $89
    sbc c                                         ; $4470: $99
    sbc b                                         ; $4471: $98
    ld h, l                                       ; $4472: $65
    ld h, a                                       ; $4473: $67
    adc c                                         ; $4474: $89
    sbc c                                         ; $4475: $99
    sbc b                                         ; $4476: $98
    ld h, l                                       ; $4477: $65
    ld h, a                                       ; $4478: $67
    adc c                                         ; $4479: $89
    sbc c                                         ; $447a: $99
    add a                                         ; $447b: $87
    ld h, l                                       ; $447c: $65
    ld h, a                                       ; $447d: $67
    adc c                                         ; $447e: $89
    sbc c                                         ; $447f: $99
    add a                                         ; $4480: $87
    ld h, l                                       ; $4481: $65
    ld h, a                                       ; $4482: $67
    adc c                                         ; $4483: $89
    sbc c                                         ; $4484: $99
    add a                                         ; $4485: $87
    ld h, l                                       ; $4486: $65
    ld h, a                                       ; $4487: $67
    adc c                                         ; $4488: $89
    sbc c                                         ; $4489: $99
    add a                                         ; $448a: $87
    ld h, l                                       ; $448b: $65
    ld l, b                                       ; $448c: $68
    sbc c                                         ; $448d: $99
    sbc c                                         ; $448e: $99
    add a                                         ; $448f: $87
    ld d, l                                       ; $4490: $55
    ld a, b                                       ; $4491: $78
    sbc c                                         ; $4492: $99
    sbc c                                         ; $4493: $99
    add a                                         ; $4494: $87
    ld d, [hl]                                    ; $4495: $56
    ld a, b                                       ; $4496: $78
    sbc c                                         ; $4497: $99
    sbc c                                         ; $4498: $99
    add a                                         ; $4499: $87
    ld d, [hl]                                    ; $449a: $56
    ld a, b                                       ; $449b: $78
    sbc c                                         ; $449c: $99
    sbc c                                         ; $449d: $99
    add [hl]                                      ; $449e: $86
    ld d, [hl]                                    ; $449f: $56
    adc b                                         ; $44a0: $88
    sbc c                                         ; $44a1: $99
    sbc c                                         ; $44a2: $99
    add [hl]                                      ; $44a3: $86
    ld d, [hl]                                    ; $44a4: $56
    ld a, b                                       ; $44a5: $78
    sbc c                                         ; $44a6: $99
    sbc c                                         ; $44a7: $99
    add [hl]                                      ; $44a8: $86
    ld d, [hl]                                    ; $44a9: $56
    ld a, b                                       ; $44aa: $78
    sbc c                                         ; $44ab: $99
    sbc c                                         ; $44ac: $99
    add [hl]                                      ; $44ad: $86
    ld d, [hl]                                    ; $44ae: $56
    ld a, b                                       ; $44af: $78
    sbc c                                         ; $44b0: $99
    sbc c                                         ; $44b1: $99
    add [hl]                                      ; $44b2: $86
    ld h, [hl]                                    ; $44b3: $66
    ld a, b                                       ; $44b4: $78
    sbc c                                         ; $44b5: $99
    sbc b                                         ; $44b6: $98
    halt                                          ; $44b7: $76
    ld d, [hl]                                    ; $44b8: $56
    ld a, b                                       ; $44b9: $78
    sbc c                                         ; $44ba: $99
    sbc b                                         ; $44bb: $98
    halt                                          ; $44bc: $76
    ld h, a                                       ; $44bd: $67
    adc c                                         ; $44be: $89
    sbc c                                         ; $44bf: $99
    sbc b                                         ; $44c0: $98
    halt                                          ; $44c1: $76
    ld h, a                                       ; $44c2: $67
    adc b                                         ; $44c3: $88
    sbc c                                         ; $44c4: $99
    sbc b                                         ; $44c5: $98
    ld [hl], l                                    ; $44c6: $75
    ld d, a                                       ; $44c7: $57
    adc b                                         ; $44c8: $88
    sbc c                                         ; $44c9: $99
    sbc b                                         ; $44ca: $98
    ld [hl], l                                    ; $44cb: $75
    ld h, a                                       ; $44cc: $67
    adc c                                         ; $44cd: $89
    sbc c                                         ; $44ce: $99
    sbc b                                         ; $44cf: $98
    ld h, l                                       ; $44d0: $65
    ld h, a                                       ; $44d1: $67
    adc c                                         ; $44d2: $89
    sbc c                                         ; $44d3: $99
    sbc b                                         ; $44d4: $98
    ld h, l                                       ; $44d5: $65
    ld h, a                                       ; $44d6: $67
    adc c                                         ; $44d7: $89
    sbc c                                         ; $44d8: $99
    sbc b                                         ; $44d9: $98
    ld h, l                                       ; $44da: $65
    ld h, a                                       ; $44db: $67
    adc c                                         ; $44dc: $89
    sbc c                                         ; $44dd: $99
    sub a                                         ; $44de: $97
    ld h, l                                       ; $44df: $65
    ld h, a                                       ; $44e0: $67
    adc c                                         ; $44e1: $89
    sbc c                                         ; $44e2: $99
    add a                                         ; $44e3: $87
    ld h, l                                       ; $44e4: $65
    ld h, a                                       ; $44e5: $67
    adc c                                         ; $44e6: $89
    sbc c                                         ; $44e7: $99
    add a                                         ; $44e8: $87
    ld h, l                                       ; $44e9: $65
    ld h, a                                       ; $44ea: $67
    adc c                                         ; $44eb: $89
    sbc c                                         ; $44ec: $99
    add a                                         ; $44ed: $87
    ld h, l                                       ; $44ee: $65
    ld l, b                                       ; $44ef: $68
    adc c                                         ; $44f0: $89
    sbc c                                         ; $44f1: $99
    add a                                         ; $44f2: $87
    ld h, l                                       ; $44f3: $65
    ld l, b                                       ; $44f4: $68
    adc c                                         ; $44f5: $89
    sbc c                                         ; $44f6: $99
    add a                                         ; $44f7: $87
    ld d, l                                       ; $44f8: $55
    ld a, b                                       ; $44f9: $78
    sbc c                                         ; $44fa: $99
    sbc c                                         ; $44fb: $99
    add [hl]                                      ; $44fc: $86
    ld d, [hl]                                    ; $44fd: $56
    ld a, b                                       ; $44fe: $78
    sbc c                                         ; $44ff: $99
    sbc c                                         ; $4500: $99
    add [hl]                                      ; $4501: $86
    ld d, [hl]                                    ; $4502: $56
    ld a, b                                       ; $4503: $78
    sbc c                                         ; $4504: $99
    sbc b                                         ; $4505: $98
    add [hl]                                      ; $4506: $86
    ld d, [hl]                                    ; $4507: $56
    ld a, b                                       ; $4508: $78
    sbc c                                         ; $4509: $99
    sbc b                                         ; $450a: $98
    halt                                          ; $450b: $76
    ld d, [hl]                                    ; $450c: $56
    ld a, b                                       ; $450d: $78
    sbc c                                         ; $450e: $99
    sbc b                                         ; $450f: $98
    add [hl]                                      ; $4510: $86
    ld d, [hl]                                    ; $4511: $56
    ld a, b                                       ; $4512: $78
    sbc c                                         ; $4513: $99
    sbc b                                         ; $4514: $98
    halt                                          ; $4515: $76
    ld d, [hl]                                    ; $4516: $56
    ld a, b                                       ; $4517: $78
    sbc c                                         ; $4518: $99
    sbc b                                         ; $4519: $98
    halt                                          ; $451a: $76
    ld h, [hl]                                    ; $451b: $66
    adc b                                         ; $451c: $88
    sbc c                                         ; $451d: $99
    sbc b                                         ; $451e: $98
    ld [hl], l                                    ; $451f: $75
    ld h, a                                       ; $4520: $67
    adc c                                         ; $4521: $89
    sbc c                                         ; $4522: $99
    sbc b                                         ; $4523: $98
    ld h, l                                       ; $4524: $65
    ld h, a                                       ; $4525: $67
    adc c                                         ; $4526: $89
    sbc c                                         ; $4527: $99
    sbc b                                         ; $4528: $98
    ld h, l                                       ; $4529: $65
    ld h, a                                       ; $452a: $67
    adc c                                         ; $452b: $89
    sbc c                                         ; $452c: $99
    sbc b                                         ; $452d: $98
    ld h, l                                       ; $452e: $65
    ld h, a                                       ; $452f: $67
    adc c                                         ; $4530: $89
    sbc c                                         ; $4531: $99
    sub a                                         ; $4532: $97
    ld h, [hl]                                    ; $4533: $66
    ld h, a                                       ; $4534: $67
    adc c                                         ; $4535: $89
    sbc c                                         ; $4536: $99
    add a                                         ; $4537: $87
    ld h, l                                       ; $4538: $65
    ld h, a                                       ; $4539: $67
    sbc c                                         ; $453a: $99
    sbc c                                         ; $453b: $99
    add a                                         ; $453c: $87
    ld h, [hl]                                    ; $453d: $66
    ld l, b                                       ; $453e: $68
    sbc c                                         ; $453f: $99
    sbc c                                         ; $4540: $99
    add a                                         ; $4541: $87
    ld h, [hl]                                    ; $4542: $66
    ld a, b                                       ; $4543: $78
    sbc c                                         ; $4544: $99
    sbc c                                         ; $4545: $99
    add a                                         ; $4546: $87
    ld h, [hl]                                    ; $4547: $66
    ld a, b                                       ; $4548: $78
    sbc c                                         ; $4549: $99
    sbc b                                         ; $454a: $98
    add [hl]                                      ; $454b: $86
    ld h, [hl]                                    ; $454c: $66
    ld a, b                                       ; $454d: $78
    sbc c                                         ; $454e: $99
    sbc b                                         ; $454f: $98
    add [hl]                                      ; $4550: $86
    ld h, [hl]                                    ; $4551: $66
    ld a, b                                       ; $4552: $78
    sbc c                                         ; $4553: $99
    sbc b                                         ; $4554: $98
    halt                                          ; $4555: $76
    ld h, [hl]                                    ; $4556: $66
    ld a, b                                       ; $4557: $78
    sbc c                                         ; $4558: $99
    sbc b                                         ; $4559: $98
    halt                                          ; $455a: $76
    ld h, [hl]                                    ; $455b: $66
    adc c                                         ; $455c: $89
    sbc c                                         ; $455d: $99
    adc b                                         ; $455e: $88
    ld h, [hl]                                    ; $455f: $66
    ld h, a                                       ; $4560: $67
    adc c                                         ; $4561: $89
    sbc c                                         ; $4562: $99
    add a                                         ; $4563: $87
    ld h, [hl]                                    ; $4564: $66
    ld h, a                                       ; $4565: $67
    sbc c                                         ; $4566: $99
    sbc b                                         ; $4567: $98
    add [hl]                                      ; $4568: $86
    ld h, [hl]                                    ; $4569: $66
    ld a, b                                       ; $456a: $78
    sbc c                                         ; $456b: $99
    sbc b                                         ; $456c: $98
    halt                                          ; $456d: $76
    ld h, [hl]                                    ; $456e: $66
    ld a, b                                       ; $456f: $78
    sbc c                                         ; $4570: $99
    sbc b                                         ; $4571: $98
    halt                                          ; $4572: $76
    ld h, [hl]                                    ; $4573: $66
    adc c                                         ; $4574: $89
    sbc c                                         ; $4575: $99
    add a                                         ; $4576: $87
    ld h, [hl]                                    ; $4577: $66
    ld h, a                                       ; $4578: $67
    adc c                                         ; $4579: $89
    sbc c                                         ; $457a: $99
    add a                                         ; $457b: $87
    ld h, [hl]                                    ; $457c: $66
    ld h, a                                       ; $457d: $67
    sbc c                                         ; $457e: $99
    sbc c                                         ; $457f: $99
    add [hl]                                      ; $4580: $86
    ld h, [hl]                                    ; $4581: $66
    ld a, b                                       ; $4582: $78
    sbc c                                         ; $4583: $99
    sbc b                                         ; $4584: $98

Jump_01a_4585:
    halt                                          ; $4585: $76
    ld h, [hl]                                    ; $4586: $66
    ld a, b                                       ; $4587: $78
    sbc c                                         ; $4588: $99
    sbc b                                         ; $4589: $98
    ld h, [hl]                                    ; $458a: $66
    ld h, [hl]                                    ; $458b: $66
    ld a, c                                       ; $458c: $79
    sbc c                                         ; $458d: $99
    sub a                                         ; $458e: $97
    ld h, [hl]                                    ; $458f: $66
    ld h, a                                       ; $4590: $67
    adc c                                         ; $4591: $89
    sbc c                                         ; $4592: $99
    add a                                         ; $4593: $87
    ld h, [hl]                                    ; $4594: $66
    ld h, a                                       ; $4595: $67
    adc c                                         ; $4596: $89
    sbc c                                         ; $4597: $99
    add [hl]                                      ; $4598: $86
    ld h, [hl]                                    ; $4599: $66
    ld l, b                                       ; $459a: $68
    sbc c                                         ; $459b: $99
    sbc b                                         ; $459c: $98
    halt                                          ; $459d: $76
    ld h, [hl]                                    ; $459e: $66
    ld a, b                                       ; $459f: $78
    sbc c                                         ; $45a0: $99
    sbc b                                         ; $45a1: $98
    halt                                          ; $45a2: $76
    ld h, [hl]                                    ; $45a3: $66
    adc c                                         ; $45a4: $89
    sbc c                                         ; $45a5: $99
    add a                                         ; $45a6: $87
    ld h, [hl]                                    ; $45a7: $66
    ld h, a                                       ; $45a8: $67
    adc c                                         ; $45a9: $89
    sbc c                                         ; $45aa: $99
    add a                                         ; $45ab: $87
    ld h, [hl]                                    ; $45ac: $66
    ld h, a                                       ; $45ad: $67
    adc c                                         ; $45ae: $89
    sbc c                                         ; $45af: $99
    add a                                         ; $45b0: $87
    ld h, [hl]                                    ; $45b1: $66
    ld a, b                                       ; $45b2: $78
    sbc c                                         ; $45b3: $99
    sbc b                                         ; $45b4: $98
    halt                                          ; $45b5: $76
    ld h, [hl]                                    ; $45b6: $66
    ld a, b                                       ; $45b7: $78
    sbc c                                         ; $45b8: $99
    sbc b                                         ; $45b9: $98
    halt                                          ; $45ba: $76
    ld h, [hl]                                    ; $45bb: $66
    ld a, c                                       ; $45bc: $79
    sbc c                                         ; $45bd: $99
    sbc b                                         ; $45be: $98
    halt                                          ; $45bf: $76
    ld h, [hl]                                    ; $45c0: $66
    adc c                                         ; $45c1: $89
    sbc c                                         ; $45c2: $99
    add a                                         ; $45c3: $87
    ld h, [hl]                                    ; $45c4: $66
    ld h, a                                       ; $45c5: $67
    adc c                                         ; $45c6: $89
    sbc c                                         ; $45c7: $99
    add a                                         ; $45c8: $87
    ld h, [hl]                                    ; $45c9: $66
    ld h, a                                       ; $45ca: $67
    adc c                                         ; $45cb: $89
    sbc c                                         ; $45cc: $99
    add a                                         ; $45cd: $87
    ld h, [hl]                                    ; $45ce: $66
    ld l, b                                       ; $45cf: $68
    sbc c                                         ; $45d0: $99
    sbc b                                         ; $45d1: $98
    halt                                          ; $45d2: $76
    ld h, [hl]                                    ; $45d3: $66
    ld a, b                                       ; $45d4: $78
    sbc c                                         ; $45d5: $99
    sbc b                                         ; $45d6: $98
    halt                                          ; $45d7: $76
    ld h, [hl]                                    ; $45d8: $66
    ld a, b                                       ; $45d9: $78
    sbc c                                         ; $45da: $99
    sbc b                                         ; $45db: $98
    halt                                          ; $45dc: $76
    ld h, [hl]                                    ; $45dd: $66
    ld a, b                                       ; $45de: $78
    sbc c                                         ; $45df: $99
    adc b                                         ; $45e0: $88
    halt                                          ; $45e1: $76
    ld h, [hl]                                    ; $45e2: $66
    ld a, c                                       ; $45e3: $79
    sbc c                                         ; $45e4: $99
    adc b                                         ; $45e5: $88
    halt                                          ; $45e6: $76
    ld h, a                                       ; $45e7: $67
    adc c                                         ; $45e8: $89
    sbc c                                         ; $45e9: $99
    add a                                         ; $45ea: $87
    halt                                          ; $45eb: $76
    ld h, a                                       ; $45ec: $67
    adc c                                         ; $45ed: $89
    sbc c                                         ; $45ee: $99
    add a                                         ; $45ef: $87
    add [hl]                                      ; $45f0: $86
    ld h, a                                       ; $45f1: $67
    adc c                                         ; $45f2: $89
    sbc c                                         ; $45f3: $99
    add a                                         ; $45f4: $87
    ld h, [hl]                                    ; $45f5: $66
    ld h, a                                       ; $45f6: $67
    adc c                                         ; $45f7: $89
    sbc b                                         ; $45f8: $98
    add a                                         ; $45f9: $87
    halt                                          ; $45fa: $76
    ld h, a                                       ; $45fb: $67
    adc c                                         ; $45fc: $89
    sbc b                                         ; $45fd: $98
    add a                                         ; $45fe: $87
    halt                                          ; $45ff: $76
    ld h, a                                       ; $4600: $67
    adc c                                         ; $4601: $89
    sbc b                                         ; $4602: $98
    add a                                         ; $4603: $87
    ld h, [hl]                                    ; $4604: $66
    ld h, a                                       ; $4605: $67
    adc c                                         ; $4606: $89
    sbc b                                         ; $4607: $98
    add a                                         ; $4608: $87
    halt                                          ; $4609: $76
    ld h, a                                       ; $460a: $67
    adc c                                         ; $460b: $89
    sbc b                                         ; $460c: $98
    add a                                         ; $460d: $87
    halt                                          ; $460e: $76
    ld h, a                                       ; $460f: $67
    adc b                                         ; $4610: $88
    sbc b                                         ; $4611: $98
    add a                                         ; $4612: $87
    halt                                          ; $4613: $76
    ld h, a                                       ; $4614: $67
    adc b                                         ; $4615: $88
    sbc b                                         ; $4616: $98
    add a                                         ; $4617: $87
    halt                                          ; $4618: $76
    ld h, a                                       ; $4619: $67
    adc c                                         ; $461a: $89
    sbc c                                         ; $461b: $99
    adc b                                         ; $461c: $88
    halt                                          ; $461d: $76
    ld h, a                                       ; $461e: $67
    adc c                                         ; $461f: $89
    sbc c                                         ; $4620: $99
    adc b                                         ; $4621: $88
    halt                                          ; $4622: $76
    ld h, a                                       ; $4623: $67
    adc b                                         ; $4624: $88
    sbc b                                         ; $4625: $98
    add a                                         ; $4626: $87
    halt                                          ; $4627: $76
    ld h, a                                       ; $4628: $67
    adc b                                         ; $4629: $88
    sbc c                                         ; $462a: $99
    adc b                                         ; $462b: $88
    halt                                          ; $462c: $76
    ld h, a                                       ; $462d: $67
    adc b                                         ; $462e: $88
    sbc c                                         ; $462f: $99
    adc b                                         ; $4630: $88
    halt                                          ; $4631: $76
    ld h, a                                       ; $4632: $67
    adc b                                         ; $4633: $88
    sbc c                                         ; $4634: $99
    adc b                                         ; $4635: $88
    halt                                          ; $4636: $76
    ld h, [hl]                                    ; $4637: $66
    ld a, b                                       ; $4638: $78
    sbc c                                         ; $4639: $99
    sbc b                                         ; $463a: $98
    halt                                          ; $463b: $76
    ld h, [hl]                                    ; $463c: $66
    ld a, b                                       ; $463d: $78
    sbc c                                         ; $463e: $99
    sbc b                                         ; $463f: $98
    add [hl]                                      ; $4640: $86
    ld h, [hl]                                    ; $4641: $66
    ld a, b                                       ; $4642: $78
    sbc c                                         ; $4643: $99
    sbc b                                         ; $4644: $98
    halt                                          ; $4645: $76
    ld h, [hl]                                    ; $4646: $66
    ld a, b                                       ; $4647: $78
    sbc c                                         ; $4648: $99
    sbc b                                         ; $4649: $98
    add a                                         ; $464a: $87
    ld h, [hl]                                    ; $464b: $66
    ld a, b                                       ; $464c: $78
    sbc c                                         ; $464d: $99
    sbc b                                         ; $464e: $98
    add a                                         ; $464f: $87
    ld h, [hl]                                    ; $4650: $66
    ld h, a                                       ; $4651: $67
    adc c                                         ; $4652: $89
    sbc c                                         ; $4653: $99
    add a                                         ; $4654: $87
    ld h, [hl]                                    ; $4655: $66
    ld h, a                                       ; $4656: $67
    adc c                                         ; $4657: $89
    sbc c                                         ; $4658: $99
    adc b                                         ; $4659: $88
    halt                                          ; $465a: $76
    ld h, [hl]                                    ; $465b: $66
    ld a, b                                       ; $465c: $78
    sbc c                                         ; $465d: $99
    adc b                                         ; $465e: $88
    ld [hl], a                                    ; $465f: $77
    ld h, [hl]                                    ; $4660: $66
    ld a, b                                       ; $4661: $78
    sbc c                                         ; $4662: $99
    sbc b                                         ; $4663: $98
    add a                                         ; $4664: $87
    ld h, [hl]                                    ; $4665: $66
    ld h, a                                       ; $4666: $67
    adc b                                         ; $4667: $88
    sbc b                                         ; $4668: $98
    adc b                                         ; $4669: $88
    halt                                          ; $466a: $76
    ld h, a                                       ; $466b: $67
    ld a, b                                       ; $466c: $78
    adc b                                         ; $466d: $88
    adc b                                         ; $466e: $88
    add a                                         ; $466f: $87
    ld h, [hl]                                    ; $4670: $66
    ld [hl], a                                    ; $4671: $77
    adc b                                         ; $4672: $88
    sbc b                                         ; $4673: $98
    add a                                         ; $4674: $87
    halt                                          ; $4675: $76
    ld h, a                                       ; $4676: $67
    ld a, b                                       ; $4677: $78
    sbc c                                         ; $4678: $99
    sbc b                                         ; $4679: $98
    ld [hl], a                                    ; $467a: $77
    ld h, [hl]                                    ; $467b: $66
    ld [hl], a                                    ; $467c: $77
    adc b                                         ; $467d: $88
    sbc b                                         ; $467e: $98
    add a                                         ; $467f: $87
    add [hl]                                      ; $4680: $86
    ld h, a                                       ; $4681: $67
    ld a, b                                       ; $4682: $78
    sbc c                                         ; $4683: $99
    sbc b                                         ; $4684: $98
    add a                                         ; $4685: $87
    ld h, [hl]                                    ; $4686: $66
    ld [hl], a                                    ; $4687: $77
    adc b                                         ; $4688: $88
    sbc c                                         ; $4689: $99
    adc b                                         ; $468a: $88

Jump_01a_468b:
    halt                                          ; $468b: $76
    ld h, a                                       ; $468c: $67
    ld a, b                                       ; $468d: $78
    adc c                                         ; $468e: $89
    sbc b                                         ; $468f: $98
    add a                                         ; $4690: $87
    ld h, [hl]                                    ; $4691: $66
    ld [hl], a                                    ; $4692: $77
    adc b                                         ; $4693: $88
    sbc c                                         ; $4694: $99
    adc b                                         ; $4695: $88
    add a                                         ; $4696: $87
    ld h, [hl]                                    ; $4697: $66
    ld [hl], a                                    ; $4698: $77
    adc b                                         ; $4699: $88
    sbc b                                         ; $469a: $98
    adc b                                         ; $469b: $88
    halt                                          ; $469c: $76
    ld h, a                                       ; $469d: $67
    ld a, b                                       ; $469e: $78
    adc c                                         ; $469f: $89
    sbc b                                         ; $46a0: $98
    add a                                         ; $46a1: $87
    halt                                          ; $46a2: $76
    ld [hl], a                                    ; $46a3: $77
    ld a, b                                       ; $46a4: $78
    adc c                                         ; $46a5: $89
    adc b                                         ; $46a6: $88
    add a                                         ; $46a7: $87
    ld h, [hl]                                    ; $46a8: $66
    ld [hl], a                                    ; $46a9: $77
    adc b                                         ; $46aa: $88
    sbc b                                         ; $46ab: $98
    adc b                                         ; $46ac: $88
    ld [hl], a                                    ; $46ad: $77
    ld h, a                                       ; $46ae: $67
    ld a, b                                       ; $46af: $78
    adc b                                         ; $46b0: $88
    adc b                                         ; $46b1: $88
    add a                                         ; $46b2: $87
    halt                                          ; $46b3: $76
    ld [hl], a                                    ; $46b4: $77
    ld a, b                                       ; $46b5: $78
    adc b                                         ; $46b6: $88
    adc b                                         ; $46b7: $88
    add a                                         ; $46b8: $87
    ld [hl], a                                    ; $46b9: $77
    ld [hl], a                                    ; $46ba: $77
    adc b                                         ; $46bb: $88
    adc b                                         ; $46bc: $88
    adc b                                         ; $46bd: $88
    ld [hl], a                                    ; $46be: $77
    ld [hl], a                                    ; $46bf: $77
    add a                                         ; $46c0: $87
    adc b                                         ; $46c1: $88
    adc b                                         ; $46c2: $88
    adc b                                         ; $46c3: $88
    ld [hl], a                                    ; $46c4: $77
    ld [hl], a                                    ; $46c5: $77
    ld a, b                                       ; $46c6: $78
    adc b                                         ; $46c7: $88
    adc b                                         ; $46c8: $88
    adc b                                         ; $46c9: $88
    ld [hl], a                                    ; $46ca: $77
    ld [hl], a                                    ; $46cb: $77
    ld a, b                                       ; $46cc: $78
    adc b                                         ; $46cd: $88
    adc b                                         ; $46ce: $88
    adc b                                         ; $46cf: $88
    add a                                         ; $46d0: $87
    ld [hl], a                                    ; $46d1: $77
    ld [hl], a                                    ; $46d2: $77
    adc b                                         ; $46d3: $88
    adc b                                         ; $46d4: $88
    adc b                                         ; $46d5: $88
    add a                                         ; $46d6: $87
    ld [hl], a                                    ; $46d7: $77
    ld [hl], a                                    ; $46d8: $77
    adc b                                         ; $46d9: $88
    adc b                                         ; $46da: $88
    adc b                                         ; $46db: $88
    ld [hl], a                                    ; $46dc: $77
    ld [hl], a                                    ; $46dd: $77
    ld [hl], a                                    ; $46de: $77
    adc b                                         ; $46df: $88
    adc b                                         ; $46e0: $88
    adc b                                         ; $46e1: $88
    ld [hl], a                                    ; $46e2: $77
    ld [hl], a                                    ; $46e3: $77
    ld a, b                                       ; $46e4: $78
    adc b                                         ; $46e5: $88
    adc b                                         ; $46e6: $88
    adc b                                         ; $46e7: $88
    ld [hl], a                                    ; $46e8: $77
    ld [hl], a                                    ; $46e9: $77
    ld [hl], a                                    ; $46ea: $77
    ld [hl], a                                    ; $46eb: $77
    ld [hl], a                                    ; $46ec: $77
    adc b                                         ; $46ed: $88
    adc b                                         ; $46ee: $88
    adc b                                         ; $46ef: $88
    add a                                         ; $46f0: $87
    ld a, b                                       ; $46f1: $78
    adc b                                         ; $46f2: $88
    adc b                                         ; $46f3: $88
    adc b                                         ; $46f4: $88
    ld [hl], a                                    ; $46f5: $77
    ld [hl], a                                    ; $46f6: $77
    adc b                                         ; $46f7: $88
    adc b                                         ; $46f8: $88
    adc b                                         ; $46f9: $88
    add a                                         ; $46fa: $87
    ld [hl], a                                    ; $46fb: $77
    ld a, b                                       ; $46fc: $78
    adc b                                         ; $46fd: $88
    adc b                                         ; $46fe: $88
    ld [hl], a                                    ; $46ff: $77
    add a                                         ; $4700: $87
    ld [hl], a                                    ; $4701: $77
    adc b                                         ; $4702: $88
    adc b                                         ; $4703: $88
    ld [hl], a                                    ; $4704: $77
    adc b                                         ; $4705: $88
    add a                                         ; $4706: $87
    adc b                                         ; $4707: $88
    adc b                                         ; $4708: $88
    add a                                         ; $4709: $87
    ld [hl], a                                    ; $470a: $77
    add a                                         ; $470b: $87
    ld a, b                                       ; $470c: $78
    adc b                                         ; $470d: $88
    adc b                                         ; $470e: $88
    adc b                                         ; $470f: $88
    adc b                                         ; $4710: $88
    add a                                         ; $4711: $87
    ld [hl], a                                    ; $4712: $77
    ld a, b                                       ; $4713: $78
    adc b                                         ; $4714: $88
    adc b                                         ; $4715: $88
    ld [hl], a                                    ; $4716: $77
    ld [hl], a                                    ; $4717: $77
    ld a, b                                       ; $4718: $78
    adc b                                         ; $4719: $88
    adc b                                         ; $471a: $88
    add a                                         ; $471b: $87
    ld [hl], a                                    ; $471c: $77
    ld [hl], a                                    ; $471d: $77
    adc b                                         ; $471e: $88
    adc b                                         ; $471f: $88
    adc b                                         ; $4720: $88
    ld [hl], a                                    ; $4721: $77
    ld [hl], a                                    ; $4722: $77
    ld a, b                                       ; $4723: $78
    adc b                                         ; $4724: $88
    adc b                                         ; $4725: $88
    add a                                         ; $4726: $87
    ld [hl], a                                    ; $4727: $77
    ld [hl], a                                    ; $4728: $77
    ld a, b                                       ; $4729: $78
    adc b                                         ; $472a: $88
    adc b                                         ; $472b: $88
    ld [hl], a                                    ; $472c: $77
    ld [hl], a                                    ; $472d: $77
    ld [hl], a                                    ; $472e: $77
    ld a, b                                       ; $472f: $78
    adc b                                         ; $4730: $88
    adc b                                         ; $4731: $88
    ld [hl], a                                    ; $4732: $77
    ld [hl], a                                    ; $4733: $77
    ld [hl], a                                    ; $4734: $77
    ld [hl], a                                    ; $4735: $77
    adc b                                         ; $4736: $88
    adc b                                         ; $4737: $88
    adc b                                         ; $4738: $88
    ld [hl], a                                    ; $4739: $77
    ld [hl], a                                    ; $473a: $77
    ld a, b                                       ; $473b: $78
    adc b                                         ; $473c: $88
    adc b                                         ; $473d: $88
    adc b                                         ; $473e: $88
    add a                                         ; $473f: $87
    add a                                         ; $4740: $87
    adc b                                         ; $4741: $88
    adc b                                         ; $4742: $88
    adc b                                         ; $4743: $88
    ld [hl], a                                    ; $4744: $77
    ld [hl], a                                    ; $4745: $77
    ld [hl], a                                    ; $4746: $77
    adc b                                         ; $4747: $88
    adc b                                         ; $4748: $88
    adc b                                         ; $4749: $88
    ld [hl], a                                    ; $474a: $77
    ld [hl], a                                    ; $474b: $77
    ld [hl], a                                    ; $474c: $77
    adc b                                         ; $474d: $88
    adc b                                         ; $474e: $88
    adc b                                         ; $474f: $88
    adc b                                         ; $4750: $88
    add a                                         ; $4751: $87
    ld [hl], a                                    ; $4752: $77
    adc b                                         ; $4753: $88
    adc b                                         ; $4754: $88
    adc b                                         ; $4755: $88
    adc b                                         ; $4756: $88
    add a                                         ; $4757: $87
    ld a, b                                       ; $4758: $78
    adc b                                         ; $4759: $88
    adc b                                         ; $475a: $88
    adc b                                         ; $475b: $88
    add a                                         ; $475c: $87
    ld [hl], a                                    ; $475d: $77
    ld [hl], a                                    ; $475e: $77
    ld [hl], a                                    ; $475f: $77
    adc b                                         ; $4760: $88
    adc b                                         ; $4761: $88
    adc b                                         ; $4762: $88
    add a                                         ; $4763: $87
    ld [hl], a                                    ; $4764: $77
    ld a, b                                       ; $4765: $78
    adc b                                         ; $4766: $88
    adc b                                         ; $4767: $88
    add a                                         ; $4768: $87
    ld [hl], a                                    ; $4769: $77
    adc b                                         ; $476a: $88
    adc b                                         ; $476b: $88
    adc b                                         ; $476c: $88
    adc b                                         ; $476d: $88
    ld [hl], a                                    ; $476e: $77
    ld a, b                                       ; $476f: $78
    add a                                         ; $4770: $87
    ld [hl], a                                    ; $4771: $77
    adc b                                         ; $4772: $88
    adc b                                         ; $4773: $88
    ld [hl], a                                    ; $4774: $77
    ld [hl], a                                    ; $4775: $77
    adc b                                         ; $4776: $88
    adc b                                         ; $4777: $88
    adc b                                         ; $4778: $88
    adc b                                         ; $4779: $88
    adc b                                         ; $477a: $88
    adc b                                         ; $477b: $88
    adc b                                         ; $477c: $88
    adc b                                         ; $477d: $88
    adc b                                         ; $477e: $88
    adc b                                         ; $477f: $88
    add a                                         ; $4780: $87
    ld [hl], a                                    ; $4781: $77
    ld [hl], a                                    ; $4782: $77
    ld a, b                                       ; $4783: $78
    add a                                         ; $4784: $87
    ld [hl], a                                    ; $4785: $77
    ld [hl], a                                    ; $4786: $77
    ld [hl], a                                    ; $4787: $77
    adc b                                         ; $4788: $88
    adc b                                         ; $4789: $88
    adc b                                         ; $478a: $88
    add a                                         ; $478b: $87
    adc b                                         ; $478c: $88
    adc b                                         ; $478d: $88
    adc b                                         ; $478e: $88
    adc b                                         ; $478f: $88
    add a                                         ; $4790: $87
    ld [hl], a                                    ; $4791: $77
    adc b                                         ; $4792: $88
    adc b                                         ; $4793: $88
    adc b                                         ; $4794: $88
    ld [hl], a                                    ; $4795: $77
    ld [hl], a                                    ; $4796: $77
    ld a, b                                       ; $4797: $78
    adc b                                         ; $4798: $88
    ld [hl], a                                    ; $4799: $77
    ld [hl], a                                    ; $479a: $77
    ld [hl], a                                    ; $479b: $77
    ld [hl], a                                    ; $479c: $77
    ld [hl], a                                    ; $479d: $77
    ld [hl], a                                    ; $479e: $77
    ld h, [hl]                                    ; $479f: $66
    ld h, [hl]                                    ; $47a0: $66
    ld h, [hl]                                    ; $47a1: $66
    ld h, [hl]                                    ; $47a2: $66
    ld h, [hl]                                    ; $47a3: $66
    ld h, [hl]                                    ; $47a4: $66
    ld h, a                                       ; $47a5: $67
    ld [hl], a                                    ; $47a6: $77
    ld [hl], a                                    ; $47a7: $77
    ld a, b                                       ; $47a8: $78
    adc b                                         ; $47a9: $88
    adc c                                         ; $47aa: $89
    sbc c                                         ; $47ab: $99
    sbc c                                         ; $47ac: $99
    sbc c                                         ; $47ad: $99
    sbc c                                         ; $47ae: $99
    xor d                                         ; $47af: $aa
    xor d                                         ; $47b0: $aa
    sbc c                                         ; $47b1: $99
    sbc c                                         ; $47b2: $99
    sbc c                                         ; $47b3: $99
    sbc c                                         ; $47b4: $99
    sbc c                                         ; $47b5: $99
    adc b                                         ; $47b6: $88
    adc b                                         ; $47b7: $88
    adc b                                         ; $47b8: $88
    adc b                                         ; $47b9: $88
    adc b                                         ; $47ba: $88
    adc b                                         ; $47bb: $88
    ld [hl], a                                    ; $47bc: $77
    ld [hl], a                                    ; $47bd: $77
    adc b                                         ; $47be: $88
    adc b                                         ; $47bf: $88
    add a                                         ; $47c0: $87
    ld [hl], a                                    ; $47c1: $77
    ld [hl], a                                    ; $47c2: $77
    ld [hl], a                                    ; $47c3: $77
    ld [hl], a                                    ; $47c4: $77
    ld h, [hl]                                    ; $47c5: $66
    ld h, [hl]                                    ; $47c6: $66
    ld h, [hl]                                    ; $47c7: $66
    ld h, l                                       ; $47c8: $65
    ld d, l                                       ; $47c9: $55
    ld d, l                                       ; $47ca: $55
    ld d, [hl]                                    ; $47cb: $56
    ld h, [hl]                                    ; $47cc: $66
    ld h, [hl]                                    ; $47cd: $66
    ld h, a                                       ; $47ce: $67
    ld [hl], a                                    ; $47cf: $77
    add a                                         ; $47d0: $87
    adc b                                         ; $47d1: $88
    adc b                                         ; $47d2: $88
    sbc c                                         ; $47d3: $99
    sbc c                                         ; $47d4: $99
    sbc c                                         ; $47d5: $99
    sbc c                                         ; $47d6: $99
    sbc d                                         ; $47d7: $9a
    xor d                                         ; $47d8: $aa
    xor c                                         ; $47d9: $a9
    sbc c                                         ; $47da: $99
    sbc c                                         ; $47db: $99
    sbc c                                         ; $47dc: $99
    sbc b                                         ; $47dd: $98
    adc b                                         ; $47de: $88
    add a                                         ; $47df: $87
    add a                                         ; $47e0: $87
    ld [hl], a                                    ; $47e1: $77
    halt                                          ; $47e2: $76
    ld h, [hl]                                    ; $47e3: $66
    ld h, [hl]                                    ; $47e4: $66
    ld h, [hl]                                    ; $47e5: $66
    ld h, [hl]                                    ; $47e6: $66
    ld h, [hl]                                    ; $47e7: $66
    ld h, [hl]                                    ; $47e8: $66
    ld h, [hl]                                    ; $47e9: $66
    ld h, a                                       ; $47ea: $67
    ld [hl], a                                    ; $47eb: $77
    ld [hl], a                                    ; $47ec: $77
    ld [hl], a                                    ; $47ed: $77
    ld [hl], a                                    ; $47ee: $77
    ld a, b                                       ; $47ef: $78
    adc b                                         ; $47f0: $88
    adc b                                         ; $47f1: $88
    adc b                                         ; $47f2: $88
    adc b                                         ; $47f3: $88
    ld [hl], a                                    ; $47f4: $77
    adc b                                         ; $47f5: $88
    add a                                         ; $47f6: $87
    ld [hl], a                                    ; $47f7: $77
    ld [hl], a                                    ; $47f8: $77
    ld [hl], a                                    ; $47f9: $77
    ld [hl], a                                    ; $47fa: $77
    ld [hl], a                                    ; $47fb: $77
    ld [hl], a                                    ; $47fc: $77
    ld [hl], a                                    ; $47fd: $77
    ld a, b                                       ; $47fe: $78
    adc b                                         ; $47ff: $88
    adc b                                         ; $4800: $88
    adc b                                         ; $4801: $88
    adc b                                         ; $4802: $88
    adc b                                         ; $4803: $88
    adc c                                         ; $4804: $89
    sbc b                                         ; $4805: $98
    adc b                                         ; $4806: $88
    adc b                                         ; $4807: $88
    adc b                                         ; $4808: $88
    adc b                                         ; $4809: $88
    adc b                                         ; $480a: $88
    ld [hl], a                                    ; $480b: $77
    ld [hl], a                                    ; $480c: $77
    ld [hl], a                                    ; $480d: $77
    ld [hl], a                                    ; $480e: $77
    ld [hl], a                                    ; $480f: $77
    add a                                         ; $4810: $87
    ld [hl], a                                    ; $4811: $77
    ld [hl], a                                    ; $4812: $77
    ld a, b                                       ; $4813: $78
    adc b                                         ; $4814: $88
    adc b                                         ; $4815: $88
    adc b                                         ; $4816: $88
    adc b                                         ; $4817: $88
    adc b                                         ; $4818: $88
    adc b                                         ; $4819: $88
    adc b                                         ; $481a: $88
    adc b                                         ; $481b: $88
    adc b                                         ; $481c: $88
    adc b                                         ; $481d: $88
    adc b                                         ; $481e: $88
    adc b                                         ; $481f: $88
    add a                                         ; $4820: $87
    ld [hl], a                                    ; $4821: $77
    ld [hl], a                                    ; $4822: $77
    ld [hl], a                                    ; $4823: $77
    ld [hl], a                                    ; $4824: $77
    ld [hl], a                                    ; $4825: $77
    ld [hl], a                                    ; $4826: $77
    adc b                                         ; $4827: $88
    adc b                                         ; $4828: $88
    adc b                                         ; $4829: $88
    adc c                                         ; $482a: $89
    sbc c                                         ; $482b: $99
    adc b                                         ; $482c: $88
    adc b                                         ; $482d: $88
    ld [hl], a                                    ; $482e: $77
    halt                                          ; $482f: $76
    ld h, [hl]                                    ; $4830: $66
    ld h, [hl]                                    ; $4831: $66
    ld h, l                                       ; $4832: $65
    ld d, l                                       ; $4833: $55
    ld b, h                                       ; $4834: $44
    ld b, h                                       ; $4835: $44
    ld b, h                                       ; $4836: $44
    ld b, l                                       ; $4837: $45
    ld d, l                                       ; $4838: $55
    ld d, l                                       ; $4839: $55
    ld d, l                                       ; $483a: $55
    ld d, [hl]                                    ; $483b: $56
    ld h, a                                       ; $483c: $67
    ld [hl], a                                    ; $483d: $77
    ld [hl], a                                    ; $483e: $77
    adc b                                         ; $483f: $88
    adc b                                         ; $4840: $88
    adc c                                         ; $4841: $89
    sbc c                                         ; $4842: $99
    sbc c                                         ; $4843: $99
    xor d                                         ; $4844: $aa
    xor d                                         ; $4845: $aa
    xor d                                         ; $4846: $aa
    xor d                                         ; $4847: $aa
    xor d                                         ; $4848: $aa
    xor e                                         ; $4849: $ab
    cp e                                          ; $484a: $bb
    cp e                                          ; $484b: $bb
    cp e                                          ; $484c: $bb
    cp e                                          ; $484d: $bb
    cp e                                          ; $484e: $bb
    cp e                                          ; $484f: $bb
    cp e                                          ; $4850: $bb
    cp d                                          ; $4851: $ba
    xor d                                         ; $4852: $aa
    xor d                                         ; $4853: $aa
    sbc c                                         ; $4854: $99
    sbc c                                         ; $4855: $99
    sbc c                                         ; $4856: $99
    adc b                                         ; $4857: $88
    adc b                                         ; $4858: $88
    ld [hl], a                                    ; $4859: $77
    ld h, [hl]                                    ; $485a: $66
    ld h, l                                       ; $485b: $65
    ld d, l                                       ; $485c: $55
    ld d, l                                       ; $485d: $55
    ld d, l                                       ; $485e: $55
    ld d, h                                       ; $485f: $54
    ld b, h                                       ; $4860: $44
    ld b, h                                       ; $4861: $44
    ld b, h                                       ; $4862: $44
    ld b, h                                       ; $4863: $44
    ld b, h                                       ; $4864: $44
    ld b, h                                       ; $4865: $44
    ld b, h                                       ; $4866: $44
    ld b, l                                       ; $4867: $45
    ld d, l                                       ; $4868: $55
    ld d, l                                       ; $4869: $55
    ld d, [hl]                                    ; $486a: $56
    ld h, [hl]                                    ; $486b: $66
    ld [hl], a                                    ; $486c: $77
    ld [hl], a                                    ; $486d: $77
    ld a, b                                       ; $486e: $78
    adc b                                         ; $486f: $88
    adc c                                         ; $4870: $89
    sbc c                                         ; $4871: $99
    xor d                                         ; $4872: $aa
    xor d                                         ; $4873: $aa
    xor d                                         ; $4874: $aa
    xor e                                         ; $4875: $ab
    cp e                                          ; $4876: $bb
    cp e                                          ; $4877: $bb
    cp e                                          ; $4878: $bb
    cp e                                          ; $4879: $bb
    cp e                                          ; $487a: $bb
    xor d                                         ; $487b: $aa
    xor d                                         ; $487c: $aa
    xor d                                         ; $487d: $aa
    xor d                                         ; $487e: $aa
    xor c                                         ; $487f: $a9
    sbc c                                         ; $4880: $99
    sbc c                                         ; $4881: $99
    sbc b                                         ; $4882: $98
    adc b                                         ; $4883: $88
    ld [hl], a                                    ; $4884: $77
    ld [hl], a                                    ; $4885: $77
    halt                                          ; $4886: $76
    ld h, [hl]                                    ; $4887: $66
    ld d, l                                       ; $4888: $55
    ld d, l                                       ; $4889: $55
    ld d, l                                       ; $488a: $55
    ld b, h                                       ; $488b: $44
    ld b, h                                       ; $488c: $44
    ld b, h                                       ; $488d: $44
    ld b, h                                       ; $488e: $44
    ld b, h                                       ; $488f: $44
    ld b, h                                       ; $4890: $44
    ld b, h                                       ; $4891: $44
    ld b, h                                       ; $4892: $44
    ld d, l                                       ; $4893: $55
    ld d, l                                       ; $4894: $55
    ld d, l                                       ; $4895: $55
    ld d, [hl]                                    ; $4896: $56
    ld h, [hl]                                    ; $4897: $66
    ld [hl], a                                    ; $4898: $77
    ld [hl], a                                    ; $4899: $77
    adc b                                         ; $489a: $88
    adc b                                         ; $489b: $88
    sbc c                                         ; $489c: $99
    sbc c                                         ; $489d: $99
    xor d                                         ; $489e: $aa
    xor e                                         ; $489f: $ab
    cp e                                          ; $48a0: $bb
    cp e                                          ; $48a1: $bb
    cp e                                          ; $48a2: $bb
    cp e                                          ; $48a3: $bb
    cp e                                          ; $48a4: $bb
    cp e                                          ; $48a5: $bb
    cp e                                          ; $48a6: $bb
    cp e                                          ; $48a7: $bb
    cp d                                          ; $48a8: $ba
    xor d                                         ; $48a9: $aa
    xor d                                         ; $48aa: $aa
    xor c                                         ; $48ab: $a9
    sbc c                                         ; $48ac: $99
    sbc b                                         ; $48ad: $98
    adc b                                         ; $48ae: $88
    ld [hl], a                                    ; $48af: $77
    add [hl]                                      ; $48b0: $86
    ld h, [hl]                                    ; $48b1: $66
    ld h, l                                       ; $48b2: $65
    ld d, l                                       ; $48b3: $55
    ld d, l                                       ; $48b4: $55
    ld b, h                                       ; $48b5: $44
    ld b, h                                       ; $48b6: $44
    ld b, h                                       ; $48b7: $44
    ld b, h                                       ; $48b8: $44
    ld b, h                                       ; $48b9: $44
    ld b, h                                       ; $48ba: $44
    ld b, h                                       ; $48bb: $44
    ld b, h                                       ; $48bc: $44
    ld d, l                                       ; $48bd: $55
    ld d, l                                       ; $48be: $55
    ld d, l                                       ; $48bf: $55
    ld h, [hl]                                    ; $48c0: $66
    ld h, [hl]                                    ; $48c1: $66
    ld [hl], a                                    ; $48c2: $77
    ld [hl], a                                    ; $48c3: $77
    adc b                                         ; $48c4: $88
    adc c                                         ; $48c5: $89
    sbc c                                         ; $48c6: $99
    sbc d                                         ; $48c7: $9a
    xor d                                         ; $48c8: $aa
    xor d                                         ; $48c9: $aa
    cp e                                          ; $48ca: $bb
    cp e                                          ; $48cb: $bb
    cp e                                          ; $48cc: $bb
    cp e                                          ; $48cd: $bb
    cp e                                          ; $48ce: $bb
    cp e                                          ; $48cf: $bb
    cp e                                          ; $48d0: $bb
    cp e                                          ; $48d1: $bb
    xor d                                         ; $48d2: $aa
    xor d                                         ; $48d3: $aa
    xor c                                         ; $48d4: $a9
    sbc c                                         ; $48d5: $99
    sbc b                                         ; $48d6: $98
    adc b                                         ; $48d7: $88
    ld [hl], a                                    ; $48d8: $77
    ld [hl], a                                    ; $48d9: $77
    ld h, [hl]                                    ; $48da: $66
    ld h, l                                       ; $48db: $65
    ld d, l                                       ; $48dc: $55
    ld d, h                                       ; $48dd: $54
    ld b, h                                       ; $48de: $44
    ld b, h                                       ; $48df: $44
    ld b, h                                       ; $48e0: $44
    ld b, h                                       ; $48e1: $44
    ld b, h                                       ; $48e2: $44
    ld b, h                                       ; $48e3: $44
    ld b, h                                       ; $48e4: $44
    ld b, h                                       ; $48e5: $44
    ld b, l                                       ; $48e6: $45
    ld d, l                                       ; $48e7: $55
    ld d, [hl]                                    ; $48e8: $56
    ld h, [hl]                                    ; $48e9: $66
    ld h, a                                       ; $48ea: $67
    ld [hl], a                                    ; $48eb: $77
    adc b                                         ; $48ec: $88
    adc c                                         ; $48ed: $89
    sbc c                                         ; $48ee: $99
    xor d                                         ; $48ef: $aa
    xor d                                         ; $48f0: $aa
    cp e                                          ; $48f1: $bb
    cp e                                          ; $48f2: $bb
    cp h                                          ; $48f3: $bc
    call z, $cbcc                                 ; $48f4: $cc $cc $cb
    cp e                                          ; $48f7: $bb
    cp e                                          ; $48f8: $bb
    cp e                                          ; $48f9: $bb
    xor d                                         ; $48fa: $aa
    xor d                                         ; $48fb: $aa
    sbc c                                         ; $48fc: $99
    sbc b                                         ; $48fd: $98
    adc b                                         ; $48fe: $88
    ld [hl], a                                    ; $48ff: $77
    add [hl]                                      ; $4900: $86
    ld h, [hl]                                    ; $4901: $66
    ld d, l                                       ; $4902: $55
    ld d, h                                       ; $4903: $54
    ld b, h                                       ; $4904: $44
    ld b, h                                       ; $4905: $44
    inc sp                                        ; $4906: $33
    inc sp                                        ; $4907: $33
    inc sp                                        ; $4908: $33
    inc [hl]                                      ; $4909: $34
    ld b, h                                       ; $490a: $44
    ld b, h                                       ; $490b: $44
    ld b, l                                       ; $490c: $45
    ld d, l                                       ; $490d: $55
    ld h, [hl]                                    ; $490e: $66
    ld h, [hl]                                    ; $490f: $66
    add a                                         ; $4910: $87
    ld a, b                                       ; $4911: $78
    adc b                                         ; $4912: $88
    sbc c                                         ; $4913: $99
    xor d                                         ; $4914: $aa
    xor d                                         ; $4915: $aa
    cp e                                          ; $4916: $bb
    cp e                                          ; $4917: $bb
    call z, $cccc                                 ; $4918: $cc $cc $cc
    call z, $bbcb                                 ; $491b: $cc $cb $bb
    cp e                                          ; $491e: $bb
    xor d                                         ; $491f: $aa
    xor d                                         ; $4920: $aa
    sbc c                                         ; $4921: $99
    sbc b                                         ; $4922: $98
    add a                                         ; $4923: $87
    ld [hl], a                                    ; $4924: $77
    ld h, [hl]                                    ; $4925: $66
    ld h, l                                       ; $4926: $65
    ld d, l                                       ; $4927: $55
    ld b, h                                       ; $4928: $44
    ld b, e                                       ; $4929: $43
    inc sp                                        ; $492a: $33
    inc sp                                        ; $492b: $33
    inc sp                                        ; $492c: $33
    inc sp                                        ; $492d: $33
    inc sp                                        ; $492e: $33
    ld b, h                                       ; $492f: $44
    ld b, h                                       ; $4930: $44
    ld d, l                                       ; $4931: $55
    ld d, [hl]                                    ; $4932: $56
    ld h, [hl]                                    ; $4933: $66
    ld [hl], a                                    ; $4934: $77
    adc b                                         ; $4935: $88
    sbc c                                         ; $4936: $99
    sbc d                                         ; $4937: $9a
    xor d                                         ; $4938: $aa
    cp e                                          ; $4939: $bb
    cp h                                          ; $493a: $bc
    call z, $cccc                                 ; $493b: $cc $cc $cc
    call z, $bbcc                                 ; $493e: $cc $cc $bb
    cp e                                          ; $4941: $bb
    xor d                                         ; $4942: $aa
    xor c                                         ; $4943: $a9
    sbc c                                         ; $4944: $99
    adc b                                         ; $4945: $88
    ld [hl], a                                    ; $4946: $77
    ld h, [hl]                                    ; $4947: $66
    ld h, l                                       ; $4948: $65
    ld d, h                                       ; $4949: $54
    ld b, h                                       ; $494a: $44
    inc sp                                        ; $494b: $33
    inc sp                                        ; $494c: $33
    ld [hl+], a                                   ; $494d: $22
    ld [hl+], a                                   ; $494e: $22
    inc sp                                        ; $494f: $33
    inc sp                                        ; $4950: $33
    inc [hl]                                      ; $4951: $34
    ld b, h                                       ; $4952: $44
    ld d, l                                       ; $4953: $55
    ld d, [hl]                                    ; $4954: $56
    ld h, a                                       ; $4955: $67
    ld a, b                                       ; $4956: $78
    adc c                                         ; $4957: $89
    sbc d                                         ; $4958: $9a
    xor e                                         ; $4959: $ab
    cp h                                          ; $495a: $bc
    call z, $ddcd                                 ; $495b: $cc $cd $dd
    db $dd                                        ; $495e: $dd
    db $dd                                        ; $495f: $dd
    call z, $bbcc                                 ; $4960: $cc $cc $bb
    xor d                                         ; $4963: $aa
    xor c                                         ; $4964: $a9
    sbc b                                         ; $4965: $98
    add a                                         ; $4966: $87
    halt                                          ; $4967: $76
    ld h, l                                       ; $4968: $65
    ld d, h                                       ; $4969: $54
    ld b, e                                       ; $496a: $43
    ld [hl-], a                                   ; $496b: $32
    ld [hl+], a                                   ; $496c: $22
    ld [hl+], a                                   ; $496d: $22
    ld [hl+], a                                   ; $496e: $22
    ld [hl+], a                                   ; $496f: $22
    inc sp                                        ; $4970: $33
    inc [hl]                                      ; $4971: $34
    ld b, h                                       ; $4972: $44
    ld d, l                                       ; $4973: $55
    ld h, [hl]                                    ; $4974: $66
    ld a, b                                       ; $4975: $78
    adc c                                         ; $4976: $89
    sbc d                                         ; $4977: $9a
    xor e                                         ; $4978: $ab
    call z, $dedd                                 ; $4979: $cc $dd $de
    xor $ed                                       ; $497c: $ee $ed
    db $dd                                        ; $497e: $dd
    call c, $bbcc                                 ; $497f: $dc $cc $bb
    xor d                                         ; $4982: $aa
    sbc c                                         ; $4983: $99
    adc b                                         ; $4984: $88
    halt                                          ; $4985: $76
    ld h, l                                       ; $4986: $65
    ld b, h                                       ; $4987: $44
    inc sp                                        ; $4988: $33
    ld [hl+], a                                   ; $4989: $22
    ld de, $1111                                  ; $498a: $11 $11 $11
    ld [hl+], a                                   ; $498d: $22
    inc hl                                        ; $498e: $23
    inc [hl]                                      ; $498f: $34
    ld b, l                                       ; $4990: $45
    ld d, [hl]                                    ; $4991: $56
    ld h, a                                       ; $4992: $67
    adc b                                         ; $4993: $88
    sbc d                                         ; $4994: $9a
    cp e                                          ; $4995: $bb
    call z, $eede                                 ; $4996: $cc $de $ee
    xor $ee                                       ; $4999: $ee $ee
    db $ed                                        ; $499b: $ed
    call c, $bacb                                 ; $499c: $dc $cb $ba
    xor c                                         ; $499f: $a9
    sbc b                                         ; $49a0: $98
    ld [hl], a                                    ; $49a1: $77
    ld h, l                                       ; $49a2: $65
    ld b, h                                       ; $49a3: $44
    ld [hl-], a                                   ; $49a4: $32
    ld de, $0010                                  ; $49a5: $11 $10 $00
    ld de, $2312                                  ; $49a8: $11 $12 $23
    inc [hl]                                      ; $49ab: $34
    ld d, l                                       ; $49ac: $55
    ld h, [hl]                                    ; $49ad: $66
    ld a, b                                       ; $49ae: $78
    sbc d                                         ; $49af: $9a
    xor e                                         ; $49b0: $ab
    call $ffee                                    ; $49b1: $cd $ee $ff
    rst $38                                       ; $49b4: $ff
    cp $ed                                        ; $49b5: $fe $ed
    call c, $bacb                                 ; $49b7: $dc $cb $ba
    sbc c                                         ; $49ba: $99
    add a                                         ; $49bb: $87
    halt                                          ; $49bc: $76
    ld d, h                                       ; $49bd: $54
    ld [hl-], a                                   ; $49be: $32
    ld de, $0000                                  ; $49bf: $11 $00 $00
    ld bc, $2312                                  ; $49c2: $01 $12 $23
    inc [hl]                                      ; $49c5: $34
    ld d, l                                       ; $49c6: $55
    ld h, a                                       ; $49c7: $67
    ld a, b                                       ; $49c8: $78
    sbc d                                         ; $49c9: $9a
    cp h                                          ; $49ca: $bc
    sbc $ef                                       ; $49cb: $de $ef
    rst $38                                       ; $49cd: $ff
    rst $38                                       ; $49ce: $ff
    xor $dd                                       ; $49cf: $ee $dd
    res 7, d                                      ; $49d1: $cb $ba
    xor c                                         ; $49d3: $a9
    sbc b                                         ; $49d4: $98
    halt                                          ; $49d5: $76
    ld h, l                                       ; $49d6: $65
    ld b, e                                       ; $49d7: $43
    ld hl, $0000                                  ; $49d8: $21 $00 $00
    ld bc, $3312                                  ; $49db: $01 $12 $33
    ld b, h                                       ; $49de: $44
    ld d, [hl]                                    ; $49df: $56
    ld h, a                                       ; $49e0: $67
    adc b                                         ; $49e1: $88
    sbc d                                         ; $49e2: $9a
    cp h                                          ; $49e3: $bc
    sbc $ff                                       ; $49e4: $de $ff
    rst $38                                       ; $49e6: $ff
    cp $dd                                        ; $49e7: $fe $dd
    res 7, d                                      ; $49e9: $cb $ba
    xor c                                         ; $49eb: $a9
    sbc b                                         ; $49ec: $98
    ld [hl], a                                    ; $49ed: $77
    ld h, l                                       ; $49ee: $65
    ld b, d                                       ; $49ef: $42
    stop                                          ; $49f0: $10 $00
    nop                                           ; $49f2: $00
    ld [de], a                                    ; $49f3: $12
    inc hl                                        ; $49f4: $23
    ld b, h                                       ; $49f5: $44
    ld d, l                                       ; $49f6: $55
    ld h, [hl]                                    ; $49f7: $66
    ld a, b                                       ; $49f8: $78
    sbc d                                         ; $49f9: $9a
    cp h                                          ; $49fa: $bc
    sbc $ff                                       ; $49fb: $de $ff
    rst $38                                       ; $49fd: $ff
    xor $dc                                       ; $49fe: $ee $dc
    cp e                                          ; $4a00: $bb
    xor d                                         ; $4a01: $aa
    sbc b                                         ; $4a02: $98
    add a                                         ; $4a03: $87
    ld h, l                                       ; $4a04: $65
    ld b, e                                       ; $4a05: $43
    ld hl, $0000                                  ; $4a06: $21 $00 $00
    ld [de], a                                    ; $4a09: $12
    inc [hl]                                      ; $4a0a: $34
    ld b, l                                       ; $4a0b: $45
    ld d, [hl]                                    ; $4a0c: $56
    ld [hl], a                                    ; $4a0d: $77
    adc c                                         ; $4a0e: $89
    xor e                                         ; $4a0f: $ab
    sbc $ff                                       ; $4a10: $de $ff
    rst $38                                       ; $4a12: $ff
    cp $dc                                        ; $4a13: $fe $dc
    cp e                                          ; $4a15: $bb
    xor c                                         ; $4a16: $a9
    sbc b                                         ; $4a17: $98
    add a                                         ; $4a18: $87
    ld h, l                                       ; $4a19: $65
    ld b, d                                       ; $4a1a: $42
    stop                                          ; $4a1b: $10 $00
    ld bc, $3423                                  ; $4a1d: $01 $23 $34
    ld d, l                                       ; $4a20: $55
    ld h, [hl]                                    ; $4a21: $66
    ld [hl], a                                    ; $4a22: $77
    adc c                                         ; $4a23: $89
    xor h                                         ; $4a24: $ac
    sbc $ff                                       ; $4a25: $de $ff
    rst $38                                       ; $4a27: $ff
    db $ed                                        ; $4a28: $ed
    res 5, d                                      ; $4a29: $cb $aa
    sbc c                                         ; $4a2b: $99
    sbc b                                         ; $4a2c: $98
    add a                                         ; $4a2d: $87
    ld h, h                                       ; $4a2e: $64
    ld [hl-], a                                   ; $4a2f: $32
    stop                                          ; $4a30: $10 $00
    ld [de], a                                    ; $4a32: $12
    inc [hl]                                      ; $4a33: $34
    ld b, l                                       ; $4a34: $45
    ld d, [hl]                                    ; $4a35: $56
    ld h, [hl]                                    ; $4a36: $66
    ld [hl], a                                    ; $4a37: $77
    adc c                                         ; $4a38: $89
    cp h                                          ; $4a39: $bc
    rst $28                                       ; $4a3a: $ef
    rst $38                                       ; $4a3b: $ff
    cp $dc                                        ; $4a3c: $fe $dc
    cp d                                          ; $4a3e: $ba
    xor c                                         ; $4a3f: $a9
    sbc c                                         ; $4a40: $99
    sbc b                                         ; $4a41: $98
    add a                                         ; $4a42: $87
    ld h, h                                       ; $4a43: $64
    ld [hl-], a                                   ; $4a44: $32
    nop                                           ; $4a45: $00
    nop                                           ; $4a46: $00
    ld [de], a                                    ; $4a47: $12
    inc [hl]                                      ; $4a48: $34
    ld d, l                                       ; $4a49: $55
    ld h, [hl]                                    ; $4a4a: $66
    ld h, [hl]                                    ; $4a4b: $66
    ld a, b                                       ; $4a4c: $78
    adc d                                         ; $4a4d: $8a
    cp h                                          ; $4a4e: $bc
    rst $18                                       ; $4a4f: $df
    rst $38                                       ; $4a50: $ff
    cp $dc                                        ; $4a51: $fe $dc
    cp d                                          ; $4a53: $ba
    xor c                                         ; $4a54: $a9
    sbc c                                         ; $4a55: $99
    adc b                                         ; $4a56: $88
    halt                                          ; $4a57: $76
    ld d, h                                       ; $4a58: $54
    ld [hl-], a                                   ; $4a59: $32
    ld hl, $2300                                  ; $4a5a: $21 $00 $23
    ld b, h                                       ; $4a5d: $44
    ld b, h                                       ; $4a5e: $44
    ld b, [hl]                                    ; $4a5f: $46
    adc b                                         ; $4a60: $88
    adc b                                         ; $4a61: $88
    adc b                                         ; $4a62: $88
    sbc e                                         ; $4a63: $9b
    sbc $ed                                       ; $4a64: $de $ed
    db $dd                                        ; $4a66: $dd
    call c, $aabb                                 ; $4a67: $dc $bb $aa
    xor c                                         ; $4a6a: $a9
    sbc b                                         ; $4a6b: $98
    ld [hl], a                                    ; $4a6c: $77
    ld h, l                                       ; $4a6d: $65
    ld d, h                                       ; $4a6e: $54
    ld b, e                                       ; $4a6f: $43
    ld [hl+], a                                   ; $4a70: $22
    ld [hl+], a                                   ; $4a71: $22
    inc sp                                        ; $4a72: $33
    ld b, l                                       ; $4a73: $45
    ld d, [hl]                                    ; $4a74: $56
    ld h, [hl]                                    ; $4a75: $66
    ld h, a                                       ; $4a76: $67
    adc c                                         ; $4a77: $89
    xor d                                         ; $4a78: $aa
    cp e                                          ; $4a79: $bb
    call z, $cccc                                 ; $4a7a: $cc $cc $cc
    call z, $99ba                                 ; $4a7d: $cc $ba $99
    adc b                                         ; $4a80: $88
    add a                                         ; $4a81: $87
    ld h, [hl]                                    ; $4a82: $66
    ld d, l                                       ; $4a83: $55
    ld b, e                                       ; $4a84: $43
    inc sp                                        ; $4a85: $33
    inc [hl]                                      ; $4a86: $34
    ld b, h                                       ; $4a87: $44
    ld b, l                                       ; $4a88: $45
    ld d, [hl]                                    ; $4a89: $56
    ld h, a                                       ; $4a8a: $67
    ld a, b                                       ; $4a8b: $78
    sbc d                                         ; $4a8c: $9a
    xor d                                         ; $4a8d: $aa
    cp e                                          ; $4a8e: $bb
    cp h                                          ; $4a8f: $bc
    call z, $babb                                 ; $4a90: $cc $bb $ba
    sbc b                                         ; $4a93: $98
    add a                                         ; $4a94: $87
    ld [hl], a                                    ; $4a95: $77
    ld h, [hl]                                    ; $4a96: $66
    ld d, h                                       ; $4a97: $54
    inc sp                                        ; $4a98: $33
    ld b, h                                       ; $4a99: $44
    inc [hl]                                      ; $4a9a: $34
    ld d, l                                       ; $4a9b: $55
    ld h, l                                       ; $4a9c: $65
    ld h, a                                       ; $4a9d: $67
    ld a, b                                       ; $4a9e: $78
    sbc d                                         ; $4a9f: $9a
    cp e                                          ; $4aa0: $bb
    cp h                                          ; $4aa1: $bc
    call z, $cbcc                                 ; $4aa2: $cc $cc $cb
    xor d                                         ; $4aa5: $aa
    sbc c                                         ; $4aa6: $99
    add a                                         ; $4aa7: $87
    halt                                          ; $4aa8: $76
    ld d, h                                       ; $4aa9: $54
    ld b, e                                       ; $4aaa: $43
    ld [hl-], a                                   ; $4aab: $32
    ld [hl+], a                                   ; $4aac: $22
    inc hl                                        ; $4aad: $23
    inc [hl]                                      ; $4aae: $34
    ld d, l                                       ; $4aaf: $55
    ld h, a                                       ; $4ab0: $67
    ld a, b                                       ; $4ab1: $78
    sbc d                                         ; $4ab2: $9a
    cp h                                          ; $4ab3: $bc
    call $ddee                                    ; $4ab4: $cd $ee $dd
    call c, $aacb                                 ; $4ab7: $dc $cb $aa
    sbc b                                         ; $4aba: $98
    halt                                          ; $4abb: $76
    ld d, h                                       ; $4abc: $54
    inc sp                                        ; $4abd: $33
    ld hl, $1100                                  ; $4abe: $21 $00 $11
    inc hl                                        ; $4ac1: $23
    ld b, h                                       ; $4ac2: $44
    ld d, [hl]                                    ; $4ac3: $56
    ld [hl], a                                    ; $4ac4: $77
    adc c                                         ; $4ac5: $89
    xor h                                         ; $4ac6: $ac
    sbc $ef                                       ; $4ac7: $de $ef
    xor $ed                                       ; $4ac9: $ee $ed
    call z, $99ba                                 ; $4acb: $cc $ba $99
    add a                                         ; $4ace: $87
    ld h, l                                       ; $4acf: $65
    ld b, e                                       ; $4ad0: $43
    ld hl, $1111                                  ; $4ad1: $21 $11 $11
    inc hl                                        ; $4ad4: $23
    inc [hl]                                      ; $4ad5: $34
    ld d, [hl]                                    ; $4ad6: $56
    ld h, a                                       ; $4ad7: $67
    adc c                                         ; $4ad8: $89
    xor e                                         ; $4ad9: $ab
    call z, $dddd                                 ; $4ada: $cc $dd $dd
    call c, $a9bb                                 ; $4add: $dc $bb $a9
    sbc b                                         ; $4ae0: $98
    halt                                          ; $4ae1: $76
    ld d, l                                       ; $4ae2: $55
    ld b, h                                       ; $4ae3: $44
    inc sp                                        ; $4ae4: $33
    inc sp                                        ; $4ae5: $33
    inc [hl]                                      ; $4ae6: $34
    ld b, l                                       ; $4ae7: $45
    ld h, a                                       ; $4ae8: $67
    ld a, b                                       ; $4ae9: $78
    sbc c                                         ; $4aea: $99
    xor e                                         ; $4aeb: $ab
    cp e                                          ; $4aec: $bb
    call z, $aabb                                 ; $4aed: $cc $bb $aa
    sbc c                                         ; $4af0: $99
    add a                                         ; $4af1: $87
    ld h, [hl]                                    ; $4af2: $66
    ld d, l                                       ; $4af3: $55
    ld b, e                                       ; $4af4: $43
    inc sp                                        ; $4af5: $33
    ld b, h                                       ; $4af6: $44
    ld b, l                                       ; $4af7: $45
    ld h, [hl]                                    ; $4af8: $66
    ld a, b                                       ; $4af9: $78
    sbc c                                         ; $4afa: $99
    xor e                                         ; $4afb: $ab
    cp h                                          ; $4afc: $bc
    call z, $bbcb                                 ; $4afd: $cc $cb $bb
    xor d                                         ; $4b00: $aa
    sbc b                                         ; $4b01: $98
    halt                                          ; $4b02: $76
    ld d, l                                       ; $4b03: $55
    ld b, e                                       ; $4b04: $43
    ld [hl-], a                                   ; $4b05: $32
    inc hl                                        ; $4b06: $23
    inc sp                                        ; $4b07: $33
    ld b, h                                       ; $4b08: $44
    ld d, [hl]                                    ; $4b09: $56
    ld [hl], a                                    ; $4b0a: $77
    adc c                                         ; $4b0b: $89
    xor e                                         ; $4b0c: $ab
    cp h                                          ; $4b0d: $bc
    call z, $bbcc                                 ; $4b0e: $cc $cc $bb
    xor d                                         ; $4b11: $aa
    sbc b                                         ; $4b12: $98
    add a                                         ; $4b13: $87
    ld h, [hl]                                    ; $4b14: $66
    ld d, l                                       ; $4b15: $55
    ld b, h                                       ; $4b16: $44
    ld b, h                                       ; $4b17: $44
    ld d, l                                       ; $4b18: $55
    ld h, [hl]                                    ; $4b19: $66
    ld h, a                                       ; $4b1a: $67
    adc b                                         ; $4b1b: $88
    adc c                                         ; $4b1c: $89
    sbc c                                         ; $4b1d: $99
    sbc c                                         ; $4b1e: $99
    sbc c                                         ; $4b1f: $99
    sbc b                                         ; $4b20: $98
    add a                                         ; $4b21: $87
    ld [hl], a                                    ; $4b22: $77
    ld h, [hl]                                    ; $4b23: $66
    ld h, [hl]                                    ; $4b24: $66
    ld h, [hl]                                    ; $4b25: $66
    ld h, a                                       ; $4b26: $67
    ld [hl], a                                    ; $4b27: $77
    adc b                                         ; $4b28: $88
    sbc c                                         ; $4b29: $99
    xor d                                         ; $4b2a: $aa
    xor d                                         ; $4b2b: $aa
    xor d                                         ; $4b2c: $aa
    xor c                                         ; $4b2d: $a9
    sbc b                                         ; $4b2e: $98
    add a                                         ; $4b2f: $87
    ld h, [hl]                                    ; $4b30: $66
    ld d, l                                       ; $4b31: $55
    ld b, h                                       ; $4b32: $44
    ld b, h                                       ; $4b33: $44
    ld b, h                                       ; $4b34: $44
    ld d, l                                       ; $4b35: $55
    ld h, a                                       ; $4b36: $67
    adc b                                         ; $4b37: $88
    sbc d                                         ; $4b38: $9a
    xor e                                         ; $4b39: $ab
    cp e                                          ; $4b3a: $bb
    cp e                                          ; $4b3b: $bb
    cp d                                          ; $4b3c: $ba
    xor c                                         ; $4b3d: $a9
    adc b                                         ; $4b3e: $88
    halt                                          ; $4b3f: $76
    ld h, l                                       ; $4b40: $65
    ld d, l                                       ; $4b41: $55
    ld d, l                                       ; $4b42: $55
    ld d, l                                       ; $4b43: $55
    ld h, [hl]                                    ; $4b44: $66
    ld [hl], a                                    ; $4b45: $77
    adc c                                         ; $4b46: $89
    sbc c                                         ; $4b47: $99
    xor d                                         ; $4b48: $aa
    xor d                                         ; $4b49: $aa
    sbc c                                         ; $4b4a: $99
    sbc b                                         ; $4b4b: $98
    ld [hl], a                                    ; $4b4c: $77
    ld h, [hl]                                    ; $4b4d: $66
    ld d, l                                       ; $4b4e: $55
    ld d, l                                       ; $4b4f: $55
    ld d, l                                       ; $4b50: $55
    ld d, [hl]                                    ; $4b51: $56
    ld [hl], a                                    ; $4b52: $77
    adc b                                         ; $4b53: $88
    sbc d                                         ; $4b54: $9a
    xor e                                         ; $4b55: $ab
    cp e                                          ; $4b56: $bb
    cp e                                          ; $4b57: $bb
    xor d                                         ; $4b58: $aa
    sbc b                                         ; $4b59: $98
    add a                                         ; $4b5a: $87
    ld h, [hl]                                    ; $4b5b: $66
    ld d, l                                       ; $4b5c: $55
    ld d, l                                       ; $4b5d: $55
    ld d, l                                       ; $4b5e: $55
    ld d, [hl]                                    ; $4b5f: $56
    ld h, a                                       ; $4b60: $67
    ld a, b                                       ; $4b61: $78
    sbc c                                         ; $4b62: $99
    sbc c                                         ; $4b63: $99
    xor c                                         ; $4b64: $a9
    sbc c                                         ; $4b65: $99
    adc b                                         ; $4b66: $88
    add a                                         ; $4b67: $87
    halt                                          ; $4b68: $76
    ld h, [hl]                                    ; $4b69: $66
    ld h, [hl]                                    ; $4b6a: $66
    ld h, [hl]                                    ; $4b6b: $66
    ld [hl], a                                    ; $4b6c: $77
    adc c                                         ; $4b6d: $89
    sbc d                                         ; $4b6e: $9a
    xor d                                         ; $4b6f: $aa
    cp e                                          ; $4b70: $bb
    xor d                                         ; $4b71: $aa
    xor c                                         ; $4b72: $a9
    adc b                                         ; $4b73: $88
    halt                                          ; $4b74: $76
    ld d, l                                       ; $4b75: $55
    ld b, h                                       ; $4b76: $44
    ld b, h                                       ; $4b77: $44
    ld b, h                                       ; $4b78: $44
    ld d, [hl]                                    ; $4b79: $56
    ld h, a                                       ; $4b7a: $67
    adc b                                         ; $4b7b: $88
    sbc d                                         ; $4b7c: $9a
    xor d                                         ; $4b7d: $aa
    xor d                                         ; $4b7e: $aa
    xor d                                         ; $4b7f: $aa
    sbc c                                         ; $4b80: $99
    adc b                                         ; $4b81: $88
    ld [hl], a                                    ; $4b82: $77
    ld h, [hl]                                    ; $4b83: $66
    ld h, [hl]                                    ; $4b84: $66
    ld h, a                                       ; $4b85: $67
    ld a, b                                       ; $4b86: $78
    adc b                                         ; $4b87: $88
    sbc c                                         ; $4b88: $99
    sbc c                                         ; $4b89: $99
    sbc c                                         ; $4b8a: $99
    adc b                                         ; $4b8b: $88
    ld [hl], a                                    ; $4b8c: $77
    ld h, l                                       ; $4b8d: $65
    ld d, l                                       ; $4b8e: $55
    ld b, h                                       ; $4b8f: $44
    ld b, l                                       ; $4b90: $45
    ld d, [hl]                                    ; $4b91: $56
    ld h, a                                       ; $4b92: $67
    adc c                                         ; $4b93: $89
    xor d                                         ; $4b94: $aa
    cp e                                          ; $4b95: $bb
    cp e                                          ; $4b96: $bb
    cp d                                          ; $4b97: $ba
    xor c                                         ; $4b98: $a9
    adc b                                         ; $4b99: $88
    halt                                          ; $4b9a: $76
    ld h, [hl]                                    ; $4b9b: $66
    ld d, l                                       ; $4b9c: $55
    ld d, [hl]                                    ; $4b9d: $56
    ld h, a                                       ; $4b9e: $67
    ld [hl], a                                    ; $4b9f: $77
    adc b                                         ; $4ba0: $88
    adc b                                         ; $4ba1: $88
    adc b                                         ; $4ba2: $88
    add a                                         ; $4ba3: $87
    ld [hl], a                                    ; $4ba4: $77
    ld h, [hl]                                    ; $4ba5: $66
    ld d, l                                       ; $4ba6: $55
    ld d, l                                       ; $4ba7: $55
    ld h, [hl]                                    ; $4ba8: $66
    ld [hl], a                                    ; $4ba9: $77
    adc c                                         ; $4baa: $89
    xor d                                         ; $4bab: $aa
    cp e                                          ; $4bac: $bb
    cp e                                          ; $4bad: $bb
    cp d                                          ; $4bae: $ba
    xor c                                         ; $4baf: $a9
    add a                                         ; $4bb0: $87
    halt                                          ; $4bb1: $76
    ld d, l                                       ; $4bb2: $55
    ld d, l                                       ; $4bb3: $55
    ld d, l                                       ; $4bb4: $55
    ld h, [hl]                                    ; $4bb5: $66
    ld [hl], a                                    ; $4bb6: $77
    adc b                                         ; $4bb7: $88
    adc c                                         ; $4bb8: $89
    sbc c                                         ; $4bb9: $99
    adc b                                         ; $4bba: $88
    add a                                         ; $4bbb: $87
    halt                                          ; $4bbc: $76
    ld h, [hl]                                    ; $4bbd: $66
    ld h, [hl]                                    ; $4bbe: $66
    ld [hl], a                                    ; $4bbf: $77
    adc b                                         ; $4bc0: $88
    sbc c                                         ; $4bc1: $99
    xor d                                         ; $4bc2: $aa
    xor d                                         ; $4bc3: $aa
    xor d                                         ; $4bc4: $aa
    sbc c                                         ; $4bc5: $99
    add a                                         ; $4bc6: $87
    halt                                          ; $4bc7: $76
    ld h, l                                       ; $4bc8: $65
    ld d, l                                       ; $4bc9: $55
    ld d, l                                       ; $4bca: $55
    ld d, [hl]                                    ; $4bcb: $56
    ld h, a                                       ; $4bcc: $67
    adc b                                         ; $4bcd: $88
    adc c                                         ; $4bce: $89
    sbc c                                         ; $4bcf: $99
    adc b                                         ; $4bd0: $88
    add a                                         ; $4bd1: $87
    ld [hl], a                                    ; $4bd2: $77
    ld [hl], a                                    ; $4bd3: $77
    ld [hl], a                                    ; $4bd4: $77
    ld [hl], a                                    ; $4bd5: $77
    adc b                                         ; $4bd6: $88
    sbc c                                         ; $4bd7: $99
    sbc d                                         ; $4bd8: $9a
    xor d                                         ; $4bd9: $aa
    sbc c                                         ; $4bda: $99
    sbc b                                         ; $4bdb: $98
    ld [hl], a                                    ; $4bdc: $77
    ld h, [hl]                                    ; $4bdd: $66
    ld d, l                                       ; $4bde: $55
    ld d, l                                       ; $4bdf: $55
    ld d, [hl]                                    ; $4be0: $56
    ld h, a                                       ; $4be1: $67
    ld a, b                                       ; $4be2: $78
    adc b                                         ; $4be3: $88
    sbc c                                         ; $4be4: $99
    sbc b                                         ; $4be5: $98
    adc b                                         ; $4be6: $88
    adc b                                         ; $4be7: $88
    ld [hl], a                                    ; $4be8: $77
    ld [hl], a                                    ; $4be9: $77
    ld [hl], a                                    ; $4bea: $77
    adc b                                         ; $4beb: $88
    adc c                                         ; $4bec: $89
    sbc c                                         ; $4bed: $99
    sbc c                                         ; $4bee: $99
    sbc c                                         ; $4bef: $99
    adc b                                         ; $4bf0: $88
    ld [hl], a                                    ; $4bf1: $77
    ld h, [hl]                                    ; $4bf2: $66
    ld d, l                                       ; $4bf3: $55
    ld d, l                                       ; $4bf4: $55
    ld d, [hl]                                    ; $4bf5: $56
    ld h, [hl]                                    ; $4bf6: $66
    ld a, b                                       ; $4bf7: $78
    adc b                                         ; $4bf8: $88
    sbc c                                         ; $4bf9: $99
    sbc c                                         ; $4bfa: $99
    sbc c                                         ; $4bfb: $99
    adc b                                         ; $4bfc: $88
    add a                                         ; $4bfd: $87
    ld [hl], a                                    ; $4bfe: $77
    ld [hl], a                                    ; $4bff: $77
    adc b                                         ; $4c00: $88
    adc b                                         ; $4c01: $88
    sbc c                                         ; $4c02: $99
    sbc c                                         ; $4c03: $99
    sbc b                                         ; $4c04: $98
    adc b                                         ; $4c05: $88
    ld [hl], a                                    ; $4c06: $77
    ld h, [hl]                                    ; $4c07: $66
    ld h, l                                       ; $4c08: $65
    ld d, l                                       ; $4c09: $55
    ld h, [hl]                                    ; $4c0a: $66
    ld h, a                                       ; $4c0b: $67
    ld a, b                                       ; $4c0c: $78
    adc b                                         ; $4c0d: $88
    sbc c                                         ; $4c0e: $99
    sbc c                                         ; $4c0f: $99
    sbc c                                         ; $4c10: $99
    adc b                                         ; $4c11: $88
    adc b                                         ; $4c12: $88
    ld [hl], a                                    ; $4c13: $77
    ld [hl], a                                    ; $4c14: $77
    ld a, b                                       ; $4c15: $78
    adc b                                         ; $4c16: $88
    adc b                                         ; $4c17: $88
    adc b                                         ; $4c18: $88
    adc b                                         ; $4c19: $88
    ld [hl], a                                    ; $4c1a: $77
    halt                                          ; $4c1b: $76
    ld h, [hl]                                    ; $4c1c: $66
    ld h, [hl]                                    ; $4c1d: $66
    ld h, [hl]                                    ; $4c1e: $66
    ld h, a                                       ; $4c1f: $67
    add a                                         ; $4c20: $87
    adc b                                         ; $4c21: $88
    adc c                                         ; $4c22: $89
    sbc c                                         ; $4c23: $99
    sbc c                                         ; $4c24: $99
    sbc b                                         ; $4c25: $98
    adc b                                         ; $4c26: $88
    adc b                                         ; $4c27: $88
    ld [hl], a                                    ; $4c28: $77
    ld [hl], a                                    ; $4c29: $77
    ld [hl], a                                    ; $4c2a: $77
    adc b                                         ; $4c2b: $88
    adc b                                         ; $4c2c: $88
    adc b                                         ; $4c2d: $88
    add a                                         ; $4c2e: $87
    ld [hl], a                                    ; $4c2f: $77
    add [hl]                                      ; $4c30: $86
    ld h, [hl]                                    ; $4c31: $66
    ld h, [hl]                                    ; $4c32: $66
    ld h, a                                       ; $4c33: $67
    ld [hl], a                                    ; $4c34: $77
    ld a, b                                       ; $4c35: $78
    adc c                                         ; $4c36: $89
    sbc c                                         ; $4c37: $99
    sbc c                                         ; $4c38: $99
    sbc c                                         ; $4c39: $99
    sbc b                                         ; $4c3a: $98
    adc b                                         ; $4c3b: $88
    add a                                         ; $4c3c: $87
    ld [hl], a                                    ; $4c3d: $77
    ld [hl], a                                    ; $4c3e: $77
    ld [hl], a                                    ; $4c3f: $77
    add a                                         ; $4c40: $87
    ld [hl], a                                    ; $4c41: $77
    ld [hl], a                                    ; $4c42: $77
    ld [hl], a                                    ; $4c43: $77
    ld [hl], a                                    ; $4c44: $77
    ld [hl], a                                    ; $4c45: $77
    ld [hl], a                                    ; $4c46: $77
    ld [hl], a                                    ; $4c47: $77
    ld [hl], a                                    ; $4c48: $77
    ld a, b                                       ; $4c49: $78
    adc b                                         ; $4c4a: $88
    adc c                                         ; $4c4b: $89
    sbc c                                         ; $4c4c: $99
    sbc c                                         ; $4c4d: $99
    sbc c                                         ; $4c4e: $99
    sbc b                                         ; $4c4f: $98
    adc b                                         ; $4c50: $88
    ld [hl], a                                    ; $4c51: $77
    ld [hl], a                                    ; $4c52: $77
    ld [hl], a                                    ; $4c53: $77
    ld h, [hl]                                    ; $4c54: $66
    ld h, a                                       ; $4c55: $67
    ld [hl], a                                    ; $4c56: $77
    ld [hl], a                                    ; $4c57: $77
    ld [hl], a                                    ; $4c58: $77
    ld [hl], a                                    ; $4c59: $77
    ld [hl], a                                    ; $4c5a: $77
    ld a, b                                       ; $4c5b: $78
    adc b                                         ; $4c5c: $88
    adc b                                         ; $4c5d: $88
    adc b                                         ; $4c5e: $88
    adc b                                         ; $4c5f: $88
    sbc c                                         ; $4c60: $99
    sbc c                                         ; $4c61: $99
    sbc c                                         ; $4c62: $99
    adc b                                         ; $4c63: $88
    adc b                                         ; $4c64: $88
    ld [hl], a                                    ; $4c65: $77
    ld [hl], a                                    ; $4c66: $77
    ld h, [hl]                                    ; $4c67: $66
    ld h, [hl]                                    ; $4c68: $66
    ld h, [hl]                                    ; $4c69: $66
    ld h, [hl]                                    ; $4c6a: $66
    ld [hl], a                                    ; $4c6b: $77
    ld [hl], a                                    ; $4c6c: $77
    ld a, b                                       ; $4c6d: $78
    adc b                                         ; $4c6e: $88
    adc b                                         ; $4c6f: $88
    adc b                                         ; $4c70: $88
    adc b                                         ; $4c71: $88
    adc b                                         ; $4c72: $88
    adc b                                         ; $4c73: $88
    adc b                                         ; $4c74: $88
    adc b                                         ; $4c75: $88
    adc b                                         ; $4c76: $88
    adc b                                         ; $4c77: $88
    ld [hl], a                                    ; $4c78: $77
    ld [hl], a                                    ; $4c79: $77
    ld [hl], a                                    ; $4c7a: $77
    halt                                          ; $4c7b: $76
    ld h, [hl]                                    ; $4c7c: $66
    ld h, [hl]                                    ; $4c7d: $66
    ld [hl], a                                    ; $4c7e: $77
    ld [hl], a                                    ; $4c7f: $77
    add a                                         ; $4c80: $87
    adc b                                         ; $4c81: $88
    adc b                                         ; $4c82: $88
    adc c                                         ; $4c83: $89
    sbc c                                         ; $4c84: $99
    sbc c                                         ; $4c85: $99
    sbc c                                         ; $4c86: $99
    adc b                                         ; $4c87: $88
    adc b                                         ; $4c88: $88
    adc b                                         ; $4c89: $88
    ld [hl], a                                    ; $4c8a: $77
    ld [hl], a                                    ; $4c8b: $77
    ld [hl], a                                    ; $4c8c: $77
    ld [hl], a                                    ; $4c8d: $77
    ld [hl], a                                    ; $4c8e: $77
    ld [hl], a                                    ; $4c8f: $77
    add a                                         ; $4c90: $87
    ld [hl], a                                    ; $4c91: $77
    ld [hl], a                                    ; $4c92: $77
    ld a, b                                       ; $4c93: $78
    adc b                                         ; $4c94: $88
    adc b                                         ; $4c95: $88
    adc b                                         ; $4c96: $88
    adc b                                         ; $4c97: $88
    adc b                                         ; $4c98: $88
    adc b                                         ; $4c99: $88
    adc b                                         ; $4c9a: $88
    adc b                                         ; $4c9b: $88
    adc b                                         ; $4c9c: $88
    ld [hl], a                                    ; $4c9d: $77
    ld [hl], a                                    ; $4c9e: $77
    ld [hl], a                                    ; $4c9f: $77
    ld h, [hl]                                    ; $4ca0: $66
    ld h, [hl]                                    ; $4ca1: $66
    ld [hl], a                                    ; $4ca2: $77
    ld [hl], a                                    ; $4ca3: $77
    ld [hl], a                                    ; $4ca4: $77
    ld a, b                                       ; $4ca5: $78
    adc b                                         ; $4ca6: $88
    adc b                                         ; $4ca7: $88
    sbc c                                         ; $4ca8: $99
    adc b                                         ; $4ca9: $88
    adc b                                         ; $4caa: $88
    adc b                                         ; $4cab: $88
    adc b                                         ; $4cac: $88
    add a                                         ; $4cad: $87
    ld [hl], a                                    ; $4cae: $77
    add a                                         ; $4caf: $87
    add a                                         ; $4cb0: $87
    ld [hl], a                                    ; $4cb1: $77
    ld [hl], a                                    ; $4cb2: $77
    ld [hl], a                                    ; $4cb3: $77
    ld [hl], a                                    ; $4cb4: $77
    ld [hl], a                                    ; $4cb5: $77
    ld [hl], a                                    ; $4cb6: $77
    ld a, b                                       ; $4cb7: $78
    adc b                                         ; $4cb8: $88
    adc b                                         ; $4cb9: $88
    adc b                                         ; $4cba: $88
    adc c                                         ; $4cbb: $89
    sbc b                                         ; $4cbc: $98
    adc b                                         ; $4cbd: $88
    adc b                                         ; $4cbe: $88
    adc b                                         ; $4cbf: $88
    add a                                         ; $4cc0: $87
    ld [hl], a                                    ; $4cc1: $77
    ld [hl], a                                    ; $4cc2: $77
    ld [hl], a                                    ; $4cc3: $77
    halt                                          ; $4cc4: $76
    ld h, [hl]                                    ; $4cc5: $66
    ld [hl], a                                    ; $4cc6: $77
    ld [hl], a                                    ; $4cc7: $77
    ld [hl], a                                    ; $4cc8: $77
    ld a, b                                       ; $4cc9: $78
    adc b                                         ; $4cca: $88
    adc b                                         ; $4ccb: $88
    adc b                                         ; $4ccc: $88
    adc b                                         ; $4ccd: $88
    adc b                                         ; $4cce: $88
    adc b                                         ; $4ccf: $88
    adc b                                         ; $4cd0: $88
    adc b                                         ; $4cd1: $88
    adc b                                         ; $4cd2: $88
    ld [hl], a                                    ; $4cd3: $77
    ld [hl], a                                    ; $4cd4: $77
    ld [hl], a                                    ; $4cd5: $77
    ld [hl], a                                    ; $4cd6: $77
    ld [hl], a                                    ; $4cd7: $77
    ld [hl], a                                    ; $4cd8: $77
    ld [hl], a                                    ; $4cd9: $77
    ld [hl], a                                    ; $4cda: $77
    adc b                                         ; $4cdb: $88
    adc b                                         ; $4cdc: $88
    adc b                                         ; $4cdd: $88
    adc b                                         ; $4cde: $88
    adc b                                         ; $4cdf: $88
    adc b                                         ; $4ce0: $88
    adc b                                         ; $4ce1: $88
    adc b                                         ; $4ce2: $88
    adc b                                         ; $4ce3: $88
    ld [hl], a                                    ; $4ce4: $77
    ld [hl], a                                    ; $4ce5: $77
    ld [hl], a                                    ; $4ce6: $77
    ld [hl], a                                    ; $4ce7: $77
    ld [hl], a                                    ; $4ce8: $77
    ld [hl], a                                    ; $4ce9: $77
    ld [hl], a                                    ; $4cea: $77
    ld [hl], a                                    ; $4ceb: $77
    ld a, b                                       ; $4cec: $78
    adc b                                         ; $4ced: $88
    adc b                                         ; $4cee: $88
    adc b                                         ; $4cef: $88
    adc b                                         ; $4cf0: $88
    adc b                                         ; $4cf1: $88
    adc b                                         ; $4cf2: $88
    adc b                                         ; $4cf3: $88
    adc b                                         ; $4cf4: $88
    ld [hl], a                                    ; $4cf5: $77
    ld [hl], a                                    ; $4cf6: $77
    ld [hl], a                                    ; $4cf7: $77
    ld [hl], a                                    ; $4cf8: $77
    ld [hl], a                                    ; $4cf9: $77
    ld [hl], a                                    ; $4cfa: $77
    ld [hl], a                                    ; $4cfb: $77
    ld [hl], a                                    ; $4cfc: $77
    ld a, b                                       ; $4cfd: $78
    adc b                                         ; $4cfe: $88
    adc b                                         ; $4cff: $88
    adc b                                         ; $4d00: $88
    adc b                                         ; $4d01: $88
    adc b                                         ; $4d02: $88
    adc b                                         ; $4d03: $88
    adc b                                         ; $4d04: $88
    adc b                                         ; $4d05: $88
    add a                                         ; $4d06: $87
    ld [hl], a                                    ; $4d07: $77
    ld [hl], a                                    ; $4d08: $77
    ld [hl], a                                    ; $4d09: $77
    ld [hl], a                                    ; $4d0a: $77
    ld [hl], a                                    ; $4d0b: $77
    ld [hl], a                                    ; $4d0c: $77
    ld [hl], a                                    ; $4d0d: $77
    ld [hl], a                                    ; $4d0e: $77
    ld [hl], a                                    ; $4d0f: $77
    adc b                                         ; $4d10: $88
    adc b                                         ; $4d11: $88
    adc b                                         ; $4d12: $88
    adc b                                         ; $4d13: $88
    adc b                                         ; $4d14: $88
    adc b                                         ; $4d15: $88
    adc b                                         ; $4d16: $88
    adc b                                         ; $4d17: $88
    add a                                         ; $4d18: $87
    ld [hl], a                                    ; $4d19: $77
    ld a, b                                       ; $4d1a: $78
    adc b                                         ; $4d1b: $88
    ld [hl], a                                    ; $4d1c: $77
    ld [hl], a                                    ; $4d1d: $77
    ld [hl], a                                    ; $4d1e: $77
    ld a, b                                       ; $4d1f: $78
    adc b                                         ; $4d20: $88
    ld [hl], a                                    ; $4d21: $77
    ld [hl], a                                    ; $4d22: $77
    adc b                                         ; $4d23: $88
    adc b                                         ; $4d24: $88
    adc b                                         ; $4d25: $88
    add a                                         ; $4d26: $87
    ld [hl], a                                    ; $4d27: $77
    adc b                                         ; $4d28: $88
    adc b                                         ; $4d29: $88
    adc b                                         ; $4d2a: $88
    ld [hl], a                                    ; $4d2b: $77
    ld [hl], a                                    ; $4d2c: $77
    ld [hl], a                                    ; $4d2d: $77
    ld [hl], a                                    ; $4d2e: $77
    ld [hl], a                                    ; $4d2f: $77
    add [hl]                                      ; $4d30: $86
    ld h, [hl]                                    ; $4d31: $66
    ld h, [hl]                                    ; $4d32: $66
    ld a, b                                       ; $4d33: $78
    sbc e                                         ; $4d34: $9b
    call $cadd                                    ; $4d35: $cd $dd $ca
    add a                                         ; $4d38: $87
    ld d, e                                       ; $4d39: $53
    ld [hl+], a                                   ; $4d3a: $22
    ld [de], a                                    ; $4d3b: $12
    inc h                                         ; $4d3c: $24
    ld d, a                                       ; $4d3d: $57
    adc d                                         ; $4d3e: $8a
    xor e                                         ; $4d3f: $ab
    cp e                                          ; $4d40: $bb
    xor c                                         ; $4d41: $a9
    sbc c                                         ; $4d42: $99
    sbc c                                         ; $4d43: $99
    sbc c                                         ; $4d44: $99
    sbc c                                         ; $4d45: $99
    adc b                                         ; $4d46: $88
    ld [hl], a                                    ; $4d47: $77
    ld h, l                                       ; $4d48: $65
    ld b, h                                       ; $4d49: $44
    inc [hl]                                      ; $4d4a: $34
    ld b, l                                       ; $4d4b: $45
    ld a, b                                       ; $4d4c: $78
    xor e                                         ; $4d4d: $ab
    call z, $b9cc                                 ; $4d4e: $cc $cc $b9
    add a                                         ; $4d51: $87
    ld h, l                                       ; $4d52: $65
    ld b, h                                       ; $4d53: $44
    ld b, h                                       ; $4d54: $44
    ld d, [hl]                                    ; $4d55: $56
    ld a, b                                       ; $4d56: $78
    adc b                                         ; $4d57: $88
    adc b                                         ; $4d58: $88
    adc b                                         ; $4d59: $88
    adc b                                         ; $4d5a: $88
    adc c                                         ; $4d5b: $89
    sbc d                                         ; $4d5c: $9a
    xor e                                         ; $4d5d: $ab
    xor d                                         ; $4d5e: $aa
    sbc b                                         ; $4d5f: $98
    add [hl]                                      ; $4d60: $86
    ld b, e                                       ; $4d61: $43
    ld [hl+], a                                   ; $4d62: $22
    inc [hl]                                      ; $4d63: $34
    ld d, [hl]                                    ; $4d64: $56
    adc e                                         ; $4d65: $8b
    call z, $cacd                                 ; $4d66: $cc $cd $ca
    sbc b                                         ; $4d69: $98
    halt                                          ; $4d6a: $76
    ld d, l                                       ; $4d6b: $55
    ld d, l                                       ; $4d6c: $55
    ld d, l                                       ; $4d6d: $55
    ld d, l                                       ; $4d6e: $55
    ld h, a                                       ; $4d6f: $67
    adc b                                         ; $4d70: $88
    ld a, d                                       ; $4d71: $7a
    sbc b                                         ; $4d72: $98
    ld a, e                                       ; $4d73: $7b
    cp e                                          ; $4d74: $bb
    sbc d                                         ; $4d75: $9a
    xor b                                         ; $4d76: $a8
    add [hl]                                      ; $4d77: $86
    ld d, h                                       ; $4d78: $54
    ld b, h                                       ; $4d79: $44
    ld b, h                                       ; $4d7a: $44
    ld l, b                                       ; $4d7b: $68
    sbc c                                         ; $4d7c: $99
    sbc d                                         ; $4d7d: $9a
    xor d                                         ; $4d7e: $aa
    xor d                                         ; $4d7f: $aa
    sbc b                                         ; $4d80: $98
    halt                                          ; $4d81: $76
    ld d, [hl]                                    ; $4d82: $56
    ld h, a                                       ; $4d83: $67
    adc b                                         ; $4d84: $88
    halt                                          ; $4d85: $76
    ld h, l                                       ; $4d86: $65
    ld h, [hl]                                    ; $4d87: $66
    ld [hl], a                                    ; $4d88: $77
    adc b                                         ; $4d89: $88
    adc c                                         ; $4d8a: $89
    xor e                                         ; $4d8b: $ab
    cp e                                          ; $4d8c: $bb
    xor c                                         ; $4d8d: $a9
    halt                                          ; $4d8e: $76
    ld d, l                                       ; $4d8f: $55
    ld d, h                                       ; $4d90: $54
    ld b, l                                       ; $4d91: $45
    ld h, a                                       ; $4d92: $67
    adc c                                         ; $4d93: $89
    xor d                                         ; $4d94: $aa
    sbc c                                         ; $4d95: $99
    sbc b                                         ; $4d96: $98
    sbc c                                         ; $4d97: $99
    add a                                         ; $4d98: $87
    ld a, b                                       ; $4d99: $78
    ld [hl], l                                    ; $4d9a: $75
    ld h, a                                       ; $4d9b: $67
    halt                                          ; $4d9c: $76
    ld b, l                                       ; $4d9d: $45
    ld h, a                                       ; $4d9e: $67
    ld a, b                                       ; $4d9f: $78
    xor h                                         ; $4da0: $ac
    cp d                                          ; $4da1: $ba
    sbc c                                         ; $4da2: $99
    sub a                                         ; $4da3: $97
    ld h, l                                       ; $4da4: $65
    ld d, l                                       ; $4da5: $55
    ld b, h                                       ; $4da6: $44
    ld d, a                                       ; $4da7: $57
    adc b                                         ; $4da8: $88
    adc c                                         ; $4da9: $89
    xor d                                         ; $4daa: $aa
    sbc b                                         ; $4dab: $98
    adc b                                         ; $4dac: $88
    halt                                          ; $4dad: $76
    ld a, b                                       ; $4dae: $78
    add a                                         ; $4daf: $87
    add a                                         ; $4db0: $87
    ld [hl], a                                    ; $4db1: $77
    halt                                          ; $4db2: $76
    ld d, [hl]                                    ; $4db3: $56
    ld a, b                                       ; $4db4: $78
    sbc c                                         ; $4db5: $99
    xor d                                         ; $4db6: $aa
    sbc b                                         ; $4db7: $98
    ld [hl], a                                    ; $4db8: $77
    ld [hl], a                                    ; $4db9: $77
    ld h, a                                       ; $4dba: $67
    halt                                          ; $4dbb: $76
    ld h, a                                       ; $4dbc: $67
    ld [hl], a                                    ; $4dbd: $77
    adc b                                         ; $4dbe: $88
    adc b                                         ; $4dbf: $88
    adc b                                         ; $4dc0: $88
    sbc c                                         ; $4dc1: $99
    sbc c                                         ; $4dc2: $99
    sbc b                                         ; $4dc3: $98
    halt                                          ; $4dc4: $76
    ld d, l                                       ; $4dc5: $55
    ld h, [hl]                                    ; $4dc6: $66
    ld [hl], a                                    ; $4dc7: $77
    adc b                                         ; $4dc8: $88
    adc b                                         ; $4dc9: $88
    adc b                                         ; $4dca: $88
    sbc c                                         ; $4dcb: $99
    sbc c                                         ; $4dcc: $99
    add a                                         ; $4dcd: $87
    halt                                          ; $4dce: $76
    ld h, a                                       ; $4dcf: $67
    add a                                         ; $4dd0: $87
    ld [hl], a                                    ; $4dd1: $77
    ld h, [hl]                                    ; $4dd2: $66
    ld h, a                                       ; $4dd3: $67
    adc c                                         ; $4dd4: $89
    xor d                                         ; $4dd5: $aa
    xor c                                         ; $4dd6: $a9
    adc b                                         ; $4dd7: $88
    ld [hl], a                                    ; $4dd8: $77
    ld h, [hl]                                    ; $4dd9: $66
    ld h, a                                       ; $4dda: $67
    ld [hl], a                                    ; $4ddb: $77
    ld [hl], a                                    ; $4ddc: $77
    ld [hl], a                                    ; $4ddd: $77
    adc b                                         ; $4dde: $88
    adc c                                         ; $4ddf: $89
    sbc c                                         ; $4de0: $99
    adc b                                         ; $4de1: $88
    adc b                                         ; $4de2: $88
    ld [hl], a                                    ; $4de3: $77
    ld h, [hl]                                    ; $4de4: $66
    ld h, [hl]                                    ; $4de5: $66
    ld h, a                                       ; $4de6: $67
    ld a, b                                       ; $4de7: $78
    sbc c                                         ; $4de8: $99
    sbc b                                         ; $4de9: $98
    adc b                                         ; $4dea: $88
    add a                                         ; $4deb: $87
    ld a, b                                       ; $4dec: $78
    adc b                                         ; $4ded: $88
    adc b                                         ; $4dee: $88
    ld [hl], a                                    ; $4def: $77
    ld h, [hl]                                    ; $4df0: $66
    ld h, a                                       ; $4df1: $67
    ld a, b                                       ; $4df2: $78
    sbc c                                         ; $4df3: $99
    sbc b                                         ; $4df4: $98
    add a                                         ; $4df5: $87
    ld [hl], a                                    ; $4df6: $77
    adc b                                         ; $4df7: $88
    adc b                                         ; $4df8: $88
    ld [hl], a                                    ; $4df9: $77
    ld h, [hl]                                    ; $4dfa: $66
    ld h, [hl]                                    ; $4dfb: $66
    ld a, b                                       ; $4dfc: $78
    adc b                                         ; $4dfd: $88
    adc b                                         ; $4dfe: $88
    add a                                         ; $4dff: $87
    add a                                         ; $4e00: $87
    adc c                                         ; $4e01: $89
    sbc c                                         ; $4e02: $99
    add a                                         ; $4e03: $87
    ld h, a                                       ; $4e04: $67
    halt                                          ; $4e05: $76
    ld d, h                                       ; $4e06: $54
    ld d, a                                       ; $4e07: $57
    sbc d                                         ; $4e08: $9a
    cp d                                          ; $4e09: $ba
    add a                                         ; $4e0a: $87
    ld a, b                                       ; $4e0b: $78
    add a                                         ; $4e0c: $87
    ld [hl], a                                    ; $4e0d: $77
    ld [hl], a                                    ; $4e0e: $77
    ld a, b                                       ; $4e0f: $78
    add a                                         ; $4e10: $87
    ld [hl], a                                    ; $4e11: $77
    ld [hl], a                                    ; $4e12: $77
    adc b                                         ; $4e13: $88
    adc b                                         ; $4e14: $88
    adc c                                         ; $4e15: $89
    sbc c                                         ; $4e16: $99
    add a                                         ; $4e17: $87
    ld h, [hl]                                    ; $4e18: $66
    ld h, [hl]                                    ; $4e19: $66
    ld a, b                                       ; $4e1a: $78
    adc b                                         ; $4e1b: $88
    ld a, b                                       ; $4e1c: $78
    adc b                                         ; $4e1d: $88
    adc b                                         ; $4e1e: $88
    adc b                                         ; $4e1f: $88
    add a                                         ; $4e20: $87
    ld [hl], a                                    ; $4e21: $77
    ld [hl], a                                    ; $4e22: $77
    ld [hl], a                                    ; $4e23: $77
    adc b                                         ; $4e24: $88
    ld a, b                                       ; $4e25: $78
    adc b                                         ; $4e26: $88
    ld [hl], a                                    ; $4e27: $77
    ld h, [hl]                                    ; $4e28: $66
    ld a, d                                       ; $4e29: $7a
    cp e                                          ; $4e2a: $bb
    xor b                                         ; $4e2b: $a8
    ld d, e                                       ; $4e2c: $53
    ld b, [hl]                                    ; $4e2d: $46
    sbc e                                         ; $4e2e: $9b
    xor b                                         ; $4e2f: $a8
    ld h, h                                       ; $4e30: $64
    ld b, [hl]                                    ; $4e31: $46
    sbc e                                         ; $4e32: $9b
    cp d                                          ; $4e33: $ba
    add [hl]                                      ; $4e34: $86
    ld d, l                                       ; $4e35: $55
    ld l, b                                       ; $4e36: $68
    adc c                                         ; $4e37: $89
    sbc c                                         ; $4e38: $99
    sbc b                                         ; $4e39: $98
    ld h, l                                       ; $4e3a: $65
    ld b, h                                       ; $4e3b: $44
    ld l, c                                       ; $4e3c: $69
    call Call_01a_62ca                            ; $4e3d: $cd $ca $62
    inc h                                         ; $4e40: $24
    ld a, d                                       ; $4e41: $7a
    cp e                                          ; $4e42: $bb
    sbc b                                         ; $4e43: $98
    ld h, l                                       ; $4e44: $65
    ld d, l                                       ; $4e45: $55
    ld l, c                                       ; $4e46: $69
    cp h                                          ; $4e47: $bc
    cp c                                          ; $4e48: $b9
    ld [hl], l                                    ; $4e49: $75
    inc [hl]                                      ; $4e4a: $34
    ld a, c                                       ; $4e4b: $79
    xor c                                         ; $4e4c: $a9
    add [hl]                                      ; $4e4d: $86
    ld d, l                                       ; $4e4e: $55
    ld h, a                                       ; $4e4f: $67
    sbc d                                         ; $4e50: $9a
    cp e                                          ; $4e51: $bb
    xor b                                         ; $4e52: $a8
    ld d, e                                       ; $4e53: $53
    inc [hl]                                      ; $4e54: $34
    ld a, d                                       ; $4e55: $7a
    cp d                                          ; $4e56: $ba
    add [hl]                                      ; $4e57: $86
    ld d, [hl]                                    ; $4e58: $56
    ld a, b                                       ; $4e59: $78
    sbc c                                         ; $4e5a: $99
    sbc b                                         ; $4e5b: $98
    add a                                         ; $4e5c: $87
    ld h, l                                       ; $4e5d: $65
    ld d, [hl]                                    ; $4e5e: $56
    adc d                                         ; $4e5f: $8a
    xor c                                         ; $4e60: $a9
    add [hl]                                      ; $4e61: $86
    ld b, l                                       ; $4e62: $45
    ld a, c                                       ; $4e63: $79
    xor c                                         ; $4e64: $a9
    adc b                                         ; $4e65: $88
    adc b                                         ; $4e66: $88
    add [hl]                                      ; $4e67: $86
    ld b, h                                       ; $4e68: $44
    ld l, c                                       ; $4e69: $69
    xor d                                         ; $4e6a: $aa
    add [hl]                                      ; $4e6b: $86
    ld d, [hl]                                    ; $4e6c: $56
    adc d                                         ; $4e6d: $8a
    xor c                                         ; $4e6e: $a9
    ld [hl], h                                    ; $4e6f: $74
    ld l, c                                       ; $4e70: $69
    add a                                         ; $4e71: $87
    ld d, a                                       ; $4e72: $57
    add a                                         ; $4e73: $87
    ld a, b                                       ; $4e74: $78
    sbc b                                         ; $4e75: $98
    ld [hl], a                                    ; $4e76: $77
    adc b                                         ; $4e77: $88
    sbc c                                         ; $4e78: $99
    ld h, e                                       ; $4e79: $63
    ld l, c                                       ; $4e7a: $69
    sub [hl]                                      ; $4e7b: $96
    ld a, c                                       ; $4e7c: $79
    add [hl]                                      ; $4e7d: $86
    ld a, b                                       ; $4e7e: $78
    add a                                         ; $4e7f: $87
    sbc d                                         ; $4e80: $9a
    add a                                         ; $4e81: $87
    halt                                          ; $4e82: $76
    ld d, [hl]                                    ; $4e83: $56
    adc c                                         ; $4e84: $89
    adc b                                         ; $4e85: $88
    sbc b                                         ; $4e86: $98
    ld h, [hl]                                    ; $4e87: $66
    ld [hl], a                                    ; $4e88: $77
    adc d                                         ; $4e89: $8a
    cp c                                          ; $4e8a: $b9
    halt                                          ; $4e8b: $76
    ld h, h                                       ; $4e8c: $64
    dec [hl]                                      ; $4e8d: $35
    xor h                                         ; $4e8e: $ac
    cp c                                          ; $4e8f: $b9
    ld h, l                                       ; $4e90: $65
    ld h, a                                       ; $4e91: $67
    ld a, b                                       ; $4e92: $78
    sbc e                                         ; $4e93: $9b
    and a                                         ; $4e94: $a7
    ld b, h                                       ; $4e95: $44
    ld d, a                                       ; $4e96: $57
    sbc c                                         ; $4e97: $99
    xor d                                         ; $4e98: $aa
    add [hl]                                      ; $4e99: $86
    ld d, a                                       ; $4e9a: $57
    sub a                                         ; $4e9b: $97
    ld l, b                                       ; $4e9c: $68
    db $db                                        ; $4e9d: $db
    ld b, c                                       ; $4e9e: $41
    ld b, a                                       ; $4e9f: $47
    adc d                                         ; $4ea0: $8a
    cp c                                          ; $4ea1: $b9
    ld a, b                                       ; $4ea2: $78
    add [hl]                                      ; $4ea3: $86
    ld b, a                                       ; $4ea4: $47
    sbc d                                         ; $4ea5: $9a
    xor c                                         ; $4ea6: $a9
    ld [hl], h                                    ; $4ea7: $74
    dec [hl]                                      ; $4ea8: $35
    ld a, c                                       ; $4ea9: $79
    xor d                                         ; $4eaa: $aa
    xor c                                         ; $4eab: $a9
    ld [hl], l                                    ; $4eac: $75
    ld b, h                                       ; $4ead: $44
    ld a, e                                       ; $4eae: $7b
    jp z, Jump_01a_4585                           ; $4eaf: $ca $85 $45

    ld a, c                                       ; $4eb2: $79
    cp e                                          ; $4eb3: $bb
    sub a                                         ; $4eb4: $97
    ld h, l                                       ; $4eb5: $65
    ld d, [hl]                                    ; $4eb6: $56
    adc d                                         ; $4eb7: $8a
    xor b                                         ; $4eb8: $a8
    ld h, l                                       ; $4eb9: $65
    ld d, a                                       ; $4eba: $57
    sbc d                                         ; $4ebb: $9a
    sbc b                                         ; $4ebc: $98
    ld [hl], a                                    ; $4ebd: $77
    halt                                          ; $4ebe: $76
    ld a, b                                       ; $4ebf: $78
    adc b                                         ; $4ec0: $88
    add a                                         ; $4ec1: $87
    ld h, a                                       ; $4ec2: $67
    sbc b                                         ; $4ec3: $98
    ld [hl], a                                    ; $4ec4: $77
    ld a, b                                       ; $4ec5: $78
    add a                                         ; $4ec6: $87
    ld h, a                                       ; $4ec7: $67
    adc c                                         ; $4ec8: $89
    sub a                                         ; $4ec9: $97
    ld h, [hl]                                    ; $4eca: $66
    ld [hl], a                                    ; $4ecb: $77
    adc c                                         ; $4ecc: $89
    sbc d                                         ; $4ecd: $9a
    sub a                                         ; $4ece: $97
    ld b, h                                       ; $4ecf: $44
    ld l, b                                       ; $4ed0: $68
    xor d                                         ; $4ed1: $aa
    xor b                                         ; $4ed2: $a8
    ld h, h                                       ; $4ed3: $64
    ld d, [hl]                                    ; $4ed4: $56
    sbc e                                         ; $4ed5: $9b
    cp c                                          ; $4ed6: $b9
    halt                                          ; $4ed7: $76
    ld d, l                                       ; $4ed8: $55
    ld d, a                                       ; $4ed9: $57
    xor d                                         ; $4eda: $aa
    sub a                                         ; $4edb: $97
    ld h, [hl]                                    ; $4edc: $66
    ld h, a                                       ; $4edd: $67
    adc c                                         ; $4ede: $89
    sbc c                                         ; $4edf: $99
    add a                                         ; $4ee0: $87
    ld h, [hl]                                    ; $4ee1: $66
    ld [hl], a                                    ; $4ee2: $77
    ld a, b                                       ; $4ee3: $78
    adc b                                         ; $4ee4: $88
    adc b                                         ; $4ee5: $88
    halt                                          ; $4ee6: $76
    ld a, b                                       ; $4ee7: $78
    sbc c                                         ; $4ee8: $99
    add a                                         ; $4ee9: $87
    ld [hl], a                                    ; $4eea: $77
    ld [hl], a                                    ; $4eeb: $77
    ld a, b                                       ; $4eec: $78
    adc b                                         ; $4eed: $88
    add a                                         ; $4eee: $87
    ld a, b                                       ; $4eef: $78
    adc b                                         ; $4ef0: $88
    ld [hl], a                                    ; $4ef1: $77
    ld [hl], a                                    ; $4ef2: $77
    ld a, b                                       ; $4ef3: $78
    adc b                                         ; $4ef4: $88
    add a                                         ; $4ef5: $87
    ld [hl], a                                    ; $4ef6: $77
    ld a, b                                       ; $4ef7: $78
    adc b                                         ; $4ef8: $88
    adc b                                         ; $4ef9: $88
    halt                                          ; $4efa: $76
    ld h, a                                       ; $4efb: $67
    adc c                                         ; $4efc: $89
    add a                                         ; $4efd: $87
    ld [hl], a                                    ; $4efe: $77
    ld [hl], a                                    ; $4eff: $77
    adc b                                         ; $4f00: $88
    adc b                                         ; $4f01: $88
    add a                                         ; $4f02: $87
    ld [hl], a                                    ; $4f03: $77
    ld [hl], a                                    ; $4f04: $77
    adc b                                         ; $4f05: $88
    add a                                         ; $4f06: $87
    adc b                                         ; $4f07: $88
    adc b                                         ; $4f08: $88
    ld [hl], a                                    ; $4f09: $77
    ld [hl], a                                    ; $4f0a: $77
    adc b                                         ; $4f0b: $88
    adc b                                         ; $4f0c: $88
    add a                                         ; $4f0d: $87
    adc b                                         ; $4f0e: $88
    ld [hl], a                                    ; $4f0f: $77
    adc c                                         ; $4f10: $89
    sub [hl]                                      ; $4f11: $96
    ld e, c                                       ; $4f12: $59
    ret z                                         ; $4f13: $c8

    inc [hl]                                      ; $4f14: $34
    cp h                                          ; $4f15: $bc
    ld [hl], e                                    ; $4f16: $73
    ld l, d                                       ; $4f17: $6a
    or a                                          ; $4f18: $b7
    ld b, [hl]                                    ; $4f19: $46
    sbc d                                         ; $4f1a: $9a
    add [hl]                                      ; $4f1b: $86
    ld a, b                                       ; $4f1c: $78
    add a                                         ; $4f1d: $87
    adc c                                         ; $4f1e: $89
    sub [hl]                                      ; $4f1f: $96
    ld e, b                                       ; $4f20: $58
    cp b                                          ; $4f21: $b8
    ld d, l                                       ; $4f22: $55
    sbc d                                         ; $4f23: $9a
    add l                                         ; $4f24: $85
    ld l, c                                       ; $4f25: $69
    sbc b                                         ; $4f26: $98
    ld h, a                                       ; $4f27: $67
    adc b                                         ; $4f28: $88
    adc b                                         ; $4f29: $88
    add a                                         ; $4f2a: $87
    ld a, b                                       ; $4f2b: $78
    sbc b                                         ; $4f2c: $98
    ld h, a                                       ; $4f2d: $67
    adc c                                         ; $4f2e: $89
    ld [hl], a                                    ; $4f2f: $77
    adc b                                         ; $4f30: $88
    add a                                         ; $4f31: $87
    adc b                                         ; $4f32: $88
    ld [hl], a                                    ; $4f33: $77
    adc b                                         ; $4f34: $88
    halt                                          ; $4f35: $76
    ld a, b                                       ; $4f36: $78
    sbc b                                         ; $4f37: $98
    ld h, [hl]                                    ; $4f38: $66
    adc c                                         ; $4f39: $89
    add a                                         ; $4f3a: $87
    ld h, a                                       ; $4f3b: $67
    adc b                                         ; $4f3c: $88
    add a                                         ; $4f3d: $87
    ld [hl], a                                    ; $4f3e: $77
    adc b                                         ; $4f3f: $88
    add a                                         ; $4f40: $87
    ld [hl], a                                    ; $4f41: $77
    adc b                                         ; $4f42: $88
    ld [hl], a                                    ; $4f43: $77
    ld a, b                                       ; $4f44: $78
    adc b                                         ; $4f45: $88
    ld [hl], a                                    ; $4f46: $77
    adc b                                         ; $4f47: $88
    add a                                         ; $4f48: $87
    ld a, b                                       ; $4f49: $78
    adc b                                         ; $4f4a: $88
    ld a, b                                       ; $4f4b: $78
    adc b                                         ; $4f4c: $88
    ld [hl], a                                    ; $4f4d: $77
    ld a, b                                       ; $4f4e: $78
    adc b                                         ; $4f4f: $88
    add a                                         ; $4f50: $87
    adc c                                         ; $4f51: $89
    sub a                                         ; $4f52: $97
    ld d, l                                       ; $4f53: $55
    adc e                                         ; $4f54: $8b
    cp b                                          ; $4f55: $b8
    ld h, l                                       ; $4f56: $65
    ld l, b                                       ; $4f57: $68
    sbc c                                         ; $4f58: $99
    ld [hl], a                                    ; $4f59: $77
    ld a, b                                       ; $4f5a: $78
    sub a                                         ; $4f5b: $97
    ld h, l                                       ; $4f5c: $65
    ld a, c                                       ; $4f5d: $79
    xor c                                         ; $4f5e: $a9
    ld [hl], l                                    ; $4f5f: $75
    ld h, a                                       ; $4f60: $67
    adc b                                         ; $4f61: $88
    adc b                                         ; $4f62: $88
    ld a, b                                       ; $4f63: $78
    add a                                         ; $4f64: $87
    halt                                          ; $4f65: $76
    ld a, b                                       ; $4f66: $78
    sbc c                                         ; $4f67: $99
    add a                                         ; $4f68: $87
    ld [hl], a                                    ; $4f69: $77
    ld a, b                                       ; $4f6a: $78
    adc b                                         ; $4f6b: $88
    adc b                                         ; $4f6c: $88
    ld [hl], a                                    ; $4f6d: $77
    ld [hl], a                                    ; $4f6e: $77
    ld [hl], a                                    ; $4f6f: $77
    adc b                                         ; $4f70: $88
    adc b                                         ; $4f71: $88
    ld [hl], a                                    ; $4f72: $77
    ld a, b                                       ; $4f73: $78
    add a                                         ; $4f74: $87
    ld a, b                                       ; $4f75: $78
    adc b                                         ; $4f76: $88
    add a                                         ; $4f77: $87
    ld [hl], a                                    ; $4f78: $77
    ld a, b                                       ; $4f79: $78
    adc b                                         ; $4f7a: $88
    adc b                                         ; $4f7b: $88
    ld [hl], a                                    ; $4f7c: $77
    ld [hl], a                                    ; $4f7d: $77
    ld a, b                                       ; $4f7e: $78
    adc b                                         ; $4f7f: $88
    adc b                                         ; $4f80: $88
    add a                                         ; $4f81: $87
    ld [hl], a                                    ; $4f82: $77
    adc b                                         ; $4f83: $88
    adc b                                         ; $4f84: $88
    adc b                                         ; $4f85: $88
    ld [hl], a                                    ; $4f86: $77
    ld [hl], a                                    ; $4f87: $77
    ld a, b                                       ; $4f88: $78
    adc b                                         ; $4f89: $88
    add a                                         ; $4f8a: $87
    ld [hl], a                                    ; $4f8b: $77
    ld [hl], a                                    ; $4f8c: $77
    adc b                                         ; $4f8d: $88
    adc b                                         ; $4f8e: $88
    add a                                         ; $4f8f: $87
    add a                                         ; $4f90: $87
    ld [hl], a                                    ; $4f91: $77
    adc b                                         ; $4f92: $88
    adc b                                         ; $4f93: $88
    ld [hl], a                                    ; $4f94: $77
    ld [hl], a                                    ; $4f95: $77
    ld [hl], a                                    ; $4f96: $77
    ld a, b                                       ; $4f97: $78
    adc b                                         ; $4f98: $88
    add a                                         ; $4f99: $87
    ld [hl], a                                    ; $4f9a: $77
    ld [hl], a                                    ; $4f9b: $77
    adc b                                         ; $4f9c: $88
    adc b                                         ; $4f9d: $88
    add a                                         ; $4f9e: $87
    ld [hl], a                                    ; $4f9f: $77
    add a                                         ; $4fa0: $87
    adc b                                         ; $4fa1: $88
    adc b                                         ; $4fa2: $88
    add a                                         ; $4fa3: $87
    ld [hl], a                                    ; $4fa4: $77
    ld [hl], a                                    ; $4fa5: $77
    adc b                                         ; $4fa6: $88
    adc b                                         ; $4fa7: $88
    ld [hl], a                                    ; $4fa8: $77
    ld [hl], a                                    ; $4fa9: $77
    ld [hl], a                                    ; $4faa: $77
    adc b                                         ; $4fab: $88
    adc b                                         ; $4fac: $88
    ld [hl], a                                    ; $4fad: $77
    ld [hl], a                                    ; $4fae: $77
    ld [hl], a                                    ; $4faf: $77
    adc b                                         ; $4fb0: $88
    adc b                                         ; $4fb1: $88
    ld [hl], a                                    ; $4fb2: $77
    ld [hl], a                                    ; $4fb3: $77
    ld a, b                                       ; $4fb4: $78
    adc b                                         ; $4fb5: $88
    adc b                                         ; $4fb6: $88
    ld [hl], a                                    ; $4fb7: $77
    ld [hl], a                                    ; $4fb8: $77
    ld [hl], a                                    ; $4fb9: $77
    adc b                                         ; $4fba: $88
    adc b                                         ; $4fbb: $88
    ld [hl], a                                    ; $4fbc: $77
    ld [hl], a                                    ; $4fbd: $77
    ld [hl], a                                    ; $4fbe: $77
    ld a, b                                       ; $4fbf: $78
    add a                                         ; $4fc0: $87
    ld [hl], a                                    ; $4fc1: $77
    adc b                                         ; $4fc2: $88
    adc b                                         ; $4fc3: $88
    adc b                                         ; $4fc4: $88
    adc b                                         ; $4fc5: $88
    add a                                         ; $4fc6: $87
    ld a, b                                       ; $4fc7: $78
    adc b                                         ; $4fc8: $88
    halt                                          ; $4fc9: $76
    ld h, a                                       ; $4fca: $67
    adc c                                         ; $4fcb: $89
    adc b                                         ; $4fcc: $88
    add a                                         ; $4fcd: $87
    ld [hl], a                                    ; $4fce: $77
    ld h, a                                       ; $4fcf: $67
    adc b                                         ; $4fd0: $88
    adc b                                         ; $4fd1: $88
    add a                                         ; $4fd2: $87
    ld a, b                                       ; $4fd3: $78
    ld [hl], a                                    ; $4fd4: $77
    ld [hl], a                                    ; $4fd5: $77
    ld a, b                                       ; $4fd6: $78
    adc b                                         ; $4fd7: $88
    adc b                                         ; $4fd8: $88
    ld [hl], a                                    ; $4fd9: $77
    ld [hl], a                                    ; $4fda: $77
    ld a, b                                       ; $4fdb: $78
    adc c                                         ; $4fdc: $89
    adc b                                         ; $4fdd: $88
    ld [hl], a                                    ; $4fde: $77
    ld [hl], a                                    ; $4fdf: $77
    add a                                         ; $4fe0: $87
    adc b                                         ; $4fe1: $88
    adc b                                         ; $4fe2: $88
    ld [hl], a                                    ; $4fe3: $77
    ld [hl], a                                    ; $4fe4: $77
    ld a, b                                       ; $4fe5: $78
    adc b                                         ; $4fe6: $88
    adc b                                         ; $4fe7: $88
    add a                                         ; $4fe8: $87
    ld [hl], a                                    ; $4fe9: $77
    ld a, b                                       ; $4fea: $78
    adc b                                         ; $4feb: $88
    adc b                                         ; $4fec: $88
    ld [hl], a                                    ; $4fed: $77
    ld [hl], a                                    ; $4fee: $77
    ld [hl], a                                    ; $4fef: $77
    adc b                                         ; $4ff0: $88
    add a                                         ; $4ff1: $87
    adc b                                         ; $4ff2: $88
    adc b                                         ; $4ff3: $88
    ld [hl], a                                    ; $4ff4: $77
    ld [hl], a                                    ; $4ff5: $77
    adc b                                         ; $4ff6: $88
    adc b                                         ; $4ff7: $88
    adc b                                         ; $4ff8: $88
    add a                                         ; $4ff9: $87
    ld [hl], a                                    ; $4ffa: $77
    ld a, b                                       ; $4ffb: $78
    adc b                                         ; $4ffc: $88
    add a                                         ; $4ffd: $87
    ld [hl], a                                    ; $4ffe: $77
    ld [hl], a                                    ; $4fff: $77
    adc b                                         ; $5000: $88
    add a                                         ; $5001: $87
    adc b                                         ; $5002: $88
    add a                                         ; $5003: $87
    ld [hl], a                                    ; $5004: $77
    sbc d                                         ; $5005: $9a
    ld [hl], l                                    ; $5006: $75
    ld a, e                                       ; $5007: $7b
    add h                                         ; $5008: $84
    ld l, d                                       ; $5009: $6a
    add [hl]                                      ; $500a: $86
    adc b                                         ; $500b: $88
    ld h, a                                       ; $500c: $67
    adc b                                         ; $500d: $88
    ld [hl], a                                    ; $500e: $77
    adc c                                         ; $500f: $89
    add a                                         ; $5010: $87
    ld a, b                                       ; $5011: $78
    add a                                         ; $5012: $87
    adc b                                         ; $5013: $88
    add a                                         ; $5014: $87
    ld a, b                                       ; $5015: $78
    ld [hl], a                                    ; $5016: $77
    adc b                                         ; $5017: $88
    adc b                                         ; $5018: $88
    adc b                                         ; $5019: $88
    ld [hl], a                                    ; $501a: $77
    adc b                                         ; $501b: $88
    ld h, [hl]                                    ; $501c: $66
    sbc c                                         ; $501d: $99
    ld h, [hl]                                    ; $501e: $66
    adc b                                         ; $501f: $88
    add a                                         ; $5020: $87
    adc b                                         ; $5021: $88
    adc b                                         ; $5022: $88
    ld [hl], a                                    ; $5023: $77
    ld l, b                                       ; $5024: $68
    ld a, b                                       ; $5025: $78
    ld a, b                                       ; $5026: $78
    adc c                                         ; $5027: $89
    ld [hl], a                                    ; $5028: $77
    adc b                                         ; $5029: $88
    halt                                          ; $502a: $76
    adc b                                         ; $502b: $88
    ld [hl], a                                    ; $502c: $77
    ld a, b                                       ; $502d: $78
    adc b                                         ; $502e: $88
    ld a, b                                       ; $502f: $78
    adc b                                         ; $5030: $88
    adc b                                         ; $5031: $88
    ld [hl], a                                    ; $5032: $77
    ld [hl], a                                    ; $5033: $77
    ld [hl], a                                    ; $5034: $77
    adc b                                         ; $5035: $88
    adc b                                         ; $5036: $88
    adc b                                         ; $5037: $88
    ld [hl], a                                    ; $5038: $77
    add a                                         ; $5039: $87
    ld [hl], a                                    ; $503a: $77
    ld [hl], a                                    ; $503b: $77
    ld [hl], a                                    ; $503c: $77
    ld a, b                                       ; $503d: $78
    adc b                                         ; $503e: $88
    adc b                                         ; $503f: $88
    add a                                         ; $5040: $87
    ld [hl], a                                    ; $5041: $77
    ld [hl], a                                    ; $5042: $77
    ld a, b                                       ; $5043: $78
    adc b                                         ; $5044: $88
    adc b                                         ; $5045: $88
    adc b                                         ; $5046: $88
    adc b                                         ; $5047: $88
    add a                                         ; $5048: $87
    add a                                         ; $5049: $87
    ld a, b                                       ; $504a: $78
    adc b                                         ; $504b: $88
    adc b                                         ; $504c: $88
    adc b                                         ; $504d: $88
    adc b                                         ; $504e: $88
    add a                                         ; $504f: $87
    add a                                         ; $5050: $87
    ld h, [hl]                                    ; $5051: $66
    ld h, [hl]                                    ; $5052: $66
    ld h, a                                       ; $5053: $67
    halt                                          ; $5054: $76
    ld h, [hl]                                    ; $5055: $66
    ld h, [hl]                                    ; $5056: $66
    ld h, [hl]                                    ; $5057: $66
    ld [hl], a                                    ; $5058: $77
    ld [hl], a                                    ; $5059: $77
    ld [hl], a                                    ; $505a: $77
    ld a, b                                       ; $505b: $78
    adc b                                         ; $505c: $88
    sbc c                                         ; $505d: $99
    sbc c                                         ; $505e: $99
    sbc c                                         ; $505f: $99
    sbc c                                         ; $5060: $99
    sbc c                                         ; $5061: $99
    sbc c                                         ; $5062: $99
    sbc c                                         ; $5063: $99
    sbc c                                         ; $5064: $99
    sbc c                                         ; $5065: $99
    adc b                                         ; $5066: $88
    adc b                                         ; $5067: $88
    add a                                         ; $5068: $87
    ld [hl], a                                    ; $5069: $77
    adc b                                         ; $506a: $88
    adc b                                         ; $506b: $88
    adc b                                         ; $506c: $88
    adc b                                         ; $506d: $88
    adc b                                         ; $506e: $88
    adc b                                         ; $506f: $88
    adc b                                         ; $5070: $88
    adc b                                         ; $5071: $88
    adc b                                         ; $5072: $88
    adc b                                         ; $5073: $88
    adc b                                         ; $5074: $88
    adc b                                         ; $5075: $88
    add a                                         ; $5076: $87
    ld [hl], a                                    ; $5077: $77
    ld [hl], a                                    ; $5078: $77
    ld a, b                                       ; $5079: $78
    adc b                                         ; $507a: $88
    ld [hl], a                                    ; $507b: $77
    ld [hl], a                                    ; $507c: $77
    ld [hl], a                                    ; $507d: $77
    ld [hl], a                                    ; $507e: $77
    ld [hl], a                                    ; $507f: $77
    add a                                         ; $5080: $87
    ld [hl], a                                    ; $5081: $77
    ld [hl], a                                    ; $5082: $77
    ld [hl], a                                    ; $5083: $77
    ld [hl], a                                    ; $5084: $77
    ld [hl], a                                    ; $5085: $77
    ld [hl], a                                    ; $5086: $77
    ld [hl], a                                    ; $5087: $77
    ld a, b                                       ; $5088: $78
    adc b                                         ; $5089: $88
    adc b                                         ; $508a: $88
    adc b                                         ; $508b: $88
    adc b                                         ; $508c: $88
    adc b                                         ; $508d: $88
    adc b                                         ; $508e: $88
    adc b                                         ; $508f: $88
    adc b                                         ; $5090: $88
    adc b                                         ; $5091: $88
    add a                                         ; $5092: $87
    ld [hl], a                                    ; $5093: $77
    ld [hl], a                                    ; $5094: $77
    halt                                          ; $5095: $76
    ld h, [hl]                                    ; $5096: $66
    ld [hl], a                                    ; $5097: $77
    ld [hl], a                                    ; $5098: $77
    ld [hl], a                                    ; $5099: $77
    ld [hl], a                                    ; $509a: $77
    ld [hl], a                                    ; $509b: $77
    ld [hl], a                                    ; $509c: $77
    ld [hl], a                                    ; $509d: $77
    adc b                                         ; $509e: $88
    adc b                                         ; $509f: $88
    adc b                                         ; $50a0: $88
    adc b                                         ; $50a1: $88
    adc b                                         ; $50a2: $88
    adc b                                         ; $50a3: $88
    adc b                                         ; $50a4: $88
    adc b                                         ; $50a5: $88
    adc b                                         ; $50a6: $88
    add a                                         ; $50a7: $87
    ld [hl], a                                    ; $50a8: $77
    ld [hl], a                                    ; $50a9: $77
    ld [hl], a                                    ; $50aa: $77
    ld [hl], a                                    ; $50ab: $77
    ld [hl], a                                    ; $50ac: $77
    ld [hl], a                                    ; $50ad: $77
    ld [hl], a                                    ; $50ae: $77
    ld [hl], a                                    ; $50af: $77
    add a                                         ; $50b0: $87
    ld [hl], a                                    ; $50b1: $77
    ld a, b                                       ; $50b2: $78
    adc b                                         ; $50b3: $88
    adc b                                         ; $50b4: $88
    adc b                                         ; $50b5: $88
    adc b                                         ; $50b6: $88
    adc b                                         ; $50b7: $88
    adc b                                         ; $50b8: $88
    adc b                                         ; $50b9: $88
    adc b                                         ; $50ba: $88
    adc b                                         ; $50bb: $88
    adc b                                         ; $50bc: $88
    adc b                                         ; $50bd: $88
    add a                                         ; $50be: $87
    ld a, b                                       ; $50bf: $78
    adc b                                         ; $50c0: $88
    adc b                                         ; $50c1: $88
    adc b                                         ; $50c2: $88
    add a                                         ; $50c3: $87
    ld [hl], a                                    ; $50c4: $77
    ld [hl], a                                    ; $50c5: $77
    ld [hl], a                                    ; $50c6: $77
    adc b                                         ; $50c7: $88
    adc b                                         ; $50c8: $88
    adc b                                         ; $50c9: $88
    adc b                                         ; $50ca: $88
    ld [hl], a                                    ; $50cb: $77
    adc b                                         ; $50cc: $88
    adc b                                         ; $50cd: $88
    adc b                                         ; $50ce: $88
    adc b                                         ; $50cf: $88
    adc b                                         ; $50d0: $88
    ld [hl], a                                    ; $50d1: $77
    ld [hl], a                                    ; $50d2: $77
    ld a, b                                       ; $50d3: $78
    adc b                                         ; $50d4: $88
    ld [hl], a                                    ; $50d5: $77
    ld [hl], a                                    ; $50d6: $77
    ld [hl], a                                    ; $50d7: $77
    ld [hl], a                                    ; $50d8: $77
    ld [hl], a                                    ; $50d9: $77
    ld [hl], a                                    ; $50da: $77
    ld [hl], a                                    ; $50db: $77
    ld [hl], a                                    ; $50dc: $77
    ld [hl], a                                    ; $50dd: $77
    ld [hl], a                                    ; $50de: $77
    ld a, b                                       ; $50df: $78
    add a                                         ; $50e0: $87
    ld a, b                                       ; $50e1: $78
    adc b                                         ; $50e2: $88
    adc b                                         ; $50e3: $88
    adc b                                         ; $50e4: $88
    adc b                                         ; $50e5: $88
    adc b                                         ; $50e6: $88
    adc b                                         ; $50e7: $88
    adc b                                         ; $50e8: $88
    adc b                                         ; $50e9: $88
    add a                                         ; $50ea: $87
    adc b                                         ; $50eb: $88
    adc b                                         ; $50ec: $88
    adc b                                         ; $50ed: $88
    adc b                                         ; $50ee: $88
    adc b                                         ; $50ef: $88

    db $88, $88, $88, $88, $77, $78, $88, $88, $88, $88, $88, $88, $87, $88, $88, $88
    db $88, $77, $77, $78, $88, $88, $88, $88, $77, $77, $77, $78, $88, $88, $77, $77
    db $87, $77, $77, $77, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88
    db $88, $88, $77, $77, $77, $77, $78, $88, $88, $88, $88, $87, $78, $88, $88, $88
    db $87, $77, $77, $77, $77, $77, $77, $77, $77, $77, $88, $88, $88, $87, $88, $88
    db $88, $88, $88, $88, $87, $77, $77, $88, $88, $77, $77, $88, $87, $77, $77, $78
    db $88, $88, $88, $88, $87, $77, $77, $78, $88, $88, $77, $77, $77, $78, $88, $88
    db $88, $88, $87, $77, $88, $88, $88, $87, $77, $77, $77, $77, $77, $77, $77, $77
    db $87, $77, $88, $88, $88, $88, $88, $88, $88, $78, $88, $88, $77, $77, $77, $77
    db $87, $77, $78, $88, $88, $77, $77, $78, $88, $88, $88, $88, $88, $88, $77, $77
    db $88, $88, $88, $77, $77, $77, $77, $77, $88, $88, $88, $87, $77, $78, $88, $88
    db $88, $88, $77, $77, $77, $78, $88, $88, $88, $87, $77, $77, $77, $78, $88, $88
    db $88, $88, $77, $77, $77, $78, $88, $88, $87, $77, $77, $77, $77, $88, $88, $88
    db $87, $77, $77, $88, $88, $88, $88, $87, $77, $77, $77, $88, $88, $87, $77, $77
    db $87, $77, $77, $78, $88, $88, $88, $77, $77, $78, $88, $88, $88, $88, $77, $77
    db $87, $77, $77, $78, $88, $88, $77, $77, $77, $88, $88, $88, $88, $88, $87, $77
    db $87, $78, $88, $88, $77, $77, $77, $77, $77, $78, $88, $88, $88, $88, $87, $77
    db $88, $88, $88, $88, $87, $77, $77, $77, $77, $88, $87, $77, $77, $77, $78, $88
    db $88, $88, $88, $87, $77, $77, $77, $88, $88, $87, $77, $77, $77, $78, $88, $88
    db $88, $88, $88, $88, $77, $77, $88, $88, $88, $77, $77, $77, $77, $77, $77, $77
    db $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $87, $77, $77, $77, $77, $77
    db $87, $77, $77, $88, $88, $77, $77, $88, $88, $88, $88, $88, $88, $88, $87, $77
    db $87, $77, $77, $88, $88, $77, $77, $77, $77, $77, $88, $89, $88, $88, $77, $77
    db $88, $88, $88, $88, $87, $77, $66, $77, $88, $88, $87, $77, $77, $77, $78, $88
    db $99, $88, $77, $66, $77, $88, $88, $88, $77, $77, $77, $77, $88, $99, $88, $77
    db $66, $77, $78, $89, $99, $98, $76, $66, $66, $77, $88, $89, $98, $87, $76, $67
    db $88, $89, $99, $88, $76, $66, $77, $89, $99, $98, $87, $66, $66, $67, $89, $99
    db $98, $87, $77, $77, $88, $88, $88, $87, $77, $77, $77, $78, $88, $88, $87, $76
    db $66, $67, $78, $88, $98, $88, $87, $77, $77, $88, $88, $88, $88, $77, $77, $77
    db $88, $88, $88, $88, $77, $66, $67, $78, $99, $98, $87, $77, $77, $88, $88, $88
    db $87, $76, $66, $67, $78, $99, $99, $87, $66, $66, $78, $89, $99, $98, $87, $76
    db $66, $77, $88, $99, $98, $87, $76, $66, $78, $89, $99, $87, $77, $77, $88, $88
    db $88, $77, $77, $77, $77, $78, $89, $98, $88, $76, $66, $77, $88, $99, $99, $98
    db $86, $66, $77, $88, $88, $88, $77, $66, $66, $78, $99, $99, $87, $76, $67, $88
    db $99, $98, $88, $77, $77, $76, $66, $77, $89, $98, $87, $76, $66, $77, $88, $99
    db $99, $88, $76, $67, $77, $88, $89, $99, $87, $66, $56, $67, $88, $88, $88, $88
    db $87, $66, $67, $88, $99, $98, $88, $88, $87, $77, $77, $77, $77, $77, $77, $77
    db $88, $88, $88, $88, $77, $77, $88, $89, $99, $98, $87, $76, $66, $77, $78, $88
    db $87, $77, $76, $67, $88, $9a, $a9, $87, $66, $77, $88, $88, $87, $77, $77, $77
    db $66, $66, $78, $9a, $aa, $87, $65, $67, $89, $9a, $a9, $98, $76, $65, $56, $78
    db $9a, $a9, $86, $54, $45, $79, $ab, $ba, $98, $76, $65, $56, $79, $aa, $a9, $87
    db $65, $55, $67, $88, $99, $98, $76, $55, $56, $79, $ab, $bb, $a8, $65, $44, $57
    db $9a, $bb, $a9, $75, $43, $34, $68, $9b, $bb, $98, $65, $55, $67, $9a, $bb, $ba
    db $96, $43, $34, $68, $aa, $a9, $87, $65, $45, $56, $89, $bb, $ba, $87, $65, $56
    db $89, $ab, $ba, $86, $43, $45, $68, $9a, $a9, $87, $76, $66, $77, $88, $99, $99
    db $98, $76, $66, $67, $89, $99, $88, $76, $66, $56, $78, $9a, $aa, $98, $76, $66
    db $87, $89, $99, $98, $87, $66, $67, $78, $87, $77, $77, $78, $88, $88, $88, $88
    db $88, $87, $77, $88, $88, $88, $87, $76, $66, $67, $89, $98, $76, $66, $67, $89
    db $99, $88, $87, $77, $77, $89, $98, $87, $77, $77, $88, $88, $87, $76, $77, $78
    db $87, $77, $78, $89, $98, $87, $77, $77, $88, $99, $87, $76, $66, $78, $89, $99
    db $87, $65, $55, $68, $9a, $aa, $98, $76, $56, $67, $89, $99, $88, $76, $66, $67
    db $88, $99, $98, $88, $76, $66, $77, $89, $a9, $87, $65, $55, $78, $9a, $a9, $87
    db $65, $56, $78, $9a, $ba, $98, $65, $55, $67, $9a, $aa, $98, $76, $55, $67, $89
    db $99, $98, $76, $66, $67, $89, $99, $98, $76, $56, $78, $9a, $a9, $87, $66, $77
    db $88, $88, $88, $77, $66, $67, $78, $99, $98, $87, $77, $77, $78, $89, $98, $87
    db $66, $66, $68, $9a, $ba, $97, $64, $45, $67, $9b, $bb, $a8, $75, $55, $57, $89
    db $aa, $98, $66, $66, $78, $89, $aa, $a9, $75, $44, $56, $89, $ab, $a9, $86, $43
    db $34, $69, $bd, $db, $97, $54, $44, $67, $9b, $bb, $a8, $64, $45, $68, $99, $99
    db $88, $76, $56, $67, $9a, $ba, $98, $65, $54, $56, $89, $bb, $a8, $75, $44, $56
    db $8a, $cc, $ba, $75, $44, $57, $89, $99, $99, $88, $76, $66, $77, $88, $87, $76
    db $87, $89, $99, $88, $88, $88, $77, $66, $78, $89, $98, $77, $66, $67, $77, $78
    db $99, $99, $88, $76, $66, $67, $77, $89, $aa, $98, $75, $44, $56, $89, $aa, $98
    db $86, $66, $66, $89, $aa, $a9, $76, $54, $56, $8a, $ba, $98, $76, $66, $77, $88
    db $89, $88, $76, $65, $67, $9a, $ba, $98, $65, $55, $78, $89, $98, $87, $77, $77
    db $88, $99, $99, $98, $65, $45, $68, $ab, $ba, $97, $65, $55, $66, $79, $9a, $a9
    db $86, $55, $67, $8a, $aa, $97, $66, $66, $77, $89, $a9, $97, $65, $56, $78, $9a
    db $aa, $97, $64, $45, $79, $ab, $b9, $86, $65, $55, $67, $9a, $ba, $97, $54, $56
    db $89, $bb, $b9, $76, $44, $56, $78, $9a, $aa, $97, $54, $46, $8a, $bb, $a8, $65
    db $44, $57, $8a, $ab, $a9, $76, $55, $56, $89, $aa, $a8, $75, $55, $67, $9a, $aa
    db $87, $65, $55, $68, $9a, $aa, $97, $65, $45, $57, $8a, $bb, $a9, $76, $55, $67
    db $8a, $aa, $98, $65, $56, $78, $99, $98, $88, $76, $66, $67, $89, $99, $87, $76
    db $66, $78, $89, $a9, $97, $66, $66, $67, $88, $99, $98, $77, $67, $88, $99, $87
    db $66, $67, $88, $88, $88, $88, $87, $77, $77, $77, $77, $89, $99, $87, $76, $67
    db $89, $99, $88, $76, $66, $77, $89, $99, $88, $77, $77, $76, $77, $89, $99, $86
    db $55, $67, $89, $99, $98, $75, $56, $78, $9a, $98, $76, $67, $78, $99, $98, $76
    db $56, $68, $9a, $98, $76, $66, $78, $99, $98, $77, $66, $78, $89, $88, $88, $77
    db $66, $67, $89, $99, $98, $76, $66, $78, $99, $99, $87, $66, $67, $89, $a9, $87
    db $66, $66, $78, $88, $88, $87, $76, $67, $88, $99, $88, $76, $66, $77, $88, $99
    db $87, $77, $78, $88, $88, $88, $88, $77, $67, $89, $99, $87, $76, $66, $67, $78
    db $99, $87, $66, $67, $89, $99, $88, $88, $76, $66, $78, $99, $98, $76, $66, $77
    db $88, $88, $88, $77, $77, $78, $89, $88, $87, $77, $76, $77, $89, $98, $76, $67
    db $88, $99, $87, $76, $66, $78, $9a, $a9, $87, $66, $67, $78, $89, $98, $87, $66
    db $87, $89, $99, $88, $76, $66, $79, $99, $97, $65, $66, $78, $9a, $98, $65, $56
    db $89, $aa, $a9, $87, $65, $56, $89, $aa, $97, $65, $55, $68, $aa, $a9, $86, $66
    db $67, $89, $aa, $a8, $75, $55, $68, $99, $98, $76, $66, $77, $89, $99, $98, $87
    db $66, $67, $88, $88, $77, $77, $88, $78, $88, $98, $87, $66, $68, $9a, $a9, $76
    db $55, $66, $78, $99, $a9, $87, $55, $57, $9a, $aa, $98, $64, $44, $68, $ab, $b9
    db $85, $44, $57, $ac, $cb, $97, $43, $34, $7a, $cd, $c9, $63, $23, $58, $bd, $db
    db $86, $43, $46, $8a, $cc, $a8, $64, $34, $69, $bc, $b9, $75, $44, $57, $9b, $ba
    db $97, $54, $46, $8a, $bc, $a8, $53, $33, $57, $ab, $cb, $96, $54, $57, $9a, $ba
    db $98, $65, $46, $78, $99, $98, $65, $55, $68, $ab, $ba, $87, $65, $67, $89, $aa
    db $97, $53, $34, $57, $ab, $ba, $86, $45, $69, $bd, $ca, $75, $44, $68, $99, $98
    db $85, $55, $67, $89, $99, $87, $76, $78, $99, $99, $88, $87, $76, $66, $78, $88
    db $86, $77, $88, $87, $78, $99, $98, $77, $78, $88, $77, $77, $76, $66, $78, $88
    db $87, $78, $99, $99, $88, $88, $99, $86, $66, $66, $77, $89, $98, $65, $56, $8a
    db $aa, $98, $88, $77, $67, $89, $98, $65, $66, $77, $77, $77, $88, $88, $99, $88
    db $88, $88, $88, $77, $77, $88, $76, $65, $67, $89, $9a, $a9, $87, $66, $79, $ba
    db $97, $65, $67, $88, $77, $77, $66, $56, $8a, $bb, $96, $55, $79, $aa, $98, $87
    db $65, $45, $68, $aa, $87, $66, $67, $89, $aa, $a9, $86, $66, $78, $9a, $86, $44
    db $56, $89, $99, $87, $66, $79, $ab, $b8, $75, $56, $78, $88, $77, $76, $55, $67
    db $9a, $a9, $88, $88, $88, $88, $88, $87, $66, $67, $78, $88, $77, $66, $78, $9a
    db $aa, $98, $76, $55, $68, $bb, $a8, $54, $34, $67, $9a, $ba, $86, $55, $68, $ab
    db $ba, $86, $44, $56, $8a, $a9, $86, $44, $57, $9b, $cb, $96, $54, $67, $9a, $aa
    db $97, $54, $46, $89, $aa, $86, $44, $57, $9b, $ba, $86, $44, $68, $ab, $ba, $85
    db $43, $46, $9b, $cb, $96, $32, $36, $ac, $dc, $a7, $43, $45, $7a, $cb, $a6, $43
    db $57, $9b, $ba, $96, $43, $47, $ab, $ca, $97, $54, $34, $7a, $cc, $97, $43, $46
    db $9b, $cc, $a7, $43, $46, $8a, $bb, $a9, $74, $34, $68, $aa, $a9, $76, $55, $68
    db $ab, $a9, $76, $55, $57, $9b, $b9, $75, $44, $68, $9a, $aa, $85, $44, $69, $bb
    db $a8, $76, $54, $56, $9b, $ca, $75, $34, $58, $9b, $ba, $85, $33, $58, $bc, $ca
    db $85, $44, $57, $9c, $ca, $74, $22, $58, $bd, $db, $85, $22, $48, $ce, $db, $73
    db $22, $58, $ac, $db, $85, $32, $48, $bd, $ca, $85, $33, $47, $ab, $ba, $75, $44
    db $57, $ac, $cb, $85, $34, $7a, $cb, $97, $65, $45, $68, $ab, $a7, $43, $46, $8a
    db $bb, $a9, $75, $56, $7a, $bb, $97, $53, $34, $7a, $cb, $96, $44, $56, $8a, $ba
    db $87, $66, $78, $89, $99, $87, $66, $78, $88, $88, $88, $75, $56, $8a, $a9, $65
    db $56, $79, $aa, $98, $76, $56, $88, $99, $98, $87, $76, $66, $78, $89, $98, $76
    db $67, $9a, $a9, $87, $76, $67, $89, $98, $76, $56, $77, $88, $88, $87, $77, $77
    db $89, $aa, $97, $66, $78, $99, $87, $66, $67, $77, $89, $98, $76, $68, $9a, $98
    db $86, $67, $78, $89, $98, $76, $55, $78, $9a, $98, $66, $78, $89, $98, $77, $77
    db $87, $89, $99, $86, $66, $78, $99, $88, $77, $66, $78, $9a, $97, $54, $58, $ab
    db $b9, $86, $55, $67, $9b, $a9, $75, $55, $68, $9a, $98, $65, $56, $79, $99, $99
    db $86, $55, $69, $bb, $a8, $65, $56, $78, $9a, $a8, $64, $45, $8b, $cb, $96, $32
    db $36, $be, $ec, $73, $12, $59, $ce, $da, $52, $13, $7c, $ee, $b6, $31, $25, $ae
    db $fd, $83, $00, $38, $df, $eb, $62, $01, $5a, $df, $c8, $41, $14, $8c, $ed, $a5
    db $20, $37, $be, $eb, $74, $11, $48, $cf, $ea, $52, $13, $7b, $dd, $b7, $41, $25
    db $9d, $fd, $83, $01, $49, $ce, $da, $63, $23, $7b, $dd, $b7, $42, $46, $ac, $cb
    db $85, $33, $58, $cd, $b8, $43, $35, $8b, $ba, $86, $44, $69, $bc, $a7, $54, $57
    db $9a, $ba, $86, $54, $57, $ab, $b8, $64, $45, $79, $ab, $97, $53, $46, $ac, $ca
    db $83, $24, $7b, $dc, $97, $54, $45, $7a, $dc, $85, $33, $68, $ab, $b9, $64, $34
    db $8a, $cb, $86, $45, $78, $99, $98, $76, $56, $8a, $a9, $76, $67, $88, $87, $77
    db $88, $88, $77, $78, $88, $87, $67, $88, $87, $77, $88, $76, $78, $88, $77, $79
    db $aa, $87, $66, $77, $88, $88, $76, $66, $89, $a9, $76, $55, $69, $ab, $a7, $44
    db $68, $99, $98, $87, $66, $79, $aa, $87, $67, $89, $97, $65, $56, $79, $98, $76
    db $66, $78, $9b, $ba, $85, $56, $79, $a9, $86, $44, $56, $8a, $a9, $87, $66, $79
    db $aa, $97, $65, $56, $89, $98, $76, $55, $78, $ab, $97, $56, $8a, $aa, $97, $64
    db $45, $7a, $ba, $86, $44, $58, $bd, $b8, $43, $58, $ab, $b9, $63, $23, $7b, $dc
    db $96, $33, $59, $cd, $b7, $41, $25, $9c, $db, $73, $23, $7b, $de, $b7, $43, $47
    db $bd, $da, $51, $02, $6b, $ed, $a5, $22, $58, $ce, $d9, $52, $25, $8b, $cb, $84
    db $22, $59, $cd, $b8, $53, $36, $9c, $cb, $85, $22, $49, $cd, $a7, $43, $47, $ac
    db $da, $74, $35, $7a, $cb, $96, $44, $57, $9b, $b9, $64, $46, $89, $bb, $96, $33
    db $58, $aa, $a8, $64, $35, $8b, $cb, $86, $55, $68, $aa, $98, $76, $55, $68, $99
    db $87, $66, $78, $9a, $a8, $65, $56, $8a, $ba, $85, $43, $59, $cc, $a7, $44, $47
    db $9b, $bb, $85, $33, $58, $bb, $a7, $54, $57, $9b, $a9, $75, $56, $79, $aa, $85
    db $34, $7a, $dc, $95, $23, $6a, $cc, $b8, $53, $36, $8a, $a9, $86, $66, $67, $9a
    db $a9, $76, $67, $89, $99, $76, $67, $88, $99, $97, $54, $69, $bb, $96, $44, $58
    db $bc, $a7, $54, $58, $9a, $a9, $75, $57, $9a, $98, $66, $67, $9a, $98, $54, $57
    db $ab, $b9, $64, $44, $7a, $cb, $85, $45, $79, $a9, $76, $66, $79, $9a, $97, $54
    db $69, $bb, $85, $45, $8a, $a9, $76, $67, $89, $99, $87, $66, $79, $99, $87, $77
    db $87, $88, $99, $76, $66, $8a, $b9, $64, $46, $9a, $b9, $74, $34, $7b, $db, $85
    db $34, $7b, $cb, $84, $24, $7a, $cc, $96, $33, $58, $cd, $b7, $42, $47, $ac, $b9
    db $53, $36, $ac, $b9, $53, $46, $8b, $cb, $74, $34, $6a, $dd, $a5, $22, $59, $cd
    db $b6, $22, $59, $de, $b6, $32, $37, $bd, $c8, $32, $47, $ab, $b9, $75, $46, $9b
    db $ca, $74, $34, $8b, $ca, $74, $34, $8b, $ca, $74, $46, $8a, $a9, $76, $56, $78
    db $99, $98, $65, $56, $8a, $b9, $74, $46, $9b, $a8, $66, $66, $78, $99, $76, $66
    db $88, $88, $88, $77, $78, $88, $87, $77, $77, $78, $89, $87, $67, $99, $87, $67
    db $99, $76, $56, $78, $99, $87, $67, $89, $98, $77, $88, $87, $66, $78, $88, $66
    db $68, $99, $88, $76, $67, $9a, $97, $66, $67, $89, $99, $64, $57, $ab, $a8, $65
    db $57, $9a, $a9, $75, $56, $79, $aa, $97, $43, $59, $cc, $96, $55, $68, $9a, $a8
    db $66, $66, $79, $ba, $85, $35, $8b, $b9, $86, $44, $6a, $cb, $85, $46, $89, $aa
    db $96, $44, $59, $bb, $85, $45, $7a, $aa, $86, $67, $88, $88, $88, $76, $56, $89
    db $87, $77, $77, $78, $77, $78, $a9, $75, $68, $ab, $96, $55, $68, $aa, $87, $66
    db $67, $8a, $a8, $65, $67, $89, $a9, $65, $58, $99, $87, $77, $66, $8a, $97, $56
    db $89, $98, $88, $88, $88, $77, $78, $87, $67, $88, $76, $78, $87, $77, $78, $99
    db $87, $77, $98, $76, $68, $99, $86, $57, $89, $98, $76, $67, $9a, $97, $66, $67
    db $89, $a9, $75, $67, $9a, $97, $55, $69, $a9, $86, $56, $9b, $a8, $54, $57, $89
    db $a9, $64, $47, $aa, $87, $66, $78, $ab, $96, $56, $78, $88, $87, $66, $78, $88
    db $88, $87, $66, $79, $99, $76, $66, $78, $aa, $86, $57, $99, $97, $65, $57, $89
    db $98, $76, $78, $99, $88, $77, $77, $88, $88, $88, $66, $78, $9a, $97, $66, $89
    db $97, $66, $67, $89, $98, $67, $77, $78, $89, $97, $67, $89, $97, $78, $97, $56
    db $8a, $a8, $65, $78, $99, $87, $66, $67, $9a, $97, $66, $67, $9b, $b8, $55, $79
    db $a9, $75, $45, $69, $bc, $94, $36, $9a, $87, $77, $76, $69, $a9, $76, $67, $89
    db $98, $76, $78, $98, $76, $68, $88, $66, $89, $98, $55, $69, $a9, $77, $87, $67
    db $89, $87, $77, $77, $89, $98, $65, $7a, $97, $67, $88, $87, $66, $67, $99, $87
    db $88, $99, $86, $56, $8a, $a9, $75, $57, $9a, $98, $75, $57, $aa, $96, $56, $78
    db $99, $87, $68, $aa, $86, $68, $a9, $76, $67, $89, $87, $55, $89, $a9, $76, $68
    db $a9, $86, $56, $78, $88, $76, $78, $98, $77, $89, $99, $87, $66, $78, $87, $76
    db $67, $9a, $97, $56, $78, $99, $86, $56, $9a, $a9, $75, $57, $ac, $95, $35, $8b
    db $97, $65, $67, $9a, $87, $78, $87, $88, $87, $77, $76, $67, $98, $76, $78, $99
    db $89, $88, $76, $68, $88, $86, $56, $79, $87, $77, $77, $89, $99, $87, $67, $78
    db $88, $66, $78, $99, $87, $55, $79, $aa, $85, $45, $9c, $b8, $42, $48, $cd, $a5
    db $23, $8c, $da, $62, $26, $bd, $c7, $31, $49, $ee, $93, $02, $7d, $eb, $51, $27
    db $cd, $c8, $41, $49, $ee, $82, $04, $9d, $da, $51, $15, $bf, $e7, $11, $5a, $ee
    db $93, $02, $8d, $ea, $52, $36, $ad, $c8, $42, $38, $de, $a4, $02, $7c, $db, $72
    db $15, $bf, $e8, $31, $49, $df, $c5, $00, $7d, $fb, $41, $26, $cf, $c6, $11, $7c
    db $db, $73, $35, $ac, $c8, $44, $68, $aa, $97, $54, $69, $a9, $76, $66, $7a, $b9
    db $65, $57, $8a, $97, $45, $8a, $a8, $77, $77, $89, $97, $55, $68, $99, $75, $57
    db $99, $76, $78, $88, $88, $76, $79, $98, $76, $78, $89, $87, $77, $77, $99, $86
    db $68, $87, $78, $88, $66, $78, $99, $75, $68, $a9, $66, $78, $98, $87, $77, $87
    db $89, $97, $66, $68, $89, $87, $77, $79, $98, $67, $88, $77, $78, $87, $66, $89
    db $98, $77, $88, $98, $76, $79, $97, $67, $87, $67, $88, $77, $89, $86, $67, $98
    db $87, $77, $78, $98, $76, $68, $88, $99, $76, $67, $88, $87, $77, $78, $88, $77
    db $87, $77, $89, $87, $67, $78, $99, $75, $68, $98, $77, $76, $67, $99, $87, $77
    db $89, $a8, $76, $78, $99, $86, $56, $8a, $97, $66, $89, $98, $76, $67, $8a, $a7
    db $54, $7a, $ba, $75, $47, $ab, $a6, $45, $8a, $a8, $65, $57, $aa, $86, $55, $7a
    db $b9, $64, $59, $cb, $85, $45, $8c, $c7, $32, $6b, $ca, $64, $47, $bb, $85, $56
    db $8a, $b9, $55, $79, $a9, $86, $67, $99, $97, $66, $79, $a9, $76, $57, $9a, $86
    db $56, $8a, $b9, $65, $69, $ba, $75, $56, $8a, $a8, $53, $59, $cb, $63, $38, $bb
    db $86, $55, $7a, $ba, $63, $59, $ca, $74, $56, $8a, $b8, $54, $59, $bc, $95, $25
    db $9c, $a5, $35, $8a, $aa, $84, $48, $cb, $75, $68, $87, $79, $86, $57, $a9, $87
    db $88, $88, $77, $78, $87, $78, $88, $87, $76, $79, $a8, $64, $6a, $b9, $64, $69
    db $b9, $65, $58, $99, $86, $68, $aa, $75, $69, $a9, $66, $67, $89, $97, $56, $9a
    db $98, $76, $66, $8a, $86, $57, $99, $98, $64, $6a, $b8, $44, $7a, $b9, $74, $48
    db $bc, $73, $47, $99, $87, $66, $8b, $a7, $45, $9a, $86, $68, $89, $87, $78, $98
    db $66, $78, $87, $65, $79, $a9, $76, $79, $a9, $76, $67, $77, $78, $97, $66, $8a
    db $a8, $65, $59, $ba, $74, $46, $ac, $95, $35, $8b, $b8, $54, $7a, $ca, $75, $57
    db $9a, $85, $36, $ab, $87, $76, $68, $b9, $76, $78, $88, $89, $65, $67, $99, $86
    db $57, $9a, $86, $68, $a9, $76, $67, $88, $87, $77, $79, $a9, $77, $78, $99, $75
    db $67, $88, $77, $67, $89, $87, $67, $89, $86, $68, $87, $77, $89, $76, $68, $a9
    db $86, $67, $99, $86, $67, $89, $87, $77, $76, $79, $97, $66, $89, $aa, $64, $69
    db $b9, $74, $47, $aa, $74, $58, $ba, $86, $68, $99, $99, $75, $47, $bb, $63, $47
    db $ac, $b6, $34, $9c, $c7, $33, $7a, $ba, $74, $46, $9b, $b7, $42, $6b, $da, $52
    db $5a, $db, $62, $38, $cc, $73, $36, $bd, $a5, $35, $8b, $c9, $52, $5a, $cb, $63
    db $37, $bd, $a4, $14, $be, $c5, $13, $8c, $b8, $44, $67, $ac, $95, $24, $bf, $c5
    db $02, $9f, $e7, $21, $6b, $db, $61, $29, $dc, $83, $25, $be, $a5, $35, $8b, $b8
    db $43, $6a, $b9, $75, $57, $ab, $a7, $44, $7b, $b8, $42, $5a, $db, $73, $37, $ce
    db $a3, $15, $ae, $c6, $23, $7c, $d9, $42, $5a, $cc, $83, $27, $cd, $a5, $24, $9d
    db $c6, $33, $6b, $d9, $42, $5a, $bb, $84, $36, $ad, $a5, $35, $7a, $b9, $54, $6a
    db $ca, $84, $36, $ab, $96, $34, $8c, $c8, $55, $7a, $b8, $54, $68, $9a, $96, $56
    db $8a, $a8, $65, $79, $a9, $65, $58, $aa, $84, $48, $bb, $85, $46, $ab, $85, $58
    db $98, $88, $77, $88, $77, $87, $66, $78, $99, $87, $68, $a9, $75, $57, $9a, $96
    db $45, $9c, $a6, $46, $9b, $a7, $44, $7a, $a8, $65, $57, $ac, $a5, $35, $8b, $b8
    db $42, $6b, $da, $52, $5a, $db, $63, $36, $ac, $a6, $34, $8c, $c8, $33, $6a, $cb
    db $51, $38, $dc, $84, $36, $ad, $b6, $23, $7b, $c9, $43, $6a, $db, $73, $27, $dd
    db $83, $15, $be, $b5, $35, $9b, $b9, $53, $6a, $c9, $53, $69, $ba, $75, $57, $9b
    db $96, $46, $99, $98, $66, $79, $99, $76, $68, $a9, $76, $67, $89, $87, $67, $89
    db $87, $78, $87, $88, $77, $77, $89, $87, $67, $78, $98, $66, $78, $89, $88, $88

    add a                                         ; $5f00: $87
    ld [hl], a                                    ; $5f01: $77
    add a                                         ; $5f02: $87
    adc b                                         ; $5f03: $88
    adc b                                         ; $5f04: $88
    adc b                                         ; $5f05: $88
    adc b                                         ; $5f06: $88
    adc b                                         ; $5f07: $88
    add a                                         ; $5f08: $87
    ld l, b                                       ; $5f09: $68
    xor c                                         ; $5f0a: $a9
    xor c                                         ; $5f0b: $a9
    sbc c                                         ; $5f0c: $99
    ld h, a                                       ; $5f0d: $67
    ld [hl], a                                    ; $5f0e: $77
    ld [hl], a                                    ; $5f0f: $77
    ld h, a                                       ; $5f10: $67
    ld l, c                                       ; $5f11: $69
    ld a, c                                       ; $5f12: $79
    ld h, a                                       ; $5f13: $67
    and [hl]                                      ; $5f14: $a6
    adc b                                         ; $5f15: $88
    ld a, b                                       ; $5f16: $78
    ld a, d                                       ; $5f17: $7a
    ld a, b                                       ; $5f18: $78
    add h                                         ; $5f19: $84
    jp $a7a6                                      ; $5f1a: $c3 $a6 $a7


    ld e, a                                       ; $5f1d: $5f
    inc e                                         ; $5f1e: $1c
    and e                                         ; $5f1f: $a3
    call z, $385a                                 ; $5f20: $cc $5a $38
    add b                                         ; $5f23: $80
    call z, $8509                                 ; $5f24: $cc $09 $85
    sub $b9                                       ; $5f27: $d6 $b9
    ld c, c                                       ; $5f29: $49
    or e                                          ; $5f2a: $b3
    sub a                                         ; $5f2b: $97
    ld l, d                                       ; $5f2c: $6a
    ld d, l                                       ; $5f2d: $55
    ld h, a                                       ; $5f2e: $67
    ld a, d                                       ; $5f2f: $7a
    add a                                         ; $5f30: $87
    sbc h                                         ; $5f31: $9c
    ld h, [hl]                                    ; $5f32: $66
    and l                                         ; $5f33: $a5
    ld e, b                                       ; $5f34: $58
    adc b                                         ; $5f35: $88
    halt                                          ; $5f36: $76
    dec h                                         ; $5f37: $25
    ld h, h                                       ; $5f38: $64
    dec [hl]                                      ; $5f39: $35
    ld sp, $8b87                                  ; $5f3a: $31 $87 $8b
    ld h, [hl]                                    ; $5f3d: $66
    ld [hl], l                                    ; $5f3e: $75
    halt                                          ; $5f3f: $76
    ld l, b                                       ; $5f40: $68
    ld d, l                                       ; $5f41: $55
    sbc b                                         ; $5f42: $98
    sub a                                         ; $5f43: $97
    sub a                                         ; $5f44: $97
    ld a, d                                       ; $5f45: $7a
    ld a, c                                       ; $5f46: $79
    xor b                                         ; $5f47: $a8
    sbc c                                         ; $5f48: $99
    adc c                                         ; $5f49: $89
    ld h, [hl]                                    ; $5f4a: $66
    ld h, [hl]                                    ; $5f4b: $66
    ld d, [hl]                                    ; $5f4c: $56
    adc b                                         ; $5f4d: $88
    xor e                                         ; $5f4e: $ab
    sub [hl]                                      ; $5f4f: $96
    ld d, [hl]                                    ; $5f50: $56
    sub a                                         ; $5f51: $97
    ld h, [hl]                                    ; $5f52: $66
    ld l, b                                       ; $5f53: $68
    ld [hl], a                                    ; $5f54: $77
    inc [hl]                                      ; $5f55: $34
    adc c                                         ; $5f56: $89
    ld [hl], h                                    ; $5f57: $74
    ld c, b                                       ; $5f58: $48
    xor d                                         ; $5f59: $aa
    sub [hl]                                      ; $5f5a: $96
    ld h, a                                       ; $5f5b: $67
    ld a, c                                       ; $5f5c: $79
    sbc b                                         ; $5f5d: $98
    add [hl]                                      ; $5f5e: $86
    ld b, l                                       ; $5f5f: $45
    adc b                                         ; $5f60: $88
    ld a, b                                       ; $5f61: $78
    adc b                                         ; $5f62: $88
    add a                                         ; $5f63: $87
    sbc b                                         ; $5f64: $98
    xor c                                         ; $5f65: $a9
    adc b                                         ; $5f66: $88
    xor c                                         ; $5f67: $a9
    add [hl]                                      ; $5f68: $86
    ld b, [hl]                                    ; $5f69: $46
    ld d, [hl]                                    ; $5f6a: $56
    adc c                                         ; $5f6b: $89
    ld [hl], a                                    ; $5f6c: $77
    ld d, [hl]                                    ; $5f6d: $56
    ld [hl], a                                    ; $5f6e: $77
    xor b                                         ; $5f6f: $a8
    add [hl]                                      ; $5f70: $86
    ld [hl], a                                    ; $5f71: $77
    adc b                                         ; $5f72: $88
    ld b, h                                       ; $5f73: $44
    ld b, e                                       ; $5f74: $43
    ld d, h                                       ; $5f75: $54
    scf                                           ; $5f76: $37
    inc [hl]                                      ; $5f77: $34
    ld d, h                                       ; $5f78: $54
    ld a, b                                       ; $5f79: $78
    ld l, c                                       ; $5f7a: $69
    ld [hl], a                                    ; $5f7b: $77
    add l                                         ; $5f7c: $85
    ld b, h                                       ; $5f7d: $44
    ld e, d                                       ; $5f7e: $5a
    ret z                                         ; $5f7f: $c8

    inc [hl]                                      ; $5f80: $34
    xor d                                         ; $5f81: $aa
    sbc b                                         ; $5f82: $98
    ld h, [hl]                                    ; $5f83: $66
    adc b                                         ; $5f84: $88
    cp c                                          ; $5f85: $b9
    add [hl]                                      ; $5f86: $86
    ld d, [hl]                                    ; $5f87: $56
    add [hl]                                      ; $5f88: $86
    ld h, a                                       ; $5f89: $67
    sbc b                                         ; $5f8a: $98
    sub [hl]                                      ; $5f8b: $96
    xor c                                         ; $5f8c: $a9
    ld a, b                                       ; $5f8d: $78
    ld d, [hl]                                    ; $5f8e: $56
    sub a                                         ; $5f8f: $97
    add l                                         ; $5f90: $85
    add l                                         ; $5f91: $85
    add a                                         ; $5f92: $87
    ld [hl], a                                    ; $5f93: $77
    ld [hl], a                                    ; $5f94: $77
    ld d, l                                       ; $5f95: $55
    ld d, [hl]                                    ; $5f96: $56
    adc c                                         ; $5f97: $89
    ld a, b                                       ; $5f98: $78
    ld [hl], a                                    ; $5f99: $77
    ld a, b                                       ; $5f9a: $78
    adc c                                         ; $5f9b: $89
    add a                                         ; $5f9c: $87
    ld d, [hl]                                    ; $5f9d: $56
    sbc b                                         ; $5f9e: $98
    sub [hl]                                      ; $5f9f: $96
    adc c                                         ; $5fa0: $89
    cp d                                          ; $5fa1: $ba
    sbc b                                         ; $5fa2: $98
    xor h                                         ; $5fa3: $ac
    cp b                                          ; $5fa4: $b8
    ld a, c                                       ; $5fa5: $79
    res 0, [hl]                                   ; $5fa6: $cb $86
    ld h, a                                       ; $5fa8: $67
    adc d                                         ; $5fa9: $8a
    add [hl]                                      ; $5faa: $86
    ld h, [hl]                                    ; $5fab: $66
    ld a, c                                       ; $5fac: $79
    sub [hl]                                      ; $5fad: $96
    ld d, a                                       ; $5fae: $57
    ld a, c                                       ; $5faf: $79
    xor d                                         ; $5fb0: $aa
    sub [hl]                                      ; $5fb1: $96
    ld [hl], a                                    ; $5fb2: $77
    adc c                                         ; $5fb3: $89
    and a                                         ; $5fb4: $a7
    ld d, l                                       ; $5fb5: $55
    ld h, a                                       ; $5fb6: $67
    ld a, d                                       ; $5fb7: $7a
    xor d                                         ; $5fb8: $aa
    ld a, b                                       ; $5fb9: $78
    adc c                                         ; $5fba: $89
    xor d                                         ; $5fbb: $aa
    adc b                                         ; $5fbc: $88
    halt                                          ; $5fbd: $76
    ld [hl], a                                    ; $5fbe: $77
    sbc c                                         ; $5fbf: $99
    add [hl]                                      ; $5fc0: $86
    ld d, a                                       ; $5fc1: $57
    sbc e                                         ; $5fc2: $9b
    cp c                                          ; $5fc3: $b9
    ld a, c                                       ; $5fc4: $79
    add a                                         ; $5fc5: $87
    ld d, [hl]                                    ; $5fc6: $56
    ld a, d                                       ; $5fc7: $7a
    add [hl]                                      ; $5fc8: $86
    ld e, b                                       ; $5fc9: $58
    xor d                                         ; $5fca: $aa
    add a                                         ; $5fcb: $87
    adc b                                         ; $5fcc: $88
    xor h                                         ; $5fcd: $ac
    cp c                                          ; $5fce: $b9
    add a                                         ; $5fcf: $87
    ld e, b                                       ; $5fd0: $58
    add a                                         ; $5fd1: $87
    adc b                                         ; $5fd2: $88
    adc c                                         ; $5fd3: $89
    xor e                                         ; $5fd4: $ab
    cp c                                          ; $5fd5: $b9
    sub a                                         ; $5fd6: $97
    sbc d                                         ; $5fd7: $9a
    cp d                                          ; $5fd8: $ba
    sbc b                                         ; $5fd9: $98
    adc b                                         ; $5fda: $88
    adc b                                         ; $5fdb: $88
    xor b                                         ; $5fdc: $a8
    ld [hl], a                                    ; $5fdd: $77
    ld h, a                                       ; $5fde: $67
    adc c                                         ; $5fdf: $89
    sbc b                                         ; $5fe0: $98
    adc b                                         ; $5fe1: $88
    adc d                                         ; $5fe2: $8a
    xor c                                         ; $5fe3: $a9
    add [hl]                                      ; $5fe4: $86
    adc e                                         ; $5fe5: $8b
    and a                                         ; $5fe6: $a7
    ld d, l                                       ; $5fe7: $55
    ld a, d                                       ; $5fe8: $7a
    sub l                                         ; $5fe9: $95
    ld e, b                                       ; $5fea: $58
    halt                                          ; $5feb: $76
    ld d, [hl]                                    ; $5fec: $56
    adc b                                         ; $5fed: $88
    ld h, [hl]                                    ; $5fee: $66
    inc [hl]                                      ; $5fef: $34
    add [hl]                                      ; $5ff0: $86
    ld h, [hl]                                    ; $5ff1: $66
    ld b, e                                       ; $5ff2: $43
    ld l, b                                       ; $5ff3: $68
    adc c                                         ; $5ff4: $89
    sbc b                                         ; $5ff5: $98
    halt                                          ; $5ff6: $76
    adc c                                         ; $5ff7: $89
    xor d                                         ; $5ff8: $aa
    add [hl]                                      ; $5ff9: $86
    halt                                          ; $5ffa: $76
    sbc d                                         ; $5ffb: $9a
    adc c                                         ; $5ffc: $89
    ld h, [hl]                                    ; $5ffd: $66
    ld h, a                                       ; $5ffe: $67
    sbc h                                         ; $5fff: $9c
    xor b                                         ; $6000: $a8
    ld d, [hl]                                    ; $6001: $56
    ld a, c                                       ; $6002: $79
    sub a                                         ; $6003: $97
    ld a, e                                       ; $6004: $7b
    or a                                          ; $6005: $b7
    ld d, a                                       ; $6006: $57
    xor e                                         ; $6007: $ab
    and [hl]                                      ; $6008: $a6
    ld c, b                                       ; $6009: $48
    xor c                                         ; $600a: $a9
    halt                                          ; $600b: $76
    add [hl]                                      ; $600c: $86
    ld l, c                                       ; $600d: $69
    sbc c                                         ; $600e: $99
    add a                                         ; $600f: $87
    ld l, b                                       ; $6010: $68
    sbc c                                         ; $6011: $99
    sbc d                                         ; $6012: $9a
    xor c                                         ; $6013: $a9
    add a                                         ; $6014: $87
    sbc d                                         ; $6015: $9a
    cp c                                          ; $6016: $b9
    ld a, c                                       ; $6017: $79
    xor b                                         ; $6018: $a8
    sbc b                                         ; $6019: $98
    add a                                         ; $601a: $87
    ld l, b                                       ; $601b: $68
    sbc c                                         ; $601c: $99
    cp c                                          ; $601d: $b9
    halt                                          ; $601e: $76
    ld a, b                                       ; $601f: $78
    cp d                                          ; $6020: $ba
    sub [hl]                                      ; $6021: $96
    ld e, c                                       ; $6022: $59
    sub [hl]                                      ; $6023: $96
    ld b, l                                       ; $6024: $45
    ld a, c                                       ; $6025: $79
    add [hl]                                      ; $6026: $86
    adc c                                         ; $6027: $89
    add [hl]                                      ; $6028: $86
    dec [hl]                                      ; $6029: $35
    adc c                                         ; $602a: $89
    sbc b                                         ; $602b: $98
    ld h, [hl]                                    ; $602c: $66
    ld h, a                                       ; $602d: $67
    adc c                                         ; $602e: $89
    ld h, h                                       ; $602f: $64
    ld d, a                                       ; $6030: $57
    ld l, b                                       ; $6031: $68
    ld [hl], a                                    ; $6032: $77
    ld h, l                                       ; $6033: $65
    halt                                          ; $6034: $76
    adc h                                         ; $6035: $8c
    cp c                                          ; $6036: $b9
    add a                                         ; $6037: $87
    halt                                          ; $6038: $76
    adc d                                         ; $6039: $8a
    sbc b                                         ; $603a: $98
    ld h, [hl]                                    ; $603b: $66
    ld a, b                                       ; $603c: $78
    sbc c                                         ; $603d: $99

jr_01a_603e:
    adc c                                         ; $603e: $89
    sbc b                                         ; $603f: $98
    ld h, [hl]                                    ; $6040: $66
    sbc e                                         ; $6041: $9b
    or a                                          ; $6042: $b7
    inc [hl]                                      ; $6043: $34
    adc b                                         ; $6044: $88
    add l                                         ; $6045: $85
    ld h, [hl]                                    ; $6046: $66
    ld a, b                                       ; $6047: $78
    sub [hl]                                      ; $6048: $96
    ld h, l                                       ; $6049: $65
    ld b, [hl]                                    ; $604a: $46
    ld h, h                                       ; $604b: $64
    ld l, c                                       ; $604c: $69
    sbc c                                         ; $604d: $99
    ld a, b                                       ; $604e: $78
    xor c                                         ; $604f: $a9
    cp d                                          ; $6050: $ba
    sbc c                                         ; $6051: $99
    xor b                                         ; $6052: $a8
    ld l, b                                       ; $6053: $68
    xor d                                         ; $6054: $aa
    ld [hl], l                                    ; $6055: $75
    ld d, a                                       ; $6056: $57
    sbc d                                         ; $6057: $9a
    halt                                          ; $6058: $76
    adc b                                         ; $6059: $88
    ld [hl], l                                    ; $605a: $75
    ld d, a                                       ; $605b: $57
    add a                                         ; $605c: $87
    ld d, l                                       ; $605d: $55
    adc c                                         ; $605e: $89
    ld [hl], e                                    ; $605f: $73
    ld [hl], $89                                  ; $6060: $36 $89
    sub a                                         ; $6062: $97
    ld h, [hl]                                    ; $6063: $66
    ld a, b                                       ; $6064: $78
    sbc c                                         ; $6065: $99
    ld h, [hl]                                    ; $6066: $66
    sbc e                                         ; $6067: $9b
    cp b                                          ; $6068: $b8
    ld h, l                                       ; $6069: $65
    ld b, l                                       ; $606a: $45

jr_01a_606b:
    ld d, [hl]                                    ; $606b: $56
    ld [hl], a                                    ; $606c: $77
    ld d, e                                       ; $606d: $53
    ld b, [hl]                                    ; $606e: $46
    halt                                          ; $606f: $76
    ld l, b                                       ; $6070: $68
    halt                                          ; $6071: $76
    xor d                                         ; $6072: $aa
    ld [hl], l                                    ; $6073: $75
    ld d, [hl]                                    ; $6074: $56
    xor e                                         ; $6075: $ab
    add l                                         ; $6076: $85
    ld a, c                                       ; $6077: $79
    sbc c                                         ; $6078: $99
    sbc c                                         ; $6079: $99
    xor c                                         ; $607a: $a9
    add a                                         ; $607b: $87
    halt                                          ; $607c: $76
    ld a, b                                       ; $607d: $78
    xor d                                         ; $607e: $aa
    ld h, h                                       ; $607f: $64
    ld d, a                                       ; $6080: $57
    ld h, l                                       ; $6081: $65
    ld d, [hl]                                    ; $6082: $56
    dec [hl]                                      ; $6083: $35
    ld b, l                                       ; $6084: $45
    sbc d                                         ; $6085: $9a
    ld h, e                                       ; $6086: $63
    ld d, a                                       ; $6087: $57
    sbc c                                         ; $6088: $99
    sbc d                                         ; $6089: $9a
    xor c                                         ; $608a: $a9
    ld [hl], l                                    ; $608b: $75
    ld l, e                                       ; $608c: $6b
    jp z, $ab56                                   ; $608d: $ca $56 $ab

    xor b                                         ; $6090: $a8
    ld [hl], a                                    ; $6091: $77
    ld h, [hl]                                    ; $6092: $66
    ld d, e                                       ; $6093: $53
    ld l, b                                       ; $6094: $68
    ld a, b                                       ; $6095: $78
    ld [hl], e                                    ; $6096: $73
    dec d                                         ; $6097: $15
    ld [hl], a                                    ; $6098: $77
    ld [hl], h                                    ; $6099: $74
    ld d, e                                       ; $609a: $53
    ld l, b                                       ; $609b: $68
    adc c                                         ; $609c: $89
    ld h, e                                       ; $609d: $63
    ld d, a                                       ; $609e: $57
    adc c                                         ; $609f: $89
    adc d                                         ; $60a0: $8a
    and l                                         ; $60a1: $a5
    inc h                                         ; $60a2: $24
    sbc e                                         ; $60a3: $9b
    sub h                                         ; $60a4: $94
    jr c, jr_01a_603e                             ; $60a5: $38 $97

    ld d, l                                       ; $60a7: $55
    ld h, l                                       ; $60a8: $65
    ld h, l                                       ; $60a9: $65
    ld a, b                                       ; $60aa: $78
    halt                                          ; $60ab: $76
    ld h, a                                       ; $60ac: $67
    ld b, [hl]                                    ; $60ad: $46
    adc b                                         ; $60ae: $88
    ld [hl], l                                    ; $60af: $75
    ld b, [hl]                                    ; $60b0: $46
    ld c, c                                       ; $60b1: $49
    add a                                         ; $60b2: $87
    halt                                          ; $60b3: $76
    ld d, a                                       ; $60b4: $57
    sbc d                                         ; $60b5: $9a
    ld a, c                                       ; $60b6: $79
    add l                                         ; $60b7: $85
    ld e, b                                       ; $60b8: $58
    sbc d                                         ; $60b9: $9a
    add e                                         ; $60ba: $83
    ld c, d                                       ; $60bb: $4a
    xor b                                         ; $60bc: $a8
    ld d, l                                       ; $60bd: $55
    ld b, l                                       ; $60be: $45
    ld a, d                                       ; $60bf: $7a
    add [hl]                                      ; $60c0: $86
    ld h, [hl]                                    ; $60c1: $66
    halt                                          ; $60c2: $76
    ld l, b                                       ; $60c3: $68
    ld [hl], a                                    ; $60c4: $77
    ld [hl], b                                    ; $60c5: $70
    ld l, d                                       ; $60c6: $6a
    res 1, c                                      ; $60c7: $cb $89
    jp z, Jump_01a_79ac                           ; $60c9: $ca $ac $79

    add a                                         ; $60cc: $87
    ld d, h                                       ; $60cd: $54
    ld h, [hl]                                    ; $60ce: $66
    ld [hl], l                                    ; $60cf: $75
    ld c, c                                       ; $60d0: $49
    add [hl]                                      ; $60d1: $86
    ld b, [hl]                                    ; $60d2: $46
    adc d                                         ; $60d3: $8a
    res 1, c                                      ; $60d4: $cb $89
    xor h                                         ; $60d6: $ac
    db $db                                        ; $60d7: $db
    ld a, c                                       ; $60d8: $79
    sbc c                                         ; $60d9: $99
    add l                                         ; $60da: $85
    sub [hl]                                      ; $60db: $96
    ld h, e                                       ; $60dc: $63
    ld c, e                                       ; $60dd: $4b
    ld [hl], e                                    ; $60de: $73
    inc hl                                        ; $60df: $23
    add a                                         ; $60e0: $87
    ld b, c                                       ; $60e1: $41
    jr c, jr_01a_606b                             ; $60e2: $38 $87

    ld c, c                                       ; $60e4: $49
    sbc b                                         ; $60e5: $98
    ld h, h                                       ; $60e6: $64
    adc d                                         ; $60e7: $8a
    xor c                                         ; $60e8: $a9
    ld a, b                                       ; $60e9: $78
    sbc c                                         ; $60ea: $99
    adc b                                         ; $60eb: $88
    ld d, a                                       ; $60ec: $57
    adc c                                         ; $60ed: $89
    xor c                                         ; $60ee: $a9
    and a                                         ; $60ef: $a7
    add a                                         ; $60f0: $87
    xor l                                         ; $60f1: $ad
    xor b                                         ; $60f2: $a8
    sub a                                         ; $60f3: $97
    ld d, a                                       ; $60f4: $57
    xor h                                         ; $60f5: $ac
    or a                                          ; $60f6: $b7
    adc d                                         ; $60f7: $8a
    xor c                                         ; $60f8: $a9
    sbc c                                         ; $60f9: $99
    xor c                                         ; $60fa: $a9
    add a                                         ; $60fb: $87
    sbc c                                         ; $60fc: $99
    sbc b                                         ; $60fd: $98
    ld d, e                                       ; $60fe: $53
    ld l, d                                       ; $60ff: $6a
    cp b                                          ; $6100: $b8
    ld d, [hl]                                    ; $6101: $56
    ld l, b                                       ; $6102: $68
    add a                                         ; $6103: $87
    add a                                         ; $6104: $87
    ld b, [hl]                                    ; $6105: $46
    adc e                                         ; $6106: $8b
    jp z, $bb47                                   ; $6107: $ca $47 $bb

    sbc b                                         ; $610a: $98
    sbc d                                         ; $610b: $9a
    xor d                                         ; $610c: $aa
    ld [hl], l                                    ; $610d: $75
    ld h, l                                       ; $610e: $65
    ld [hl], a                                    ; $610f: $77
    adc b                                         ; $6110: $88
    ld [hl], l                                    ; $6111: $75
    ld b, a                                       ; $6112: $47
    sub a                                         ; $6113: $97
    halt                                          ; $6114: $76
    cp h                                          ; $6115: $bc
    xor b                                         ; $6116: $a8
    ld a, b                                       ; $6117: $78
    add [hl]                                      ; $6118: $86
    ld a, d                                       ; $6119: $7a
    add [hl]                                      ; $611a: $86
    ld d, a                                       ; $611b: $57
    sbc c                                         ; $611c: $99
    halt                                          ; $611d: $76
    ld b, a                                       ; $611e: $47
    adc c                                         ; $611f: $89
    ld h, e                                       ; $6120: $63
    ld b, [hl]                                    ; $6121: $46
    sub a                                         ; $6122: $97
    ld [hl], a                                    ; $6123: $77
    ld a, [hl]                                    ; $6124: $7e
    reti                                          ; $6125: $d9


    ld h, l                                       ; $6126: $65
    adc c                                         ; $6127: $89
    adc b                                         ; $6128: $88
    add a                                         ; $6129: $87
    ld h, [hl]                                    ; $612a: $66
    adc c                                         ; $612b: $89
    add a                                         ; $612c: $87
    ld a, c                                       ; $612d: $79
    ld a, b                                       ; $612e: $78
    ld h, e                                       ; $612f: $63
    ld e, c                                       ; $6130: $59
    add a                                         ; $6131: $87
    ld a, d                                       ; $6132: $7a
    db $dd                                        ; $6133: $dd
    ld h, h                                       ; $6134: $64
    ld a, c                                       ; $6135: $79
    sbc b                                         ; $6136: $98
    ld a, b                                       ; $6137: $78
    add a                                         ; $6138: $87
    ld l, b                                       ; $6139: $68
    ld a, b                                       ; $613a: $78
    sbc b                                         ; $613b: $98
    add a                                         ; $613c: $87
    ld [hl], a                                    ; $613d: $77
    ld b, h                                       ; $613e: $44
    ld a, b                                       ; $613f: $78
    sbc d                                         ; $6140: $9a
    call $58a5                                    ; $6141: $cd $a5 $58
    sbc b                                         ; $6144: $98
    ld h, [hl]                                    ; $6145: $66
    adc c                                         ; $6146: $89
    halt                                          ; $6147: $76
    add a                                         ; $6148: $87
    sbc b                                         ; $6149: $98
    ld [hl], a                                    ; $614a: $77
    ld h, [hl]                                    ; $614b: $66
    ld [hl], h                                    ; $614c: $74
    ld l, b                                       ; $614d: $68
    xor h                                         ; $614e: $ac
    cp d                                          ; $614f: $ba
    sub a                                         ; $6150: $97
    ld c, b                                       ; $6151: $48
    xor c                                         ; $6152: $a9
    ld d, l                                       ; $6153: $55
    adc c                                         ; $6154: $89
    halt                                          ; $6155: $76
    adc b                                         ; $6156: $88
    sbc b                                         ; $6157: $98
    ld h, l                                       ; $6158: $65
    ld l, c                                       ; $6159: $69
    sub h                                         ; $615a: $94
    ld a, e                                       ; $615b: $7b
    ret                                           ; $615c: $c9


    ld a, c                                       ; $615d: $79
    sub l                                         ; $615e: $95
    ld e, d                                       ; $615f: $5a
    cp b                                          ; $6160: $b8
    ld c, c                                       ; $6161: $49
    xor b                                         ; $6162: $a8
    ld a, c                                       ; $6163: $79
    sbc c                                         ; $6164: $99
    halt                                          ; $6165: $76
    ld h, a                                       ; $6166: $67
    sbc c                                         ; $6167: $99
    ld b, a                                       ; $6168: $47
    xor e                                         ; $6169: $ab
    adc c                                         ; $616a: $89
    cp b                                          ; $616b: $b8
    ld d, [hl]                                    ; $616c: $56
    db $dd                                        ; $616d: $dd
    ld h, l                                       ; $616e: $65
    cp e                                          ; $616f: $bb
    add a                                         ; $6170: $87
    adc b                                         ; $6171: $88
    sbc c                                         ; $6172: $99
    halt                                          ; $6173: $76
    ld a, c                                       ; $6174: $79
    ld h, l                                       ; $6175: $65
    adc d                                         ; $6176: $8a
    sbc b                                         ; $6177: $98
    or a                                          ; $6178: $b7
    ld d, l                                       ; $6179: $55
    xor [hl]                                      ; $617a: $ae
    add l                                         ; $617b: $85
    sbc c                                         ; $617c: $99
    ld [hl], a                                    ; $617d: $77
    adc c                                         ; $617e: $89
    add a                                         ; $617f: $87
    ld d, [hl]                                    ; $6180: $56
    ld l, c                                       ; $6181: $69
    halt                                          ; $6182: $76
    adc d                                         ; $6183: $8a
    sbc c                                         ; $6184: $99
    and [hl]                                      ; $6185: $a6
    ld l, b                                       ; $6186: $68
    call c, $8855                                 ; $6187: $dc $55 $88
    ld a, b                                       ; $618a: $78
    sub a                                         ; $618b: $97
    ld [hl], h                                    ; $618c: $74
    ld e, b                                       ; $618d: $58
    sub [hl]                                      ; $618e: $96
    ld e, b                                       ; $618f: $58
    xor d                                         ; $6190: $aa
    sbc d                                         ; $6191: $9a
    ld [hl], l                                    ; $6192: $75
    ld a, h                                       ; $6193: $7c
    push bc                                       ; $6194: $c5
    ld e, b                                       ; $6195: $58
    add [hl]                                      ; $6196: $86
    add a                                         ; $6197: $87
    ld d, h                                       ; $6198: $54
    ld e, b                                       ; $6199: $58
    sbc b                                         ; $619a: $98
    ld h, [hl]                                    ; $619b: $66
    sbc e                                         ; $619c: $9b
    xor d                                         ; $619d: $aa
    ld h, e                                       ; $619e: $63
    ld l, e                                       ; $619f: $6b
    add $47                                       ; $61a0: $c6 $47
    sbc b                                         ; $61a2: $98
    ld h, [hl]                                    ; $61a3: $66
    ld d, [hl]                                    ; $61a4: $56
    sbc d                                         ; $61a5: $9a
    sub [hl]                                      ; $61a6: $96
    ld d, a                                       ; $61a7: $57
    xor d                                         ; $61a8: $aa
    sub a                                         ; $61a9: $97
    ld h, l                                       ; $61aa: $65
    sbc e                                         ; $61ab: $9b
    sub [hl]                                      ; $61ac: $96
    ld e, b                                       ; $61ad: $58
    sub [hl]                                      ; $61ae: $96
    ld d, h                                       ; $61af: $54
    adc e                                         ; $61b0: $8b
    and a                                         ; $61b1: $a7
    ld b, [hl]                                    ; $61b2: $46
    sbc c                                         ; $61b3: $99
    sbc b                                         ; $61b4: $98
    add l                                         ; $61b5: $85
    ld l, b                                       ; $61b6: $68
    xor b                                         ; $61b7: $a8
    ld h, [hl]                                    ; $61b8: $66
    and a                                         ; $61b9: $a7
    ld d, l                                       ; $61ba: $55
    ld a, e                                       ; $61bb: $7b
    or a                                          ; $61bc: $b7
    inc sp                                        ; $61bd: $33
    sbc c                                         ; $61be: $99
    add a                                         ; $61bf: $87
    add a                                         ; $61c0: $87
    ld l, b                                       ; $61c1: $68
    adc c                                         ; $61c2: $89
    ld l, b                                       ; $61c3: $68
    and a                                         ; $61c4: $a7
    ld d, h                                       ; $61c5: $54
    adc e                                         ; $61c6: $8b
    or h                                          ; $61c7: $b4
    dec h                                         ; $61c8: $25
    xor c                                         ; $61c9: $a9
    add [hl]                                      ; $61ca: $86
    sub a                                         ; $61cb: $97
    add [hl]                                      ; $61cc: $86
    adc b                                         ; $61cd: $88
    ld e, d                                       ; $61ce: $5a
    sub a                                         ; $61cf: $97
    scf                                           ; $61d0: $37
    cp e                                          ; $61d1: $bb
    ld h, e                                       ; $61d2: $63
    ld e, b                                       ; $61d3: $58
    ret                                           ; $61d4: $c9


    ld e, b                                       ; $61d5: $58
    sbc b                                         ; $61d6: $98
    ld h, a                                       ; $61d7: $67
    and l                                         ; $61d8: $a5
    xor h                                         ; $61d9: $ac
    ld h, d                                       ; $61da: $62
    ld a, e                                       ; $61db: $7b
    sub [hl]                                      ; $61dc: $96
    ld b, [hl]                                    ; $61dd: $46
    sbc l                                         ; $61de: $9d
    ld [hl], h                                    ; $61df: $74
    xor e                                         ; $61e0: $ab
    halt                                          ; $61e1: $76
    adc c                                         ; $61e2: $89
    ld e, h                                       ; $61e3: $5c
    and e                                         ; $61e4: $a3
    ld a, [hl-]                                   ; $61e5: $3a
    xor b                                         ; $61e6: $a8
    ld d, [hl]                                    ; $61e7: $56
    adc h                                         ; $61e8: $8c
    or e                                          ; $61e9: $b3
    ld a, e                                       ; $61ea: $7b
    add l                                         ; $61eb: $85
    ld a, c                                       ; $61ec: $79
    ld l, c                                       ; $61ed: $69
    push bc                                       ; $61ee: $c5
    add hl, sp                                    ; $61ef: $39
    and a                                         ; $61f0: $a7
    ld h, l                                       ; $61f1: $65
    ld a, e                                       ; $61f2: $7b
    or e                                          ; $61f3: $b3
    ld l, e                                       ; $61f4: $6b
    add l                                         ; $61f5: $85
    ld a, c                                       ; $61f6: $79
    adc c                                         ; $61f7: $89
    or l                                          ; $61f8: $b5
    add hl, sp                                    ; $61f9: $39
    add [hl]                                      ; $61fa: $86
    halt                                          ; $61fb: $76
    adc e                                         ; $61fc: $8b
    and e                                         ; $61fd: $a3
    ld a, h                                       ; $61fe: $7c
    ld [hl], h                                    ; $61ff: $74
    adc c                                         ; $6200: $89
    adc b                                         ; $6201: $88
    sub h                                         ; $6202: $94
    ld c, c                                       ; $6203: $49
    ld [hl], a                                    ; $6204: $77
    halt                                          ; $6205: $76
    sbc e                                         ; $6206: $9b
    ld h, e                                       ; $6207: $63
    sbc d                                         ; $6208: $9a
    ld h, l                                       ; $6209: $65
    adc c                                         ; $620a: $89
    ld a, c                                       ; $620b: $79
    add e                                         ; $620c: $83
    ld a, b                                       ; $620d: $78
    adc b                                         ; $620e: $88
    ld h, a                                       ; $620f: $67
    cp d                                          ; $6210: $ba
    scf                                           ; $6211: $37
    rst $00                                       ; $6212: $c7
    scf                                           ; $6213: $37
    and a                                         ; $6214: $a7
    ld a, d                                       ; $6215: $7a
    ld d, l                                       ; $6216: $55
    ld [hl], a                                    ; $6217: $77
    sub [hl]                                      ; $6218: $96
    ld a, d                                       ; $6219: $7a
    and h                                         ; $621a: $a4
    ld c, h                                       ; $621b: $4c
    add e                                         ; $621c: $83
    ld l, e                                       ; $621d: $6b
    add [hl]                                      ; $621e: $86
    sub l                                         ; $621f: $95
    ld e, b                                       ; $6220: $58
    adc c                                         ; $6221: $89
    ld l, b                                       ; $6222: $68
    sbc c                                         ; $6223: $99
    ld [hl], $c7                                  ; $6224: $36 $c7
    daa                                           ; $6226: $27
    or a                                          ; $6227: $b7
    ld l, c                                       ; $6228: $69
    ld h, [hl]                                    ; $6229: $66
    ld [hl], a                                    ; $622a: $77
    add a                                         ; $622b: $87
    adc c                                         ; $622c: $89
    ld [hl], h                                    ; $622d: $74
    sbc d                                         ; $622e: $9a
    inc [hl]                                      ; $622f: $34
    jp z, $a547                                   ; $6230: $ca $47 $a5

    ld d, l                                       ; $6233: $55
    adc b                                         ; $6234: $88
    adc c                                         ; $6235: $89
    ld [hl], l                                    ; $6236: $75
    ld a, e                                       ; $6237: $7b
    ld d, d                                       ; $6238: $52
    sbc e                                         ; $6239: $9b
    ld d, l                                       ; $623a: $55
    and a                                         ; $623b: $a7
    ld d, a                                       ; $623c: $57
    sbc d                                         ; $623d: $9a
    sbc b                                         ; $623e: $98
    halt                                          ; $623f: $76
    ld l, d                                       ; $6240: $6a
    ld d, d                                       ; $6241: $52
    xor e                                         ; $6242: $ab
    ld d, l                                       ; $6243: $55
    xor c                                         ; $6244: $a9
    ld d, a                                       ; $6245: $57
    xor d                                         ; $6246: $aa
    ld [hl], a                                    ; $6247: $77
    halt                                          ; $6248: $76
    ld e, c                                       ; $6249: $59
    ld h, h                                       ; $624a: $64
    xor d                                         ; $624b: $aa
    ld d, a                                       ; $624c: $57
    reti                                          ; $624d: $d9


    ld b, a                                       ; $624e: $47
    sbc b                                         ; $624f: $98
    add a                                         ; $6250: $87
    ld h, l                                       ; $6251: $65
    ld e, c                                       ; $6252: $59
    ld h, [hl]                                    ; $6253: $66
    cp d                                          ; $6254: $ba
    ld a, d                                       ; $6255: $7a
    or h                                          ; $6256: $b4
    ld e, b                                       ; $6257: $58
    sub a                                         ; $6258: $97
    ld h, [hl]                                    ; $6259: $66
    add l                                         ; $625a: $85

Jump_01a_625b:
    adc e                                         ; $625b: $8b
    ld a, b                                       ; $625c: $78
    cp b                                          ; $625d: $b8
    ld l, e                                       ; $625e: $6b
    add e                                         ; $625f: $83
    adc c                                         ; $6260: $89
    add l                                         ; $6261: $85
    ld e, c                                       ; $6262: $59
    sub a                                         ; $6263: $97
    xor b                                         ; $6264: $a8
    ld a, e                                       ; $6265: $7b
    or l                                          ; $6266: $b5
    adc d                                         ; $6267: $8a
    ld d, l                                       ; $6268: $55
    sub a                                         ; $6269: $97
    ld l, b                                       ; $626a: $68
    adc b                                         ; $626b: $88
    sbc b                                         ; $626c: $98
    xor c                                         ; $626d: $a9
    or a                                          ; $626e: $b7
    ld d, a                                       ; $626f: $57
    add [hl]                                      ; $6270: $86
    ld a, c                                       ; $6271: $79
    add a                                         ; $6272: $87
    sbc b                                         ; $6273: $98
    cp e                                          ; $6274: $bb
    ld [hl], a                                    ; $6275: $77
    sbc b                                         ; $6276: $98
    ld d, a                                       ; $6277: $57
    adc c                                         ; $6278: $89
    add [hl]                                      ; $6279: $86

jr_01a_627a:
    ld l, b                                       ; $627a: $68
    ld a, c                                       ; $627b: $79
    sub l                                         ; $627c: $95
    add hl, hl                                    ; $627d: $29
    or l                                          ; $627e: $b5
    ld e, c                                       ; $627f: $59
    xor d                                         ; $6280: $aa
    ld d, [hl]                                    ; $6281: $56
    ld l, c                                       ; $6282: $69
    call z, $ca25                                 ; $6283: $cc $25 $ca
    ld c, b                                       ; $6286: $48
    xor b                                         ; $6287: $a8
    add l                                         ; $6288: $85
    ld e, c                                       ; $6289: $59
    res 0, d                                      ; $628a: $cb $82
    adc h                                         ; $628c: $8c
    ld h, d                                       ; $628d: $62
    adc c                                         ; $628e: $89
    ld b, e                                       ; $628f: $43
    ld c, c                                       ; $6290: $49
    ret z                                         ; $6291: $c8

    ld d, d                                       ; $6292: $52
    ld l, e                                       ; $6293: $6b
    ld d, c                                       ; $6294: $51
    adc b                                         ; $6295: $88
    dec [hl]                                      ; $6296: $35
    ld e, c                                       ; $6297: $59
    or l                                          ; $6298: $b5
    ld h, e                                       ; $6299: $63
    ld l, d                                       ; $629a: $6a
    ld h, e                                       ; $629b: $63
    adc b                                         ; $629c: $88
    ld d, l                                       ; $629d: $55
    ld a, e                                       ; $629e: $7b
    and [hl]                                      ; $629f: $a6
    add [hl]                                      ; $62a0: $86
    ld a, h                                       ; $62a1: $7c

jr_01a_62a2:
    ld [hl], e                                    ; $62a2: $73
    xor e                                         ; $62a3: $ab
    ld d, l                                       ; $62a4: $55
    xor h                                         ; $62a5: $ac
    sub [hl]                                      ; $62a6: $96
    xor c                                         ; $62a7: $a9
    adc d                                         ; $62a8: $8a
    ld d, a                                       ; $62a9: $57
    add sp, $38                                   ; $62aa: $e8 $38
    db $db                                        ; $62ac: $db
    ld a, b                                       ; $62ad: $78
    sbc b                                         ; $62ae: $98
    adc d                                         ; $62af: $8a
    adc c                                         ; $62b0: $89
    and h                                         ; $62b1: $a4
    ld e, h                                       ; $62b2: $5c
    rst $10                                       ; $62b3: $d7
    ld l, b                                       ; $62b4: $68
    sbc b                                         ; $62b5: $98
    ld [hl], a                                    ; $62b6: $77
    adc d                                         ; $62b7: $8a
    ld d, h                                       ; $62b8: $54
    cp a                                          ; $62b9: $bf
    ld [hl], e                                    ; $62ba: $73
    adc d                                         ; $62bb: $8a
    ld [hl], l                                    ; $62bc: $75
    adc c                                         ; $62bd: $89
    and [hl]                                      ; $62be: $a6
    ld e, d                                       ; $62bf: $5a
    rst $10                                       ; $62c0: $d7
    ld c, d                                       ; $62c1: $4a
    and [hl]                                      ; $62c2: $a6
    ld l, d                                       ; $62c3: $6a
    sbc b                                         ; $62c4: $98
    halt                                          ; $62c5: $76
    sbc e                                         ; $62c6: $9b
    ld [hl], l                                    ; $62c7: $75
    xor b                                         ; $62c8: $a8
    ld l, b                                       ; $62c9: $68

Call_01a_62ca:
    and a                                         ; $62ca: $a7
    sub a                                         ; $62cb: $97
    ld h, a                                       ; $62cc: $67
    sbc b                                         ; $62cd: $98
    ld a, c                                       ; $62ce: $79
    halt                                          ; $62cf: $76
    adc b                                         ; $62d0: $88
    ld l, b                                       ; $62d1: $68
    ld [hl], h                                    ; $62d2: $74
    ld l, c                                       ; $62d3: $69
    sub a                                         ; $62d4: $97
    ld [hl], l                                    ; $62d5: $75
    ld [hl], a                                    ; $62d6: $77
    ld [hl], a                                    ; $62d7: $77
    add h                                         ; $62d8: $84
    ld c, c                                       ; $62d9: $49
    cp b                                          ; $62da: $b8
    halt                                          ; $62db: $76
    ld h, [hl]                                    ; $62dc: $66
    add a                                         ; $62dd: $87
    ld [hl], h                                    ; $62de: $74
    jr c, jr_01a_627a                             ; $62df: $38 $99

    ld [hl], l                                    ; $62e1: $75
    ld d, a                                       ; $62e2: $57
    add l                                         ; $62e3: $85
    ld h, l                                       ; $62e4: $65
    ld e, b                                       ; $62e5: $58
    sbc e                                         ; $62e6: $9b
    sub l                                         ; $62e7: $95
    ld c, b                                       ; $62e8: $48
    sub l                                         ; $62e9: $95
    halt                                          ; $62ea: $76
    ld [hl], a                                    ; $62eb: $77
    sbc e                                         ; $62ec: $9b
    add e                                         ; $62ed: $83
    ld c, c                                       ; $62ee: $49
    ld h, [hl]                                    ; $62ef: $66
    add a                                         ; $62f0: $87
    ld h, a                                       ; $62f1: $67
    cp d                                          ; $62f2: $ba
    ld [hl], e                                    ; $62f3: $73
    ld l, d                                       ; $62f4: $6a
    ld h, [hl]                                    ; $62f5: $66
    add a                                         ; $62f6: $87
    ld c, c                                       ; $62f7: $49
    xor b                                         ; $62f8: $a8
    ld h, e                                       ; $62f9: $63
    adc c                                         ; $62fa: $89
    ld d, [hl]                                    ; $62fb: $56
    add l                                         ; $62fc: $85
    ld l, e                                       ; $62fd: $6b
    adc c                                         ; $62fe: $89
    ld d, e                                       ; $62ff: $53
    and a                                         ; $6300: $a7
    ld e, b                                       ; $6301: $58
    ld [hl], h                                    ; $6302: $74
    sbc c                                         ; $6303: $99
    ld a, c                                       ; $6304: $79
    ld h, $a5                                     ; $6305: $26 $a5
    ld l, d                                       ; $6307: $6a
    ld d, a                                       ; $6308: $57
    sub [hl]                                      ; $6309: $96
    and [hl]                                      ; $630a: $a6
    add hl, sp                                    ; $630b: $39
    add h                                         ; $630c: $84
    sub a                                         ; $630d: $97
    ld e, b                                       ; $630e: $58
    ld l, c                                       ; $630f: $69
    sub e                                         ; $6310: $93
    ld l, d                                       ; $6311: $6a
    ld b, a                                       ; $6312: $47
    sub l                                         ; $6313: $95
    add [hl]                                      ; $6314: $86
    adc d                                         ; $6315: $8a
    ld d, h                                       ; $6316: $54
    and [hl]                                      ; $6317: $a6
    ld e, c                                       ; $6318: $59
    ld h, [hl]                                    ; $6319: $66
    ld h, [hl]                                    ; $631a: $66
    xor b                                         ; $631b: $a8
    jr c, jr_01a_62a2                             ; $631c: $38 $84

    add [hl]                                      ; $631e: $86
    ld h, [hl]                                    ; $631f: $66

jr_01a_6320:
    ld l, d                                       ; $6320: $6a
    sub e                                         ; $6321: $93
    ld a, c                                       ; $6322: $79
    jr c, @+$77                                   ; $6323: $38 $75

    ld h, [hl]                                    ; $6325: $66
    xor c                                         ; $6326: $a9
    ld b, [hl]                                    ; $6327: $46
    and e                                         ; $6328: $a3
    adc b                                         ; $6329: $88
    ld d, [hl]                                    ; $632a: $56
    ld a, d                                       ; $632b: $7a
    and l                                         ; $632c: $a5
    ld l, e                                       ; $632d: $6b
    ld c, b                                       ; $632e: $48
    halt                                          ; $632f: $76
    add a                                         ; $6330: $87
    xor d                                         ; $6331: $aa
    ld d, [hl]                                    ; $6332: $56
    and h                                         ; $6333: $a4
    add a                                         ; $6334: $87
    ld h, [hl]                                    ; $6335: $66
    ld a, d                                       ; $6336: $7a
    sub h                                         ; $6337: $94
    ld l, d                                       ; $6338: $6a
    ld c, b                                       ; $6339: $48
    ld [hl], a                                    ; $633a: $77
    ld h, a                                       ; $633b: $67
    cp c                                          ; $633c: $b9
    ld c, b                                       ; $633d: $48
    sub h                                         ; $633e: $94
    sub [hl]                                      ; $633f: $96
    add [hl]                                      ; $6340: $86
    adc d                                         ; $6341: $8a
    add e                                         ; $6342: $83
    sub a                                         ; $6343: $97
    ld e, c                                       ; $6344: $59
    ld h, a                                       ; $6345: $67
    ld e, c                                       ; $6346: $59
    or [hl]                                       ; $6347: $b6
    ld c, d                                       ; $6348: $4a
    ld h, l                                       ; $6349: $65
    add [hl]                                      ; $634a: $86
    halt                                          ; $634b: $76
    xor d                                         ; $634c: $aa
    ld d, l                                       ; $634d: $55
    and l                                         ; $634e: $a5
    ld a, b                                       ; $634f: $78
    ld h, a                                       ; $6350: $67
    ld l, e                                       ; $6351: $6b
    sub l                                         ; $6352: $95
    ld l, d                                       ; $6353: $6a
    ld c, b                                       ; $6354: $48

Jump_01a_6355:
    ld [hl], a                                    ; $6355: $77

Jump_01a_6356:
    ld h, a                                       ; $6356: $67
    cp c                                          ; $6357: $b9
    ld c, b                                       ; $6358: $48
    and h                                         ; $6359: $a4
    sub a                                         ; $635a: $97
    halt                                          ; $635b: $76
    sbc e                                         ; $635c: $9b
    add h                                         ; $635d: $84
    sbc b                                         ; $635e: $98
    ld c, c                                       ; $635f: $49
    add a                                         ; $6360: $87
    ld l, d                                       ; $6361: $6a
    or a                                          ; $6362: $b7
    ld c, d                                       ; $6363: $4a
    ld h, l                                       ; $6364: $65
    sub a                                         ; $6365: $97
    ld h, a                                       ; $6366: $67
    jp z, $a456                                   ; $6367: $ca $56 $a4

    ld a, b                                       ; $636a: $78
    halt                                          ; $636b: $76
    sbc h                                         ; $636c: $9c
    add h                                         ; $636d: $84
    sbc b                                         ; $636e: $98
    ld c, c                                       ; $636f: $49
    add a                                         ; $6370: $87
    ld l, e                                       ; $6371: $6b
    and l                                         ; $6372: $a5
    ld e, d                                       ; $6373: $5a
    ld d, [hl]                                    ; $6374: $56
    add a                                         ; $6375: $87
    ld [hl], a                                    ; $6376: $77
    cp c                                          ; $6377: $b9
    ld d, a                                       ; $6378: $57
    and l                                         ; $6379: $a5
    sub a                                         ; $637a: $97
    halt                                          ; $637b: $76
    adc e                                         ; $637c: $8b
    add h                                         ; $637d: $84
    sbc c                                         ; $637e: $99
    ld c, c                                       ; $637f: $49
    add a                                         ; $6380: $87
    ld l, d                                       ; $6381: $6a
    or [hl]                                       ; $6382: $b6
    ld e, h                                       ; $6383: $5c
    ld [hl], l                                    ; $6384: $75
    sub a                                         ; $6385: $97
    ld h, a                                       ; $6386: $67
    ret                                           ; $6387: $c9


    ld e, c                                       ; $6388: $59
    or e                                          ; $6389: $b3
    ld a, b                                       ; $638a: $78
    ld h, [hl]                                    ; $638b: $66
    call z, $b568                                 ; $638c: $cc $68 $b5
    ld c, d                                       ; $638f: $4a
    add [hl]                                      ; $6390: $86
    xor [hl]                                      ; $6391: $ae
    ld [hl], a                                    ; $6392: $77
    xor b                                         ; $6393: $a8
    ld a, [hl-]                                   ; $6394: $3a
    add [hl]                                      ; $6395: $86
    sbc [hl]                                      ; $6396: $9e
    ld [hl], a                                    ; $6397: $77
    xor c                                         ; $6398: $a9
    jr z, jr_01a_6320                             ; $6399: $28 $85

    sbc [hl]                                      ; $639b: $9e
    add [hl]                                      ; $639c: $86
    xor c                                         ; $639d: $a9
    daa                                           ; $639e: $27
    add l                                         ; $639f: $85
    xor [hl]                                      ; $63a0: $ae
    add l                                         ; $63a1: $85
    xor b                                         ; $63a2: $a8
    ld h, $96                                     ; $63a3: $26 $96
    xor [hl]                                      ; $63a5: $ae
    add h                                         ; $63a6: $84
    sbc b                                         ; $63a7: $98
    dec [hl]                                      ; $63a8: $35
    add a                                         ; $63a9: $87
    cp l                                          ; $63aa: $bd
    ld [hl], h                                    ; $63ab: $74
    xor b                                         ; $63ac: $a8
    dec [hl]                                      ; $63ad: $35
    sbc b                                         ; $63ae: $98
    cp h                                          ; $63af: $bc
    add l                                         ; $63b0: $85
    sbc b                                         ; $63b1: $98
    inc [hl]                                      ; $63b2: $34
    sbc c                                         ; $63b3: $99
    cp e                                          ; $63b4: $bb
    ld [hl], l                                    ; $63b5: $75
    and a                                         ; $63b6: $a7
    ld h, $ba                                     ; $63b7: $26 $ba
    cp e                                          ; $63b9: $bb
    ld h, h                                       ; $63ba: $64
    xor b                                         ; $63bb: $a8
    scf                                           ; $63bc: $37
    cp d                                          ; $63bd: $ba
    xor c                                         ; $63be: $a9
    ld d, l                                       ; $63bf: $55
    or [hl]                                       ; $63c0: $b6
    add hl, hl                                    ; $63c1: $29
    cp b                                          ; $63c2: $b8
    sbc c                                         ; $63c3: $99
    ld b, a                                       ; $63c4: $47
    call nz, $a83a                                ; $63c5: $c4 $3a $a8
    xor b                                         ; $63c8: $a8
    add hl, sp                                    ; $63c9: $39
    and d                                         ; $63ca: $a2
    ld e, e                                       ; $63cb: $5b
    adc c                                         ; $63cc: $89
    or l                                          ; $63cd: $b5
    ld e, e                                       ; $63ce: $5b
    ld [hl], c                                    ; $63cf: $71
    adc e                                         ; $63d0: $8b
    sbc d                                         ; $63d1: $9a
    sub e                                         ; $63d2: $93
    ld a, e                                       ; $63d3: $7b

jr_01a_63d4:
    dec [hl]                                      ; $63d4: $35
    ret                                           ; $63d5: $c9


    adc d                                         ; $63d6: $8a
    ld h, e                                       ; $63d7: $63
    xor c                                         ; $63d8: $a9
    ld c, b                                       ; $63d9: $48
    and a                                         ; $63da: $a7
    sbc c                                         ; $63db: $99
    ld h, $e7                                     ; $63dc: $26 $e7
    ld c, b                                       ; $63de: $48
    ld a, d                                       ; $63df: $7a
    sub l                                         ; $63e0: $95
    ld e, l                                       ; $63e1: $5d
    or d                                          ; $63e2: $b2
    ld e, d                                       ; $63e3: $5a
    xor b                                         ; $63e4: $a8
    ld [hl], l                                    ; $63e5: $75
    rl h                                          ; $63e6: $cb $14
    cp d                                          ; $63e8: $ba
    add [hl]                                      ; $63e9: $86
    ld a, d                                       ; $63ea: $7a
    ld [hl], h                                    ; $63eb: $74
    ld e, h                                       ; $63ec: $5c
    and l                                         ; $63ed: $a5
    adc d                                         ; $63ee: $8a
    ld h, [hl]                                    ; $63ef: $66
    ld l, c                                       ; $63f0: $69
    or h                                          ; $63f1: $b4
    ld a, e                                       ; $63f2: $7b
    ld h, h                                       ; $63f3: $64
    ld a, c                                       ; $63f4: $79
    or h                                          ; $63f5: $b4
    ld l, e                                       ; $63f6: $6b
    ld [hl], h                                    ; $63f7: $74
    ld l, b                                       ; $63f8: $68
    push de                                       ; $63f9: $d5
    dec sp                                        ; $63fa: $3b
    ld [hl], l                                    ; $63fb: $75
    ld l, b                                       ; $63fc: $68
    rst $10                                       ; $63fd: $d7
    dec hl                                        ; $63fe: $2b
    ld [hl], l                                    ; $63ff: $75
    ld l, b                                       ; $6400: $68
    cp b                                          ; $6401: $b8
    dec de                                        ; $6402: $1b
    ld [hl], h                                    ; $6403: $74
    ld l, c                                       ; $6404: $69
    xor b                                         ; $6405: $a8
    ld a, [hl+]                                   ; $6406: $2a
    ld [hl], l                                    ; $6407: $75
    ld a, c                                       ; $6408: $79
    xor c                                         ; $6409: $a9
    add hl, sp                                    ; $640a: $39
    ld [hl], l                                    ; $640b: $75
    adc c                                         ; $640c: $89
    sbc c                                         ; $640d: $99
    add hl, sp                                    ; $640e: $39
    ld [hl], l                                    ; $640f: $75
    adc c                                         ; $6410: $89
    xor c                                         ; $6411: $a9
    add hl, sp                                    ; $6412: $39
    ld [hl], l                                    ; $6413: $75
    adc c                                         ; $6414: $89
    xor b                                         ; $6415: $a8
    ld a, [hl-]                                   ; $6416: $3a
    ld [hl], l                                    ; $6417: $75
    sbc c                                         ; $6418: $99
    xor b                                         ; $6419: $a8
    ld a, [hl-]                                   ; $641a: $3a
    ld [hl], l                                    ; $641b: $75
    sbc c                                         ; $641c: $99
    and a                                         ; $641d: $a7
    dec sp                                        ; $641e: $3b
    ld h, l                                       ; $641f: $65
    xor c                                         ; $6420: $a9
    or [hl]                                       ; $6421: $b6
    dec sp                                        ; $6422: $3b
    ld d, [hl]                                    ; $6423: $56
    xor c                                         ; $6424: $a9
    and h                                         ; $6425: $a4
    ld e, e                                       ; $6426: $5b
    ld b, [hl]                                    ; $6427: $46
    xor b                                         ; $6428: $a8
    sub h                                         ; $6429: $94
    ld l, d                                       ; $642a: $6a
    jr c, jr_01a_63d4                             ; $642b: $38 $a7

    add h                                         ; $642d: $84
    add a                                         ; $642e: $87
    ld a, [hl-]                                   ; $642f: $3a
    and [hl]                                      ; $6430: $a6
    add [hl]                                      ; $6431: $86
    add l                                         ; $6432: $85
    ld e, h                                       ; $6433: $5c
    add l                                         ; $6434: $85
    sub a                                         ; $6435: $97
    ld [hl], l                                    ; $6436: $75
    ld a, h                                       ; $6437: $7c
    ld h, [hl]                                    ; $6438: $66
    and [hl]                                      ; $6439: $a6
    ld h, l                                       ; $643a: $65
    xor e                                         ; $643b: $ab
    ld c, b                                       ; $643c: $48
    and l                                         ; $643d: $a5
    ld d, [hl]                                    ; $643e: $56
    ret z                                         ; $643f: $c8

    ld c, d                                       ; $6440: $4a
    add h                                         ; $6441: $84
    ld e, b                                       ; $6442: $58
    or [hl]                                       ; $6443: $b6
    ld l, e                                       ; $6444: $6b
    ld h, h                                       ; $6445: $64
    ld l, d                                       ; $6446: $6a
    and h                                         ; $6447: $a4
    sbc d                                         ; $6448: $9a
    ld b, l                                       ; $6449: $45
    ld a, e                                       ; $644a: $7b
    ld [hl], l                                    ; $644b: $75
    or a                                          ; $644c: $b7
    ld [hl], $9a                                  ; $644d: $36 $9a
    ld d, a                                       ; $644f: $57
    and h                                         ; $6450: $a4
    ld c, b                                       ; $6451: $48
    xor b                                         ; $6452: $a8
    ld e, c                                       ; $6453: $59
    ld [hl], e                                    ; $6454: $73
    ld l, c                                       ; $6455: $69
    and [hl]                                      ; $6456: $a6
    ld l, d                                       ; $6457: $6a
    ld b, h                                       ; $6458: $44
    adc c                                         ; $6459: $89
    sub l                                         ; $645a: $95
    adc b                                         ; $645b: $88
    ld b, a                                       ; $645c: $47
    sbc d                                         ; $645d: $9a
    halt                                          ; $645e: $76
    sub [hl]                                      ; $645f: $96
    ld e, b                                       ; $6460: $58
    sbc c                                         ; $6461: $99
    ld l, b                                       ; $6462: $68
    add l                                         ; $6463: $85
    ld a, c                                       ; $6464: $79
    and a                                         ; $6465: $a7
    ld l, b                                       ; $6466: $68
    halt                                          ; $6467: $76
    adc d                                         ; $6468: $8a
    add [hl]                                      ; $6469: $86
    ld a, b                                       ; $646a: $78
    halt                                          ; $646b: $76
    sbc c                                         ; $646c: $99
    halt                                          ; $646d: $76
    add a                                         ; $646e: $87
    ld l, b                                       ; $646f: $68
    xor b                                         ; $6470: $a8
    ld h, a                                       ; $6471: $67
    sub [hl]                                      ; $6472: $96
    ld a, c                                       ; $6473: $79
    sub [hl]                                      ; $6474: $96
    ld l, c                                       ; $6475: $69
    halt                                          ; $6476: $76
    sbc c                                         ; $6477: $99
    ld h, l                                       ; $6478: $65
    sbc b                                         ; $6479: $98
    ld l, b                                       ; $647a: $68
    sub a                                         ; $647b: $97
    ld e, b                                       ; $647c: $58
    sub [hl]                                      ; $647d: $96
    ld a, c                                       ; $647e: $79
    add l                                         ; $647f: $85
    adc c                                         ; $6480: $89
    ld h, a                                       ; $6481: $67
    adc c                                         ; $6482: $89
    ld d, [hl]                                    ; $6483: $56
    sub a                                         ; $6484: $97
    ld a, b                                       ; $6485: $78
    sub [hl]                                      ; $6486: $96
    ld l, c                                       ; $6487: $69
    add a                                         ; $6488: $87
    ld a, c                                       ; $6489: $79
    ld [hl], l                                    ; $648a: $75
    sbc b                                         ; $648b: $98
    ld [hl], a                                    ; $648c: $77
    sub a                                         ; $648d: $97
    ld e, c                                       ; $648e: $59
    sub a                                         ; $648f: $97
    adc d                                         ; $6490: $8a
    add l                                         ; $6491: $85
    sbc c                                         ; $6492: $99
    ld [hl], a                                    ; $6493: $77
    sbc c                                         ; $6494: $99
    ld e, b                                       ; $6495: $58
    sub a                                         ; $6496: $97
    ld a, c                                       ; $6497: $79
    sub l                                         ; $6498: $95
    adc d                                         ; $6499: $8a
    add a                                         ; $649a: $87
    sbc c                                         ; $649b: $99
    ld e, b                                       ; $649c: $58
    sbc b                                         ; $649d: $98
    ld a, c                                       ; $649e: $79
    sub l                                         ; $649f: $95
    adc d                                         ; $64a0: $8a
    add a                                         ; $64a1: $87
    adc c                                         ; $64a2: $89
    ld d, a                                       ; $64a3: $57
    xor b                                         ; $64a4: $a8
    ld l, b                                       ; $64a5: $68
    sub l                                         ; $64a6: $95
    ld a, d                                       ; $64a7: $7a
    add [hl]                                      ; $64a8: $86
    ld a, c                                       ; $64a9: $79
    ld d, a                                       ; $64aa: $57
    xor b                                         ; $64ab: $a8
    ld h, a                                       ; $64ac: $67
    sub [hl]                                      ; $64ad: $96
    ld a, d                                       ; $64ae: $7a
    add [hl]                                      ; $64af: $86
    adc d                                         ; $64b0: $8a
    ld h, a                                       ; $64b1: $67
    sbc b                                         ; $64b2: $98
    ld h, a                                       ; $64b3: $67
    and [hl]                                      ; $64b4: $a6
    ld l, c                                       ; $64b5: $69
    add [hl]                                      ; $64b6: $86
    ld a, d                                       ; $64b7: $7a
    halt                                          ; $64b8: $76
    xor c                                         ; $64b9: $a9
    ld [hl], a                                    ; $64ba: $77
    or a                                          ; $64bb: $b7
    ld a, d                                       ; $64bc: $7a
    sub a                                         ; $64bd: $97
    ld a, d                                       ; $64be: $7a
    ld h, [hl]                                    ; $64bf: $66
    sbc c                                         ; $64c0: $99
    ld [hl], a                                    ; $64c1: $77
    and a                                         ; $64c2: $a7
    ld l, d                                       ; $64c3: $6a
    sub a                                         ; $64c4: $97
    ld a, d                                       ; $64c5: $7a
    ld h, a                                       ; $64c6: $67
    sbc b                                         ; $64c7: $98
    ld [hl], a                                    ; $64c8: $77
    and [hl]                                      ; $64c9: $a6
    ld a, c                                       ; $64ca: $79
    add [hl]                                      ; $64cb: $86
    ld a, d                                       ; $64cc: $7a
    ld h, a                                       ; $64cd: $67
    xor b                                         ; $64ce: $a8
    ld h, a                                       ; $64cf: $67
    and [hl]                                      ; $64d0: $a6
    ld a, d                                       ; $64d1: $7a
    add [hl]                                      ; $64d2: $86
    ld a, d                                       ; $64d3: $7a
    ld h, a                                       ; $64d4: $67
    sbc b                                         ; $64d5: $98
    ld l, b                                       ; $64d6: $68
    and [hl]                                      ; $64d7: $a6
    ld a, c                                       ; $64d8: $79
    add a                                         ; $64d9: $87
    adc d                                         ; $64da: $8a
    ld d, a                                       ; $64db: $57
    xor c                                         ; $64dc: $a9
    ld l, c                                       ; $64dd: $69
    and h                                         ; $64de: $a4
    ld a, d                                       ; $64df: $7a
    sub [hl]                                      ; $64e0: $96
    sbc c                                         ; $64e1: $99
    ld c, b                                       ; $64e2: $48
    xor b                                         ; $64e3: $a8
    ld l, b                                       ; $64e4: $68
    add l                                         ; $64e5: $85
    sbc d                                         ; $64e6: $9a
    add [hl]                                      ; $64e7: $86
    adc b                                         ; $64e8: $88
    ld e, c                                       ; $64e9: $59
    xor b                                         ; $64ea: $a8
    ld l, c                                       ; $64eb: $69
    add [hl]                                      ; $64ec: $86
    xor d                                         ; $64ed: $aa
    halt                                          ; $64ee: $76
    sbc b                                         ; $64ef: $98
    ld l, e                                       ; $64f0: $6b
    add [hl]                                      ; $64f1: $86
    ld l, d                                       ; $64f2: $6a
    add a                                         ; $64f3: $87
    xor b                                         ; $64f4: $a8
    ld h, [hl]                                    ; $64f5: $66
    xor b                                         ; $64f6: $a8
    ld a, c                                       ; $64f7: $79
    add [hl]                                      ; $64f8: $86
    ld a, e                                       ; $64f9: $7b
    ld [hl], a                                    ; $64fa: $77
    sbc b                                         ; $64fb: $98
    ld l, b                                       ; $64fc: $68
    or a                                          ; $64fd: $b7
    ld a, c                                       ; $64fe: $79
    halt                                          ; $64ff: $76
    adc e                                         ; $6500: $8b
    ld h, a                                       ; $6501: $67
    sub a                                         ; $6502: $97
    ld l, b                                       ; $6503: $68
    and [hl]                                      ; $6504: $a6
    ld a, b                                       ; $6505: $78
    add [hl]                                      ; $6506: $86
    adc d                                         ; $6507: $8a
    ld h, a                                       ; $6508: $67
    add a                                         ; $6509: $87
    ld l, c                                       ; $650a: $69
    sub l                                         ; $650b: $95
    ld a, c                                       ; $650c: $79
    halt                                          ; $650d: $76
    xor c                                         ; $650e: $a9
    ld e, b                                       ; $650f: $58
    sub a                                         ; $6510: $97
    ld l, e                                       ; $6511: $6b
    add l                                         ; $6512: $85
    adc b                                         ; $6513: $88
    ld h, a                                       ; $6514: $67
    and a                                         ; $6515: $a7
    ld l, b                                       ; $6516: $68
    add [hl]                                      ; $6517: $86
    ld a, c                                       ; $6518: $79
    add [hl]                                      ; $6519: $86
    add a                                         ; $651a: $87
    ld [hl], a                                    ; $651b: $77
    xor b                                         ; $651c: $a8
    ld l, b                                       ; $651d: $68

jr_01a_651e:
    halt                                          ; $651e: $76
    ld a, e                                       ; $651f: $7b
    add l                                         ; $6520: $85
    adc b                                         ; $6521: $88
    ld e, c                                       ; $6522: $59
    or l                                          ; $6523: $b5
    ld l, c                                       ; $6524: $69
    halt                                          ; $6525: $76
    cp c                                          ; $6526: $b9
    ld b, a                                       ; $6527: $47
    add a                                         ; $6528: $87
    adc d                                         ; $6529: $8a
    ld h, h                                       ; $652a: $64
    adc b                                         ; $652b: $88
    sbc b                                         ; $652c: $98
    add [hl]                                      ; $652d: $86
    ld e, b                                       ; $652e: $58
    xor c                                         ; $652f: $a9
    ld e, c                                       ; $6530: $59
    ld d, [hl]                                    ; $6531: $56
    xor h                                         ; $6532: $ac
    ld c, b                                       ; $6533: $48
    add l                                         ; $6534: $85
    adc [hl]                                      ; $6535: $8e
    ld h, h                                       ; $6536: $64
    sub [hl]                                      ; $6537: $96
    ld l, l                                       ; $6538: $6d
    sub d                                         ; $6539: $92
    sub a                                         ; $653a: $97
    ld e, e                                       ; $653b: $5b
    jp nz, $5878                                  ; $653c: $c2 $78 $58

    db $e3                                        ; $653f: $e3
    ld e, c                                       ; $6540: $59
    ld h, a                                       ; $6541: $67
    push hl                                       ; $6542: $e5
    add hl, sp                                    ; $6543: $39
    halt                                          ; $6544: $76
    add sp, $2a                                   ; $6545: $e8 $2a
    add l                                         ; $6547: $85
    rr c                                          ; $6548: $cb $19
    sub l                                         ; $654a: $95
    xor l                                         ; $654b: $ad
    daa                                           ; $654c: $27
    and l                                         ; $654d: $a5
    adc [hl]                                      ; $654e: $8e
    dec h                                         ; $654f: $25
    or [hl]                                       ; $6550: $b6
    ld a, [hl]                                    ; $6551: $7e
    ld b, h                                       ; $6552: $44
    or [hl]                                       ; $6553: $b6
    ld l, [hl]                                    ; $6554: $6e
    ld d, d                                       ; $6555: $52
    or a                                          ; $6556: $b7
    ld e, [hl]                                    ; $6557: $5e
    ld [hl], c                                    ; $6558: $71
    xor b                                         ; $6559: $a8
    ld e, l                                       ; $655a: $5d
    sub c                                         ; $655b: $91
    sbc b                                         ; $655c: $98
    ld c, h                                       ; $655d: $4c
    or b                                          ; $655e: $b0
    adc c                                         ; $655f: $89
    ld c, d                                       ; $6560: $4a
    ret nz                                        ; $6561: $c0

    ld l, c                                       ; $6562: $69
    ld c, c                                       ; $6563: $49
    pop de                                        ; $6564: $d1
    ld e, c                                       ; $6565: $59
    ld e, b                                       ; $6566: $58
    ld [c], a                                     ; $6567: $e2
    ld c, c                                       ; $6568: $49
    ld h, a                                       ; $6569: $67
    db $e4                                        ; $656a: $e4
    add hl, sp                                    ; $656b: $39
    ld [hl], a                                    ; $656c: $77
    push hl                                       ; $656d: $e5
    add hl, hl                                    ; $656e: $29
    add [hl]                                      ; $656f: $86
    rst $20                                       ; $6570: $e7
    add hl, hl                                    ; $6571: $29
    add [hl]                                      ; $6572: $86
    add sp, $18                                   ; $6573: $e8 $18
    sub [hl]                                      ; $6575: $96
    reti                                          ; $6576: $d9


    jr jr_01a_651e                                ; $6577: $18 $a5

    jp c, $a617                                   ; $6579: $da $17 $a6

    jp z, $a616                                   ; $657c: $ca $16 $a6

    cp e                                          ; $657f: $bb
    ld d, $a6                                     ; $6580: $16 $a6
    cp e                                          ; $6582: $bb
    dec d                                         ; $6583: $15

Jump_01a_6584:
    and [hl]                                      ; $6584: $a6
    xor e                                         ; $6585: $ab
    inc h                                         ; $6586: $24
    or [hl]                                       ; $6587: $b6

jr_01a_6588:
    xor e                                         ; $6588: $ab
    inc h                                         ; $6589: $24
    and a                                         ; $658a: $a7
    sbc e                                         ; $658b: $9b
    inc hl                                        ; $658c: $23
    or a                                          ; $658d: $b7
    sbc e                                         ; $658e: $9b
    inc sp                                        ; $658f: $33
    or a                                          ; $6590: $b7
    sbc e                                         ; $6591: $9b
    inc sp                                        ; $6592: $33
    cp b                                          ; $6593: $b8
    sbc e                                         ; $6594: $9b
    inc sp                                        ; $6595: $33
    cp b                                          ; $6596: $b8
    sbc e                                         ; $6597: $9b
    ld b, e                                       ; $6598: $43
    cp b                                          ; $6599: $b8
    sbc e                                         ; $659a: $9b
    inc sp                                        ; $659b: $33
    ret z                                         ; $659c: $c8

    sbc e                                         ; $659d: $9b
    inc sp                                        ; $659e: $33
    ret z                                         ; $659f: $c8

    sbc e                                         ; $65a0: $9b
    inc [hl]                                      ; $65a1: $34
    ret z                                         ; $65a2: $c8

    sbc d                                         ; $65a3: $9a
    inc [hl]                                      ; $65a4: $34
    ret z                                         ; $65a5: $c8

    sbc d                                         ; $65a6: $9a
    inc h                                         ; $65a7: $24
    ret z                                         ; $65a8: $c8

    sbc d                                         ; $65a9: $9a
    inc h                                         ; $65aa: $24
    rst $00                                       ; $65ab: $c7
    xor c                                         ; $65ac: $a9
    dec h                                         ; $65ad: $25
    rst $00                                       ; $65ae: $c7
    xor b                                         ; $65af: $a8
    dec d                                         ; $65b0: $15
    rst $00                                       ; $65b1: $c7
    xor b                                         ; $65b2: $a8
    dec d                                         ; $65b3: $15
    rst $00                                       ; $65b4: $c7
    xor b                                         ; $65b5: $a8

Jump_01a_65b6:
    dec d                                         ; $65b6: $15
    or a                                          ; $65b7: $b7
    and a                                         ; $65b8: $a7
    ld d, $b7                                     ; $65b9: $16 $b7
    and a                                         ; $65bb: $a7
    rla                                           ; $65bc: $17
    rst $00                                       ; $65bd: $c7
    and a                                         ; $65be: $a7
    jr jr_01a_6588                                ; $65bf: $18 $c7

    or a                                          ; $65c1: $b7
    ld a, [de]                                    ; $65c2: $1a
    ret z                                         ; $65c3: $c8

    or [hl]                                       ; $65c4: $b6
    dec hl                                        ; $65c5: $2b
    cp b                                          ; $65c6: $b8
    or l                                          ; $65c7: $b5
    inc a                                         ; $65c8: $3c
    xor b                                         ; $65c9: $a8
    or h                                          ; $65ca: $b4
    inc a                                         ; $65cb: $3c
    sbc b                                         ; $65cc: $98
    and e                                         ; $65cd: $a3
    ld c, l                                       ; $65ce: $4d
    adc b                                         ; $65cf: $88
    and e                                         ; $65d0: $a3
    ld e, l                                       ; $65d1: $5d
    ld a, b                                       ; $65d2: $78
    add d                                         ; $65d3: $82
    ld l, h                                       ; $65d4: $6c
    ld l, b                                       ; $65d5: $68
    add c                                         ; $65d6: $81
    ld a, h                                       ; $65d7: $7c
    ld l, b                                       ; $65d8: $68
    ld [hl], c                                    ; $65d9: $71
    ld a, e                                       ; $65da: $7b
    ld l, c                                       ; $65db: $69
    ld h, c                                       ; $65dc: $61
    adc e                                         ; $65dd: $8b
    ld l, c                                       ; $65de: $69
    ld d, c                                       ; $65df: $51
    xor e                                         ; $65e0: $ab
    ld a, d                                       ; $65e1: $7a
    ld d, d                                       ; $65e2: $52
    res 1, d                                      ; $65e3: $cb $8a
    ld b, e                                       ; $65e5: $43
    jp c, $359a                                   ; $65e6: $da $9a $35

    add sp, -$57                                  ; $65e9: $e8 $a9
    daa                                           ; $65eb: $27
    ret c                                         ; $65ec: $d8

    xor b                                         ; $65ed: $a8
    add hl, hl                                    ; $65ee: $29
    rst $00                                       ; $65ef: $c7
    and [hl]                                      ; $65f0: $a6
    ld a, [hl+]                                   ; $65f1: $2a
    and a                                         ; $65f2: $a7
    and h                                         ; $65f3: $a4
    dec hl                                        ; $65f4: $2b
    sub a                                         ; $65f5: $97
    and e                                         ; $65f6: $a3
    ld c, h                                       ; $65f7: $4c
    adc b                                         ; $65f8: $88
    and d                                         ; $65f9: $a2
    ld l, h                                       ; $65fa: $6c
    ld a, c                                       ; $65fb: $79
    sub d                                         ; $65fc: $92
    ld l, h                                       ; $65fd: $6c
    ld a, c                                       ; $65fe: $79
    ld [hl], c                                    ; $65ff: $71
    adc e                                         ; $6600: $8b
    ld l, c                                       ; $6601: $69
    ld h, c                                       ; $6602: $61
    sbc e                                         ; $6603: $9b
    ld l, c                                       ; $6604: $69
    ld d, c                                       ; $6605: $51
    xor e                                         ; $6606: $ab
    ld a, d                                       ; $6607: $7a
    ld b, e                                       ; $6608: $43
    jp z, $358a                                   ; $6609: $ca $8a $35

    reti                                          ; $660c: $d9


    sbc c                                         ; $660d: $99
    daa                                           ; $660e: $27
    rst $10                                       ; $660f: $d7
    and a                                         ; $6610: $a7
    add hl, de                                    ; $6611: $19
    or a                                          ; $6612: $b7
    and l                                         ; $6613: $a5
    ld a, [de]                                    ; $6614: $1a
    sub a                                         ; $6615: $97
    sub e                                         ; $6616: $93
    dec sp                                        ; $6617: $3b
    adc b                                         ; $6618: $88
    sub d                                         ; $6619: $92
    ld l, h                                       ; $661a: $6c
    adc c                                         ; $661b: $89
    add e                                         ; $661c: $83
    adc h                                         ; $661d: $8c
    adc d                                         ; $661e: $8a
    ld [hl], e                                    ; $661f: $73
    xor e                                         ; $6620: $ab
    ld a, c                                       ; $6621: $79
    ld h, e                                       ; $6622: $63
    cp d                                          ; $6623: $ba
    ld l, c                                       ; $6624: $69
    ld b, e                                       ; $6625: $43
    cp b                                          ; $6626: $b8
    ld l, b                                       ; $6627: $68
    inc [hl]                                      ; $6628: $34
    ret z                                         ; $6629: $c8

    ld a, b                                       ; $662a: $78
    ld h, $c7                                     ; $662b: $26 $c7
    add [hl]                                      ; $662d: $86
    add hl, de                                    ; $662e: $19
    add $95                                       ; $662f: $c6 $95
    dec hl                                        ; $6631: $2b
    and a                                         ; $6632: $a7
    sub e                                         ; $6633: $93
    ld c, l                                       ; $6634: $4d
    sbc b                                         ; $6635: $98
    sub c                                         ; $6636: $91
    ld a, l                                       ; $6637: $7d
    adc c                                         ; $6638: $89
    ld [hl], d                                    ; $6639: $72
    xor l                                         ; $663a: $ad
    ld a, d                                       ; $663b: $7a
    ld h, h                                       ; $663c: $64
    db $db                                        ; $663d: $db
    adc e                                         ; $663e: $8b
    ld b, [hl]                                    ; $663f: $46
    jp hl                                         ; $6640: $e9


    sbc c                                         ; $6641: $99
    add hl, sp                                    ; $6642: $39
    rst $10                                       ; $6643: $d7
    sub a                                         ; $6644: $97
    dec sp                                        ; $6645: $3b
    add $95                                       ; $6646: $c6 $95
    inc a                                         ; $6648: $3c
    and l                                         ; $6649: $a5
    add e                                         ; $664a: $83
    ld e, l                                       ; $664b: $5d
    ld [hl], l                                    ; $664c: $75
    ld [hl], c                                    ; $664d: $71
    ld a, h                                       ; $664e: $7c
    ld d, [hl]                                    ; $664f: $56
    ld h, c                                       ; $6650: $61
    sbc e                                         ; $6651: $9b
    ld b, a                                       ; $6652: $47
    ld b, d                                       ; $6653: $42
    ret                                           ; $6654: $c9


    ld c, b                                       ; $6655: $48
    ld [hl], $e7                                  ; $6656: $36 $e7
    ld a, b                                       ; $6658: $78
    ld a, [hl-]                                   ; $6659: $3a
    and $97                                       ; $665a: $e6 $97
    ld c, l                                       ; $665c: $4d
    or a                                          ; $665d: $b7
    and l                                         ; $665e: $a5
    ld l, a                                       ; $665f: $6f
    sbc b                                         ; $6660: $98
    and e                                         ; $6661: $a3
    xor [hl]                                      ; $6662: $ae
    ld a, c                                       ; $6663: $79
    ld h, e                                       ; $6664: $63
    jp z, Jump_000_3569                           ; $6665: $ca $69 $35

    rst $20                                       ; $6668: $e7
    ld a, b                                       ; $6669: $78
    add hl, de                                    ; $666a: $19
    call nz, Call_000_1c85                        ; $666b: $c4 $85 $1c
    sub e                                         ; $666e: $93
    add d                                         ; $666f: $82
    dec a                                         ; $6670: $3d
    ld d, l                                       ; $6671: $55
    add c                                         ; $6672: $81
    adc h                                         ; $6673: $8c
    scf                                           ; $6674: $37
    ld h, c                                       ; $6675: $61
    ret                                           ; $6676: $c9


    ld c, d                                       ; $6677: $4a
    ld b, l                                       ; $6678: $45
    rst $20                                       ; $6679: $e7
    ld a, c                                       ; $667a: $79
    ld a, [hl-]                                   ; $667b: $3a
    push de                                       ; $667c: $d5
    and a                                         ; $667d: $a7
    ld c, [hl]                                    ; $667e: $4e
    sub [hl]                                      ; $667f: $96
    and e                                         ; $6680: $a3
    adc [hl]                                      ; $6681: $8e
    ld l, c                                       ; $6682: $69

Call_01a_6683:
    add e                                         ; $6683: $83
    db $db                                        ; $6684: $db
    ld e, d                                       ; $6685: $5a
    ld d, [hl]                                    ; $6686: $56
    and $6a                                       ; $6687: $e6 $6a
    add hl, sp                                    ; $6689: $39
    call nz, $3c97                                ; $668a: $c4 $97 $3c
    add h                                         ; $668d: $84
    and e                                         ; $668e: $a3
    ld l, h                                       ; $668f: $6c
    ld d, a                                       ; $6690: $57
    add d                                         ; $6691: $82
    cp d                                          ; $6692: $ba
    ld c, d                                       ; $6693: $4a
    ld d, l                                       ; $6694: $55
    sub $79                                       ; $6695: $d6 $79
    ld a, [hl+]                                   ; $6697: $2a
    or h                                          ; $6698: $b4
    and l                                         ; $6699: $a5
    ld e, l                                       ; $669a: $5d
    ld h, [hl]                                    ; $669b: $66
    sub d                                         ; $669c: $92
    xor e                                         ; $669d: $ab
    ld c, c                                       ; $669e: $49
    ld d, l                                       ; $669f: $55
    rst $20                                       ; $66a0: $e7
    ld a, d                                       ; $66a1: $7a

jr_01a_66a2:
    dec sp                                        ; $66a2: $3b
    sub $b7                                       ; $66a3: $d6 $b7
    ld l, a                                       ; $66a5: $6f
    sbc b                                         ; $66a6: $98
    or e                                          ; $66a7: $b3
    xor e                                         ; $66a8: $ab
    ld e, d                                       ; $66a9: $5a
    ld b, e                                       ; $66aa: $43
    or l                                          ; $66ab: $b5
    ld l, b                                       ; $66ac: $68
    ld [$9393], sp                                ; $66ad: $08 $93 $93
    dec hl                                        ; $66b0: $2b
    ld d, l                                       ; $66b1: $55
    ld [hl], c                                    ; $66b2: $71
    sbc d                                         ; $66b3: $9a
    add hl, sp                                    ; $66b4: $39
    ld b, l                                       ; $66b5: $45
    rst $20                                       ; $66b6: $e7
    adc c                                         ; $66b7: $89
    dec hl                                        ; $66b8: $2b
    add $c5                                       ; $66b9: $c6 $c5
    ld l, [hl]                                    ; $66bb: $6e
    ld a, b                                       ; $66bc: $78
    sub d                                         ; $66bd: $92
    cp d                                          ; $66be: $ba
    ld e, d                                       ; $66bf: $5a
    ld [hl], $d6                                  ; $66c0: $36 $d6
    adc b                                         ; $66c2: $88
    inc l                                         ; $66c3: $2c
    sub l                                         ; $66c4: $95
    and e                                         ; $66c5: $a3
    ld a, l                                       ; $66c6: $7d
    ld e, c                                       ; $66c7: $59
    ld [hl], d                                    ; $66c8: $72
    ret c                                         ; $66c9: $d8

    ld l, d                                       ; $66ca: $6a
    jr z, jr_01a_66a2                             ; $66cb: $28 $d5

    sub [hl]                                      ; $66cd: $96
    dec a                                         ; $66ce: $3d
    ld [hl], a                                    ; $66cf: $77
    sub d                                         ; $66d0: $92
    xor h                                         ; $66d1: $ac
    ld e, d                                       ; $66d2: $5a
    ld d, l                                       ; $66d3: $55
    rst $10                                       ; $66d4: $d7
    adc b                                         ; $66d5: $88
    dec hl                                        ; $66d6: $2b
    and l                                         ; $66d7: $a5
    and e                                         ; $66d8: $a3
    ld a, l                                       ; $66d9: $7d
    ld l, c                                       ; $66da: $69
    ld [hl], e                                    ; $66db: $73
    reti                                          ; $66dc: $d9


    ld l, c                                       ; $66dd: $69
    add hl, hl                                    ; $66de: $29
    push bc                                       ; $66df: $c5
    sub l                                         ; $66e0: $95
    ld c, l                                       ; $66e1: $4d
    ld [hl], a                                    ; $66e2: $77
    sub d                                         ; $66e3: $92
    cp e                                          ; $66e4: $bb
    ld e, d                                       ; $66e5: $5a
    ld b, [hl]                                    ; $66e6: $46
    sub $87                                       ; $66e7: $d6 $87
    inc a                                         ; $66e9: $3c
    sub [hl]                                      ; $66ea: $96
    sub e                                         ; $66eb: $93
    adc h                                         ; $66ec: $8c
    ld e, c                                       ; $66ed: $59
    ld d, h                                       ; $66ee: $54
    rst $10                                       ; $66ef: $d7
    adc b                                         ; $66f0: $88
    ld a, [hl+]                                   ; $66f1: $2a
    or l                                          ; $66f2: $b5
    sub h                                         ; $66f3: $94
    ld l, l                                       ; $66f4: $6d
    ld l, b                                       ; $66f5: $68
    ld [hl], e                                    ; $66f6: $73
    ret                                           ; $66f7: $c9


    ld l, c                                       ; $66f8: $69
    add hl, hl                                    ; $66f9: $29
    push bc                                       ; $66fa: $c5
    sub l                                         ; $66fb: $95
    ld e, l                                       ; $66fc: $5d
    ld h, a                                       ; $66fd: $67
    add d                                         ; $66fe: $82
    cp d                                          ; $66ff: $ba
    ld e, c                                       ; $6700: $59
    scf                                           ; $6701: $37
    push de                                       ; $6702: $d5
    add [hl]                                      ; $6703: $86
    ld c, l                                       ; $6704: $4d
    halt                                          ; $6705: $76
    add d                                         ; $6706: $82
    xor e                                         ; $6707: $ab
    ld e, c                                       ; $6708: $59
    ld [hl], $d5                                  ; $6709: $36 $d5
    add a                                         ; $670b: $87
    dec a                                         ; $670c: $3d
    add [hl]                                      ; $670d: $86
    sub d                                         ; $670e: $92
    sbc h                                         ; $670f: $9c
    ld e, c                                       ; $6710: $59
    ld d, l                                       ; $6711: $55
    sub $87                                       ; $6712: $d6 $87
    inc a                                         ; $6714: $3c
    sub l                                         ; $6715: $95
    sub e                                         ; $6716: $93
    sbc h                                         ; $6717: $9c
    ld e, c                                       ; $6718: $59
    ld d, l                                       ; $6719: $55
    sub $78                                       ; $671a: $d6 $78
    inc a                                         ; $671c: $3c
    and [hl]                                      ; $671d: $a6
    and e                                         ; $671e: $a3
    sbc h                                         ; $671f: $9c
    ld e, c                                       ; $6720: $59
    ld d, l                                       ; $6721: $55
    sub $78                                       ; $6722: $d6 $78
    inc l                                         ; $6724: $2c
    sub l                                         ; $6725: $95
    sub d                                         ; $6726: $92
    adc h                                         ; $6727: $8c
    ld e, c                                       ; $6728: $59
    ld d, l                                       ; $6729: $55
    sub $88                                       ; $672a: $d6 $88
    inc a                                         ; $672c: $3c
    sub [hl]                                      ; $672d: $96
    sub d                                         ; $672e: $92
    sbc h                                         ; $672f: $9c
    ld e, c                                       ; $6730: $59
    ld b, l                                       ; $6731: $45
    sub $87                                       ; $6732: $d6 $87
    inc l                                         ; $6734: $2c
    sub [hl]                                      ; $6735: $96
    sub d                                         ; $6736: $92
    sbc h                                         ; $6737: $9c
    ld e, c                                       ; $6738: $59

Call_01a_6739:
    ld b, [hl]                                    ; $6739: $46
    sub $87                                       ; $673a: $d6 $87
    dec a                                         ; $673c: $3d
    add a                                         ; $673d: $87
    sub d                                         ; $673e: $92
    cp e                                          ; $673f: $bb
    ld e, d                                       ; $6740: $5a
    scf                                           ; $6741: $37
    push de                                       ; $6742: $d5
    sub l                                         ; $6743: $95
    ld c, l                                       ; $6744: $4d
    ld [hl], a                                    ; $6745: $77
    add d                                         ; $6746: $82
    ret                                           ; $6747: $c9


    ld e, c                                       ; $6748: $59
    add hl, sp                                    ; $6749: $39
    push bc                                       ; $674a: $c5
    sub h                                         ; $674b: $94
    ld l, l                                       ; $674c: $6d
    ld l, b                                       ; $674d: $68
    ld h, e                                       ; $674e: $63
    ret c                                         ; $674f: $d8

    ld l, b                                       ; $6750: $68
    dec hl                                        ; $6751: $2b
    and l                                         ; $6752: $a5
    sub e                                         ; $6753: $93
    adc h                                         ; $6754: $8c
    ld e, c                                       ; $6755: $59
    ld d, l                                       ; $6756: $55
    sub $87                                       ; $6757: $d6 $87
    inc a                                         ; $6759: $3c
    add [hl]                                      ; $675a: $86
    sub d                                         ; $675b: $92
    xor e                                         ; $675c: $ab
    ld e, d                                       ; $675d: $5a
    scf                                           ; $675e: $37

jr_01a_675f:
    push de                                       ; $675f: $d5
    sub l                                         ; $6760: $95
    ld c, l                                       ; $6761: $4d
    ld a, b                                       ; $6762: $78
    add d                                         ; $6763: $82
    ret                                           ; $6764: $c9


    ld l, c                                       ; $6765: $69
    ld a, [hl+]                                   ; $6766: $2a
    or l                                          ; $6767: $b5
    and e                                         ; $6768: $a3
    ld l, l                                       ; $6769: $6d
    ld e, c                                       ; $676a: $59
    ld h, h                                       ; $676b: $64
    rst $10                                       ; $676c: $d7
    adc b                                         ; $676d: $88
    inc l                                         ; $676e: $2c
    sub [hl]                                      ; $676f: $96
    sub d                                         ; $6770: $92
    sbc e                                         ; $6771: $9b
    ld e, d                                       ; $6772: $5a
    scf                                           ; $6773: $37
    push de                                       ; $6774: $d5
    and [hl]                                      ; $6775: $a6
    ld c, l                                       ; $6776: $4d
    ld a, b                                       ; $6777: $78
    add d                                         ; $6778: $82
    ret z                                         ; $6779: $c8

    ld a, c                                       ; $677a: $79
    ld a, [hl+]                                   ; $677b: $2a
    and [hl]                                      ; $677c: $a6
    and e                                         ; $677d: $a3
    ld a, h                                       ; $677e: $7c
    ld l, d                                       ; $677f: $6a
    ld b, l                                       ; $6780: $45
    sub $96                                       ; $6781: $d6 $96
    inc a                                         ; $6783: $3c
    ld a, b                                       ; $6784: $78
    add d                                         ; $6785: $82
    cp c                                          ; $6786: $b9
    ld a, c                                       ; $6787: $79

Jump_01a_6788:
    add hl, hl                                    ; $6788: $29
    and [hl]                                      ; $6789: $a6
    sub e                                         ; $678a: $93
    ld a, h                                       ; $678b: $7c
    ld l, c                                       ; $678c: $69
    ld b, l                                       ; $678d: $45
    add $96                                       ; $678e: $c6 $96
    ld c, h                                       ; $6790: $4c
    ld a, b                                       ; $6791: $78
    ld [hl], e                                    ; $6792: $73
    cp c                                          ; $6793: $b9
    ld a, c                                       ; $6794: $79
    ld a, [hl+]                                   ; $6795: $2a
    and [hl]                                      ; $6796: $a6
    sub e                                         ; $6797: $93
    adc e                                         ; $6798: $8b
    ld l, c                                       ; $6799: $69
    ld b, [hl]                                    ; $679a: $46
    add $95                                       ; $679b: $c6 $95
    ld c, h                                       ; $679d: $4c
    ld a, b                                       ; $679e: $78
    ld h, e                                       ; $679f: $63
    cp b                                          ; $67a0: $b8
    adc b                                         ; $67a1: $88
    ld a, [hl-]                                   ; $67a2: $3a
    sub a                                         ; $67a3: $97
    sub e                                         ; $67a4: $93
    sbc d                                         ; $67a5: $9a
    ld a, c                                       ; $67a6: $79
    jr c, jr_01a_675f                             ; $67a7: $38 $b6

    sub h                                         ; $67a9: $94
    ld l, h                                       ; $67aa: $6c
    ld a, c                                       ; $67ab: $79
    ld d, l                                       ; $67ac: $55
    rst $00                                       ; $67ad: $c7
    sub [hl]                                      ; $67ae: $96
    ld c, h                                       ; $67af: $4c
    adc b                                         ; $67b0: $88
    ld [hl], h                                    ; $67b1: $74
    cp c                                          ; $67b2: $b9
    ld a, b                                       ; $67b3: $78
    ld a, [hl-]                                   ; $67b4: $3a
    sub a                                         ; $67b5: $97
    sub h                                         ; $67b6: $94
    sbc d                                         ; $67b7: $9a
    ld a, c                                       ; $67b8: $79
    ld c, b                                       ; $67b9: $48
    and [hl]                                      ; $67ba: $a6
    sub l                                         ; $67bb: $95
    ld a, e                                       ; $67bc: $7b
    ld a, c                                       ; $67bd: $79
    ld d, [hl]                                    ; $67be: $56
    or a                                          ; $67bf: $b7
    add [hl]                                      ; $67c0: $86
    ld e, e                                       ; $67c1: $5b
    ld a, b                                       ; $67c2: $78
    ld [hl], h                                    ; $67c3: $74
    xor b                                         ; $67c4: $a8
    add a                                         ; $67c5: $87
    ld c, d                                       ; $67c6: $4a
    add a                                         ; $67c7: $87
    add h                                         ; $67c8: $84
    sbc c                                         ; $67c9: $99
    ld a, b                                       ; $67ca: $78
    ld c, c                                       ; $67cb: $49
    sub a                                         ; $67cc: $97
    sub l                                         ; $67cd: $95
    adc d                                         ; $67ce: $8a
    ld a, c                                       ; $67cf: $79
    ld d, a                                       ; $67d0: $57
    and a                                         ; $67d1: $a7
    sub l                                         ; $67d2: $95
    ld l, d                                       ; $67d3: $6a
    ld a, c                                       ; $67d4: $79
    ld h, [hl]                                    ; $67d5: $66
    and a                                         ; $67d6: $a7
    add [hl]                                      ; $67d7: $86
    ld l, d                                       ; $67d8: $6a
    ld a, b                                       ; $67d9: $78
    ld [hl], l                                    ; $67da: $75
    sbc b                                         ; $67db: $98
    add a                                         ; $67dc: $87
    ld e, c                                       ; $67dd: $59
    adc b                                         ; $67de: $88
    ld [hl], l                                    ; $67df: $75
    sbc b                                         ; $67e0: $98
    adc b                                         ; $67e1: $88
    ld e, b                                       ; $67e2: $58
    adc b                                         ; $67e3: $88
    add [hl]                                      ; $67e4: $86
    adc b                                         ; $67e5: $88
    adc b                                         ; $67e6: $88
    ld l, b                                       ; $67e7: $68
    adc b                                         ; $67e8: $88
    add [hl]                                      ; $67e9: $86
    ld a, b                                       ; $67ea: $78
    adc b                                         ; $67eb: $88
    ld h, a                                       ; $67ec: $67
    adc b                                         ; $67ed: $88
    add [hl]                                      ; $67ee: $86
    ld a, b                                       ; $67ef: $78
    adc b                                         ; $67f0: $88
    ld [hl], a                                    ; $67f1: $77
    adc b                                         ; $67f2: $88
    add a                                         ; $67f3: $87
    ld a, b                                       ; $67f4: $78
    adc b                                         ; $67f5: $88
    ld [hl], a                                    ; $67f6: $77
    adc b                                         ; $67f7: $88
    add a                                         ; $67f8: $87
    ld a, b                                       ; $67f9: $78
    adc b                                         ; $67fa: $88
    ld [hl], a                                    ; $67fb: $77
    adc b                                         ; $67fc: $88
    add a                                         ; $67fd: $87
    ld a, b                                       ; $67fe: $78
    adc b                                         ; $67ff: $88
    add a                                         ; $6800: $87
    adc b                                         ; $6801: $88
    add a                                         ; $6802: $87
    ld a, b                                       ; $6803: $78
    adc b                                         ; $6804: $88
    ld [hl], a                                    ; $6805: $77
    adc b                                         ; $6806: $88
    add a                                         ; $6807: $87
    ld a, b                                       ; $6808: $78
    adc b                                         ; $6809: $88
    ld [hl], a                                    ; $680a: $77
    adc b                                         ; $680b: $88
    ld [hl], a                                    ; $680c: $77
    ld a, b                                       ; $680d: $78
    adc b                                         ; $680e: $88
    ld [hl], a                                    ; $680f: $77
    adc b                                         ; $6810: $88
    ld [hl], a                                    ; $6811: $77
    ld a, b                                       ; $6812: $78
    add a                                         ; $6813: $87
    ld [hl], a                                    ; $6814: $77
    adc b                                         ; $6815: $88
    ld [hl], a                                    ; $6816: $77
    ld a, b                                       ; $6817: $78
    add a                                         ; $6818: $87
    ld [hl], a                                    ; $6819: $77
    adc b                                         ; $681a: $88
    adc b                                         ; $681b: $88
    adc b                                         ; $681c: $88
    adc b                                         ; $681d: $88
    adc b                                         ; $681e: $88
    adc b                                         ; $681f: $88
    adc b                                         ; $6820: $88
    ld a, b                                       ; $6821: $78
    add a                                         ; $6822: $87
    ld [hl], a                                    ; $6823: $77
    ld [hl], a                                    ; $6824: $77
    adc b                                         ; $6825: $88
    ld a, b                                       ; $6826: $78
    ld a, b                                       ; $6827: $78
    adc b                                         ; $6828: $88
    adc b                                         ; $6829: $88
    add a                                         ; $682a: $87
    adc b                                         ; $682b: $88
    ld [hl], a                                    ; $682c: $77
    ld a, b                                       ; $682d: $78
    ld [hl], a                                    ; $682e: $77
    ld a, b                                       ; $682f: $78
    adc b                                         ; $6830: $88
    add a                                         ; $6831: $87
    ld [hl], a                                    ; $6832: $77
    adc b                                         ; $6833: $88
    add a                                         ; $6834: $87
    add a                                         ; $6835: $87
    ld [hl], a                                    ; $6836: $77
    add a                                         ; $6837: $87
    adc b                                         ; $6838: $88
    ld [hl], a                                    ; $6839: $77
    ld a, b                                       ; $683a: $78
    adc b                                         ; $683b: $88
    add a                                         ; $683c: $87
    ld [hl], a                                    ; $683d: $77
    ld a, b                                       ; $683e: $78
    ld [hl], a                                    ; $683f: $77
    adc b                                         ; $6840: $88
    adc b                                         ; $6841: $88
    adc b                                         ; $6842: $88
    ld [hl], a                                    ; $6843: $77
    ld a, b                                       ; $6844: $78
    adc b                                         ; $6845: $88
    add a                                         ; $6846: $87
    ld [hl], a                                    ; $6847: $77
    ld a, b                                       ; $6848: $78
    adc b                                         ; $6849: $88
    ld l, b                                       ; $684a: $68
    adc b                                         ; $684b: $88
    ld a, b                                       ; $684c: $78
    ld a, b                                       ; $684d: $78
    ld [hl], a                                    ; $684e: $77
    halt                                          ; $684f: $76
    adc c                                         ; $6850: $89
    add a                                         ; $6851: $87
    add a                                         ; $6852: $87
    ld a, c                                       ; $6853: $79
    adc b                                         ; $6854: $88
    ld h, l                                       ; $6855: $65
    ld a, b                                       ; $6856: $78
    adc d                                         ; $6857: $8a
    sbc b                                         ; $6858: $98
    ld d, l                                       ; $6859: $55
    ld [hl], a                                    ; $685a: $77
    sbc d                                         ; $685b: $9a
    add a                                         ; $685c: $87
    ld a, b                                       ; $685d: $78
    sbc c                                         ; $685e: $99
    ld [hl], l                                    ; $685f: $75
    ld h, l                                       ; $6860: $65
    ld a, c                                       ; $6861: $79
    adc c                                         ; $6862: $89
    sbc c                                         ; $6863: $99
    add a                                         ; $6864: $87
    ld [hl], l                                    ; $6865: $75
    ld l, b                                       ; $6866: $68
    xor e                                         ; $6867: $ab
    sub [hl]                                      ; $6868: $96
    ld d, l                                       ; $6869: $55
    ld h, a                                       ; $686a: $67
    xor d                                         ; $686b: $aa
    sbc b                                         ; $686c: $98
    sbc b                                         ; $686d: $98
    ld h, l                                       ; $686e: $65
    ld d, [hl]                                    ; $686f: $56
    adc d                                         ; $6870: $8a
    sbc b                                         ; $6871: $98
    ld h, [hl]                                    ; $6872: $66
    ld a, b                                       ; $6873: $78
    ld a, b                                       ; $6874: $78
    ld [hl], a                                    ; $6875: $77
    adc b                                         ; $6876: $88
    add a                                         ; $6877: $87
    ld [hl], a                                    ; $6878: $77
    ld a, b                                       ; $6879: $78
    add a                                         ; $687a: $87
    ld a, b                                       ; $687b: $78
    sbc b                                         ; $687c: $98
    halt                                          ; $687d: $76
    ld d, [hl]                                    ; $687e: $56
    adc c                                         ; $687f: $89
    sbc c                                         ; $6880: $99
    sub [hl]                                      ; $6881: $96
    ld h, l                                       ; $6882: $65
    ld [hl], a                                    ; $6883: $77
    sbc c                                         ; $6884: $99
    adc b                                         ; $6885: $88
    sub [hl]                                      ; $6886: $96
    ld h, l                                       ; $6887: $65
    ld l, d                                       ; $6888: $6a
    adc e                                         ; $6889: $8b
    adc b                                         ; $688a: $88
    halt                                          ; $688b: $76
    ld e, b                                       ; $688c: $58
    ld a, d                                       ; $688d: $7a
    add a                                         ; $688e: $87
    add l                                         ; $688f: $85
    add a                                         ; $6890: $87
    sbc c                                         ; $6891: $99
    sub a                                         ; $6892: $97
    add l                                         ; $6893: $85
    halt                                          ; $6894: $76
    adc d                                         ; $6895: $8a
    adc c                                         ; $6896: $89
    ld [hl], a                                    ; $6897: $77
    ld h, [hl]                                    ; $6898: $66
    xor c                                         ; $6899: $a9
    halt                                          ; $689a: $76
    ld h, [hl]                                    ; $689b: $66
    ld a, [hl]                                    ; $689c: $7e
    cpl                                           ; $689d: $2f
    jr z, jr_01a_6907                             ; $689e: $28 $67

    adc e                                         ; $68a0: $8b
    ld l, c                                       ; $68a1: $69
    add [hl]                                      ; $68a2: $86
    ld a, b                                       ; $68a3: $78
    ld l, c                                       ; $68a4: $69
    sub [hl]                                      ; $68a5: $96
    ld d, [hl]                                    ; $68a6: $56
    ld a, d                                       ; $68a7: $7a
    sbc b                                         ; $68a8: $98
    ld a, c                                       ; $68a9: $79
    ld [hl], l                                    ; $68aa: $75
    ld a, c                                       ; $68ab: $79
    sub a                                         ; $68ac: $97
    ld h, [hl]                                    ; $68ad: $66
    ld a, c                                       ; $68ae: $79
    xor d                                         ; $68af: $aa
    ld h, e                                       ; $68b0: $63
    add a                                         ; $68b1: $87
    cp b                                          ; $68b2: $b8
    ld [hl], e                                    ; $68b3: $73
    ld e, d                                       ; $68b4: $5a
    cp h                                          ; $68b5: $bc
    ld [hl], l                                    ; $68b6: $75
    ld l, b                                       ; $68b7: $68
    adc b                                         ; $68b8: $88
    add [hl]                                      ; $68b9: $86
    ld l, b                                       ; $68ba: $68
    sbc c                                         ; $68bb: $99
    add [hl]                                      ; $68bc: $86
    adc b                                         ; $68bd: $88
    add [hl]                                      ; $68be: $86
    ld a, c                                       ; $68bf: $79
    sub [hl]                                      ; $68c0: $96
    ld a, d                                       ; $68c1: $7a
    ld e, b                                       ; $68c2: $58
    sbc c                                         ; $68c3: $99
    ld h, h                                       ; $68c4: $64
    cp b                                          ; $68c5: $b8
    or a                                          ; $68c6: $b7
    ld h, e                                       ; $68c7: $63
    ld a, e                                       ; $68c8: $7b
    sub h                                         ; $68c9: $94
    ld h, a                                       ; $68ca: $67
    cp b                                          ; $68cb: $b8
    halt                                          ; $68cc: $76
    ld a, c                                       ; $68cd: $79
    xor b                                         ; $68ce: $a8
    ld c, c                                       ; $68cf: $49
    ld e, d                                       ; $68d0: $5a
    ld a, b                                       ; $68d1: $78
    ld h, a                                       ; $68d2: $67
    ld h, a                                       ; $68d3: $67
    push bc                                       ; $68d4: $c5
    sub [hl]                                      ; $68d5: $96
    ld h, h                                       ; $68d6: $64
    ret z                                         ; $68d7: $c8

    scf                                           ; $68d8: $37
    cp e                                          ; $68d9: $bb
    scf                                           ; $68da: $37
    ld l, [hl]                                    ; $68db: $6e
    ld d, h                                       ; $68dc: $54
    adc c                                         ; $68dd: $89
    adc b                                         ; $68de: $88
    add [hl]                                      ; $68df: $86
    add a                                         ; $68e0: $87
    adc c                                         ; $68e1: $89
    add a                                         ; $68e2: $87
    ld a, d                                       ; $68e3: $7a
    ld [hl], l                                    ; $68e4: $75
    ld c, d                                       ; $68e5: $4a
    sbc d                                         ; $68e6: $9a
    ld [hl], a                                    ; $68e7: $77
    ld a, e                                       ; $68e8: $7b
    add hl, hl                                    ; $68e9: $29
    or h                                          ; $68ea: $b4
    ld l, c                                       ; $68eb: $69
    and [hl]                                      ; $68ec: $a6
    ld l, c                                       ; $68ed: $69
    or d                                          ; $68ee: $b2
    ld a, e                                       ; $68ef: $7b
    add [hl]                                      ; $68f0: $86
    ld a, c                                       ; $68f1: $79
    add l                                         ; $68f2: $85
    sub a                                         ; $68f3: $97
    ld a, d                                       ; $68f4: $7a
    ld h, l                                       ; $68f5: $65
    ld a, b                                       ; $68f6: $78
    sub $57                                       ; $68f7: $d6 $57
    ld a, e                                       ; $68f9: $7b
    ld e, c                                       ; $68fa: $59
    ld [hl], a                                    ; $68fb: $77
    or [hl]                                       ; $68fc: $b6
    ld [hl], l                                    ; $68fd: $75
    ld l, c                                       ; $68fe: $69
    sub a                                         ; $68ff: $97
    sub [hl]                                      ; $6900: $96
    ld [hl], a                                    ; $6901: $77
    add a                                         ; $6902: $87
    ld l, d                                       ; $6903: $6a
    ld e, d                                       ; $6904: $5a
    ld l, l                                       ; $6905: $6d
    dec d                                         ; $6906: $15

jr_01a_6907:
    cp e                                          ; $6907: $bb
    add b                                         ; $6908: $80
    cp l                                          ; $6909: $bd
    ld d, d                                       ; $690a: $52
    ld a, l                                       ; $690b: $7d
    ld [hl], d                                    ; $690c: $72
    ld a, l                                       ; $690d: $7d
    or e                                          ; $690e: $b3
    inc a                                         ; $690f: $3c
    and h                                         ; $6910: $a4
    ld c, c                                       ; $6911: $49
    push de                                       ; $6912: $d5
    ld a, [hl+]                                   ; $6913: $2a
    push de                                       ; $6914: $d5
    ld c, d                                       ; $6915: $4a
    push de                                       ; $6916: $d5
    ld b, a                                       ; $6917: $47
    xor b                                         ; $6918: $a8
    ld d, l                                       ; $6919: $55
    push de                                       ; $691a: $d5
    ld d, [hl]                                    ; $691b: $56
    ld hl, sp+$56                                 ; $691c: $f8 $56
    ld a, b                                       ; $691e: $78
    ld [hl], a                                    ; $691f: $77
    sbc d                                         ; $6920: $9a
    ld [hl], a                                    ; $6921: $77
    xor b                                         ; $6922: $a8
    ld l, b                                       ; $6923: $68
    ld l, d                                       ; $6924: $6a
    ld l, b                                       ; $6925: $68
    ld l, b                                       ; $6926: $68
    and h                                         ; $6927: $a4
    sbc c                                         ; $6928: $99
    adc c                                         ; $6929: $89
    ld l, b                                       ; $692a: $68
    ld h, a                                       ; $692b: $67
    ld e, e                                       ; $692c: $5b
    ld a, e                                       ; $692d: $7b
    ld d, [hl]                                    ; $692e: $56
    ld e, c                                       ; $692f: $59
    cp b                                          ; $6930: $b8
    ld h, a                                       ; $6931: $67
    ld h, a                                       ; $6932: $67
    ld a, c                                       ; $6933: $79
    adc b                                         ; $6934: $88
    or a                                          ; $6935: $b7
    ld c, b                                       ; $6936: $48
    ld l, b                                       ; $6937: $68
    xor e                                         ; $6938: $ab
    ld h, [hl]                                    ; $6939: $66
    ld l, b                                       ; $693a: $68
    sub [hl]                                      ; $693b: $96
    ld e, c                                       ; $693c: $59
    add a                                         ; $693d: $87
    or l                                          ; $693e: $b5
    ld l, c                                       ; $693f: $69
    sub h                                         ; $6940: $94
    pop af                                        ; $6941: $f1

jr_01a_6942:
    pop bc                                        ; $6942: $c1
    and h                                         ; $6943: $a4
    or [hl]                                       ; $6944: $b6
    db $e4                                        ; $6945: $e4
    add a                                         ; $6946: $87
    ld d, a                                       ; $6947: $57
    sbc d                                         ; $6948: $9a
    ld a, b                                       ; $6949: $78
    ld h, [hl]                                    ; $694a: $66
    ld [hl], l                                    ; $694b: $75
    add l                                         ; $694c: $85
    ld a, [$7a83]                                 ; $694d: $fa $83 $7a
    dec [hl]                                      ; $6950: $35
    xor c                                         ; $6951: $a9
    push de                                       ; $6952: $d5
    inc [hl]                                      ; $6953: $34
    ld l, a                                       ; $6954: $6f
    and [hl]                                      ; $6955: $a6
    ld b, [hl]                                    ; $6956: $46
    jp z, $9715                                   ; $6957: $ca $15 $97

    xor e                                         ; $695a: $ab
    jr z, jr_01a_6942                             ; $695b: $28 $e5

    halt                                          ; $695d: $76
    ld e, c                                       ; $695e: $59
    add $5b                                       ; $695f: $c6 $5b
    ld c, h                                       ; $6961: $4c
    ccf                                           ; $6962: $3f
    scf                                           ; $6963: $37
    ld [hl], $c7                                  ; $6964: $36 $c7
    jp $8597                                      ; $6966: $c3 $97 $85


    ret c                                         ; $6969: $d8

    ld e, b                                       ; $696a: $58
    sub l                                         ; $696b: $95
    ld a, e                                       ; $696c: $7b
    ld [hl], h                                    ; $696d: $74
    sub $96                                       ; $696e: $d6 $96
    add a                                         ; $6970: $87
    ld a, b                                       ; $6971: $78
    ld e, c                                       ; $6972: $59
    ld l, h                                       ; $6973: $6c
    ld l, b                                       ; $6974: $68
    add l                                         ; $6975: $85
    ld a, b                                       ; $6976: $78
    ld a, c                                       ; $6977: $79
    ld [hl], e                                    ; $6978: $73
    xor e                                         ; $6979: $ab
    add h                                         ; $697a: $84
    adc b                                         ; $697b: $88
    sbc c                                         ; $697c: $99
    ld d, a                                       ; $697d: $57
    ld e, h                                       ; $697e: $5c
    ld l, c                                       ; $697f: $69
    ld b, a                                       ; $6980: $47
    sbc b                                         ; $6981: $98
    or l                                          ; $6982: $b5
    ld l, c                                       ; $6983: $69
    ld [hl], a                                    ; $6984: $77
    ld h, l                                       ; $6985: $65
    call $5a64                                    ; $6986: $cd $64 $5a
    ld e, c                                       ; $6989: $59
    cp d                                          ; $698a: $ba
    ld h, h                                       ; $698b: $64
    add [hl]                                      ; $698c: $86
    ld c, c                                       ; $698d: $49
    adc l                                         ; $698e: $8d
    sbc b                                         ; $698f: $98
    adc b                                         ; $6990: $88
    dec h                                         ; $6991: $25
    sbc e                                         ; $6992: $9b
    ld e, e                                       ; $6993: $5b
    and c                                         ; $6994: $a1
    sub e                                         ; $6995: $93
    cp e                                          ; $6996: $bb
    sub e                                         ; $6997: $93
    adc b                                         ; $6998: $88
    ld h, a                                       ; $6999: $67
    adc e                                         ; $699a: $8b
    ld c, d                                       ; $699b: $4a
    dec a                                         ; $699c: $3d
    ld h, d                                       ; $699d: $62
    call nz, $869d                                ; $699e: $c4 $9d $86
    halt                                          ; $69a1: $76
    ld a, [hl+]                                   ; $69a2: $2a
    or a                                          ; $69a3: $b7
    xor c                                         ; $69a4: $a9
    ld [hl], $95                                  ; $69a5: $36 $95
    cp e                                          ; $69a7: $bb
    ld [hl], e                                    ; $69a8: $73
    ld d, l                                       ; $69a9: $55
    add sp, -$6e                                  ; $69aa: $e8 $92
    sub h                                         ; $69ac: $94
    ld l, e                                       ; $69ad: $6b
    xor e                                         ; $69ae: $ab
    add [hl]                                      ; $69af: $86
    jr jr_01a_6a2b                                ; $69b0: $18 $79

    ld a, c                                       ; $69b2: $79
    sbc b                                         ; $69b3: $98
    adc b                                         ; $69b4: $88
    ld d, a                                       ; $69b5: $57
    sub a                                         ; $69b6: $97
    add [hl]                                      ; $69b7: $86
    add l                                         ; $69b8: $85
    sbc d                                         ; $69b9: $9a
    adc e                                         ; $69ba: $8b
    ld d, l                                       ; $69bb: $55
    ld e, d                                       ; $69bc: $5a
    sub l                                         ; $69bd: $95
    sbc b                                         ; $69be: $98
    add [hl]                                      ; $69bf: $86
    adc c                                         ; $69c0: $89
    ld h, [hl]                                    ; $69c1: $66
    sbc c                                         ; $69c2: $99
    or l                                          ; $69c3: $b5
    ld d, a                                       ; $69c4: $57
    ld l, b                                       ; $69c5: $68
    adc c                                         ; $69c6: $89
    ld l, d                                       ; $69c7: $6a
    ld h, l                                       ; $69c8: $65
    and l                                         ; $69c9: $a5
    and a                                         ; $69ca: $a7
    ld [hl], a                                    ; $69cb: $77
    halt                                          ; $69cc: $76
    sbc d                                         ; $69cd: $9a
    sbc d                                         ; $69ce: $9a
    ld h, l                                       ; $69cf: $65
    ld c, h                                       ; $69d0: $4c
    sub a                                         ; $69d1: $97
    ld a, [hl+]                                   ; $69d2: $2a
    ld e, d                                       ; $69d3: $5a
    adc c                                         ; $69d4: $89
    ld h, a                                       ; $69d5: $67
    ld l, c                                       ; $69d6: $69
    ld a, b                                       ; $69d7: $78
    and l                                         ; $69d8: $a5
    and e                                         ; $69d9: $a3
    ld a, c                                       ; $69da: $79
    ld h, h                                       ; $69db: $64
    cp e                                          ; $69dc: $bb
    sub l                                         ; $69dd: $95
    halt                                          ; $69de: $76
    ld h, a                                       ; $69df: $67
    adc e                                         ; $69e0: $8b
    call nc, $2886                                ; $69e1: $d4 $86 $28
    sub l                                         ; $69e4: $95
    rst $10                                       ; $69e5: $d7
    sbc b                                         ; $69e6: $98
    ld c, b                                       ; $69e7: $48
    ld h, a                                       ; $69e8: $67
    or a                                          ; $69e9: $b7
    sub h                                         ; $69ea: $94
    add a                                         ; $69eb: $87
    ld a, [hl]                                    ; $69ec: $7e
    add hl, hl                                    ; $69ed: $29
    ld l, d                                       ; $69ee: $6a
    ld e, c                                       ; $69ef: $59
    ld c, c                                       ; $69f0: $49
    adc d                                         ; $69f1: $8a
    ld [hl], a                                    ; $69f2: $77
    ld l, d                                       ; $69f3: $6a
    ld d, [hl]                                    ; $69f4: $56
    adc b                                         ; $69f5: $88
    sub [hl]                                      ; $69f6: $96
    sbc c                                         ; $69f7: $99
    ld h, [hl]                                    ; $69f8: $66
    ld a, e                                       ; $69f9: $7b
    ld a, c                                       ; $69fa: $79
    ld l, b                                       ; $69fb: $68
    ld l, b                                       ; $69fc: $68
    dec sp                                        ; $69fd: $3b
    and h                                         ; $69fe: $a4
    sbc c                                         ; $69ff: $99
    adc b                                         ; $6a00: $88
    ld e, d                                       ; $6a01: $5a
    dec sp                                        ; $6a02: $3b
    halt                                          ; $6a03: $76
    push bc                                       ; $6a04: $c5
    add a                                         ; $6a05: $87
    jp nz, $93a6                                  ; $6a06: $c2 $a6 $93

    adc h                                         ; $6a09: $8c
    sub a                                         ; $6a0a: $97
    ld e, b                                       ; $6a0b: $58
    add hl, sp                                    ; $6a0c: $39
    xor d                                         ; $6a0d: $aa
    and [hl]                                      ; $6a0e: $a6
    ld h, l                                       ; $6a0f: $65
    sub a                                         ; $6a10: $97
    xor b                                         ; $6a11: $a8
    halt                                          ; $6a12: $76
    ld [hl], l                                    ; $6a13: $75
    and a                                         ; $6a14: $a7
    adc c                                         ; $6a15: $89
    add [hl]                                      ; $6a16: $86
    add [hl]                                      ; $6a17: $86
    and l                                         ; $6a18: $a5
    adc b                                         ; $6a19: $88
    ld e, d                                       ; $6a1a: $5a
    ld b, l                                       ; $6a1b: $45
    db $ed                                        ; $6a1c: $ed
    inc [hl]                                      ; $6a1d: $34
    ld l, b                                       ; $6a1e: $68
    and l                                         ; $6a1f: $a5
    sbc b                                         ; $6a20: $98
    add l                                         ; $6a21: $85
    or h                                          ; $6a22: $b4
    add [hl]                                      ; $6a23: $86
    rst $00                                       ; $6a24: $c7
    ld [hl], e                                    ; $6a25: $73
    add a                                         ; $6a26: $87
    sub a                                         ; $6a27: $97
    ld l, c                                       ; $6a28: $69
    sub a                                         ; $6a29: $97
    ld a, d                                       ; $6a2a: $7a

jr_01a_6a2b:
    ld h, a                                       ; $6a2b: $67
    ld c, b                                       ; $6a2c: $48
    sub h                                         ; $6a2d: $94
    call nz, $58a8                                ; $6a2e: $c4 $a8 $58
    add a                                         ; $6a31: $87
    and [hl]                                      ; $6a32: $a6
    adc b                                         ; $6a33: $88
    ld [hl], l                                    ; $6a34: $75
    adc e                                         ; $6a35: $8b
    ld h, [hl]                                    ; $6a36: $66
    ld l, c                                       ; $6a37: $69
    halt                                          ; $6a38: $76
    sbc h                                         ; $6a39: $9c
    ld h, a                                       ; $6a3a: $67
    ld e, b                                       ; $6a3b: $58
    ld a, c                                       ; $6a3c: $79
    and [hl]                                      ; $6a3d: $a6
    ld h, a                                       ; $6a3e: $67
    halt                                          ; $6a3f: $76
    add a                                         ; $6a40: $87
    ld [hl], a                                    ; $6a41: $77
    cp b                                          ; $6a42: $b8
    ld l, d                                       ; $6a43: $6a
    ld a, b                                       ; $6a44: $78
    ld d, l                                       ; $6a45: $55
    sub a                                         ; $6a46: $97
    add a                                         ; $6a47: $87
    add [hl]                                      ; $6a48: $86
    xor b                                         ; $6a49: $a8
    push bc                                       ; $6a4a: $c5
    ld b, h                                       ; $6a4b: $44
    ld a, e                                       ; $6a4c: $7b
    sbc e                                         ; $6a4d: $9b
    and [hl]                                      ; $6a4e: $a6
    inc [hl]                                      ; $6a4f: $34
    add a                                         ; $6a50: $87
    xor b                                         ; $6a51: $a8
    or $86                                        ; $6a52: $f6 $86
    ld b, d                                       ; $6a54: $42
    ld c, h                                       ; $6a55: $4c
    jp c, Jump_01a_468b                           ; $6a56: $da $8b $46

    ld b, h                                       ; $6a59: $44
    ld a, d                                       ; $6a5a: $7a
    ret z                                         ; $6a5b: $c8

    xor b                                         ; $6a5c: $a8
    ld h, e                                       ; $6a5d: $63
    dec [hl]                                      ; $6a5e: $35
    sbc e                                         ; $6a5f: $9b
    and a                                         ; $6a60: $a7
    cp b                                          ; $6a61: $b8
    ld h, h                                       ; $6a62: $64
    ld h, a                                       ; $6a63: $67
    xor b                                         ; $6a64: $a8
    sbc d                                         ; $6a65: $9a

Call_01a_6a66:
    sub l                                         ; $6a66: $95
    ld d, l                                       ; $6a67: $55
    ld [hl], a                                    ; $6a68: $77
    sub a                                         ; $6a69: $97
    xor b                                         ; $6a6a: $a8
    and [hl]                                      ; $6a6b: $a6
    halt                                          ; $6a6c: $76
    ld l, c                                       ; $6a6d: $69
    adc b                                         ; $6a6e: $88
    adc b                                         ; $6a6f: $88
    sub l                                         ; $6a70: $95
    adc c                                         ; $6a71: $89
    halt                                          ; $6a72: $76
    ld h, [hl]                                    ; $6a73: $66
    adc d                                         ; $6a74: $8a
    sbc b                                         ; $6a75: $98
    ld [hl], a                                    ; $6a76: $77
    ld h, a                                       ; $6a77: $67
    sub a                                         ; $6a78: $97
    adc c                                         ; $6a79: $89
    sub a                                         ; $6a7a: $97
    ld d, a                                       ; $6a7b: $57
    adc c                                         ; $6a7c: $89
    add a                                         ; $6a7d: $87
    ld l, b                                       ; $6a7e: $68
    ld a, b                                       ; $6a7f: $78
    adc b                                         ; $6a80: $88
    add a                                         ; $6a81: $87
    add [hl]                                      ; $6a82: $86
    ld [hl], l                                    ; $6a83: $75
    ld [hl], a                                    ; $6a84: $77
    sbc c                                         ; $6a85: $99
    adc b                                         ; $6a86: $88
    sub a                                         ; $6a87: $97
    add a                                         ; $6a88: $87
    add a                                         ; $6a89: $87
    ld d, l                                       ; $6a8a: $55
    ld a, c                                       ; $6a8b: $79
    xor c                                         ; $6a8c: $a9
    sub [hl]                                      ; $6a8d: $96
    ld h, [hl]                                    ; $6a8e: $66
    adc d                                         ; $6a8f: $8a
    sub l                                         ; $6a90: $95
    ld h, a                                       ; $6a91: $67
    ld [hl], a                                    ; $6a92: $77
    sbc b                                         ; $6a93: $98
    add a                                         ; $6a94: $87
    add [hl]                                      ; $6a95: $86
    add a                                         ; $6a96: $87
    ld a, b                                       ; $6a97: $78
    and l                                         ; $6a98: $a5
    adc c                                         ; $6a99: $89
    halt                                          ; $6a9a: $76
    sub [hl]                                      ; $6a9b: $96
    add a                                         ; $6a9c: $87
    ld h, a                                       ; $6a9d: $67
    sub [hl]                                      ; $6a9e: $96
    sbc b                                         ; $6a9f: $98
    and a                                         ; $6aa0: $a7
    ld l, b                                       ; $6aa1: $68
    add a                                         ; $6aa2: $87
    add a                                         ; $6aa3: $87
    ld l, b                                       ; $6aa4: $68
    adc e                                         ; $6aa5: $8b
    ld e, c                                       ; $6aa6: $59
    ld d, a                                       ; $6aa7: $57
    ld h, [hl]                                    ; $6aa8: $66
    xor d                                         ; $6aa9: $aa
    sbc b                                         ; $6aaa: $98
    add l                                         ; $6aab: $85
    ld e, b                                       ; $6aac: $58
    ld h, h                                       ; $6aad: $64
    xor e                                         ; $6aae: $ab
    adc c                                         ; $6aaf: $89
    add l                                         ; $6ab0: $85
    jr c, jr_01a_6b2c                             ; $6ab1: $38 $79

    adc d                                         ; $6ab3: $8a
    sub [hl]                                      ; $6ab4: $96
    ld l, d                                       ; $6ab5: $6a
    ld [hl], h                                    ; $6ab6: $74
    ld l, c                                       ; $6ab7: $69
    sub a                                         ; $6ab8: $97
    add a                                         ; $6ab9: $87
    ld l, b                                       ; $6aba: $68
    adc h                                         ; $6abb: $8c
    ld a, c                                       ; $6abc: $79
    add [hl]                                      ; $6abd: $86
    ld h, [hl]                                    ; $6abe: $66
    halt                                          ; $6abf: $76
    add a                                         ; $6ac0: $87
    ld a, b                                       ; $6ac1: $78
    xor h                                         ; $6ac2: $ac
    add a                                         ; $6ac3: $87
    adc b                                         ; $6ac4: $88
    ld a, b                                       ; $6ac5: $78
    ld h, [hl]                                    ; $6ac6: $66
    ld h, a                                       ; $6ac7: $67
    ld h, l                                       ; $6ac8: $65
    adc c                                         ; $6ac9: $89
    adc b                                         ; $6aca: $88
    adc h                                         ; $6acb: $8c
    sbc c                                         ; $6acc: $99
    ld [hl], l                                    ; $6acd: $75
    ld d, a                                       ; $6ace: $57
    ld [hl], a                                    ; $6acf: $77
    adc b                                         ; $6ad0: $88
    ld [hl], a                                    ; $6ad1: $77
    adc b                                         ; $6ad2: $88
    ld a, b                                       ; $6ad3: $78
    add a                                         ; $6ad4: $87
    adc c                                         ; $6ad5: $89
    adc e                                         ; $6ad6: $8b
    ld h, d                                       ; $6ad7: $62
    sbc c                                         ; $6ad8: $99
    ld c, c                                       ; $6ad9: $49
    sbc b                                         ; $6ada: $98
    adc b                                         ; $6adb: $88
    ld l, e                                       ; $6adc: $6b
    ld d, d                                       ; $6add: $52
    ld a, b                                       ; $6ade: $78
    xor c                                         ; $6adf: $a9
    cp c                                          ; $6ae0: $b9
    sub a                                         ; $6ae1: $97
    ld [hl], e                                    ; $6ae2: $73
    ld [hl], l                                    ; $6ae3: $75
    sub a                                         ; $6ae4: $97
    adc e                                         ; $6ae5: $8b
    sub a                                         ; $6ae6: $97
    ld h, l                                       ; $6ae7: $65
    ld a, c                                       ; $6ae8: $79
    adc c                                         ; $6ae9: $89
    sbc b                                         ; $6aea: $98
    add [hl]                                      ; $6aeb: $86
    add [hl]                                      ; $6aec: $86
    ld [hl], a                                    ; $6aed: $77
    xor b                                         ; $6aee: $a8
    add l                                         ; $6aef: $85
    ld l, b                                       ; $6af0: $68
    add l                                         ; $6af1: $85
    ld e, b                                       ; $6af2: $58
    xor c                                         ; $6af3: $a9
    xor b                                         ; $6af4: $a8
    ld a, b                                       ; $6af5: $78
    adc b                                         ; $6af6: $88
    add [hl]                                      ; $6af7: $86
    ld d, h                                       ; $6af8: $54
    ld a, d                                       ; $6af9: $7a
    add a                                         ; $6afa: $87
    ld c, c                                       ; $6afb: $49
    xor c                                         ; $6afc: $a9
    adc b                                         ; $6afd: $88
    add hl, sp                                    ; $6afe: $39
    and a                                         ; $6aff: $a7
    add a                                         ; $6b00: $87
    ld h, a                                       ; $6b01: $67
    ld [hl], a                                    ; $6b02: $77
    ld l, b                                       ; $6b03: $68
    cp h                                          ; $6b04: $bc
    sub [hl]                                      ; $6b05: $96
    halt                                          ; $6b06: $76
    halt                                          ; $6b07: $76
    ld d, [hl]                                    ; $6b08: $56
    sbc d                                         ; $6b09: $9a
    ld a, b                                       ; $6b0a: $78
    and l                                         ; $6b0b: $a5
    add a                                         ; $6b0c: $87
    sbc c                                         ; $6b0d: $99
    add h                                         ; $6b0e: $84
    ld a, d                                       ; $6b0f: $7a
    add a                                         ; $6b10: $87
    ld h, $98                                     ; $6b11: $26 $98
    cp b                                          ; $6b13: $b8
    ld c, c                                       ; $6b14: $49
    xor b                                         ; $6b15: $a8
    ld a, b                                       ; $6b16: $78
    ld [hl], a                                    ; $6b17: $77
    ld l, b                                       ; $6b18: $68
    add a                                         ; $6b19: $87
    adc b                                         ; $6b1a: $88
    adc b                                         ; $6b1b: $88
    add [hl]                                      ; $6b1c: $86
    ld l, b                                       ; $6b1d: $68
    add [hl]                                      ; $6b1e: $86
    ld a, b                                       ; $6b1f: $78
    sub [hl]                                      ; $6b20: $96
    adc b                                         ; $6b21: $88
    ld l, b                                       ; $6b22: $68
    sbc b                                         ; $6b23: $98
    add a                                         ; $6b24: $87
    ld h, a                                       ; $6b25: $67
    ld [hl], a                                    ; $6b26: $77
    adc c                                         ; $6b27: $89
    ld [hl], a                                    ; $6b28: $77

jr_01a_6b29:
    ld [hl], l                                    ; $6b29: $75
    sbc d                                         ; $6b2a: $9a
    adc b                                         ; $6b2b: $88

jr_01a_6b2c:
    add a                                         ; $6b2c: $87
    ld h, h                                       ; $6b2d: $64
    ld l, b                                       ; $6b2e: $68
    cp c                                          ; $6b2f: $b9
    add h                                         ; $6b30: $84
    ld a, b                                       ; $6b31: $78
    sbc b                                         ; $6b32: $98
    ld a, b                                       ; $6b33: $78
    ld [hl], a                                    ; $6b34: $77
    ld l, b                                       ; $6b35: $68
    ld a, b                                       ; $6b36: $78
    halt                                          ; $6b37: $76
    ld a, d                                       ; $6b38: $7a
    and a                                         ; $6b39: $a7
    ld h, a                                       ; $6b3a: $67
    ld h, a                                       ; $6b3b: $67
    ld [hl], a                                    ; $6b3c: $77
    sbc b                                         ; $6b3d: $98
    ld a, b                                       ; $6b3e: $78
    add a                                         ; $6b3f: $87
    adc b                                         ; $6b40: $88
    ld d, [hl]                                    ; $6b41: $56
    adc d                                         ; $6b42: $8a
    add a                                         ; $6b43: $87
    ld h, a                                       ; $6b44: $67
    ld l, b                                       ; $6b45: $68
    adc d                                         ; $6b46: $8a
    ld a, b                                       ; $6b47: $78
    ld a, c                                       ; $6b48: $79
    ld h, l                                       ; $6b49: $65
    adc e                                         ; $6b4a: $8b
    sub [hl]                                      ; $6b4b: $96
    ld e, b                                       ; $6b4c: $58
    adc b                                         ; $6b4d: $88
    ld a, d                                       ; $6b4e: $7a
    ld h, [hl]                                    ; $6b4f: $66
    ld l, c                                       ; $6b50: $69
    add a                                         ; $6b51: $87
    ld l, b                                       ; $6b52: $68
    xor b                                         ; $6b53: $a8
    ld [hl], l                                    ; $6b54: $75
    ld a, b                                       ; $6b55: $78
    add a                                         ; $6b56: $87
    ld a, b                                       ; $6b57: $78
    ld a, c                                       ; $6b58: $79
    adc c                                         ; $6b59: $89
    add a                                         ; $6b5a: $87
    ld d, a                                       ; $6b5b: $57
    ld [hl], a                                    ; $6b5c: $77
    adc d                                         ; $6b5d: $8a
    add a                                         ; $6b5e: $87
    ld [hl], a                                    ; $6b5f: $77
    sbc d                                         ; $6b60: $9a
    add a                                         ; $6b61: $87
    ld h, [hl]                                    ; $6b62: $66
    ld a, b                                       ; $6b63: $78
    halt                                          ; $6b64: $76

Jump_01a_6b65:
    halt                                          ; $6b65: $76
    adc d                                         ; $6b66: $8a
    adc d                                         ; $6b67: $8a
    sub h                                         ; $6b68: $94
    ld l, b                                       ; $6b69: $68
    ld a, c                                       ; $6b6a: $79
    and a                                         ; $6b6b: $a7
    ld [hl], $a9                                  ; $6b6c: $36 $a9
    add a                                         ; $6b6e: $87
    jr c, jr_01a_6b29                             ; $6b6f: $38 $b8

    add l                                         ; $6b71: $85
    ld a, c                                       ; $6b72: $79
    sbc c                                         ; $6b73: $99
    ld d, a                                       ; $6b74: $57
    xor b                                         ; $6b75: $a8
    ld [hl], a                                    ; $6b76: $77
    ld a, b                                       ; $6b77: $78
    add [hl]                                      ; $6b78: $86
    ld d, a                                       ; $6b79: $57
    ld a, c                                       ; $6b7a: $79
    adc d                                         ; $6b7b: $8a
    halt                                          ; $6b7c: $76
    ld l, d                                       ; $6b7d: $6a
    xor d                                         ; $6b7e: $aa
    ld [hl], h                                    ; $6b7f: $74
    ld c, b                                       ; $6b80: $48
    ret c                                         ; $6b81: $d8

    inc [hl]                                      ; $6b82: $34
    cp h                                          ; $6b83: $bc
    add d                                         ; $6b84: $82
    dec sp                                        ; $6b85: $3b
    jp z, $ab33                                   ; $6b86: $ca $33 $ab

    add $46                                       ; $6b89: $c6 $46
    ld a, c                                       ; $6b8b: $79
    add [hl]                                      ; $6b8c: $86
    ld [hl], l                                    ; $6b8d: $75
    ld a, b                                       ; $6b8e: $78
    ld a, c                                       ; $6b8f: $79
    sbc b                                         ; $6b90: $98
    add a                                         ; $6b91: $87
    add a                                         ; $6b92: $87
    ld [hl], a                                    ; $6b93: $77
    adc b                                         ; $6b94: $88
    ld [hl], a                                    ; $6b95: $77
    ld a, b                                       ; $6b96: $78
    ld [hl], a                                    ; $6b97: $77
    sbc d                                         ; $6b98: $9a
    sbc b                                         ; $6b99: $98
    ld b, [hl]                                    ; $6b9a: $46
    sbc d                                         ; $6b9b: $9a
    add a                                         ; $6b9c: $87
    ld d, [hl]                                    ; $6b9d: $56
    add [hl]                                      ; $6b9e: $86
    sbc b                                         ; $6b9f: $98
    adc c                                         ; $6ba0: $89
    sub [hl]                                      ; $6ba1: $96
    add a                                         ; $6ba2: $87
    adc b                                         ; $6ba3: $88
    ld d, a                                       ; $6ba4: $57
    ld h, l                                       ; $6ba5: $65
    ld a, d                                       ; $6ba6: $7a
    rst $10                                       ; $6ba7: $d7
    adc b                                         ; $6ba8: $88
    adc c                                         ; $6ba9: $89
    ld h, l                                       ; $6baa: $65
    ld [hl], a                                    ; $6bab: $77
    or a                                          ; $6bac: $b7
    add a                                         ; $6bad: $87
    scf                                           ; $6bae: $37
    xor c                                         ; $6baf: $a9
    sub [hl]                                      ; $6bb0: $96
    ld a, b                                       ; $6bb1: $78
    ld h, a                                       ; $6bb2: $67
    ld l, d                                       ; $6bb3: $6a
    adc b                                         ; $6bb4: $88
    add a                                         ; $6bb5: $87
    ld a, e                                       ; $6bb6: $7b
    ld l, c                                       ; $6bb7: $69
    ld a, b                                       ; $6bb8: $78
    ld h, [hl]                                    ; $6bb9: $66
    add hl, hl                                    ; $6bba: $29
    xor e                                         ; $6bbb: $ab
    ld e, b                                       ; $6bbc: $58
    ld h, l                                       ; $6bbd: $65
    or a                                          ; $6bbe: $b7
    ld a, c                                       ; $6bbf: $79
    add l                                         ; $6bc0: $85
    adc b                                         ; $6bc1: $88
    ld l, b                                       ; $6bc2: $68
    adc c                                         ; $6bc3: $89
    adc b                                         ; $6bc4: $88
    ld e, c                                       ; $6bc5: $59
    sub [hl]                                      ; $6bc6: $96
    ld h, [hl]                                    ; $6bc7: $66
    sbc d                                         ; $6bc8: $9a
    add a                                         ; $6bc9: $87
    ld h, a                                       ; $6bca: $67
    add [hl]                                      ; $6bcb: $86
    sub a                                         ; $6bcc: $97
    ld l, b                                       ; $6bcd: $68
    sbc e                                         ; $6bce: $9b
    halt                                          ; $6bcf: $76
    add [hl]                                      ; $6bd0: $86
    adc d                                         ; $6bd1: $8a
    adc l                                         ; $6bd2: $8d
    ld b, c                                       ; $6bd3: $41
    ld l, b                                       ; $6bd4: $68
    cp e                                          ; $6bd5: $bb
    or [hl]                                       ; $6bd6: $b6
    ld d, l                                       ; $6bd7: $55
    ld e, d                                       ; $6bd8: $5a
    ld [hl], a                                    ; $6bd9: $77
    cp d                                          ; $6bda: $ba
    sub h                                         ; $6bdb: $94
    ld d, d                                       ; $6bdc: $52
    adc [hl]                                      ; $6bdd: $8e
    rst $00                                       ; $6bde: $c7
    ld [hl], l                                    ; $6bdf: $75
    add a                                         ; $6be0: $87
    ld a, b                                       ; $6be1: $78
    adc c                                         ; $6be2: $89
    add l                                         ; $6be3: $85
    ld e, d                                       ; $6be4: $5a
    adc b                                         ; $6be5: $88
    ld a, c                                       ; $6be6: $79
    xor c                                         ; $6be7: $a9
    inc [hl]                                      ; $6be8: $34
    ld a, e                                       ; $6be9: $7b
    sbc b                                         ; $6bea: $98
    adc b                                         ; $6beb: $88
    ld h, h                                       ; $6bec: $64
    ld [hl], $dd                                  ; $6bed: $36 $dd
    sub $55                                       ; $6bef: $d6 $55
    ld e, b                                       ; $6bf1: $58
    and a                                         ; $6bf2: $a7
    sbc b                                         ; $6bf3: $98
    ld b, [hl]                                    ; $6bf4: $46
    ld d, a                                       ; $6bf5: $57
    set 0, l                                      ; $6bf6: $cb $c5
    ld b, a                                       ; $6bf8: $47
    ld l, e                                       ; $6bf9: $6b
    ld a, c                                       ; $6bfa: $79
    ld l, b                                       ; $6bfb: $68
    ld l, e                                       ; $6bfc: $6b
    ld h, l                                       ; $6bfd: $65
    ld b, l                                       ; $6bfe: $45
    ld l, h                                       ; $6bff: $6c
    rst $30                                       ; $6c00: $f7
    ld [hl], a                                    ; $6c01: $77
    ld [hl], l                                    ; $6c02: $75
    sbc b                                         ; $6c03: $98
    add [hl]                                      ; $6c04: $86
    sub h                                         ; $6c05: $94
    ld h, a                                       ; $6c06: $67
    ld a, c                                       ; $6c07: $79
    and a                                         ; $6c08: $a7
    ld a, c                                       ; $6c09: $79
    ld [hl], a                                    ; $6c0a: $77
    ld l, b                                       ; $6c0b: $68
    ld h, [hl]                                    ; $6c0c: $66
    xor d                                         ; $6c0d: $aa
    push bc                                       ; $6c0e: $c5
    add hl, sp                                    ; $6c0f: $39
    ld l, c                                       ; $6c10: $69
    call nz, $8a57                                ; $6c11: $c4 $57 $8a
    ld h, l                                       ; $6c14: $65
    or [hl]                                       ; $6c15: $b6
    sbc b                                         ; $6c16: $98
    ld e, d                                       ; $6c17: $5a
    ld [hl], l                                    ; $6c18: $75
    jp z, Jump_01a_7856                           ; $6c19: $ca $56 $78

    sub l                                         ; $6c1c: $95
    sub a                                         ; $6c1d: $97
    ld b, a                                       ; $6c1e: $47
    sbc b                                         ; $6c1f: $98
    cp c                                          ; $6c20: $b9
    adc b                                         ; $6c21: $88
    adc c                                         ; $6c22: $89
    ld d, [hl]                                    ; $6c23: $56
    ld h, a                                       ; $6c24: $67
    halt                                          ; $6c25: $76
    ld a, c                                       ; $6c26: $79
    adc b                                         ; $6c27: $88
    sbc c                                         ; $6c28: $99
    rst $00                                       ; $6c29: $c7
    halt                                          ; $6c2a: $76
    sub l                                         ; $6c2b: $95
    ld h, l                                       ; $6c2c: $65
    sub a                                         ; $6c2d: $97
    adc b                                         ; $6c2e: $88
    ld e, d                                       ; $6c2f: $5a
    add [hl]                                      ; $6c30: $86
    adc e                                         ; $6c31: $8b
    ret                                           ; $6c32: $c9


    ld d, d                                       ; $6c33: $52
    ld b, $af                                     ; $6c34: $06 $af
    sub [hl]                                      ; $6c36: $96
    dec [hl]                                      ; $6c37: $35
    adc c                                         ; $6c38: $89
    cp d                                          ; $6c39: $ba
    or e                                          ; $6c3a: $b3
    dec b                                         ; $6c3b: $05
    db $db                                        ; $6c3c: $db
    and a                                         ; $6c3d: $a7
    rla                                           ; $6c3e: $17
    and [hl]                                      ; $6c3f: $a6
    ld l, [hl]                                    ; $6c40: $6e
    push de                                       ; $6c41: $d5
    daa                                           ; $6c42: $27
    sbc d                                         ; $6c43: $9a
    ld b, h                                       ; $6c44: $44
    cp d                                          ; $6c45: $ba
    xor d                                         ; $6c46: $aa
    add [hl]                                      ; $6c47: $86
    inc b                                         ; $6c48: $04
    adc d                                         ; $6c49: $8a
    ld [hl], a                                    ; $6c4a: $77
    sbc e                                         ; $6c4b: $9b
    adc b                                         ; $6c4c: $88
    adc c                                         ; $6c4d: $89
    ld h, b                                       ; $6c4e: $60
    xor [hl]                                      ; $6c4f: $ae
    ld h, c                                       ; $6c50: $61
    cp b                                          ; $6c51: $b8
    ld d, [hl]                                    ; $6c52: $56
    ld c, b                                       ; $6c53: $48
    ld sp, hl                                     ; $6c54: $f9
    ld b, a                                       ; $6c55: $47
    xor b                                         ; $6c56: $a8
    ld [hl], a                                    ; $6c57: $77
    ld l, c                                       ; $6c58: $69
    ld [hl], h                                    ; $6c59: $74
    add [hl]                                      ; $6c5a: $86
    ld l, [hl]                                    ; $6c5b: $6e
    ld h, e                                       ; $6c5c: $63
    add h                                         ; $6c5d: $84
    xor d                                         ; $6c5e: $aa
    adc c                                         ; $6c5f: $89
    rst $00                                       ; $6c60: $c7
    ld c, c                                       ; $6c61: $49
    cp c                                          ; $6c62: $b9
    ld [hl], e                                    ; $6c63: $73
    dec [hl]                                      ; $6c64: $35
    ld e, b                                       ; $6c65: $58
    add $76                                       ; $6c66: $c6 $76
    ld a, h                                       ; $6c68: $7c
    and a                                         ; $6c69: $a7
    sbc b                                         ; $6c6a: $98
    ld l, c                                       ; $6c6b: $69
    or [hl]                                       ; $6c6c: $b6
    ld h, l                                       ; $6c6d: $65
    ld a, [hl-]                                   ; $6c6e: $3a
    jp z, Jump_000_2384                           ; $6c6f: $ca $84 $23

    sbc b                                         ; $6c72: $98
    adc l                                         ; $6c73: $8d
    ld a, c                                       ; $6c74: $79
    ld d, h                                       ; $6c75: $54
    or [hl]                                       ; $6c76: $b6
    sbc [hl]                                      ; $6c77: $9e
    ld [hl], e                                    ; $6c78: $73
    inc sp                                        ; $6c79: $33
    ld h, a                                       ; $6c7a: $67
    db $fc                                        ; $6c7b: $fc
    sbc b                                         ; $6c7c: $98
    inc bc                                        ; $6c7d: $03
    ld e, d                                       ; $6c7e: $5a
    sbc $b3                                       ; $6c7f: $de $b3
    inc h                                         ; $6c81: $24
    ld c, d                                       ; $6c82: $4a
    cp b                                          ; $6c83: $b8
    and l                                         ; $6c84: $a5
    ld e, e                                       ; $6c85: $5b
    ld a, h                                       ; $6c86: $7c
    call nc, $3710                                ; $6c87: $d4 $10 $37
    ld [$96ca], a                                 ; $6c8a: $ea $ca $96
    ld b, a                                       ; $6c8d: $47
    ld c, h                                       ; $6c8e: $4c
    ld [hl], e                                    ; $6c8f: $73
    cp b                                          ; $6c90: $b8
    ld b, [hl]                                    ; $6c91: $46
    ld b, h                                       ; $6c92: $44
    xor d                                         ; $6c93: $aa
    db $ec                                        ; $6c94: $ec
    xor b                                         ; $6c95: $a8
    jr nz, jr_01a_6cc1                            ; $6c96: $20 $29

    adc d                                         ; $6c98: $8a
    ei                                            ; $6c99: $fb
    sub a                                         ; $6c9a: $97
    ld [hl], e                                    ; $6c9b: $73
    inc [hl]                                      ; $6c9c: $34
    ld l, b                                       ; $6c9d: $68
    sbc b                                         ; $6c9e: $98
    adc b                                         ; $6c9f: $88
    adc d                                         ; $6ca0: $8a
    sbc c                                         ; $6ca1: $99
    reti                                          ; $6ca2: $d9


    add a                                         ; $6ca3: $87
    ld h, c                                       ; $6ca4: $61
    ld b, l                                       ; $6ca5: $45
    ld c, c                                       ; $6ca6: $49
    set 3, d                                      ; $6ca7: $cb $da
    ld [hl], c                                    ; $6ca9: $71
    daa                                           ; $6caa: $27
    ld l, e                                       ; $6cab: $6b
    adc l                                         ; $6cac: $8d
    sbc d                                         ; $6cad: $9a
    halt                                          ; $6cae: $76
    inc sp                                        ; $6caf: $33
    ld e, d                                       ; $6cb0: $5a
    sbc c                                         ; $6cb1: $99
    ld a, d                                       ; $6cb2: $7a
    add l                                         ; $6cb3: $85
    ld a, c                                       ; $6cb4: $79
    bit 2, l                                      ; $6cb5: $cb $55
    ld d, l                                       ; $6cb7: $55
    ld [hl], $bf                                  ; $6cb8: $36 $bf
    or a                                          ; $6cba: $b7
    add hl, de                                    ; $6cbb: $19
    ld d, h                                       ; $6cbc: $54
    ld c, b                                       ; $6cbd: $48

jr_01a_6cbe:
    ld [$6399], a                                 ; $6cbe: $ea $99 $63

jr_01a_6cc1:
    ld h, l                                       ; $6cc1: $65
    adc c                                         ; $6cc2: $89
    and [hl]                                      ; $6cc3: $a6
    add a                                         ; $6cc4: $87
    ld h, a                                       ; $6cc5: $67
    adc c                                         ; $6cc6: $89
    or a                                          ; $6cc7: $b7
    ld l, d                                       ; $6cc8: $6a
    ld h, l                                       ; $6cc9: $65
    ld h, a                                       ; $6cca: $67
    sub a                                         ; $6ccb: $97
    sbc e                                         ; $6ccc: $9b
    ld [hl], l                                    ; $6ccd: $75
    ld d, a                                       ; $6cce: $57
    sub [hl]                                      ; $6ccf: $96
    adc d                                         ; $6cd0: $8a
    sub a                                         ; $6cd1: $97
    ld a, c                                       ; $6cd2: $79
    add [hl]                                      ; $6cd3: $86
    halt                                          ; $6cd4: $76
    ld [hl], l                                    ; $6cd5: $75
    ld a, c                                       ; $6cd6: $79
    cp [hl]                                       ; $6cd7: $be
    add [hl]                                      ; $6cd8: $86
    ld d, h                                       ; $6cd9: $54
    ld b, [hl]                                    ; $6cda: $46
    ld l, l                                       ; $6cdb: $6d
    cp b                                          ; $6cdc: $b8
    ld e, b                                       ; $6cdd: $58
    ld [hl], e                                    ; $6cde: $73
    bit 2, l                                      ; $6cdf: $cb $55
    ld a, c                                       ; $6ce1: $79
    adc c                                         ; $6ce2: $89
    ld h, l                                       ; $6ce3: $65
    sbc b                                         ; $6ce4: $98
    ld h, [hl]                                    ; $6ce5: $66
    sbc d                                         ; $6ce6: $9a
    ld h, a                                       ; $6ce7: $67
    ld l, d                                       ; $6ce8: $6a
    and d                                         ; $6ce9: $a2
    ld a, [hl-]                                   ; $6cea: $3a
    jp c, Jump_01a_6356                           ; $6ceb: $da $56 $63

    sbc [hl]                                      ; $6cee: $9e
    jp hl                                         ; $6cef: $e9


    ld d, e                                       ; $6cf0: $53
    ld b, $ab                                     ; $6cf1: $06 $ab
    db $ed                                        ; $6cf3: $ed
    ld d, c                                       ; $6cf4: $51
    ld b, [hl]                                    ; $6cf5: $46
    ld a, h                                       ; $6cf6: $7c
    cp b                                          ; $6cf7: $b8
    ld b, a                                       ; $6cf8: $47
    add a                                         ; $6cf9: $87
    ld a, d                                       ; $6cfa: $7a
    ld [hl], l                                    ; $6cfb: $75
    adc d                                         ; $6cfc: $8a
    sbc b                                         ; $6cfd: $98
    add a                                         ; $6cfe: $87
    dec d                                         ; $6cff: $15
    adc b                                         ; $6d00: $88
    ld sp, hl                                     ; $6d01: $f9
    ld d, [hl]                                    ; $6d02: $56
    add a                                         ; $6d03: $87
    ld [hl], a                                    ; $6d04: $77
    ld b, a                                       ; $6d05: $47
    cp h                                          ; $6d06: $bc
    add l                                         ; $6d07: $85
    ld b, a                                       ; $6d08: $47
    sub [hl]                                      ; $6d09: $96
    ld l, d                                       ; $6d0a: $6a
    sbc c                                         ; $6d0b: $99
    ld l, b                                       ; $6d0c: $68
    ld [hl], a                                    ; $6d0d: $77
    add l                                         ; $6d0e: $85
    ld h, [hl]                                    ; $6d0f: $66
    adc l                                         ; $6d10: $8d
    xor b                                         ; $6d11: $a8
    sub l                                         ; $6d12: $95
    ld h, e                                       ; $6d13: $63
    ld l, [hl]                                    ; $6d14: $6e
    sub [hl]                                      ; $6d15: $96
    halt                                          ; $6d16: $76
    inc [hl]                                      ; $6d17: $34
    call c, $8587                                 ; $6d18: $dc $87 $85
    ld a, b                                       ; $6d1b: $78
    cp b                                          ; $6d1c: $b8
    ld h, e                                       ; $6d1d: $63
    ld b, l                                       ; $6d1e: $45
    sbc [hl]                                      ; $6d1f: $9e
    adc e                                         ; $6d20: $8b
    scf                                           ; $6d21: $37
    adc c                                         ; $6d22: $89
    sub [hl]                                      ; $6d23: $96
    ld b, l                                       ; $6d24: $45
    ld c, h                                       ; $6d25: $4c
    sbc c                                         ; $6d26: $99
    and l                                         ; $6d27: $a5
    ld h, h                                       ; $6d28: $64

jr_01a_6d29:
    cp d                                          ; $6d29: $ba
    ld h, [hl]                                    ; $6d2a: $66
    adc d                                         ; $6d2b: $8a
    add l                                         ; $6d2c: $85
    jr z, jr_01a_6cbe                             ; $6d2d: $28 $8f

    cp b                                          ; $6d2f: $b8
    inc sp                                        ; $6d30: $33
    add a                                         ; $6d31: $87
    adc b                                         ; $6d32: $88
    adc c                                         ; $6d33: $89
    ld a, c                                       ; $6d34: $79
    sbc e                                         ; $6d35: $9b
    ld [hl], d                                    ; $6d36: $72
    ld [hl], $a7                                  ; $6d37: $36 $a7
    adc b                                         ; $6d39: $88
    adc c                                         ; $6d3a: $89
    adc c                                         ; $6d3b: $89
    and [hl]                                      ; $6d3c: $a6
    ld e, b                                       ; $6d3d: $58
    sub l                                         ; $6d3e: $95

jr_01a_6d3f:
    ld h, l                                       ; $6d3f: $65
    sbc e                                         ; $6d40: $9b
    add h                                         ; $6d41: $84
    ld c, c                                       ; $6d42: $49
    cp h                                          ; $6d43: $bc
    sub l                                         ; $6d44: $95
    ld h, a                                       ; $6d45: $67
    ld b, h                                       ; $6d46: $44
    cp b                                          ; $6d47: $b8
    xor c                                         ; $6d48: $a9
    adc d                                         ; $6d49: $8a
    halt                                          ; $6d4a: $76
    ld h, l                                       ; $6d4b: $65
    ld l, c                                       ; $6d4c: $69
    xor d                                         ; $6d4d: $aa
    ld h, a                                       ; $6d4e: $67
    adc b                                         ; $6d4f: $88
    sub h                                         ; $6d50: $94
    halt                                          ; $6d51: $76
    adc c                                         ; $6d52: $89
    adc c                                         ; $6d53: $89
    ld [hl], h                                    ; $6d54: $74
    add h                                         ; $6d55: $84
    xor d                                         ; $6d56: $aa
    and [hl]                                      ; $6d57: $a6
    ld a, c                                       ; $6d58: $79
    add e                                         ; $6d59: $83
    sbc c                                         ; $6d5a: $99
    ld l, b                                       ; $6d5b: $68
    ld l, b                                       ; $6d5c: $68
    xor c                                         ; $6d5d: $a9
    halt                                          ; $6d5e: $76
    ld [hl], a                                    ; $6d5f: $77
    ld h, [hl]                                    ; $6d60: $66
    sbc c                                         ; $6d61: $99
    sub l                                         ; $6d62: $95
    add [hl]                                      ; $6d63: $86
    adc b                                         ; $6d64: $88
    adc e                                         ; $6d65: $8b
    ld a, c                                       ; $6d66: $79
    ld h, l                                       ; $6d67: $65
    ldh [$6c], a                                  ; $6d68: $e0 $6c
    ld a, [hl-]                                   ; $6d6a: $3a
    ld c, c                                       ; $6d6b: $49
    add a                                         ; $6d6c: $87
    cp c                                          ; $6d6d: $b9
    ld c, b                                       ; $6d6e: $48
    or a                                          ; $6d6f: $b7
    add l                                         ; $6d70: $85
    ld d, d                                       ; $6d71: $52
    ld a, d                                       ; $6d72: $7a
    sbc c                                         ; $6d73: $99
    ld hl, sp+$44                                 ; $6d74: $f8 $44
    sub [hl]                                      ; $6d76: $96
    ld h, a                                       ; $6d77: $67
    sub e                                         ; $6d78: $93
    ld a, [hl]                                    ; $6d79: $7e
    add a                                         ; $6d7a: $87
    and a                                         ; $6d7b: $a7

Call_01a_6d7c:
    ld h, $59                                     ; $6d7c: $26 $59
    ld a, e                                       ; $6d7e: $7b
    jp z, Jump_01a_6355                           ; $6d7f: $ca $55 $63

    ld b, e                                       ; $6d82: $43
    call $56eb                                    ; $6d83: $cd $eb $56
    ld b, e                                       ; $6d86: $43
    xor b                                         ; $6d87: $a8
    sub e                                         ; $6d88: $93
    sbc d                                         ; $6d89: $9a
    sub [hl]                                      ; $6d8a: $96
    daa                                           ; $6d8b: $27
    adc d                                         ; $6d8c: $8a
    ld e, d                                       ; $6d8d: $5a
    jr c, jr_01a_6d29                             ; $6d8e: $38 $99

    xor e                                         ; $6d90: $ab
    di                                            ; $6d91: $f3
    dec h                                         ; $6d92: $25
    and l                                         ; $6d93: $a5
    ld [hl], l                                    ; $6d94: $75
    ld h, [hl]                                    ; $6d95: $66
    ld l, b                                       ; $6d96: $68
    sbc h                                         ; $6d97: $9c
    ret                                           ; $6d98: $c9


    adc b                                         ; $6d99: $88
    ld b, d                                       ; $6d9a: $42
    ld c, e                                       ; $6d9b: $4b
    or a                                          ; $6d9c: $b7
    ld l, c                                       ; $6d9d: $69
    ld l, b                                       ; $6d9e: $68
    xor c                                         ; $6d9f: $a9
    ld h, l                                       ; $6da0: $65
    ld l, b                                       ; $6da1: $68
    db $db                                        ; $6da2: $db
    add e                                         ; $6da3: $83
    jr jr_01a_6d3f                                ; $6da4: $18 $99

    ld h, a                                       ; $6da6: $67
    sbc c                                         ; $6da7: $99
    sub [hl]                                      ; $6da8: $96
    ld l, b                                       ; $6da9: $68
    ld l, d                                       ; $6daa: $6a
    adc b                                         ; $6dab: $88
    ld a, d                                       ; $6dac: $7a
    ld e, b                                       ; $6dad: $58
    ld a, d                                       ; $6dae: $7a
    ld d, a                                       ; $6daf: $57
    add hl, de                                    ; $6db0: $19
    adc b                                         ; $6db1: $88
    sbc d                                         ; $6db2: $9a
    add l                                         ; $6db3: $85
    halt                                          ; $6db4: $76
    and [hl]                                      ; $6db5: $a6
    ret c                                         ; $6db6: $d8

    and [hl]                                      ; $6db7: $a6
    dec h                                         ; $6db8: $25
    scf                                           ; $6db9: $37
    adc d                                         ; $6dba: $8a
    db $eb                                        ; $6dbb: $eb
    ld b, [hl]                                    ; $6dbc: $46
    adc c                                         ; $6dbd: $89
    ld l, d                                       ; $6dbe: $6a
    push bc                                       ; $6dbf: $c5
    ld h, l                                       ; $6dc0: $65
    ld b, [hl]                                    ; $6dc1: $46
    adc h                                         ; $6dc2: $8c
    sbc b                                         ; $6dc3: $98
    add c                                         ; $6dc4: $81
    ld a, c                                       ; $6dc5: $79
    sbc c                                         ; $6dc6: $99
    ld c, e                                       ; $6dc7: $4b
    or [hl]                                       ; $6dc8: $b6
    and [hl]                                      ; $6dc9: $a6
    sub [hl]                                      ; $6dca: $96
    ld b, e                                       ; $6dcb: $43
    ld c, c                                       ; $6dcc: $49
    sbc e                                         ; $6dcd: $9b
    xor b                                         ; $6dce: $a8
    ld h, a                                       ; $6dcf: $67
    and a                                         ; $6dd0: $a7
    add e                                         ; $6dd1: $83
    sbc c                                         ; $6dd2: $99
    halt                                          ; $6dd3: $76
    adc b                                         ; $6dd4: $88
    sub [hl]                                      ; $6dd5: $96
    ld h, a                                       ; $6dd6: $67
    ld [hl], a                                    ; $6dd7: $77
    ld [hl], a                                    ; $6dd8: $77
    sbc c                                         ; $6dd9: $99
    ld a, c                                       ; $6dda: $79
    ret z                                         ; $6ddb: $c8

    halt                                          ; $6ddc: $76
    add h                                         ; $6ddd: $84
    ld b, a                                       ; $6dde: $47
    ld a, b                                       ; $6ddf: $78
    adc l                                         ; $6de0: $8d
    and [hl]                                      ; $6de1: $a6
    ld l, b                                       ; $6de2: $68
    sub [hl]                                      ; $6de3: $96
    scf                                           ; $6de4: $37
    ld a, h                                       ; $6de5: $7c
    xor b                                         ; $6de6: $a8
    ld [hl], h                                    ; $6de7: $74
    ld [hl], $7a                                  ; $6de8: $36 $7a
    adc $a3                                       ; $6dea: $ce $a3
    dec h                                         ; $6dec: $25
    ld l, d                                       ; $6ded: $6a
    xor c                                         ; $6dee: $a9
    sub [hl]                                      ; $6def: $96
    ld b, h                                       ; $6df0: $44
    ld e, b                                       ; $6df1: $58
    and a                                         ; $6df2: $a7
    xor b                                         ; $6df3: $a8
    ld a, b                                       ; $6df4: $78
    and l                                         ; $6df5: $a5
    ld a, b                                       ; $6df6: $78
    add a                                         ; $6df7: $87
    ld [hl], a                                    ; $6df8: $77
    ld h, [hl]                                    ; $6df9: $66
    ld [hl], h                                    ; $6dfa: $74

jr_01a_6dfb:
    sub l                                         ; $6dfb: $95
    cp h                                          ; $6dfc: $bc
    adc c                                         ; $6dfd: $89
    add a                                         ; $6dfe: $87
    ld l, b                                       ; $6dff: $68
    add a                                         ; $6e00: $87
    adc b                                         ; $6e01: $88
    ld h, [hl]                                    ; $6e02: $66
    ld e, c                                       ; $6e03: $59
    ld l, b                                       ; $6e04: $68
    ld h, a                                       ; $6e05: $67
    adc h                                         ; $6e06: $8c
    cp b                                          ; $6e07: $b8
    ld l, b                                       ; $6e08: $68
    add l                                         ; $6e09: $85
    ld b, l                                       ; $6e0a: $45
    xor d                                         ; $6e0b: $aa
    ld h, h                                       ; $6e0c: $64
    ld a, c                                       ; $6e0d: $79
    sbc c                                         ; $6e0e: $99
    ld [hl], a                                    ; $6e0f: $77
    adc h                                         ; $6e10: $8c
    xor b                                         ; $6e11: $a8
    ld d, e                                       ; $6e12: $53
    ld l, d                                       ; $6e13: $6a
    ld [hl], c                                    ; $6e14: $71
    rst $10                                       ; $6e15: $d7
    ld a, d                                       ; $6e16: $7a
    sub l                                         ; $6e17: $95
    ld e, h                                       ; $6e18: $5c
    ld a, c                                       ; $6e19: $79
    sub [hl]                                      ; $6e1a: $96
    ld h, l                                       ; $6e1b: $65
    ld h, a                                       ; $6e1c: $67
    xor b                                         ; $6e1d: $a8
    ld a, c                                       ; $6e1e: $79
    adc b                                         ; $6e1f: $88
    or l                                          ; $6e20: $b5
    add a                                         ; $6e21: $87
    ld h, e                                       ; $6e22: $63
    adc b                                         ; $6e23: $88
    sbc b                                         ; $6e24: $98
    ld a, b                                       ; $6e25: $78
    ld l, b                                       ; $6e26: $68
    ld a, c                                       ; $6e27: $79
    adc d                                         ; $6e28: $8a
    ld h, [hl]                                    ; $6e29: $66
    ld a, b                                       ; $6e2a: $78
    adc e                                         ; $6e2b: $8b
    ld [hl], l                                    ; $6e2c: $75
    ld b, [hl]                                    ; $6e2d: $46
    cp b                                          ; $6e2e: $b8
    cp e                                          ; $6e2f: $bb
    add l                                         ; $6e30: $85
    ld d, h                                       ; $6e31: $54
    ld d, l                                       ; $6e32: $55
    xor d                                         ; $6e33: $aa
    xor c                                         ; $6e34: $a9
    sbc e                                         ; $6e35: $9b
    ld h, [hl]                                    ; $6e36: $66
    ld h, h                                       ; $6e37: $64
    ld a, b                                       ; $6e38: $78
    ld c, c                                       ; $6e39: $49
    sbc d                                         ; $6e3a: $9a
    adc b                                         ; $6e3b: $88
    add l                                         ; $6e3c: $85
    ld l, b                                       ; $6e3d: $68
    sub l                                         ; $6e3e: $95
    ld h, a                                       ; $6e3f: $67
    call $25a1                                    ; $6e40: $cd $a1 $25
    ld l, d                                       ; $6e43: $6a
    ld a, e                                       ; $6e44: $7b
    adc e                                         ; $6e45: $8b
    sub a                                         ; $6e46: $97

jr_01a_6e47:
    dec [hl]                                      ; $6e47: $35
    sbc c                                         ; $6e48: $99
    ld a, e                                       ; $6e49: $7b
    ld d, l                                       ; $6e4a: $55
    sub [hl]                                      ; $6e4b: $96
    rra                                           ; $6e4c: $1f
    sbc h                                         ; $6e4d: $9c
    jr z, jr_01a_6ea8                             ; $6e4e: $28 $58

    ld l, b                                       ; $6e50: $68
    sbc b                                         ; $6e51: $98
    ld h, [hl]                                    ; $6e52: $66
    ld a, c                                       ; $6e53: $79
    reti                                          ; $6e54: $d9


    ld h, e                                       ; $6e55: $63
    ld a, d                                       ; $6e56: $7a
    ld d, a                                       ; $6e57: $57
    ld l, b                                       ; $6e58: $68
    adc e                                         ; $6e59: $8b
    sub l                                         ; $6e5a: $95
    add [hl]                                      ; $6e5b: $86
    ld b, [hl]                                    ; $6e5c: $46
    sbc c                                         ; $6e5d: $99
    cp d                                          ; $6e5e: $ba
    ld b, a                                       ; $6e5f: $47
    adc b                                         ; $6e60: $88
    ld e, b                                       ; $6e61: $58
    ld h, l                                       ; $6e62: $65
    adc d                                         ; $6e63: $8a
    xor c                                         ; $6e64: $a9
    add a                                         ; $6e65: $87
    ld [hl], a                                    ; $6e66: $77
    adc c                                         ; $6e67: $89
    ld a, b                                       ; $6e68: $78
    ld d, $9c                                     ; $6e69: $16 $9c
    ld h, a                                       ; $6e6b: $67
    jr c, jr_01a_6dfb                             ; $6e6c: $38 $8d

    adc b                                         ; $6e6e: $88
    add a                                         ; $6e6f: $87
    sub h                                         ; $6e70: $94
    ld d, l                                       ; $6e71: $55
    adc c                                         ; $6e72: $89
    ld a, c                                       ; $6e73: $79
    ld h, a                                       ; $6e74: $67
    xor e                                         ; $6e75: $ab
    ld [hl], h                                    ; $6e76: $74
    ld h, l                                       ; $6e77: $65
    adc a                                         ; $6e78: $8f
    ld h, d                                       ; $6e79: $62
    ld [hl], a                                    ; $6e7a: $77
    ret z                                         ; $6e7b: $c8

    ld h, a                                       ; $6e7c: $67
    rst $00                                       ; $6e7d: $c7
    ld c, b                                       ; $6e7e: $48
    ld [hl], a                                    ; $6e7f: $77
    ld l, b                                       ; $6e80: $68
    cp l                                          ; $6e81: $bd
    ld b, d                                       ; $6e82: $42
    ld d, [hl]                                    ; $6e83: $56
    or a                                          ; $6e84: $b7
    ld [hl], a                                    ; $6e85: $77
    xor l                                         ; $6e86: $ad
    add e                                         ; $6e87: $83
    ld c, c                                       ; $6e88: $49
    sbc c                                         ; $6e89: $99
    add [hl]                                      ; $6e8a: $86
    sbc b                                         ; $6e8b: $98
    inc sp                                        ; $6e8c: $33
    xor l                                         ; $6e8d: $ad
    ld a, b                                       ; $6e8e: $78
    adc c                                         ; $6e8f: $89
    ld b, l                                       ; $6e90: $45
    ld h, [hl]                                    ; $6e91: $66
    ld l, a                                       ; $6e92: $6f
    adc h                                         ; $6e93: $8c
    ld a, [hl-]                                   ; $6e94: $3a
    dec sp                                        ; $6e95: $3b
    ld c, d                                       ; $6e96: $4a
    daa                                           ; $6e97: $27
    db $ec                                        ; $6e98: $ec
    ld b, [hl]                                    ; $6e99: $46
    ld e, b                                       ; $6e9a: $58
    add hl, sp                                    ; $6e9b: $39
    push de                                       ; $6e9c: $d5
    sbc c                                         ; $6e9d: $99
    and h                                         ; $6e9e: $a4
    ld e, b                                       ; $6e9f: $58
    adc b                                         ; $6ea0: $88
    ld a, e                                       ; $6ea1: $7b
    ld [hl], a                                    ; $6ea2: $77
    ld [hl], $69                                  ; $6ea3: $36 $69
    cp c                                          ; $6ea5: $b9
    ld [hl], a                                    ; $6ea6: $77
    ld a, h                                       ; $6ea7: $7c

jr_01a_6ea8:
    add [hl]                                      ; $6ea8: $86
    sbc c                                         ; $6ea9: $99
    and b                                         ; $6eaa: $a0
    ld a, b                                       ; $6eab: $78
    inc [hl]                                      ; $6eac: $34
    xor d                                         ; $6ead: $aa
    sbc d                                         ; $6eae: $9a
    db $ec                                        ; $6eaf: $ec
    scf                                           ; $6eb0: $37
    ld l, d                                       ; $6eb1: $6a
    sub [hl]                                      ; $6eb2: $96
    ld [de], a                                    ; $6eb3: $12
    add a                                         ; $6eb4: $87
    add l                                         ; $6eb5: $85
    sub $9c                                       ; $6eb6: $d6 $9c
    adc c                                         ; $6eb8: $89
    sub a                                         ; $6eb9: $97
    sbc d                                         ; $6eba: $9a
    ld h, b                                       ; $6ebb: $60
    jr jr_01a_6e47                                ; $6ebc: $18 $89

    rst $30                                       ; $6ebe: $f7
    ld c, b                                       ; $6ebf: $48
    dec hl                                        ; $6ec0: $2b
    jp z, Jump_01a_6584                           ; $6ec1: $ca $84 $65

    ld [hl], l                                    ; $6ec4: $75
    cp b                                          ; $6ec5: $b8
    add l                                         ; $6ec6: $85
    adc b                                         ; $6ec7: $88
    ld e, c                                       ; $6ec8: $59
    sub a                                         ; $6ec9: $97
    ld e, d                                       ; $6eca: $5a
    jp z, $5754                                   ; $6ecb: $ca $54 $57

    xor e                                         ; $6ece: $ab
    ld e, c                                       ; $6ecf: $59
    sbc c                                         ; $6ed0: $99
    ld c, b                                       ; $6ed1: $48
    ld c, c                                       ; $6ed2: $49
    sub [hl]                                      ; $6ed3: $96
    ld h, a                                       ; $6ed4: $67
    sbc h                                         ; $6ed5: $9c
    sbc l                                         ; $6ed6: $9d
    sub l                                         ; $6ed7: $95
    inc [hl]                                      ; $6ed8: $34
    ld l, c                                       ; $6ed9: $69
    sbc b                                         ; $6eda: $98
    add a                                         ; $6edb: $87
    ld h, a                                       ; $6edc: $67
    xor d                                         ; $6edd: $aa
    cp b                                          ; $6ede: $b8
    adc b                                         ; $6edf: $88
    add e                                         ; $6ee0: $83
    add hl, hl                                    ; $6ee1: $29
    adc b                                         ; $6ee2: $88
    or [hl]                                       ; $6ee3: $b6
    ld [hl], h                                    ; $6ee4: $74
    ld e, c                                       ; $6ee5: $59
    db $dd                                        ; $6ee6: $dd
    ld b, [hl]                                    ; $6ee7: $46
    ld l, b                                       ; $6ee8: $68
    ld h, [hl]                                    ; $6ee9: $66
    add h                                         ; $6eea: $84
    and a                                         ; $6eeb: $a7
    sbc b                                         ; $6eec: $98
    ld e, e                                       ; $6eed: $5b
    ld h, [hl]                                    ; $6eee: $66
    or a                                          ; $6eef: $b7
    xor c                                         ; $6ef0: $a9
    ld [hl], e                                    ; $6ef1: $73
    ld b, [hl]                                    ; $6ef2: $46
    sbc h                                         ; $6ef3: $9c
    add l                                         ; $6ef4: $85
    sub l                                         ; $6ef5: $95
    add a                                         ; $6ef6: $87
    xor e                                         ; $6ef7: $ab
    and l                                         ; $6ef8: $a5
    ld hl, $aba7                                  ; $6ef9: $21 $a7 $ab
    and a                                         ; $6efc: $a7
    ld [hl], l                                    ; $6efd: $75
    adc b                                         ; $6efe: $88
    adc d                                         ; $6eff: $8a
    ld h, e                                       ; $6f00: $63
    ld b, a                                       ; $6f01: $47
    ld a, b                                       ; $6f02: $78
    db $db                                        ; $6f03: $db
    or [hl]                                       ; $6f04: $b6
    ld d, l                                       ; $6f05: $55
    ld [hl], a                                    ; $6f06: $77
    ld l, d                                       ; $6f07: $6a
    rst $00                                       ; $6f08: $c7
    add l                                         ; $6f09: $85
    inc h                                         ; $6f0a: $24
    cp d                                          ; $6f0b: $ba
    adc e                                         ; $6f0c: $8b
    sbc c                                         ; $6f0d: $99
    add [hl]                                      ; $6f0e: $86
    ld l, b                                       ; $6f0f: $68
    inc [hl]                                      ; $6f10: $34
    sbc c                                         ; $6f11: $99
    add a                                         ; $6f12: $87
    sbc e                                         ; $6f13: $9b
    sbc h                                         ; $6f14: $9c
    ld d, [hl]                                    ; $6f15: $56
    rlca                                          ; $6f16: $07
    sub a                                         ; $6f17: $97
    sub a                                         ; $6f18: $97
    sbc h                                         ; $6f19: $9c
    ld h, [hl]                                    ; $6f1a: $66
    ld [hl], a                                    ; $6f1b: $77
    sbc c                                         ; $6f1c: $99
    ld [hl], h                                    ; $6f1d: $74
    ld a, b                                       ; $6f1e: $78
    ld h, a                                       ; $6f1f: $67
    add [hl]                                      ; $6f20: $86
    and a                                         ; $6f21: $a7
    ld h, [hl]                                    ; $6f22: $66
    xor e                                         ; $6f23: $ab
    sbc c                                         ; $6f24: $99
    ld [hl], e                                    ; $6f25: $73
    ld l, b                                       ; $6f26: $68
    ld [hl], a                                    ; $6f27: $77
    xor b                                         ; $6f28: $a8
    ld [hl], l                                    ; $6f29: $75
    ld [hl], a                                    ; $6f2a: $77
    adc e                                         ; $6f2b: $8b
    adc c                                         ; $6f2c: $89
    ld c, b                                       ; $6f2d: $48
    adc d                                         ; $6f2e: $8a
    halt                                          ; $6f2f: $76
    ld d, [hl]                                    ; $6f30: $56
    ld l, c                                       ; $6f31: $69
    xor h                                         ; $6f32: $ac
    cp b                                          ; $6f33: $b8
    ld d, e                                       ; $6f34: $53
    ld h, e                                       ; $6f35: $63
    ld e, d                                       ; $6f36: $5a
    cp e                                          ; $6f37: $bb
    or [hl]                                       ; $6f38: $b6
    ld d, a                                       ; $6f39: $57
    ld l, d                                       ; $6f3a: $6a
    sub l                                         ; $6f3b: $95
    ld d, [hl]                                    ; $6f3c: $56
    ld a, e                                       ; $6f3d: $7b
    or a                                          ; $6f3e: $b7

jr_01a_6f3f:
    ld [hl], l                                    ; $6f3f: $75
    adc b                                         ; $6f40: $88
    add e                                         ; $6f41: $83
    rst $00                                       ; $6f42: $c7
    ld l, c                                       ; $6f43: $69
    ld e, c                                       ; $6f44: $59
    or l                                          ; $6f45: $b5
    ld d, a                                       ; $6f46: $57
    ld a, d                                       ; $6f47: $7a
    sbc b                                         ; $6f48: $98
    ld h, a                                       ; $6f49: $67
    ld a, d                                       ; $6f4a: $7a
    ld c, d                                       ; $6f4b: $4a
    and [hl]                                      ; $6f4c: $a6
    ld d, a                                       ; $6f4d: $57
    add e                                         ; $6f4e: $83
    ld a, h                                       ; $6f4f: $7c
    cp e                                          ; $6f50: $bb
    ld d, a                                       ; $6f51: $57
    ld d, [hl]                                    ; $6f52: $56
    ld [hl], a                                    ; $6f53: $77
    ld a, b                                       ; $6f54: $78
    sub a                                         ; $6f55: $97
    ld a, c                                       ; $6f56: $79
    adc c                                         ; $6f57: $89
    add a                                         ; $6f58: $87
    sbc c                                         ; $6f59: $99
    add h                                         ; $6f5a: $84
    dec [hl]                                      ; $6f5b: $35
    add a                                         ; $6f5c: $87
    xor [hl]                                      ; $6f5d: $ae
    add sp, $34                                   ; $6f5e: $e8 $34
    add h                                         ; $6f60: $84
    ld e, c                                       ; $6f61: $59
    ld h, a                                       ; $6f62: $67
    db $db                                        ; $6f63: $db
    ld h, [hl]                                    ; $6f64: $66
    add h                                         ; $6f65: $84
    ld a, b                                       ; $6f66: $78
    ld [hl], l                                    ; $6f67: $75
    sbc b                                         ; $6f68: $98
    ld h, [hl]                                    ; $6f69: $66
    ld a, b                                       ; $6f6a: $78
    ld a, c                                       ; $6f6b: $79
    xor b                                         ; $6f6c: $a8
    or a                                          ; $6f6d: $b7
    ld d, l                                       ; $6f6e: $55
    add [hl]                                      ; $6f6f: $86
    ld h, [hl]                                    ; $6f70: $66
    ld a, b                                       ; $6f71: $78
    cp d                                          ; $6f72: $ba
    sub [hl]                                      ; $6f73: $96
    add a                                         ; $6f74: $87
    adc b                                         ; $6f75: $88
    ld h, [hl]                                    ; $6f76: $66

jr_01a_6f77:
    ld [hl], l                                    ; $6f77: $75
    add hl, sp                                    ; $6f78: $39
    xor c                                         ; $6f79: $a9
    cp b                                          ; $6f7a: $b8
    sbc e                                         ; $6f7b: $9b
    ld a, c                                       ; $6f7c: $79
    ld [de], a                                    ; $6f7d: $12
    ld c, b                                       ; $6f7e: $48
    xor b                                         ; $6f7f: $a8
    sbc c                                         ; $6f80: $99
    sub [hl]                                      ; $6f81: $96
    add a                                         ; $6f82: $87
    sbc d                                         ; $6f83: $9a
    sub [hl]                                      ; $6f84: $96
    ld h, l                                       ; $6f85: $65
    jr jr_01a_6f3f                                ; $6f86: $18 $b7

    cp c                                          ; $6f88: $b9
    ld c, b                                       ; $6f89: $48
    adc b                                         ; $6f8a: $88
    ld h, [hl]                                    ; $6f8b: $66
    adc b                                         ; $6f8c: $88
    sbc b                                         ; $6f8d: $98
    adc d                                         ; $6f8e: $8a
    daa                                           ; $6f8f: $27
    adc b                                         ; $6f90: $88
    or a                                          ; $6f91: $b7
    sub a                                         ; $6f92: $97
    ld h, e                                       ; $6f93: $63
    ld h, a                                       ; $6f94: $67
    xor d                                         ; $6f95: $aa
    and [hl]                                      ; $6f96: $a6
    ld d, a                                       ; $6f97: $57
    xor d                                         ; $6f98: $aa
    sub [hl]                                      ; $6f99: $96
    ld b, [hl]                                    ; $6f9a: $46
    adc b                                         ; $6f9b: $88
    ld [hl], a                                    ; $6f9c: $77
    ld a, c                                       ; $6f9d: $79
    ld l, b                                       ; $6f9e: $68
    ld a, b                                       ; $6f9f: $78
    xor b                                         ; $6fa0: $a8
    sbc c                                         ; $6fa1: $99
    ld b, [hl]                                    ; $6fa2: $46
    ld [hl], a                                    ; $6fa3: $77
    adc c                                         ; $6fa4: $89
    add a                                         ; $6fa5: $87
    ld d, a                                       ; $6fa6: $57
    halt                                          ; $6fa7: $76
    sbc c                                         ; $6fa8: $99
    adc b                                         ; $6fa9: $88
    adc c                                         ; $6faa: $89
    ld [hl], a                                    ; $6fab: $77
    ld d, l                                       ; $6fac: $55
    ld l, c                                       ; $6fad: $69
    sub [hl]                                      ; $6fae: $96
    ld a, c                                       ; $6faf: $79
    adc c                                         ; $6fb0: $89
    db $e3                                        ; $6fb1: $e3
    ld h, d                                       ; $6fb2: $62
    add a                                         ; $6fb3: $87
    ld a, c                                       ; $6fb4: $79
    ld e, h                                       ; $6fb5: $5c
    adc b                                         ; $6fb6: $88
    sub a                                         ; $6fb7: $97
    and l                                         ; $6fb8: $a5
    halt                                          ; $6fb9: $76
    ld a, b                                       ; $6fba: $78
    ld l, d                                       ; $6fbb: $6a
    ld h, [hl]                                    ; $6fbc: $66
    adc c                                         ; $6fbd: $89
    xor b                                         ; $6fbe: $a8
    adc c                                         ; $6fbf: $89
    ld b, l                                       ; $6fc0: $45
    ld l, d                                       ; $6fc1: $6a

jr_01a_6fc2:
    xor b                                         ; $6fc2: $a8
    ld [hl], a                                    ; $6fc3: $77
    add a                                         ; $6fc4: $87
    adc b                                         ; $6fc5: $88
    halt                                          ; $6fc6: $76
    ld a, c                                       ; $6fc7: $79
    xor c                                         ; $6fc8: $a9
    adc b                                         ; $6fc9: $88
    ld b, h                                       ; $6fca: $44
    adc d                                         ; $6fcb: $8a
    xor b                                         ; $6fcc: $a8
    inc sp                                        ; $6fcd: $33
    adc h                                         ; $6fce: $8c
    xor h                                         ; $6fcf: $ac
    ret z                                         ; $6fd0: $c8

    ld d, e                                       ; $6fd1: $53
    ld [hl+], a                                   ; $6fd2: $22
    ld c, c                                       ; $6fd3: $49
    cp [hl]                                       ; $6fd4: $be
    ei                                            ; $6fd5: $fb
    ld h, e                                       ; $6fd6: $63
    ld [bc], a                                    ; $6fd7: $02
    ld a, e                                       ; $6fd8: $7b
    db $dd                                        ; $6fd9: $dd
    ret c                                         ; $6fda: $d8

    ld [hl-], a                                   ; $6fdb: $32
    jr c, jr_01a_6f77                             ; $6fdc: $38 $99

    halt                                          ; $6fde: $76
    ld a, b                                       ; $6fdf: $78
    xor [hl]                                      ; $6fe0: $ae
    or [hl]                                       ; $6fe1: $b6
    ld d, e                                       ; $6fe2: $53
    inc de                                        ; $6fe3: $13
    ld a, h                                       ; $6fe4: $7c
    adc $e9                                       ; $6fe5: $ce $e9
    ld b, e                                       ; $6fe7: $43
    inc de                                        ; $6fe8: $13
    sub a                                         ; $6fe9: $97
    ld a, d                                       ; $6fea: $7a
    xor b                                         ; $6feb: $a8
    add a                                         ; $6fec: $87
    halt                                          ; $6fed: $76
    ld l, b                                       ; $6fee: $68
    sub a                                         ; $6fef: $97
    adc d                                         ; $6ff0: $8a
    or [hl]                                       ; $6ff1: $b6
    dec d                                         ; $6ff2: $15
    and l                                         ; $6ff3: $a5
    add hl, hl                                    ; $6ff4: $29
    db $ec                                        ; $6ff5: $ec
    or l                                          ; $6ff6: $b5
    inc de                                        ; $6ff7: $13
    adc h                                         ; $6ff8: $8c
    sbc b                                         ; $6ff9: $98
    add l                                         ; $6ffa: $85
    add hl, hl                                    ; $6ffb: $29
    cp d                                          ; $6ffc: $ba
    or a                                          ; $6ffd: $b7
    ld [hl], a                                    ; $6ffe: $77
    dec [hl]                                      ; $6fff: $35
    adc h                                         ; $7000: $8c
    xor b                                         ; $7001: $a8
    ld d, e                                       ; $7002: $53
    ld l, d                                       ; $7003: $6a
    sbc d                                         ; $7004: $9a
    cp e                                          ; $7005: $bb
    sub c                                         ; $7006: $91
    scf                                           ; $7007: $37
    adc b                                         ; $7008: $88
    adc d                                         ; $7009: $8a
    sub l                                         ; $700a: $95
    ld l, d                                       ; $700b: $6a
    and [hl]                                      ; $700c: $a6
    ld a, b                                       ; $700d: $78
    add [hl]                                      ; $700e: $86
    ld h, [hl]                                    ; $700f: $66
    ld e, c                                       ; $7010: $59
    xor d                                         ; $7011: $aa
    or a                                          ; $7012: $b7
    ld d, l                                       ; $7013: $55
    halt                                          ; $7014: $76
    add a                                         ; $7015: $87
    halt                                          ; $7016: $76
    adc d                                         ; $7017: $8a
    or a                                          ; $7018: $b7
    ld h, a                                       ; $7019: $67
    ld h, h                                       ; $701a: $64
    ld b, [hl]                                    ; $701b: $46
    adc $a8                                       ; $701c: $ce $a8
    ld l, b                                       ; $701e: $68
    inc sp                                        ; $701f: $33
    sub a                                         ; $7020: $97
    ld c, b                                       ; $7021: $48
    xor e                                         ; $7022: $ab
    and l                                         ; $7023: $a5
    and a                                         ; $7024: $a7
    add h                                         ; $7025: $84
    jr c, jr_01a_6fc2                             ; $7026: $38 $9a

    push de                                       ; $7028: $d5
    ld [hl], $99                                  ; $7029: $36 $99
    ld [hl], a                                    ; $702b: $77
    adc c                                         ; $702c: $89
    adc b                                         ; $702d: $88
    ld b, e                                       ; $702e: $43
    ld l, e                                       ; $702f: $6b
    cp b                                          ; $7030: $b8
    adc d                                         ; $7031: $8a
    and a                                         ; $7032: $a7
    inc sp                                        ; $7033: $33
    ld a, d                                       ; $7034: $7a
    add [hl]                                      ; $7035: $86
    ld h, a                                       ; $7036: $67
    ld [hl], a                                    ; $7037: $77
    xor l                                         ; $7038: $ad
    rst $00                                       ; $7039: $c7
    inc hl                                        ; $703a: $23
    ld e, d                                       ; $703b: $5a
    adc b                                         ; $703c: $88
    add [hl]                                      ; $703d: $86
    sbc e                                         ; $703e: $9b
    bit 2, c                                      ; $703f: $cb $51
    rlca                                          ; $7041: $07
    sbc l                                         ; $7042: $9d
    sub a                                         ; $7043: $97
    ld l, b                                       ; $7044: $68
    sbc c                                         ; $7045: $99
    and l                                         ; $7046: $a5
    ld b, l                                       ; $7047: $45
    sbc d                                         ; $7048: $9a
    add a                                         ; $7049: $87
    add hl, sp                                    ; $704a: $39
    xor c                                         ; $704b: $a9
    add a                                         ; $704c: $87
    ld h, [hl]                                    ; $704d: $66
    sub a                                         ; $704e: $97
    ld c, c                                       ; $704f: $49
    xor c                                         ; $7050: $a9
    xor c                                         ; $7051: $a9
    add l                                         ; $7052: $85
    ld d, l                                       ; $7053: $55
    adc d                                         ; $7054: $8a
    sbc d                                         ; $7055: $9a
    ld [hl], h                                    ; $7056: $74
    ld d, a                                       ; $7057: $57
    cp d                                          ; $7058: $ba
    ld h, [hl]                                    ; $7059: $66
    sbc b                                         ; $705a: $98
    ld h, [hl]                                    ; $705b: $66
    cp c                                          ; $705c: $b9
    sub a                                         ; $705d: $97
    ld [hl], l                                    ; $705e: $75
    halt                                          ; $705f: $76
    adc c                                         ; $7060: $89
    ld a, b                                       ; $7061: $78
    ld [hl], a                                    ; $7062: $77
    adc c                                         ; $7063: $89
    adc b                                         ; $7064: $88
    sbc c                                         ; $7065: $99
    ld b, h                                       ; $7066: $44
    daa                                           ; $7067: $27
    call z, $56a8                                 ; $7068: $cc $a8 $56
    cp b                                          ; $706b: $b8
    ld d, e                                       ; $706c: $53
    ld h, [hl]                                    ; $706d: $66
    xor b                                         ; $706e: $a8
    ld a, b                                       ; $706f: $78
    sbc d                                         ; $7070: $9a
    sbc d                                         ; $7071: $9a
    ld h, d                                       ; $7072: $62
    scf                                           ; $7073: $37
    cp h                                          ; $7074: $bc
    sub a                                         ; $7075: $97
    ld d, h                                       ; $7076: $54
    ld e, c                                       ; $7077: $59
    adc c                                         ; $7078: $89
    add a                                         ; $7079: $87
    ld d, a                                       ; $707a: $57
    sub a                                         ; $707b: $97
    ret z                                         ; $707c: $c8

    ld b, [hl]                                    ; $707d: $46
    ld e, b                                       ; $707e: $58
    xor c                                         ; $707f: $a9
    and a                                         ; $7080: $a7
    ld [hl], a                                    ; $7081: $77
    ld [hl], l                                    ; $7082: $75
    ld l, b                                       ; $7083: $68
    adc b                                         ; $7084: $88
    ld l, c                                       ; $7085: $69
    cp e                                          ; $7086: $bb
    sub a                                         ; $7087: $97
    inc sp                                        ; $7088: $33
    ld e, c                                       ; $7089: $59
    ret                                           ; $708a: $c9


    ld h, a                                       ; $708b: $67
    ld b, l                                       ; $708c: $45
    sbc e                                         ; $708d: $9b
    or a                                          ; $708e: $b7
    ld d, h                                       ; $708f: $54
    adc d                                         ; $7090: $8a
    or l                                          ; $7091: $b5
    ld a, b                                       ; $7092: $78
    add a                                         ; $7093: $87
    ld a, c                                       ; $7094: $79
    halt                                          ; $7095: $76
    ld e, b                                       ; $7096: $58
    cp d                                          ; $7097: $ba
    add a                                         ; $7098: $87
    ld l, b                                       ; $7099: $68
    ld a, b                                       ; $709a: $78
    ld d, [hl]                                    ; $709b: $56
    and [hl]                                      ; $709c: $a6
    ld [hl], a                                    ; $709d: $77
    ld a, e                                       ; $709e: $7b
    add a                                         ; $709f: $87
    ld e, b                                       ; $70a0: $58
    sbc b                                         ; $70a1: $98
    add [hl]                                      ; $70a2: $86
    ld l, d                                       ; $70a3: $6a
    add [hl]                                      ; $70a4: $86
    ld a, d                                       ; $70a5: $7a
    add [hl]                                      ; $70a6: $86
    add [hl]                                      ; $70a7: $86
    ld h, a                                       ; $70a8: $67
    sbc d                                         ; $70a9: $9a
    halt                                          ; $70aa: $76
    ld a, b                                       ; $70ab: $78
    sub l                                         ; $70ac: $95
    adc b                                         ; $70ad: $88
    ld [hl], l                                    ; $70ae: $75
    ld a, c                                       ; $70af: $79
    adc b                                         ; $70b0: $88
    ld c, l                                       ; $70b1: $4d
    ld sp, hl                                     ; $70b2: $f9
    add d                                         ; $70b3: $82
    ld b, [hl]                                    ; $70b4: $46
    ld d, [hl]                                    ; $70b5: $56
    or a                                          ; $70b6: $b7
    sub l                                         ; $70b7: $95
    ld c, b                                       ; $70b8: $48
    sbc a                                         ; $70b9: $9f
    cp [hl]                                       ; $70ba: $be
    ld [hl], h                                    ; $70bb: $74
    jr nc, jr_01a_70d2                            ; $70bc: $30 $14

    sbc h                                         ; $70be: $9c
    adc $d9                                       ; $70bf: $ce $d9
    ld [hl], h                                    ; $70c1: $74
    ld [de], a                                    ; $70c2: $12
    ld e, b                                       ; $70c3: $58
    xor d                                         ; $70c4: $aa
    cp c                                          ; $70c5: $b9
    ld [hl], h                                    ; $70c6: $74
    ld [hl], $9f                                  ; $70c7: $36 $9f
    sub l                                         ; $70c9: $95
    ld c, c                                       ; $70ca: $49
    sbc c                                         ; $70cb: $99
    sub [hl]                                      ; $70cc: $96
    jr nc, jr_01a_7127                            ; $70cd: $30 $58

    cp e                                          ; $70cf: $bb
    db $dd                                        ; $70d0: $dd
    sub l                                         ; $70d1: $95

jr_01a_70d2:
    ld e, b                                       ; $70d2: $58
    ld b, b                                       ; $70d3: $40
    rla                                           ; $70d4: $17
    call $b6cc                                    ; $70d5: $cd $cc $b6
    ld [de], a                                    ; $70d8: $12
    ld h, a                                       ; $70d9: $67
    ld a, d                                       ; $70da: $7a
    db $db                                        ; $70db: $db
    add l                                         ; $70dc: $85
    ld h, [hl]                                    ; $70dd: $66
    ld b, a                                       ; $70de: $47
    sbc e                                         ; $70df: $9b
    sub [hl]                                      ; $70e0: $96
    ld h, h                                       ; $70e1: $64
    ld d, [hl]                                    ; $70e2: $56
    adc a                                         ; $70e3: $8f
    sbc d                                         ; $70e4: $9a
    ld [hl], a                                    ; $70e5: $77
    sub d                                         ; $70e6: $92
    ld [hl], a                                    ; $70e7: $77
    ld l, b                                       ; $70e8: $68
    sub a                                         ; $70e9: $97
    ld a, c                                       ; $70ea: $79
    ld a, d                                       ; $70eb: $7a
    add [hl]                                      ; $70ec: $86
    ld h, a                                       ; $70ed: $67
    ld l, d                                       ; $70ee: $6a
    ld a, c                                       ; $70ef: $79
    adc b                                         ; $70f0: $88
    ld l, b                                       ; $70f1: $68
    add h                                         ; $70f2: $84
    halt                                          ; $70f3: $76
    sbc e                                         ; $70f4: $9b
    cp d                                          ; $70f5: $ba
    ld d, a                                       ; $70f6: $57
    add [hl]                                      ; $70f7: $86
    ld d, [hl]                                    ; $70f8: $56
    ld e, b                                       ; $70f9: $58
    cp d                                          ; $70fa: $ba
    ld a, c                                       ; $70fb: $79
    add l                                         ; $70fc: $85
    ld e, b                                       ; $70fd: $58
    sbc c                                         ; $70fe: $99
    adc d                                         ; $70ff: $8a
    sub l                                         ; $7100: $95
    ld d, [hl]                                    ; $7101: $56
    ld l, b                                       ; $7102: $68
    xor d                                         ; $7103: $aa
    cp b                                          ; $7104: $b8
    ld d, l                                       ; $7105: $55
    ld a, b                                       ; $7106: $78
    ld [hl], a                                    ; $7107: $77
    sbc c                                         ; $7108: $99
    ld h, a                                       ; $7109: $67
    ld a, b                                       ; $710a: $78
    sbc c                                         ; $710b: $99
    ld [hl], a                                    ; $710c: $77
    ld c, b                                       ; $710d: $48
    adc b                                         ; $710e: $88
    adc c                                         ; $710f: $89
    ld h, [hl]                                    ; $7110: $66
    adc c                                         ; $7111: $89
    sub [hl]                                      ; $7112: $96
    ld l, b                                       ; $7113: $68
    adc c                                         ; $7114: $89
    ld a, b                                       ; $7115: $78
    ld h, a                                       ; $7116: $67
    ld [hl], a                                    ; $7117: $77
    ld l, c                                       ; $7118: $69
    xor c                                         ; $7119: $a9
    add [hl]                                      ; $711a: $86
    ld [hl], a                                    ; $711b: $77
    ld e, b                                       ; $711c: $58
    sbc c                                         ; $711d: $99
    ld h, [hl]                                    ; $711e: $66
    ld [hl], a                                    ; $711f: $77
    add a                                         ; $7120: $87
    xor b                                         ; $7121: $a8
    sbc c                                         ; $7122: $99
    ld [hl], a                                    ; $7123: $77
    ld b, a                                       ; $7124: $47
    ld d, a                                       ; $7125: $57
    sbc c                                         ; $7126: $99

jr_01a_7127:
    sbc b                                         ; $7127: $98
    add a                                         ; $7128: $87
    ld d, a                                       ; $7129: $57
    ld l, b                                       ; $712a: $68
    adc d                                         ; $712b: $8a
    and a                                         ; $712c: $a7
    ld l, c                                       ; $712d: $69
    ld a, b                                       ; $712e: $78
    ld h, l                                       ; $712f: $65
    adc d                                         ; $7130: $8a
    sub [hl]                                      ; $7131: $96
    ld l, b                                       ; $7132: $68
    ld l, c                                       ; $7133: $69
    add [hl]                                      ; $7134: $86
    adc c                                         ; $7135: $89
    ld a, c                                       ; $7136: $79
    add l                                         ; $7137: $85
    ld l, c                                       ; $7138: $69
    ld a, c                                       ; $7139: $79
    sub a                                         ; $713a: $97
    ld [hl], a                                    ; $713b: $77
    ld a, b                                       ; $713c: $78
    ld [hl], a                                    ; $713d: $77
    adc d                                         ; $713e: $8a
    adc b                                         ; $713f: $88
    add [hl]                                      ; $7140: $86
    ld h, [hl]                                    ; $7141: $66
    ld a, b                                       ; $7142: $78
    adc b                                         ; $7143: $88
    sbc b                                         ; $7144: $98
    ld [hl], a                                    ; $7145: $77
    ld [hl], a                                    ; $7146: $77
    sbc b                                         ; $7147: $98
    ld [hl], a                                    ; $7148: $77
    ld a, b                                       ; $7149: $78
    sub [hl]                                      ; $714a: $96
    ld [hl], a                                    ; $714b: $77
    ld a, b                                       ; $714c: $78
    adc b                                         ; $714d: $88
    ld h, a                                       ; $714e: $67
    ld a, b                                       ; $714f: $78
    adc b                                         ; $7150: $88
    add a                                         ; $7151: $87
    sbc c                                         ; $7152: $99
    add a                                         ; $7153: $87
    adc c                                         ; $7154: $89
    ld b, [hl]                                    ; $7155: $46
    sub [hl]                                      ; $7156: $96
    adc d                                         ; $7157: $8a
    ld d, h                                       ; $7158: $54
    sbc c                                         ; $7159: $99
    adc b                                         ; $715a: $88
    add l                                         ; $715b: $85
    ld l, d                                       ; $715c: $6a
    sub [hl]                                      ; $715d: $96
    add a                                         ; $715e: $87
    ld l, b                                       ; $715f: $68
    sbc b                                         ; $7160: $98
    ld [hl], a                                    ; $7161: $77
    ld [hl], a                                    ; $7162: $77
    ld a, c                                       ; $7163: $79
    adc c                                         ; $7164: $89
    ld [hl], l                                    ; $7165: $75
    ld l, b                                       ; $7166: $68
    xor b                                         ; $7167: $a8
    adc b                                         ; $7168: $88
    ld [hl], a                                    ; $7169: $77
    sbc b                                         ; $716a: $98
    ld h, a                                       ; $716b: $67
    ld h, l                                       ; $716c: $65
    ld a, b                                       ; $716d: $78
    jp z, Jump_01a_65b6                           ; $716e: $ca $b6 $65

    ld l, b                                       ; $7171: $68
    sub [hl]                                      ; $7172: $96
    ld e, b                                       ; $7173: $58
    adc c                                         ; $7174: $89
    ld a, b                                       ; $7175: $78
    add a                                         ; $7176: $87
    add a                                         ; $7177: $87
    ld [hl], a                                    ; $7178: $77
    ld [hl], a                                    ; $7179: $77
    ld a, c                                       ; $717a: $79
    sub [hl]                                      ; $717b: $96
    ld a, b                                       ; $717c: $78
    add [hl]                                      ; $717d: $86
    sbc b                                         ; $717e: $98
    adc c                                         ; $717f: $89
    add [hl]                                      ; $7180: $86
    ld l, b                                       ; $7181: $68
    ld a, b                                       ; $7182: $78
    sbc b                                         ; $7183: $98
    add a                                         ; $7184: $87
    ld d, [hl]                                    ; $7185: $56
    ld a, b                                       ; $7186: $78
    sbc b                                         ; $7187: $98
    ld [hl], a                                    ; $7188: $77
    add a                                         ; $7189: $87
    adc c                                         ; $718a: $89
    add a                                         ; $718b: $87
    ld a, b                                       ; $718c: $78
    add [hl]                                      ; $718d: $86
    adc b                                         ; $718e: $88
    ld [hl], a                                    ; $718f: $77
    add a                                         ; $7190: $87
    adc b                                         ; $7191: $88
    halt                                          ; $7192: $76
    adc c                                         ; $7193: $89
    ld a, b                                       ; $7194: $78
    add a                                         ; $7195: $87
    add a                                         ; $7196: $87
    ld a, b                                       ; $7197: $78
    adc b                                         ; $7198: $88
    add a                                         ; $7199: $87
    ld a, c                                       ; $719a: $79
    add a                                         ; $719b: $87
    ld h, a                                       ; $719c: $67
    add a                                         ; $719d: $87
    sbc b                                         ; $719e: $98
    ld h, a                                       ; $719f: $67
    adc c                                         ; $71a0: $89
    add a                                         ; $71a1: $87
    ld [hl], a                                    ; $71a2: $77
    adc b                                         ; $71a3: $88
    ld [hl], a                                    ; $71a4: $77
    add a                                         ; $71a5: $87
    adc b                                         ; $71a6: $88
    ld [hl], a                                    ; $71a7: $77
    adc c                                         ; $71a8: $89
    ld a, b                                       ; $71a9: $78
    ld h, [hl]                                    ; $71aa: $66
    sbc c                                         ; $71ab: $99
    add a                                         ; $71ac: $87
    ld h, l                                       ; $71ad: $65
    adc c                                         ; $71ae: $89
    cp c                                          ; $71af: $b9
    ld h, [hl]                                    ; $71b0: $66
    ld e, c                                       ; $71b1: $59
    sbc b                                         ; $71b2: $98
    add [hl]                                      ; $71b3: $86
    add l                                         ; $71b4: $85
    sbc b                                         ; $71b5: $98
    sub a                                         ; $71b6: $97
    add a                                         ; $71b7: $87
    halt                                          ; $71b8: $76
    add a                                         ; $71b9: $87
    sbc b                                         ; $71ba: $98
    halt                                          ; $71bb: $76
    ld [hl], a                                    ; $71bc: $77
    sbc c                                         ; $71bd: $99
    sub a                                         ; $71be: $97
    ld h, [hl]                                    ; $71bf: $66
    adc c                                         ; $71c0: $89
    adc b                                         ; $71c1: $88
    ld [hl], a                                    ; $71c2: $77
    add a                                         ; $71c3: $87
    ld a, b                                       ; $71c4: $78
    ld a, b                                       ; $71c5: $78
    ld a, b                                       ; $71c6: $78
    add a                                         ; $71c7: $87
    add a                                         ; $71c8: $87
    ld a, b                                       ; $71c9: $78
    ld [hl], a                                    ; $71ca: $77
    ld a, b                                       ; $71cb: $78
    ld a, b                                       ; $71cc: $78
    ld a, b                                       ; $71cd: $78
    add a                                         ; $71ce: $87
    ld h, a                                       ; $71cf: $67
    sub a                                         ; $71d0: $97
    ld a, b                                       ; $71d1: $78
    sbc b                                         ; $71d2: $98
    ld a, b                                       ; $71d3: $78
    add a                                         ; $71d4: $87
    ld h, a                                       ; $71d5: $67
    ld a, b                                       ; $71d6: $78
    ld a, b                                       ; $71d7: $78
    ld a, b                                       ; $71d8: $78
    adc b                                         ; $71d9: $88
    add a                                         ; $71da: $87
    adc b                                         ; $71db: $88
    add a                                         ; $71dc: $87
    ld a, b                                       ; $71dd: $78
    adc b                                         ; $71de: $88
    adc b                                         ; $71df: $88
    add a                                         ; $71e0: $87
    ld a, b                                       ; $71e1: $78
    adc b                                         ; $71e2: $88
    add a                                         ; $71e3: $87
    adc b                                         ; $71e4: $88
    ld a, b                                       ; $71e5: $78
    ld [hl], a                                    ; $71e6: $77
    adc b                                         ; $71e7: $88
    ld [hl], a                                    ; $71e8: $77
    add a                                         ; $71e9: $87
    add a                                         ; $71ea: $87
    add a                                         ; $71eb: $87
    ld [hl], a                                    ; $71ec: $77
    adc b                                         ; $71ed: $88
    ld [hl], a                                    ; $71ee: $77
    ld a, b                                       ; $71ef: $78
    adc b                                         ; $71f0: $88
    ld a, b                                       ; $71f1: $78
    ld [hl], a                                    ; $71f2: $77
    add a                                         ; $71f3: $87
    ld a, b                                       ; $71f4: $78
    ld a, b                                       ; $71f5: $78
    adc b                                         ; $71f6: $88
    adc b                                         ; $71f7: $88
    ld [hl], a                                    ; $71f8: $77
    ld a, b                                       ; $71f9: $78
    add a                                         ; $71fa: $87
    ld [hl], a                                    ; $71fb: $77
    ld a, b                                       ; $71fc: $78
    add a                                         ; $71fd: $87
    ld a, b                                       ; $71fe: $78
    ld [hl], a                                    ; $71ff: $77
    add a                                         ; $7200: $87
    ld [hl], a                                    ; $7201: $77
    adc b                                         ; $7202: $88
    ld [hl], a                                    ; $7203: $77
    ld [hl], a                                    ; $7204: $77
    ld [hl], a                                    ; $7205: $77
    ld a, b                                       ; $7206: $78
    add a                                         ; $7207: $87
    ld [hl], a                                    ; $7208: $77
    adc b                                         ; $7209: $88
    ld [hl], a                                    ; $720a: $77
    adc b                                         ; $720b: $88
    ld [hl], a                                    ; $720c: $77
    ld a, b                                       ; $720d: $78
    add a                                         ; $720e: $87
    ld [hl], a                                    ; $720f: $77
    adc b                                         ; $7210: $88
    ld [hl], a                                    ; $7211: $77
    adc b                                         ; $7212: $88
    ld [hl], a                                    ; $7213: $77
    adc b                                         ; $7214: $88
    add a                                         ; $7215: $87
    ld a, b                                       ; $7216: $78
    ld [hl], a                                    ; $7217: $77
    ld a, b                                       ; $7218: $78
    add a                                         ; $7219: $87
    ld a, b                                       ; $721a: $78
    adc b                                         ; $721b: $88
    ld a, b                                       ; $721c: $78
    ld [hl], a                                    ; $721d: $77
    ld a, b                                       ; $721e: $78
    add a                                         ; $721f: $87
    adc b                                         ; $7220: $88
    adc b                                         ; $7221: $88
    adc b                                         ; $7222: $88
    ld a, b                                       ; $7223: $78
    ld a, b                                       ; $7224: $78
    ld [hl], a                                    ; $7225: $77
    ld a, b                                       ; $7226: $78
    adc b                                         ; $7227: $88
    ld [hl], a                                    ; $7228: $77
    ld a, b                                       ; $7229: $78
    adc b                                         ; $722a: $88
    adc b                                         ; $722b: $88
    adc b                                         ; $722c: $88
    adc b                                         ; $722d: $88
    adc b                                         ; $722e: $88
    adc b                                         ; $722f: $88
    add a                                         ; $7230: $87
    sub [hl]                                      ; $7231: $96
    sub l                                         ; $7232: $95
    or e                                          ; $7233: $b3
    adc [hl]                                      ; $7234: $8e
    dec de                                        ; $7235: $1b
    and e                                         ; $7236: $a3
    ld [hl], a                                    ; $7237: $77
    add h                                         ; $7238: $84
    xor d                                         ; $7239: $aa
    ld c, h                                       ; $723a: $4c
    ld d, l                                       ; $723b: $55
    sub [hl]                                      ; $723c: $96
    ld a, d                                       ; $723d: $7a
    and l                                         ; $723e: $a5
    add $48                                       ; $723f: $c6 $48
    ld [hl], a                                    ; $7241: $77
    ld a, b                                       ; $7242: $78
    ld a, d                                       ; $7243: $7a
    and l                                         ; $7244: $a5
    sbc b                                         ; $7245: $98
    ld [hl], h                                    ; $7246: $74
    sub a                                         ; $7247: $97
    ld l, b                                       ; $7248: $68
    ld a, c                                       ; $7249: $79
    rst $30                                       ; $724a: $f7
    ld [hl], l                                    ; $724b: $75
    ld e, c                                       ; $724c: $59
    ld d, a                                       ; $724d: $57
    sbc c                                         ; $724e: $99
    ld l, c                                       ; $724f: $69
    ld b, d                                       ; $7250: $42
    xor b                                         ; $7251: $a8
    ld l, d                                       ; $7252: $6a
    cp b                                          ; $7253: $b8
    sbc c                                         ; $7254: $99
    ld b, l                                       ; $7255: $45
    add l                                         ; $7256: $85
    sbc [hl]                                      ; $7257: $9e
    sbc c                                         ; $7258: $99
    sbc c                                         ; $7259: $99

jr_01a_725a:
    ld [hl], $74                                  ; $725a: $36 $74
    ld c, d                                       ; $725c: $4a
    ld h, [hl]                                    ; $725d: $66
    sub a                                         ; $725e: $97
    sbc d                                         ; $725f: $9a
    add [hl]                                      ; $7260: $86
    adc c                                         ; $7261: $89
    ld h, a                                       ; $7262: $67
    sub h                                         ; $7263: $94
    ret                                           ; $7264: $c9


    and [hl]                                      ; $7265: $a6
    ld [hl], a                                    ; $7266: $77
    dec sp                                        ; $7267: $3b
    and e                                         ; $7268: $a3
    cp d                                          ; $7269: $ba
    ld a, [de]                                    ; $726a: $1a
    ld e, b                                       ; $726b: $58
    ld d, a                                       ; $726c: $57

jr_01a_726d:
    or [hl]                                       ; $726d: $b6
    add a                                         ; $726e: $87
    or h                                          ; $726f: $b4
    ld e, l                                       ; $7270: $5d
    add l                                         ; $7271: $85
    adc d                                         ; $7272: $8a
    add e                                         ; $7273: $83
    sbc e                                         ; $7274: $9b
    dec h                                         ; $7275: $25
    jp z, $ab57                                   ; $7276: $ca $57 $ab

    ld h, l                                       ; $7279: $65
    adc b                                         ; $727a: $88
    dec h                                         ; $727b: $25
    push hl                                       ; $727c: $e5
    ld c, c                                       ; $727d: $49
    jp z, Jump_01a_6b65                           ; $727e: $ca $65 $6b

    ld b, h                                       ; $7281: $44
    jp hl                                         ; $7282: $e9


    ld c, c                                       ; $7283: $49
    sbc b                                         ; $7284: $98
    inc e                                         ; $7285: $1c
    ld [hl], a                                    ; $7286: $77
    ld [hl], h                                    ; $7287: $74
    rst $10                                       ; $7288: $d7
    dec l                                         ; $7289: $2d
    call nc, Call_01a_7369                        ; $728a: $d4 $69 $73
    sbc d                                         ; $728d: $9a
    ld l, b                                       ; $728e: $68
    ld d, [hl]                                    ; $728f: $56
    call nz, $aa87                                ; $7290: $c4 $87 $aa
    dec de                                        ; $7293: $1b
    sub a                                         ; $7294: $97
    sub [hl]                                      ; $7295: $96
    sub [hl]                                      ; $7296: $96
    ld b, a                                       ; $7297: $47
    push bc                                       ; $7298: $c5
    add hl, hl                                    ; $7299: $29
    db $e4                                        ; $729a: $e4
    xor d                                         ; $729b: $aa
    adc c                                         ; $729c: $89
    add hl, sp                                    ; $729d: $39
    ld a, b                                       ; $729e: $78
    dec [hl]                                      ; $729f: $35
    call nz, $9939                                ; $72a0: $c4 $39 $99
    ld e, d                                       ; $72a3: $5a
    db $d3                                        ; $72a4: $d3
    ld e, d                                       ; $72a5: $5a
    or l                                          ; $72a6: $b5
    ld l, $e6                                     ; $72a7: $2e $e6
    ld a, e                                       ; $72a9: $7b
    ld [hl], b                                    ; $72aa: $70
    ld e, d                                       ; $72ab: $5a
    adc b                                         ; $72ac: $88
    ld a, l                                       ; $72ad: $7d
    sub e                                         ; $72ae: $93
    ld l, b                                       ; $72af: $68
    add h                                         ; $72b0: $84
    ld l, h                                       ; $72b1: $6c
    add h                                         ; $72b2: $84
    xor b                                         ; $72b3: $a8
    add a                                         ; $72b4: $87
    sbc e                                         ; $72b5: $9b
    ld h, l                                       ; $72b6: $65
    add a                                         ; $72b7: $87
    sub h                                         ; $72b8: $94
    db $eb                                        ; $72b9: $eb
    ld b, a                                       ; $72ba: $47
    ld l, e                                       ; $72bb: $6b
    ld b, e                                       ; $72bc: $43
    ld [hl], l                                    ; $72bd: $75
    ld l, b                                       ; $72be: $68
    sbc c                                         ; $72bf: $99
    jr c, jr_01a_725a                             ; $72c0: $38 $98

    ld h, [hl]                                    ; $72c2: $66
    or a                                          ; $72c3: $b7
    ld a, c                                       ; $72c4: $79
    adc e                                         ; $72c5: $8b
    ld a, d                                       ; $72c6: $7a
    and [hl]                                      ; $72c7: $a6
    ld [hl], h                                    ; $72c8: $74
    adc b                                         ; $72c9: $88
    adc c                                         ; $72ca: $89
    adc b                                         ; $72cb: $88
    ld [hl], h                                    ; $72cc: $74
    ld h, a                                       ; $72cd: $67
    ld [hl], a                                    ; $72ce: $77
    ld e, d                                       ; $72cf: $5a
    ld d, [hl]                                    ; $72d0: $56
    or a                                          ; $72d1: $b7
    ret z                                         ; $72d2: $c8

    xor c                                         ; $72d3: $a9
    ld l, b                                       ; $72d4: $68
    jr c, jr_01a_726d                             ; $72d5: $38 $96

    xor b                                         ; $72d7: $a8
    ld d, l                                       ; $72d8: $55
    ld l, d                                       ; $72d9: $6a
    ld l, b                                       ; $72da: $68
    sbc b                                         ; $72db: $98
    halt                                          ; $72dc: $76
    sbc b                                         ; $72dd: $98
    jr c, jr_01a_7358                             ; $72de: $38 $78

    ld e, b                                       ; $72e0: $58
    jp z, $a88c                                   ; $72e1: $ca $8c $a8

    ld c, b                                       ; $72e4: $48

jr_01a_72e5:
    ld [hl], d                                    ; $72e5: $72
    ld b, [hl]                                    ; $72e6: $46
    halt                                          ; $72e7: $76
    sbc l                                         ; $72e8: $9d
    sub h                                         ; $72e9: $94
    add [hl]                                      ; $72ea: $86
    sub [hl]                                      ; $72eb: $96
    ld a, e                                       ; $72ec: $7b
    sbc e                                         ; $72ed: $9b
    adc b                                         ; $72ee: $88
    ld h, e                                       ; $72ef: $63
    adc b                                         ; $72f0: $88
    ld d, [hl]                                    ; $72f1: $56
    adc d                                         ; $72f2: $8a
    ld h, a                                       ; $72f3: $67
    and a                                         ; $72f4: $a7
    ld [hl], a                                    ; $72f5: $77
    sub a                                         ; $72f6: $97
    ld e, e                                       ; $72f7: $5b
    sub a                                         ; $72f8: $97
    sbc d                                         ; $72f9: $9a
    or [hl]                                       ; $72fa: $b6
    adc d                                         ; $72fb: $8a
    sub [hl]                                      ; $72fc: $96
    ld e, c                                       ; $72fd: $59
    ld h, h                                       ; $72fe: $64
    and a                                         ; $72ff: $a7
    ld b, h                                       ; $7300: $44
    ld e, e                                       ; $7301: $5b
    halt                                          ; $7302: $76
    xor e                                         ; $7303: $ab
    xor b                                         ; $7304: $a8
    xor e                                         ; $7305: $ab
    ld l, b                                       ; $7306: $68
    ld h, l                                       ; $7307: $65
    inc sp                                        ; $7308: $33
    halt                                          ; $7309: $76
    ld e, c                                       ; $730a: $59
    cp c                                          ; $730b: $b9
    adc d                                         ; $730c: $8a
    or [hl]                                       ; $730d: $b6
    ld [hl], a                                    ; $730e: $77
    sub l                                         ; $730f: $95
    ld e, d                                       ; $7310: $5a
    sub l                                         ; $7311: $95
    adc d                                         ; $7312: $8a
    sub e                                         ; $7313: $93
    ld e, d                                       ; $7314: $5a
    ld b, [hl]                                    ; $7315: $46
    ld a, e                                       ; $7316: $7b
    add l                                         ; $7317: $85
    xor d                                         ; $7318: $aa
    ld h, a                                       ; $7319: $67
    sbc e                                         ; $731a: $9b
    ld b, h                                       ; $731b: $44
    add a                                         ; $731c: $87
    ld [hl], a                                    ; $731d: $77
    adc c                                         ; $731e: $89
    ld h, [hl]                                    ; $731f: $66
    add a                                         ; $7320: $87
    ld a, b                                       ; $7321: $78
    and [hl]                                      ; $7322: $a6
    ld a, b                                       ; $7323: $78
    adc b                                         ; $7324: $88
    ld a, d                                       ; $7325: $7a
    sub [hl]                                      ; $7326: $96
    sbc c                                         ; $7327: $99
    add [hl]                                      ; $7328: $86
    adc c                                         ; $7329: $89
    ld h, [hl]                                    ; $732a: $66
    halt                                          ; $732b: $76
    ld d, h                                       ; $732c: $54
    ld a, b                                       ; $732d: $78
    ld c, b                                       ; $732e: $48
    cp d                                          ; $732f: $ba
    adc d                                         ; $7330: $8a
    ret z                                         ; $7331: $c8

    ld e, b                                       ; $7332: $58
    add [hl]                                      ; $7333: $86
    ld e, d                                       ; $7334: $5a
    and h                                         ; $7335: $a4
    ld l, b                                       ; $7336: $68
    ld [hl], h                                    ; $7337: $74
    ld e, c                                       ; $7338: $59
    ld [hl], a                                    ; $7339: $77
    cp h                                          ; $733a: $bc
    and [hl]                                      ; $733b: $a6
    sbc d                                         ; $733c: $9a
    ld b, e                                       ; $733d: $43
    ld l, b                                       ; $733e: $68
    ld h, a                                       ; $733f: $67
    xor b                                         ; $7340: $a8
    ld h, a                                       ; $7341: $67
    sbc c                                         ; $7342: $99
    adc b                                         ; $7343: $88
    or a                                          ; $7344: $b7
    ld h, a                                       ; $7345: $67
    add l                                         ; $7346: $85
    ld c, c                                       ; $7347: $49
    sub a                                         ; $7348: $97
    sbc h                                         ; $7349: $9c
    rst $00                                       ; $734a: $c7
    ld e, c                                       ; $734b: $59
    ld h, d                                       ; $734c: $62
    jr c, jr_01a_72e5                             ; $734d: $38 $96

    sbc c                                         ; $734f: $99
    add a                                         ; $7350: $87
    ld a, c                                       ; $7351: $79
    ld [hl], a                                    ; $7352: $77
    sbc e                                         ; $7353: $9b
    sub [hl]                                      ; $7354: $96
    sbc b                                         ; $7355: $98
    ld d, l                                       ; $7356: $55
    add a                                         ; $7357: $87

jr_01a_7358:
    ld l, b                                       ; $7358: $68
    cp b                                          ; $7359: $b8
    ld l, c                                       ; $735a: $69
    and a                                         ; $735b: $a7
    ld l, b                                       ; $735c: $68
    sub a                                         ; $735d: $97
    ld h, a                                       ; $735e: $67
    halt                                          ; $735f: $76
    adc c                                         ; $7360: $89
    add [hl]                                      ; $7361: $86
    ld a, c                                       ; $7362: $79
    add [hl]                                      ; $7363: $86
    ld a, c                                       ; $7364: $79
    ld h, [hl]                                    ; $7365: $66
    adc b                                         ; $7366: $88
    ld [hl], a                                    ; $7367: $77
    sbc b                                         ; $7368: $98

Call_01a_7369:
    ld a, b                                       ; $7369: $78
    sub a                                         ; $736a: $97
    ld l, b                                       ; $736b: $68
    xor b                                         ; $736c: $a8
    ld l, b                                       ; $736d: $68
    sub [hl]                                      ; $736e: $96
    ld b, [hl]                                    ; $736f: $46
    add [hl]                                      ; $7370: $86
    ld l, d                                       ; $7371: $6a
    and [hl]                                      ; $7372: $a6
    adc e                                         ; $7373: $8b
    add [hl]                                      ; $7374: $86
    ld a, c                                       ; $7375: $79
    ld [hl], l                                    ; $7376: $75
    ld a, c                                       ; $7377: $79
    add [hl]                                      ; $7378: $86
    adc d                                         ; $7379: $8a
    ld [hl], l                                    ; $737a: $75
    sbc c                                         ; $737b: $99
    ld h, [hl]                                    ; $737c: $66
    xor d                                         ; $737d: $aa
    adc c                                         ; $737e: $89
    and a                                         ; $737f: $a7
    ld b, [hl]                                    ; $7380: $46
    add l                                         ; $7381: $85
    ld c, b                                       ; $7382: $48
    cp b                                          ; $7383: $b8
    ld l, d                                       ; $7384: $6a
    and [hl]                                      ; $7385: $a6
    ld c, b                                       ; $7386: $48
    add l                                         ; $7387: $85
    ld e, d                                       ; $7388: $5a
    add [hl]                                      ; $7389: $86
    ld a, c                                       ; $738a: $79
    add l                                         ; $738b: $85
    adc d                                         ; $738c: $8a
    add [hl]                                      ; $738d: $86
    adc c                                         ; $738e: $89
    halt                                          ; $738f: $76
    sbc d                                         ; $7390: $9a
    halt                                          ; $7391: $76
    sbc b                                         ; $7392: $98
    ld d, [hl]                                    ; $7393: $56
    sbc c                                         ; $7394: $99
    ld a, b                                       ; $7395: $78
    xor b                                         ; $7396: $a8
    ld l, b                                       ; $7397: $68
    sub a                                         ; $7398: $97
    ld e, b                                       ; $7399: $58
    add l                                         ; $739a: $85
    ld e, b                                       ; $739b: $58
    add [hl]                                      ; $739c: $86
    ld a, d                                       ; $739d: $7a
    add [hl]                                      ; $739e: $86
    ld a, c                                       ; $739f: $79
    add [hl]                                      ; $73a0: $86
    sbc e                                         ; $73a1: $9b
    add a                                         ; $73a2: $87
    sbc c                                         ; $73a3: $99
    ld d, l                                       ; $73a4: $55
    ld [hl], a                                    ; $73a5: $77
    ld d, a                                       ; $73a6: $57
    sbc c                                         ; $73a7: $99
    ld a, b                                       ; $73a8: $78
    xor b                                         ; $73a9: $a8
    ld l, b                                       ; $73aa: $68
    sub a                                         ; $73ab: $97
    ld l, b                                       ; $73ac: $68
    sub [hl]                                      ; $73ad: $96
    ld l, b                                       ; $73ae: $68
    add l                                         ; $73af: $85
    ld l, d                                       ; $73b0: $6a
    add a                                         ; $73b1: $87
    sbc d                                         ; $73b2: $9a
    add [hl]                                      ; $73b3: $86
    sbc c                                         ; $73b4: $99
    ld h, l                                       ; $73b5: $65
    adc b                                         ; $73b6: $88
    ld h, [hl]                                    ; $73b7: $66
    sbc c                                         ; $73b8: $99
    ld h, a                                       ; $73b9: $67
    sbc b                                         ; $73ba: $98
    ld d, a                                       ; $73bb: $57
    sub a                                         ; $73bc: $97
    ld e, b                                       ; $73bd: $58
    and a                                         ; $73be: $a7
    ld l, c                                       ; $73bf: $69
    and a                                         ; $73c0: $a7
    ld l, c                                       ; $73c1: $69
    sub [hl]                                      ; $73c2: $96
    ld l, c                                       ; $73c3: $69
    add [hl]                                      ; $73c4: $86
    ld a, d                                       ; $73c5: $7a
    add [hl]                                      ; $73c6: $86
    adc d                                         ; $73c7: $8a
    halt                                          ; $73c8: $76
    adc d                                         ; $73c9: $8a
    halt                                          ; $73ca: $76
    sbc c                                         ; $73cb: $99
    ld h, l                                       ; $73cc: $65
    sbc b                                         ; $73cd: $98
    ld d, [hl]                                    ; $73ce: $56
    adc b                                         ; $73cf: $88
    ld d, a                                       ; $73d0: $57
    xor c                                         ; $73d1: $a9
    ld a, c                                       ; $73d2: $79
    cp b                                          ; $73d3: $b8
    ld l, b                                       ; $73d4: $68
    sub [hl]                                      ; $73d5: $96
    ld e, c                                       ; $73d6: $59
    sub a                                         ; $73d7: $97
    ld l, c                                       ; $73d8: $69
    add [hl]                                      ; $73d9: $86
    ld l, c                                       ; $73da: $69
    add [hl]                                      ; $73db: $86
    adc d                                         ; $73dc: $8a
    add l                                         ; $73dd: $85
    adc c                                         ; $73de: $89
    ld [hl], l                                    ; $73df: $75
    adc c                                         ; $73e0: $89
    ld h, [hl]                                    ; $73e1: $66
    sbc c                                         ; $73e2: $99
    ld h, a                                       ; $73e3: $67
    sbc b                                         ; $73e4: $98
    ld h, a                                       ; $73e5: $67
    sub a                                         ; $73e6: $97
    ld l, b                                       ; $73e7: $68
    sub a                                         ; $73e8: $97
    ld a, c                                       ; $73e9: $79
    sub a                                         ; $73ea: $97
    ld a, c                                       ; $73eb: $79
    add l                                         ; $73ec: $85
    ld l, b                                       ; $73ed: $68
    halt                                          ; $73ee: $76
    ld a, c                                       ; $73ef: $79
    add [hl]                                      ; $73f0: $86
    adc c                                         ; $73f1: $89
    halt                                          ; $73f2: $76
    adc c                                         ; $73f3: $89
    ld h, a                                       ; $73f4: $67
    sbc b                                         ; $73f5: $98
    ld h, a                                       ; $73f6: $67
    sub a                                         ; $73f7: $97
    ld d, a                                       ; $73f8: $57
    sub a                                         ; $73f9: $97
    ld l, c                                       ; $73fa: $69
    and a                                         ; $73fb: $a7
    ld l, c                                       ; $73fc: $69
    sub [hl]                                      ; $73fd: $96
    ld a, d                                       ; $73fe: $7a
    sub [hl]                                      ; $73ff: $96
    adc c                                         ; $7400: $89
    ld [hl], l                                    ; $7401: $75
    ld a, c                                       ; $7402: $79
    ld [hl], l                                    ; $7403: $75
    adc c                                         ; $7404: $89
    ld h, l                                       ; $7405: $65
    adc d                                         ; $7406: $8a
    halt                                          ; $7407: $76
    xor d                                         ; $7408: $aa
    ld h, [hl]                                    ; $7409: $66
    xor b                                         ; $740a: $a8
    ld d, [hl]                                    ; $740b: $56
    sub a                                         ; $740c: $97
    ld d, a                                       ; $740d: $57
    sub a                                         ; $740e: $97
    ld l, b                                       ; $740f: $68
    and a                                         ; $7410: $a7
    ld l, c                                       ; $7411: $69
    and a                                         ; $7412: $a7
    ld a, d                                       ; $7413: $7a
    sub [hl]                                      ; $7414: $96
    ld l, c                                       ; $7415: $69
    add l                                         ; $7416: $85
    ld a, c                                       ; $7417: $79
    ld [hl], l                                    ; $7418: $75
    ld a, c                                       ; $7419: $79
    halt                                          ; $741a: $76
    adc c                                         ; $741b: $89
    halt                                          ; $741c: $76
    sbc c                                         ; $741d: $99
    ld [hl], a                                    ; $741e: $77
    xor c                                         ; $741f: $a9
    ld h, a                                       ; $7420: $67
    sbc b                                         ; $7421: $98
    ld d, a                                       ; $7422: $57
    add a                                         ; $7423: $87
    ld e, b                                       ; $7424: $58
    sub a                                         ; $7425: $97
    ld l, c                                       ; $7426: $69
    sub a                                         ; $7427: $97
    ld l, c                                       ; $7428: $69
    add [hl]                                      ; $7429: $86
    ld a, c                                       ; $742a: $79
    add [hl]                                      ; $742b: $86
    ld a, c                                       ; $742c: $79
    halt                                          ; $742d: $76
    adc c                                         ; $742e: $89
    halt                                          ; $742f: $76
    adc b                                         ; $7430: $88
    ld h, a                                       ; $7431: $67
    xor c                                         ; $7432: $a9
    ld a, b                                       ; $7433: $78
    sub a                                         ; $7434: $97
    ld h, a                                       ; $7435: $67
    add a                                         ; $7436: $87
    ld l, b                                       ; $7437: $68
    sub a                                         ; $7438: $97
    ld l, c                                       ; $7439: $69
    add [hl]                                      ; $743a: $86
    ld a, c                                       ; $743b: $79
    add [hl]                                      ; $743c: $86
    ld a, c                                       ; $743d: $79
    add [hl]                                      ; $743e: $86
    adc c                                         ; $743f: $89
    add [hl]                                      ; $7440: $86
    adc c                                         ; $7441: $89
    ld h, [hl]                                    ; $7442: $66
    sbc c                                         ; $7443: $99
    ld h, a                                       ; $7444: $67
    sbc b                                         ; $7445: $98
    ld d, [hl]                                    ; $7446: $56
    sub a                                         ; $7447: $97
    ld d, a                                       ; $7448: $57
    sub a                                         ; $7449: $97
    ld l, c                                       ; $744a: $69
    and a                                         ; $744b: $a7
    ld l, c                                       ; $744c: $69
    sub [hl]                                      ; $744d: $96
    ld l, c                                       ; $744e: $69
    sub [hl]                                      ; $744f: $96
    ld l, d                                       ; $7450: $6a
    sub [hl]                                      ; $7451: $96
    ld a, d                                       ; $7452: $7a
    add [hl]                                      ; $7453: $86
    adc d                                         ; $7454: $8a
    halt                                          ; $7455: $76
    adc d                                         ; $7456: $8a
    halt                                          ; $7457: $76
    adc c                                         ; $7458: $89
    ld h, [hl]                                    ; $7459: $66
    sbc b                                         ; $745a: $98
    ld h, a                                       ; $745b: $67
    sbc b                                         ; $745c: $98
    ld h, a                                       ; $745d: $67
    sub a                                         ; $745e: $97
    ld d, a                                       ; $745f: $57
    sub a                                         ; $7460: $97
    ld l, b                                       ; $7461: $68
    sub a                                         ; $7462: $97
    ld a, c                                       ; $7463: $79
    sub [hl]                                      ; $7464: $96
    ld l, b                                       ; $7465: $68
    add [hl]                                      ; $7466: $86
    ld a, c                                       ; $7467: $79
    add [hl]                                      ; $7468: $86
    adc c                                         ; $7469: $89
    halt                                          ; $746a: $76
    adc b                                         ; $746b: $88
    ld [hl], a                                    ; $746c: $77
    sbc d                                         ; $746d: $9a
    ld a, b                                       ; $746e: $78
    sbc b                                         ; $746f: $98
    ld h, a                                       ; $7470: $67
    add a                                         ; $7471: $87
    ld h, a                                       ; $7472: $67
    sub a                                         ; $7473: $97
    ld l, b                                       ; $7474: $68
    sub [hl]                                      ; $7475: $96
    ld l, c                                       ; $7476: $69
    add [hl]                                      ; $7477: $86
    ld a, c                                       ; $7478: $79
    add [hl]                                      ; $7479: $86
    adc c                                         ; $747a: $89
    halt                                          ; $747b: $76
    adc c                                         ; $747c: $89
    halt                                          ; $747d: $76
    adc b                                         ; $747e: $88
    ld h, a                                       ; $747f: $67
    sbc c                                         ; $7480: $99
    ld h, a                                       ; $7481: $67
    sbc b                                         ; $7482: $98
    ld h, a                                       ; $7483: $67
    sbc b                                         ; $7484: $98
    ld l, b                                       ; $7485: $68
    and a                                         ; $7486: $a7
    ld l, b                                       ; $7487: $68
    sub [hl]                                      ; $7488: $96
    ld l, c                                       ; $7489: $69
    sub [hl]                                      ; $748a: $96
    ld a, c                                       ; $748b: $79
    sub [hl]                                      ; $748c: $96
    ld a, c                                       ; $748d: $79
    add l                                         ; $748e: $85
    ld a, c                                       ; $748f: $79
    add [hl]                                      ; $7490: $86
    adc d                                         ; $7491: $8a
    halt                                          ; $7492: $76
    adc c                                         ; $7493: $89
    ld h, [hl]                                    ; $7494: $66
    adc b                                         ; $7495: $88
    ld h, [hl]                                    ; $7496: $66
    sbc c                                         ; $7497: $99
    ld h, a                                       ; $7498: $67
    xor b                                         ; $7499: $a8
    ld h, a                                       ; $749a: $67
    sub a                                         ; $749b: $97
    ld l, b                                       ; $749c: $68
    sub a                                         ; $749d: $97
    ld l, b                                       ; $749e: $68
    sub [hl]                                      ; $749f: $96
    ld l, c                                       ; $74a0: $69
    sub [hl]                                      ; $74a1: $96
    ld a, d                                       ; $74a2: $7a
    sub a                                         ; $74a3: $97
    adc d                                         ; $74a4: $8a
    add [hl]                                      ; $74a5: $86
    adc c                                         ; $74a6: $89
    halt                                          ; $74a7: $76
    adc b                                         ; $74a8: $88
    ld h, [hl]                                    ; $74a9: $66
    adc b                                         ; $74aa: $88
    ld h, a                                       ; $74ab: $67
    sbc b                                         ; $74ac: $98
    ld h, a                                       ; $74ad: $67
    sbc b                                         ; $74ae: $98
    ld l, b                                       ; $74af: $68
    sub a                                         ; $74b0: $97
    ld l, b                                       ; $74b1: $68
    sub a                                         ; $74b2: $97
    ld a, c                                       ; $74b3: $79
    add [hl]                                      ; $74b4: $86
    ld a, c                                       ; $74b5: $79
    add [hl]                                      ; $74b6: $86
    ld a, c                                       ; $74b7: $79
    halt                                          ; $74b8: $76
    adc c                                         ; $74b9: $89
    ld [hl], a                                    ; $74ba: $77
    sbc c                                         ; $74bb: $99
    ld [hl], a                                    ; $74bc: $77
    sbc b                                         ; $74bd: $98
    ld h, a                                       ; $74be: $67
    add a                                         ; $74bf: $87
    ld h, a                                       ; $74c0: $67
    sub a                                         ; $74c1: $97
    ld l, b                                       ; $74c2: $68
    sub a                                         ; $74c3: $97
    ld l, c                                       ; $74c4: $69
    sub a                                         ; $74c5: $97
    ld a, c                                       ; $74c6: $79
    add [hl]                                      ; $74c7: $86
    ld a, c                                       ; $74c8: $79
    ld [hl], l                                    ; $74c9: $75
    ld a, c                                       ; $74ca: $79
    halt                                          ; $74cb: $76
    adc c                                         ; $74cc: $89
    halt                                          ; $74cd: $76
    sbc c                                         ; $74ce: $99
    halt                                          ; $74cf: $76
    sbc c                                         ; $74d0: $99
    ld h, [hl]                                    ; $74d1: $66
    sbc b                                         ; $74d2: $98
    ld h, a                                       ; $74d3: $67
    sbc b                                         ; $74d4: $98
    ld l, b                                       ; $74d5: $68
    sub a                                         ; $74d6: $97
    ld e, b                                       ; $74d7: $58
    sub a                                         ; $74d8: $97
    ld l, c                                       ; $74d9: $69
    sub [hl]                                      ; $74da: $96
    ld l, c                                       ; $74db: $69
    sub [hl]                                      ; $74dc: $96
    ld l, c                                       ; $74dd: $69
    add [hl]                                      ; $74de: $86
    ld a, c                                       ; $74df: $79
    add [hl]                                      ; $74e0: $86
    adc c                                         ; $74e1: $89
    ld [hl], l                                    ; $74e2: $75
    adc c                                         ; $74e3: $89
    halt                                          ; $74e4: $76
    sbc c                                         ; $74e5: $99
    ld [hl], a                                    ; $74e6: $77
    sbc b                                         ; $74e7: $98
    ld h, a                                       ; $74e8: $67
    sub a                                         ; $74e9: $97
    ld h, a                                       ; $74ea: $67
    sub a                                         ; $74eb: $97
    ld l, b                                       ; $74ec: $68
    sub a                                         ; $74ed: $97
    ld l, b                                       ; $74ee: $68
    sub a                                         ; $74ef: $97
    adc c                                         ; $74f0: $89
    add a                                         ; $74f1: $87
    ld a, c                                       ; $74f2: $79
    add [hl]                                      ; $74f3: $86
    adc c                                         ; $74f4: $89
    halt                                          ; $74f5: $76
    adc b                                         ; $74f6: $88
    ld [hl], a                                    ; $74f7: $77
    sbc c                                         ; $74f8: $99
    ld [hl], a                                    ; $74f9: $77
    sbc b                                         ; $74fa: $98
    ld h, a                                       ; $74fb: $67
    sbc b                                         ; $74fc: $98
    ld l, b                                       ; $74fd: $68
    sub a                                         ; $74fe: $97
    ld l, b                                       ; $74ff: $68
    add [hl]                                      ; $7500: $86
    ld l, b                                       ; $7501: $68
    add [hl]                                      ; $7502: $86
    ld a, c                                       ; $7503: $79
    add [hl]                                      ; $7504: $86
    ld a, c                                       ; $7505: $79
    halt                                          ; $7506: $76
    adc c                                         ; $7507: $89
    halt                                          ; $7508: $76
    adc c                                         ; $7509: $89
    halt                                          ; $750a: $76
    sbc c                                         ; $750b: $99
    ld h, [hl]                                    ; $750c: $66
    sbc b                                         ; $750d: $98
    ld h, a                                       ; $750e: $67
    sbc b                                         ; $750f: $98
    ld l, b                                       ; $7510: $68
    xor b                                         ; $7511: $a8
    ld l, b                                       ; $7512: $68
    sub a                                         ; $7513: $97
    ld l, c                                       ; $7514: $69
    sub [hl]                                      ; $7515: $96
    ld l, c                                       ; $7516: $69
    sub [hl]                                      ; $7517: $96
    ld a, c                                       ; $7518: $79
    add [hl]                                      ; $7519: $86
    ld a, c                                       ; $751a: $79
    add [hl]                                      ; $751b: $86
    adc c                                         ; $751c: $89
    halt                                          ; $751d: $76
    adc c                                         ; $751e: $89
    ld h, [hl]                                    ; $751f: $66
    adc c                                         ; $7520: $89
    ld h, [hl]                                    ; $7521: $66
    sbc c                                         ; $7522: $99
    ld h, a                                       ; $7523: $67
    sbc b                                         ; $7524: $98
    ld h, a                                       ; $7525: $67
    sbc b                                         ; $7526: $98
    ld l, b                                       ; $7527: $68
    sub a                                         ; $7528: $97
    ld l, b                                       ; $7529: $68
    sub a                                         ; $752a: $97
    ld l, c                                       ; $752b: $69
    sub a                                         ; $752c: $97
    ld a, c                                       ; $752d: $79
    add [hl]                                      ; $752e: $86
    ld a, c                                       ; $752f: $79
    add [hl]                                      ; $7530: $86
    adc c                                         ; $7531: $89
    halt                                          ; $7532: $76
    adc c                                         ; $7533: $89
    ld [hl], a                                    ; $7534: $77
    adc b                                         ; $7535: $88
    ld h, a                                       ; $7536: $67
    adc b                                         ; $7537: $88
    ld h, a                                       ; $7538: $67
    sub a                                         ; $7539: $97
    ld l, b                                       ; $753a: $68
    sub a                                         ; $753b: $97
    ld l, b                                       ; $753c: $68
    sub a                                         ; $753d: $97
    ld a, b                                       ; $753e: $78
    add [hl]                                      ; $753f: $86
    adc c                                         ; $7540: $89
    add [hl]                                      ; $7541: $86
    ld a, c                                       ; $7542: $79
    add [hl]                                      ; $7543: $86
    adc c                                         ; $7544: $89
    halt                                          ; $7545: $76
    adc c                                         ; $7546: $89
    ld [hl], a                                    ; $7547: $77
    sbc b                                         ; $7548: $98
    ld h, a                                       ; $7549: $67
    sbc b                                         ; $754a: $98
    ld h, a                                       ; $754b: $67
    sbc b                                         ; $754c: $98
    ld l, b                                       ; $754d: $68
    sub a                                         ; $754e: $97
    ld l, b                                       ; $754f: $68
    sub [hl]                                      ; $7550: $96
    ld l, c                                       ; $7551: $69
    sub [hl]                                      ; $7552: $96
    ld a, c                                       ; $7553: $79
    add [hl]                                      ; $7554: $86
    ld a, c                                       ; $7555: $79
    add [hl]                                      ; $7556: $86
    adc c                                         ; $7557: $89
    halt                                          ; $7558: $76
    adc c                                         ; $7559: $89
    halt                                          ; $755a: $76
    adc c                                         ; $755b: $89
    ld h, [hl]                                    ; $755c: $66
    sbc c                                         ; $755d: $99
    ld h, a                                       ; $755e: $67
    sbc b                                         ; $755f: $98
    ld h, a                                       ; $7560: $67
    sbc b                                         ; $7561: $98
    ld l, b                                       ; $7562: $68
    sub a                                         ; $7563: $97
    ld l, b                                       ; $7564: $68
    sub a                                         ; $7565: $97
    ld l, b                                       ; $7566: $68
    sub [hl]                                      ; $7567: $96
    ld l, c                                       ; $7568: $69
    add [hl]                                      ; $7569: $86
    ld a, c                                       ; $756a: $79
    add [hl]                                      ; $756b: $86
    ld a, c                                       ; $756c: $79
    halt                                          ; $756d: $76
    adc c                                         ; $756e: $89
    halt                                          ; $756f: $76
    adc c                                         ; $7570: $89
    halt                                          ; $7571: $76
    adc b                                         ; $7572: $88
    ld h, a                                       ; $7573: $67
    sbc b                                         ; $7574: $98
    ld h, a                                       ; $7575: $67
    sbc b                                         ; $7576: $98
    ld l, b                                       ; $7577: $68
    sub a                                         ; $7578: $97
    ld l, b                                       ; $7579: $68
    add a                                         ; $757a: $87
    ld a, b                                       ; $757b: $78
    add a                                         ; $757c: $87

Jump_01a_757d:
    ld a, b                                       ; $757d: $78
    add [hl]                                      ; $757e: $86
    ld a, c                                       ; $757f: $79
    add [hl]                                      ; $7580: $86
    adc c                                         ; $7581: $89
    ld [hl], a                                    ; $7582: $77
    adc b                                         ; $7583: $88
    ld [hl], a                                    ; $7584: $77
    adc b                                         ; $7585: $88
    ld h, a                                       ; $7586: $67
    sbc b                                         ; $7587: $98
    ld l, b                                       ; $7588: $68
    sub a                                         ; $7589: $97
    ld l, b                                       ; $758a: $68
    sub a                                         ; $758b: $97
    ld l, b                                       ; $758c: $68
    add [hl]                                      ; $758d: $86
    ld a, b                                       ; $758e: $78
    add [hl]                                      ; $758f: $86
    adc c                                         ; $7590: $89
    add [hl]                                      ; $7591: $86
    ld a, c                                       ; $7592: $79
    halt                                          ; $7593: $76
    adc c                                         ; $7594: $89
    halt                                          ; $7595: $76
    adc c                                         ; $7596: $89
    halt                                          ; $7597: $76
    sbc b                                         ; $7598: $98
    ld h, a                                       ; $7599: $67
    sbc b                                         ; $759a: $98
    ld h, a                                       ; $759b: $67
    sbc b                                         ; $759c: $98
    ld h, a                                       ; $759d: $67
    sub a                                         ; $759e: $97
    ld l, b                                       ; $759f: $68
    sub a                                         ; $75a0: $97
    ld l, b                                       ; $75a1: $68
    sub [hl]                                      ; $75a2: $96
    ld l, c                                       ; $75a3: $69
    sub [hl]                                      ; $75a4: $96
    ld a, c                                       ; $75a5: $79
    add [hl]                                      ; $75a6: $86
    ld a, c                                       ; $75a7: $79
    add [hl]                                      ; $75a8: $86
    adc c                                         ; $75a9: $89
    halt                                          ; $75aa: $76
    adc c                                         ; $75ab: $89
    ld [hl], a                                    ; $75ac: $77
    sbc c                                         ; $75ad: $99
    ld h, [hl]                                    ; $75ae: $66
    sbc b                                         ; $75af: $98
    ld h, a                                       ; $75b0: $67
    sbc b                                         ; $75b1: $98
    ld h, a                                       ; $75b2: $67
    sub a                                         ; $75b3: $97
    ld l, b                                       ; $75b4: $68
    sub a                                         ; $75b5: $97
    ld a, b                                       ; $75b6: $78
    sub a                                         ; $75b7: $97
    ld a, b                                       ; $75b8: $78
    add a                                         ; $75b9: $87
    ld a, c                                       ; $75ba: $79
    add [hl]                                      ; $75bb: $86
    ld a, c                                       ; $75bc: $79
    ld [hl], a                                    ; $75bd: $77
    adc c                                         ; $75be: $89
    ld [hl], a                                    ; $75bf: $77
    adc b                                         ; $75c0: $88
    ld [hl], a                                    ; $75c1: $77
    adc b                                         ; $75c2: $88
    ld [hl], a                                    ; $75c3: $77
    sbc b                                         ; $75c4: $98
    ld a, b                                       ; $75c5: $78
    add a                                         ; $75c6: $87
    ld l, b                                       ; $75c7: $68
    add a                                         ; $75c8: $87
    ld a, b                                       ; $75c9: $78
    add a                                         ; $75ca: $87
    ld a, c                                       ; $75cb: $79
    add [hl]                                      ; $75cc: $86
    ld a, c                                       ; $75cd: $79
    add [hl]                                      ; $75ce: $86
    adc c                                         ; $75cf: $89
    add [hl]                                      ; $75d0: $86
    adc c                                         ; $75d1: $89
    halt                                          ; $75d2: $76
    adc b                                         ; $75d3: $88
    ld h, a                                       ; $75d4: $67
    sbc b                                         ; $75d5: $98
    ld h, a                                       ; $75d6: $67

Jump_01a_75d7:
    sbc b                                         ; $75d7: $98
    ld l, b                                       ; $75d8: $68
    sub a                                         ; $75d9: $97
    ld l, b                                       ; $75da: $68
    sub a                                         ; $75db: $97
    ld l, b                                       ; $75dc: $68
    sub [hl]                                      ; $75dd: $96
    ld l, b                                       ; $75de: $68
    add [hl]                                      ; $75df: $86
    adc c                                         ; $75e0: $89
    add [hl]                                      ; $75e1: $86
    ld a, c                                       ; $75e2: $79
    add [hl]                                      ; $75e3: $86
    adc c                                         ; $75e4: $89
    halt                                          ; $75e5: $76
    adc c                                         ; $75e6: $89
    halt                                          ; $75e7: $76
    adc c                                         ; $75e8: $89
    ld [hl], a                                    ; $75e9: $77
    sbc b                                         ; $75ea: $98
    ld h, a                                       ; $75eb: $67
    sbc b                                         ; $75ec: $98
    ld h, a                                       ; $75ed: $67
    sbc b                                         ; $75ee: $98
    ld l, b                                       ; $75ef: $68
    sub a                                         ; $75f0: $97
    ld l, b                                       ; $75f1: $68
    sub a                                         ; $75f2: $97
    ld l, b                                       ; $75f3: $68
    add a                                         ; $75f4: $87
    ld a, b                                       ; $75f5: $78
    add [hl]                                      ; $75f6: $86
    ld a, c                                       ; $75f7: $79
    add a                                         ; $75f8: $87
    adc c                                         ; $75f9: $89
    ld [hl], a                                    ; $75fa: $77
    adc b                                         ; $75fb: $88
    ld [hl], a                                    ; $75fc: $77
    adc b                                         ; $75fd: $88
    ld [hl], a                                    ; $75fe: $77
    adc b                                         ; $75ff: $88
    add a                                         ; $7600: $87
    adc b                                         ; $7601: $88
    ld a, b                                       ; $7602: $78
    add a                                         ; $7603: $87
    ld a, b                                       ; $7604: $78
    add a                                         ; $7605: $87
    ld a, b                                       ; $7606: $78
    add a                                         ; $7607: $87
    ld a, b                                       ; $7608: $78
    add a                                         ; $7609: $87
    ld a, c                                       ; $760a: $79
    add a                                         ; $760b: $87
    adc c                                         ; $760c: $89
    ld [hl], a                                    ; $760d: $77
    adc b                                         ; $760e: $88
    ld [hl], a                                    ; $760f: $77
    adc b                                         ; $7610: $88
    ld [hl], a                                    ; $7611: $77
    adc b                                         ; $7612: $88
    ld [hl], a                                    ; $7613: $77
    add a                                         ; $7614: $87
    ld l, b                                       ; $7615: $68
    add a                                         ; $7616: $87
    ld a, b                                       ; $7617: $78
    add a                                         ; $7618: $87
    ld a, b                                       ; $7619: $78
    add a                                         ; $761a: $87
    ld a, b                                       ; $761b: $78
    add [hl]                                      ; $761c: $86
    ld a, c                                       ; $761d: $79
    add [hl]                                      ; $761e: $86
    adc c                                         ; $761f: $89
    add [hl]                                      ; $7620: $86
    adc c                                         ; $7621: $89
    ld [hl], a                                    ; $7622: $77
    adc b                                         ; $7623: $88
    ld [hl], a                                    ; $7624: $77
    adc b                                         ; $7625: $88
    ld [hl], a                                    ; $7626: $77
    sbc b                                         ; $7627: $98
    ld h, a                                       ; $7628: $67
    sbc b                                         ; $7629: $98
    ld l, b                                       ; $762a: $68
    sub a                                         ; $762b: $97
    ld l, b                                       ; $762c: $68
    sub a                                         ; $762d: $97
    ld a, b                                       ; $762e: $78
    add a                                         ; $762f: $87
    adc b                                         ; $7630: $88
    add a                                         ; $7631: $87
    ld a, b                                       ; $7632: $78
    add [hl]                                      ; $7633: $86
    ld a, b                                       ; $7634: $78
    halt                                          ; $7635: $76
    adc b                                         ; $7636: $88
    ld [hl], a                                    ; $7637: $77
    adc b                                         ; $7638: $88
    ld [hl], a                                    ; $7639: $77
    adc b                                         ; $763a: $88
    ld [hl], a                                    ; $763b: $77
    adc b                                         ; $763c: $88
    ld [hl], a                                    ; $763d: $77
    adc b                                         ; $763e: $88
    ld a, b                                       ; $763f: $78
    add a                                         ; $7640: $87
    ld a, b                                       ; $7641: $78
    add a                                         ; $7642: $87
    ld a, b                                       ; $7643: $78
    add a                                         ; $7644: $87
    ld a, b                                       ; $7645: $78
    add a                                         ; $7646: $87
    ld a, b                                       ; $7647: $78
    add a                                         ; $7648: $87
    adc b                                         ; $7649: $88
    ld [hl], a                                    ; $764a: $77
    adc b                                         ; $764b: $88
    ld [hl], a                                    ; $764c: $77
    adc b                                         ; $764d: $88
    ld [hl], a                                    ; $764e: $77
    adc b                                         ; $764f: $88
    adc b                                         ; $7650: $88
    adc b                                         ; $7651: $88
    ld a, b                                       ; $7652: $78
    add a                                         ; $7653: $87
    ld a, b                                       ; $7654: $78
    add a                                         ; $7655: $87
    ld a, b                                       ; $7656: $78
    add a                                         ; $7657: $87
    ld a, b                                       ; $7658: $78
    add a                                         ; $7659: $87
    adc b                                         ; $765a: $88
    add a                                         ; $765b: $87
    adc b                                         ; $765c: $88
    ld [hl], a                                    ; $765d: $77
    adc b                                         ; $765e: $88
    ld [hl], a                                    ; $765f: $77
    adc b                                         ; $7660: $88
    ld [hl], a                                    ; $7661: $77
    adc b                                         ; $7662: $88
    ld [hl], a                                    ; $7663: $77
    adc b                                         ; $7664: $88
    ld a, b                                       ; $7665: $78
    add a                                         ; $7666: $87
    ld a, b                                       ; $7667: $78
    add a                                         ; $7668: $87
    ld a, b                                       ; $7669: $78
    add a                                         ; $766a: $87
    ld a, b                                       ; $766b: $78
    add a                                         ; $766c: $87
    ld a, b                                       ; $766d: $78
    add a                                         ; $766e: $87
    ld a, b                                       ; $766f: $78
    add a                                         ; $7670: $87
    adc b                                         ; $7671: $88
    ld [hl], a                                    ; $7672: $77
    adc b                                         ; $7673: $88
    ld [hl], a                                    ; $7674: $77
    adc b                                         ; $7675: $88
    ld [hl], a                                    ; $7676: $77
    adc b                                         ; $7677: $88
    ld [hl], a                                    ; $7678: $77
    adc b                                         ; $7679: $88
    ld [hl], a                                    ; $767a: $77
    adc b                                         ; $767b: $88
    ld a, b                                       ; $767c: $78
    add a                                         ; $767d: $87
    ld a, b                                       ; $767e: $78
    add a                                         ; $767f: $87
    adc b                                         ; $7680: $88
    add a                                         ; $7681: $87
    ld a, b                                       ; $7682: $78
    add a                                         ; $7683: $87
    ld a, b                                       ; $7684: $78
    add a                                         ; $7685: $87
    adc b                                         ; $7686: $88
    ld [hl], a                                    ; $7687: $77
    adc b                                         ; $7688: $88
    ld [hl], a                                    ; $7689: $77

Jump_01a_768a:
    adc b                                         ; $768a: $88
    ld [hl], a                                    ; $768b: $77
    adc b                                         ; $768c: $88
    ld [hl], a                                    ; $768d: $77
    add a                                         ; $768e: $87
    ld a, b                                       ; $768f: $78
    add a                                         ; $7690: $87
    ld a, b                                       ; $7691: $78
    add a                                         ; $7692: $87
    ld a, b                                       ; $7693: $78
    add a                                         ; $7694: $87
    ld a, b                                       ; $7695: $78
    add a                                         ; $7696: $87
    adc b                                         ; $7697: $88
    ld [hl], a                                    ; $7698: $77
    adc b                                         ; $7699: $88
    ld [hl], a                                    ; $769a: $77
    adc b                                         ; $769b: $88
    ld [hl], a                                    ; $769c: $77
    adc b                                         ; $769d: $88
    ld [hl], a                                    ; $769e: $77
    adc b                                         ; $769f: $88
    adc b                                         ; $76a0: $88
    add a                                         ; $76a1: $87
    ld a, b                                       ; $76a2: $78
    add a                                         ; $76a3: $87
    ld a, b                                       ; $76a4: $78
    add a                                         ; $76a5: $87
    ld a, b                                       ; $76a6: $78
    add a                                         ; $76a7: $87
    ld a, b                                       ; $76a8: $78
    add a                                         ; $76a9: $87
    ld a, b                                       ; $76aa: $78
    add a                                         ; $76ab: $87
    ld a, b                                       ; $76ac: $78
    ld [hl], a                                    ; $76ad: $77
    adc b                                         ; $76ae: $88
    ld [hl], a                                    ; $76af: $77
    adc b                                         ; $76b0: $88
    ld [hl], a                                    ; $76b1: $77
    adc b                                         ; $76b2: $88
    ld [hl], a                                    ; $76b3: $77
    adc b                                         ; $76b4: $88
    ld [hl], a                                    ; $76b5: $77
    add a                                         ; $76b6: $87
    ld a, b                                       ; $76b7: $78
    add a                                         ; $76b8: $87
    ld a, b                                       ; $76b9: $78
    add a                                         ; $76ba: $87
    ld a, b                                       ; $76bb: $78
    add a                                         ; $76bc: $87
    ld a, b                                       ; $76bd: $78
    add a                                         ; $76be: $87
    ld a, b                                       ; $76bf: $78
    add a                                         ; $76c0: $87
    adc b                                         ; $76c1: $88
    ld [hl], a                                    ; $76c2: $77
    adc b                                         ; $76c3: $88
    ld [hl], a                                    ; $76c4: $77
    adc b                                         ; $76c5: $88
    ld [hl], a                                    ; $76c6: $77
    adc b                                         ; $76c7: $88
    ld [hl], a                                    ; $76c8: $77
    adc b                                         ; $76c9: $88
    ld [hl], a                                    ; $76ca: $77
    add a                                         ; $76cb: $87
    ld a, b                                       ; $76cc: $78
    add a                                         ; $76cd: $87
    ld a, b                                       ; $76ce: $78
    add a                                         ; $76cf: $87
    adc b                                         ; $76d0: $88
    add a                                         ; $76d1: $87
    ld a, b                                       ; $76d2: $78
    add a                                         ; $76d3: $87
    adc b                                         ; $76d4: $88
    ld [hl], a                                    ; $76d5: $77
    adc b                                         ; $76d6: $88
    ld [hl], a                                    ; $76d7: $77
    adc b                                         ; $76d8: $88
    ld [hl], a                                    ; $76d9: $77
    adc b                                         ; $76da: $88
    ld [hl], a                                    ; $76db: $77
    adc b                                         ; $76dc: $88
    ld a, b                                       ; $76dd: $78
    add a                                         ; $76de: $87
    ld a, b                                       ; $76df: $78
    add a                                         ; $76e0: $87
    ld a, b                                       ; $76e1: $78
    add a                                         ; $76e2: $87
    ld a, b                                       ; $76e3: $78
    add a                                         ; $76e4: $87
    ld a, b                                       ; $76e5: $78
    add a                                         ; $76e6: $87
    ld a, b                                       ; $76e7: $78
    ld [hl], a                                    ; $76e8: $77
    adc b                                         ; $76e9: $88
    ld [hl], a                                    ; $76ea: $77
    adc b                                         ; $76eb: $88
    ld [hl], a                                    ; $76ec: $77
    adc b                                         ; $76ed: $88
    ld [hl], a                                    ; $76ee: $77
    adc b                                         ; $76ef: $88
    add a                                         ; $76f0: $87
    adc b                                         ; $76f1: $88
    ld a, b                                       ; $76f2: $78
    add a                                         ; $76f3: $87
    ld a, b                                       ; $76f4: $78
    add a                                         ; $76f5: $87
    ld a, b                                       ; $76f6: $78
    add a                                         ; $76f7: $87
    ld a, b                                       ; $76f8: $78
    add a                                         ; $76f9: $87
    ld a, b                                       ; $76fa: $78
    add a                                         ; $76fb: $87
    ld a, b                                       ; $76fc: $78
    add a                                         ; $76fd: $87
    adc b                                         ; $76fe: $88
    ld [hl], a                                    ; $76ff: $77
    adc b                                         ; $7700: $88
    ld [hl], a                                    ; $7701: $77
    adc b                                         ; $7702: $88
    ld [hl], a                                    ; $7703: $77
    adc b                                         ; $7704: $88
    ld [hl], a                                    ; $7705: $77
    adc b                                         ; $7706: $88
    ld a, b                                       ; $7707: $78
    add a                                         ; $7708: $87
    ld a, b                                       ; $7709: $78
    add a                                         ; $770a: $87
    ld a, b                                       ; $770b: $78
    add a                                         ; $770c: $87
    ld a, b                                       ; $770d: $78
    add a                                         ; $770e: $87
    ld a, b                                       ; $770f: $78
    add a                                         ; $7710: $87
    adc b                                         ; $7711: $88
    ld [hl], a                                    ; $7712: $77
    adc b                                         ; $7713: $88
    ld [hl], a                                    ; $7714: $77
    adc b                                         ; $7715: $88
    ld [hl], a                                    ; $7716: $77
    adc b                                         ; $7717: $88
    ld [hl], a                                    ; $7718: $77
    add a                                         ; $7719: $87
    ld a, b                                       ; $771a: $78
    add a                                         ; $771b: $87
    ld a, b                                       ; $771c: $78
    add a                                         ; $771d: $87
    ld a, b                                       ; $771e: $78
    add a                                         ; $771f: $87
    adc b                                         ; $7720: $88
    add a                                         ; $7721: $87
    ld a, b                                       ; $7722: $78
    ld [hl], a                                    ; $7723: $77
    adc b                                         ; $7724: $88
    ld [hl], a                                    ; $7725: $77
    adc b                                         ; $7726: $88
    ld [hl], a                                    ; $7727: $77
    adc b                                         ; $7728: $88
    ld [hl], a                                    ; $7729: $77
    adc b                                         ; $772a: $88
    ld [hl], a                                    ; $772b: $77
    adc b                                         ; $772c: $88
    ld [hl], a                                    ; $772d: $77
    add a                                         ; $772e: $87
    ld a, b                                       ; $772f: $78
    add a                                         ; $7730: $87
    ld a, b                                       ; $7731: $78
    add a                                         ; $7732: $87
    ld a, b                                       ; $7733: $78
    add a                                         ; $7734: $87
    ld a, b                                       ; $7735: $78
    add a                                         ; $7736: $87
    ld a, b                                       ; $7737: $78
    add a                                         ; $7738: $87
    adc b                                         ; $7739: $88
    ld [hl], a                                    ; $773a: $77
    adc b                                         ; $773b: $88
    ld [hl], a                                    ; $773c: $77
    adc b                                         ; $773d: $88
    ld [hl], a                                    ; $773e: $77
    adc b                                         ; $773f: $88
    add a                                         ; $7740: $87
    adc b                                         ; $7741: $88
    ld [hl], a                                    ; $7742: $77
    add a                                         ; $7743: $87
    ld a, b                                       ; $7744: $78
    add a                                         ; $7745: $87
    ld a, b                                       ; $7746: $78
    add a                                         ; $7747: $87
    ld a, b                                       ; $7748: $78
    add a                                         ; $7749: $87
    ld a, b                                       ; $774a: $78
    add a                                         ; $774b: $87
    ld a, b                                       ; $774c: $78
    add a                                         ; $774d: $87
    adc b                                         ; $774e: $88
    ld [hl], a                                    ; $774f: $77
    adc b                                         ; $7750: $88
    ld [hl], a                                    ; $7751: $77
    adc b                                         ; $7752: $88
    ld [hl], a                                    ; $7753: $77
    adc b                                         ; $7754: $88
    ld [hl], a                                    ; $7755: $77
    adc b                                         ; $7756: $88
    ld a, b                                       ; $7757: $78
    add a                                         ; $7758: $87
    ld a, b                                       ; $7759: $78
    adc b                                         ; $775a: $88
    adc b                                         ; $775b: $88
    adc b                                         ; $775c: $88
    adc b                                         ; $775d: $88
    adc b                                         ; $775e: $88
    adc b                                         ; $775f: $88
    add a                                         ; $7760: $87
    adc b                                         ; $7761: $88
    adc b                                         ; $7762: $88
    adc c                                         ; $7763: $89
    adc b                                         ; $7764: $88
    add [hl]                                      ; $7765: $86
    ld [hl], l                                    ; $7766: $75
    ld [hl], a                                    ; $7767: $77
    ld h, [hl]                                    ; $7768: $66
    ld a, b                                       ; $7769: $78
    add a                                         ; $776a: $87
    adc b                                         ; $776b: $88
    adc b                                         ; $776c: $88
    adc b                                         ; $776d: $88
    add a                                         ; $776e: $87
    ld [hl], a                                    ; $776f: $77
    add a                                         ; $7770: $87
    ld h, a                                       ; $7771: $67
    add a                                         ; $7772: $87
    sbc b                                         ; $7773: $98
    adc d                                         ; $7774: $8a
    sbc c                                         ; $7775: $99
    sub a                                         ; $7776: $97
    adc b                                         ; $7777: $88
    ld b, l                                       ; $7778: $45
    add l                                         ; $7779: $85
    halt                                          ; $777a: $76
    ld [hl], a                                    ; $777b: $77
    and a                                         ; $777c: $a7
    add a                                         ; $777d: $87
    sbc b                                         ; $777e: $98
    ld a, c                                       ; $777f: $79
    adc c                                         ; $7780: $89
    or [hl]                                       ; $7781: $b6
    ld h, h                                       ; $7782: $64
    sbc b                                         ; $7783: $98
    ld b, h                                       ; $7784: $44
    ret z                                         ; $7785: $c8

    cpl                                           ; $7786: $2f
    xor l                                         ; $7787: $ad
    ld l, b                                       ; $7788: $68
    jp hl                                         ; $7789: $e9


    dec hl                                        ; $778a: $2b
    and e                                         ; $778b: $a3
    ld d, a                                       ; $778c: $57
    sbc c                                         ; $778d: $99
    inc e                                         ; $778e: $1c
    add e                                         ; $778f: $83
    ld l, b                                       ; $7790: $68
    adc b                                         ; $7791: $88
    adc c                                         ; $7792: $89
    sub [hl]                                      ; $7793: $96
    ld a, b                                       ; $7794: $78
    add a                                         ; $7795: $87
    ld [hl], a                                    ; $7796: $77
    ld l, b                                       ; $7797: $68
    ld a, b                                       ; $7798: $78
    adc c                                         ; $7799: $89
    sbc c                                         ; $779a: $99
    sbc c                                         ; $779b: $99
    sbc d                                         ; $779c: $9a
    inc [hl]                                      ; $779d: $34
    or [hl]                                       ; $779e: $b6
    add b                                         ; $779f: $80
    ld c, d                                       ; $77a0: $4a
    ld l, a                                       ; $77a1: $6f
    sub [hl]                                      ; $77a2: $96
    jp c, $e03a                                   ; $77a3: $da $3a $e0

    adc b                                         ; $77a6: $88
    sbc c                                         ; $77a7: $99
    dec [hl]                                      ; $77a8: $35
    inc [hl]                                      ; $77a9: $34
    ld c, a                                       ; $77aa: $4f
    ld l, c                                       ; $77ab: $69
    ld h, e                                       ; $77ac: $63
    db $fd                                        ; $77ad: $fd
    dec h                                         ; $77ae: $25
    or h                                          ; $77af: $b4
    jp z, $26c1                                   ; $77b0: $ca $c1 $26

    ld [hl], l                                    ; $77b3: $75
    ld b, c                                       ; $77b4: $41
    ld d, a                                       ; $77b5: $57
    ld a, b                                       ; $77b6: $78
    halt                                          ; $77b7: $76
    sub a                                         ; $77b8: $97

jr_01a_77b9:
    adc c                                         ; $77b9: $89
    ld b, l                                       ; $77ba: $45
    ld [hl], a                                    ; $77bb: $77
    ld [hl], l                                    ; $77bc: $75
    ld a, b                                       ; $77bd: $78
    ld l, b                                       ; $77be: $68
    adc b                                         ; $77bf: $88
    xor c                                         ; $77c0: $a9
    sbc d                                         ; $77c1: $9a
    and [hl]                                      ; $77c2: $a6
    sub l                                         ; $77c3: $95
    ld d, [hl]                                    ; $77c4: $56
    ld e, c                                       ; $77c5: $59
    ld c, e                                       ; $77c6: $4b
    ld a, c                                       ; $77c7: $79
    ld h, [hl]                                    ; $77c8: $66
    ld a, h                                       ; $77c9: $7c
    push de                                       ; $77ca: $d5
    ld a, b                                       ; $77cb: $78
    cp b                                          ; $77cc: $b8
    sbc h                                         ; $77cd: $9c
    ld d, l                                       ; $77ce: $55
    dec sp                                        ; $77cf: $3b
    add h                                         ; $77d0: $84
    sbc b                                         ; $77d1: $98
    or [hl]                                       ; $77d2: $b6
    ret c                                         ; $77d3: $d8

    rst $30                                       ; $77d4: $f7
    ret c                                         ; $77d5: $d8

    ld e, e                                       ; $77d6: $5b
    xor c                                         ; $77d7: $a9
    dec [hl]                                      ; $77d8: $35
    ld h, a                                       ; $77d9: $67
    ld e, b                                       ; $77da: $58
    sub [hl]                                      ; $77db: $96
    ld d, a                                       ; $77dc: $57
    sub a                                         ; $77dd: $97
    ld l, b                                       ; $77de: $68
    xor b                                         ; $77df: $a8
    add a                                         ; $77e0: $87
    ld h, a                                       ; $77e1: $67
    halt                                          ; $77e2: $76
    add [hl]                                      ; $77e3: $86
    ld a, b                                       ; $77e4: $78
    adc b                                         ; $77e5: $88
    sbc e                                         ; $77e6: $9b
    adc c                                         ; $77e7: $89
    sub l                                         ; $77e8: $95
    ld a, b                                       ; $77e9: $78
    sub h                                         ; $77ea: $94
    scf                                           ; $77eb: $37
    cp b                                          ; $77ec: $b8
    jr z, jr_01a_7844                             ; $77ed: $28 $55

    res 6, [hl]                                   ; $77ef: $cb $b6
    ld b, a                                       ; $77f1: $47
    rst $20                                       ; $77f2: $e7

Call_01a_77f3:
    ld c, c                                       ; $77f3: $49
    jr nc, jr_01a_77b9                            ; $77f4: $30 $c3

    cp b                                          ; $77f6: $b8
    add h                                         ; $77f7: $84
    ld [$72cf], a                                 ; $77f8: $ea $cf $72
    adc c                                         ; $77fb: $89
    cp h                                          ; $77fc: $bc
    ld b, h                                       ; $77fd: $44
    add l                                         ; $77fe: $85
    ld l, e                                       ; $77ff: $6b
    ld b, h                                       ; $7800: $44
    ld a, d                                       ; $7801: $7a
    adc b                                         ; $7802: $88
    ld h, a                                       ; $7803: $67
    sub l                                         ; $7804: $95
    ld l, c                                       ; $7805: $69
    adc b                                         ; $7806: $88
    halt                                          ; $7807: $76
    ld [hl], a                                    ; $7808: $77
    ld [hl], a                                    ; $7809: $77
    add a                                         ; $780a: $87
    adc b                                         ; $780b: $88
    adc b                                         ; $780c: $88
    ld a, c                                       ; $780d: $79
    adc b                                         ; $780e: $88
    dec a                                         ; $780f: $3d
    add [hl]                                      ; $7810: $86
    inc l                                         ; $7811: $2c
    sub [hl]                                      ; $7812: $96
    or a                                          ; $7813: $b7
    and e                                         ; $7814: $a3
    dec a                                         ; $7815: $3d
    sbc d                                         ; $7816: $9a
    adc [hl]                                      ; $7817: $8e
    adc c                                         ; $7818: $89
    ld b, a                                       ; $7819: $47
    ld e, b                                       ; $781a: $58
    inc b                                         ; $781b: $04
    xor d                                         ; $781c: $aa
    adc e                                         ; $781d: $8b
    and l                                         ; $781e: $a5
    cp d                                          ; $781f: $ba
    ld l, e                                       ; $7820: $6b
    ld e, c                                       ; $7821: $59
    ld sp, hl                                     ; $7822: $f9
    ld l, $26                                     ; $7823: $2e $26
    call nc, Call_01a_6739                        ; $7825: $d4 $39 $67
    call nz, $6b87                                ; $7828: $c4 $87 $6b
    sub e                                         ; $782b: $93
    ld a, c                                       ; $782c: $79
    ld l, b                                       ; $782d: $68
    ld [hl], a                                    ; $782e: $77
    sub a                                         ; $782f: $97
    ld l, b                                       ; $7830: $68
    ld a, c                                       ; $7831: $79
    xor b                                         ; $7832: $a8
    adc b                                         ; $7833: $88
    adc b                                         ; $7834: $88
    sub b                                         ; $7835: $90
    add hl, sp                                    ; $7836: $39
    ld c, [hl]                                    ; $7837: $4e
    adc b                                         ; $7838: $88
    rst $20                                       ; $7839: $e7
    ld c, [hl]                                    ; $783a: $4e
    push hl                                       ; $783b: $e5
    ld a, d                                       ; $783c: $7a
    sbc [hl]                                      ; $783d: $9e
    ld d, h                                       ; $783e: $54
    add d                                         ; $783f: $82
    ld b, b                                       ; $7840: $40
    ret z                                         ; $7841: $c8

    sub b                                         ; $7842: $90
    rst $00                                       ; $7843: $c7

jr_01a_7844:
    ld [hl], d                                    ; $7844: $72
    db $fc                                        ; $7845: $fc
    ld d, l                                       ; $7846: $55
    ld [$4c26], a                                 ; $7847: $ea $26 $4c
    ld h, d                                       ; $784a: $62
    ret z                                         ; $784b: $c8

    ld d, l                                       ; $784c: $55
    and [hl]                                      ; $784d: $a6
    sub e                                         ; $784e: $93
    ld a, c                                       ; $784f: $79
    ld l, c                                       ; $7850: $69
    adc c                                         ; $7851: $89
    ld a, b                                       ; $7852: $78
    add a                                         ; $7853: $87
    add a                                         ; $7854: $87
    ld a, b                                       ; $7855: $78

Jump_01a_7856:
    add a                                         ; $7856: $87
    adc b                                         ; $7857: $88
    adc b                                         ; $7858: $88
    sub h                                         ; $7859: $94
    ld c, c                                       ; $785a: $49
    add b                                         ; $785b: $80
    adc c                                         ; $785c: $89
    ld a, d                                       ; $785d: $7a
    ld l, b                                       ; $785e: $68
    xor c                                         ; $785f: $a9
    adc d                                         ; $7860: $8a
    ld c, d                                       ; $7861: $4a
    and e                                         ; $7862: $a3
    db $e3                                        ; $7863: $e3
    rst $20                                       ; $7864: $e7
    ld l, l                                       ; $7865: $6d
    ld a, b                                       ; $7866: $78
    ld c, h                                       ; $7867: $4c

jr_01a_7868:
    ld c, l                                       ; $7868: $4d
    inc a                                         ; $7869: $3c
    add a                                         ; $786a: $87
    push af                                       ; $786b: $f5
    jp nz, Jump_01a_75d7                          ; $786c: $c2 $d7 $75

    jp Jump_01a_444a                              ; $786f: $c3 $4a $44


    ld h, e                                       ; $7872: $63
    add [hl]                                      ; $7873: $86
    scf                                           ; $7874: $37
    add l                                         ; $7875: $85
    adc b                                         ; $7876: $88
    ld c, c                                       ; $7877: $49
    add [hl]                                      ; $7878: $86
    ld [hl], a                                    ; $7879: $77
    ld h, l                                       ; $787a: $65
    add [hl]                                      ; $787b: $86
    adc c                                         ; $787c: $89
    add a                                         ; $787d: $87
    sbc b                                         ; $787e: $98
    add a                                         ; $787f: $87
    and l                                         ; $7880: $a5
    halt                                          ; $7881: $76
    ld d, a                                       ; $7882: $57
    ld e, h                                       ; $7883: $5c
    add e                                         ; $7884: $83
    cp c                                          ; $7885: $b9
    ld c, d                                       ; $7886: $4a
    call nc, Call_01a_77f3                        ; $7887: $d4 $f3 $77
    ret z                                         ; $788a: $c8

    dec de                                        ; $788b: $1b
    ld l, e                                       ; $788c: $6b
    scf                                           ; $788d: $37
    sub e                                         ; $788e: $93
    xor c                                         ; $788f: $a9
    ld c, c                                       ; $7890: $49
    ld [hl], l                                    ; $7891: $75
    sub $ca                                       ; $7892: $d6 $ca
    ld c, h                                       ; $7894: $4c
    ld h, a                                       ; $7895: $67

Jump_01a_7896:
    ld l, b                                       ; $7896: $68
    inc e                                         ; $7897: $1c
    scf                                           ; $7898: $37
    ld [hl], l                                    ; $7899: $75
    ld a, b                                       ; $789a: $78
    adc b                                         ; $789b: $88
    sub l                                         ; $789c: $95
    ld a, c                                       ; $789d: $79
    ld a, c                                       ; $789e: $79
    adc b                                         ; $789f: $88
    add a                                         ; $78a0: $87
    ld a, c                                       ; $78a1: $79
    adc b                                         ; $78a2: $88
    sbc c                                         ; $78a3: $99
    ld a, c                                       ; $78a4: $79
    sbc b                                         ; $78a5: $98
    sub h                                         ; $78a6: $94
    ld l, b                                       ; $78a7: $68
    rla                                           ; $78a8: $17
    ld l, l                                       ; $78a9: $6d
    adc c                                         ; $78aa: $89
    push bc                                       ; $78ab: $c5
    db $fc                                        ; $78ac: $fc
    xor d                                         ; $78ad: $aa
    inc a                                         ; $78ae: $3c
    ld c, [hl]                                    ; $78af: $4e
    add [hl]                                      ; $78b0: $86
    ld a, b                                       ; $78b1: $78
    ld h, h                                       ; $78b2: $64
    sbc b                                         ; $78b3: $98
    ld e, d                                       ; $78b4: $5a
    ld a, c                                       ; $78b5: $79
    ld e, d                                       ; $78b6: $5a
    ld a, a                                       ; $78b7: $7f
    cp c                                          ; $78b8: $b9
    adc d                                         ; $78b9: $8a
    ld c, [hl]                                    ; $78ba: $4e
    ld l, c                                       ; $78bb: $69
    ld c, b                                       ; $78bc: $48
    ld h, l                                       ; $78bd: $65
    halt                                          ; $78be: $76
    ld [hl], l                                    ; $78bf: $75
    adc b                                         ; $78c0: $88
    sub l                                         ; $78c1: $95
    ld a, c                                       ; $78c2: $79
    adc b                                         ; $78c3: $88
    ld a, c                                       ; $78c4: $79
    sub a                                         ; $78c5: $97
    ld a, b                                       ; $78c6: $78
    ld a, b                                       ; $78c7: $78
    ld [hl], a                                    ; $78c8: $77
    adc c                                         ; $78c9: $89
    sub l                                         ; $78ca: $95
    ret c                                         ; $78cb: $d8

    ld a, h                                       ; $78cc: $7c
    jr c, jr_01a_7868                             ; $78cd: $38 $99

    ld h, d                                       ; $78cf: $62
    adc d                                         ; $78d0: $8a
    inc [hl]                                      ; $78d1: $34
    or a                                          ; $78d2: $b7
    ld c, h                                       ; $78d3: $4c
    jp c, $ea45                                   ; $78d4: $da $45 $ea

    ld h, [hl]                                    ; $78d7: $66
    ret nz                                        ; $78d8: $c0

    ld e, h                                       ; $78d9: $5c
    ld h, a                                       ; $78da: $67
    ld a, c                                       ; $78db: $79
    ld a, d                                       ; $78dc: $7a
    halt                                          ; $78dd: $76
    xor e                                         ; $78de: $ab
    xor b                                         ; $78df: $a8
    cp e                                          ; $78e0: $bb
    ld l, h                                       ; $78e1: $6c
    or a                                          ; $78e2: $b7
    ld [hl], e                                    ; $78e3: $73
    ld d, l                                       ; $78e4: $55
    add l                                         ; $78e5: $85
    ld a, c                                       ; $78e6: $79
    ld c, c                                       ; $78e7: $49
    sub a                                         ; $78e8: $97
    adc b                                         ; $78e9: $88
    ld d, l                                       ; $78ea: $55
    adc b                                         ; $78eb: $88
    halt                                          ; $78ec: $76
    ld a, b                                       ; $78ed: $78
    ld l, b                                       ; $78ee: $68
    ld [hl], a                                    ; $78ef: $77
    add a                                         ; $78f0: $87
    ld [hl], a                                    ; $78f1: $77
    ld [hl], a                                    ; $78f2: $77
    ld [hl], h                                    ; $78f3: $74
    rst $10                                       ; $78f4: $d7
    ld a, c                                       ; $78f5: $79
    add l                                         ; $78f6: $85
    xor b                                         ; $78f7: $a8
    ld l, b                                       ; $78f8: $68
    ld c, d                                       ; $78f9: $4a
    ld a, d                                       ; $78fa: $7a
    scf                                           ; $78fb: $37
    jp Jump_01a_6788                              ; $78fc: $c3 $88 $67


    inc l                                         ; $78ff: $2c
    ld c, c                                       ; $7900: $49
    call nz, $b7f6                                ; $7901: $c4 $f6 $b7
    sub l                                         ; $7904: $95
    ld a, h                                       ; $7905: $7c
    halt                                          ; $7906: $76
    ld [hl], b                                    ; $7907: $70
    and [hl]                                      ; $7908: $a6
    sub a                                         ; $7909: $97
    ld c, d                                       ; $790a: $4a
    ld e, b                                       ; $790b: $58
    sub a                                         ; $790c: $97
    sub l                                         ; $790d: $95
    sbc c                                         ; $790e: $99
    and [hl]                                      ; $790f: $a6
    ld e, c                                       ; $7910: $59
    adc b                                         ; $7911: $88
    adc c                                         ; $7912: $89
    add a                                         ; $7913: $87
    adc b                                         ; $7914: $88
    sub a                                         ; $7915: $97
    ld a, b                                       ; $7916: $78
    adc b                                         ; $7917: $88
    add c                                         ; $7918: $81
    adc c                                         ; $7919: $89
    ld h, a                                       ; $791a: $67
    and [hl]                                      ; $791b: $a6
    cp b                                          ; $791c: $b8
    jp c, $d7e4                                   ; $791d: $da $e4 $d7

    and [hl]                                      ; $7920: $a6
    add h                                         ; $7921: $84
    add a                                         ; $7922: $87
    dec l                                         ; $7923: $2d
    rlca                                          ; $7924: $07
    add a                                         ; $7925: $87
    ld h, h                                       ; $7926: $64
    sub e                                         ; $7927: $93
    ld sp, hl                                     ; $7928: $f9
    ld e, h                                       ; $7929: $5c
    sub h                                         ; $792a: $94
    push af                                       ; $792b: $f5
    adc c                                         ; $792c: $89
    ld e, b                                       ; $792d: $58
    ld c, b                                       ; $792e: $48
    ld e, c                                       ; $792f: $59
    ld d, h                                       ; $7930: $54
    add $74                                       ; $7931: $c6 $74
    cp c                                          ; $7933: $b9
    ld h, [hl]                                    ; $7934: $66
    cp e                                          ; $7935: $bb
    ld a, b                                       ; $7936: $78
    adc b                                         ; $7937: $88
    sbc b                                         ; $7938: $98
    ld l, b                                       ; $7939: $68
    halt                                          ; $793a: $76
    adc b                                         ; $793b: $88
    ld l, b                                       ; $793c: $68
    add a                                         ; $793d: $87
    ld [hl], a                                    ; $793e: $77
    add b                                         ; $793f: $80
    adc c                                         ; $7940: $89
    ld h, h                                       ; $7941: $64
    ld [$6c86], a                                 ; $7942: $ea $86 $6c
    ld [c], a                                     ; $7945: $e2
    push hl                                       ; $7946: $e5
    sub e                                         ; $7947: $93
    cp c                                          ; $7948: $b9
    or h                                          ; $7949: $b4
    adc b                                         ; $794a: $88
    and h                                         ; $794b: $a4
    sbc b                                         ; $794c: $98
    ld b, [hl]                                    ; $794d: $46
    xor c                                         ; $794e: $a9
    ld l, h                                       ; $794f: $6c
    cpl                                           ; $7950: $2f
    adc b                                         ; $7951: $88
    xor b                                         ; $7952: $a8
    ld b, h                                       ; $7953: $44
    or l                                          ; $7954: $b5
    inc sp                                        ; $7955: $33
    inc [hl]                                      ; $7956: $34
    ld c, d                                       ; $7957: $4a
    ld a, b                                       ; $7958: $78
    halt                                          ; $7959: $76
    ret z                                         ; $795a: $c8

    adc d                                         ; $795b: $8a
    add a                                         ; $795c: $87
    adc d                                         ; $795d: $8a
    ld [hl], a                                    ; $795e: $77
    sub a                                         ; $795f: $97
    add a                                         ; $7960: $87
    ld a, b                                       ; $7961: $78
    ld h, [hl]                                    ; $7962: $66
    add l                                         ; $7963: $85
    ld [hl], a                                    ; $7964: $77
    ld d, l                                       ; $7965: $55
    add c                                         ; $7966: $81
    adc c                                         ; $7967: $89
    sbc d                                         ; $7968: $9a
    ld a, b                                       ; $7969: $78
    ld e, l                                       ; $796a: $5d
    ld c, l                                       ; $796b: $4d
    jp nz, $d6d2                                  ; $796c: $c2 $d2 $d6

    sub $26                                       ; $796f: $d6 $26
    ld b, l                                       ; $7971: $45
    and h                                         ; $7972: $a4
    and [hl]                                      ; $7973: $a6
    cp h                                          ; $7974: $bc
    cp b                                          ; $7975: $b8
    cp l                                          ; $7976: $bd
    ld a, [de]                                    ; $7977: $1a
    or b                                          ; $7978: $b0
    ld h, l                                       ; $7979: $65
    ld a, c                                       ; $797a: $79
    ld b, h                                       ; $797b: $44
    ld a, b                                       ; $797c: $78
    inc l                                         ; $797d: $2c
    ld [hl], l                                    ; $797e: $75
    ld h, a                                       ; $797f: $67
    adc b                                         ; $7980: $88
    sbc b                                         ; $7981: $98
    or h                                          ; $7982: $b4
    adc d                                         ; $7983: $8a
    adc b                                         ; $7984: $88
    add [hl]                                      ; $7985: $86
    add a                                         ; $7986: $87
    ld [hl], a                                    ; $7987: $77
    ld a, b                                       ; $7988: $78
    ld [hl], a                                    ; $7989: $77
    add [hl]                                      ; $798a: $86
    ld a, b                                       ; $798b: $78
    ld a, [hl-]                                   ; $798c: $3a
    add a                                         ; $798d: $87
    ret                                           ; $798e: $c9


    ld a, [hl]                                    ; $798f: $7e
    sbc c                                         ; $7990: $99
    or $a7                                        ; $7991: $f6 $a7
    ld l, c                                       ; $7993: $69
    sub d                                         ; $7994: $92
    ld a, d                                       ; $7995: $7a
    inc l                                         ; $7996: $2c
    add h                                         ; $7997: $84
    ld a, l                                       ; $7998: $7d
    adc b                                         ; $7999: $88
    ld hl, sp-$56                                 ; $799a: $f8 $aa
    or [hl]                                       ; $799c: $b6
    call nc, $9567                                ; $799d: $d4 $67 $95
    sub [hl]                                      ; $79a0: $96
    ld a, [de]                                    ; $79a1: $1a
    inc [hl]                                      ; $79a2: $34
    add a                                         ; $79a3: $87
    ld d, [hl]                                    ; $79a4: $56
    sub [hl]                                      ; $79a5: $96
    ret                                           ; $79a6: $c9


    adc h                                         ; $79a7: $8c
    adc b                                         ; $79a8: $88
    sbc b                                         ; $79a9: $98
    adc b                                         ; $79aa: $88
    add a                                         ; $79ab: $87

Jump_01a_79ac:
    adc c                                         ; $79ac: $89
    ld a, b                                       ; $79ad: $78
    add a                                         ; $79ae: $87
    halt                                          ; $79af: $76
    add a                                         ; $79b0: $87
    adc c                                         ; $79b1: $89
    ld c, c                                       ; $79b2: $49
    call nz, $96c9                                ; $79b3: $c4 $c9 $96
    or d                                          ; $79b6: $b2
    sbc h                                         ; $79b7: $9c
    ld [$2786], sp                                ; $79b8: $08 $86 $27
    ld e, c                                       ; $79bb: $59

jr_01a_79bc:
    cp b                                          ; $79bc: $b8
    ld e, [hl]                                    ; $79bd: $5e
    ld a, $7b                                     ; $79be: $3e $7b
    jp nz, $a5d6                                  ; $79c0: $c2 $d6 $a5

    add h                                         ; $79c3: $84
    ld a, e                                       ; $79c4: $7b
    ld l, d                                       ; $79c5: $6a
    dec [hl]                                      ; $79c6: $35
    ld b, l                                       ; $79c7: $45
    sub l                                         ; $79c8: $95
    ld h, [hl]                                    ; $79c9: $66
    ld b, e                                       ; $79ca: $43
    cp b                                          ; $79cb: $b8
    adc c                                         ; $79cc: $89
    ld a, b                                       ; $79cd: $78
    sbc b                                         ; $79ce: $98
    ld a, l                                       ; $79cf: $7d
    add a                                         ; $79d0: $87
    adc b                                         ; $79d1: $88
    adc b                                         ; $79d2: $88
    ld a, b                                       ; $79d3: $78
    ld [hl], a                                    ; $79d4: $77
    ld l, b                                       ; $79d5: $68
    ld [hl], a                                    ; $79d6: $77
    ld [hl], a                                    ; $79d7: $77
    ld a, d                                       ; $79d8: $7a
    ld [hl], l                                    ; $79d9: $75
    xor d                                         ; $79da: $aa
    ld a, [hl+]                                   ; $79db: $2a
    xor d                                         ; $79dc: $aa
    sbc c                                         ; $79dd: $99
    cp d                                          ; $79de: $ba
    sub a                                         ; $79df: $97
    ld c, d                                       ; $79e0: $4a
    ld b, $95                                     ; $79e1: $06 $95
    xor c                                         ; $79e3: $a9
    ld c, e                                       ; $79e4: $4b
    or $8a                                        ; $79e5: $f6 $8a
    xor e                                         ; $79e7: $ab
    sub [hl]                                      ; $79e8: $96
    or a                                          ; $79e9: $b7
    scf                                           ; $79ea: $37
    and [hl]                                      ; $79eb: $a6
    sub e                                         ; $79ec: $93
    ld c, b                                       ; $79ed: $48
    ld h, d                                       ; $79ee: $62
    xor b                                         ; $79ef: $a8
    add a                                         ; $79f0: $87
    ld e, c                                       ; $79f1: $59
    xor b                                         ; $79f2: $a8
    ld a, h                                       ; $79f3: $7c
    sbc c                                         ; $79f4: $99
    ld a, d                                       ; $79f5: $7a
    ld a, b                                       ; $79f6: $78
    adc b                                         ; $79f7: $88
    add a                                         ; $79f8: $87
    ld [hl], a                                    ; $79f9: $77
    ld h, a                                       ; $79fa: $67
    ld d, [hl]                                    ; $79fb: $56
    ld h, [hl]                                    ; $79fc: $66
    ld h, a                                       ; $79fd: $67
    ld a, c                                       ; $79fe: $79
    or d                                          ; $79ff: $b2
    ld l, e                                       ; $7a00: $6b
    xor h                                         ; $7a01: $ac

jr_01a_7a02:
    ld [hl], $a7                                  ; $7a02: $36 $a7
    add a                                         ; $7a04: $87
    rst $00                                       ; $7a05: $c7
    ld [hl], d                                    ; $7a06: $72
    and a                                         ; $7a07: $a7
    ld a, d                                       ; $7a08: $7a
    ld [hl], $bf                                  ; $7a09: $36 $bf
    add l                                         ; $7a0b: $85
    db $dd                                        ; $7a0c: $dd
    scf                                           ; $7a0d: $37
    and a                                         ; $7a0e: $a7
    call nz, Call_01a_6683                        ; $7a0f: $c4 $83 $66
    ld l, c                                       ; $7a12: $69
    ld [hl], $55                                  ; $7a13: $36 $55
    jr c, jr_01a_79bc                             ; $7a15: $38 $a5

    sub l                                         ; $7a17: $95
    xor c                                         ; $7a18: $a9
    adc c                                         ; $7a19: $89
    xor d                                         ; $7a1a: $aa
    ld l, b                                       ; $7a1b: $68
    adc b                                         ; $7a1c: $88
    ld [hl], a                                    ; $7a1d: $77
    ld l, b                                       ; $7a1e: $68
    ld h, [hl]                                    ; $7a1f: $66
    add a                                         ; $7a20: $87
    ld [hl], a                                    ; $7a21: $77
    ld h, [hl]                                    ; $7a22: $66
    sub h                                         ; $7a23: $94
    ld e, b                                       ; $7a24: $58
    and c                                         ; $7a25: $a1
    sbc e                                         ; $7a26: $9b
    and c                                         ; $7a27: $a1
    sbc d                                         ; $7a28: $9a
    ret z                                         ; $7a29: $c8

    ld l, d                                       ; $7a2a: $6a
    ld d, d                                       ; $7a2b: $52
    and b                                         ; $7a2c: $a0
    and a                                         ; $7a2d: $a7
    add hl, hl                                    ; $7a2e: $29
    jp c, $af67                                   ; $7a2f: $da $67 $af

    sub a                                         ; $7a32: $97
    rst $20                                       ; $7a33: $e7
    sub [hl]                                      ; $7a34: $96
    ld l, h                                       ; $7a35: $6c
    ld l, c                                       ; $7a36: $69
    ld l, b                                       ; $7a37: $68
    ld sp, $7586                                  ; $7a38: $31 $86 $75
    ld e, b                                       ; $7a3b: $58
    ld h, [hl]                                    ; $7a3c: $66
    cp d                                          ; $7a3d: $ba
    xor c                                         ; $7a3e: $a9
    sbc h                                         ; $7a3f: $9c
    cp c                                          ; $7a40: $b9
    sbc d                                         ; $7a41: $9a
    ld [hl], a                                    ; $7a42: $77
    add a                                         ; $7a43: $87
    ld [hl], a                                    ; $7a44: $77
    ld d, a                                       ; $7a45: $57
    ld d, [hl]                                    ; $7a46: $56
    ld d, l                                       ; $7a47: $55
    ld d, a                                       ; $7a48: $57
    ld h, a                                       ; $7a49: $67
    adc b                                         ; $7a4a: $88
    adc c                                         ; $7a4b: $89
    sbc d                                         ; $7a4c: $9a
    jp Jump_01a_757d                              ; $7a4d: $c3 $7d $75


    adc [hl]                                      ; $7a50: $8e
    jr z, jr_01a_7ac8                             ; $7a51: $28 $75

    and h                                         ; $7a53: $a4
    ld e, a                                       ; $7a54: $5f
    ld b, h                                       ; $7a55: $44
    and $9c                                       ; $7a56: $e6 $9c
    ld h, l                                       ; $7a58: $65
    xor c                                         ; $7a59: $a9
    jr c, jr_01a_7a02                             ; $7a5a: $38 $a6

    ld h, e                                       ; $7a5c: $63
    ld d, [hl]                                    ; $7a5d: $56
    halt                                          ; $7a5e: $76
    dec [hl]                                      ; $7a5f: $35
    add h                                         ; $7a60: $84
    ld l, d                                       ; $7a61: $6a
    sbc b                                         ; $7a62: $98
    ld a, c                                       ; $7a63: $79
    ld a, e                                       ; $7a64: $7b
    sbc d                                         ; $7a65: $9a
    xor b                                         ; $7a66: $a8
    ld a, c                                       ; $7a67: $79
    add a                                         ; $7a68: $87
    ld a, b                                       ; $7a69: $78
    ld h, [hl]                                    ; $7a6a: $66
    ld [hl], a                                    ; $7a6b: $77
    ld h, [hl]                                    ; $7a6c: $66
    ld h, [hl]                                    ; $7a6d: $66
    ld [hl], a                                    ; $7a6e: $77
    adc c                                         ; $7a6f: $89
    and [hl]                                      ; $7a70: $a6
    ld l, d                                       ; $7a71: $6a
    and [hl]                                      ; $7a72: $a6
    ei                                            ; $7a73: $fb
    jr c, jr_01a_7a02                             ; $7a74: $38 $8c

    ld [hl], d                                    ; $7a76: $72
    sbc d                                         ; $7a77: $9a
    ld [hl], e                                    ; $7a78: $73
    ld l, d                                       ; $7a79: $6a
    ld [hl], e                                    ; $7a7a: $73
    ld [hl], a                                    ; $7a7b: $77
    or $7c                                        ; $7a7c: $f6 $7c
    rst $10                                       ; $7a7e: $d7
    and h                                         ; $7a7f: $a4
    sub $a6                                       ; $7a80: $d6 $a6
    and [hl]                                      ; $7a82: $a6

jr_01a_7a83:
    dec b                                         ; $7a83: $05
    ld l, c                                       ; $7a84: $69
    ld h, c                                       ; $7a85: $61
    ld d, a                                       ; $7a86: $57
    inc a                                         ; $7a87: $3c
    ld a, d                                       ; $7a88: $7a
    and [hl]                                      ; $7a89: $a6
    adc d                                         ; $7a8a: $8a
    ret z                                         ; $7a8b: $c8

    xor c                                         ; $7a8c: $a9
    ld a, b                                       ; $7a8d: $78
    add [hl]                                      ; $7a8e: $86
    add a                                         ; $7a8f: $87
    add l                                         ; $7a90: $85
    ld h, [hl]                                    ; $7a91: $66
    ld h, [hl]                                    ; $7a92: $66
    ld d, a                                       ; $7a93: $57
    ld e, b                                       ; $7a94: $58
    halt                                          ; $7a95: $76
    sbc b                                         ; $7a96: $98
    xor c                                         ; $7a97: $a9
    xor h                                         ; $7a98: $ac
    ld h, $d1                                     ; $7a99: $26 $d1
    ld h, a                                       ; $7a9b: $67
    ld e, e                                       ; $7a9c: $5b
    ld e, e                                       ; $7a9d: $5b
    ld hl, $a0c6                                  ; $7a9e: $21 $c6 $a0
    ld hl, sp+$7c                                 ; $7aa1: $f8 $7c
    call z, Call_01a_6d7c                         ; $7aa3: $cc $7c $6d
    cp d                                          ; $7aa6: $ba
    ld a, b                                       ; $7aa7: $78
    ld [hl], $58                                  ; $7aa8: $36 $58
    ld e, b                                       ; $7aaa: $58
    ld d, e                                       ; $7aab: $53
    and l                                         ; $7aac: $a5
    ld a, c                                       ; $7aad: $79
    ld a, c                                       ; $7aae: $79
    adc c                                         ; $7aaf: $89
    sbc e                                         ; $7ab0: $9b
    xor c                                         ; $7ab1: $a9
    sbc c                                         ; $7ab2: $99
    and [hl]                                      ; $7ab3: $a6
    ld a, b                                       ; $7ab4: $78
    ld h, [hl]                                    ; $7ab5: $66
    halt                                          ; $7ab6: $76
    ld d, h                                       ; $7ab7: $54
    ld [hl], l                                    ; $7ab8: $75
    ld d, [hl]                                    ; $7ab9: $56
    ld d, [hl]                                    ; $7aba: $56
    ld a, c                                       ; $7abb: $79
    ld l, b                                       ; $7abc: $68
    sbc c                                         ; $7abd: $99
    ret                                           ; $7abe: $c9


    sbc [hl]                                      ; $7abf: $9e
    ld h, a                                       ; $7ac0: $67
    add sp, $09                                   ; $7ac1: $e8 $09
    or d                                          ; $7ac3: $b2
    ld a, d                                       ; $7ac4: $7a

jr_01a_7ac5:
    ld [hl], l                                    ; $7ac5: $75
    ld b, e                                       ; $7ac6: $43
    adc a                                         ; $7ac7: $8f

jr_01a_7ac8:
    ld e, d                                       ; $7ac8: $5a
    adc b                                         ; $7ac9: $88
    ld a, h                                       ; $7aca: $7c
    jp $558a                                      ; $7acb: $c3 $8a $55


    ld [hl], h                                    ; $7ace: $74
    jr c, jr_01a_7a83                             ; $7acf: $38 $b2

    ld h, h                                       ; $7ad1: $64
    add a                                         ; $7ad2: $87
    ld [hl], l                                    ; $7ad3: $75
    or l                                          ; $7ad4: $b5
    ld l, c                                       ; $7ad5: $69
    sbc d                                         ; $7ad6: $9a
    cp b                                          ; $7ad7: $b8
    sbc b                                         ; $7ad8: $98
    or h                                          ; $7ad9: $b4

Jump_01a_7ada:
    sbc c                                         ; $7ada: $99
    halt                                          ; $7adb: $76
    ld h, a                                       ; $7adc: $67
    add [hl]                                      ; $7add: $86
    ld h, [hl]                                    ; $7ade: $66
    halt                                          ; $7adf: $76
    add a                                         ; $7ae0: $87
    ld a, b                                       ; $7ae1: $78
    and l                                         ; $7ae2: $a5
    jp hl                                         ; $7ae3: $e9


    adc d                                         ; $7ae4: $8a
    add $a3                                       ; $7ae5: $c6 $a3
    jp hl                                         ; $7ae7: $e9


    and h                                         ; $7ae8: $a4
    ld a, [hl-]                                   ; $7ae9: $3a
    ld a, b                                       ; $7aea: $78
    jr jr_01a_7ac5                                ; $7aeb: $18 $d8

    ld [hl], l                                    ; $7aed: $75
    ld sp, hl                                     ; $7aee: $f9
    inc a                                         ; $7aef: $3c
    sub l                                         ; $7af0: $95
    add $87                                       ; $7af1: $c6 $87
    and a                                         ; $7af3: $a7
    ld [$6681], sp                                ; $7af4: $08 $81 $66
    ld [hl], a                                    ; $7af7: $77
    ld h, h                                       ; $7af8: $64
    ld l, b                                       ; $7af9: $68
    halt                                          ; $7afa: $76
    adc c                                         ; $7afb: $89
    sbc d                                         ; $7afc: $9a
    ld a, b                                       ; $7afd: $78
    xor b                                         ; $7afe: $a8
    adc b                                         ; $7aff: $88
    add a                                         ; $7b00: $87
    ld [hl], a                                    ; $7b01: $77
    ld h, a                                       ; $7b02: $67
    ld d, a                                       ; $7b03: $57
    ld [hl], l                                    ; $7b04: $75
    add a                                         ; $7b05: $87
    adc b                                         ; $7b06: $88
    ld l, d                                       ; $7b07: $6a
    ld a, c                                       ; $7b08: $79
    rst $00                                       ; $7b09: $c7
    ld a, l                                       ; $7b0a: $7d
    ld c, c                                       ; $7b0b: $49
    xor e                                         ; $7b0c: $ab
    ld e, d                                       ; $7b0d: $5a
    add b                                         ; $7b0e: $80
    add l                                         ; $7b0f: $85
    ld [hl], $b9                                  ; $7b10: $36 $b9
    ld l, b                                       ; $7b12: $68
    ld a, d                                       ; $7b13: $7a
    or e                                          ; $7b14: $b3
    or $ad                                        ; $7b15: $f6 $ad
    jr z, @-$75                                   ; $7b17: $28 $89

    ld h, e                                       ; $7b19: $63
    ret nz                                        ; $7b1a: $c0

    and l                                         ; $7b1b: $a5
    ld b, l                                       ; $7b1c: $45
    jr z, jr_01a_7b60                             ; $7b1d: $28 $41

    or a                                          ; $7b1f: $b7
    rst $00                                       ; $7b20: $c7
    or h                                          ; $7b21: $b4
    xor e                                         ; $7b22: $ab
    sbc c                                         ; $7b23: $99
    ret c                                         ; $7b24: $d8

    adc b                                         ; $7b25: $88
    and [hl]                                      ; $7b26: $a6
    ld e, c                                       ; $7b27: $59
    ld [hl], a                                    ; $7b28: $77
    ld [hl], a                                    ; $7b29: $77
    ld h, a                                       ; $7b2a: $67
    ld a, b                                       ; $7b2b: $78
    adc b                                         ; $7b2c: $88
    sbc c                                         ; $7b2d: $99
    adc c                                         ; $7b2e: $89
    xor h                                         ; $7b2f: $ac
    ld l, b                                       ; $7b30: $68
    or h                                          ; $7b31: $b4
    or [hl]                                       ; $7b32: $b6
    ld [hl], h                                    ; $7b33: $74
    or a                                          ; $7b34: $b7
    add hl, bc                                    ; $7b35: $09

jr_01a_7b36:
    ld [hl], a                                    ; $7b36: $77
    or e                                          ; $7b37: $b3
    or l                                          ; $7b38: $b5
    rst $20                                       ; $7b39: $e7
    ld a, [hl]                                    ; $7b3a: $7e
    adc b                                         ; $7b3b: $88
    or [hl]                                       ; $7b3c: $b6
    db $e4                                        ; $7b3d: $e4
    ldh a, [$a9]                                  ; $7b3e: $f0 $a9
    ld sp, $74a1                                  ; $7b40: $31 $a1 $74
    ld [hl], d                                    ; $7b43: $72
    jp $d9a5                                      ; $7b44: $c3 $a5 $d9


    sbc e                                         ; $7b47: $9b
    add a                                         ; $7b48: $87
    res 4, [hl]                                   ; $7b49: $cb $a6
    xor b                                         ; $7b4b: $a8
    jr c, jr_01a_7bc2                             ; $7b4c: $38 $74

    ld h, h                                       ; $7b4e: $64
    ld d, l                                       ; $7b4f: $55
    ld b, [hl]                                    ; $7b50: $46
    ld [hl], l                                    ; $7b51: $75
    add a                                         ; $7b52: $87
    ld l, b                                       ; $7b53: $68
    sbc b                                         ; $7b54: $98
    rst $00                                       ; $7b55: $c7
    sbc c                                         ; $7b56: $99
    sbc b                                         ; $7b57: $98
    ld e, b                                       ; $7b58: $58
    add a                                         ; $7b59: $87
    ld [hl], h                                    ; $7b5a: $74
    call nz, Call_01a_6a66                        ; $7b5b: $c4 $66 $6a
    xor d                                         ; $7b5e: $aa
    xor [hl]                                      ; $7b5f: $ae

jr_01a_7b60:
    db $fd                                        ; $7b60: $fd
    ld sp, hl                                     ; $7b61: $f9
    db $db                                        ; $7b62: $db
    ld l, b                                       ; $7b63: $68
    ld d, [hl]                                    ; $7b64: $56
    ld [hl], a                                    ; $7b65: $77
    ld h, $44                                     ; $7b66: $26 $44
    ld [$4667], sp                                ; $7b68: $08 $67 $46
    ld a, b                                       ; $7b6b: $78
    ld l, d                                       ; $7b6c: $6a
    ld l, l                                       ; $7b6d: $6d
    or a                                          ; $7b6e: $b7
    ld a, h                                       ; $7b6f: $7c
    ld l, c                                       ; $7b70: $69
    ld [hl], a                                    ; $7b71: $77
    ld e, b                                       ; $7b72: $58
    ld h, l                                       ; $7b73: $65
    ld d, a                                       ; $7b74: $57
    ld d, [hl]                                    ; $7b75: $56
    ld d, a                                       ; $7b76: $57
    add a                                         ; $7b77: $87
    add a                                         ; $7b78: $87
    sbc d                                         ; $7b79: $9a
    xor e                                         ; $7b7a: $ab
    jp z, Jump_01a_7ada                           ; $7b7b: $ca $da $7a

    xor b                                         ; $7b7e: $a8
    ld h, a                                       ; $7b7f: $67
    ld c, d                                       ; $7b80: $4a
    ld h, a                                       ; $7b81: $67
    adc c                                         ; $7b82: $89
    ld l, d                                       ; $7b83: $6a
    xor a                                         ; $7b84: $af
    db $eb                                        ; $7b85: $eb
    xor [hl]                                      ; $7b86: $ae
    ld l, h                                       ; $7b87: $6c
    ld a, d                                       ; $7b88: $7a
    ld a, b                                       ; $7b89: $78
    ld d, l                                       ; $7b8a: $55
    ld c, d                                       ; $7b8b: $4a
    dec h                                         ; $7b8c: $25
    db $10                                        ; $7b8d: $10
    ld b, l                                       ; $7b8e: $45
    ld b, e                                       ; $7b8f: $43
    add a                                         ; $7b90: $87
    ld h, a                                       ; $7b91: $67
    adc e                                         ; $7b92: $8b
    res 7, e                                      ; $7b93: $cb $bb
    cp e                                          ; $7b95: $bb
    cp b                                          ; $7b96: $b8
    adc b                                         ; $7b97: $88
    halt                                          ; $7b98: $76
    ld d, [hl]                                    ; $7b99: $56
    ld h, l                                       ; $7b9a: $65
    ld h, [hl]                                    ; $7b9b: $66
    ld h, [hl]                                    ; $7b9c: $66
    ld h, a                                       ; $7b9d: $67
    ld l, c                                       ; $7b9e: $69
    xor c                                         ; $7b9f: $a9
    adc d                                         ; $7ba0: $8a
    and a                                         ; $7ba1: $a7
    sbc c                                         ; $7ba2: $99
    add [hl]                                      ; $7ba3: $86
    add a                                         ; $7ba4: $87
    ld h, [hl]                                    ; $7ba5: $66
    ld d, l                                       ; $7ba6: $55
    ld b, l                                       ; $7ba7: $45
    ld [hl], a                                    ; $7ba8: $77
    ld l, d                                       ; $7ba9: $6a
    ld a, e                                       ; $7baa: $7b
    sbc d                                         ; $7bab: $9a
    xor d                                         ; $7bac: $aa
    adc e                                         ; $7bad: $8b
    jr z, jr_01a_7b36                             ; $7bae: $28 $86

    adc d                                         ; $7bb0: $8a
    ld h, d                                       ; $7bb1: $62
    add hl, sp                                    ; $7bb2: $39
    ld [$b664], sp                                ; $7bb3: $08 $64 $b6
    scf                                           ; $7bb6: $37
    ld c, b                                       ; $7bb7: $48
    xor b                                         ; $7bb8: $a8
    ld a, h                                       ; $7bb9: $7c
    reti                                          ; $7bba: $d9


    sbc l                                         ; $7bbb: $9d
    ld b, a                                       ; $7bbc: $47
    sub a                                         ; $7bbd: $97
    ld [hl], a                                    ; $7bbe: $77
    ld h, [hl]                                    ; $7bbf: $66
    ld d, a                                       ; $7bc0: $57
    ld d, a                                       ; $7bc1: $57

jr_01a_7bc2:
    ld h, [hl]                                    ; $7bc2: $66
    add a                                         ; $7bc3: $87
    ld a, b                                       ; $7bc4: $78
    xor h                                         ; $7bc5: $ac
    ld a, e                                       ; $7bc6: $7b
    cp b                                          ; $7bc7: $b8
    and l                                         ; $7bc8: $a5
    cp b                                          ; $7bc9: $b8
    adc b                                         ; $7bca: $88
    ld e, b                                       ; $7bcb: $58
    or h                                          ; $7bcc: $b4
    ld c, b                                       ; $7bcd: $48
    jp z, $aca5                                   ; $7bce: $ca $a5 $ac

    ld a, d                                       ; $7bd1: $7a
    ld e, l                                       ; $7bd2: $5d
    db $e4                                        ; $7bd3: $e4
    xor c                                         ; $7bd4: $a9
    cp l                                          ; $7bd5: $bd
    inc c                                         ; $7bd6: $0c
    ld d, c                                       ; $7bd7: $51
    and b                                         ; $7bd8: $a0
    ld [hl], c                                    ; $7bd9: $71
    adc e                                         ; $7bda: $8b
    add hl, sp                                    ; $7bdb: $39
    ld [hl], e                                    ; $7bdc: $73
    ret                                           ; $7bdd: $c9


    ld l, d                                       ; $7bde: $6a
    ld [$94ac], a                                 ; $7bdf: $ea $ac $94
    sbc c                                         ; $7be2: $99
    ld c, h                                       ; $7be3: $4c
    ld [hl], l                                    ; $7be4: $75
    ld d, [hl]                                    ; $7be5: $56
    ld b, [hl]                                    ; $7be6: $46
    ld h, l                                       ; $7be7: $65
    ld [hl], a                                    ; $7be8: $77
    ld a, b                                       ; $7be9: $78
    adc b                                         ; $7bea: $88
    adc d                                         ; $7beb: $8a
    xor c                                         ; $7bec: $a9
    cp h                                          ; $7bed: $bc
    ld h, a                                       ; $7bee: $67
    or h                                          ; $7bef: $b4
    ld l, b                                       ; $7bf0: $68
    add d                                         ; $7bf1: $82
    ld l, e                                       ; $7bf2: $6b
    add c                                         ; $7bf3: $81
    adc c                                         ; $7bf4: $89
    ld c, l                                       ; $7bf5: $4d
    or l                                          ; $7bf6: $b5
    ld a, c                                       ; $7bf7: $79
    db $f4                                        ; $7bf8: $f4
    ld a, h                                       ; $7bf9: $7c
    ld a, l                                       ; $7bfa: $7d
    ld b, a                                       ; $7bfb: $47
    ld h, l                                       ; $7bfc: $65
    or e                                          ; $7bfd: $b3
    rla                                           ; $7bfe: $17
    add l                                         ; $7bff: $85
    ld b, [hl]                                    ; $7c00: $46
    add l                                         ; $7c01: $85
    adc e                                         ; $7c02: $8b
    ld a, [de]                                    ; $7c03: $1a
    ret z                                         ; $7c04: $c8

    jp $8ddb                                      ; $7c05: $c3 $db $8d


    ld l, b                                       ; $7c08: $68
    add h                                         ; $7c09: $84
    ld [hl], d                                    ; $7c0a: $72
    ld b, a                                       ; $7c0b: $47
    dec [hl]                                      ; $7c0c: $35
    add l                                         ; $7c0d: $85
    ld h, l                                       ; $7c0e: $65
    add a                                         ; $7c0f: $87
    sbc c                                         ; $7c10: $99
    xor d                                         ; $7c11: $aa
    sbc d                                         ; $7c12: $9a
    xor b                                         ; $7c13: $a8
    sbc b                                         ; $7c14: $98
    adc c                                         ; $7c15: $89
    or h                                          ; $7c16: $b4
    ld l, c                                       ; $7c17: $69
    ld l, b                                       ; $7c18: $68
    dec [hl]                                      ; $7c19: $35
    cp h                                          ; $7c1a: $bc
    sbc h                                         ; $7c1b: $9c
    and a                                         ; $7c1c: $a7
    sbc l                                         ; $7c1d: $9d
    ld d, d                                       ; $7c1e: $52
    call c, $d2a5                                 ; $7c1f: $dc $a5 $d2
    ld a, [hl-]                                   ; $7c22: $3a
    daa                                           ; $7c23: $27
    add b                                         ; $7c24: $80
    or h                                          ; $7c25: $b4
    sub a                                         ; $7c26: $97
    ld [$8b79], sp                                ; $7c27: $08 $79 $8b
    adc d                                         ; $7c2a: $8a
    xor h                                         ; $7c2b: $ac
    ld a, b                                       ; $7c2c: $78
    xor c                                         ; $7c2d: $a9
    ld h, [hl]                                    ; $7c2e: $66
    ld h, a                                       ; $7c2f: $67
    ld h, [hl]                                    ; $7c30: $66
    ld d, [hl]                                    ; $7c31: $56
    ld h, [hl]                                    ; $7c32: $66
    sbc d                                         ; $7c33: $9a
    add hl, sp                                    ; $7c34: $39
    sub a                                         ; $7c35: $97
    adc d                                         ; $7c36: $8a
    xor c                                         ; $7c37: $a9
    adc d                                         ; $7c38: $8a
    sbc d                                         ; $7c39: $9a
    ld a, c                                       ; $7c3a: $79
    sub a                                         ; $7c3b: $97
    jr z, jr_01a_7bc2                             ; $7c3c: $28 $84

    sub $78                                       ; $7c3e: $d6 $78
    db $db                                        ; $7c40: $db
    ld c, h                                       ; $7c41: $4c
    db $d3                                        ; $7c42: $d3
    cp b                                          ; $7c43: $b8
    adc h                                         ; $7c44: $8c
    xor b                                         ; $7c45: $a8
    add hl, hl                                    ; $7c46: $29
    or c                                          ; $7c47: $b1
    and a                                         ; $7c48: $a7
    ld b, a                                       ; $7c49: $47
    jr c, jr_01a_7c6f                             ; $7c4a: $38 $23

    sub b                                         ; $7c4c: $90
    ld l, c                                       ; $7c4d: $69
    sbc c                                         ; $7c4e: $99
    ld a, c                                       ; $7c4f: $79
    db $d3                                        ; $7c50: $d3
    bit 5, b                                      ; $7c51: $cb $68
    xor b                                         ; $7c53: $a8
    halt                                          ; $7c54: $76
    sub e                                         ; $7c55: $93
    scf                                           ; $7c56: $37
    ld d, [hl]                                    ; $7c57: $56
    ld h, [hl]                                    ; $7c58: $66
    ld h, a                                       ; $7c59: $67
    ld h, a                                       ; $7c5a: $67
    sbc b                                         ; $7c5b: $98
    adc e                                         ; $7c5c: $8b
    sbc b                                         ; $7c5d: $98
    cp c                                          ; $7c5e: $b9
    and l                                         ; $7c5f: $a5
    adc e                                         ; $7c60: $8b

jr_01a_7c61:
    add hl, bc                                    ; $7c61: $09
    sub e                                         ; $7c62: $93
    push de                                       ; $7c63: $d5
    ld l, b                                       ; $7c64: $68
    ld h, a                                       ; $7c65: $67
    ld c, d                                       ; $7c66: $4a
    jp nz, $a9eb                                  ; $7c67: $c2 $eb $a9

    jp z, $a41d                                   ; $7c6a: $ca $1d $a4

    ld b, l                                       ; $7c6d: $45
    sub a                                         ; $7c6e: $97

jr_01a_7c6f:
    dec de                                        ; $7c6f: $1b
    ld d, l                                       ; $7c70: $55
    adc b                                         ; $7c71: $88
    ld d, e                                       ; $7c72: $53
    ld a, h                                       ; $7c73: $7c
    ld d, [hl]                                    ; $7c74: $56
    sbc e                                         ; $7c75: $9b
    xor d                                         ; $7c76: $aa
    cp c                                          ; $7c77: $b9
    ld h, l                                       ; $7c78: $65
    ld a, c                                       ; $7c79: $79
    ld e, e                                       ; $7c7a: $5b
    halt                                          ; $7c7b: $76
    ld h, l                                       ; $7c7c: $65
    adc b                                         ; $7c7d: $88
    scf                                           ; $7c7e: $37
    halt                                          ; $7c7f: $76
    adc b                                         ; $7c80: $88
    ld a, b                                       ; $7c81: $78
    sbc c                                         ; $7c82: $99
    sbc e                                         ; $7c83: $9b
    xor d                                         ; $7c84: $aa
    xor b                                         ; $7c85: $a8
    adc b                                         ; $7c86: $88
    ld h, [hl]                                    ; $7c87: $66
    or [hl]                                       ; $7c88: $b6
    ld l, c                                       ; $7c89: $69
    ld c, c                                       ; $7c8a: $49
    ld e, a                                       ; $7c8b: $5f
    sub l                                         ; $7c8c: $95
    sbc d                                         ; $7c8d: $9a
    adc e                                         ; $7c8e: $8b
    jp c, $5e99                                   ; $7c8f: $da $99 $5e

    sbc d                                         ; $7c92: $9a
    ld h, l                                       ; $7c93: $65
    ld d, e                                       ; $7c94: $53
    ld a, h                                       ; $7c95: $7c
    ld b, d                                       ; $7c96: $42
    adc b                                         ; $7c97: $88
    jr c, jr_01a_7c61                             ; $7c98: $38 $c7

    ld a, [hl-]                                   ; $7c9a: $3a
    sub l                                         ; $7c9b: $95
    db $fc                                        ; $7c9c: $fc
    halt                                          ; $7c9d: $76
    ret z                                         ; $7c9e: $c8

    sbc b                                         ; $7c9f: $98
    rst $00                                       ; $7ca0: $c7
    ld h, [hl]                                    ; $7ca1: $66
    and l                                         ; $7ca2: $a5
    ld d, a                                       ; $7ca3: $57
    ld [hl], l                                    ; $7ca4: $75
    ld a, c                                       ; $7ca5: $79
    ld h, a                                       ; $7ca6: $67
    cp c                                          ; $7ca7: $b9
    ld a, d                                       ; $7ca8: $7a
    xor d                                         ; $7ca9: $aa
    xor c                                         ; $7caa: $a9
    xor c                                         ; $7cab: $a9
    adc b                                         ; $7cac: $88
    add l                                         ; $7cad: $85
    adc b                                         ; $7cae: $88
    inc sp                                        ; $7caf: $33
    and l                                         ; $7cb0: $a5
    ld e, b                                       ; $7cb1: $58
    reti                                          ; $7cb2: $d9


    and a                                         ; $7cb3: $a7
    jp hl                                         ; $7cb4: $e9


    ld e, e                                       ; $7cb5: $5b
    ld a, b                                       ; $7cb6: $78
    ld h, a                                       ; $7cb7: $67
    ret c                                         ; $7cb8: $d8

    ld c, c                                       ; $7cb9: $49
    ld d, b                                       ; $7cba: $50
    ld [hl], $60                                  ; $7cbb: $36 $60
    ld a, [hl-]                                   ; $7cbd: $3a
    ld h, a                                       ; $7cbe: $67
    sbc b                                         ; $7cbf: $98
    scf                                           ; $7cc0: $37
    ld sp, hl                                     ; $7cc1: $f9
    ld h, a                                       ; $7cc2: $67
    ld [$c47a], a                                 ; $7cc3: $ea $7a $c4
    ld [hl], a                                    ; $7cc6: $77
    ld [hl], l                                    ; $7cc7: $75
    ld [hl], $53                                  ; $7cc8: $36 $53
    ld d, [hl]                                    ; $7cca: $56
    ld h, a                                       ; $7ccb: $67
    ld e, b                                       ; $7ccc: $58
    add [hl]                                      ; $7ccd: $86
    adc c                                         ; $7cce: $89
    sbc c                                         ; $7ccf: $99
    xor b                                         ; $7cd0: $a8
    adc b                                         ; $7cd1: $88
    add [hl]                                      ; $7cd2: $86
    sub h                                         ; $7cd3: $94
    ld [hl], e                                    ; $7cd4: $73
    ld b, e                                       ; $7cd5: $43
    ld a, b                                       ; $7cd6: $78
    ld c, e                                       ; $7cd7: $4b
    ld a, [hl]                                    ; $7cd8: $7e
    sbc h                                         ; $7cd9: $9c
    jp hl                                         ; $7cda: $e9


    adc h                                         ; $7cdb: $8c
    dec sp                                        ; $7cdc: $3b
    add a                                         ; $7cdd: $87
    ld [hl], e                                    ; $7cde: $73
    add l                                         ; $7cdf: $85
    ld h, [hl]                                    ; $7ce0: $66
    ld d, b                                       ; $7ce1: $50
    ld [hl], l                                    ; $7ce2: $75
    ld h, h                                       ; $7ce3: $64
    ld h, d                                       ; $7ce4: $62
    or [hl]                                       ; $7ce5: $b6
    add [hl]                                      ; $7ce6: $86
    cp e                                          ; $7ce7: $bb
    ld a, h                                       ; $7ce8: $7c
    rst $20                                       ; $7ce9: $e7
    adc h                                         ; $7cea: $8c
    ret z                                         ; $7ceb: $c8

    add [hl]                                      ; $7cec: $86
    add l                                         ; $7ced: $85
    ld h, l                                       ; $7cee: $65
    ld b, h                                       ; $7cef: $44
    ld h, l                                       ; $7cf0: $65
    sub a                                         ; $7cf1: $97
    ld a, c                                       ; $7cf2: $79
    adc e                                         ; $7cf3: $8b
    sbc d                                         ; $7cf4: $9a
    cp e                                          ; $7cf5: $bb
    xor e                                         ; $7cf6: $ab
    xor c                                         ; $7cf7: $a9
    adc b                                         ; $7cf8: $88
    ld a, c                                       ; $7cf9: $79
    add hl, de                                    ; $7cfa: $19
    and c                                         ; $7cfb: $a1
    ld [$7d4e], a                                 ; $7cfc: $ea $4e $7d
    add a                                         ; $7cff: $87
    call $3f3d                                    ; $7d00: $cd $3d $3f
    ld a, b                                       ; $7d03: $78
    jp z, $8316                                   ; $7d04: $ca $16 $83

    add l                                         ; $7d07: $85
    ld [hl], h                                    ; $7d08: $74
    ld d, d                                       ; $7d09: $52
    ld e, e                                       ; $7d0a: $5b
    ld [hl], a                                    ; $7d0b: $77
    ld c, d                                       ; $7d0c: $4a
    sub a                                         ; $7d0d: $97
    cp h                                          ; $7d0e: $bc
    ld e, a                                       ; $7d0f: $5f
    xor b                                         ; $7d10: $a8
    add $68                                       ; $7d11: $c6 $68
    ld a, b                                       ; $7d13: $78
    ld h, e                                       ; $7d14: $63
    ld h, a                                       ; $7d15: $67
    ld h, [hl]                                    ; $7d16: $66
    ld h, a                                       ; $7d17: $67
    adc c                                         ; $7d18: $89
    adc b                                         ; $7d19: $88
    xor e                                         ; $7d1a: $ab
    xor e                                         ; $7d1b: $ab
    xor b                                         ; $7d1c: $a8
    sbc b                                         ; $7d1d: $98
    ld c, h                                       ; $7d1e: $4c
    inc hl                                        ; $7d1f: $23
    add a                                         ; $7d20: $87
    scf                                           ; $7d21: $37
    sub a                                         ; $7d22: $97
    dec [hl]                                      ; $7d23: $35
    cp d                                          ; $7d24: $ba
    xor e                                         ; $7d25: $ab
    ld sp, hl                                     ; $7d26: $f9
    ld a, h                                       ; $7d27: $7c
    sbc c                                         ; $7d28: $99
    adc b                                         ; $7d29: $88
    ld h, [hl]                                    ; $7d2a: $66
    jr z, jr_01a_7d6f                             ; $7d2b: $28 $42

    ld [hl], l                                    ; $7d2d: $75
    add hl, bc                                    ; $7d2e: $09
    ld b, l                                       ; $7d2f: $45
    add hl, sp                                    ; $7d30: $39
    ld l, b                                       ; $7d31: $68
    ld a, e                                       ; $7d32: $7b
    ld e, d                                       ; $7d33: $5a
    ld a, d                                       ; $7d34: $7a
    jp z, $9998                                   ; $7d35: $ca $98 $99

    ld d, h                                       ; $7d38: $54
    ld [hl], e                                    ; $7d39: $73
    ld [hl], l                                    ; $7d3a: $75
    scf                                           ; $7d3b: $37
    ld d, [hl]                                    ; $7d3c: $56
    ld h, a                                       ; $7d3d: $67
    sub a                                         ; $7d3e: $97
    xor c                                         ; $7d3f: $a9
    sbc d                                         ; $7d40: $9a
    xor d                                         ; $7d41: $aa
    sbc b                                         ; $7d42: $98
    adc b                                         ; $7d43: $88
    ld [hl], a                                    ; $7d44: $77
    halt                                          ; $7d45: $76
    ld d, a                                       ; $7d46: $57
    ld [hl], a                                    ; $7d47: $77
    ld [hl], a                                    ; $7d48: $77
    or a                                          ; $7d49: $b7
    cp h                                          ; $7d4a: $bc
    sbc a                                         ; $7d4b: $9f
    cp h                                          ; $7d4c: $bc
    jp c, Jump_01a_7896                           ; $7d4d: $da $96 $78

    ld b, e                                       ; $7d50: $43
    add h                                         ; $7d51: $84
    ld d, h                                       ; $7d52: $54
    ld h, c                                       ; $7d53: $61
    ld h, l                                       ; $7d54: $65
    ld h, h                                       ; $7d55: $64
    ld b, a                                       ; $7d56: $47
    and a                                         ; $7d57: $a7
    sbc b                                         ; $7d58: $98
    xor b                                         ; $7d59: $a8
    cp a                                          ; $7d5a: $bf
    ld l, e                                       ; $7d5b: $6b
    ret c                                         ; $7d5c: $d8

    sbc b                                         ; $7d5d: $98
    or [hl]                                       ; $7d5e: $b6
    ld h, a                                       ; $7d5f: $67
    inc hl                                        ; $7d60: $23
    ld [hl], h                                    ; $7d61: $74
    ld [hl], a                                    ; $7d62: $77
    ld [hl], a                                    ; $7d63: $77
    adc c                                         ; $7d64: $89
    adc d                                         ; $7d65: $8a
    sbc d                                         ; $7d66: $9a
    call z, $859a                                 ; $7d67: $cc $9a $85
    add [hl]                                      ; $7d6a: $86
    add [hl]                                      ; $7d6b: $86
    ld a, [de]                                    ; $7d6c: $1a
    ld a, [hl-]                                   ; $7d6d: $3a
    sub h                                         ; $7d6e: $94

jr_01a_7d6f:
    res 7, [hl]                                   ; $7d6f: $cb $be
    sbc $9b                                       ; $7d71: $de $9b
    adc d                                         ; $7d73: $8a
    ld a, l                                       ; $7d74: $7d
    adc c                                         ; $7d75: $89
    ld l, b                                       ; $7d76: $68
    inc a                                         ; $7d77: $3c
    dec h                                         ; $7d78: $25
    ld b, c                                       ; $7d79: $41
    and e                                         ; $7d7a: $a3
    ld [hl], l                                    ; $7d7b: $75
    jr jr_01a_7df4                                ; $7d7c: $18 $76

    call c, $89dc                                 ; $7d7e: $dc $dc $89
    reti                                          ; $7d81: $d9


    xor d                                         ; $7d82: $aa
    adc b                                         ; $7d83: $88
    ld [hl], l                                    ; $7d84: $75
    ld h, e                                       ; $7d85: $63
    ld h, h                                       ; $7d86: $64
    ld d, [hl]                                    ; $7d87: $56
    ld d, [hl]                                    ; $7d88: $56
    ld l, c                                       ; $7d89: $69
    sbc c                                         ; $7d8a: $99
    sbc c                                         ; $7d8b: $99
    xor c                                         ; $7d8c: $a9
    xor e                                         ; $7d8d: $ab
    add a                                         ; $7d8e: $87
    adc c                                         ; $7d8f: $89
    ld c, l                                       ; $7d90: $4d
    add d                                         ; $7d91: $82
    sub d                                         ; $7d92: $92
    add [hl]                                      ; $7d93: $86
    ld a, b                                       ; $7d94: $78
    jp c, $8887                                   ; $7d95: $da $87 $88

    sbc e                                         ; $7d98: $9b
    and $69                                       ; $7d99: $e6 $69
    ld c, [hl]                                    ; $7d9b: $4e
    scf                                           ; $7d9c: $37
    dec d                                         ; $7d9d: $15
    ld b, b                                       ; $7d9e: $40
    db $10                                        ; $7d9f: $10
    ld [bc], a                                    ; $7da0: $02
    rlca                                          ; $7da1: $07
    ld l, c                                       ; $7da2: $69
    ld a, e                                       ; $7da3: $7b
    sbc e                                         ; $7da4: $9b
    sbc h                                         ; $7da5: $9c
    adc h                                         ; $7da6: $8c
    cp e                                          ; $7da7: $bb
    ret                                           ; $7da8: $c9


    sub a                                         ; $7da9: $97
    ld d, [hl]                                    ; $7daa: $56
    dec [hl]                                      ; $7dab: $35
    ld b, h                                       ; $7dac: $44
    ld d, [hl]                                    ; $7dad: $56
    ld h, a                                       ; $7dae: $67
    ld e, c                                       ; $7daf: $59
    sbc d                                         ; $7db0: $9a
    xor c                                         ; $7db1: $a9
    cp d                                          ; $7db2: $ba
    sbc d                                         ; $7db3: $9a
    sbc b                                         ; $7db4: $98
    adc c                                         ; $7db5: $89
    ld e, b                                       ; $7db6: $58
    dec h                                         ; $7db7: $25
    ld h, a                                       ; $7db8: $67
    ld l, l                                       ; $7db9: $6d
    cp c                                          ; $7dba: $b9
    xor $58                                       ; $7dbb: $ee $58
    xor b                                         ; $7dbd: $a8
    add $7a                                       ; $7dbe: $c6 $7a
    jp z, Jump_01a_625b                           ; $7dc0: $ca $5b $62

    add d                                         ; $7dc3: $82
    ld e, c                                       ; $7dc4: $59
    ld b, e                                       ; $7dc5: $43
    ld [hl], h                                    ; $7dc6: $74
    sub a                                         ; $7dc7: $97
    sub [hl]                                      ; $7dc8: $96
    ld a, h                                       ; $7dc9: $7c
    xor e                                         ; $7dca: $ab
    xor h                                         ; $7dcb: $ac
    adc $ea                                       ; $7dcc: $ce $ea
    sbc c                                         ; $7dce: $99
    add a                                         ; $7dcf: $87
    add [hl]                                      ; $7dd0: $86
    ld d, a                                       ; $7dd1: $57
    ld h, a                                       ; $7dd2: $67
    ld e, b                                       ; $7dd3: $58
    ld h, [hl]                                    ; $7dd4: $66
    ld a, b                                       ; $7dd5: $78
    adc d                                         ; $7dd6: $8a
    adc d                                         ; $7dd7: $8a
    xor d                                         ; $7dd8: $aa
    jp z, $a8b9                                   ; $7dd9: $ca $b9 $a8

    add [hl]                                      ; $7ddc: $86
    ld l, c                                       ; $7ddd: $69
    inc h                                         ; $7dde: $24
    ld e, c                                       ; $7ddf: $59
    jp z, $99af                                   ; $7de0: $ca $af $99

    reti                                          ; $7de3: $d9


    ld c, e                                       ; $7de4: $4b
    jp hl                                         ; $7de5: $e9


    jp z, Jump_01a_768a                           ; $7de6: $ca $8a $76

    ld b, h                                       ; $7de9: $44
    add e                                         ; $7dea: $83
    ld l, c                                       ; $7deb: $69
    ld d, h                                       ; $7dec: $54
    add l                                         ; $7ded: $85
    ld a, b                                       ; $7dee: $78
    or a                                          ; $7def: $b7
    sbc b                                         ; $7df0: $98
    sbc d                                         ; $7df1: $9a
    sbc e                                         ; $7df2: $9b
    cp l                                          ; $7df3: $bd

jr_01a_7df4:
    xor c                                         ; $7df4: $a9
    sbc b                                         ; $7df5: $98
    ld l, b                                       ; $7df6: $68
    ld h, h                                       ; $7df7: $64
    halt                                          ; $7df8: $76
    ld h, l                                       ; $7df9: $65
    ld h, [hl]                                    ; $7dfa: $66
    ld [hl], a                                    ; $7dfb: $77
    adc c                                         ; $7dfc: $89
    sbc c                                         ; $7dfd: $99
    adc c                                         ; $7dfe: $89
    xor d                                         ; $7dff: $aa
    adc c                                         ; $7e00: $89
    add e                                         ; $7e01: $83
    ld d, l                                       ; $7e02: $55
    ld d, l                                       ; $7e03: $55
    add a                                         ; $7e04: $87
    ld d, a                                       ; $7e05: $57
    sbc c                                         ; $7e06: $99
    ld a, c                                       ; $7e07: $79
    xor c                                         ; $7e08: $a9
    ld a, [$99bd]                                 ; $7e09: $fa $bd $99
    ret                                           ; $7e0c: $c9


    add a                                         ; $7e0d: $87
    ld h, [hl]                                    ; $7e0e: $66
    ld d, h                                       ; $7e0f: $54
    ld d, [hl]                                    ; $7e10: $56
    ld l, b                                       ; $7e11: $68
    ld h, h                                       ; $7e12: $64
    ld [hl-], a                                   ; $7e13: $32
    ld d, a                                       ; $7e14: $57
    cp d                                          ; $7e15: $ba
    adc d                                         ; $7e16: $8a
    xor b                                         ; $7e17: $a8
    ret                                           ; $7e18: $c9


    xor l                                         ; $7e19: $ad
    sbc d                                         ; $7e1a: $9a
    ld a, d                                       ; $7e1b: $7a
    ld d, l                                       ; $7e1c: $55
    ld d, l                                       ; $7e1d: $55
    ld b, a                                       ; $7e1e: $47
    ld d, a                                       ; $7e1f: $57
    ld d, h                                       ; $7e20: $54
    add a                                         ; $7e21: $87
    sbc b                                         ; $7e22: $98
    xor c                                         ; $7e23: $a9
    xor e                                         ; $7e24: $ab
    sub a                                         ; $7e25: $97
    xor d                                         ; $7e26: $aa
    sbc c                                         ; $7e27: $99
    add l                                         ; $7e28: $85
    sub h                                         ; $7e29: $94
    adc c                                         ; $7e2a: $89
    dec sp                                        ; $7e2b: $3b
    call nc, $a8a8                                ; $7e2c: $d4 $a8 $a8
    and [hl]                                      ; $7e2f: $a6
    cp d                                          ; $7e30: $ba
    cp b                                          ; $7e31: $b8
    ld h, e                                       ; $7e32: $63
    add h                                         ; $7e33: $84
    ld [bc], a                                    ; $7e34: $02
    ld d, $43                                     ; $7e35: $16 $43
    jr nc, @-$7b                                  ; $7e37: $30 $83

    dec d                                         ; $7e39: $15
    ld d, h                                       ; $7e3a: $54
    ld c, b                                       ; $7e3b: $48
    ld a, b                                       ; $7e3c: $78
    adc b                                         ; $7e3d: $88
    db $db                                        ; $7e3e: $db
    sbc c                                         ; $7e3f: $99
    ld d, [hl]                                    ; $7e40: $56
    sub l                                         ; $7e41: $95
    ld [hl], l                                    ; $7e42: $75
    ld [hl], h                                    ; $7e43: $74
    ld d, d                                       ; $7e44: $52
    ld b, h                                       ; $7e45: $44
    ld a, b                                       ; $7e46: $78
    ld l, d                                       ; $7e47: $6a
    sbc b                                         ; $7e48: $98
    xor e                                         ; $7e49: $ab
    xor l                                         ; $7e4a: $ad
    sbc d                                         ; $7e4b: $9a
    and a                                         ; $7e4c: $a7
    halt                                          ; $7e4d: $76
    ld b, l                                       ; $7e4e: $45
    ld h, [hl]                                    ; $7e4f: $66
    ld d, [hl]                                    ; $7e50: $56
    xor b                                         ; $7e51: $a8
    db $db                                        ; $7e52: $db
    adc e                                         ; $7e53: $8b
    xor b                                         ; $7e54: $a8
    reti                                          ; $7e55: $d9


    sbc b                                         ; $7e56: $98
    ld l, d                                       ; $7e57: $6a
    ld b, l                                       ; $7e58: $45
    ld h, a                                       ; $7e59: $67
    or h                                          ; $7e5a: $b4
    rlca                                          ; $7e5b: $07
    ld c, c                                       ; $7e5c: $49
    ld d, h                                       ; $7e5d: $54
    sub a                                         ; $7e5e: $97
    ld b, c                                       ; $7e5f: $41
    dec h                                         ; $7e60: $25
    sbc e                                         ; $7e61: $9b
    cp [hl]                                       ; $7e62: $be
    xor h                                         ; $7e63: $ac
    sbc h                                         ; $7e64: $9c
    adc [hl]                                      ; $7e65: $8e
    sbc c                                         ; $7e66: $99
    add a                                         ; $7e67: $87
    ld h, [hl]                                    ; $7e68: $66
    ld [hl], l                                    ; $7e69: $75
    add a                                         ; $7e6a: $87
    ld h, h                                       ; $7e6b: $64
    sub [hl]                                      ; $7e6c: $96
    ld l, d                                       ; $7e6d: $6a
    adc d                                         ; $7e6e: $8a
    xor d                                         ; $7e6f: $aa
    xor d                                         ; $7e70: $aa
    sbc b                                         ; $7e71: $98
    sbc b                                         ; $7e72: $98
    ld h, a                                       ; $7e73: $67
    ld h, l                                       ; $7e74: $65
    add a                                         ; $7e75: $87
    jp c, $5866                                   ; $7e76: $da $66 $58

    ld h, a                                       ; $7e79: $67
    xor [hl]                                      ; $7e7a: $ae
    cp [hl]                                       ; $7e7b: $be
    xor c                                         ; $7e7c: $a9
    ld a, b                                       ; $7e7d: $78
    halt                                          ; $7e7e: $76
    ld h, c                                       ; $7e7f: $61
    inc sp                                        ; $7e80: $33
    ld h, e                                       ; $7e81: $63
    jr nz, jr_01a_7ec8                            ; $7e82: $20 $44

    ld a, [bc]                                    ; $7e84: $0a
    dec [hl]                                      ; $7e85: $35
    xor d                                         ; $7e86: $aa
    ld a, d                                       ; $7e87: $7a
    adc c                                         ; $7e88: $89
    cp e                                          ; $7e89: $bb
    halt                                          ; $7e8a: $76
    xor e                                         ; $7e8b: $ab
    sbc e                                         ; $7e8c: $9b
    sbc c                                         ; $7e8d: $99
    sbc b                                         ; $7e8e: $98
    ld b, l                                       ; $7e8f: $45
    dec h                                         ; $7e90: $25
    ld [hl-], a                                   ; $7e91: $32
    ld d, d                                       ; $7e92: $52
    ld d, a                                       ; $7e93: $57
    ld a, c                                       ; $7e94: $79
    cp h                                          ; $7e95: $bc
    adc $ec                                       ; $7e96: $ce $ec
    cp d                                          ; $7e98: $ba
    ld h, a                                       ; $7e99: $67
    sub a                                         ; $7e9a: $97
    ld b, [hl]                                    ; $7e9b: $46
    ld sp, $9769                                  ; $7e9c: $31 $69 $97
    sbc a                                         ; $7e9f: $9f
    sbc b                                         ; $7ea0: $98
    ld l, e                                       ; $7ea1: $6b
    sub a                                         ; $7ea2: $97
    sub e                                         ; $7ea3: $93
    ld d, [hl]                                    ; $7ea4: $56
    dec [hl]                                      ; $7ea5: $35
    ld a, b                                       ; $7ea6: $78
    ld l, b                                       ; $7ea7: $68
    inc [hl]                                      ; $7ea8: $34
    ld c, b                                       ; $7ea9: $48
    sbc b                                         ; $7eaa: $98
    ld d, a                                       ; $7eab: $57
    add [hl]                                      ; $7eac: $86
    and a                                         ; $7ead: $a7
    cp c                                          ; $7eae: $b9
    db $ec                                        ; $7eaf: $ec
    sbc h                                         ; $7eb0: $9c
    rst $18                                       ; $7eb1: $df
    cp h                                          ; $7eb2: $bc
    sbc b                                         ; $7eb3: $98
    adc b                                         ; $7eb4: $88
    ld d, l                                       ; $7eb5: $55
    ld d, l                                       ; $7eb6: $55
    ld h, l                                       ; $7eb7: $65
    halt                                          ; $7eb8: $76
    add a                                         ; $7eb9: $87
    sbc c                                         ; $7eba: $99
    xor c                                         ; $7ebb: $a9
    sbc b                                         ; $7ebc: $98
    ld [hl], a                                    ; $7ebd: $77
    halt                                          ; $7ebe: $76
    ld h, l                                       ; $7ebf: $65
    ld d, [hl]                                    ; $7ec0: $56
    ld e, b                                       ; $7ec1: $58
    ld a, c                                       ; $7ec2: $79
    cp h                                          ; $7ec3: $bc
    cp l                                          ; $7ec4: $bd
    ei                                            ; $7ec5: $fb
    res 5, l                                      ; $7ec6: $cb $ad

jr_01a_7ec8:
    ld e, c                                       ; $7ec8: $59
    ld e, d                                       ; $7ec9: $5a
    xor b                                         ; $7eca: $a8
    ld a, [hl-]                                   ; $7ecb: $3a
    add $63                                       ; $7ecc: $c6 $63
    ld h, [hl]                                    ; $7ece: $66
    push hl                                       ; $7ecf: $e5
    ld h, $8c                                     ; $7ed0: $26 $8c
    jr c, jr_01a_7f3d                             ; $7ed2: $38 $69

    db $db                                        ; $7ed4: $db
    ld e, d                                       ; $7ed5: $5a
    db $eb                                        ; $7ed6: $eb
    sbc b                                         ; $7ed7: $98
    or a                                          ; $7ed8: $b7
    ld d, l                                       ; $7ed9: $55
    ld b, c                                       ; $7eda: $41
    inc [hl]                                      ; $7edb: $34
    inc h                                         ; $7edc: $24
    ld h, a                                       ; $7edd: $67
    adc d                                         ; $7ede: $8a
    cp e                                          ; $7edf: $bb
    xor e                                         ; $7ee0: $ab
    sbc c                                         ; $7ee1: $99
    sub [hl]                                      ; $7ee2: $96
    ld b, l                                       ; $7ee3: $45
    ld b, h                                       ; $7ee4: $44
    ld h, e                                       ; $7ee5: $63
    ld l, b                                       ; $7ee6: $68
    adc b                                         ; $7ee7: $88
    sbc e                                         ; $7ee8: $9b
    cp h                                          ; $7ee9: $bc
    xor a                                         ; $7eea: $af
    xor c                                         ; $7eeb: $a9
    ccf                                           ; $7eec: $3f
    sub e                                         ; $7eed: $93
    halt                                          ; $7eee: $76
    ld a, e                                       ; $7eef: $7b
    sbc e                                         ; $7ef0: $9b
    adc d                                         ; $7ef1: $8a
    ld [hl], l                                    ; $7ef2: $75
    or [hl]                                       ; $7ef3: $b6
    ld h, l                                       ; $7ef4: $65
    ld [hl], b                                    ; $7ef5: $70
    ld b, a                                       ; $7ef6: $47
    ld a, c                                       ; $7ef7: $79
    ld e, b                                       ; $7ef8: $58
    ld l, l                                       ; $7ef9: $6d
    adc e                                         ; $7efa: $8b
    ld a, [hl]                                    ; $7efb: $7e
    xor b                                         ; $7efc: $a8
    sub a                                         ; $7efd: $97
    dec [hl]                                      ; $7efe: $35
    ld [hl], e                                    ; $7eff: $73
    ld d, h                                       ; $7f00: $54
    ld h, [hl]                                    ; $7f01: $66
    add [hl]                                      ; $7f02: $86
    xor d                                         ; $7f03: $aa
    jp z, $9abb                                   ; $7f04: $ca $bb $9a

    sbc b                                         ; $7f07: $98
    ld [hl], a                                    ; $7f08: $77
    ld [hl], a                                    ; $7f09: $77
    ld h, a                                       ; $7f0a: $67
    ld a, b                                       ; $7f0b: $78
    adc b                                         ; $7f0c: $88
    ld hl, sp-$42                                 ; $7f0d: $f8 $be
    sbc d                                         ; $7f0f: $9a
    sbc e                                         ; $7f10: $9b
    ld a, a                                       ; $7f11: $7f
    ld c, [hl]                                    ; $7f12: $4e
    dec sp                                        ; $7f13: $3b
    ld h, l                                       ; $7f14: $65
    or c                                          ; $7f15: $b1
    ld h, e                                       ; $7f16: $63
    or l                                          ; $7f17: $b5
    and b                                         ; $7f18: $a0
    sub e                                         ; $7f19: $93
    ld h, a                                       ; $7f1a: $67
    ld [hl], $24                                  ; $7f1b: $36 $24
    ld a, l                                       ; $7f1d: $7d
    ld [hl], a                                    ; $7f1e: $77
    sbc [hl]                                      ; $7f1f: $9e
    ld e, [hl]                                    ; $7f20: $5e
    push hl                                       ; $7f21: $e5
    cp e                                          ; $7f22: $bb
    ld l, c                                       ; $7f23: $69
    add e                                         ; $7f24: $83
    ld d, a                                       ; $7f25: $57
    ld d, l                                       ; $7f26: $55
    ld h, a                                       ; $7f27: $67
    sbc b                                         ; $7f28: $98
    ld a, e                                       ; $7f29: $7b
    adc c                                         ; $7f2a: $89
    ret                                           ; $7f2b: $c9


    adc c                                         ; $7f2c: $89
    ld a, b                                       ; $7f2d: $78
    add l                                         ; $7f2e: $85
    ld d, a                                       ; $7f2f: $57
    ld d, l                                       ; $7f30: $55
    ld d, l                                       ; $7f31: $55
    ld a, b                                       ; $7f32: $78
    ld b, a                                       ; $7f33: $47
    cp h                                          ; $7f34: $bc
    dec de                                        ; $7f35: $1b
    db $f4                                        ; $7f36: $f4
    adc l                                         ; $7f37: $8d
    dec a                                         ; $7f38: $3d
    xor b                                         ; $7f39: $a8
    ld l, d                                       ; $7f3a: $6a
    ld c, h                                       ; $7f3b: $4c
    sub b                                         ; $7f3c: $90

jr_01a_7f3d:
    ld h, l                                       ; $7f3d: $65
    ld h, c                                       ; $7f3e: $61
    daa                                           ; $7f3f: $27
    add e                                         ; $7f40: $83
    inc sp                                        ; $7f41: $33
    or l                                          ; $7f42: $b5
    sub $9c                                       ; $7f43: $d6 $9c
    cp d                                          ; $7f45: $ba
    xor a                                         ; $7f46: $af
    ld e, l                                       ; $7f47: $5d
    xor e                                         ; $7f48: $ab
    ld [hl], l                                    ; $7f49: $75
    ld [hl], a                                    ; $7f4a: $77
    ld [hl], d                                    ; $7f4b: $72
    ld h, [hl]                                    ; $7f4c: $66
    rla                                           ; $7f4d: $17
    add [hl]                                      ; $7f4e: $86
    ld l, b                                       ; $7f4f: $68
    adc c                                         ; $7f50: $89
    and [hl]                                      ; $7f51: $a6
    sbc b                                         ; $7f52: $98
    sbc b                                         ; $7f53: $98
    ld h, a                                       ; $7f54: $67
    ld d, [hl]                                    ; $7f55: $56
    ld [hl], h                                    ; $7f56: $74
    ld d, e                                       ; $7f57: $53
    ld d, [hl]                                    ; $7f58: $56
    ld [hl], a                                    ; $7f59: $77
    sbc c                                         ; $7f5a: $99
    xor [hl]                                      ; $7f5b: $ae
    ld e, e                                       ; $7f5c: $5b
    or $99                                        ; $7f5d: $f6 $99
    adc e                                         ; $7f5f: $8b
    add [hl]                                      ; $7f60: $86
    ld l, d                                       ; $7f61: $6a
    ld c, c                                       ; $7f62: $49

jr_01a_7f63:
    add hl, de                                    ; $7f63: $19
    ld [hl], l                                    ; $7f64: $75
    ld b, l                                       ; $7f65: $45
    ld h, e                                       ; $7f66: $63
    ld h, h                                       ; $7f67: $64
    ld h, e                                       ; $7f68: $63
    sbc c                                         ; $7f69: $99
    rst $00                                       ; $7f6a: $c7
    adc [hl]                                      ; $7f6b: $8e
    sbc d                                         ; $7f6c: $9a
    sbc h                                         ; $7f6d: $9c
    cp c                                          ; $7f6e: $b9
    sub l                                         ; $7f6f: $95
    or h                                          ; $7f70: $b4
    ld d, h                                       ; $7f71: $54
    dec d                                         ; $7f72: $15
    ld b, h                                       ; $7f73: $44
    ld b, l                                       ; $7f74: $45
    ld e, d                                       ; $7f75: $5a
    sub a                                         ; $7f76: $97
    res 7, h                                      ; $7f77: $cb $bc
    sbc d                                         ; $7f79: $9a
    sbc c                                         ; $7f7a: $99
    halt                                          ; $7f7b: $76
    ld d, l                                       ; $7f7c: $55
    halt                                          ; $7f7d: $76
    ld b, a                                       ; $7f7e: $47
    sbc d                                         ; $7f7f: $9a
    sbc h                                         ; $7f80: $9c
    rst $18                                       ; $7f81: $df
    call z, $c87a                                 ; $7f82: $cc $7a $c8
    sub $8b                                       ; $7f85: $d6 $8b
    ld h, [hl]                                    ; $7f87: $66
    ld [hl], l                                    ; $7f88: $75
    ld l, c                                       ; $7f89: $69
    dec [hl]                                      ; $7f8a: $35
    add h                                         ; $7f8b: $84
    ld h, h                                       ; $7f8c: $64
    ld d, d                                       ; $7f8d: $52
    ld h, l                                       ; $7f8e: $65
    add a                                         ; $7f8f: $87
    sbc d                                         ; $7f90: $9a
    cp d                                          ; $7f91: $ba
    jp hl                                         ; $7f92: $e9


    cp [hl]                                       ; $7f93: $be
    jp z, Jump_000_25ab                           ; $7f94: $ca $ab $25

    ld b, d                                       ; $7f97: $42
    dec h                                         ; $7f98: $25
    ld [hl], $75                                  ; $7f99: $36 $75
    sbc d                                         ; $7f9b: $9a
    xor e                                         ; $7f9c: $ab
    xor l                                         ; $7f9d: $ad
    cp e                                          ; $7f9e: $bb
    cp e                                          ; $7f9f: $bb
    or a                                          ; $7fa0: $b7
    ld [hl], a                                    ; $7fa1: $77
    ld [hl], l                                    ; $7fa2: $75
    ld h, [hl]                                    ; $7fa3: $66
    ld a, e                                       ; $7fa4: $7b
    jr c, jr_01a_7f63                             ; $7fa5: $38 $bc

    ld a, b                                       ; $7fa7: $78
    rst $10                                       ; $7fa8: $d7
    or [hl]                                       ; $7fa9: $b6
    ld a, e                                       ; $7faa: $7b
    ld d, a                                       ; $7fab: $57
    ld e, b                                       ; $7fac: $58
    ld d, [hl]                                    ; $7fad: $56
    ld a, b                                       ; $7fae: $78
    sub e                                         ; $7faf: $93
    or l                                          ; $7fb0: $b5
    inc d                                         ; $7fb1: $14
    add e                                         ; $7fb2: $83
    ld e, c                                       ; $7fb3: $59
    ld l, b                                       ; $7fb4: $68
    and l                                         ; $7fb5: $a5
    ld a, c                                       ; $7fb6: $79
    xor b                                         ; $7fb7: $a8
    ei                                            ; $7fb8: $fb
    db $ec                                        ; $7fb9: $ec
    sbc d                                         ; $7fba: $9a
    adc b                                         ; $7fbb: $88
    ld a, b                                       ; $7fbc: $78
    ld e, b                                       ; $7fbd: $58
    ld d, l                                       ; $7fbe: $55
    ld d, l                                       ; $7fbf: $55
    ld h, [hl]                                    ; $7fc0: $66
    adc c                                         ; $7fc1: $89
    adc e                                         ; $7fc2: $8b
    xor b                                         ; $7fc3: $a8
    sbc b                                         ; $7fc4: $98
    sbc b                                         ; $7fc5: $98
    add [hl]                                      ; $7fc6: $86
    ld [hl], a                                    ; $7fc7: $77
    ld h, l                                       ; $7fc8: $65
    ld h, a                                       ; $7fc9: $67
    ld h, a                                       ; $7fca: $67
    sbc c                                         ; $7fcb: $99
    or [hl]                                       ; $7fcc: $b6
    ld a, e                                       ; $7fcd: $7b
    and l                                         ; $7fce: $a5
    add sp, $4a                                   ; $7fcf: $e8 $4a
    inc l                                         ; $7fd1: $2c
    add l                                         ; $7fd2: $85
    ld e, e                                       ; $7fd3: $5b
    ld b, a                                       ; $7fd4: $47
    ld b, l                                       ; $7fd5: $45
    sub e                                         ; $7fd6: $93
    ld [hl], h                                    ; $7fd7: $74
    ld d, l                                       ; $7fd8: $55
    ld h, e                                       ; $7fd9: $63
    add a                                         ; $7fda: $87
    ld l, b                                       ; $7fdb: $68
    xor e                                         ; $7fdc: $ab
    xor a                                         ; $7fdd: $af
    cp l                                          ; $7fde: $bd
    ret                                           ; $7fdf: $c9


    cp d                                          ; $7fe0: $ba
    sbc d                                         ; $7fe1: $9a
    ld h, l                                       ; $7fe2: $65
    ld d, h                                       ; $7fe3: $54
    ld [de], a                                    ; $7fe4: $12
    ld b, e                                       ; $7fe5: $43
    adc b                                         ; $7fe6: $88
    adc b                                         ; $7fe7: $88
    adc b                                         ; $7fe8: $88
    adc b                                         ; $7fe9: $88
    adc b                                         ; $7fea: $88
    adc b                                         ; $7feb: $88
    adc b                                         ; $7fec: $88
    adc b                                         ; $7fed: $88
    adc b                                         ; $7fee: $88
    adc b                                         ; $7fef: $88
    nop                                           ; $7ff0: $00
    nop                                           ; $7ff1: $00
    nop                                           ; $7ff2: $00
    nop                                           ; $7ff3: $00
    nop                                           ; $7ff4: $00
    nop                                           ; $7ff5: $00
    nop                                           ; $7ff6: $00
    nop                                           ; $7ff7: $00
    nop                                           ; $7ff8: $00
    nop                                           ; $7ff9: $00
    nop                                           ; $7ffa: $00
    nop                                           ; $7ffb: $00
    nop                                           ; $7ffc: $00
    nop                                           ; $7ffd: $00
    nop                                           ; $7ffe: $00
    nop                                           ; $7fff: $00
