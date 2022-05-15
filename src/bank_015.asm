; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    db $87

    adc b                                         ; $4001: $88
    halt                                          ; $4002: $76
    ld h, a                                       ; $4003: $67
    adc b                                         ; $4004: $88
    ld [hl], a                                    ; $4005: $77
    ld h, [hl]                                    ; $4006: $66
    ld a, c                                       ; $4007: $79
    add a                                         ; $4008: $87
    ld [hl], a                                    ; $4009: $77
    ld a, b                                       ; $400a: $78
    adc b                                         ; $400b: $88
    adc b                                         ; $400c: $88
    ld [hl], a                                    ; $400d: $77
    adc b                                         ; $400e: $88
    add a                                         ; $400f: $87
    adc b                                         ; $4010: $88
    ld [hl], a                                    ; $4011: $77
    ld a, b                                       ; $4012: $78
    add a                                         ; $4013: $87
    ld h, a                                       ; $4014: $67
    adc b                                         ; $4015: $88
    add a                                         ; $4016: $87
    ld h, a                                       ; $4017: $67
    adc b                                         ; $4018: $88
    adc b                                         ; $4019: $88
    ld [hl], a                                    ; $401a: $77
    ld a, b                                       ; $401b: $78
    add a                                         ; $401c: $87
    ld [hl], a                                    ; $401d: $77
    add a                                         ; $401e: $87
    ld a, b                                       ; $401f: $78
    add a                                         ; $4020: $87
    ld [hl], a                                    ; $4021: $77
    add a                                         ; $4022: $87
    ld [hl], a                                    ; $4023: $77
    adc b                                         ; $4024: $88
    ld [hl], a                                    ; $4025: $77
    ld [hl], a                                    ; $4026: $77
    adc b                                         ; $4027: $88
    ld [hl], a                                    ; $4028: $77
    adc b                                         ; $4029: $88
    adc b                                         ; $402a: $88
    ld [hl], a                                    ; $402b: $77
    adc b                                         ; $402c: $88
    ld [hl], a                                    ; $402d: $77
    ld [hl], a                                    ; $402e: $77
    adc b                                         ; $402f: $88
    add a                                         ; $4030: $87
    ld [hl], a                                    ; $4031: $77
    ld a, b                                       ; $4032: $78
    adc b                                         ; $4033: $88
    ld [hl], a                                    ; $4034: $77
    ld a, b                                       ; $4035: $78
    ld [hl], a                                    ; $4036: $77
    adc b                                         ; $4037: $88
    ld [hl], a                                    ; $4038: $77
    ld a, b                                       ; $4039: $78
    adc b                                         ; $403a: $88
    ld [hl], a                                    ; $403b: $77
    ld a, b                                       ; $403c: $78
    add a                                         ; $403d: $87
    adc b                                         ; $403e: $88
    ld [hl], a                                    ; $403f: $77
    adc b                                         ; $4040: $88
    ld [hl], a                                    ; $4041: $77
    ld [hl], a                                    ; $4042: $77
    ld a, b                                       ; $4043: $78
    ld [hl], a                                    ; $4044: $77
    ld a, b                                       ; $4045: $78
    add a                                         ; $4046: $87
    add a                                         ; $4047: $87
    ld a, b                                       ; $4048: $78
    adc b                                         ; $4049: $88
    ld [hl], a                                    ; $404a: $77
    add a                                         ; $404b: $87
    ld [hl], a                                    ; $404c: $77
    adc b                                         ; $404d: $88
    ld a, b                                       ; $404e: $78
    ld [hl], a                                    ; $404f: $77
    add a                                         ; $4050: $87
    ld a, b                                       ; $4051: $78
    ld [hl], a                                    ; $4052: $77
    ld a, b                                       ; $4053: $78
    add a                                         ; $4054: $87
    ld a, b                                       ; $4055: $78
    ld [hl], a                                    ; $4056: $77
    ld [hl], a                                    ; $4057: $77
    add a                                         ; $4058: $87
    ld [hl], a                                    ; $4059: $77
    adc b                                         ; $405a: $88
    ld [hl], a                                    ; $405b: $77
    adc b                                         ; $405c: $88
    ld [hl], a                                    ; $405d: $77
    add a                                         ; $405e: $87
    add a                                         ; $405f: $87
    add a                                         ; $4060: $87
    add a                                         ; $4061: $87
    ld a, b                                       ; $4062: $78
    ld [hl], a                                    ; $4063: $77
    adc b                                         ; $4064: $88
    ld [hl], a                                    ; $4065: $77
    ld a, b                                       ; $4066: $78
    add a                                         ; $4067: $87
    adc b                                         ; $4068: $88
    add a                                         ; $4069: $87
    ld a, b                                       ; $406a: $78
    add a                                         ; $406b: $87
    ld a, b                                       ; $406c: $78
    ld [hl], a                                    ; $406d: $77
    ld a, b                                       ; $406e: $78
    add a                                         ; $406f: $87
    add a                                         ; $4070: $87
    adc b                                         ; $4071: $88
    add a                                         ; $4072: $87
    ld a, b                                       ; $4073: $78
    ld [hl], a                                    ; $4074: $77
    adc b                                         ; $4075: $88
    ld [hl], a                                    ; $4076: $77
    ld [hl], a                                    ; $4077: $77
    ld a, b                                       ; $4078: $78
    add a                                         ; $4079: $87
    ld [hl], a                                    ; $407a: $77
    adc b                                         ; $407b: $88
    ld a, b                                       ; $407c: $78
    adc b                                         ; $407d: $88
    add a                                         ; $407e: $87
    ld [hl], a                                    ; $407f: $77
    adc b                                         ; $4080: $88
    ld [hl], a                                    ; $4081: $77
    ld [hl], a                                    ; $4082: $77
    adc b                                         ; $4083: $88
    ld [hl], a                                    ; $4084: $77
    adc b                                         ; $4085: $88
    ld [hl], a                                    ; $4086: $77
    add a                                         ; $4087: $87
    ld a, b                                       ; $4088: $78
    ld [hl], a                                    ; $4089: $77
    adc b                                         ; $408a: $88
    ld [hl], a                                    ; $408b: $77
    add a                                         ; $408c: $87
    ld a, b                                       ; $408d: $78
    ld [hl], a                                    ; $408e: $77
    ld a, b                                       ; $408f: $78
    add a                                         ; $4090: $87
    ld a, b                                       ; $4091: $78
    add a                                         ; $4092: $87
    ld [hl], a                                    ; $4093: $77
    adc b                                         ; $4094: $88
    ld [hl], a                                    ; $4095: $77
    ld a, b                                       ; $4096: $78
    add a                                         ; $4097: $87
    ld a, b                                       ; $4098: $78
    ld a, b                                       ; $4099: $78
    ld [hl], a                                    ; $409a: $77
    adc b                                         ; $409b: $88
    ld [hl], a                                    ; $409c: $77
    adc b                                         ; $409d: $88
    ld [hl], a                                    ; $409e: $77
    add a                                         ; $409f: $87
    add a                                         ; $40a0: $87
    adc b                                         ; $40a1: $88
    ld [hl], a                                    ; $40a2: $77
    add a                                         ; $40a3: $87
    adc b                                         ; $40a4: $88
    ld [hl], a                                    ; $40a5: $77
    ld [hl], a                                    ; $40a6: $77
    ld [hl], a                                    ; $40a7: $77
    adc b                                         ; $40a8: $88
    ld [hl], a                                    ; $40a9: $77
    ld a, b                                       ; $40aa: $78
    ld a, b                                       ; $40ab: $78
    ld [hl], a                                    ; $40ac: $77
    ld a, b                                       ; $40ad: $78
    adc b                                         ; $40ae: $88
    add a                                         ; $40af: $87
    add a                                         ; $40b0: $87
    adc b                                         ; $40b1: $88
    add a                                         ; $40b2: $87
    ld [hl], a                                    ; $40b3: $77
    ld a, b                                       ; $40b4: $78
    add a                                         ; $40b5: $87
    ld [hl], a                                    ; $40b6: $77
    ld a, b                                       ; $40b7: $78
    ld [hl], a                                    ; $40b8: $77
    add a                                         ; $40b9: $87
    ld [hl], a                                    ; $40ba: $77
    ld [hl], a                                    ; $40bb: $77
    adc b                                         ; $40bc: $88
    ld [hl], a                                    ; $40bd: $77
    ld a, b                                       ; $40be: $78
    adc b                                         ; $40bf: $88
    add a                                         ; $40c0: $87
    ld [hl], a                                    ; $40c1: $77
    adc b                                         ; $40c2: $88
    add a                                         ; $40c3: $87
    adc b                                         ; $40c4: $88
    adc b                                         ; $40c5: $88
    ld a, b                                       ; $40c6: $78
    ld [hl], a                                    ; $40c7: $77
    ld a, b                                       ; $40c8: $78
    adc b                                         ; $40c9: $88
    add a                                         ; $40ca: $87
    ld a, b                                       ; $40cb: $78
    ld [hl], a                                    ; $40cc: $77
    ld a, b                                       ; $40cd: $78
    add a                                         ; $40ce: $87
    ld a, b                                       ; $40cf: $78
    adc b                                         ; $40d0: $88
    add a                                         ; $40d1: $87
    ld a, b                                       ; $40d2: $78
    adc b                                         ; $40d3: $88
    ld [hl], a                                    ; $40d4: $77
    adc b                                         ; $40d5: $88
    ld a, b                                       ; $40d6: $78
    ld [hl], a                                    ; $40d7: $77
    adc b                                         ; $40d8: $88
    adc b                                         ; $40d9: $88
    adc b                                         ; $40da: $88
    ld a, b                                       ; $40db: $78
    add a                                         ; $40dc: $87
    adc b                                         ; $40dd: $88
    ld [hl], a                                    ; $40de: $77
    ld a, b                                       ; $40df: $78
    add a                                         ; $40e0: $87
    adc b                                         ; $40e1: $88
    add a                                         ; $40e2: $87
    adc b                                         ; $40e3: $88
    ld [hl], a                                    ; $40e4: $77
    adc b                                         ; $40e5: $88
    ld [hl], a                                    ; $40e6: $77
    adc b                                         ; $40e7: $88
    ld a, b                                       ; $40e8: $78
    add a                                         ; $40e9: $87
    adc b                                         ; $40ea: $88
    add a                                         ; $40eb: $87
    add a                                         ; $40ec: $87
    ld a, b                                       ; $40ed: $78
    add a                                         ; $40ee: $87
    add a                                         ; $40ef: $87
    adc b                                         ; $40f0: $88
    adc b                                         ; $40f1: $88
    adc b                                         ; $40f2: $88
    adc b                                         ; $40f3: $88
    adc b                                         ; $40f4: $88
    ld [hl], a                                    ; $40f5: $77
    ld a, b                                       ; $40f6: $78
    add a                                         ; $40f7: $87
    add a                                         ; $40f8: $87
    ld a, b                                       ; $40f9: $78
    adc b                                         ; $40fa: $88
    ld [hl], a                                    ; $40fb: $77
    adc b                                         ; $40fc: $88
    ld a, b                                       ; $40fd: $78
    adc b                                         ; $40fe: $88
    ld a, b                                       ; $40ff: $78
    adc b                                         ; $4100: $88
    adc b                                         ; $4101: $88
    adc b                                         ; $4102: $88
    ld a, b                                       ; $4103: $78
    add a                                         ; $4104: $87
    adc b                                         ; $4105: $88
    add a                                         ; $4106: $87
    ld a, b                                       ; $4107: $78
    adc b                                         ; $4108: $88
    add a                                         ; $4109: $87
    ld a, b                                       ; $410a: $78
    adc b                                         ; $410b: $88
    adc b                                         ; $410c: $88
    adc b                                         ; $410d: $88
    adc b                                         ; $410e: $88
    add a                                         ; $410f: $87
    adc b                                         ; $4110: $88
    add a                                         ; $4111: $87
    adc b                                         ; $4112: $88
    adc b                                         ; $4113: $88
    add a                                         ; $4114: $87
    ld a, b                                       ; $4115: $78
    adc b                                         ; $4116: $88
    adc b                                         ; $4117: $88
    adc b                                         ; $4118: $88
    ld [hl], a                                    ; $4119: $77
    adc b                                         ; $411a: $88
    adc b                                         ; $411b: $88
    ld [hl], a                                    ; $411c: $77
    adc b                                         ; $411d: $88
    adc b                                         ; $411e: $88
    add a                                         ; $411f: $87
    adc b                                         ; $4120: $88
    adc b                                         ; $4121: $88
    add a                                         ; $4122: $87
    adc b                                         ; $4123: $88
    adc b                                         ; $4124: $88
    ld a, b                                       ; $4125: $78
    adc b                                         ; $4126: $88
    adc b                                         ; $4127: $88
    adc b                                         ; $4128: $88
    adc b                                         ; $4129: $88
    adc b                                         ; $412a: $88
    adc b                                         ; $412b: $88
    add a                                         ; $412c: $87
    adc b                                         ; $412d: $88
    adc b                                         ; $412e: $88
    adc b                                         ; $412f: $88
    adc b                                         ; $4130: $88
    adc b                                         ; $4131: $88
    adc b                                         ; $4132: $88
    adc b                                         ; $4133: $88
    adc b                                         ; $4134: $88
    adc b                                         ; $4135: $88
    adc b                                         ; $4136: $88
    adc b                                         ; $4137: $88
    adc b                                         ; $4138: $88
    add a                                         ; $4139: $87
    adc b                                         ; $413a: $88
    ld [hl], a                                    ; $413b: $77
    adc b                                         ; $413c: $88
    add a                                         ; $413d: $87
    ld a, b                                       ; $413e: $78
    adc b                                         ; $413f: $88
    adc b                                         ; $4140: $88
    adc b                                         ; $4141: $88
    adc b                                         ; $4142: $88
    add a                                         ; $4143: $87
    adc b                                         ; $4144: $88
    add a                                         ; $4145: $87
    ld a, b                                       ; $4146: $78
    add a                                         ; $4147: $87
    ld [hl], a                                    ; $4148: $77
    ld a, b                                       ; $4149: $78
    add a                                         ; $414a: $87
    adc b                                         ; $414b: $88
    adc b                                         ; $414c: $88
    adc b                                         ; $414d: $88
    adc b                                         ; $414e: $88
    adc b                                         ; $414f: $88
    adc b                                         ; $4150: $88
    ld [hl], a                                    ; $4151: $77
    ld [hl], a                                    ; $4152: $77
    ld [hl], a                                    ; $4153: $77
    ld [hl], a                                    ; $4154: $77
    ld a, b                                       ; $4155: $78
    adc b                                         ; $4156: $88
    add a                                         ; $4157: $87
    ld a, b                                       ; $4158: $78
    adc b                                         ; $4159: $88
    add a                                         ; $415a: $87
    ld [hl], a                                    ; $415b: $77
    adc b                                         ; $415c: $88
    add a                                         ; $415d: $87
    ld [hl], a                                    ; $415e: $77
    adc b                                         ; $415f: $88
    adc b                                         ; $4160: $88
    ld [hl], a                                    ; $4161: $77
    ld a, b                                       ; $4162: $78
    adc b                                         ; $4163: $88
    ld [hl], a                                    ; $4164: $77
    adc b                                         ; $4165: $88
    adc b                                         ; $4166: $88
    add a                                         ; $4167: $87
    adc b                                         ; $4168: $88
    adc b                                         ; $4169: $88
    adc b                                         ; $416a: $88
    ld [hl], a                                    ; $416b: $77
    adc b                                         ; $416c: $88
    ld [hl], a                                    ; $416d: $77
    ld [hl], a                                    ; $416e: $77
    ld a, b                                       ; $416f: $78
    add a                                         ; $4170: $87
    ld a, b                                       ; $4171: $78
    adc b                                         ; $4172: $88
    ld [hl], a                                    ; $4173: $77
    adc b                                         ; $4174: $88
    add a                                         ; $4175: $87
    ld a, b                                       ; $4176: $78
    adc b                                         ; $4177: $88
    adc b                                         ; $4178: $88
    ld [hl], a                                    ; $4179: $77
    ld a, b                                       ; $417a: $78
    add [hl]                                      ; $417b: $86
    ld d, a                                       ; $417c: $57
    cp d                                          ; $417d: $ba
    ld h, h                                       ; $417e: $64
    ld l, c                                       ; $417f: $69
    xor c                                         ; $4180: $a9
    add a                                         ; $4181: $87
    ld h, [hl]                                    ; $4182: $66
    adc d                                         ; $4183: $8a
    sub a                                         ; $4184: $97
    ld h, a                                       ; $4185: $67
    adc b                                         ; $4186: $88
    adc b                                         ; $4187: $88
    add a                                         ; $4188: $87
    ld [hl], a                                    ; $4189: $77
    adc b                                         ; $418a: $88
    ld [hl], a                                    ; $418b: $77
    ld [hl], a                                    ; $418c: $77
    adc b                                         ; $418d: $88
    adc b                                         ; $418e: $88
    ld [hl], a                                    ; $418f: $77
    adc b                                         ; $4190: $88
    adc b                                         ; $4191: $88
    add a                                         ; $4192: $87
    ld h, a                                       ; $4193: $67
    adc b                                         ; $4194: $88
    ld [hl], a                                    ; $4195: $77
    ld [hl], a                                    ; $4196: $77
    ld a, b                                       ; $4197: $78
    adc b                                         ; $4198: $88
    ld [hl], a                                    ; $4199: $77
    ld a, b                                       ; $419a: $78
    adc b                                         ; $419b: $88
    ld [hl], a                                    ; $419c: $77
    ld [hl], a                                    ; $419d: $77
    adc b                                         ; $419e: $88
    add a                                         ; $419f: $87
    adc b                                         ; $41a0: $88
    adc b                                         ; $41a1: $88
    ld [hl], a                                    ; $41a2: $77
    add a                                         ; $41a3: $87
    ld a, b                                       ; $41a4: $78
    adc b                                         ; $41a5: $88
    ld [hl], a                                    ; $41a6: $77
    adc b                                         ; $41a7: $88
    add a                                         ; $41a8: $87

Call_015_41a9:
Jump_015_41a9:
    ld [hl], a                                    ; $41a9: $77
    adc b                                         ; $41aa: $88
    add a                                         ; $41ab: $87
    ld [hl], a                                    ; $41ac: $77
    adc c                                         ; $41ad: $89
    add a                                         ; $41ae: $87
    ld [hl], a                                    ; $41af: $77
    adc b                                         ; $41b0: $88
    adc b                                         ; $41b1: $88
    ld [hl], a                                    ; $41b2: $77
    ld [hl], a                                    ; $41b3: $77
    adc b                                         ; $41b4: $88
    ld [hl], a                                    ; $41b5: $77
    adc b                                         ; $41b6: $88
    add a                                         ; $41b7: $87
    adc b                                         ; $41b8: $88
    ld [hl], a                                    ; $41b9: $77
    adc b                                         ; $41ba: $88
    ld [hl], a                                    ; $41bb: $77
    ld a, b                                       ; $41bc: $78
    add a                                         ; $41bd: $87
    ld a, b                                       ; $41be: $78
    adc b                                         ; $41bf: $88
    adc b                                         ; $41c0: $88
    ld a, b                                       ; $41c1: $78
    add a                                         ; $41c2: $87
    adc b                                         ; $41c3: $88
    ld [hl], a                                    ; $41c4: $77
    add a                                         ; $41c5: $87
    add a                                         ; $41c6: $87
    ld a, b                                       ; $41c7: $78
    add a                                         ; $41c8: $87
    ld [hl], a                                    ; $41c9: $77
    ld [hl], a                                    ; $41ca: $77
    ld h, [hl]                                    ; $41cb: $66
    sbc e                                         ; $41cc: $9b
    add h                                         ; $41cd: $84
    ld l, b                                       ; $41ce: $68
    xor c                                         ; $41cf: $a9
    add [hl]                                      ; $41d0: $86
    ld a, b                                       ; $41d1: $78
    ld a, b                                       ; $41d2: $78
    add a                                         ; $41d3: $87
    ld a, b                                       ; $41d4: $78
    sbc b                                         ; $41d5: $98
    ld [hl], a                                    ; $41d6: $77
    ld a, b                                       ; $41d7: $78
    adc b                                         ; $41d8: $88
    ld [hl], a                                    ; $41d9: $77
    ld a, b                                       ; $41da: $78
    sub a                                         ; $41db: $97
    ld h, a                                       ; $41dc: $67
    adc b                                         ; $41dd: $88
    add a                                         ; $41de: $87
    ld [hl], a                                    ; $41df: $77
    add a                                         ; $41e0: $87
    sbc c                                         ; $41e1: $99
    halt                                          ; $41e2: $76
    ld a, b                                       ; $41e3: $78
    add a                                         ; $41e4: $87
    ld h, [hl]                                    ; $41e5: $66
    ld c, e                                       ; $41e6: $4b
    rst $20                                       ; $41e7: $e7
    inc d                                         ; $41e8: $14
    adc e                                         ; $41e9: $8b
    and a                                         ; $41ea: $a7
    ld h, [hl]                                    ; $41eb: $66
    ld d, a                                       ; $41ec: $57
    cp d                                          ; $41ed: $ba
    ld [hl], h                                    ; $41ee: $74
    ld e, c                                       ; $41ef: $59
    xor c                                         ; $41f0: $a9
    halt                                          ; $41f1: $76
    ld l, b                                       ; $41f2: $68
    adc b                                         ; $41f3: $88
    add a                                         ; $41f4: $87
    ld h, a                                       ; $41f5: $67
    adc b                                         ; $41f6: $88
    ld a, b                                       ; $41f7: $78
    add a                                         ; $41f8: $87
    ld a, b                                       ; $41f9: $78
    add a                                         ; $41fa: $87
    ld [hl], a                                    ; $41fb: $77
    add a                                         ; $41fc: $87
    add a                                         ; $41fd: $87
    ld [hl], a                                    ; $41fe: $77
    ld [hl], a                                    ; $41ff: $77
    add a                                         ; $4200: $87
    ld [hl], a                                    ; $4201: $77
    add a                                         ; $4202: $87
    ld [hl], a                                    ; $4203: $77
    ld [hl], a                                    ; $4204: $77
    ld [hl], a                                    ; $4205: $77
    ld [hl], a                                    ; $4206: $77
    ld a, b                                       ; $4207: $78
    ld a, b                                       ; $4208: $78
    add a                                         ; $4209: $87
    ld [hl], a                                    ; $420a: $77
    ld [hl], a                                    ; $420b: $77
    ld [hl], a                                    ; $420c: $77
    adc b                                         ; $420d: $88
    add a                                         ; $420e: $87
    ld [hl], a                                    ; $420f: $77
    adc b                                         ; $4210: $88
    adc b                                         ; $4211: $88
    ld [hl], l                                    ; $4212: $75
    ld c, c                                       ; $4213: $49
    add sp, $24                                   ; $4214: $e8 $24
    adc e                                         ; $4216: $8b
    and a                                         ; $4217: $a7
    ld h, l                                       ; $4218: $65
    ld e, c                                       ; $4219: $59
    cp c                                          ; $421a: $b9
    ld h, h                                       ; $421b: $64
    ld l, d                                       ; $421c: $6a
    sub a                                         ; $421d: $97
    ld h, l                                       ; $421e: $65
    ld l, c                                       ; $421f: $69
    xor c                                         ; $4220: $a9
    ld h, a                                       ; $4221: $67
    ld a, b                                       ; $4222: $78
    adc b                                         ; $4223: $88
    ld h, [hl]                                    ; $4224: $66
    ld h, a                                       ; $4225: $67
    adc c                                         ; $4226: $89
    ld [hl], d                                    ; $4227: $72
    ld a, l                                       ; $4228: $7d
    add h                                         ; $4229: $84
    ld e, b                                       ; $422a: $58
    sbc c                                         ; $422b: $99
    ld [hl], a                                    ; $422c: $77
    halt                                          ; $422d: $76
    ld l, c                                       ; $422e: $69
    xor b                                         ; $422f: $a8
    ld d, l                                       ; $4230: $55
    sbc d                                         ; $4231: $9a
    add [hl]                                      ; $4232: $86
    ld h, a                                       ; $4233: $67
    adc c                                         ; $4234: $89
    halt                                          ; $4235: $76
    ld d, l                                       ; $4236: $55
    db $dd                                        ; $4237: $dd
    ld d, e                                       ; $4238: $53
    ld e, c                                       ; $4239: $59
    cp c                                          ; $423a: $b9
    halt                                          ; $423b: $76
    ld d, [hl]                                    ; $423c: $56
    sbc e                                         ; $423d: $9b
    add l                                         ; $423e: $85
    ld d, a                                       ; $423f: $57
    xor d                                         ; $4240: $aa
    add [hl]                                      ; $4241: $86
    ld h, a                                       ; $4242: $67
    add [hl]                                      ; $4243: $86
    ld e, l                                       ; $4244: $5d
    call nc, $ab26                                ; $4245: $d4 $26 $ab
    sub [hl]                                      ; $4248: $96
    ld d, a                                       ; $4249: $57
    ld a, c                                       ; $424a: $79
    and a                                         ; $424b: $a7
    ld d, a                                       ; $424c: $57
    sbc d                                         ; $424d: $9a
    add l                                         ; $424e: $85
    ld d, a                                       ; $424f: $57
    ld l, b                                       ; $4250: $68
    ld a, [$7b23]                                 ; $4251: $fa $23 $7b
    cp b                                          ; $4254: $b8
    ld d, [hl]                                    ; $4255: $56
    ld [hl], a                                    ; $4256: $77
    sbc d                                         ; $4257: $9a
    add l                                         ; $4258: $85
    ld c, b                                       ; $4259: $48
    cp d                                          ; $425a: $ba
    halt                                          ; $425b: $76
    ld d, a                                       ; $425c: $57

Jump_015_425d:
    sbc b                                         ; $425d: $98
    ld d, a                                       ; $425e: $57
    jp z, Jump_015_7a34                           ; $425f: $ca $34 $7a

    xor b                                         ; $4262: $a8
    ld h, [hl]                                    ; $4263: $66
    ld [hl], a                                    ; $4264: $77
    sbc d                                         ; $4265: $9a
    add l                                         ; $4266: $85
    ld c, b                                       ; $4267: $48
    cp e                                          ; $4268: $bb
    add h                                         ; $4269: $84
    ld c, b                                       ; $426a: $48
    and a                                         ; $426b: $a7
    ld e, b                                       ; $426c: $58
    ret c                                         ; $426d: $d8

    dec h                                         ; $426e: $25
    sbc e                                         ; $426f: $9b
    sub a                                         ; $4270: $97
    ld d, a                                       ; $4271: $57
    adc b                                         ; $4272: $88
    sbc b                                         ; $4273: $98
    ld h, l                                       ; $4274: $65
    adc e                                         ; $4275: $8b
    sub [hl]                                      ; $4276: $96
    ld d, a                                       ; $4277: $57
    add [hl]                                      ; $4278: $86
    ld l, h                                       ; $4279: $6c
    call nc, $bb16                                ; $427a: $d4 $16 $bb
    sub [hl]                                      ; $427d: $96
    ld h, a                                       ; $427e: $67
    ld l, b                                       ; $427f: $68
    xor b                                         ; $4280: $a8
    halt                                          ; $4281: $76
    ld a, b                                       ; $4282: $78
    add a                                         ; $4283: $87
    ld h, h                                       ; $4284: $64
    adc a                                         ; $4285: $8f
    sub d                                         ; $4286: $92
    ld b, a                                       ; $4287: $47
    xor e                                         ; $4288: $ab
    add l                                         ; $4289: $85
    ld [hl], a                                    ; $428a: $77
    adc b                                         ; $428b: $88
    ld [hl], a                                    ; $428c: $77

Jump_015_428d:
    ld [hl], a                                    ; $428d: $77
    sbc c                                         ; $428e: $99
    ld [hl], l                                    ; $428f: $75
    add [hl]                                      ; $4290: $86
    ld l, l                                       ; $4291: $6d
    call nz, $ac26                                ; $4292: $c4 $26 $ac
    and [hl]                                      ; $4295: $a6
    ld d, [hl]                                    ; $4296: $56
    ld a, c                                       ; $4297: $79
    sbc b                                         ; $4298: $98
    ld h, l                                       ; $4299: $65
    ld a, c                                       ; $429a: $79
    ld [hl], h                                    ; $429b: $74
    adc [hl]                                      ; $429c: $8e
    sub e                                         ; $429d: $93
    ld b, [hl]                                    ; $429e: $46
    sbc e                                         ; $429f: $9b
    and a                                         ; $42a0: $a7
    ld h, [hl]                                    ; $42a1: $66
    ld a, d                                       ; $42a2: $7a
    and a                                         ; $42a3: $a7
    ld d, a                                       ; $42a4: $57
    sbc b                                         ; $42a5: $98
    halt                                          ; $42a6: $76
    halt                                          ; $42a7: $76
    ld e, e                                       ; $42a8: $5b
    rst $20                                       ; $42a9: $e7
    inc hl                                        ; $42aa: $23
    sbc h                                         ; $42ab: $9c
    and a                                         ; $42ac: $a7
    ld d, a                                       ; $42ad: $57
    adc b                                         ; $42ae: $88
    sbc b                                         ; $42af: $98
    ld h, l                                       ; $42b0: $65
    adc d                                         ; $42b1: $8a
    add a                                         ; $42b2: $87
    ld h, a                                       ; $42b3: $67
    adc b                                         ; $42b4: $88
    ld [hl], l                                    ; $42b5: $75
    adc e                                         ; $42b6: $8b
    sub [hl]                                      ; $42b7: $96
    ld h, a                                       ; $42b8: $67
    sbc c                                         ; $42b9: $99
    add a                                         ; $42ba: $87
    ld [hl], a                                    ; $42bb: $77
    adc b                                         ; $42bc: $88
    add a                                         ; $42bd: $87
    ld [hl], a                                    ; $42be: $77
    add a                                         ; $42bf: $87
    ld b, a                                       ; $42c0: $47
    db $ed                                        ; $42c1: $ed
    ld h, e                                       ; $42c2: $63
    ld e, c                                       ; $42c3: $59
    bit 6, l                                      ; $42c4: $cb $75
    ld e, b                                       ; $42c6: $58
    cp d                                          ; $42c7: $ba
    ld h, h                                       ; $42c8: $64
    ld l, c                                       ; $42c9: $69
    xor b                                         ; $42ca: $a8
    ld d, l                                       ; $42cb: $55
    ld b, l                                       ; $42cc: $45
    sbc $72                                       ; $42cd: $de $72
    ld e, c                                       ; $42cf: $59
    xor c                                         ; $42d0: $a9
    halt                                          ; $42d1: $76
    ld a, b                                       ; $42d2: $78
    adc b                                         ; $42d3: $88
    halt                                          ; $42d4: $76
    ld a, b                                       ; $42d5: $78
    sbc b                                         ; $42d6: $98
    ld h, [hl]                                    ; $42d7: $66
    ld a, b                                       ; $42d8: $78
    sub a                                         ; $42d9: $97
    ld h, a                                       ; $42da: $67
    ld a, b                                       ; $42db: $78
    add a                                         ; $42dc: $87
    ld [hl], a                                    ; $42dd: $77
    adc c                                         ; $42de: $89
    add a                                         ; $42df: $87
    adc b                                         ; $42e0: $88
    adc b                                         ; $42e1: $88
    add a                                         ; $42e2: $87
    ld a, b                                       ; $42e3: $78
    add a                                         ; $42e4: $87
    ld [hl], a                                    ; $42e5: $77
    ld [hl], a                                    ; $42e6: $77
    adc b                                         ; $42e7: $88
    ld h, [hl]                                    ; $42e8: $66
    ld d, a                                       ; $42e9: $57
    xor c                                         ; $42ea: $a9
    ld h, [hl]                                    ; $42eb: $66
    ld a, c                                       ; $42ec: $79
    sbc b                                         ; $42ed: $98
    ld [hl], a                                    ; $42ee: $77
    ld a, c                                       ; $42ef: $79
    sbc b                                         ; $42f0: $98
    ld [hl], a                                    ; $42f1: $77
    ld a, b                                       ; $42f2: $78
    sbc b                                         ; $42f3: $98
    ld [hl], a                                    ; $42f4: $77
    ld a, b                                       ; $42f5: $78
    add a                                         ; $42f6: $87
    ld [hl], a                                    ; $42f7: $77
    ld a, b                                       ; $42f8: $78
    add a                                         ; $42f9: $87
    ld [hl], a                                    ; $42fa: $77
    adc b                                         ; $42fb: $88
    add a                                         ; $42fc: $87
    ld a, b                                       ; $42fd: $78
    adc b                                         ; $42fe: $88
    adc b                                         ; $42ff: $88
    adc b                                         ; $4300: $88
    ld a, b                                       ; $4301: $78
    adc b                                         ; $4302: $88
    adc b                                         ; $4303: $88
    add a                                         ; $4304: $87
    ld a, b                                       ; $4305: $78
    add a                                         ; $4306: $87
    ld [hl], a                                    ; $4307: $77
    adc b                                         ; $4308: $88
    ld [hl], a                                    ; $4309: $77
    ld a, b                                       ; $430a: $78
    add a                                         ; $430b: $87
    adc b                                         ; $430c: $88
    ld [hl], a                                    ; $430d: $77
    adc b                                         ; $430e: $88
    adc b                                         ; $430f: $88
    adc b                                         ; $4310: $88
    add a                                         ; $4311: $87
    adc b                                         ; $4312: $88
    adc b                                         ; $4313: $88
    add a                                         ; $4314: $87
    adc b                                         ; $4315: $88
    add a                                         ; $4316: $87
    ld [hl], a                                    ; $4317: $77
    ld a, b                                       ; $4318: $78
    ld [hl], a                                    ; $4319: $77
    ld a, b                                       ; $431a: $78
    add a                                         ; $431b: $87
    ld [hl], a                                    ; $431c: $77
    adc b                                         ; $431d: $88
    ld [hl], a                                    ; $431e: $77
    adc b                                         ; $431f: $88
    adc b                                         ; $4320: $88
    ld [hl], a                                    ; $4321: $77
    adc b                                         ; $4322: $88
    add a                                         ; $4323: $87
    ld [hl], a                                    ; $4324: $77
    adc b                                         ; $4325: $88
    adc b                                         ; $4326: $88
    add a                                         ; $4327: $87
    ld a, b                                       ; $4328: $78
    add a                                         ; $4329: $87
    ld a, b                                       ; $432a: $78
    adc b                                         ; $432b: $88
    adc b                                         ; $432c: $88
    adc b                                         ; $432d: $88
    adc b                                         ; $432e: $88
    add a                                         ; $432f: $87
    add a                                         ; $4330: $87
    adc b                                         ; $4331: $88
    ld [hl], a                                    ; $4332: $77
    adc b                                         ; $4333: $88
    ld a, b                                       ; $4334: $78
    adc b                                         ; $4335: $88
    ld a, b                                       ; $4336: $78
    adc b                                         ; $4337: $88
    adc b                                         ; $4338: $88
    ld [hl], a                                    ; $4339: $77
    adc b                                         ; $433a: $88
    adc b                                         ; $433b: $88
    ld [hl], a                                    ; $433c: $77
    adc b                                         ; $433d: $88
    adc b                                         ; $433e: $88
    ld a, b                                       ; $433f: $78
    adc b                                         ; $4340: $88
    adc b                                         ; $4341: $88
    add a                                         ; $4342: $87
    adc b                                         ; $4343: $88
    adc b                                         ; $4344: $88
    add a                                         ; $4345: $87
    ld a, b                                       ; $4346: $78
    add a                                         ; $4347: $87
    ld a, b                                       ; $4348: $78
    adc b                                         ; $4349: $88
    adc b                                         ; $434a: $88
    adc b                                         ; $434b: $88
    add a                                         ; $434c: $87
    ld a, b                                       ; $434d: $78
    adc b                                         ; $434e: $88
    adc b                                         ; $434f: $88
    add a                                         ; $4350: $87
    adc b                                         ; $4351: $88
    add a                                         ; $4352: $87
    ld a, b                                       ; $4353: $78
    adc b                                         ; $4354: $88
    add a                                         ; $4355: $87
    adc b                                         ; $4356: $88
    adc b                                         ; $4357: $88
    add a                                         ; $4358: $87
    ld a, b                                       ; $4359: $78
    add a                                         ; $435a: $87
    ld a, b                                       ; $435b: $78
    adc b                                         ; $435c: $88
    ld [hl], a                                    ; $435d: $77
    adc b                                         ; $435e: $88
    ld a, b                                       ; $435f: $78
    adc b                                         ; $4360: $88
    adc b                                         ; $4361: $88
    adc b                                         ; $4362: $88
    adc b                                         ; $4363: $88
    adc b                                         ; $4364: $88
    adc b                                         ; $4365: $88
    ld [hl], a                                    ; $4366: $77
    adc b                                         ; $4367: $88
    ld [hl], a                                    ; $4368: $77
    adc b                                         ; $4369: $88
    adc b                                         ; $436a: $88
    ld [hl], a                                    ; $436b: $77
    add a                                         ; $436c: $87
    ld a, b                                       ; $436d: $78
    adc b                                         ; $436e: $88
    add a                                         ; $436f: $87
    adc b                                         ; $4370: $88
    add a                                         ; $4371: $87
    ld a, b                                       ; $4372: $78
    ld [hl], a                                    ; $4373: $77
    adc b                                         ; $4374: $88
    ld [hl], a                                    ; $4375: $77
    adc b                                         ; $4376: $88
    adc b                                         ; $4377: $88
    ld a, b                                       ; $4378: $78
    ld [hl], a                                    ; $4379: $77
    adc b                                         ; $437a: $88
    ld a, b                                       ; $437b: $78
    add a                                         ; $437c: $87
    ld [hl], a                                    ; $437d: $77
    adc b                                         ; $437e: $88
    ld [hl], a                                    ; $437f: $77
    adc b                                         ; $4380: $88
    add a                                         ; $4381: $87
    ld a, b                                       ; $4382: $78
    add a                                         ; $4383: $87
    ld a, b                                       ; $4384: $78
    add a                                         ; $4385: $87
    ld [hl], a                                    ; $4386: $77
    ld [hl], a                                    ; $4387: $77
    adc b                                         ; $4388: $88
    adc b                                         ; $4389: $88
    ld [hl], a                                    ; $438a: $77
    ld a, b                                       ; $438b: $78
    add a                                         ; $438c: $87
    ld [hl], a                                    ; $438d: $77
    ld a, b                                       ; $438e: $78
    add a                                         ; $438f: $87
    adc b                                         ; $4390: $88
    adc b                                         ; $4391: $88
    adc b                                         ; $4392: $88
    add a                                         ; $4393: $87
    ld a, b                                       ; $4394: $78
    adc b                                         ; $4395: $88
    ld [hl], a                                    ; $4396: $77
    ld a, b                                       ; $4397: $78
    adc b                                         ; $4398: $88
    ld [hl], a                                    ; $4399: $77
    adc b                                         ; $439a: $88
    ld a, b                                       ; $439b: $78
    adc b                                         ; $439c: $88
    adc b                                         ; $439d: $88
    ld [hl], a                                    ; $439e: $77
    adc b                                         ; $439f: $88
    adc b                                         ; $43a0: $88
    adc b                                         ; $43a1: $88
    adc b                                         ; $43a2: $88
    adc b                                         ; $43a3: $88
    ld [hl], a                                    ; $43a4: $77
    adc b                                         ; $43a5: $88
    adc b                                         ; $43a6: $88
    ld [hl], a                                    ; $43a7: $77
    adc b                                         ; $43a8: $88
    adc b                                         ; $43a9: $88
    add a                                         ; $43aa: $87
    adc b                                         ; $43ab: $88
    adc b                                         ; $43ac: $88
    adc b                                         ; $43ad: $88
    adc b                                         ; $43ae: $88
    adc b                                         ; $43af: $88
    ld a, b                                       ; $43b0: $78
    ld bc, $8888                                  ; $43b1: $01 $88 $88
    adc b                                         ; $43b4: $88
    adc b                                         ; $43b5: $88
    adc b                                         ; $43b6: $88
    adc b                                         ; $43b7: $88
    adc b                                         ; $43b8: $88
    adc b                                         ; $43b9: $88
    adc b                                         ; $43ba: $88
    adc b                                         ; $43bb: $88
    adc b                                         ; $43bc: $88
    adc b                                         ; $43bd: $88
    adc b                                         ; $43be: $88
    adc b                                         ; $43bf: $88
    adc b                                         ; $43c0: $88
    adc b                                         ; $43c1: $88
    adc b                                         ; $43c2: $88
    adc b                                         ; $43c3: $88
    adc b                                         ; $43c4: $88
    adc b                                         ; $43c5: $88
    adc b                                         ; $43c6: $88
    add a                                         ; $43c7: $87
    adc b                                         ; $43c8: $88
    adc b                                         ; $43c9: $88
    adc b                                         ; $43ca: $88
    adc b                                         ; $43cb: $88
    adc b                                         ; $43cc: $88
    adc b                                         ; $43cd: $88
    adc b                                         ; $43ce: $88
    adc b                                         ; $43cf: $88
    adc b                                         ; $43d0: $88
    adc b                                         ; $43d1: $88
    adc b                                         ; $43d2: $88
    ld [hl], a                                    ; $43d3: $77
    ld [hl], a                                    ; $43d4: $77
    adc c                                         ; $43d5: $89
    add l                                         ; $43d6: $85
    ld e, d                                       ; $43d7: $5a
    or a                                          ; $43d8: $b7
    ld h, a                                       ; $43d9: $67
    ld a, b                                       ; $43da: $78
    adc c                                         ; $43db: $89
    sub a                                         ; $43dc: $97
    ld d, a                                       ; $43dd: $57
    sbc c                                         ; $43de: $99
    add a                                         ; $43df: $87
    add a                                         ; $43e0: $87
    ld a, b                                       ; $43e1: $78
    adc b                                         ; $43e2: $88
    add a                                         ; $43e3: $87
    ld a, b                                       ; $43e4: $78
    adc b                                         ; $43e5: $88
    adc b                                         ; $43e6: $88
    ld [hl], a                                    ; $43e7: $77
    ld a, b                                       ; $43e8: $78
    adc b                                         ; $43e9: $88
    ld [hl], a                                    ; $43ea: $77
    ld a, b                                       ; $43eb: $78
    adc b                                         ; $43ec: $88
    add a                                         ; $43ed: $87
    ld [hl], a                                    ; $43ee: $77
    adc b                                         ; $43ef: $88
    add a                                         ; $43f0: $87
    ld [hl], a                                    ; $43f1: $77
    ld a, b                                       ; $43f2: $78
    adc b                                         ; $43f3: $88
    ld [hl], a                                    ; $43f4: $77
    ld a, b                                       ; $43f5: $78
    adc b                                         ; $43f6: $88
    add a                                         ; $43f7: $87
    ld [hl], a                                    ; $43f8: $77
    adc b                                         ; $43f9: $88
    adc b                                         ; $43fa: $88
    ld [hl], a                                    ; $43fb: $77
    ld [hl], a                                    ; $43fc: $77
    adc b                                         ; $43fd: $88
    ld [hl], a                                    ; $43fe: $77
    ld [hl], a                                    ; $43ff: $77
    adc b                                         ; $4400: $88
    add a                                         ; $4401: $87
    ld [hl], a                                    ; $4402: $77
    add a                                         ; $4403: $87
    ld [hl], a                                    ; $4404: $77
    ld [hl], a                                    ; $4405: $77
    ld a, b                                       ; $4406: $78
    add a                                         ; $4407: $87
    ld [hl], a                                    ; $4408: $77
    add a                                         ; $4409: $87
    ld [hl], a                                    ; $440a: $77
    adc b                                         ; $440b: $88
    ld [hl], a                                    ; $440c: $77
    adc b                                         ; $440d: $88
    ld [hl], a                                    ; $440e: $77
    ld [hl], a                                    ; $440f: $77
    add a                                         ; $4410: $87
    ld a, b                                       ; $4411: $78
    ld [hl], a                                    ; $4412: $77
    ld a, b                                       ; $4413: $78
    adc b                                         ; $4414: $88
    ld [hl], a                                    ; $4415: $77
    ld [hl], a                                    ; $4416: $77
    adc b                                         ; $4417: $88
    ld [hl], a                                    ; $4418: $77
    ld [hl], a                                    ; $4419: $77
    ld [hl], a                                    ; $441a: $77
    adc b                                         ; $441b: $88
    ld [hl], a                                    ; $441c: $77
    add a                                         ; $441d: $87
    ld a, b                                       ; $441e: $78
    ld [hl], a                                    ; $441f: $77
    adc b                                         ; $4420: $88
    ld [hl], a                                    ; $4421: $77
    ld a, b                                       ; $4422: $78
    add a                                         ; $4423: $87
    ld [hl], a                                    ; $4424: $77
    ld [hl], a                                    ; $4425: $77
    ld a, b                                       ; $4426: $78
    adc b                                         ; $4427: $88
    ld [hl], a                                    ; $4428: $77
    ld a, b                                       ; $4429: $78
    adc b                                         ; $442a: $88
    add a                                         ; $442b: $87
    ld [hl], a                                    ; $442c: $77
    adc b                                         ; $442d: $88
    add a                                         ; $442e: $87
    ld [hl], a                                    ; $442f: $77
    adc b                                         ; $4430: $88
    add a                                         ; $4431: $87
    ld [hl], a                                    ; $4432: $77
    ld a, b                                       ; $4433: $78
    add a                                         ; $4434: $87
    ld a, b                                       ; $4435: $78
    adc b                                         ; $4436: $88
    adc b                                         ; $4437: $88
    ld [hl], a                                    ; $4438: $77
    ld [hl], a                                    ; $4439: $77
    halt                                          ; $443a: $76
    ld a, e                                       ; $443b: $7b
    and [hl]                                      ; $443c: $a6
    ld d, [hl]                                    ; $443d: $56
    adc c                                         ; $443e: $89
    sbc b                                         ; $443f: $98
    ld h, [hl]                                    ; $4440: $66
    ld l, c                                       ; $4441: $69
    cp b                                          ; $4442: $b8
    ld d, [hl]                                    ; $4443: $56
    ld a, d                                       ; $4444: $7a
    and a                                         ; $4445: $a7
    ld d, [hl]                                    ; $4446: $56
    ld h, a                                       ; $4447: $67
    ld a, h                                       ; $4448: $7c
    db $e4                                        ; $4449: $e4
    ld d, $ab                                     ; $444a: $16 $ab
    xor b                                         ; $444c: $a8
    ld h, l                                       ; $444d: $65
    ld e, b                                       ; $444e: $58
    cp d                                          ; $444f: $ba
    ld h, h                                       ; $4450: $64
    ld l, b                                       ; $4451: $68
    xor c                                         ; $4452: $a9
    halt                                          ; $4453: $76
    ld h, a                                       ; $4454: $67
    sbc c                                         ; $4455: $99
    sub a                                         ; $4456: $97
    ld h, a                                       ; $4457: $67
    adc b                                         ; $4458: $88
    adc b                                         ; $4459: $88
    ld [hl], a                                    ; $445a: $77
    ld [hl], a                                    ; $445b: $77
    ld h, l                                       ; $445c: $65
    ld a, e                                       ; $445d: $7b
    sub $25                                       ; $445e: $d6 $25
    adc d                                         ; $4460: $8a
    xor b                                         ; $4461: $a8
    ld h, l                                       ; $4462: $65
    ld e, b                                       ; $4463: $58
    xor d                                         ; $4464: $aa
    ld [hl], l                                    ; $4465: $75
    ld l, c                                       ; $4466: $69
    sbc b                                         ; $4467: $98
    ld [hl], a                                    ; $4468: $77
    ld [hl], a                                    ; $4469: $77
    sbc c                                         ; $446a: $99
    halt                                          ; $446b: $76
    ld h, [hl]                                    ; $446c: $66
    ld h, a                                       ; $446d: $67
    db $eb                                        ; $446e: $eb
    ld [hl+], a                                   ; $446f: $22
    adc d                                         ; $4470: $8a
    cp c                                          ; $4471: $b9
    ld [hl], l                                    ; $4472: $75
    ld d, [hl]                                    ; $4473: $56
    xor e                                         ; $4474: $ab
    add l                                         ; $4475: $85
    ld d, a                                       ; $4476: $57
    xor d                                         ; $4477: $aa
    add [hl]                                      ; $4478: $86
    ld h, a                                       ; $4479: $67
    sbc c                                         ; $447a: $99
    add a                                         ; $447b: $87
    ld h, [hl]                                    ; $447c: $66
    adc b                                         ; $447d: $88
    halt                                          ; $447e: $76
    ld l, d                                       ; $447f: $6a
    push de                                       ; $4480: $d5
    ld [hl], $9a                                  ; $4481: $36 $9a
    sub a                                         ; $4483: $97
    halt                                          ; $4484: $76
    ld h, a                                       ; $4485: $67
    xor c                                         ; $4486: $a9
    ld [hl], l                                    ; $4487: $75
    ld a, d                                       ; $4488: $7a
    sub a                                         ; $4489: $97
    ld h, a                                       ; $448a: $67
    ld a, b                                       ; $448b: $78
    adc c                                         ; $448c: $89
    add [hl]                                      ; $448d: $86
    ld d, a                                       ; $448e: $57
    add a                                         ; $448f: $87
    ld h, l                                       ; $4490: $65
    cp [hl]                                       ; $4491: $be
    ld b, c                                       ; $4492: $41
    ld l, d                                       ; $4493: $6a
    cp c                                          ; $4494: $b9
    halt                                          ; $4495: $76
    halt                                          ; $4496: $76
    ld a, e                                       ; $4497: $7b
    and [hl]                                      ; $4498: $a6
    ld b, a                                       ; $4499: $47
    xor c                                         ; $449a: $a9
    halt                                          ; $449b: $76
    ld a, b                                       ; $449c: $78
    sbc c                                         ; $449d: $99
    add a                                         ; $449e: $87
    ld h, [hl]                                    ; $449f: $66
    adc c                                         ; $44a0: $89
    ld h, l                                       ; $44a1: $65

jr_015_44a2:
    ld l, h                                       ; $44a2: $6c
    db $e4                                        ; $44a3: $e4
    ld d, $ab                                     ; $44a4: $16 $ab
    sub a                                         ; $44a6: $97
    ld h, [hl]                                    ; $44a7: $66
    ld h, a                                       ; $44a8: $67
    cp d                                          ; $44a9: $ba
    ld h, h                                       ; $44aa: $64
    ld a, d                                       ; $44ab: $7a
    sub a                                         ; $44ac: $97
    ld h, a                                       ; $44ad: $67
    adc b                                         ; $44ae: $88
    sbc c                                         ; $44af: $99
    add [hl]                                      ; $44b0: $86
    ld l, b                                       ; $44b1: $68
    sub [hl]                                      ; $44b2: $96
    ld d, [hl]                                    ; $44b3: $56
    cp a                                          ; $44b4: $bf
    ld h, b                                       ; $44b5: $60
    ld e, d                                       ; $44b6: $5a
    cp c                                          ; $44b7: $b9
    halt                                          ; $44b8: $76
    ld h, [hl]                                    ; $44b9: $66
    ld a, e                                       ; $44ba: $7b
    or l                                          ; $44bb: $b5
    ld d, a                                       ; $44bc: $57
    sbc c                                         ; $44bd: $99
    ld [hl], a                                    ; $44be: $77
    ld a, b                                       ; $44bf: $78
    adc c                                         ; $44c0: $89
    add [hl]                                      ; $44c1: $86
    ld h, a                                       ; $44c2: $67
    adc b                                         ; $44c3: $88
    ld h, l                                       ; $44c4: $65
    ld a, l                                       ; $44c5: $7d
    db $d3                                        ; $44c6: $d3
    rla                                           ; $44c7: $17
    xor e                                         ; $44c8: $ab
    sub a                                         ; $44c9: $97
    ld d, [hl]                                    ; $44ca: $56
    ld l, c                                       ; $44cb: $69
    cp c                                          ; $44cc: $b9
    ld h, h                                       ; $44cd: $64
    ld a, d                                       ; $44ce: $7a
    sbc b                                         ; $44cf: $98
    add a                                         ; $44d0: $87
    adc b                                         ; $44d1: $88
    ld [hl], a                                    ; $44d2: $77
    adc b                                         ; $44d3: $88
    halt                                          ; $44d4: $76
    ld d, [hl]                                    ; $44d5: $56
    cp [hl]                                       ; $44d6: $be
    add c                                         ; $44d7: $81
    ld c, c                                       ; $44d8: $49
    bit 6, [hl]                                   ; $44d9: $cb $76
    ld h, a                                       ; $44db: $67
    adc c                                         ; $44dc: $89
    sub [hl]                                      ; $44dd: $96
    ld h, a                                       ; $44de: $67
    sbc c                                         ; $44df: $99
    add [hl]                                      ; $44e0: $86
    ld l, b                                       ; $44e1: $68
    ld [hl], h                                    ; $44e2: $74
    adc a                                         ; $44e3: $8f
    and d                                         ; $44e4: $a2
    jr c, jr_015_44a2                             ; $44e5: $38 $bb

    add a                                         ; $44e7: $87
    ld h, [hl]                                    ; $44e8: $66
    adc d                                         ; $44e9: $8a
    sub a                                         ; $44ea: $97
    ld d, [hl]                                    ; $44eb: $56
    adc c                                         ; $44ec: $89
    add [hl]                                      ; $44ed: $86
    ld d, l                                       ; $44ee: $55
    ld a, [hl]                                    ; $44ef: $7e
    call nc, $ac15                                ; $44f0: $d4 $15 $ac
    sub [hl]                                      ; $44f3: $96
    ld h, [hl]                                    ; $44f4: $66
    ld l, b                                       ; $44f5: $68
    jp z, $8a44                                   ; $44f6: $ca $44 $8a

    add a                                         ; $44f9: $87
    ld h, a                                       ; $44fa: $67
    adc c                                         ; $44fb: $89
    halt                                          ; $44fc: $76
    ld h, [hl]                                    ; $44fd: $66
    ld e, c                                       ; $44fe: $59
    ld sp, hl                                     ; $44ff: $f9
    inc hl                                        ; $4500: $23
    ld a, e                                       ; $4501: $7b
    cp c                                          ; $4502: $b9
    ld h, [hl]                                    ; $4503: $66
    ld l, b                                       ; $4504: $68
    xor c                                         ; $4505: $a9
    ld h, [hl]                                    ; $4506: $66
    ld a, c                                       ; $4507: $79
    sub a                                         ; $4508: $97
    ld h, [hl]                                    ; $4509: $66
    ld h, [hl]                                    ; $450a: $66
    cp a                                          ; $450b: $bf
    add c                                         ; $450c: $81
    add hl, sp                                    ; $450d: $39
    jp z, $5686                                   ; $450e: $ca $86 $56

    sbc e                                         ; $4511: $9b
    sub [hl]                                      ; $4512: $96
    ld d, a                                       ; $4513: $57
    sbc c                                         ; $4514: $99
    ld [hl], l                                    ; $4515: $75
    ld h, a                                       ; $4516: $67
    ld h, [hl]                                    ; $4517: $66
    adc $41                                       ; $4518: $ce $41
    ld a, d                                       ; $451a: $7a
    xor c                                         ; $451b: $a9
    ld [hl], a                                    ; $451c: $77
    ld [hl], a                                    ; $451d: $77
    adc d                                         ; $451e: $8a
    add [hl]                                      ; $451f: $86
    ld l, b                                       ; $4520: $68
    sbc c                                         ; $4521: $99
    halt                                          ; $4522: $76
    ld a, b                                       ; $4523: $78
    adc b                                         ; $4524: $88
    ld [hl], a                                    ; $4525: $77
    halt                                          ; $4526: $76
    ld e, b                                       ; $4527: $58
    db $db                                        ; $4528: $db
    ld b, e                                       ; $4529: $43
    ld a, d                                       ; $452a: $7a
    xor b                                         ; $452b: $a8
    ld [hl], a                                    ; $452c: $77
    ld h, a                                       ; $452d: $67
    sbc c                                         ; $452e: $99
    halt                                          ; $452f: $76
    adc b                                         ; $4530: $88
    sub a                                         ; $4531: $97
    ld h, [hl]                                    ; $4532: $66
    adc b                                         ; $4533: $88
    add [hl]                                      ; $4534: $86
    ld d, l                                       ; $4535: $55
    sbc h                                         ; $4536: $9c
    sub l                                         ; $4537: $95
    ld e, b                                       ; $4538: $58
    xor c                                         ; $4539: $a9
    ld [hl], a                                    ; $453a: $77
    ld h, a                                       ; $453b: $67
    sbc c                                         ; $453c: $99
    halt                                          ; $453d: $76
    ld a, b                                       ; $453e: $78
    adc b                                         ; $453f: $88
    add [hl]                                      ; $4540: $86
    ld [hl], a                                    ; $4541: $77
    halt                                          ; $4542: $76
    ld l, d                                       ; $4543: $6a
    and [hl]                                      ; $4544: $a6
    ld d, a                                       ; $4545: $57
    adc c                                         ; $4546: $89
    sub a                                         ; $4547: $97
    ld h, a                                       ; $4548: $67
    adc b                                         ; $4549: $88
    add a                                         ; $454a: $87
    ld [hl], a                                    ; $454b: $77
    adc b                                         ; $454c: $88
    add a                                         ; $454d: $87
    ld [hl], a                                    ; $454e: $77
    adc b                                         ; $454f: $88
    add a                                         ; $4550: $87
    ld a, b                                       ; $4551: $78
    ld [hl], a                                    ; $4552: $77
    ld [hl], a                                    ; $4553: $77
    adc b                                         ; $4554: $88
    ld [hl], a                                    ; $4555: $77
    ld [hl], a                                    ; $4556: $77
    ld a, b                                       ; $4557: $78
    add a                                         ; $4558: $87
    ld a, b                                       ; $4559: $78
    adc b                                         ; $455a: $88
    add a                                         ; $455b: $87
    ld a, b                                       ; $455c: $78
    adc b                                         ; $455d: $88
    add a                                         ; $455e: $87
    ld [hl], a                                    ; $455f: $77
    adc b                                         ; $4560: $88
    ld [hl], a                                    ; $4561: $77
    ld [hl], a                                    ; $4562: $77
    ld [hl], a                                    ; $4563: $77
    ld [hl], a                                    ; $4564: $77
    ld [hl], a                                    ; $4565: $77
    ld a, b                                       ; $4566: $78
    add a                                         ; $4567: $87
    ld a, b                                       ; $4568: $78
    ld [hl], a                                    ; $4569: $77
    adc b                                         ; $456a: $88
    ld a, b                                       ; $456b: $78
    adc b                                         ; $456c: $88
    adc b                                         ; $456d: $88
    ld [hl], a                                    ; $456e: $77
    ld a, b                                       ; $456f: $78
    add a                                         ; $4570: $87
    ld [hl], a                                    ; $4571: $77
    ld [hl], a                                    ; $4572: $77
    add a                                         ; $4573: $87
    ld [hl], a                                    ; $4574: $77
    adc b                                         ; $4575: $88
    ld [hl], a                                    ; $4576: $77
    ld [hl], a                                    ; $4577: $77
    adc b                                         ; $4578: $88
    ld [hl], a                                    ; $4579: $77
    ld [hl], a                                    ; $457a: $77
    ld a, b                                       ; $457b: $78
    add a                                         ; $457c: $87
    ld [hl], a                                    ; $457d: $77
    ld a, b                                       ; $457e: $78
    adc b                                         ; $457f: $88
    add a                                         ; $4580: $87
    ld a, b                                       ; $4581: $78
    adc b                                         ; $4582: $88
    ld [hl], a                                    ; $4583: $77
    ld a, b                                       ; $4584: $78
    add a                                         ; $4585: $87

Call_015_4586:
    ld a, b                                       ; $4586: $78
    add a                                         ; $4587: $87
    ld [hl], a                                    ; $4588: $77
    ld a, b                                       ; $4589: $78
    add a                                         ; $458a: $87
    ld [hl], a                                    ; $458b: $77
    adc b                                         ; $458c: $88
    ld [hl], a                                    ; $458d: $77
    ld [hl], a                                    ; $458e: $77
    adc b                                         ; $458f: $88
    add a                                         ; $4590: $87
    ld a, b                                       ; $4591: $78
    ld [hl], a                                    ; $4592: $77
    ld a, b                                       ; $4593: $78
    ld [hl], a                                    ; $4594: $77

Call_015_4595:
    adc b                                         ; $4595: $88
    add a                                         ; $4596: $87
    ld [hl], a                                    ; $4597: $77
    adc b                                         ; $4598: $88
    ld [hl], a                                    ; $4599: $77
    ld [hl], a                                    ; $459a: $77
    ld [hl], a                                    ; $459b: $77
    add a                                         ; $459c: $87
    ld a, b                                       ; $459d: $78
    add a                                         ; $459e: $87
    ld [hl], a                                    ; $459f: $77
    adc b                                         ; $45a0: $88
    add a                                         ; $45a1: $87
    ld a, b                                       ; $45a2: $78
    ld [hl], a                                    ; $45a3: $77
    adc b                                         ; $45a4: $88
    add a                                         ; $45a5: $87
    ld [hl], a                                    ; $45a6: $77
    add a                                         ; $45a7: $87
    adc b                                         ; $45a8: $88
    ld [hl], a                                    ; $45a9: $77
    adc b                                         ; $45aa: $88
    add a                                         ; $45ab: $87
    ld a, b                                       ; $45ac: $78
    adc b                                         ; $45ad: $88
    ld [hl], a                                    ; $45ae: $77
    ld a, b                                       ; $45af: $78
    adc b                                         ; $45b0: $88
    adc b                                         ; $45b1: $88
    adc b                                         ; $45b2: $88
    ld [hl], a                                    ; $45b3: $77
    adc b                                         ; $45b4: $88
    add a                                         ; $45b5: $87
    ld [hl], a                                    ; $45b6: $77
    adc b                                         ; $45b7: $88
    add a                                         ; $45b8: $87
    ld [hl], a                                    ; $45b9: $77
    adc b                                         ; $45ba: $88
    add a                                         ; $45bb: $87
    ld a, b                                       ; $45bc: $78
    adc b                                         ; $45bd: $88
    ld a, b                                       ; $45be: $78
    add a                                         ; $45bf: $87
    adc b                                         ; $45c0: $88
    adc b                                         ; $45c1: $88
    ld a, b                                       ; $45c2: $78
    adc b                                         ; $45c3: $88
    ld a, b                                       ; $45c4: $78
    adc b                                         ; $45c5: $88
    adc b                                         ; $45c6: $88
    adc b                                         ; $45c7: $88
    adc b                                         ; $45c8: $88
    adc b                                         ; $45c9: $88
    add a                                         ; $45ca: $87
    ld a, b                                       ; $45cb: $78
    adc b                                         ; $45cc: $88
    adc b                                         ; $45cd: $88
    adc b                                         ; $45ce: $88
    add a                                         ; $45cf: $87
    adc b                                         ; $45d0: $88
    adc b                                         ; $45d1: $88
    ld a, b                                       ; $45d2: $78
    add a                                         ; $45d3: $87
    adc b                                         ; $45d4: $88
    ld [hl], a                                    ; $45d5: $77
    adc b                                         ; $45d6: $88
    add a                                         ; $45d7: $87
    adc b                                         ; $45d8: $88
    adc b                                         ; $45d9: $88
    add a                                         ; $45da: $87
    adc b                                         ; $45db: $88
    adc b                                         ; $45dc: $88
    ld a, b                                       ; $45dd: $78
    adc b                                         ; $45de: $88
    adc b                                         ; $45df: $88
    add a                                         ; $45e0: $87
    adc b                                         ; $45e1: $88
    ld a, b                                       ; $45e2: $78
    adc b                                         ; $45e3: $88
    ld a, b                                       ; $45e4: $78
    add a                                         ; $45e5: $87
    ld a, b                                       ; $45e6: $78
    adc b                                         ; $45e7: $88
    ld [hl], a                                    ; $45e8: $77
    adc b                                         ; $45e9: $88
    adc b                                         ; $45ea: $88
    ld [hl], a                                    ; $45eb: $77
    adc b                                         ; $45ec: $88
    adc b                                         ; $45ed: $88
    ld [hl], a                                    ; $45ee: $77
    ld a, b                                       ; $45ef: $78
    adc b                                         ; $45f0: $88
    ld [hl], a                                    ; $45f1: $77
    ld a, b                                       ; $45f2: $78
    adc b                                         ; $45f3: $88
    ld [hl], a                                    ; $45f4: $77
    ld a, b                                       ; $45f5: $78
    adc b                                         ; $45f6: $88
    ld a, b                                       ; $45f7: $78
    ld [hl], a                                    ; $45f8: $77
    adc b                                         ; $45f9: $88
    adc b                                         ; $45fa: $88
    ld [hl], a                                    ; $45fb: $77
    adc b                                         ; $45fc: $88
    ld [hl], a                                    ; $45fd: $77
    ld [hl], a                                    ; $45fe: $77
    ld [hl], a                                    ; $45ff: $77
    add a                                         ; $4600: $87
    ld [hl], a                                    ; $4601: $77
    ld a, b                                       ; $4602: $78
    add a                                         ; $4603: $87
    ld [hl], a                                    ; $4604: $77
    adc b                                         ; $4605: $88
    ld [hl], a                                    ; $4606: $77
    adc b                                         ; $4607: $88
    ld [hl], a                                    ; $4608: $77
    add a                                         ; $4609: $87
    ld a, b                                       ; $460a: $78
    ld [hl], a                                    ; $460b: $77
    ld [hl], a                                    ; $460c: $77
    ld a, b                                       ; $460d: $78
    ld [hl], a                                    ; $460e: $77
    ld [hl], a                                    ; $460f: $77
    adc b                                         ; $4610: $88
    ld [hl], a                                    ; $4611: $77
    ld [hl], a                                    ; $4612: $77
    ld a, b                                       ; $4613: $78
    ld [hl], a                                    ; $4614: $77
    adc b                                         ; $4615: $88
    ld [hl], a                                    ; $4616: $77
    adc b                                         ; $4617: $88
    ld [hl], a                                    ; $4618: $77
    add a                                         ; $4619: $87
    ld a, b                                       ; $461a: $78
    ld [hl], a                                    ; $461b: $77
    add a                                         ; $461c: $87
    ld [hl], a                                    ; $461d: $77
    adc b                                         ; $461e: $88
    ld [hl], a                                    ; $461f: $77
    adc b                                         ; $4620: $88
    ld a, b                                       ; $4621: $78
    add a                                         ; $4622: $87
    ld a, b                                       ; $4623: $78
    ld [hl], a                                    ; $4624: $77
    adc b                                         ; $4625: $88
    ld [hl], a                                    ; $4626: $77
    ld a, b                                       ; $4627: $78
    add a                                         ; $4628: $87
    ld a, b                                       ; $4629: $78
    ld [hl], a                                    ; $462a: $77
    adc b                                         ; $462b: $88
    ld [hl], a                                    ; $462c: $77
    adc b                                         ; $462d: $88
    ld a, b                                       ; $462e: $78
    add a                                         ; $462f: $87
    adc b                                         ; $4630: $88
    ld [hl], a                                    ; $4631: $77
    adc b                                         ; $4632: $88
    ld [hl], a                                    ; $4633: $77
    ld [hl], a                                    ; $4634: $77
    adc b                                         ; $4635: $88
    add a                                         ; $4636: $87
    ld a, b                                       ; $4637: $78
    add a                                         ; $4638: $87
    ld a, b                                       ; $4639: $78
    ld a, b                                       ; $463a: $78
    ld [hl], a                                    ; $463b: $77
    add a                                         ; $463c: $87
    ld a, b                                       ; $463d: $78
    ld a, b                                       ; $463e: $78
    adc b                                         ; $463f: $88
    add a                                         ; $4640: $87
    ld a, b                                       ; $4641: $78
    add a                                         ; $4642: $87
    ld a, b                                       ; $4643: $78
    add a                                         ; $4644: $87
    ld [hl], a                                    ; $4645: $77
    add a                                         ; $4646: $87
    ld a, b                                       ; $4647: $78
    ld [hl], a                                    ; $4648: $77
    adc b                                         ; $4649: $88
    ld [hl], a                                    ; $464a: $77
    add a                                         ; $464b: $87
    adc b                                         ; $464c: $88
    ld a, b                                       ; $464d: $78
    add a                                         ; $464e: $87
    ld a, b                                       ; $464f: $78
    adc b                                         ; $4650: $88
    ld [hl], a                                    ; $4651: $77
    ld a, b                                       ; $4652: $78
    add a                                         ; $4653: $87
    ld [hl], a                                    ; $4654: $77
    ld a, b                                       ; $4655: $78
    adc b                                         ; $4656: $88
    ld [hl], a                                    ; $4657: $77
    ld [hl], a                                    ; $4658: $77
    adc b                                         ; $4659: $88
    ld [hl], a                                    ; $465a: $77
    add a                                         ; $465b: $87
    ld a, b                                       ; $465c: $78
    ld [hl], a                                    ; $465d: $77
    ld [hl], a                                    ; $465e: $77
    adc b                                         ; $465f: $88
    add a                                         ; $4660: $87
    add a                                         ; $4661: $87
    adc b                                         ; $4662: $88
    ld [hl], a                                    ; $4663: $77
    ld a, b                                       ; $4664: $78

Jump_015_4665:
    add a                                         ; $4665: $87
    ld a, b                                       ; $4666: $78
    add a                                         ; $4667: $87
    add a                                         ; $4668: $87
    ld a, b                                       ; $4669: $78
    add a                                         ; $466a: $87
    add a                                         ; $466b: $87
    ld a, b                                       ; $466c: $78
    add a                                         ; $466d: $87
    add a                                         ; $466e: $87
    ld a, b                                       ; $466f: $78
    add a                                         ; $4670: $87
    add a                                         ; $4671: $87
    ld a, b                                       ; $4672: $78
    add a                                         ; $4673: $87
    add a                                         ; $4674: $87
    ld a, b                                       ; $4675: $78
    add a                                         ; $4676: $87
    add a                                         ; $4677: $87
    ld a, b                                       ; $4678: $78
    add a                                         ; $4679: $87
    adc b                                         ; $467a: $88
    ld a, b                                       ; $467b: $78
    add a                                         ; $467c: $87
    adc b                                         ; $467d: $88
    adc b                                         ; $467e: $88
    ld [hl], a                                    ; $467f: $77
    adc b                                         ; $4680: $88
    add a                                         ; $4681: $87
    ld [hl], a                                    ; $4682: $77
    adc b                                         ; $4683: $88
    adc b                                         ; $4684: $88
    ld a, b                                       ; $4685: $78
    adc b                                         ; $4686: $88

Jump_015_4687:
    adc b                                         ; $4687: $88
    ld [hl], a                                    ; $4688: $77
    adc b                                         ; $4689: $88
    adc b                                         ; $468a: $88
    adc b                                         ; $468b: $88
    ld [hl], a                                    ; $468c: $77
    ld a, b                                       ; $468d: $78
    add a                                         ; $468e: $87
    adc b                                         ; $468f: $88
    adc b                                         ; $4690: $88
    adc b                                         ; $4691: $88
    add a                                         ; $4692: $87
    ld a, b                                       ; $4693: $78
    add a                                         ; $4694: $87
    ld [hl], a                                    ; $4695: $77
    ld a, b                                       ; $4696: $78
    adc b                                         ; $4697: $88
    ld [hl], a                                    ; $4698: $77
    ld a, b                                       ; $4699: $78
    adc b                                         ; $469a: $88
    ld [hl], a                                    ; $469b: $77
    ld a, b                                       ; $469c: $78
    adc b                                         ; $469d: $88
    ld [hl], a                                    ; $469e: $77
    add a                                         ; $469f: $87
    adc b                                         ; $46a0: $88
    add a                                         ; $46a1: $87
    ld a, b                                       ; $46a2: $78
    ld [hl], a                                    ; $46a3: $77
    ld a, b                                       ; $46a4: $78
    add a                                         ; $46a5: $87
    ld [hl], a                                    ; $46a6: $77
    add a                                         ; $46a7: $87
    ld [hl], a                                    ; $46a8: $77
    adc b                                         ; $46a9: $88
    ld [hl], a                                    ; $46aa: $77
    ld a, b                                       ; $46ab: $78
    ld [hl], a                                    ; $46ac: $77
    add a                                         ; $46ad: $87
    ld a, b                                       ; $46ae: $78
    ld [hl], a                                    ; $46af: $77
    add a                                         ; $46b0: $87
    ld [hl], a                                    ; $46b1: $77
    ld [hl], a                                    ; $46b2: $77
    ld [hl], a                                    ; $46b3: $77
    ld a, b                                       ; $46b4: $78
    add a                                         ; $46b5: $87
    ld [hl], a                                    ; $46b6: $77
    adc b                                         ; $46b7: $88
    ld [hl], a                                    ; $46b8: $77
    ld [hl], a                                    ; $46b9: $77
    ld [hl], a                                    ; $46ba: $77
    adc b                                         ; $46bb: $88
    ld [hl], a                                    ; $46bc: $77
    ld a, b                                       ; $46bd: $78
    add a                                         ; $46be: $87
    ld [hl], a                                    ; $46bf: $77
    adc b                                         ; $46c0: $88
    ld [hl], a                                    ; $46c1: $77
    ld [hl], a                                    ; $46c2: $77
    adc b                                         ; $46c3: $88
    adc b                                         ; $46c4: $88
    add a                                         ; $46c5: $87
    adc b                                         ; $46c6: $88
    ld a, b                                       ; $46c7: $78
    add a                                         ; $46c8: $87
    ld [hl], a                                    ; $46c9: $77
    ld [hl], a                                    ; $46ca: $77
    ld [hl], a                                    ; $46cb: $77
    adc b                                         ; $46cc: $88
    ld [hl], a                                    ; $46cd: $77
    ld a, b                                       ; $46ce: $78
    adc b                                         ; $46cf: $88
    add a                                         ; $46d0: $87
    ld [hl], a                                    ; $46d1: $77
    adc b                                         ; $46d2: $88
    add a                                         ; $46d3: $87
    ld a, b                                       ; $46d4: $78
    adc b                                         ; $46d5: $88
    adc b                                         ; $46d6: $88
    ld a, b                                       ; $46d7: $78
    adc b                                         ; $46d8: $88
    add a                                         ; $46d9: $87
    ld a, b                                       ; $46da: $78
    adc b                                         ; $46db: $88
    add a                                         ; $46dc: $87
    adc b                                         ; $46dd: $88
    adc b                                         ; $46de: $88
    adc b                                         ; $46df: $88
    add a                                         ; $46e0: $87
    adc b                                         ; $46e1: $88
    adc b                                         ; $46e2: $88
    adc b                                         ; $46e3: $88
    ld [hl], a                                    ; $46e4: $77
    adc b                                         ; $46e5: $88
    adc b                                         ; $46e6: $88
    adc b                                         ; $46e7: $88
    adc b                                         ; $46e8: $88
    adc b                                         ; $46e9: $88
    adc b                                         ; $46ea: $88
    adc b                                         ; $46eb: $88
    adc b                                         ; $46ec: $88
    adc b                                         ; $46ed: $88
    adc b                                         ; $46ee: $88
    adc b                                         ; $46ef: $88
    adc b                                         ; $46f0: $88
    adc b                                         ; $46f1: $88
    adc b                                         ; $46f2: $88
    adc b                                         ; $46f3: $88
    adc b                                         ; $46f4: $88
    adc b                                         ; $46f5: $88
    add a                                         ; $46f6: $87
    ld a, b                                       ; $46f7: $78
    adc b                                         ; $46f8: $88
    ld [hl], a                                    ; $46f9: $77
    adc b                                         ; $46fa: $88
    adc b                                         ; $46fb: $88
    ld a, b                                       ; $46fc: $78
    adc b                                         ; $46fd: $88
    adc b                                         ; $46fe: $88
    adc b                                         ; $46ff: $88
    add a                                         ; $4700: $87
    ld a, b                                       ; $4701: $78
    adc b                                         ; $4702: $88
    add a                                         ; $4703: $87
    ld [hl], a                                    ; $4704: $77
    add a                                         ; $4705: $87
    ld h, a                                       ; $4706: $67
    sbc e                                         ; $4707: $9b
    add h                                         ; $4708: $84
    ld e, b                                       ; $4709: $58
    xor c                                         ; $470a: $a9
    add a                                         ; $470b: $87
    ld h, [hl]                                    ; $470c: $66
    ld a, c                                       ; $470d: $79
    xor b                                         ; $470e: $a8
    ld h, [hl]                                    ; $470f: $66
    adc c                                         ; $4710: $89
    sub a                                         ; $4711: $97
    ld [hl], a                                    ; $4712: $77
    ld a, b                                       ; $4713: $78
    adc b                                         ; $4714: $88
    add a                                         ; $4715: $87
    ld [hl], a                                    ; $4716: $77
    adc b                                         ; $4717: $88
    add a                                         ; $4718: $87
    adc b                                         ; $4719: $88
    ld [hl], a                                    ; $471a: $77
    adc b                                         ; $471b: $88
    add a                                         ; $471c: $87
    ld a, b                                       ; $471d: $78
    adc b                                         ; $471e: $88
    ld a, b                                       ; $471f: $78
    adc b                                         ; $4720: $88
    adc b                                         ; $4721: $88
    add a                                         ; $4722: $87
    ld a, b                                       ; $4723: $78
    adc b                                         ; $4724: $88
    adc b                                         ; $4725: $88
    adc b                                         ; $4726: $88
    adc b                                         ; $4727: $88
    adc b                                         ; $4728: $88
    ld a, b                                       ; $4729: $78
    adc b                                         ; $472a: $88
    adc b                                         ; $472b: $88
    adc b                                         ; $472c: $88
    add a                                         ; $472d: $87
    ld a, b                                       ; $472e: $78
    adc b                                         ; $472f: $88
    add a                                         ; $4730: $87
    adc b                                         ; $4731: $88
    add a                                         ; $4732: $87
    adc b                                         ; $4733: $88
    ld a, b                                       ; $4734: $78
    adc b                                         ; $4735: $88
    ld [hl], a                                    ; $4736: $77
    adc b                                         ; $4737: $88
    ld a, b                                       ; $4738: $78
    adc b                                         ; $4739: $88
    ld a, b                                       ; $473a: $78
    adc b                                         ; $473b: $88
    ld [hl], a                                    ; $473c: $77
    adc b                                         ; $473d: $88
    ld [hl], a                                    ; $473e: $77
    ld [hl], a                                    ; $473f: $77
    add [hl]                                      ; $4740: $86
    ld h, [hl]                                    ; $4741: $66
    call $5961                                    ; $4742: $cd $61 $59
    cp c                                          ; $4745: $b9
    add a                                         ; $4746: $87
    ld h, [hl]                                    ; $4747: $66
    adc d                                         ; $4748: $8a
    and a                                         ; $4749: $a7
    ld d, [hl]                                    ; $474a: $56
    adc c                                         ; $474b: $89
    add a                                         ; $474c: $87
    ld h, a                                       ; $474d: $67
    sbc c                                         ; $474e: $99
    adc b                                         ; $474f: $88
    add a                                         ; $4750: $87
    adc b                                         ; $4751: $88
    adc b                                         ; $4752: $88
    add a                                         ; $4753: $87
    halt                                          ; $4754: $76
    ld h, [hl]                                    ; $4755: $66
    cp h                                          ; $4756: $bc
    ld [hl], e                                    ; $4757: $73
    ld e, c                                       ; $4758: $59
    xor c                                         ; $4759: $a9
    add a                                         ; $475a: $87
    ld h, l                                       ; $475b: $65
    ld a, d                                       ; $475c: $7a
    and a                                         ; $475d: $a7
    ld d, [hl]                                    ; $475e: $56
    adc c                                         ; $475f: $89
    adc b                                         ; $4760: $88
    adc b                                         ; $4761: $88
    ld h, [hl]                                    ; $4762: $66
    ld a, b                                       ; $4763: $78

Call_015_4764:
    ld h, a                                       ; $4764: $67
    db $db                                        ; $4765: $db
    ld [hl-], a                                   ; $4766: $32
    ld a, e                                       ; $4767: $7b
    ret z                                         ; $4768: $c8

    ld h, [hl]                                    ; $4769: $66
    ld h, [hl]                                    ; $476a: $66
    sbc e                                         ; $476b: $9b
    sub [hl]                                      ; $476c: $96
    ld b, a                                       ; $476d: $47
    xor d                                         ; $476e: $aa
    halt                                          ; $476f: $76
    add a                                         ; $4770: $87
    adc b                                         ; $4771: $88
    adc c                                         ; $4772: $89
    halt                                          ; $4773: $76

Call_015_4774:
    ld a, b                                       ; $4774: $78
    sbc b                                         ; $4775: $98
    ld h, a                                       ; $4776: $67
    adc b                                         ; $4777: $88
    ld a, b                                       ; $4778: $78
    ld [hl], l                                    ; $4779: $75
    ld e, d                                       ; $477a: $5a
    add sp, $24                                   ; $477b: $e8 $24
    adc d                                         ; $477d: $8a
    xor b                                         ; $477e: $a8
    halt                                          ; $477f: $76
    ld d, a                                       ; $4780: $57
    xor e                                         ; $4781: $ab
    add l                                         ; $4782: $85
    ld d, a                                       ; $4783: $57
    sbc c                                         ; $4784: $99
    sbc b                                         ; $4785: $98
    ld h, l                                       ; $4786: $65
    ld [hl], a                                    ; $4787: $77
    ld l, c                                       ; $4788: $69
    ld hl, sp+$03                                 ; $4789: $f8 $03
    sbc h                                         ; $478b: $9c
    and a                                         ; $478c: $a7
    ld h, [hl]                                    ; $478d: $66
    ld h, a                                       ; $478e: $67
    xor d                                         ; $478f: $aa
    add h                                         ; $4790: $84
    ld c, b                                       ; $4791: $48
    cp c                                          ; $4792: $b9
    ld h, l                                       ; $4793: $65
    ld l, b                                       ; $4794: $68
    sbc b                                         ; $4795: $98
    add a                                         ; $4796: $87
    ld h, a                                       ; $4797: $67
    adc c                                         ; $4798: $89
    sub [hl]                                      ; $4799: $96
    ld d, [hl]                                    ; $479a: $56
    ld l, b                                       ; $479b: $68
    ld a, [$7b12]                                 ; $479c: $fa $12 $7b
    cp b                                          ; $479f: $b8
    ld h, [hl]                                    ; $47a0: $66
    ld d, [hl]                                    ; $47a1: $56
    xor e                                         ; $47a2: $ab
    add l                                         ; $47a3: $85
    ld b, a                                       ; $47a4: $47
    xor d                                         ; $47a5: $aa
    halt                                          ; $47a6: $76
    ld [hl], a                                    ; $47a7: $77
    adc c                                         ; $47a8: $89
    sbc b                                         ; $47a9: $98
    ld h, a                                       ; $47aa: $67
    add a                                         ; $47ab: $87
    ld h, l                                       ; $47ac: $65
    adc $41                                       ; $47ad: $ce $41
    ld a, e                                       ; $47af: $7b
    xor b                                         ; $47b0: $a8
    ld [hl], a                                    ; $47b1: $77
    ld h, [hl]                                    ; $47b2: $66
    adc e                                         ; $47b3: $8b
    sub [hl]                                      ; $47b4: $96
    ld b, [hl]                                    ; $47b5: $46
    xor d                                         ; $47b6: $aa
    add [hl]                                      ; $47b7: $86
    ld [hl], a                                    ; $47b8: $77
    adc c                                         ; $47b9: $89
    sbc b                                         ; $47ba: $98
    ld h, [hl]                                    ; $47bb: $66
    add a                                         ; $47bc: $87
    halt                                          ; $47bd: $76
    sbc [hl]                                      ; $47be: $9e
    add b                                         ; $47bf: $80
    ld c, e                                       ; $47c0: $4b
    cp b                                          ; $47c1: $b8
    ld [hl], a                                    ; $47c2: $77
    ld h, [hl]                                    ; $47c3: $66
    ld a, d                                       ; $47c4: $7a
    and a                                         ; $47c5: $a7
    ld b, l                                       ; $47c6: $45
    xor e                                         ; $47c7: $ab
    add l                                         ; $47c8: $85
    ld h, a                                       ; $47c9: $67
    adc d                                         ; $47ca: $8a
    sub a                                         ; $47cb: $97
    ld h, [hl]                                    ; $47cc: $66
    adc b                                         ; $47cd: $88
    ld h, l                                       ; $47ce: $65
    sbc [hl]                                      ; $47cf: $9e
    add b                                         ; $47d0: $80
    ld c, e                                       ; $47d1: $4b
    cp b                                          ; $47d2: $b8
    ld h, a                                       ; $47d3: $67
    halt                                          ; $47d4: $76
    ld a, d                                       ; $47d5: $7a
    and a                                         ; $47d6: $a7
    ld b, l                                       ; $47d7: $45
    xor e                                         ; $47d8: $ab
    add l                                         ; $47d9: $85
    ld e, b                                       ; $47da: $58
    sbc c                                         ; $47db: $99
    sbc b                                         ; $47dc: $98
    ld h, l                                       ; $47dd: $65
    ld a, b                                       ; $47de: $78
    ld h, [hl]                                    ; $47df: $66
    call Call_015_7c30                            ; $47e0: $cd $30 $7c
    or a                                          ; $47e3: $b7
    ld d, [hl]                                    ; $47e4: $56
    ld [hl], a                                    ; $47e5: $77
    sbc d                                         ; $47e6: $9a
    sub l                                         ; $47e7: $95
    ld b, a                                       ; $47e8: $47
    cp d                                          ; $47e9: $ba
    ld h, h                                       ; $47ea: $64
    ld l, c                                       ; $47eb: $69
    xor c                                         ; $47ec: $a9
    halt                                          ; $47ed: $76
    ld h, [hl]                                    ; $47ee: $66
    add a                                         ; $47ef: $87
    adc h                                         ; $47f0: $8c
    and d                                         ; $47f1: $a2
    add hl, hl                                    ; $47f2: $29
    cp d                                          ; $47f3: $ba
    ld [hl], l                                    ; $47f4: $75
    ld h, a                                       ; $47f5: $67
    ld a, c                                       ; $47f6: $79
    xor b                                         ; $47f7: $a8
    ld d, l                                       ; $47f8: $55
    adc e                                         ; $47f9: $8b
    and [hl]                                      ; $47fa: $a6
    ld d, [hl]                                    ; $47fb: $56
    adc c                                         ; $47fc: $89
    add a                                         ; $47fd: $87
    halt                                          ; $47fe: $76
    ld d, [hl]                                    ; $47ff: $56
    adc $50                                       ; $4800: $ce $50
    ld l, e                                       ; $4802: $6b
    xor b                                         ; $4803: $a8
    halt                                          ; $4804: $76
    ld h, [hl]                                    ; $4805: $66
    adc d                                         ; $4806: $8a
    sub [hl]                                      ; $4807: $96
    ld d, [hl]                                    ; $4808: $56
    sbc d                                         ; $4809: $9a
    add a                                         ; $480a: $87
    ld h, a                                       ; $480b: $67
    adc b                                         ; $480c: $88
    ld [hl], a                                    ; $480d: $77
    halt                                          ; $480e: $76
    ld l, b                                       ; $480f: $68
    jp c, $9a23                                   ; $4810: $da $23 $9a

    xor b                                         ; $4813: $a8
    ld h, [hl]                                    ; $4814: $66
    ld h, a                                       ; $4815: $67
    sbc d                                         ; $4816: $9a
    ld [hl], l                                    ; $4817: $75
    ld l, b                                       ; $4818: $68
    xor c                                         ; $4819: $a9
    halt                                          ; $481a: $76
    ld a, b                                       ; $481b: $78
    adc b                                         ; $481c: $88
    ld [hl], l                                    ; $481d: $75
    ld l, h                                       ; $481e: $6c
    db $e4                                        ; $481f: $e4
    rla                                           ; $4820: $17
    cp e                                          ; $4821: $bb
    sub l                                         ; $4822: $95
    ld l, b                                       ; $4823: $68
    adc b                                         ; $4824: $88
    xor b                                         ; $4825: $a8
    ld h, l                                       ; $4826: $65
    ld a, d                                       ; $4827: $7a
    and [hl]                                      ; $4828: $a6
    ld d, [hl]                                    ; $4829: $56
    halt                                          ; $482a: $76
    ld l, h                                       ; $482b: $6c
    db $e4                                        ; $482c: $e4
    dec b                                         ; $482d: $05
    cp l                                          ; $482e: $bd
    sub l                                         ; $482f: $95
    ld d, a                                       ; $4830: $57
    ld a, c                                       ; $4831: $79
    cp c                                          ; $4832: $b9
    ld d, h                                       ; $4833: $54
    ld l, d                                       ; $4834: $6a
    cp b                                          ; $4835: $b8
    ld d, l                                       ; $4836: $55
    ld a, c                                       ; $4837: $79
    sbc b                                         ; $4838: $98
    ld [hl], l                                    ; $4839: $75
    ld e, c                                       ; $483a: $59
    ret z                                         ; $483b: $c8

    dec [hl]                                      ; $483c: $35
    sbc d                                         ; $483d: $9a
    add a                                         ; $483e: $87
    ld [hl], a                                    ; $483f: $77
    ld h, a                                       ; $4840: $67
    sbc d                                         ; $4841: $9a
    ld [hl], l                                    ; $4842: $75
    ld l, c                                       ; $4843: $69
    xor b                                         ; $4844: $a8
    ld [hl], a                                    ; $4845: $77
    adc b                                         ; $4846: $88
    add a                                         ; $4847: $87
    adc b                                         ; $4848: $88
    ld [hl], a                                    ; $4849: $77
    adc b                                         ; $484a: $88
    halt                                          ; $484b: $76
    ld a, c                                       ; $484c: $79
    add a                                         ; $484d: $87
    ld a, b                                       ; $484e: $78
    ld [hl], a                                    ; $484f: $77
    add a                                         ; $4850: $87
    ld a, b                                       ; $4851: $78
    ld [hl], a                                    ; $4852: $77
    ld a, b                                       ; $4853: $78
    adc b                                         ; $4854: $88
    add a                                         ; $4855: $87
    adc b                                         ; $4856: $88
    add a                                         ; $4857: $87
    ld [hl], a                                    ; $4858: $77
    halt                                          ; $4859: $76
    add hl, sp                                    ; $485a: $39
    ei                                            ; $485b: $fb
    jr nc, jr_015_48ca                            ; $485c: $30 $6c

    ret                                           ; $485e: $c9


    ld d, l                                       ; $485f: $55
    ld l, b                                       ; $4860: $68
    sbc b                                         ; $4861: $98
    adc b                                         ; $4862: $88

Call_015_4863:
    ld [hl], a                                    ; $4863: $77
    adc c                                         ; $4864: $89
    ld h, l                                       ; $4865: $65
    ld d, a                                       ; $4866: $57
    db $ed                                        ; $4867: $ed
    ld b, b                                       ; $4868: $40
    ld c, e                                       ; $4869: $4b
    jp c, $5765                                   ; $486a: $da $65 $57

    adc e                                         ; $486d: $8b
    and [hl]                                      ; $486e: $a6
    dec [hl]                                      ; $486f: $35
    sbc d                                         ; $4870: $9a
    sub a                                         ; $4871: $97
    ld d, [hl]                                    ; $4872: $56
    ld a, b                                       ; $4873: $78

Call_015_4874:
    adc b                                         ; $4874: $88
    adc b                                         ; $4875: $88
    halt                                          ; $4876: $76
    adc b                                         ; $4877: $88
    adc c                                         ; $4878: $89
    add [hl]                                      ; $4879: $86
    ld l, b                                       ; $487a: $68
    sbc c                                         ; $487b: $99
    halt                                          ; $487c: $76
    ld a, b                                       ; $487d: $78
    sbc b                                         ; $487e: $98
    halt                                          ; $487f: $76
    adc b                                         ; $4880: $88
    sbc b                                         ; $4881: $98
    ld [hl], a                                    ; $4882: $77
    ld a, b                                       ; $4883: $78
    adc b                                         ; $4884: $88
    add a                                         ; $4885: $87
    ld h, [hl]                                    ; $4886: $66
    ld e, c                                       ; $4887: $59
    ld a, [$6c21]                                 ; $4888: $fa $21 $6c
    ret                                           ; $488b: $c9


    ld d, h                                       ; $488c: $54
    ld l, c                                       ; $488d: $69
    cp c                                          ; $488e: $b9
    ld d, l                                       ; $488f: $55
    adc c                                         ; $4890: $89
    xor b                                         ; $4891: $a8
    ld h, l                                       ; $4892: $65
    ld h, [hl]                                    ; $4893: $66
    sbc h                                         ; $4894: $9c
    sub h                                         ; $4895: $94
    ld h, $ac                                     ; $4896: $26 $ac
    and [hl]                                      ; $4898: $a6
    ld d, [hl]                                    ; $4899: $56
    adc c                                         ; $489a: $89
    xor c                                         ; $489b: $a9
    ld h, h                                       ; $489c: $64
    ld l, d                                       ; $489d: $6a
    cp c                                          ; $489e: $b9
    ld h, l                                       ; $489f: $65
    ld l, b                                       ; $48a0: $68
    sub a                                         ; $48a1: $97
    ld e, b                                       ; $48a2: $58
    rst $00                                       ; $48a3: $c7
    ld d, $ba                                     ; $48a4: $16 $ba
    add [hl]                                      ; $48a6: $86
    ld h, a                                       ; $48a7: $67
    ld a, b                                       ; $48a8: $78
    sbc c                                         ; $48a9: $99
    ld h, l                                       ; $48aa: $65
    ld a, d                                       ; $48ab: $7a
    and a                                         ; $48ac: $a7
    ld d, [hl]                                    ; $48ad: $56
    adc c                                         ; $48ae: $89
    add a                                         ; $48af: $87
    add a                                         ; $48b0: $87
    ld a, b                                       ; $48b1: $78
    adc b                                         ; $48b2: $88
    ld [hl], a                                    ; $48b3: $77
    ld a, b                                       ; $48b4: $78
    add a                                         ; $48b5: $87
    adc b                                         ; $48b6: $88
    ld [hl], a                                    ; $48b7: $77
    adc b                                         ; $48b8: $88
    add a                                         ; $48b9: $87
    ld a, b                                       ; $48ba: $78
    add a                                         ; $48bb: $87
    ld a, b                                       ; $48bc: $78
    add a                                         ; $48bd: $87
    ld a, b                                       ; $48be: $78
    add a                                         ; $48bf: $87
    adc b                                         ; $48c0: $88
    ld [hl], a                                    ; $48c1: $77
    ld [hl], a                                    ; $48c2: $77
    ld [hl], a                                    ; $48c3: $77
    ld h, a                                       ; $48c4: $67
    xor d                                         ; $48c5: $aa
    ld h, l                                       ; $48c6: $65
    ld a, d                                       ; $48c7: $7a
    or a                                          ; $48c8: $b7
    ld d, [hl]                                    ; $48c9: $56

jr_015_48ca:
    adc b                                         ; $48ca: $88
    add a                                         ; $48cb: $87
    ld [hl], a                                    ; $48cc: $77
    ld h, h                                       ; $48cd: $64
    ld a, a                                       ; $48ce: $7f
    jp $bb06                                      ; $48cf: $c3 $06 $bb


    add [hl]                                      ; $48d2: $86
    ld h, [hl]                                    ; $48d3: $66
    ld l, c                                       ; $48d4: $69
    jp z, Jump_015_7b42                           ; $48d5: $ca $42 $7b

    and a                                         ; $48d8: $a7
    ld h, [hl]                                    ; $48d9: $66
    ld l, b                                       ; $48da: $68
    sbc b                                         ; $48db: $98
    ld h, l                                       ; $48dc: $65
    xor l                                         ; $48dd: $ad
    ld d, e                                       ; $48de: $53
    ld a, c                                       ; $48df: $79
    sbc b                                         ; $48e0: $98
    ld h, a                                       ; $48e1: $67
    halt                                          ; $48e2: $76
    adc d                                         ; $48e3: $8a
    sub [hl]                                      ; $48e4: $96
    ld d, a                                       ; $48e5: $57
    xor d                                         ; $48e6: $aa
    halt                                          ; $48e7: $76
    ld a, b                                       ; $48e8: $78
    add a                                         ; $48e9: $87
    adc b                                         ; $48ea: $88
    ld [hl], a                                    ; $48eb: $77
    adc b                                         ; $48ec: $88
    ld [hl], l                                    ; $48ed: $75
    ld e, e                                       ; $48ee: $5b
    rst $30                                       ; $48ef: $f7
    inc b                                         ; $48f0: $04
    sbc e                                         ; $48f1: $9b
    and a                                         ; $48f2: $a7
    ld d, [hl]                                    ; $48f3: $56
    ld a, b                                       ; $48f4: $78
    sbc c                                         ; $48f5: $99
    add [hl]                                      ; $48f6: $86
    ld l, b                                       ; $48f7: $68
    sbc c                                         ; $48f8: $99
    add a                                         ; $48f9: $87
    ld h, a                                       ; $48fa: $67
    adc b                                         ; $48fb: $88
    ld a, b                                       ; $48fc: $78
    ld [hl], a                                    ; $48fd: $77
    ld [hl], a                                    ; $48fe: $77
    halt                                          ; $48ff: $76
    ld l, b                                       ; $4900: $68
    call z, $5a52                                 ; $4901: $cc $52 $5a
    jp z, $5764                                   ; $4904: $ca $64 $57

    xor e                                         ; $4907: $ab
    sub l                                         ; $4908: $95
    ld b, a                                       ; $4909: $47
    xor d                                         ; $490a: $aa
    add [hl]                                      ; $490b: $86
    ld d, a                                       ; $490c: $57
    xor c                                         ; $490d: $a9
    ld [hl], a                                    ; $490e: $77
    ld h, a                                       ; $490f: $67
    adc b                                         ; $4910: $88
    ld h, l                                       ; $4911: $65
    xor [hl]                                      ; $4912: $ae
    ld [hl], c                                    ; $4913: $71
    ld c, d                                       ; $4914: $4a
    jp z, Jump_015_6776                           ; $4915: $ca $76 $67

    adc c                                         ; $4918: $89
    add a                                         ; $4919: $87
    ld a, b                                       ; $491a: $78
    sbc b                                         ; $491b: $98
    ld h, [hl]                                    ; $491c: $66
    adc b                                         ; $491d: $88
    add a                                         ; $491e: $87
    ld h, [hl]                                    ; $491f: $66
    adc d                                         ; $4920: $8a
    and [hl]                                      ; $4921: $a6
    ld d, a                                       ; $4922: $57
    sbc d                                         ; $4923: $9a
    add [hl]                                      ; $4924: $86
    ld l, b                                       ; $4925: $68
    adc b                                         ; $4926: $88
    add a                                         ; $4927: $87
    ld l, b                                       ; $4928: $68
    adc b                                         ; $4929: $88
    halt                                          ; $492a: $76
    ld h, [hl]                                    ; $492b: $66
    ld e, h                                       ; $492c: $5c
    and $25                                       ; $492d: $e6 $25
    sbc d                                         ; $492f: $9a
    sbc b                                         ; $4930: $98
    halt                                          ; $4931: $76
    ld a, c                                       ; $4932: $79
    add a                                         ; $4933: $87
    ld [hl], a                                    ; $4934: $77
    adc c                                         ; $4935: $89
    add a                                         ; $4936: $87
    ld [hl], a                                    ; $4937: $77
    adc c                                         ; $4938: $89
    halt                                          ; $4939: $76
    adc b                                         ; $493a: $88
    adc b                                         ; $493b: $88
    ld [hl], a                                    ; $493c: $77
    ld [hl], a                                    ; $493d: $77
    adc b                                         ; $493e: $88
    ld h, a                                       ; $493f: $67
    add [hl]                                      ; $4940: $86
    ld b, a                                       ; $4941: $47
    call z, $5963                                 ; $4942: $cc $63 $59
    jp z, Jump_015_7965                           ; $4945: $ca $65 $79

    sbc b                                         ; $4948: $98
    halt                                          ; $4949: $76
    ld a, c                                       ; $494a: $79
    xor b                                         ; $494b: $a8
    ld h, [hl]                                    ; $494c: $66
    adc c                                         ; $494d: $89
    sub a                                         ; $494e: $97
    ld h, a                                       ; $494f: $67
    sbc b                                         ; $4950: $98
    add a                                         ; $4951: $87

Call_015_4952:
    ld [hl], a                                    ; $4952: $77

Jump_015_4953:
    adc b                                         ; $4953: $88
    add [hl]                                      ; $4954: $86
    ld [hl], a                                    ; $4955: $77
    add a                                         ; $4956: $87
    ld h, [hl]                                    ; $4957: $66
    ld a, c                                       ; $4958: $79
    xor b                                         ; $4959: $a8
    ld h, a                                       ; $495a: $67
    adc c                                         ; $495b: $89
    adc b                                         ; $495c: $88
    adc b                                         ; $495d: $88
    adc b                                         ; $495e: $88
    add a                                         ; $495f: $87
    adc b                                         ; $4960: $88
    adc b                                         ; $4961: $88

Call_015_4962:
    adc b                                         ; $4962: $88
    adc b                                         ; $4963: $88

Jump_015_4964:
    ld a, b                                       ; $4964: $78
    add a                                         ; $4965: $87
    ld a, b                                       ; $4966: $78
    add a                                         ; $4967: $87
    ld a, b                                       ; $4968: $78
    ld a, b                                       ; $4969: $78
    add a                                         ; $496a: $87
    ld a, b                                       ; $496b: $78
    add a                                         ; $496c: $87
    ld [hl], a                                    ; $496d: $77
    ld [hl], a                                    ; $496e: $77
    ld [hl], a                                    ; $496f: $77
    add a                                         ; $4970: $87
    ld [hl], a                                    ; $4971: $77
    ld [hl], a                                    ; $4972: $77
    ld [hl], a                                    ; $4973: $77

Jump_015_4974:
    ld [hl], a                                    ; $4974: $77
    add a                                         ; $4975: $87
    ld a, b                                       ; $4976: $78
    adc b                                         ; $4977: $88
    ld a, b                                       ; $4978: $78
    add a                                         ; $4979: $87
    ld a, b                                       ; $497a: $78
    add a                                         ; $497b: $87
    adc b                                         ; $497c: $88
    ld [hl], a                                    ; $497d: $77
    adc b                                         ; $497e: $88
    add a                                         ; $497f: $87
    adc b                                         ; $4980: $88
    add a                                         ; $4981: $87
    ld [hl], a                                    ; $4982: $77
    ld a, b                                       ; $4983: $78
    add a                                         ; $4984: $87
    ld [hl], a                                    ; $4985: $77
    adc b                                         ; $4986: $88
    ld [hl], a                                    ; $4987: $77
    ld [hl], a                                    ; $4988: $77
    ld a, b                                       ; $4989: $78
    ld [hl], a                                    ; $498a: $77
    ld a, b                                       ; $498b: $78
    add a                                         ; $498c: $87
    ld [hl], a                                    ; $498d: $77
    adc b                                         ; $498e: $88
    add a                                         ; $498f: $87
    add a                                         ; $4990: $87
    ld [hl], a                                    ; $4991: $77
    ld [hl], a                                    ; $4992: $77
    ld [hl], a                                    ; $4993: $77
    ld a, b                                       ; $4994: $78
    add a                                         ; $4995: $87
    ld a, b                                       ; $4996: $78
    ld a, b                                       ; $4997: $78
    add a                                         ; $4998: $87
    ld a, b                                       ; $4999: $78
    adc b                                         ; $499a: $88
    add a                                         ; $499b: $87
    ld a, b                                       ; $499c: $78
    ld a, b                                       ; $499d: $78
    adc b                                         ; $499e: $88
    adc b                                         ; $499f: $88
    adc b                                         ; $49a0: $88
    adc b                                         ; $49a1: $88
    add a                                         ; $49a2: $87
    ld a, b                                       ; $49a3: $78
    adc b                                         ; $49a4: $88
    add a                                         ; $49a5: $87
    ld [hl], a                                    ; $49a6: $77
    ld a, b                                       ; $49a7: $78
    adc b                                         ; $49a8: $88
    add a                                         ; $49a9: $87
    ld a, b                                       ; $49aa: $78
    adc b                                         ; $49ab: $88
    adc b                                         ; $49ac: $88
    ld [hl], a                                    ; $49ad: $77
    ld a, b                                       ; $49ae: $78
    adc b                                         ; $49af: $88
    add a                                         ; $49b0: $87
    ld a, b                                       ; $49b1: $78
    add a                                         ; $49b2: $87
    ld [hl], a                                    ; $49b3: $77
    ld a, b                                       ; $49b4: $78
    sub a                                         ; $49b5: $97
    ld [hl], a                                    ; $49b6: $77
    adc b                                         ; $49b7: $88
    adc b                                         ; $49b8: $88
    ld [hl], a                                    ; $49b9: $77
    ld h, [hl]                                    ; $49ba: $66
    ld a, c                                       ; $49bb: $79
    sbc c                                         ; $49bc: $99
    ld h, l                                       ; $49bd: $65
    ld a, b                                       ; $49be: $78
    sbc c                                         ; $49bf: $99
    add a                                         ; $49c0: $87
    ld h, a                                       ; $49c1: $67
    adc c                                         ; $49c2: $89
    sub a                                         ; $49c3: $97
    ld h, a                                       ; $49c4: $67
    ld a, b                                       ; $49c5: $78
    adc b                                         ; $49c6: $88
    ld [hl], a                                    ; $49c7: $77
    ld a, b                                       ; $49c8: $78
    adc b                                         ; $49c9: $88
    ld [hl], a                                    ; $49ca: $77
    ld [hl], a                                    ; $49cb: $77
    adc b                                         ; $49cc: $88
    adc b                                         ; $49cd: $88
    ld [hl], a                                    ; $49ce: $77
    adc b                                         ; $49cf: $88
    adc b                                         ; $49d0: $88
    ld [hl], a                                    ; $49d1: $77
    ld [hl], a                                    ; $49d2: $77
    halt                                          ; $49d3: $76
    ld a, d                                       ; $49d4: $7a
    sub a                                         ; $49d5: $97
    ld h, a                                       ; $49d6: $67
    adc b                                         ; $49d7: $88
    sbc c                                         ; $49d8: $99
    add a                                         ; $49d9: $87
    ld h, a                                       ; $49da: $67
    adc b                                         ; $49db: $88
    halt                                          ; $49dc: $76
    sbc c                                         ; $49dd: $99
    ld h, [hl]                                    ; $49de: $66
    ld a, b                                       ; $49df: $78
    sbc c                                         ; $49e0: $99
    add a                                         ; $49e1: $87
    ld [hl], a                                    ; $49e2: $77
    adc b                                         ; $49e3: $88
    ld [hl], a                                    ; $49e4: $77
    ld h, a                                       ; $49e5: $67
    ld l, d                                       ; $49e6: $6a
    or [hl]                                       ; $49e7: $b6
    ld d, [hl]                                    ; $49e8: $56
    adc c                                         ; $49e9: $89
    sbc b                                         ; $49ea: $98
    halt                                          ; $49eb: $76
    ld a, b                                       ; $49ec: $78
    add a                                         ; $49ed: $87
    ld [hl], l                                    ; $49ee: $75
    adc e                                         ; $49ef: $8b
    add [hl]                                      ; $49f0: $86
    ld h, a                                       ; $49f1: $67
    adc c                                         ; $49f2: $89
    sbc b                                         ; $49f3: $98
    ld h, [hl]                                    ; $49f4: $66
    ld a, c                                       ; $49f5: $79
    add a                                         ; $49f6: $87
    ld h, a                                       ; $49f7: $67
    ret z                                         ; $49f8: $c8

    ld h, [hl]                                    ; $49f9: $66
    ld l, b                                       ; $49fa: $68
    xor d                                         ; $49fb: $aa
    add [hl]                                      ; $49fc: $86
    ld h, a                                       ; $49fd: $67
    sbc b                                         ; $49fe: $98
    halt                                          ; $49ff: $76
    adc d                                         ; $4a00: $8a
    add a                                         ; $4a01: $87
    ld h, a                                       ; $4a02: $67
    adc c                                         ; $4a03: $89
    sbc b                                         ; $4a04: $98
    halt                                          ; $4a05: $76
    ld a, b                                       ; $4a06: $78
    add a                                         ; $4a07: $87
    ld h, a                                       ; $4a08: $67
    or a                                          ; $4a09: $b7
    halt                                          ; $4a0a: $76
    ld a, b                                       ; $4a0b: $78
    sbc c                                         ; $4a0c: $99
    add [hl]                                      ; $4a0d: $86
    ld h, a                                       ; $4a0e: $67
    add a                                         ; $4a0f: $87
    ld h, [hl]                                    ; $4a10: $66
    xor c                                         ; $4a11: $a9
    ld h, a                                       ; $4a12: $67
    ld [hl], a                                    ; $4a13: $77
    sbc c                                         ; $4a14: $99
    sub a                                         ; $4a15: $97
    ld h, a                                       ; $4a16: $67
    adc b                                         ; $4a17: $88
    halt                                          ; $4a18: $76
    ld a, e                                       ; $4a19: $7b
    add a                                         ; $4a1a: $87
    ld [hl], a                                    ; $4a1b: $77
    adc c                                         ; $4a1c: $89
    xor b                                         ; $4a1d: $a8
    ld h, [hl]                                    ; $4a1e: $66
    ld a, b                                       ; $4a1f: $78
    add [hl]                                      ; $4a20: $86
    ld a, d                                       ; $4a21: $7a
    sub [hl]                                      ; $4a22: $96
    ld [hl], a                                    ; $4a23: $77
    ld a, b                                       ; $4a24: $78
    xor c                                         ; $4a25: $a9
    halt                                          ; $4a26: $76
    ld a, b                                       ; $4a27: $78
    add a                                         ; $4a28: $87
    ld l, c                                       ; $4a29: $69
    sub [hl]                                      ; $4a2a: $96
    ld [hl], a                                    ; $4a2b: $77
    ld a, b                                       ; $4a2c: $78
    xor d                                         ; $4a2d: $aa
    halt                                          ; $4a2e: $76
    ld l, b                                       ; $4a2f: $68
    add a                                         ; $4a30: $87
    ld l, c                                       ; $4a31: $69
    and [hl]                                      ; $4a32: $a6
    ld h, a                                       ; $4a33: $67
    ld a, b                                       ; $4a34: $78
    sbc d                                         ; $4a35: $9a
    halt                                          ; $4a36: $76
    ld l, b                                       ; $4a37: $68
    adc b                                         ; $4a38: $88
    ld h, a                                       ; $4a39: $67
    and a                                         ; $4a3a: $a7
    ld h, a                                       ; $4a3b: $67
    ld [hl], a                                    ; $4a3c: $77
    adc d                                         ; $4a3d: $8a
    add [hl]                                      ; $4a3e: $86
    ld h, a                                       ; $4a3f: $67
    sbc c                                         ; $4a40: $99
    ld h, l                                       ; $4a41: $65
    sbc c                                         ; $4a42: $99
    ld [hl], a                                    ; $4a43: $77
    ld [hl], a                                    ; $4a44: $77
    adc c                                         ; $4a45: $89
    sub a                                         ; $4a46: $97
    ld h, [hl]                                    ; $4a47: $66
    ld h, l                                       ; $4a48: $65
    xor [hl]                                      ; $4a49: $ae
    ld [hl], e                                    ; $4a4a: $73
    ld c, b                                       ; $4a4b: $48
    sbc d                                         ; $4a4c: $9a
    or a                                          ; $4a4d: $b7
    ld b, l                                       ; $4a4e: $45
    sbc c                                         ; $4a4f: $99
    add a                                         ; $4a50: $87
    ld e, b                                       ; $4a51: $58
    sub a                                         ; $4a52: $97
    ld [hl], a                                    ; $4a53: $77
    ld [hl], a                                    ; $4a54: $77
    xor c                                         ; $4a55: $a9
    halt                                          ; $4a56: $76
    ld h, a                                       ; $4a57: $67
    add a                                         ; $4a58: $87
    sbc e                                         ; $4a59: $9b
    ld d, l                                       ; $4a5a: $55
    ld a, c                                       ; $4a5b: $79
    adc b                                         ; $4a5c: $88
    and a                                         ; $4a5d: $a7
    ld h, a                                       ; $4a5e: $67
    add a                                         ; $4a5f: $87
    ld e, c                                       ; $4a60: $59
    push de                                       ; $4a61: $d5
    ld d, a                                       ; $4a62: $57
    sbc b                                         ; $4a63: $98
    sbc d                                         ; $4a64: $9a
    halt                                          ; $4a65: $76
    ld l, b                                       ; $4a66: $68
    add [hl]                                      ; $4a67: $86
    ld l, e                                       ; $4a68: $6b
    sub l                                         ; $4a69: $95
    ld l, b                                       ; $4a6a: $68
    adc b                                         ; $4a6b: $88
    xor c                                         ; $4a6c: $a9
    ld h, [hl]                                    ; $4a6d: $66
    ld l, b                                       ; $4a6e: $68
    add a                                         ; $4a6f: $87
    adc d                                         ; $4a70: $8a
    ld [hl], l                                    ; $4a71: $75
    ld a, c                                       ; $4a72: $79
    ld [hl], a                                    ; $4a73: $77
    sbc b                                         ; $4a74: $98
    ld h, [hl]                                    ; $4a75: $66
    add a                                         ; $4a76: $87
    ld [hl], a                                    ; $4a77: $77
    xor c                                         ; $4a78: $a9
    ld d, l                                       ; $4a79: $55
    adc c                                         ; $4a7a: $89
    adc c                                         ; $4a7b: $89
    add [hl]                                      ; $4a7c: $86
    ld d, [hl]                                    ; $4a7d: $56
    sbc d                                         ; $4a7e: $9a
    halt                                          ; $4a7f: $76
    adc c                                         ; $4a80: $89
    halt                                          ; $4a81: $76
    adc b                                         ; $4a82: $88
    adc b                                         ; $4a83: $88
    add a                                         ; $4a84: $87
    ld h, a                                       ; $4a85: $67
    halt                                          ; $4a86: $76
    adc l                                         ; $4a87: $8d
    sub d                                         ; $4a88: $92
    ld e, c                                       ; $4a89: $59
    adc c                                         ; $4a8a: $89
    or a                                          ; $4a8b: $b7
    ld d, [hl]                                    ; $4a8c: $56
    ld [hl], l                                    ; $4a8d: $75
    ld a, l                                       ; $4a8e: $7d
    call nc, $9927                                ; $4a8f: $d4 $27 $99
    cp d                                          ; $4a92: $ba
    ld d, h                                       ; $4a93: $54
    ld a, b                                       ; $4a94: $78
    ld h, a                                       ; $4a95: $67
    jp c, $9934                                   ; $4a96: $da $34 $99

    adc d                                         ; $4a99: $8a
    sub l                                         ; $4a9a: $95
    ld l, b                                       ; $4a9b: $68
    add [hl]                                      ; $4a9c: $86
    ld l, e                                       ; $4a9d: $6b
    and h                                         ; $4a9e: $a4
    ld e, c                                       ; $4a9f: $59
    sub a                                         ; $4aa0: $97
    sbc c                                         ; $4aa1: $99
    ld h, l                                       ; $4aa2: $65
    ld a, c                                       ; $4aa3: $79
    halt                                          ; $4aa4: $76
    xor d                                         ; $4aa5: $aa
    ld d, l                                       ; $4aa6: $55
    sbc c                                         ; $4aa7: $99
    ld a, b                                       ; $4aa8: $78
    add a                                         ; $4aa9: $87
    ld h, a                                       ; $4aaa: $67
    add a                                         ; $4aab: $87
    ld l, b                                       ; $4aac: $68
    sbc b                                         ; $4aad: $98
    ld h, a                                       ; $4aae: $67
    ld [hl], a                                    ; $4aaf: $77
    sbc c                                         ; $4ab0: $99
    add [hl]                                      ; $4ab1: $86
    ld h, a                                       ; $4ab2: $67
    ld [hl], a                                    ; $4ab3: $77
    ld a, d                                       ; $4ab4: $7a
    and l                                         ; $4ab5: $a5
    ld e, b                                       ; $4ab6: $58
    adc c                                         ; $4ab7: $89
    xor b                                         ; $4ab8: $a8
    ld h, [hl]                                    ; $4ab9: $66
    ld h, l                                       ; $4aba: $65
    ld a, l                                       ; $4abb: $7d
    push de                                       ; $4abc: $d5
    ld d, $98                                     ; $4abd: $16 $98
    bit 2, h                                      ; $4abf: $cb $54
    ld h, [hl]                                    ; $4ac1: $66
    ld h, a                                       ; $4ac2: $67
    db $eb                                        ; $4ac3: $eb
    ld [hl+], a                                   ; $4ac4: $22
    adc c                                         ; $4ac5: $89
    adc h                                         ; $4ac6: $8c
    sub l                                         ; $4ac7: $95
    ld b, a                                       ; $4ac8: $47
    add [hl]                                      ; $4ac9: $86
    ld l, l                                       ; $4aca: $6d
    and d                                         ; $4acb: $a2
    ld c, c                                       ; $4acc: $49
    sub a                                         ; $4acd: $97
    xor c                                         ; $4ace: $a9
    ld h, l                                       ; $4acf: $65
    adc b                                         ; $4ad0: $88
    add l                                         ; $4ad1: $85
    xor h                                         ; $4ad2: $ac
    ld d, h                                       ; $4ad3: $54
    sbc d                                         ; $4ad4: $9a
    ld l, b                                       ; $4ad5: $68
    and a                                         ; $4ad6: $a7
    ld h, a                                       ; $4ad7: $67
    add a                                         ; $4ad8: $87
    ld e, c                                       ; $4ad9: $59
    rst $00                                       ; $4ada: $c7
    scf                                           ; $4adb: $37
    and a                                         ; $4adc: $a7
    adc d                                         ; $4add: $8a
    add [hl]                                      ; $4ade: $86
    ld e, b                                       ; $4adf: $58
    add a                                         ; $4ae0: $87
    ld a, c                                       ; $4ae1: $79
    sub [hl]                                      ; $4ae2: $96
    ld l, b                                       ; $4ae3: $68
    add a                                         ; $4ae4: $87
    sbc c                                         ; $4ae5: $99
    halt                                          ; $4ae6: $76
    ld a, b                                       ; $4ae7: $78
    add [hl]                                      ; $4ae8: $86
    ld a, c                                       ; $4ae9: $79
    sbc b                                         ; $4aea: $98
    ld h, [hl]                                    ; $4aeb: $66
    ld l, c                                       ; $4aec: $69
    cp c                                          ; $4aed: $b9
    ld h, l                                       ; $4aee: $65
    ld h, [hl]                                    ; $4aef: $66
    ld l, d                                       ; $4af0: $6a
    ld a, [$8912]                                 ; $4af1: $fa $12 $89
    call z, $5873                                 ; $4af4: $cc $73 $58
    ld [hl], l                                    ; $4af7: $75
    xor a                                         ; $4af8: $af
    add c                                         ; $4af9: $81
    ld c, b                                       ; $4afa: $48
    sbc d                                         ; $4afb: $9a
    and a                                         ; $4afc: $a7
    ld d, [hl]                                    ; $4afd: $56
    ld [hl], l                                    ; $4afe: $75
    ld e, l                                       ; $4aff: $5d
    push de                                       ; $4b00: $d5
    ld d, $9a                                     ; $4b01: $16 $9a
    cp c                                          ; $4b03: $b9
    ld d, l                                       ; $4b04: $55
    ld [hl], a                                    ; $4b05: $77
    ld [hl], a                                    ; $4b06: $77
    jp z, $8944                                   ; $4b07: $ca $44 $89

    sbc b                                         ; $4b0a: $98
    add [hl]                                      ; $4b0b: $86
    ld l, b                                       ; $4b0c: $68
    sub a                                         ; $4b0d: $97
    ld e, d                                       ; $4b0e: $5a
    and [hl]                                      ; $4b0f: $a6
    ld e, b                                       ; $4b10: $58
    sub a                                         ; $4b11: $97
    adc b                                         ; $4b12: $88
    add a                                         ; $4b13: $87
    ld a, b                                       ; $4b14: $78
    ld d, [hl]                                    ; $4b15: $56
    cp d                                          ; $4b16: $ba
    ld h, l                                       ; $4b17: $65
    adc b                                         ; $4b18: $88
    adc b                                         ; $4b19: $88
    add a                                         ; $4b1a: $87
    ld h, a                                       ; $4b1b: $67
    add a                                         ; $4b1c: $87
    ld a, b                                       ; $4b1d: $78
    sbc b                                         ; $4b1e: $98
    ld [hl], a                                    ; $4b1f: $77
    add a                                         ; $4b20: $87
    ld a, b                                       ; $4b21: $78
    sbc b                                         ; $4b22: $98
    halt                                          ; $4b23: $76
    ld [hl], a                                    ; $4b24: $77
    add a                                         ; $4b25: $87
    ld a, c                                       ; $4b26: $79
    sub a                                         ; $4b27: $97
    ld h, [hl]                                    ; $4b28: $66
    adc c                                         ; $4b29: $89
    add a                                         ; $4b2a: $87
    ld h, a                                       ; $4b2b: $67
    ld [hl], a                                    ; $4b2c: $77
    ld a, b                                       ; $4b2d: $78
    xor b                                         ; $4b2e: $a8
    halt                                          ; $4b2f: $76
    adc b                                         ; $4b30: $88
    sbc c                                         ; $4b31: $99
    add [hl]                                      ; $4b32: $86
    ld h, a                                       ; $4b33: $67
    ld h, l                                       ; $4b34: $65
    adc l                                         ; $4b35: $8d
    and l                                         ; $4b36: $a5
    ld b, [hl]                                    ; $4b37: $46
    adc d                                         ; $4b38: $8a
    xor b                                         ; $4b39: $a8
    ld h, l                                       ; $4b3a: $65
    ld h, h                                       ; $4b3b: $64
    ld l, [hl]                                    ; $4b3c: $6e
    sub $34                                       ; $4b3d: $d6 $34
    adc d                                         ; $4b3f: $8a
    xor b                                         ; $4b40: $a8
    ld h, l                                       ; $4b41: $65
    ld h, l                                       ; $4b42: $65
    ld a, l                                       ; $4b43: $7d
    add $34                                       ; $4b44: $c6 $34
    sbc d                                         ; $4b46: $9a
    xor b                                         ; $4b47: $a8
    halt                                          ; $4b48: $76
    ld d, l                                       ; $4b49: $55
    ld e, e                                       ; $4b4a: $5b
    ret c                                         ; $4b4b: $d8

    ld d, l                                       ; $4b4c: $55
    ld [hl], a                                    ; $4b4d: $77
    sbc c                                         ; $4b4e: $99
    halt                                          ; $4b4f: $76
    ld l, b                                       ; $4b50: $68
    add a                                         ; $4b51: $87
    ld [hl], a                                    ; $4b52: $77
    adc b                                         ; $4b53: $88
    sbc c                                         ; $4b54: $99
    ld [hl], a                                    ; $4b55: $77
    ld a, b                                       ; $4b56: $78
    ld a, b                                       ; $4b57: $78
    add a                                         ; $4b58: $87
    ld d, a                                       ; $4b59: $57
    sbc b                                         ; $4b5a: $98
    adc b                                         ; $4b5b: $88
    add a                                         ; $4b5c: $87
    ld [hl], a                                    ; $4b5d: $77
    ld a, b                                       ; $4b5e: $78
    adc b                                         ; $4b5f: $88
    add [hl]                                      ; $4b60: $86
    ld h, a                                       ; $4b61: $67
    adc b                                         ; $4b62: $88
    add a                                         ; $4b63: $87
    adc b                                         ; $4b64: $88
    ld [hl], a                                    ; $4b65: $77
    ld a, b                                       ; $4b66: $78
    sbc b                                         ; $4b67: $98
    ld [hl], a                                    ; $4b68: $77
    ld [hl], a                                    ; $4b69: $77
    adc b                                         ; $4b6a: $88
    ld [hl], a                                    ; $4b6b: $77
    ld a, b                                       ; $4b6c: $78
    sbc c                                         ; $4b6d: $99
    sub a                                         ; $4b6e: $97
    ld a, b                                       ; $4b6f: $78
    adc b                                         ; $4b70: $88
    ld [hl], a                                    ; $4b71: $77
    ld h, l                                       ; $4b72: $65
    ld a, c                                       ; $4b73: $79
    sbc c                                         ; $4b74: $99
    add a                                         ; $4b75: $87
    ld l, b                                       ; $4b76: $68
    sbc c                                         ; $4b77: $99
    add [hl]                                      ; $4b78: $86
    ld h, [hl]                                    ; $4b79: $66
    ld b, l                                       ; $4b7a: $45
    xor h                                         ; $4b7b: $ac
    and a                                         ; $4b7c: $a7
    ld h, [hl]                                    ; $4b7d: $66
    adc d                                         ; $4b7e: $8a
    xor b                                         ; $4b7f: $a8
    ld d, l                                       ; $4b80: $55
    ld d, h                                       ; $4b81: $54
    ld a, e                                       ; $4b82: $7b
    ret z                                         ; $4b83: $c8

    ld d, [hl]                                    ; $4b84: $56
    adc c                                         ; $4b85: $89
    xor d                                         ; $4b86: $aa
    ld [hl], l                                    ; $4b87: $75
    ld h, [hl]                                    ; $4b88: $66
    ld d, [hl]                                    ; $4b89: $56
    xor e                                         ; $4b8a: $ab
    halt                                          ; $4b8b: $76
    ld a, b                                       ; $4b8c: $78
    adc c                                         ; $4b8d: $89
    sbc b                                         ; $4b8e: $98
    ld h, [hl]                                    ; $4b8f: $66
    add a                                         ; $4b90: $87
    ld d, a                                       ; $4b91: $57
    sbc b                                         ; $4b92: $98
    ld a, b                                       ; $4b93: $78
    add a                                         ; $4b94: $87
    adc c                                         ; $4b95: $89
    sbc b                                         ; $4b96: $98
    ld [hl], a                                    ; $4b97: $77
    ld [hl], a                                    ; $4b98: $77
    ld [hl], a                                    ; $4b99: $77
    adc b                                         ; $4b9a: $88
    adc b                                         ; $4b9b: $88
    ld [hl], a                                    ; $4b9c: $77
    ld a, b                                       ; $4b9d: $78
    sbc b                                         ; $4b9e: $98
    add a                                         ; $4b9f: $87
    add a                                         ; $4ba0: $87
    ld [hl], a                                    ; $4ba1: $77
    ld [hl], a                                    ; $4ba2: $77
    ld a, b                                       ; $4ba3: $78
    adc b                                         ; $4ba4: $88
    ld [hl], a                                    ; $4ba5: $77
    adc b                                         ; $4ba6: $88
    adc b                                         ; $4ba7: $88
    ld [hl], a                                    ; $4ba8: $77
    ld [hl], a                                    ; $4ba9: $77
    adc b                                         ; $4baa: $88
    ld [hl], a                                    ; $4bab: $77
    ld a, b                                       ; $4bac: $78
    adc b                                         ; $4bad: $88
    ld [hl], a                                    ; $4bae: $77
    ld a, b                                       ; $4baf: $78
    adc b                                         ; $4bb0: $88
    add a                                         ; $4bb1: $87
    ld [hl], a                                    ; $4bb2: $77
    ld [hl], a                                    ; $4bb3: $77
    ld [hl], a                                    ; $4bb4: $77
    ld [hl], a                                    ; $4bb5: $77
    adc b                                         ; $4bb6: $88
    adc b                                         ; $4bb7: $88
    adc b                                         ; $4bb8: $88
    adc b                                         ; $4bb9: $88
    adc b                                         ; $4bba: $88
    ld [hl], a                                    ; $4bbb: $77
    ld [hl], a                                    ; $4bbc: $77
    ld [hl], a                                    ; $4bbd: $77
    ld [hl], a                                    ; $4bbe: $77
    adc b                                         ; $4bbf: $88
    adc b                                         ; $4bc0: $88
    adc b                                         ; $4bc1: $88
    add a                                         ; $4bc2: $87
    ld a, b                                       ; $4bc3: $78
    ld [hl], a                                    ; $4bc4: $77
    ld a, b                                       ; $4bc5: $78
    ld [hl], a                                    ; $4bc6: $77
    adc b                                         ; $4bc7: $88
    ld [hl], a                                    ; $4bc8: $77
    add a                                         ; $4bc9: $87
    ld [hl], a                                    ; $4bca: $77
    ld a, b                                       ; $4bcb: $78
    add a                                         ; $4bcc: $87
    adc b                                         ; $4bcd: $88
    adc b                                         ; $4bce: $88
    adc b                                         ; $4bcf: $88
    adc b                                         ; $4bd0: $88
    adc b                                         ; $4bd1: $88
    adc b                                         ; $4bd2: $88
    adc b                                         ; $4bd3: $88
    adc b                                         ; $4bd4: $88
    adc b                                         ; $4bd5: $88
    adc b                                         ; $4bd6: $88
    adc b                                         ; $4bd7: $88
    adc b                                         ; $4bd8: $88
    adc b                                         ; $4bd9: $88
    adc b                                         ; $4bda: $88
    adc b                                         ; $4bdb: $88
    adc b                                         ; $4bdc: $88
    adc b                                         ; $4bdd: $88
    adc b                                         ; $4bde: $88
    adc b                                         ; $4bdf: $88
    adc b                                         ; $4be0: $88
    add a                                         ; $4be1: $87
    ld [hl], a                                    ; $4be2: $77
    add a                                         ; $4be3: $87
    ld [hl], a                                    ; $4be4: $77
    ld [hl], a                                    ; $4be5: $77
    ld [hl], a                                    ; $4be6: $77
    ld [hl], a                                    ; $4be7: $77
    ld [hl], a                                    ; $4be8: $77
    adc b                                         ; $4be9: $88
    adc b                                         ; $4bea: $88
    ld [hl], a                                    ; $4beb: $77
    adc b                                         ; $4bec: $88
    add a                                         ; $4bed: $87
    ld [hl], a                                    ; $4bee: $77
    ld [hl], a                                    ; $4bef: $77
    add a                                         ; $4bf0: $87
    ld [hl], a                                    ; $4bf1: $77
    adc b                                         ; $4bf2: $88
    adc b                                         ; $4bf3: $88
    add a                                         ; $4bf4: $87
    ld a, b                                       ; $4bf5: $78
    adc b                                         ; $4bf6: $88
    adc b                                         ; $4bf7: $88
    ld [hl], a                                    ; $4bf8: $77
    halt                                          ; $4bf9: $76
    ld h, a                                       ; $4bfa: $67
    adc c                                         ; $4bfb: $89
    and a                                         ; $4bfc: $a7
    ld d, l                                       ; $4bfd: $55
    ld a, d                                       ; $4bfe: $7a
    cp c                                          ; $4bff: $b9
    add l                                         ; $4c00: $85
    ld d, a                                       ; $4c01: $57
    xor d                                         ; $4c02: $aa
    add [hl]                                      ; $4c03: $86
    ld h, a                                       ; $4c04: $67
    adc b                                         ; $4c05: $88
    adc b                                         ; $4c06: $88
    ld [hl], a                                    ; $4c07: $77
    ld a, b                                       ; $4c08: $78
    adc b                                         ; $4c09: $88
    ld [hl], a                                    ; $4c0a: $77
    ld [hl], a                                    ; $4c0b: $77
    adc b                                         ; $4c0c: $88
    add a                                         ; $4c0d: $87
    ld [hl], a                                    ; $4c0e: $77
    adc b                                         ; $4c0f: $88
    adc b                                         ; $4c10: $88
    ld [hl], a                                    ; $4c11: $77
    ld a, b                                       ; $4c12: $78

jr_015_4c13:
    adc b                                         ; $4c13: $88
    add a                                         ; $4c14: $87
    ld a, b                                       ; $4c15: $78
    adc b                                         ; $4c16: $88
    add a                                         ; $4c17: $87
    ld [hl], a                                    ; $4c18: $77
    adc b                                         ; $4c19: $88
    add a                                         ; $4c1a: $87
    ld [hl], a                                    ; $4c1b: $77
    ld [hl], a                                    ; $4c1c: $77
    adc b                                         ; $4c1d: $88
    add a                                         ; $4c1e: $87
    ld a, b                                       ; $4c1f: $78
    adc b                                         ; $4c20: $88
    ld [hl], a                                    ; $4c21: $77
    ld a, b                                       ; $4c22: $78
    adc b                                         ; $4c23: $88
    add a                                         ; $4c24: $87
    ld [hl], a                                    ; $4c25: $77
    adc b                                         ; $4c26: $88
    add a                                         ; $4c27: $87
    ld [hl], a                                    ; $4c28: $77
    ld a, b                                       ; $4c29: $78
    adc b                                         ; $4c2a: $88
    add a                                         ; $4c2b: $87
    ld [hl], a                                    ; $4c2c: $77
    ld [hl], a                                    ; $4c2d: $77
    add a                                         ; $4c2e: $87
    adc b                                         ; $4c2f: $88
    add a                                         ; $4c30: $87
    ld [hl], a                                    ; $4c31: $77
    ld a, b                                       ; $4c32: $78
    adc b                                         ; $4c33: $88
    ld [hl], a                                    ; $4c34: $77
    add a                                         ; $4c35: $87
    halt                                          ; $4c36: $76
    ld e, d                                       ; $4c37: $5a
    or a                                          ; $4c38: $b7
    ld d, l                                       ; $4c39: $55
    ld a, d                                       ; $4c3a: $7a
    sbc c                                         ; $4c3b: $99
    ld [hl], l                                    ; $4c3c: $75
    ld a, b                                       ; $4c3d: $78
    sub a                                         ; $4c3e: $97
    ld h, h                                       ; $4c3f: $64
    adc l                                         ; $4c40: $8d
    sub l                                         ; $4c41: $95
    ld b, l                                       ; $4c42: $45
    xor e                                         ; $4c43: $ab
    sbc b                                         ; $4c44: $98
    ld d, l                                       ; $4c45: $55
    ld a, c                                       ; $4c46: $79
    cp c                                          ; $4c47: $b9
    ld h, l                                       ; $4c48: $65
    ld a, c                                       ; $4c49: $79
    xor b                                         ; $4c4a: $a8
    ld h, [hl]                                    ; $4c4b: $66
    ld h, [hl]                                    ; $4c4c: $66
    ld l, e                                       ; $4c4d: $6b
    push bc                                       ; $4c4e: $c5
    ld b, h                                       ; $4c4f: $44
    adc h                                         ; $4c50: $8c
    and a                                         ; $4c51: $a7
    ld h, l                                       ; $4c52: $65
    adc b                                         ; $4c53: $88
    adc b                                         ; $4c54: $88
    ld d, e                                       ; $4c55: $53
    cp e                                          ; $4c56: $bb
    halt                                          ; $4c57: $76
    jr c, jr_015_4c13                             ; $4c58: $38 $b9

    add a                                         ; $4c5a: $87
    halt                                          ; $4c5b: $76
    ld l, d                                       ; $4c5c: $6a
    xor b                                         ; $4c5d: $a8
    ld h, l                                       ; $4c5e: $65
    ld a, b                                       ; $4c5f: $78
    add l                                         ; $4c60: $85
    ld e, l                                       ; $4c61: $5d
    and h                                         ; $4c62: $a4
    ld d, [hl]                                    ; $4c63: $56
    xor e                                         ; $4c64: $ab
    add [hl]                                      ; $4c65: $86
    ld a, b                                       ; $4c66: $78
    add a                                         ; $4c67: $87
    add [hl]                                      ; $4c68: $86
    ld a, [hl-]                                   ; $4c69: $3a
    ret z                                         ; $4c6a: $c8

    ld h, h                                       ; $4c6b: $64
    ld a, e                                       ; $4c6c: $7b
    sbc c                                         ; $4c6d: $99
    ld [hl], h                                    ; $4c6e: $74
    ld l, c                                       ; $4c6f: $69
    cp c                                          ; $4c70: $b9
    ld h, h                                       ; $4c71: $64
    ld l, c                                       ; $4c72: $69
    ld [hl], a                                    ; $4c73: $77
    ret                                           ; $4c74: $c9


    ld b, l                                       ; $4c75: $45
    ld l, d                                       ; $4c76: $6a
    or a                                          ; $4c77: $b7
    ld h, [hl]                                    ; $4c78: $66
    ld a, c                                       ; $4c79: $79
    sbc b                                         ; $4c7a: $98
    ld h, l                                       ; $4c7b: $65
    ld [hl], l                                    ; $4c7c: $75
    sbc l                                         ; $4c7d: $9d
    add h                                         ; $4c7e: $84
    ld b, [hl]                                    ; $4c7f: $46
    cp e                                          ; $4c80: $bb
    add [hl]                                      ; $4c81: $86
    ld b, a                                       ; $4c82: $47
    xor d                                         ; $4c83: $aa
    sub [hl]                                      ; $4c84: $96
    ld d, a                                       ; $4c85: $57
    ld l, d                                       ; $4c86: $6a
    sub $54                                       ; $4c87: $d6 $54
    ld a, h                                       ; $4c89: $7c
    and a                                         ; $4c8a: $a7
    ld h, h                                       ; $4c8b: $64
    adc d                                         ; $4c8c: $8a
    sbc b                                         ; $4c8d: $98
    ld h, l                                       ; $4c8e: $65
    ld h, a                                       ; $4c8f: $67
    jp c, $5954                                   ; $4c90: $da $54 $59

    ret                                           ; $4c93: $c9


    ld [hl], l                                    ; $4c94: $75
    ld e, c                                       ; $4c95: $59
    xor c                                         ; $4c96: $a9

jr_015_4c97:
    ld [hl], l                                    ; $4c97: $75
    ld h, [hl]                                    ; $4c98: $66
    sbc [hl]                                      ; $4c99: $9e
    add h                                         ; $4c9a: $84
    ld b, [hl]                                    ; $4c9b: $46
    cp e                                          ; $4c9c: $bb
    add [hl]                                      ; $4c9d: $86
    ld b, [hl]                                    ; $4c9e: $46
    xor d                                         ; $4c9f: $aa
    sub [hl]                                      ; $4ca0: $96
    ld d, l                                       ; $4ca1: $55
    ld a, h                                       ; $4ca2: $7c
    add $44                                       ; $4ca3: $c6 $44
    adc h                                         ; $4ca5: $8c
    and a                                         ; $4ca6: $a7
    ld d, h                                       ; $4ca7: $54
    adc d                                         ; $4ca8: $8a
    xor b                                         ; $4ca9: $a8
    ld d, l                                       ; $4caa: $55
    ld e, c                                       ; $4cab: $59
    add sp, $44                                   ; $4cac: $e8 $44
    ld l, e                                       ; $4cae: $6b
    ret z                                         ; $4caf: $c8

    ld h, h                                       ; $4cb0: $64
    ld l, d                                       ; $4cb1: $6a
    cp c                                          ; $4cb2: $b9
    ld d, h                                       ; $4cb3: $54
    ld e, b                                       ; $4cb4: $58
    db $eb                                        ; $4cb5: $eb
    ld b, e                                       ; $4cb6: $43
    ld e, c                                       ; $4cb7: $59
    jp c, Jump_015_4964                           ; $4cb8: $da $64 $49

    ret                                           ; $4cbb: $c9


    ld d, h                                       ; $4cbc: $54
    ld d, a                                       ; $4cbd: $57
    call Call_015_4863                            ; $4cbe: $cd $63 $48
    call z, Call_015_4874                         ; $4cc1: $cc $74 $48
    cp d                                          ; $4cc4: $ba
    ld h, h                                       ; $4cc5: $64
    ld d, a                                       ; $4cc6: $57
    adc $62                                       ; $4cc7: $ce $62
    jr c, jr_015_4c97                             ; $4cc9: $38 $cc

    add l                                         ; $4ccb: $85
    ld b, a                                       ; $4ccc: $47
    xor d                                         ; $4ccd: $aa
    ld [hl], l                                    ; $4cce: $75
    ld d, [hl]                                    ; $4ccf: $56
    call Call_015_4962                            ; $4cd0: $cd $62 $49
    res 0, l                                      ; $4cd3: $cb $85
    ld b, a                                       ; $4cd5: $47
    xor d                                         ; $4cd6: $aa
    ld [hl], l                                    ; $4cd7: $75
    ld b, a                                       ; $4cd8: $47
    call c, $5a52                                 ; $4cd9: $dc $52 $5a
    jp z, $5875                                   ; $4cdc: $ca $75 $58

    xor c                                         ; $4cdf: $a9
    ld h, l                                       ; $4ce0: $65
    ld e, d                                       ; $4ce1: $5a
    reti                                          ; $4ce2: $d9


    ld b, e                                       ; $4ce3: $43
    ld a, e                                       ; $4ce4: $7b
    cp b                                          ; $4ce5: $b8
    ld h, l                                       ; $4ce6: $65
    ld a, c                                       ; $4ce7: $79
    sub a                                         ; $4ce8: $97
    ld d, h                                       ; $4ce9: $54
    sbc [hl]                                      ; $4cea: $9e
    or l                                          ; $4ceb: $b5
    ld [hl], $ac                                  ; $4cec: $36 $ac
    sub [hl]                                      ; $4cee: $96
    ld d, [hl]                                    ; $4cef: $56
    adc c                                         ; $4cf0: $89
    add [hl]                                      ; $4cf1: $86
    ld b, l                                       ; $4cf2: $45
    adc $84                                       ; $4cf3: $ce $84
    scf                                           ; $4cf5: $37
    cp e                                          ; $4cf6: $bb
    add [hl]                                      ; $4cf7: $86
    ld h, a                                       ; $4cf8: $67
    sbc b                                         ; $4cf9: $98
    ld [hl], h                                    ; $4cfa: $74
    ld l, l                                       ; $4cfb: $6d
    rst $00                                       ; $4cfc: $c7
    ld b, h                                       ; $4cfd: $44
    sbc e                                         ; $4cfe: $9b
    or a                                          ; $4cff: $b7
    ld h, [hl]                                    ; $4d00: $66
    ld a, b                                       ; $4d01: $78
    add [hl]                                      ; $4d02: $86
    ld b, l                                       ; $4d03: $45
    call Call_000_3884                            ; $4d04: $cd $84 $38
    cp e                                          ; $4d07: $bb
    ld [hl], l                                    ; $4d08: $75
    ld h, a                                       ; $4d09: $67
    sbc b                                         ; $4d0a: $98
    ld h, h                                       ; $4d0b: $64
    ld e, e                                       ; $4d0c: $5b
    jp c, Jump_015_7b53                           ; $4d0d: $da $53 $7b

    or a                                          ; $4d10: $b7
    ld d, [hl]                                    ; $4d11: $56
    ld a, c                                       ; $4d12: $79
    add [hl]                                      ; $4d13: $86
    ld d, l                                       ; $4d14: $55
    ld a, e                                       ; $4d15: $7b
    or a                                          ; $4d16: $b7
    ld d, [hl]                                    ; $4d17: $56
    sbc d                                         ; $4d18: $9a
    sub [hl]                                      ; $4d19: $96
    ld [hl], a                                    ; $4d1a: $77
    adc b                                         ; $4d1b: $88
    halt                                          ; $4d1c: $76
    ld h, a                                       ; $4d1d: $67
    ld a, b                                       ; $4d1e: $78
    sbc b                                         ; $4d1f: $98
    add a                                         ; $4d20: $87
    adc c                                         ; $4d21: $89
    sbc b                                         ; $4d22: $98
    ld [hl], a                                    ; $4d23: $77
    adc b                                         ; $4d24: $88
    ld [hl], a                                    ; $4d25: $77
    ld [hl], a                                    ; $4d26: $77
    ld h, [hl]                                    ; $4d27: $66
    adc d                                         ; $4d28: $8a
    sub a                                         ; $4d29: $97
    ld h, a                                       ; $4d2a: $67
    sbc c                                         ; $4d2b: $99
    add a                                         ; $4d2c: $87
    ld [hl], a                                    ; $4d2d: $77
    ld [hl], a                                    ; $4d2e: $77
    ld [hl], a                                    ; $4d2f: $77
    ld h, a                                       ; $4d30: $67
    ld a, b                                       ; $4d31: $78
    sbc b                                         ; $4d32: $98
    ld [hl], a                                    ; $4d33: $77
    ld a, b                                       ; $4d34: $78
    sbc b                                         ; $4d35: $98
    ld [hl], a                                    ; $4d36: $77
    adc b                                         ; $4d37: $88
    add a                                         ; $4d38: $87
    ld [hl], a                                    ; $4d39: $77
    ld a, b                                       ; $4d3a: $78
    ld [hl], a                                    ; $4d3b: $77
    adc b                                         ; $4d3c: $88
    ld [hl], a                                    ; $4d3d: $77
    ld a, b                                       ; $4d3e: $78
    adc b                                         ; $4d3f: $88
    adc b                                         ; $4d40: $88
    ld [hl], a                                    ; $4d41: $77
    adc b                                         ; $4d42: $88
    ld [hl], a                                    ; $4d43: $77
    ld a, b                                       ; $4d44: $78
    ld [hl], a                                    ; $4d45: $77
    ld [hl], a                                    ; $4d46: $77
    adc b                                         ; $4d47: $88
    ld [hl], a                                    ; $4d48: $77
    ld a, b                                       ; $4d49: $78
    adc b                                         ; $4d4a: $88
    ld a, b                                       ; $4d4b: $78
    adc b                                         ; $4d4c: $88
    adc b                                         ; $4d4d: $88
    ld [hl], a                                    ; $4d4e: $77
    ld a, b                                       ; $4d4f: $78
    add a                                         ; $4d50: $87
    ld [hl], a                                    ; $4d51: $77
    adc b                                         ; $4d52: $88
    ld [hl], a                                    ; $4d53: $77
    adc b                                         ; $4d54: $88
    adc b                                         ; $4d55: $88
    adc b                                         ; $4d56: $88
    ld a, b                                       ; $4d57: $78
    adc b                                         ; $4d58: $88
    add a                                         ; $4d59: $87
    ld a, b                                       ; $4d5a: $78
    add a                                         ; $4d5b: $87
    ld [hl], a                                    ; $4d5c: $77
    ld a, b                                       ; $4d5d: $78
    adc b                                         ; $4d5e: $88
    ld [hl], a                                    ; $4d5f: $77
    adc b                                         ; $4d60: $88
    adc b                                         ; $4d61: $88
    ld [hl], a                                    ; $4d62: $77
    adc b                                         ; $4d63: $88
    ld [hl], a                                    ; $4d64: $77
    ld a, b                                       ; $4d65: $78
    adc b                                         ; $4d66: $88
    adc b                                         ; $4d67: $88
    ld [hl], a                                    ; $4d68: $77
    adc b                                         ; $4d69: $88
    add a                                         ; $4d6a: $87
    ld a, b                                       ; $4d6b: $78
    adc b                                         ; $4d6c: $88
    ld [hl], a                                    ; $4d6d: $77
    adc b                                         ; $4d6e: $88
    adc b                                         ; $4d6f: $88
    add a                                         ; $4d70: $87
    ld a, b                                       ; $4d71: $78
    adc b                                         ; $4d72: $88
    ld [hl], a                                    ; $4d73: $77
    ld a, b                                       ; $4d74: $78
    add a                                         ; $4d75: $87
    ld a, b                                       ; $4d76: $78
    add a                                         ; $4d77: $87
    adc b                                         ; $4d78: $88
    ld [hl], a                                    ; $4d79: $77
    adc b                                         ; $4d7a: $88
    add a                                         ; $4d7b: $87
    ld [hl], a                                    ; $4d7c: $77
    adc b                                         ; $4d7d: $88
    add a                                         ; $4d7e: $87
    adc b                                         ; $4d7f: $88
    adc b                                         ; $4d80: $88
    add a                                         ; $4d81: $87
    adc b                                         ; $4d82: $88
    adc b                                         ; $4d83: $88
    add a                                         ; $4d84: $87
    ld a, b                                       ; $4d85: $78
    adc b                                         ; $4d86: $88
    ld a, b                                       ; $4d87: $78
    adc b                                         ; $4d88: $88
    adc b                                         ; $4d89: $88
    adc b                                         ; $4d8a: $88
    add a                                         ; $4d8b: $87
    adc b                                         ; $4d8c: $88
    ld [hl], a                                    ; $4d8d: $77
    adc b                                         ; $4d8e: $88
    add a                                         ; $4d8f: $87
    adc b                                         ; $4d90: $88
    add a                                         ; $4d91: $87
    adc b                                         ; $4d92: $88
    ld a, b                                       ; $4d93: $78
    ld a, b                                       ; $4d94: $78
    add a                                         ; $4d95: $87
    ld a, b                                       ; $4d96: $78
    adc b                                         ; $4d97: $88
    ld [hl], a                                    ; $4d98: $77
    ld a, b                                       ; $4d99: $78
    add a                                         ; $4d9a: $87
    ld [hl], a                                    ; $4d9b: $77
    ld [hl], a                                    ; $4d9c: $77
    ld a, b                                       ; $4d9d: $78
    add a                                         ; $4d9e: $87
    ld a, b                                       ; $4d9f: $78
    add a                                         ; $4da0: $87
    ld [hl], a                                    ; $4da1: $77
    add a                                         ; $4da2: $87
    ld a, b                                       ; $4da3: $78
    ld [hl], a                                    ; $4da4: $77
    ld [hl], a                                    ; $4da5: $77
    add a                                         ; $4da6: $87
    ld [hl], a                                    ; $4da7: $77
    ld [hl], a                                    ; $4da8: $77
    add a                                         ; $4da9: $87
    ld [hl], a                                    ; $4daa: $77
    add a                                         ; $4dab: $87
    adc b                                         ; $4dac: $88
    ld [hl], a                                    ; $4dad: $77
    ld [hl], a                                    ; $4dae: $77
    ld [hl], a                                    ; $4daf: $77
    add a                                         ; $4db0: $87
    ld [hl], a                                    ; $4db1: $77
    ld [hl], a                                    ; $4db2: $77
    add a                                         ; $4db3: $87
    ld a, b                                       ; $4db4: $78
    adc b                                         ; $4db5: $88
    add a                                         ; $4db6: $87
    ld [hl], a                                    ; $4db7: $77
    ld [hl], a                                    ; $4db8: $77
    ld [hl], a                                    ; $4db9: $77
    ld [hl], a                                    ; $4dba: $77
    ld a, b                                       ; $4dbb: $78
    ld [hl], a                                    ; $4dbc: $77
    ld [hl], a                                    ; $4dbd: $77
    add a                                         ; $4dbe: $87
    ld [hl], a                                    ; $4dbf: $77
    add a                                         ; $4dc0: $87
    ld a, b                                       ; $4dc1: $78
    ld [hl], a                                    ; $4dc2: $77
    ld [hl], a                                    ; $4dc3: $77
    ld [hl], a                                    ; $4dc4: $77
    ld [hl], a                                    ; $4dc5: $77
    ld [hl], a                                    ; $4dc6: $77
    ld [hl], a                                    ; $4dc7: $77
    ld [hl], a                                    ; $4dc8: $77
    ld [hl], a                                    ; $4dc9: $77
    ld [hl], a                                    ; $4dca: $77
    ld [hl], a                                    ; $4dcb: $77
    ld [hl], a                                    ; $4dcc: $77
    ld [hl], a                                    ; $4dcd: $77
    ld [hl], a                                    ; $4dce: $77
    ld [hl], a                                    ; $4dcf: $77
    add a                                         ; $4dd0: $87
    ld [hl], a                                    ; $4dd1: $77
    ld [hl], a                                    ; $4dd2: $77
    ld [hl], a                                    ; $4dd3: $77
    ld [hl], a                                    ; $4dd4: $77
    ld [hl], a                                    ; $4dd5: $77
    ld [hl], a                                    ; $4dd6: $77
    ld [hl], a                                    ; $4dd7: $77
    ld [hl], a                                    ; $4dd8: $77
    ld [hl], a                                    ; $4dd9: $77
    ld [hl], a                                    ; $4dda: $77
    ld [hl], a                                    ; $4ddb: $77
    add a                                         ; $4ddc: $87
    ld [hl], a                                    ; $4ddd: $77
    ld a, b                                       ; $4dde: $78
    ld [hl], a                                    ; $4ddf: $77
    add a                                         ; $4de0: $87
    add a                                         ; $4de1: $87
    ld [hl], a                                    ; $4de2: $77
    ld [hl], a                                    ; $4de3: $77
    add a                                         ; $4de4: $87
    ld [hl], a                                    ; $4de5: $77
    ld [hl], a                                    ; $4de6: $77
    add a                                         ; $4de7: $87
    ld [hl], a                                    ; $4de8: $77
    ld [hl], a                                    ; $4de9: $77
    ld a, b                                       ; $4dea: $78
    ld [hl], a                                    ; $4deb: $77
    ld [hl], a                                    ; $4dec: $77
    ld [hl], a                                    ; $4ded: $77
    ld [hl], a                                    ; $4dee: $77
    ld [hl], a                                    ; $4def: $77
    add a                                         ; $4df0: $87
    ld [hl], a                                    ; $4df1: $77
    ld [hl], a                                    ; $4df2: $77
    adc b                                         ; $4df3: $88
    ld [hl], a                                    ; $4df4: $77
    ld [hl], a                                    ; $4df5: $77
    add a                                         ; $4df6: $87
    ld [hl], a                                    ; $4df7: $77
    ld [hl], a                                    ; $4df8: $77
    ld a, b                                       ; $4df9: $78
    ld [hl], a                                    ; $4dfa: $77
    ld [hl], a                                    ; $4dfb: $77
    ld [hl], a                                    ; $4dfc: $77
    ld [hl], a                                    ; $4dfd: $77
    ld [hl], a                                    ; $4dfe: $77
    add a                                         ; $4dff: $87
    add a                                         ; $4e00: $87
    ld [hl], a                                    ; $4e01: $77
    ld [hl], a                                    ; $4e02: $77
    ld [hl], a                                    ; $4e03: $77
    ld [hl], a                                    ; $4e04: $77
    ld [hl], a                                    ; $4e05: $77
    ld [hl], a                                    ; $4e06: $77
    ld [hl], a                                    ; $4e07: $77
    add a                                         ; $4e08: $87
    ld [hl], a                                    ; $4e09: $77
    ld [hl], a                                    ; $4e0a: $77
    add a                                         ; $4e0b: $87
    ld [hl], a                                    ; $4e0c: $77
    ld [hl], a                                    ; $4e0d: $77
    ld [hl], a                                    ; $4e0e: $77
    ld [hl], a                                    ; $4e0f: $77
    add a                                         ; $4e10: $87
    adc b                                         ; $4e11: $88
    ld [hl], a                                    ; $4e12: $77
    ld [hl], a                                    ; $4e13: $77
    ld [hl], a                                    ; $4e14: $77
    ld [hl], a                                    ; $4e15: $77
    ld [hl], a                                    ; $4e16: $77
    ld [hl], a                                    ; $4e17: $77
    add a                                         ; $4e18: $87
    ld [hl], a                                    ; $4e19: $77
    ld [hl], a                                    ; $4e1a: $77
    ld [hl], a                                    ; $4e1b: $77
    ld [hl], a                                    ; $4e1c: $77
    ld [hl], a                                    ; $4e1d: $77
    ld [hl], a                                    ; $4e1e: $77
    ld [hl], a                                    ; $4e1f: $77
    add a                                         ; $4e20: $87
    ld [hl], a                                    ; $4e21: $77
    ld [hl], a                                    ; $4e22: $77
    ld [hl], a                                    ; $4e23: $77
    ld [hl], a                                    ; $4e24: $77
    ld [hl], a                                    ; $4e25: $77
    ld [hl], a                                    ; $4e26: $77
    ld [hl], a                                    ; $4e27: $77
    ld [hl], a                                    ; $4e28: $77
    add a                                         ; $4e29: $87
    ld [hl], a                                    ; $4e2a: $77
    ld [hl], a                                    ; $4e2b: $77
    ld [hl], a                                    ; $4e2c: $77
    ld [hl], a                                    ; $4e2d: $77
    ld [hl], a                                    ; $4e2e: $77
    ld [hl], a                                    ; $4e2f: $77
    add a                                         ; $4e30: $87
    ld [hl], a                                    ; $4e31: $77
    ld [hl], a                                    ; $4e32: $77
    ld [hl], a                                    ; $4e33: $77
    ld [hl], a                                    ; $4e34: $77
    ld [hl], a                                    ; $4e35: $77
    ld [hl], a                                    ; $4e36: $77
    ld [hl], a                                    ; $4e37: $77
    ld [hl], a                                    ; $4e38: $77
    ld [hl], a                                    ; $4e39: $77
    ld [hl], a                                    ; $4e3a: $77
    ld [hl], a                                    ; $4e3b: $77
    ld [hl], a                                    ; $4e3c: $77
    ld [hl], a                                    ; $4e3d: $77
    ld [hl], a                                    ; $4e3e: $77
    ld a, b                                       ; $4e3f: $78
    add a                                         ; $4e40: $87
    ld [hl], a                                    ; $4e41: $77
    ld [hl], a                                    ; $4e42: $77
    ld [hl], a                                    ; $4e43: $77
    adc b                                         ; $4e44: $88
    ld [hl], a                                    ; $4e45: $77
    add a                                         ; $4e46: $87
    ld [hl], a                                    ; $4e47: $77
    ld a, b                                       ; $4e48: $78
    add a                                         ; $4e49: $87
    ld a, b                                       ; $4e4a: $78
    adc b                                         ; $4e4b: $88
    adc b                                         ; $4e4c: $88
    adc b                                         ; $4e4d: $88
    ld [hl], a                                    ; $4e4e: $77
    adc b                                         ; $4e4f: $88
    add a                                         ; $4e50: $87
    ld [hl], a                                    ; $4e51: $77
    add a                                         ; $4e52: $87
    adc b                                         ; $4e53: $88
    ld [hl], a                                    ; $4e54: $77
    adc b                                         ; $4e55: $88
    adc b                                         ; $4e56: $88
    adc b                                         ; $4e57: $88
    add a                                         ; $4e58: $87
    adc b                                         ; $4e59: $88
    add a                                         ; $4e5a: $87
    adc b                                         ; $4e5b: $88
    adc b                                         ; $4e5c: $88
    ld [hl], a                                    ; $4e5d: $77
    add a                                         ; $4e5e: $87
    ld [hl], a                                    ; $4e5f: $77
    add a                                         ; $4e60: $87
    ld [hl], a                                    ; $4e61: $77
    ld [hl], a                                    ; $4e62: $77
    adc b                                         ; $4e63: $88
    adc b                                         ; $4e64: $88
    adc b                                         ; $4e65: $88
    adc b                                         ; $4e66: $88
    adc b                                         ; $4e67: $88
    add a                                         ; $4e68: $87
    ld [hl], a                                    ; $4e69: $77
    ld [hl], a                                    ; $4e6a: $77
    ld [hl], a                                    ; $4e6b: $77
    ld [hl], a                                    ; $4e6c: $77
    ld a, b                                       ; $4e6d: $78
    adc b                                         ; $4e6e: $88
    add a                                         ; $4e6f: $87
    add a                                         ; $4e70: $87
    adc c                                         ; $4e71: $89
    sbc b                                         ; $4e72: $98
    ld [hl], a                                    ; $4e73: $77
    adc b                                         ; $4e74: $88
    adc b                                         ; $4e75: $88
    ld h, l                                       ; $4e76: $65
    ld d, [hl]                                    ; $4e77: $56
    sbc c                                         ; $4e78: $99
    xor b                                         ; $4e79: $a8
    ld b, e                                       ; $4e7a: $43
    ld l, d                                       ; $4e7b: $6a
    bit 6, l                                      ; $4e7c: $cb $75
    ld b, [hl]                                    ; $4e7e: $46
    sbc e                                         ; $4e7f: $9b
    and a                                         ; $4e80: $a7
    ld d, l                                       ; $4e81: $55
    ld a, c                                       ; $4e82: $79
    xor c                                         ; $4e83: $a9
    halt                                          ; $4e84: $76
    ld h, a                                       ; $4e85: $67
    sbc c                                         ; $4e86: $99
    add a                                         ; $4e87: $87
    ld h, a                                       ; $4e88: $67
    adc b                                         ; $4e89: $88
    adc b                                         ; $4e8a: $88
    ld [hl], a                                    ; $4e8b: $77
    ld a, b                                       ; $4e8c: $78
    adc b                                         ; $4e8d: $88
    ld [hl], a                                    ; $4e8e: $77
    ld [hl], a                                    ; $4e8f: $77
    adc b                                         ; $4e90: $88
    adc b                                         ; $4e91: $88
    ld [hl], a                                    ; $4e92: $77
    adc b                                         ; $4e93: $88
    adc b                                         ; $4e94: $88
    ld [hl], a                                    ; $4e95: $77
    ld [hl], a                                    ; $4e96: $77
    ld a, b                                       ; $4e97: $78
    halt                                          ; $4e98: $76
    ld h, a                                       ; $4e99: $67
    ld [hl], l                                    ; $4e9a: $75
    ld e, e                                       ; $4e9b: $5b
    rst $10                                       ; $4e9c: $d7
    inc [hl]                                      ; $4e9d: $34
    ld a, e                                       ; $4e9e: $7b
    cp b                                          ; $4e9f: $b8
    add [hl]                                      ; $4ea0: $86
    ld l, b                                       ; $4ea1: $68
    sbc c                                         ; $4ea2: $99
    adc b                                         ; $4ea3: $88
    halt                                          ; $4ea4: $76
    ld a, b                                       ; $4ea5: $78
    sbc b                                         ; $4ea6: $98
    halt                                          ; $4ea7: $76
    ld d, l                                       ; $4ea8: $55
    ld l, d                                       ; $4ea9: $6a
    jp c, $5b31                                   ; $4eaa: $da $31 $5b

    db $eb                                        ; $4ead: $eb
    ld h, e                                       ; $4eae: $63
    ld b, a                                       ; $4eaf: $47
    cp e                                          ; $4eb0: $bb
    sub [hl]                                      ; $4eb1: $96
    ld b, a                                       ; $4eb2: $47
    sbc d                                         ; $4eb3: $9a
    sub [hl]                                      ; $4eb4: $96
    ld d, l                                       ; $4eb5: $55
    ld d, a                                       ; $4eb6: $57
    sbc h                                         ; $4eb7: $9c
    or e                                          ; $4eb8: $b3
    dec d                                         ; $4eb9: $15
    xor [hl]                                      ; $4eba: $ae
    add $33                                       ; $4ebb: $c6 $33
    ld a, h                                       ; $4ebd: $7c
    ret z                                         ; $4ebe: $c8

    ld d, l                                       ; $4ebf: $55
    adc c                                         ; $4ec0: $89
    xor c                                         ; $4ec1: $a9
    add a                                         ; $4ec2: $87
    ld h, a                                       ; $4ec3: $67
    ld h, l                                       ; $4ec4: $65
    ld l, c                                       ; $4ec5: $69
    jp c, Jump_015_6c21                           ; $4ec6: $da $21 $6c

    jp hl                                         ; $4ec9: $e9


    ld d, e                                       ; $4eca: $53
    ld e, c                                       ; $4ecb: $59
    cp e                                          ; $4ecc: $bb
    add h                                         ; $4ecd: $84
    ld e, b                                       ; $4ece: $58
    sbc d                                         ; $4ecf: $9a
    add l                                         ; $4ed0: $85
    ld d, l                                       ; $4ed1: $55
    ld l, b                                       ; $4ed2: $68
    call Call_000_3a50                            ; $4ed3: $cd $50 $3a
    db $ed                                        ; $4ed6: $ed
    ld [hl], e                                    ; $4ed7: $73
    scf                                           ; $4ed8: $37
    cp e                                          ; $4ed9: $bb
    add l                                         ; $4eda: $85
    ld d, a                                       ; $4edb: $57
    sbc c                                         ; $4edc: $99
    ld h, h                                       ; $4edd: $64
    ld c, d                                       ; $4ede: $4a
    ld a, [$6b22]                                 ; $4edf: $fa $22 $6b
    reti                                          ; $4ee2: $d9


    ld h, h                                       ; $4ee3: $64
    ld e, b                                       ; $4ee4: $58
    cp d                                          ; $4ee5: $ba
    ld [hl], l                                    ; $4ee6: $75
    ld l, c                                       ; $4ee7: $69
    sbc b                                         ; $4ee8: $98
    ld d, e                                       ; $4ee9: $53
    ld l, e                                       ; $4eea: $6b
    jp hl                                         ; $4eeb: $e9


    ld [hl+], a                                   ; $4eec: $22
    ld a, h                                       ; $4eed: $7c
    reti                                          ; $4eee: $d9


    ld d, l                                       ; $4eef: $55
    ld l, c                                       ; $4ef0: $69
    cp c                                          ; $4ef1: $b9
    ld h, [hl]                                    ; $4ef2: $66
    ld a, b                                       ; $4ef3: $78
    sub a                                         ; $4ef4: $97
    ld b, h                                       ; $4ef5: $44
    xor a                                         ; $4ef6: $af
    sub d                                         ; $4ef7: $92
    daa                                           ; $4ef8: $27
    call $5696                                    ; $4ef9: $cd $96 $56
    sbc e                                         ; $4efc: $9b
    sub a                                         ; $4efd: $97
    ld d, a                                       ; $4efe: $57
    sbc b                                         ; $4eff: $98
    ld h, e                                       ; $4f00: $63
    ld l, l                                       ; $4f01: $6d
    sub $14                                       ; $4f02: $d6 $14
    sbc l                                         ; $4f04: $9d
    or a                                          ; $4f05: $b7
    ld d, l                                       ; $4f06: $55
    ld a, d                                       ; $4f07: $7a
    xor b                                         ; $4f08: $a8
    ld h, [hl]                                    ; $4f09: $66
    adc c                                         ; $4f0a: $89
    ld [hl], h                                    ; $4f0b: $74
    ld e, e                                       ; $4f0c: $5b
    rst $20                                       ; $4f0d: $e7
    inc hl                                        ; $4f0e: $23
    adc h                                         ; $4f0f: $8c
    ret z                                         ; $4f10: $c8

    ld d, l                                       ; $4f11: $55
    ld l, d                                       ; $4f12: $6a
    xor b                                         ; $4f13: $a8
    ld h, [hl]                                    ; $4f14: $66
    adc c                                         ; $4f15: $89
    ld h, e                                       ; $4f16: $63
    ld a, [hl]                                    ; $4f17: $7e
    call nz, $bd15                                ; $4f18: $c4 $15 $bd
    and a                                         ; $4f1b: $a7
    ld d, l                                       ; $4f1c: $55
    adc e                                         ; $4f1d: $8b
    and a                                         ; $4f1e: $a7
    ld d, [hl]                                    ; $4f1f: $56
    sub a                                         ; $4f20: $97
    ld b, [hl]                                    ; $4f21: $46
    call c, $5b41                                 ; $4f22: $dc $41 $5b
    jp c, $5775                                   ; $4f25: $da $75 $57

    cp e                                          ; $4f28: $bb
    ld [hl], l                                    ; $4f29: $75
    ld l, b                                       ; $4f2a: $68
    ld [hl], l                                    ; $4f2b: $75
    adc [hl]                                      ; $4f2c: $8e
    or e                                          ; $4f2d: $b3
    ld h, $cd                                     ; $4f2e: $26 $cd
    sub [hl]                                      ; $4f30: $96
    ld d, l                                       ; $4f31: $55
    adc e                                         ; $4f32: $8b
    and [hl]                                      ; $4f33: $a6
    ld d, a                                       ; $4f34: $57
    add l                                         ; $4f35: $85
    ld l, [hl]                                    ; $4f36: $6e
    call nc, $ae14                                ; $4f37: $d4 $14 $ae
    or a                                          ; $4f3a: $b7
    ld d, l                                       ; $4f3b: $55
    ld a, d                                       ; $4f3c: $7a
    cp b                                          ; $4f3d: $b8
    ld d, [hl]                                    ; $4f3e: $56
    ld h, l                                       ; $4f3f: $65
    adc [hl]                                      ; $4f40: $8e
    jp $ad15                                      ; $4f41: $c3 $15 $ad


    and a                                         ; $4f44: $a7
    ld d, l                                       ; $4f45: $55
    adc e                                         ; $4f46: $8b
    and a                                         ; $4f47: $a7
    ld d, [hl]                                    ; $4f48: $56
    ld h, h                                       ; $4f49: $64
    cp a                                          ; $4f4a: $bf
    add d                                         ; $4f4b: $82
    daa                                           ; $4f4c: $27
    call z, Call_015_4586                         ; $4f4d: $cc $86 $45
    sbc e                                         ; $4f50: $9b
    sub [hl]                                      ; $4f51: $96
    ld d, l                                       ; $4f52: $55
    ld l, c                                       ; $4f53: $69
    ld [$6b32], a                                 ; $4f54: $ea $32 $6b
    jp c, $5865                                   ; $4f57: $da $65 $58

    cp d                                          ; $4f5a: $ba
    ld [hl], l                                    ; $4f5b: $75
    ld b, l                                       ; $4f5c: $45
    adc [hl]                                      ; $4f5d: $8e
    or h                                          ; $4f5e: $b4
    dec h                                         ; $4f5f: $25
    xor l                                         ; $4f60: $ad
    and a                                         ; $4f61: $a7
    ld d, h                                       ; $4f62: $54
    adc d                                         ; $4f63: $8a
    xor b                                         ; $4f64: $a8
    ld d, h                                       ; $4f65: $54
    ld e, d                                       ; $4f66: $5a
    jp hl                                         ; $4f67: $e9


    ld [hl-], a                                   ; $4f68: $32
    ld l, e                                       ; $4f69: $6b
    ret                                           ; $4f6a: $c9


    ld h, h                                       ; $4f6b: $64
    ld e, b                                       ; $4f6c: $58
    xor c                                         ; $4f6d: $a9
    ld [hl], l                                    ; $4f6e: $75
    ld [hl], $dd                                  ; $4f6f: $36 $dd
    ld h, d                                       ; $4f71: $62
    ld c, b                                       ; $4f72: $48
    res 0, l                                      ; $4f73: $cb $85
    ld b, a                                       ; $4f75: $47
    xor d                                         ; $4f76: $aa
    add [hl]                                      ; $4f77: $86
    ld b, l                                       ; $4f78: $45
    xor [hl]                                      ; $4f79: $ae
    sub e                                         ; $4f7a: $93
    ld [hl], $bc                                  ; $4f7b: $36 $bc
    and [hl]                                      ; $4f7d: $a6
    ld b, l                                       ; $4f7e: $45
    sbc e                                         ; $4f7f: $9b
    sub a                                         ; $4f80: $97
    ld b, e                                       ; $4f81: $43
    adc [hl]                                      ; $4f82: $8e
    or h                                          ; $4f83: $b4
    dec h                                         ; $4f84: $25
    xor h                                         ; $4f85: $ac
    and a                                         ; $4f86: $a7
    ld d, h                                       ; $4f87: $54
    adc d                                         ; $4f88: $8a
    and a                                         ; $4f89: $a7
    ld b, e                                       ; $4f8a: $43
    ld l, [hl]                                    ; $4f8b: $6e
    push bc                                       ; $4f8c: $c5
    inc [hl]                                      ; $4f8d: $34
    sbc h                                         ; $4f8e: $9c
    cp b                                          ; $4f8f: $b8
    ld d, h                                       ; $4f90: $54
    ld a, d                                       ; $4f91: $7a
    xor b                                         ; $4f92: $a8
    ld b, e                                       ; $4f93: $43
    ld a, [hl]                                    ; $4f94: $7e
    push bc                                       ; $4f95: $c5
    dec [hl]                                      ; $4f96: $35
    sbc h                                         ; $4f97: $9c
    cp b                                          ; $4f98: $b8
    ld d, e                                       ; $4f99: $53
    ld a, e                                       ; $4f9a: $7b
    and a                                         ; $4f9b: $a7
    ld b, h                                       ; $4f9c: $44
    ld l, l                                       ; $4f9d: $6d
    add $34                                       ; $4f9e: $c6 $34
    adc h                                         ; $4fa0: $8c
    cp b                                          ; $4fa1: $b8
    ld d, h                                       ; $4fa2: $54
    ld l, d                                       ; $4fa3: $6a
    xor b                                         ; $4fa4: $a8
    ld h, e                                       ; $4fa5: $63
    ld e, h                                       ; $4fa6: $5c
    rst $20                                       ; $4fa7: $e7
    inc [hl]                                      ; $4fa8: $34
    ld a, e                                       ; $4fa9: $7b
    ret                                           ; $4faa: $c9


    ld h, e                                       ; $4fab: $63
    ld l, d                                       ; $4fac: $6a
    and a                                         ; $4fad: $a7
    ld b, e                                       ; $4fae: $43
    cp [hl]                                       ; $4faf: $be
    add h                                         ; $4fb0: $84
    ld b, a                                       ; $4fb1: $47
    xor h                                         ; $4fb2: $ac

jr_015_4fb3:
    sub a                                         ; $4fb3: $97
    ld b, l                                       ; $4fb4: $45
    adc e                                         ; $4fb5: $8b
    and [hl]                                      ; $4fb6: $a6
    inc [hl]                                      ; $4fb7: $34
    sbc a                                         ; $4fb8: $9f
    and h                                         ; $4fb9: $a4
    ld [hl], $ad                                  ; $4fba: $36 $ad
    and a                                         ; $4fbc: $a7
    ld b, h                                       ; $4fbd: $44
    adc e                                         ; $4fbe: $8b
    sub a                                         ; $4fbf: $97
    ld d, h                                       ; $4fc0: $54
    sbc l                                         ; $4fc1: $9d
    add l                                         ; $4fc2: $85
    ld d, [hl]                                    ; $4fc3: $56
    sbc h                                         ; $4fc4: $9c
    sub a                                         ; $4fc5: $97
    ld b, l                                       ; $4fc6: $45
    sbc d                                         ; $4fc7: $9a
    add l                                         ; $4fc8: $85
    jr c, jr_015_4fb3                             ; $4fc9: $38 $e8

    ld d, l                                       ; $4fcb: $55
    ld l, c                                       ; $4fcc: $69
    cp d                                          ; $4fcd: $ba
    ld [hl], l                                    ; $4fce: $75
    ld e, b                                       ; $4fcf: $58
    xor d                                         ; $4fd0: $aa
    ld [hl], h                                    ; $4fd1: $74
    ld a, [hl-]                                   ; $4fd2: $3a
    jp hl                                         ; $4fd3: $e9


    ld b, e                                       ; $4fd4: $43
    ld e, e                                       ; $4fd5: $5b
    reti                                          ; $4fd6: $d9


    ld [hl], l                                    ; $4fd7: $75
    ld c, b                                       ; $4fd8: $48
    xor c                                         ; $4fd9: $a9
    ld h, e                                       ; $4fda: $63
    adc l                                         ; $4fdb: $8d
    ld [hl], h                                    ; $4fdc: $74
    ld d, a                                       ; $4fdd: $57
    xor h                                         ; $4fde: $ac
    add [hl]                                      ; $4fdf: $86
    ld d, [hl]                                    ; $4fe0: $56
    adc e                                         ; $4fe1: $8b
    sub l                                         ; $4fe2: $95
    dec [hl]                                      ; $4fe3: $35
    call Call_015_4764                            ; $4fe4: $cd $64 $47
    cp h                                          ; $4fe7: $bc
    add l                                         ; $4fe8: $85
    ld b, [hl]                                    ; $4fe9: $46
    sbc e                                         ; $4fea: $9b
    sub l                                         ; $4feb: $95
    ld b, h                                       ; $4fec: $44
    xor [hl]                                      ; $4fed: $ae
    sub h                                         ; $4fee: $94
    ld b, [hl]                                    ; $4fef: $46
    xor h                                         ; $4ff0: $ac
    sub a                                         ; $4ff1: $97
    ld b, l                                       ; $4ff2: $45
    sbc d                                         ; $4ff3: $9a
    ld [hl], e                                    ; $4ff4: $73
    adc l                                         ; $4ff5: $8d
    ld [hl], h                                    ; $4ff6: $74
    ld d, a                                       ; $4ff7: $57
    xor e                                         ; $4ff8: $ab
    sub a                                         ; $4ff9: $97
    ld d, l                                       ; $4ffa: $55
    adc e                                         ; $4ffb: $8b
    and [hl]                                      ; $4ffc: $a6
    inc [hl]                                      ; $4ffd: $34
    sbc [hl]                                      ; $4ffe: $9e
    sub l                                         ; $4fff: $95
    ld b, l                                       ; $5000: $45
    sbc l                                         ; $5001: $9d
    sub [hl]                                      ; $5002: $96
    ld b, h                                       ; $5003: $44
    adc e                                         ; $5004: $8b
    and [hl]                                      ; $5005: $a6
    inc sp                                        ; $5006: $33
    db $dd                                        ; $5007: $dd
    ld [hl], l                                    ; $5008: $75
    ld b, a                                       ; $5009: $47
    xor h                                         ; $500a: $ac
    add [hl]                                      ; $500b: $86
    ld b, [hl]                                    ; $500c: $46
    xor d                                         ; $500d: $aa
    ld [hl], e                                    ; $500e: $73
    ld l, [hl]                                    ; $500f: $6e
    add h                                         ; $5010: $84
    halt                                          ; $5011: $76
    adc e                                         ; $5012: $8b
    sub a                                         ; $5013: $97
    ld d, l                                       ; $5014: $55
    adc c                                         ; $5015: $89
    sub [hl]                                      ; $5016: $96
    scf                                           ; $5017: $37
    ld hl, sp+$46                                 ; $5018: $f8 $46
    ld a, c                                       ; $501a: $79
    cp d                                          ; $501b: $ba
    ld h, l                                       ; $501c: $65
    ld l, b                                       ; $501d: $68
    sbc b                                         ; $501e: $98
    ld d, e                                       ; $501f: $53
    adc [hl]                                      ; $5020: $8e
    ld h, h                                       ; $5021: $64

jr_015_5022:
    ld h, a                                       ; $5022: $67
    xor e                                         ; $5023: $ab
    sub l                                         ; $5024: $95
    ld d, [hl]                                    ; $5025: $56
    sbc d                                         ; $5026: $9a
    add l                                         ; $5027: $85
    add hl, sp                                    ; $5028: $39
    rst $30                                       ; $5029: $f7
    ld b, l                                       ; $502a: $45
    ld a, c                                       ; $502b: $79
    ret                                           ; $502c: $c9


    ld h, h                                       ; $502d: $64
    ld e, c                                       ; $502e: $59
    xor c                                         ; $502f: $a9
    ld d, e                                       ; $5030: $53
    adc a                                         ; $5031: $8f
    add h                                         ; $5032: $84
    ld h, [hl]                                    ; $5033: $66
    sbc e                                         ; $5034: $9b
    and [hl]                                      ; $5035: $a6
    ld b, l                                       ; $5036: $45
    adc d                                         ; $5037: $8a
    sub l                                         ; $5038: $95
    jr z, jr_015_5022                             ; $5039: $28 $e7

    ld b, [hl]                                    ; $503b: $46
    ld l, c                                       ; $503c: $69
    cp c                                          ; $503d: $b9
    ld h, h                                       ; $503e: $64
    ld l, c                                       ; $503f: $69
    xor b                                         ; $5040: $a8
    inc [hl]                                      ; $5041: $34
    db $db                                        ; $5042: $db
    ld b, h                                       ; $5043: $44
    ld l, b                                       ; $5044: $68

jr_015_5045:
    cp e                                          ; $5045: $bb
    add l                                         ; $5046: $85
    ld c, b                                       ; $5047: $48
    xor c                                         ; $5048: $a9
    ld h, e                                       ; $5049: $63
    ld l, l                                       ; $504a: $6d
    and h                                         ; $504b: $a4
    ld d, a                                       ; $504c: $57
    sbc e                                         ; $504d: $9b
    or a                                          ; $504e: $b7
    ld b, l                                       ; $504f: $45
    adc d                                         ; $5050: $8a
    and a                                         ; $5051: $a7
    inc sp                                        ; $5052: $33
    cp [hl]                                       ; $5053: $be
    add h                                         ; $5054: $84
    ld b, [hl]                                    ; $5055: $46
    cp h                                          ; $5056: $bc
    sub [hl]                                      ; $5057: $96
    ld b, l                                       ; $5058: $45
    sbc h                                         ; $5059: $9c
    sub h                                         ; $505a: $94
    jr jr_015_5045                                ; $505b: $18 $e8

    ld d, l                                       ; $505d: $55
    ld l, c                                       ; $505e: $69
    jp z, $5864                                   ; $505f: $ca $64 $58

    xor c                                         ; $5062: $a9
    dec [hl]                                      ; $5063: $35
    jp hl                                         ; $5064: $e9


    ld b, l                                       ; $5065: $45
    ld a, b                                       ; $5066: $78
    cp d                                          ; $5067: $ba
    add h                                         ; $5068: $84
    ld e, b                                       ; $5069: $58
    xor b                                         ; $506a: $a8
    ld h, h                                       ; $506b: $64
    adc [hl]                                      ; $506c: $8e
    ld [hl], e                                    ; $506d: $73
    ld e, b                                       ; $506e: $58
    sbc e                                         ; $506f: $9b
    sub l                                         ; $5070: $95
    ld b, [hl]                                    ; $5071: $46
    xor e                                         ; $5072: $ab
    sub h                                         ; $5073: $94
    ld [hl], $ce                                  ; $5074: $36 $ce
    ld d, h                                       ; $5076: $54
    ld b, a                                       ; $5077: $47
    call z, Call_015_4774                         ; $5078: $cc $74 $47
    cp e                                          ; $507b: $bb
    ld [hl], e                                    ; $507c: $73
    add hl, sp                                    ; $507d: $39
    add sp, $55                                   ; $507e: $e8 $55
    ld l, c                                       ; $5080: $69
    cp c                                          ; $5081: $b9
    ld h, h                                       ; $5082: $64
    ld l, c                                       ; $5083: $69
    xor b                                         ; $5084: $a8
    ld b, e                                       ; $5085: $43
    call Call_015_6845                            ; $5086: $cd $45 $68

jr_015_5089:
    xor e                                         ; $5089: $ab
    add l                                         ; $508a: $85
    ld b, a                                       ; $508b: $47
    sbc d                                         ; $508c: $9a
    ld [hl], e                                    ; $508d: $73
    adc l                                         ; $508e: $8d
    add e                                         ; $508f: $83
    ld e, b                                       ; $5090: $58
    xor e                                         ; $5091: $ab
    sub [hl]                                      ; $5092: $96
    ld b, [hl]                                    ; $5093: $46
    xor e                                         ; $5094: $ab
    add h                                         ; $5095: $84
    add hl, sp                                    ; $5096: $39
    ld hl, sp+$45                                 ; $5097: $f8 $45
    ld a, d                                       ; $5099: $7a
    ret                                           ; $509a: $c9


    ld d, h                                       ; $509b: $54
    ld e, d                                       ; $509c: $5a
    ret z                                         ; $509d: $c8

    ld [hl-], a                                   ; $509e: $32
    xor [hl]                                      ; $509f: $ae
    add h                                         ; $50a0: $84
    ld d, [hl]                                    ; $50a1: $56
    xor h                                         ; $50a2: $ac
    sub l                                         ; $50a3: $95
    ld b, [hl]                                    ; $50a4: $46
    xor e                                         ; $50a5: $ab
    add e                                         ; $50a6: $83
    ld c, h                                       ; $50a7: $4c
    or l                                          ; $50a8: $b5
    ld h, [hl]                                    ; $50a9: $66
    adc d                                         ; $50aa: $8a
    and a                                         ; $50ab: $a7
    ld d, l                                       ; $50ac: $55
    ld a, d                                       ; $50ad: $7a
    and a                                         ; $50ae: $a7
    ld b, l                                       ; $50af: $45
    xor h                                         ; $50b0: $ac
    ld [hl], l                                    ; $50b1: $75
    ld l, b                                       ; $50b2: $68
    xor d                                         ; $50b3: $aa
    ld [hl], l                                    ; $50b4: $75
    ld h, a                                       ; $50b5: $67
    sbc c                                         ; $50b6: $99
    ld [hl], h                                    ; $50b7: $74
    ld l, l                                       ; $50b8: $6d
    and l                                         ; $50b9: $a5
    ld b, a                                       ; $50ba: $47
    sbc e                                         ; $50bb: $9b
    and [hl]                                      ; $50bc: $a6
    ld b, l                                       ; $50bd: $45
    sbc e                                         ; $50be: $9b
    sub l                                         ; $50bf: $95
    daa                                           ; $50c0: $27
    ld [$6943], a                                 ; $50c1: $ea $43 $69
    jp z, Jump_015_4974                           ; $50c4: $ca $74 $49

    cp b                                          ; $50c7: $b8
    ld b, h                                       ; $50c8: $44
    call Call_015_6953                            ; $50c9: $cd $53 $69
    res 0, e                                      ; $50cc: $cb $83
    jr c, jr_015_5089                             ; $50ce: $38 $b9

    ld d, e                                       ; $50d0: $53
    xor l                                         ; $50d1: $ad
    ld [hl], h                                    ; $50d2: $74
    ld d, a                                       ; $50d3: $57
    xor h                                         ; $50d4: $ac
    sub l                                         ; $50d5: $95
    ld [hl], $ab                                  ; $50d6: $36 $ab
    add e                                         ; $50d8: $83
    ld a, [hl-]                                   ; $50d9: $3a
    rst $20                                       ; $50da: $e7
    ld d, l                                       ; $50db: $55
    ld l, d                                       ; $50dc: $6a
    ret                                           ; $50dd: $c9


    ld d, d                                       ; $50de: $52
    ld l, h                                       ; $50df: $6c
    ret z                                         ; $50e0: $c8

    ld b, e                                       ; $50e1: $43
    ld a, h                                       ; $50e2: $7c
    ret z                                         ; $50e3: $c8

    inc [hl]                                      ; $50e4: $34
    adc h                                         ; $50e5: $8c
    or [hl]                                       ; $50e6: $b6
    ld b, l                                       ; $50e7: $45
    ld a, d                                       ; $50e8: $7a
    and [hl]                                      ; $50e9: $a6
    daa                                           ; $50ea: $27
    reti                                          ; $50eb: $d9


    ld d, e                                       ; $50ec: $53
    ld l, d                                       ; $50ed: $6a
    ret                                           ; $50ee: $c9


    ld h, e                                       ; $50ef: $63
    ld e, d                                       ; $50f0: $5a
    ret z                                         ; $50f1: $c8

    inc hl                                        ; $50f2: $23
    cp [hl]                                       ; $50f3: $be
    add e                                         ; $50f4: $83
    jr c, @-$32                                   ; $50f5: $38 $cc

    add h                                         ; $50f7: $84
    ld [hl], $ba                                  ; $50f8: $36 $ba
    ld b, h                                       ; $50fa: $44
    cp [hl]                                       ; $50fb: $be
    ld [hl], c                                    ; $50fc: $71
    add hl, hl                                    ; $50fd: $29
    db $ed                                        ; $50fe: $ed
    add e                                         ; $50ff: $83
    rla                                           ; $5100: $17
    bit 2, e                                      ; $5101: $cb $53
    ld a, l                                       ; $5103: $7d
    and h                                         ; $5104: $a4
    scf                                           ; $5105: $37
    xor h                                         ; $5106: $ac
    or l                                          ; $5107: $b5
    dec h                                         ; $5108: $25
    xor h                                         ; $5109: $ac
    sub e                                         ; $510a: $93
    ld a, [de]                                    ; $510b: $1a
    jp hl                                         ; $510c: $e9


    ld d, h                                       ; $510d: $54
    ld l, d                                       ; $510e: $6a
    jp z, $5962                                   ; $510f: $ca $62 $59

    jp z, Jump_015_7954                           ; $5112: $ca $54 $79

    xor b                                         ; $5115: $a8
    halt                                          ; $5116: $76
    ld a, c                                       ; $5117: $79
    sub a                                         ; $5118: $97
    ld h, [hl]                                    ; $5119: $66
    adc c                                         ; $511a: $89
    ld [hl], l                                    ; $511b: $75
    sbc e                                         ; $511c: $9b
    add h                                         ; $511d: $84
    ld e, b                                       ; $511e: $58
    xor d                                         ; $511f: $aa
    add l                                         ; $5120: $85
    ld d, a                                       ; $5121: $57
    xor d                                         ; $5122: $aa
    ld d, h                                       ; $5123: $54
    xor d                                         ; $5124: $aa
    sub l                                         ; $5125: $95
    ld c, b                                       ; $5126: $48
    cp d                                          ; $5127: $ba
    sub l                                         ; $5128: $95
    ld b, [hl]                                    ; $5129: $46
    xor d                                         ; $512a: $aa
    ld d, d                                       ; $512b: $52
    sbc [hl]                                      ; $512c: $9e
    sub e                                         ; $512d: $93
    daa                                           ; $512e: $27
    call Call_015_4595                            ; $512f: $cd $95 $45
    sbc d                                         ; $5132: $9a
    ld d, e                                       ; $5133: $53
    xor a                                         ; $5134: $af

jr_015_5135:
    sub c                                         ; $5135: $91
    rla                                           ; $5136: $17
    sbc $a5                                       ; $5137: $de $a5
    inc d                                         ; $5139: $14
    cp h                                          ; $513a: $bc
    ld [hl], d                                    ; $513b: $72
    ld c, l                                       ; $513c: $4d
    sub $25                                       ; $513d: $d6 $25
    sbc h                                         ; $513f: $9c
    ret z                                         ; $5140: $c8

    ld [hl-], a                                   ; $5141: $32
    ld a, e                                       ; $5142: $7b
    and [hl]                                      ; $5143: $a6
    ld a, [hl+]                                   ; $5144: $2a
    sub $46                                       ; $5145: $d6 $46
    adc e                                         ; $5147: $8b
    cp b                                          ; $5148: $b8
    ld d, e                                       ; $5149: $53
    ld l, d                                       ; $514a: $6a
    or a                                          ; $514b: $b7
    jr jr_015_5135                                ; $514c: $18 $e7

    ld h, [hl]                                    ; $514e: $66
    ld a, c                                       ; $514f: $79
    cp d                                          ; $5150: $ba
    add h                                         ; $5151: $84
    ld c, b                                       ; $5152: $48
    sbc b                                         ; $5153: $98
    halt                                          ; $5154: $76
    cp c                                          ; $5155: $b9
    scf                                           ; $5156: $37
    sbc d                                         ; $5157: $9a
    xor c                                         ; $5158: $a9
    ld h, h                                       ; $5159: $64
    ld l, c                                       ; $515a: $69
    xor b                                         ; $515b: $a8
    ld b, e                                       ; $515c: $43
    cp l                                          ; $515d: $bd
    ld h, h                                       ; $515e: $64
    ld a, b                                       ; $515f: $78
    sbc d                                         ; $5160: $9a
    sub l                                         ; $5161: $95
    ld b, a                                       ; $5162: $47
    xor d                                         ; $5163: $aa
    ld [hl], d                                    ; $5164: $72
    adc [hl]                                      ; $5165: $8e
    add h                                         ; $5166: $84
    ld c, b                                       ; $5167: $48
    xor d                                         ; $5168: $aa
    sub [hl]                                      ; $5169: $96
    ld b, [hl]                                    ; $516a: $46
    xor d                                         ; $516b: $aa
    ld [hl], d                                    ; $516c: $72
    ld l, [hl]                                    ; $516d: $6e
    or h                                          ; $516e: $b4
    scf                                           ; $516f: $37
    xor e                                         ; $5170: $ab
    and a                                         ; $5171: $a7
    ld b, h                                       ; $5172: $44
    adc e                                         ; $5173: $8b
    sub e                                         ; $5174: $93
    dec a                                         ; $5175: $3d
    push de                                       ; $5176: $d5
    dec h                                         ; $5177: $25
    sbc h                                         ; $5178: $9c
    cp b                                          ; $5179: $b8
    ld b, e                                       ; $517a: $43
    ld a, e                                       ; $517b: $7b
    or l                                          ; $517c: $b5
    dec hl                                        ; $517d: $2b
    rst $10                                       ; $517e: $d7
    dec [hl]                                      ; $517f: $35
    sbc e                                         ; $5180: $9b
    xor c                                         ; $5181: $a9
    ld h, e                                       ; $5182: $63
    ld l, d                                       ; $5183: $6a
    or [hl]                                       ; $5184: $b6
    ld a, [hl+]                                   ; $5185: $2a
    rst $10                                       ; $5186: $d7
    ld b, l                                       ; $5187: $45
    adc d                                         ; $5188: $8a
    xor c                                         ; $5189: $a9
    ld [hl], e                                    ; $518a: $73
    ld e, c                                       ; $518b: $59
    and a                                         ; $518c: $a7
    add hl, hl                                    ; $518d: $29
    and $45                                       ; $518e: $e6 $45
    adc d                                         ; $5190: $8a
    xor c                                         ; $5191: $a9
    ld [hl], h                                    ; $5192: $74
    ld e, c                                       ; $5193: $59
    xor b                                         ; $5194: $a8
    scf                                           ; $5195: $37
    rst $30                                       ; $5196: $f7
    ld b, l                                       ; $5197: $45
    adc d                                         ; $5198: $8a
    xor c                                         ; $5199: $a9
    ld [hl], h                                    ; $519a: $74
    ld e, c                                       ; $519b: $59
    xor b                                         ; $519c: $a8
    scf                                           ; $519d: $37
    add sp, $44                                   ; $519e: $e8 $44
    adc d                                         ; $51a0: $8a
    cp d                                          ; $51a1: $ba
    ld [hl], h                                    ; $51a2: $74
    ld c, b                                       ; $51a3: $48
    xor d                                         ; $51a4: $aa
    ld h, d                                       ; $51a5: $62
    adc [hl]                                      ; $51a6: $8e
    ld [hl], l                                    ; $51a7: $75
    ld h, a                                       ; $51a8: $67
    adc d                                         ; $51a9: $8a
    and a                                         ; $51aa: $a7
    ld d, l                                       ; $51ab: $55
    adc d                                         ; $51ac: $8a
    sub e                                         ; $51ad: $93
    ld c, l                                       ; $51ae: $4d
    call nz, $8a47                                ; $51af: $c4 $47 $8a
    cp b                                          ; $51b2: $b8
    ld d, h                                       ; $51b3: $54
    ld a, c                                       ; $51b4: $79
    add h                                         ; $51b5: $84
    ld l, [hl]                                    ; $51b6: $6e
    sub e                                         ; $51b7: $93
    scf                                           ; $51b8: $37
    cp h                                          ; $51b9: $bc
    sub a                                         ; $51ba: $97
    ld d, h                                       ; $51bb: $54
    adc d                                         ; $51bc: $8a
    sub e                                         ; $51bd: $93
    ld c, l                                       ; $51be: $4d
    call nz, $9b46                                ; $51bf: $c4 $46 $9b
    cp b                                          ; $51c2: $b8
    ld d, e                                       ; $51c3: $53
    ld l, c                                       ; $51c4: $69
    ret z                                         ; $51c5: $c8

    dec d                                         ; $51c6: $15
    db $db                                        ; $51c7: $db
    ld d, [hl]                                    ; $51c8: $56
    ld [hl], a                                    ; $51c9: $77
    sbc d                                         ; $51ca: $9a
    sub [hl]                                      ; $51cb: $96
    ld b, a                                       ; $51cc: $47
    sbc d                                         ; $51cd: $9a
    ld h, e                                       ; $51ce: $63
    xor l                                         ; $51cf: $ad
    ld d, h                                       ; $51d0: $54
    ld a, b                                       ; $51d1: $78
    sbc d                                         ; $51d2: $9a
    sub a                                         ; $51d3: $97
    ld b, [hl]                                    ; $51d4: $46
    sbc d                                         ; $51d5: $9a
    ld [hl], d                                    ; $51d6: $72
    adc [hl]                                      ; $51d7: $8e
    ld [hl], h                                    ; $51d8: $74
    ld d, a                                       ; $51d9: $57
    xor e                                         ; $51da: $ab
    sbc b                                         ; $51db: $98
    ld b, h                                       ; $51dc: $44
    adc d                                         ; $51dd: $8a
    sub e                                         ; $51de: $93
    ld c, l                                       ; $51df: $4d
    and h                                         ; $51e0: $a4
    ld d, a                                       ; $51e1: $57
    sbc d                                         ; $51e2: $9a
    xor c                                         ; $51e3: $a9
    ld h, h                                       ; $51e4: $64
    ld a, d                                       ; $51e5: $7a
    and [hl]                                      ; $51e6: $a6
    daa                                           ; $51e7: $27
    rst $30                                       ; $51e8: $f7
    ld b, [hl]                                    ; $51e9: $46
    ld a, b                                       ; $51ea: $78
    xor d                                         ; $51eb: $aa
    add l                                         ; $51ec: $85
    ld c, b                                       ; $51ed: $48
    xor c                                         ; $51ee: $a9
    ld d, e                                       ; $51ef: $53
    cp l                                          ; $51f0: $bd
    ld d, h                                       ; $51f1: $54
    ld a, b                                       ; $51f2: $78
    sbc d                                         ; $51f3: $9a
    sub [hl]                                      ; $51f4: $96
    ld d, [hl]                                    ; $51f5: $56
    adc c                                         ; $51f6: $89
    ld [hl], e                                    ; $51f7: $73
    xor a                                         ; $51f8: $af
    ld h, e                                       ; $51f9: $63
    ld e, b                                       ; $51fa: $58
    xor e                                         ; $51fb: $ab
    sub a                                         ; $51fc: $97
    ld b, l                                       ; $51fd: $45
    sbc d                                         ; $51fe: $9a
    and l                                         ; $51ff: $a5
    add hl, hl                                    ; $5200: $29
    and $57                                       ; $5201: $e6 $57
    ld a, c                                       ; $5203: $79
    xor c                                         ; $5204: $a9
    ld [hl], l                                    ; $5205: $75
    ld d, a                                       ; $5206: $57
    xor c                                         ; $5207: $a9
    ld d, e                                       ; $5208: $53
    cp l                                          ; $5209: $bd
    ld d, l                                       ; $520a: $55
    ld [hl], a                                    ; $520b: $77
    sbc e                                         ; $520c: $9b
    sub a                                         ; $520d: $97
    ld b, [hl]                                    ; $520e: $46
    adc d                                         ; $520f: $8a
    sub e                                         ; $5210: $93
    ld e, [hl]                                    ; $5211: $5e
    sub e                                         ; $5212: $93
    ld h, a                                       ; $5213: $67
    sbc d                                         ; $5214: $9a
    xor b                                         ; $5215: $a8
    ld h, l                                       ; $5216: $65
    ld a, c                                       ; $5217: $79
    sub l                                         ; $5218: $95
    ld c, l                                       ; $5219: $4d
    or h                                          ; $521a: $b4
    ld b, [hl]                                    ; $521b: $46
    sbc e                                         ; $521c: $9b
    xor b                                         ; $521d: $a8
    ld d, e                                       ; $521e: $53
    ld a, d                                       ; $521f: $7a
    cp b                                          ; $5220: $b8
    inc h                                         ; $5221: $24
    call c, Call_015_6756                         ; $5222: $dc $56 $67
    sbc e                                         ; $5225: $9b
    sub a                                         ; $5226: $97
    ld b, [hl]                                    ; $5227: $46
    sbc d                                         ; $5228: $9a
    sub e                                         ; $5229: $93
    ld c, l                                       ; $522a: $4d
    and h                                         ; $522b: $a4
    ld h, a                                       ; $522c: $67
    ld a, d                                       ; $522d: $7a
    cp b                                          ; $522e: $b8
    ld d, l                                       ; $522f: $55
    adc c                                         ; $5230: $89
    sub [hl]                                      ; $5231: $96
    ld a, [hl-]                                   ; $5232: $3a
    and $36                                       ; $5233: $e6 $36
    adc d                                         ; $5235: $8a
    cp c                                          ; $5236: $b9
    ld [hl], h                                    ; $5237: $74
    ld e, c                                       ; $5238: $59
    xor d                                         ; $5239: $aa
    ld h, d                                       ; $523a: $62
    ld a, [hl]                                    ; $523b: $7e
    sub l                                         ; $523c: $95
    ld h, [hl]                                    ; $523d: $66
    ld a, d                                       ; $523e: $7a
    xor b                                         ; $523f: $a8
    ld d, l                                       ; $5240: $55
    ld a, c                                       ; $5241: $79
    sub [hl]                                      ; $5242: $96
    ld a, [hl+]                                   ; $5243: $2a
    and $46                                       ; $5244: $e6 $46
    ld a, c                                       ; $5246: $79
    cp c                                          ; $5247: $b9
    ld [hl], h                                    ; $5248: $74
    ld e, b                                       ; $5249: $58
    xor c                                         ; $524a: $a9
    ld d, d                                       ; $524b: $52
    cp [hl]                                       ; $524c: $be
    ld d, l                                       ; $524d: $55
    ld l, b                                       ; $524e: $68
    sbc d                                         ; $524f: $9a
    sub a                                         ; $5250: $97
    ld b, l                                       ; $5251: $45
    sbc d                                         ; $5252: $9a
    add h                                         ; $5253: $84
    ld c, l                                       ; $5254: $4d
    jp $8957                                      ; $5255: $c3 $57 $89


    xor c                                         ; $5258: $a9
    ld h, h                                       ; $5259: $64
    ld a, c                                       ; $525a: $79
    and a                                         ; $525b: $a7
    ld b, h                                       ; $525c: $44
    db $eb                                        ; $525d: $eb
    dec [hl]                                      ; $525e: $35
    ld a, b                                       ; $525f: $78
    sbc d                                         ; $5260: $9a
    add l                                         ; $5261: $85
    ld b, a                                       ; $5262: $47
    xor d                                         ; $5263: $aa
    ld [hl], e                                    ; $5264: $73
    ld e, [hl]                                    ; $5265: $5e
    or e                                          ; $5266: $b3
    ld d, a                                       ; $5267: $57
    sbc c                                         ; $5268: $99
    xor b                                         ; $5269: $a8
    ld d, h                                       ; $526a: $54
    ld a, d                                       ; $526b: $7a
    and a                                         ; $526c: $a7
    inc [hl]                                      ; $526d: $34
    call Call_015_6854                            ; $526e: $cd $54 $68
    xor e                                         ; $5271: $ab
    sub l                                         ; $5272: $95
    ld [hl], $ab                                  ; $5273: $36 $ab
    add e                                         ; $5275: $83
    ld a, [hl+]                                   ; $5276: $2a
    rst $30                                       ; $5277: $f7
    ld b, l                                       ; $5278: $45
    ld a, c                                       ; $5279: $79
    cp d                                          ; $527a: $ba
    ld [hl], h                                    ; $527b: $74
    ld e, b                                       ; $527c: $58
    xor c                                         ; $527d: $a9
    ld b, e                                       ; $527e: $43
    cp [hl]                                       ; $527f: $be
    ld h, e                                       ; $5280: $63
    ld l, b                                       ; $5281: $68
    sbc e                                         ; $5282: $9b
    and [hl]                                      ; $5283: $a6
    dec [hl]                                      ; $5284: $35
    sbc e                                         ; $5285: $9b
    sub h                                         ; $5286: $94
    ld a, [hl+]                                   ; $5287: $2a
    rst $20                                       ; $5288: $e7
    ld b, [hl]                                    ; $5289: $46
    ld a, b                                       ; $528a: $78
    cp d                                          ; $528b: $ba
    ld [hl], h                                    ; $528c: $74
    ld e, c                                       ; $528d: $59
    xor c                                         ; $528e: $a9
    ld d, d                                       ; $528f: $52
    sbc [hl]                                      ; $5290: $9e
    ld h, h                                       ; $5291: $64
    ld [hl], a                                    ; $5292: $77
    adc e                                         ; $5293: $8b
    and a                                         ; $5294: $a7
    ld b, [hl]                                    ; $5295: $46
    sbc c                                         ; $5296: $99
    add l                                         ; $5297: $85
    dec sp                                        ; $5298: $3b
    push de                                       ; $5299: $d5
    ld b, a                                       ; $529a: $47
    adc c                                         ; $529b: $89
    cp c                                          ; $529c: $b9
    ld h, h                                       ; $529d: $64
    ld a, c                                       ; $529e: $79
    and a                                         ; $529f: $a7
    ld b, h                                       ; $52a0: $44
    xor [hl]                                      ; $52a1: $ae
    ld [hl], e                                    ; $52a2: $73
    ld l, b                                       ; $52a3: $68
    sbc e                                         ; $52a4: $9b
    sub [hl]                                      ; $52a5: $96
    ld b, [hl]                                    ; $52a6: $46
    sbc e                                         ; $52a7: $9b
    sub [hl]                                      ; $52a8: $96
    dec [hl]                                      ; $52a9: $35
    call $5664                                    ; $52aa: $cd $64 $56
    xor h                                         ; $52ad: $ac
    add l                                         ; $52ae: $85
    ld b, [hl]                                    ; $52af: $46
    sbc d                                         ; $52b0: $9a
    sub l                                         ; $52b1: $95
    jr z, @-$06                                   ; $52b2: $28 $f8

    ld b, l                                       ; $52b4: $45
    ld l, c                                       ; $52b5: $69
    cp d                                          ; $52b6: $ba
    ld h, l                                       ; $52b7: $65
    ld l, b                                       ; $52b8: $68
    xor c                                         ; $52b9: $a9
    ld d, e                                       ; $52ba: $53
    ld a, a                                       ; $52bb: $7f
    sub e                                         ; $52bc: $93
    ld d, a                                       ; $52bd: $57
    sbc e                                         ; $52be: $9b
    and a                                         ; $52bf: $a7
    ld b, l                                       ; $52c0: $45
    adc d                                         ; $52c1: $8a
    sub l                                         ; $52c2: $95
    ld h, $fa                                     ; $52c3: $26 $fa
    dec [hl]                                      ; $52c5: $35
    ld a, b                                       ; $52c6: $78
    cp e                                          ; $52c7: $bb
    ld [hl], l                                    ; $52c8: $75
    ld e, b                                       ; $52c9: $58
    xor c                                         ; $52ca: $a9
    ld h, e                                       ; $52cb: $63
    ld e, l                                       ; $52cc: $5d
    jp $8a57                                      ; $52cd: $c3 $57 $8a


    cp b                                          ; $52d0: $b8
    ld d, l                                       ; $52d1: $55
    adc d                                         ; $52d2: $8a
    and a                                         ; $52d3: $a7
    inc [hl]                                      ; $52d4: $34
    cp l                                          ; $52d5: $bd
    ld h, h                                       ; $52d6: $64
    ld h, a                                       ; $52d7: $67
    xor e                                         ; $52d8: $ab
    sub [hl]                                      ; $52d9: $96
    ld b, [hl]                                    ; $52da: $46
    sbc d                                         ; $52db: $9a
    add h                                         ; $52dc: $84
    ld a, [hl+]                                   ; $52dd: $2a
    rst $30                                       ; $52de: $f7
    ld [hl], $89                                  ; $52df: $36 $89
    cp c                                          ; $52e1: $b9
    ld h, h                                       ; $52e2: $64
    ld e, c                                       ; $52e3: $59
    cp c                                          ; $52e4: $b9
    ld d, d                                       ; $52e5: $52
    ld a, [hl]                                    ; $52e6: $7e
    and h                                         ; $52e7: $a4
    ld d, a                                       ; $52e8: $57
    adc e                                         ; $52e9: $8b
    and a                                         ; $52ea: $a7
    ld d, h                                       ; $52eb: $54
    adc d                                         ; $52ec: $8a
    sub [hl]                                      ; $52ed: $96
    ld h, $ea                                     ; $52ee: $26 $ea
    ld b, h                                       ; $52f0: $44
    ld a, c                                       ; $52f1: $79
    xor d                                         ; $52f2: $aa
    ld [hl], l                                    ; $52f3: $75
    ld e, b                                       ; $52f4: $58
    xor c                                         ; $52f5: $a9
    ld d, d                                       ; $52f6: $52
    adc a                                         ; $52f7: $8f
    sub e                                         ; $52f8: $93
    ld c, b                                       ; $52f9: $48
    xor e                                         ; $52fa: $ab
    and a                                         ; $52fb: $a7
    ld b, l                                       ; $52fc: $45
    adc e                                         ; $52fd: $8b
    and [hl]                                      ; $52fe: $a6
    inc h                                         ; $52ff: $24
    call Call_015_6764                            ; $5300: $cd $64 $67
    xor e                                         ; $5303: $ab
    sub [hl]                                      ; $5304: $96
    ld b, [hl]                                    ; $5305: $46
    xor d                                         ; $5306: $aa
    add h                                         ; $5307: $84
    dec hl                                        ; $5308: $2b
    and $56                                       ; $5309: $e6 $56
    ld a, c                                       ; $530b: $79
    cp c                                          ; $530c: $b9
    ld h, l                                       ; $530d: $65
    ld l, c                                       ; $530e: $69
    xor b                                         ; $530f: $a8
    ld b, e                                       ; $5310: $43
    cp [hl]                                       ; $5311: $be
    ld d, h                                       ; $5312: $54
    ld l, b                                       ; $5313: $68
    xor d                                         ; $5314: $aa
    sub [hl]                                      ; $5315: $96
    ld b, [hl]                                    ; $5316: $46
    sbc d                                         ; $5317: $9a
    ld [hl], h                                    ; $5318: $74
    dec sp                                        ; $5319: $3b
    push hl                                       ; $531a: $e5
    ld b, [hl]                                    ; $531b: $46
    adc d                                         ; $531c: $8a
    xor c                                         ; $531d: $a9
    ld h, l                                       ; $531e: $65
    ld l, c                                       ; $531f: $69
    xor b                                         ; $5320: $a8
    ld b, h                                       ; $5321: $44
    sbc a                                         ; $5322: $9f
    ld [hl], d                                    ; $5323: $72
    ld e, b                                       ; $5324: $58

jr_015_5325:
    xor e                                         ; $5325: $ab
    sub [hl]                                      ; $5326: $96
    ld b, [hl]                                    ; $5327: $46
    sbc d                                         ; $5328: $9a
    add l                                         ; $5329: $85
    jr c, jr_015_5325                             ; $532a: $38 $f9

    inc [hl]                                      ; $532c: $34
    adc c                                         ; $532d: $89
    xor d                                         ; $532e: $aa
    ld [hl], l                                    ; $532f: $75
    ld e, b                                       ; $5330: $58
    xor b                                         ; $5331: $a8
    ld d, e                                       ; $5332: $53
    sbc a                                         ; $5333: $9f
    add d                                         ; $5334: $82
    ld c, b                                       ; $5335: $48
    xor e                                         ; $5336: $ab
    and a                                         ; $5337: $a7
    ld b, l                                       ; $5338: $45
    sbc e                                         ; $5339: $9b
    add e                                         ; $533a: $83
    inc a                                         ; $533b: $3c
    and $25                                       ; $533c: $e6 $25
    sbc e                                         ; $533e: $9b
    cp c                                          ; $533f: $b9
    ld h, e                                       ; $5340: $63
    ld l, d                                       ; $5341: $6a
    or a                                          ; $5342: $b7
    inc h                                         ; $5343: $24
    call c, Call_015_6953                         ; $5344: $dc $53 $69
    xor d                                         ; $5347: $aa
    sub l                                         ; $5348: $95
    ld b, a                                       ; $5349: $47
    xor d                                         ; $534a: $aa
    ld h, e                                       ; $534b: $63
    ld l, l                                       ; $534c: $6d
    or h                                          ; $534d: $b4
    ld d, a                                       ; $534e: $57
    sbc d                                         ; $534f: $9a
    xor b                                         ; $5350: $a8
    ld d, h                                       ; $5351: $54
    ld a, d                                       ; $5352: $7a
    sub l                                         ; $5353: $95
    add hl, hl                                    ; $5354: $29
    add sp, $35                                   ; $5355: $e8 $35
    adc c                                         ; $5357: $89
    xor d                                         ; $5358: $aa
    ld [hl], h                                    ; $5359: $74
    ld e, c                                       ; $535a: $59
    cp b                                          ; $535b: $b8
    ld b, e                                       ; $535c: $43
    cp [hl]                                       ; $535d: $be
    ld h, e                                       ; $535e: $63
    ld e, b                                       ; $535f: $58
    xor e                                         ; $5360: $ab
    and [hl]                                      ; $5361: $a6
    dec [hl]                                      ; $5362: $35
    sbc e                                         ; $5363: $9b
    add h                                         ; $5364: $84
    dec sp                                        ; $5365: $3b
    rst $20                                       ; $5366: $e7
    ld b, [hl]                                    ; $5367: $46
    ld a, c                                       ; $5368: $79
    xor d                                         ; $5369: $aa
    ld [hl], h                                    ; $536a: $74
    ld e, c                                       ; $536b: $59
    and a                                         ; $536c: $a7
    dec [hl]                                      ; $536d: $35
    db $eb                                        ; $536e: $eb
    ld b, e                                       ; $536f: $43
    adc d                                         ; $5370: $8a
    cp d                                          ; $5371: $ba
    add l                                         ; $5372: $85
    scf                                           ; $5373: $37
    cp e                                          ; $5374: $bb
    ld h, d                                       ; $5375: $62
    ld e, [hl]                                    ; $5376: $5e
    or h                                          ; $5377: $b4
    ld b, [hl]                                    ; $5378: $46
    sbc d                                         ; $5379: $9a
    xor c                                         ; $537a: $a9
    ld h, h                                       ; $537b: $64
    ld a, d                                       ; $537c: $7a
    sub [hl]                                      ; $537d: $96
    scf                                           ; $537e: $37
    jp hl                                         ; $537f: $e9


    inc [hl]                                      ; $5380: $34
    adc c                                         ; $5381: $89
    cp d                                          ; $5382: $ba
    add h                                         ; $5383: $84
    ld c, b                                       ; $5384: $48
    xor c                                         ; $5385: $a9
    ld d, e                                       ; $5386: $53
    xor a                                         ; $5387: $af
    ld h, e                                       ; $5388: $63
    ld e, c                                       ; $5389: $59
    xor d                                         ; $538a: $aa
    sub a                                         ; $538b: $97
    ld b, l                                       ; $538c: $45

Jump_015_538d:
    sbc d                                         ; $538d: $9a
    ld [hl], e                                    ; $538e: $73
    ld l, [hl]                                    ; $538f: $6e
    or h                                          ; $5390: $b4
    ld [hl], $9b                                  ; $5391: $36 $9b

jr_015_5393:
    xor c                                         ; $5393: $a9
    ld d, e                                       ; $5394: $53
    ld a, d                                       ; $5395: $7a
    or a                                          ; $5396: $b7
    inc [hl]                                      ; $5397: $34
    call $6765                                    ; $5398: $cd $65 $67
    sbc e                                         ; $539b: $9b
    sub a                                         ; $539c: $97
    ld b, [hl]                                    ; $539d: $46
    sbc d                                         ; $539e: $9a
    ld [hl], h                                    ; $539f: $74
    ld e, l                                       ; $53a0: $5d
    call nz, $9a47                                ; $53a1: $c4 $47 $9a
    xor c                                         ; $53a4: $a9
    ld h, h                                       ; $53a5: $64
    ld a, d                                       ; $53a6: $7a
    sub [hl]                                      ; $53a7: $96
    jr c, jr_015_5393                             ; $53a8: $38 $e9

    inc [hl]                                      ; $53aa: $34
    ld a, d                                       ; $53ab: $7a
    xor d                                         ; $53ac: $aa
    add l                                         ; $53ad: $85
    ld c, b                                       ; $53ae: $48
    xor b                                         ; $53af: $a8
    ld b, e                                       ; $53b0: $43
    xor [hl]                                      ; $53b1: $ae
    ld [hl], e                                    ; $53b2: $73
    ld e, b                                       ; $53b3: $58
    xor d                                         ; $53b4: $aa
    and a                                         ; $53b5: $a7
    ld b, l                                       ; $53b6: $45
    sbc d                                         ; $53b7: $9a
    add h                                         ; $53b8: $84
    ld c, d                                       ; $53b9: $4a
    rst $10                                       ; $53ba: $d7
    ld b, [hl]                                    ; $53bb: $46
    adc c                                         ; $53bc: $89
    xor d                                         ; $53bd: $aa
    ld [hl], h                                    ; $53be: $74
    ld e, b                                       ; $53bf: $58
    xor c                                         ; $53c0: $a9
    ld d, d                                       ; $53c1: $52
    sbc [hl]                                      ; $53c2: $9e
    add h                                         ; $53c3: $84
    ld h, a                                       ; $53c4: $67
    adc d                                         ; $53c5: $8a
    xor b                                         ; $53c6: $a8
    ld d, l                                       ; $53c7: $55
    adc d                                         ; $53c8: $8a
    add h                                         ; $53c9: $84
    ld e, l                                       ; $53ca: $5d
    call nc, $9a36                                ; $53cb: $d4 $36 $9a
    xor c                                         ; $53ce: $a9
    ld d, e                                       ; $53cf: $53
    ld l, d                                       ; $53d0: $6a
    or a                                          ; $53d1: $b7
    ld b, e                                       ; $53d2: $43
    xor [hl]                                      ; $53d3: $ae

jr_015_53d4:
    add h                                         ; $53d4: $84
    ld h, a                                       ; $53d5: $67
    adc d                                         ; $53d6: $8a
    xor b                                         ; $53d7: $a8
    ld b, l                                       ; $53d8: $45
    adc d                                         ; $53d9: $8a
    sub [hl]                                      ; $53da: $96
    jr c, jr_015_53d4                             ; $53db: $38 $f7

    ld b, [hl]                                    ; $53dd: $46
    ld a, b                                       ; $53de: $78
    xor c                                         ; $53df: $a9
    add l                                         ; $53e0: $85
    ld e, b                                       ; $53e1: $58
    xor c                                         ; $53e2: $a9
    ld d, e                                       ; $53e3: $53
    adc a                                         ; $53e4: $8f
    add e                                         ; $53e5: $83
    ld d, a                                       ; $53e6: $57
    sbc d                                         ; $53e7: $9a
    xor b                                         ; $53e8: $a8
    ld d, l                                       ; $53e9: $55
    adc d                                         ; $53ea: $8a
    sub l                                         ; $53eb: $95
    scf                                           ; $53ec: $37
    ld sp, hl                                     ; $53ed: $f9
    dec [hl]                                      ; $53ee: $35
    ld a, c                                       ; $53ef: $79
    xor d                                         ; $53f0: $aa
    add l                                         ; $53f1: $85
    ld c, b                                       ; $53f2: $48
    xor c                                         ; $53f3: $a9
    ld h, e                                       ; $53f4: $63
    ld l, [hl]                                    ; $53f5: $6e
    or e                                          ; $53f6: $b3
    ld d, a                                       ; $53f7: $57
    adc d                                         ; $53f8: $8a
    xor b                                         ; $53f9: $a8
    ld d, h                                       ; $53fa: $54
    ld a, d                                       ; $53fb: $7a
    sub [hl]                                      ; $53fc: $96
    dec [hl]                                      ; $53fd: $35
    call c, Call_015_6844                         ; $53fe: $dc $44 $68
    xor e                                         ; $5401: $ab
    sub [hl]                                      ; $5402: $96
    ld b, a                                       ; $5403: $47
    xor c                                         ; $5404: $a9
    ld [hl], e                                    ; $5405: $73
    ld c, h                                       ; $5406: $4c
    push de                                       ; $5407: $d5
    ld [hl], $8a                                  ; $5408: $36 $8a
    cp c                                          ; $540a: $b9
    ld h, h                                       ; $540b: $64
    ld l, d                                       ; $540c: $6a
    and a                                         ; $540d: $a7
    inc [hl]                                      ; $540e: $34
    call Call_015_6863                            ; $540f: $cd $63 $68
    sbc e                                         ; $5412: $9b
    and [hl]                                      ; $5413: $a6
    ld [hl], $9a                                  ; $5414: $36 $9a
    add l                                         ; $5416: $85
    add hl, sp                                    ; $5417: $39
    add sp, $46                                   ; $5418: $e8 $46
    ld a, b                                       ; $541a: $78
    xor d                                         ; $541b: $aa
    ld [hl], l                                    ; $541c: $75
    ld e, b                                       ; $541d: $58
    xor c                                         ; $541e: $a9
    ld h, e                                       ; $541f: $63
    adc [hl]                                      ; $5420: $8e
    sub h                                         ; $5421: $94
    ld h, a                                       ; $5422: $67
    adc d                                         ; $5423: $8a
    xor b                                         ; $5424: $a8
    ld d, l                                       ; $5425: $55
    adc c                                         ; $5426: $89
    sub [hl]                                      ; $5427: $96
    scf                                           ; $5428: $37
    ld sp, hl                                     ; $5429: $f9
    inc [hl]                                      ; $542a: $34
    adc c                                         ; $542b: $89
    xor d                                         ; $542c: $aa
    ld [hl], l                                    ; $542d: $75
    ld e, b                                       ; $542e: $58
    xor c                                         ; $542f: $a9
    ld d, h                                       ; $5430: $54
    ld e, h                                       ; $5431: $5c
    push de                                       ; $5432: $d5
    ld b, [hl]                                    ; $5433: $46
    adc d                                         ; $5434: $8a
    cp c                                          ; $5435: $b9
    ld d, h                                       ; $5436: $54
    ld a, d                                       ; $5437: $7a
    xor b                                         ; $5438: $a8
    ld d, e                                       ; $5439: $53
    ld a, [hl]                                    ; $543a: $7e
    and l                                         ; $543b: $a5
    ld d, [hl]                                    ; $543c: $56
    adc e                                         ; $543d: $8b
    or a                                          ; $543e: $b7
    ld d, l                                       ; $543f: $55
    adc c                                         ; $5440: $89
    sub [hl]                                      ; $5441: $96
    ld b, [hl]                                    ; $5442: $46
    ld [$7935], a                                 ; $5443: $ea $35 $79
    xor d                                         ; $5446: $aa
    ld [hl], l                                    ; $5447: $75
    ld e, b                                       ; $5448: $58
    xor c                                         ; $5449: $a9
    ld h, e                                       ; $544a: $63
    ld c, h                                       ; $544b: $4c
    and $46                                       ; $544c: $e6 $46
    ld a, d                                       ; $544e: $7a
    cp c                                          ; $544f: $b9
    ld h, h                                       ; $5450: $64
    ld l, c                                       ; $5451: $69
    xor b                                         ; $5452: $a8
    ld b, e                                       ; $5453: $43
    ld a, a                                       ; $5454: $7f
    and h                                         ; $5455: $a4
    ld d, [hl]                                    ; $5456: $56
    adc e                                         ; $5457: $8b
    or a                                          ; $5458: $b7
    ld d, h                                       ; $5459: $54
    adc d                                         ; $545a: $8a
    and [hl]                                      ; $545b: $a6
    dec [hl]                                      ; $545c: $35
    db $dd                                        ; $545d: $dd
    ld b, h                                       ; $545e: $44
    ld h, a                                       ; $545f: $67
    xor e                                         ; $5460: $ab
    add l                                         ; $5461: $85
    ld d, a                                       ; $5462: $57
    xor d                                         ; $5463: $aa
    ld [hl], h                                    ; $5464: $74
    ld c, d                                       ; $5465: $4a
    rst $20                                       ; $5466: $e7
    dec [hl]                                      ; $5467: $35
    ld a, c                                       ; $5468: $79
    jp z, $5954                                   ; $5469: $ca $54 $59

    cp d                                          ; $546c: $ba
    ld d, e                                       ; $546d: $53
    ld c, c                                       ; $546e: $49
    jp hl                                         ; $546f: $e9


    ld b, h                                       ; $5470: $44
    ld e, d                                       ; $5471: $5a
    jp c, $5864                                   ; $5472: $da $64 $58

    cp d                                          ; $5475: $ba
    ld [hl], e                                    ; $5476: $73
    ld a, [hl-]                                   ; $5477: $3a
    jp hl                                         ; $5478: $e9


    ld b, e                                       ; $5479: $43
    ld l, e                                       ; $547a: $6b
    ret                                           ; $547b: $c9


    ld h, l                                       ; $547c: $65
    ld e, c                                       ; $547d: $59

Jump_015_547e:
    cp c                                          ; $547e: $b9
    ld d, h                                       ; $547f: $54
    ld e, h                                       ; $5480: $5c
    sub $44                                       ; $5481: $d6 $44
    adc h                                         ; $5483: $8c
    or a                                          ; $5484: $b7
    ld d, l                                       ; $5485: $55
    ld a, d                                       ; $5486: $7a
    cp b                                          ; $5487: $b8
    ld b, h                                       ; $5488: $44
    ld l, e                                       ; $5489: $6b
    add sp, $33                                   ; $548a: $e8 $33
    ld a, h                                       ; $548c: $7c
    ret z                                         ; $548d: $c8

    ld d, h                                       ; $548e: $54
    ld l, d                                       ; $548f: $6a
    xor c                                         ; $5490: $a9
    ld h, h                                       ; $5491: $64
    ld e, b                                       ; $5492: $58
    db $eb                                        ; $5493: $eb
    ld b, e                                       ; $5494: $43
    ld e, d                                       ; $5495: $5a
    jp c, $5865                                   ; $5496: $da $65 $58

    cp c                                          ; $5499: $b9
    ld h, h                                       ; $549a: $64
    ld c, b                                       ; $549b: $48
    db $db                                        ; $549c: $db
    ld b, e                                       ; $549d: $43
    ld e, d                                       ; $549e: $5a
    jp c, $5864                                   ; $549f: $da $64 $58

    cp c                                          ; $54a2: $b9
    ld h, h                                       ; $54a3: $64

Call_015_54a4:
    ld e, b                                       ; $54a4: $58
    call Call_015_4952                            ; $54a5: $cd $52 $49
    ei                                            ; $54a8: $fb
    ld d, e                                       ; $54a9: $53
    ld e, b                                       ; $54aa: $58
    cp d                                          ; $54ab: $ba
    ld h, h                                       ; $54ac: $64
    ld e, c                                       ; $54ad: $59
    adc c                                         ; $54ae: $89
    or l                                          ; $54af: $b5
    ld h, $ac                                     ; $54b0: $26 $ac
    add l                                         ; $54b2: $85
    ld d, a                                       ; $54b3: $57
    adc c                                         ; $54b4: $89
    sub a                                         ; $54b5: $97
    ld d, [hl]                                    ; $54b6: $56
    add [hl]                                      ; $54b7: $86
    adc l                                         ; $54b8: $8d
    add e                                         ; $54b9: $83
    ld b, a                                       ; $54ba: $47
    cp e                                          ; $54bb: $bb
    add h                                         ; $54bc: $84
    ld d, a                                       ; $54bd: $57
    sbc c                                         ; $54be: $99
    add [hl]                                      ; $54bf: $86
    ld h, [hl]                                    ; $54c0: $66
    ld h, a                                       ; $54c1: $67
    call z, Call_015_6a42                         ; $54c2: $cc $42 $6a
    ret                                           ; $54c5: $c9


    ld d, l                                       ; $54c6: $55
    ld l, b                                       ; $54c7: $68
    xor c                                         ; $54c8: $a9
    ld [hl], l                                    ; $54c9: $75
    ld d, a                                       ; $54ca: $57
    adc e                                         ; $54cb: $8b
    call nz, $9c36                                ; $54cc: $c4 $36 $9c
    sub l                                         ; $54cf: $95
    ld d, a                                       ; $54d0: $57
    sbc d                                         ; $54d1: $9a
    add [hl]                                      ; $54d2: $86
    ld h, [hl]                                    ; $54d3: $66
    adc b                                         ; $54d4: $88
    ld l, c                                       ; $54d5: $69
    or l                                          ; $54d6: $b5
    ld c, b                                       ; $54d7: $48
    xor d                                         ; $54d8: $aa
    add [hl]                                      ; $54d9: $86
    ld l, b                                       ; $54da: $68
    adc b                                         ; $54db: $88
    add a                                         ; $54dc: $87
    ld [hl], a                                    ; $54dd: $77
    adc b                                         ; $54de: $88
    ld h, l                                       ; $54df: $65
    xor e                                         ; $54e0: $ab
    ld h, h                                       ; $54e1: $64
    ld l, c                                       ; $54e2: $69
    cp c                                          ; $54e3: $b9
    ld h, [hl]                                    ; $54e4: $66
    ld a, b                                       ; $54e5: $78
    sbc c                                         ; $54e6: $99
    halt                                          ; $54e7: $76
    ld a, b                                       ; $54e8: $78
    halt                                          ; $54e9: $76
    ld a, h                                       ; $54ea: $7c
    and l                                         ; $54eb: $a5
    ld b, [hl]                                    ; $54ec: $46
    xor h                                         ; $54ed: $ac
    add l                                         ; $54ee: $85
    ld h, a                                       ; $54ef: $67
    sbc c                                         ; $54f0: $99
    add [hl]                                      ; $54f1: $86
    ld h, a                                       ; $54f2: $67
    adc b                                         ; $54f3: $88
    ld b, a                                       ; $54f4: $47
    reti                                          ; $54f5: $d9


    ld b, h                                       ; $54f6: $44
    ld a, e                                       ; $54f7: $7b
    or a                                          ; $54f8: $b7
    ld h, [hl]                                    ; $54f9: $66
    ld a, c                                       ; $54fa: $79
    xor c                                         ; $54fb: $a9
    ld h, l                                       ; $54fc: $65
    adc d                                         ; $54fd: $8a
    add l                                         ; $54fe: $85
    ld e, c                                       ; $54ff: $59
    rst $10                                       ; $5500: $d7
    ld b, [hl]                                    ; $5501: $46
    ld a, d                                       ; $5502: $7a
    and a                                         ; $5503: $a7
    ld h, [hl]                                    ; $5504: $66
    ld a, c                                       ; $5505: $79
    sbc b                                         ; $5506: $98
    ld d, l                                       ; $5507: $55
    adc d                                         ; $5508: $8a
    add [hl]                                      ; $5509: $86
    ld d, [hl]                                    ; $550a: $56
    xor h                                         ; $550b: $ac
    ld h, e                                       ; $550c: $63
    ld l, c                                       ; $550d: $69
    cp c                                          ; $550e: $b9
    ld h, l                                       ; $550f: $65
    adc b                                         ; $5510: $88
    sbc c                                         ; $5511: $99
    halt                                          ; $5512: $76
    ld a, b                                       ; $5513: $78
    add a                                         ; $5514: $87
    ld h, [hl]                                    ; $5515: $66
    ld a, b                                       ; $5516: $78
    cp b                                          ; $5517: $b8
    dec [hl]                                      ; $5518: $35
    adc e                                         ; $5519: $8b
    and [hl]                                      ; $551a: $a6
    ld b, [hl]                                    ; $551b: $46
    sbc c                                         ; $551c: $99
    add a                                         ; $551d: $87
    ld h, a                                       ; $551e: $67
    adc c                                         ; $551f: $89
    sub a                                         ; $5520: $97
    ld d, a                                       ; $5521: $57
    add a                                         ; $5522: $87
    adc h                                         ; $5523: $8c
    ld [hl], e                                    ; $5524: $73
    ld c, b                                       ; $5525: $48
    jp z, $7864                                   ; $5526: $ca $64 $78

    sbc c                                         ; $5529: $99
    add [hl]                                      ; $552a: $86
    ld l, b                                       ; $552b: $68
    xor c                                         ; $552c: $a9
    ld [hl], l                                    ; $552d: $75
    ld a, b                                       ; $552e: $78
    ld a, b                                       ; $552f: $78
    or a                                          ; $5530: $b7
    dec [hl]                                      ; $5531: $35
    adc e                                         ; $5532: $8b
    and [hl]                                      ; $5533: $a6
    ld d, a                                       ; $5534: $57
    adc b                                         ; $5535: $88
    sbc b                                         ; $5536: $98
    ld h, [hl]                                    ; $5537: $66
    adc d                                         ; $5538: $8a
    sub a                                         ; $5539: $97
    ld h, [hl]                                    ; $553a: $66
    adc c                                         ; $553b: $89
    ld [hl], l                                    ; $553c: $75
    adc h                                         ; $553d: $8c
    ld [hl], l                                    ; $553e: $75
    ld h, a                                       ; $553f: $67
    sbc c                                         ; $5540: $99
    halt                                          ; $5541: $76
    ld h, a                                       ; $5542: $67
    sbc c                                         ; $5543: $99
    add a                                         ; $5544: $87
    ld l, b                                       ; $5545: $68
    sbc b                                         ; $5546: $98
    ld [hl], a                                    ; $5547: $77
    ld [hl], a                                    ; $5548: $77
    adc b                                         ; $5549: $88
    ld [hl], l                                    ; $554a: $75
    ld a, h                                       ; $554b: $7c
    sub l                                         ; $554c: $95
    ld b, [hl]                                    ; $554d: $46
    xor h                                         ; $554e: $ac
    add l                                         ; $554f: $85
    ld d, a                                       ; $5550: $57
    sbc d                                         ; $5551: $9a
    and a                                         ; $5552: $a7
    ld d, [hl]                                    ; $5553: $56
    sbc c                                         ; $5554: $99
    add a                                         ; $5555: $87
    ld h, a                                       ; $5556: $67
    ld [hl], a                                    ; $5557: $77
    ld a, e                                       ; $5558: $7b
    sub l                                         ; $5559: $95

Call_015_555a:
    ld d, a                                       ; $555a: $57
    sbc d                                         ; $555b: $9a
    add [hl]                                      ; $555c: $86
    ld h, [hl]                                    ; $555d: $66
    adc d                                         ; $555e: $8a
    sub a                                         ; $555f: $97
    ld h, a                                       ; $5560: $67
    sbc c                                         ; $5561: $99
    add a                                         ; $5562: $87
    ld [hl], a                                    ; $5563: $77
    adc b                                         ; $5564: $88
    halt                                          ; $5565: $76
    adc c                                         ; $5566: $89
    add a                                         ; $5567: $87
    ld h, a                                       ; $5568: $67
    sbc c                                         ; $5569: $99
    add a                                         ; $556a: $87
    ld h, a                                       ; $556b: $67
    adc b                                         ; $556c: $88
    add a                                         ; $556d: $87
    ld [hl], a                                    ; $556e: $77
    adc b                                         ; $556f: $88
    add a                                         ; $5570: $87
    ld [hl], a                                    ; $5571: $77
    add a                                         ; $5572: $87
    ld a, b                                       ; $5573: $78
    adc b                                         ; $5574: $88
    add a                                         ; $5575: $87
    ld a, b                                       ; $5576: $78
    adc b                                         ; $5577: $88
    ld [hl], a                                    ; $5578: $77
    adc b                                         ; $5579: $88
    adc b                                         ; $557a: $88
    ld [hl], a                                    ; $557b: $77
    ld a, b                                       ; $557c: $78
    add a                                         ; $557d: $87
    ld [hl], a                                    ; $557e: $77
    ld a, b                                       ; $557f: $78
    adc b                                         ; $5580: $88
    ld [hl], a                                    ; $5581: $77
    ld a, b                                       ; $5582: $78
    adc b                                         ; $5583: $88
    add a                                         ; $5584: $87
    add a                                         ; $5585: $87
    adc b                                         ; $5586: $88
    adc b                                         ; $5587: $88
    ld [hl], a                                    ; $5588: $77
    ld a, b                                       ; $5589: $78
    adc b                                         ; $558a: $88
    ld [hl], a                                    ; $558b: $77
    ld [hl], a                                    ; $558c: $77
    adc b                                         ; $558d: $88
    add a                                         ; $558e: $87
    ld a, b                                       ; $558f: $78
    adc b                                         ; $5590: $88
    adc b                                         ; $5591: $88
    ld [hl], a                                    ; $5592: $77
    adc b                                         ; $5593: $88
    add a                                         ; $5594: $87
    ld a, b                                       ; $5595: $78
    add a                                         ; $5596: $87
    adc b                                         ; $5597: $88
    ld [hl], a                                    ; $5598: $77
    adc b                                         ; $5599: $88
    adc b                                         ; $559a: $88
    adc b                                         ; $559b: $88
    add a                                         ; $559c: $87
    adc b                                         ; $559d: $88
    adc b                                         ; $559e: $88
    ld [hl], a                                    ; $559f: $77
    adc b                                         ; $55a0: $88
    ld [hl], a                                    ; $55a1: $77
    ld [hl], a                                    ; $55a2: $77
    ld a, b                                       ; $55a3: $78
    add a                                         ; $55a4: $87
    ld a, b                                       ; $55a5: $78
    ld a, b                                       ; $55a6: $78
    ld a, b                                       ; $55a7: $78
    add a                                         ; $55a8: $87
    add a                                         ; $55a9: $87
    ld a, b                                       ; $55aa: $78
    adc b                                         ; $55ab: $88
    ld [hl], a                                    ; $55ac: $77
    ld a, b                                       ; $55ad: $78
    add a                                         ; $55ae: $87
    ld [hl], a                                    ; $55af: $77
    adc b                                         ; $55b0: $88
    adc b                                         ; $55b1: $88
    ld [hl], a                                    ; $55b2: $77
    add a                                         ; $55b3: $87
    ld a, b                                       ; $55b4: $78
    adc b                                         ; $55b5: $88
    add a                                         ; $55b6: $87
    adc b                                         ; $55b7: $88
    adc b                                         ; $55b8: $88
    ld [hl], a                                    ; $55b9: $77
    add a                                         ; $55ba: $87
    ld a, b                                       ; $55bb: $78
    add a                                         ; $55bc: $87
    ld a, b                                       ; $55bd: $78
    ld [hl], a                                    ; $55be: $77
    adc b                                         ; $55bf: $88
    ld a, b                                       ; $55c0: $78
    ld bc, $8888                                  ; $55c1: $01 $88 $88
    adc b                                         ; $55c4: $88
    adc b                                         ; $55c5: $88
    adc b                                         ; $55c6: $88
    adc b                                         ; $55c7: $88
    adc b                                         ; $55c8: $88
    adc b                                         ; $55c9: $88
    adc b                                         ; $55ca: $88
    adc b                                         ; $55cb: $88
    adc b                                         ; $55cc: $88
    adc b                                         ; $55cd: $88
    adc b                                         ; $55ce: $88
    adc b                                         ; $55cf: $88

    db $88, $77, $88, $78, $87, $78, $88, $77, $88, $88, $88, $77, $87, $77, $88, $88
    db $87, $78, $77, $88, $88, $88, $77, $88, $78, $87, $78, $77, $88, $87, $88, $77
    db $88, $78, $87, $88, $78, $87, $87, $77, $78, $77, $88, $78, $88, $78, $87, $77
    db $87, $88, $78, $78, $87, $88, $77, $88, $88, $77, $87, $78, $87, $88, $78, $88
    db $87, $78, $77, $87, $78, $77, $87, $78, $77, $88, $78, $78, $88, $88, $77, $87
    db $87, $88, $77, $88, $78, $88, $78, $87, $77, $78, $87, $77, $78, $78, $87, $78
    db $88, $87, $77, $77, $87, $88, $78, $88, $87, $78, $88, $78, $77, $88, $78, $87
    db $88, $77, $88, $88, $78, $87, $88, $78, $87, $87, $88, $77, $88, $77, $78, $87
    db $87, $87, $78, $88, $77, $87, $78, $87, $78, $78, $87, $88, $88, $78, $87, $78
    db $87, $87, $87, $88, $77, $77, $87, $78, $77, $88, $88, $77, $87, $88, $78, $77
    db $88, $78, $87, $88, $88, $88, $87, $77, $77, $87, $88, $78, $87, $78, $78, $78
    db $87, $88, $88, $87, $77, $77, $78, $88, $87, $78, $78, $87, $88, $77, $88, $88
    db $87, $78, $78, $77, $87, $78, $78, $77, $88, $77, $87, $78, $87, $77, $88, $77
    db $87, $77, $87, $78, $77, $88, $88, $88, $77, $87, $77, $88, $78, $78, $87, $77
    db $87, $87, $88, $78, $87, $77, $78, $88, $87, $78, $78, $87, $77, $77, $78, $87
    db $88, $77, $87, $78, $87, $87, $87, $77, $77, $88, $78, $87, $88, $87, $87, $88
    db $88, $87, $77, $78, $77, $88, $77, $77, $88, $88, $77, $87, $78, $87, $88, $88
    db $88, $87, $77, $78, $78, $87, $88, $78, $77, $88, $77, $88, $88, $78, $77, $88
    db $87, $87, $78, $77, $87, $77, $78, $78, $78, $87, $88, $78, $77, $88, $88, $78
    db $87, $78, $78, $78, $87, $88, $78, $87, $78, $78, $88, $88, $87, $77, $78, $87
    db $87, $78, $77, $88, $78, $78, $78, $87, $88, $77, $87, $88, $87, $87, $78, $78
    db $87, $88, $78, $87, $88, $77, $88, $77, $87, $77, $88, $88, $87, $78, $77, $88
    db $87, $88, $88, $78, $77, $87, $78, $87, $77, $88, $78, $78, $87, $78, $87, $78
    db $87, $88, $78, $78, $77, $87, $88, $88, $78, $77, $88, $77, $87, $87, $88, $78
    db $87, $77, $88, $88, $87, $87, $78, $77, $87, $78, $87, $88, $78, $87, $88, $78
    db $87, $77, $88, $78, $77, $78, $88, $78, $87, $77, $78, $88, $78, $87, $88, $77
    db $87, $78, $88, $88, $77, $77, $88, $88, $87, $87, $78, $77, $87, $87, $77, $78
    db $87, $77, $88, $78, $78, $87, $77, $88, $78, $77, $88, $78, $88, $77, $88, $77
    db $88, $78, $77, $88, $78, $87, $88, $77, $87, $78, $77, $87, $78, $87, $87, $78
    db $87, $87, $78, $87, $78, $77, $87, $78, $87, $77, $87, $78, $87, $88, $78, $88
    db $87, $88, $77, $88, $87, $78, $87, $88, $78, $88, $87, $78, $77, $88, $77, $87
    db $87, $78, $87, $88, $78, $87, $78, $78, $87, $77, $88, $78, $87, $88, $78, $87
    db $87, $87, $77, $88, $88, $88, $78, $87, $88, $78, $87, $87, $77, $78, $87, $88
    db $68, $87, $78, $78, $77, $87, $77, $88, $87, $78, $87, $88, $78, $87, $78, $87
    db $88, $77, $88, $78, $88, $77, $88, $78, $87, $77, $88, $78, $87, $88, $77, $87
    db $87, $88, $77, $87, $88, $88, $78, $87, $79, $77, $87, $78, $87, $88, $78, $86
    db $89, $77, $88, $87, $78, $87, $98, $67, $87, $78, $77, $88, $87, $88, $77, $87
    db $88, $88, $77, $78, $87, $78, $77, $96, $79, $77, $97, $78, $87, $77, $78, $88
    db $87, $78, $78, $87, $79, $77, $97, $68, $77, $88, $87, $87, $78, $77, $87, $78
    db $88, $88, $77, $87, $78, $77, $87, $88, $78, $77, $78, $88, $77, $88, $67, $87
    db $88, $78, $78, $86, $89, $78, $87, $78, $77, $88, $77, $77, $87, $88, $78, $87
    db $88, $87, $78, $77, $87, $78, $87, $88, $78, $88, $78, $87, $88, $78, $97, $78
    db $87, $78, $78, $78, $87, $78, $88, $87, $78, $77, $88, $88, $77, $78, $88, $77
    db $87, $77, $88, $67, $97, $78, $77, $89, $77, $77, $98, $78, $88, $88, $78, $88
    db $88, $87, $88, $78, $78, $77, $87, $77, $88, $77, $87, $79, $86, $78, $88, $78
    db $88, $88, $78, $87, $87, $78, $77, $78, $78, $87, $77, $78, $87, $88, $78, $87
    db $88, $88, $68, $97, $78, $87, $88, $77, $87, $67, $87, $88, $77, $88, $87, $79
    db $87, $87, $79, $67, $97, $78, $87, $87, $87, $87, $78, $77, $88, $78, $88, $77
    db $88, $76, $97, $77, $78, $77, $97, $78, $87, $88, $78, $87, $78, $87, $88, $68
    db $87, $88, $68, $87, $87, $88, $77, $87, $97, $78, $88, $87, $88, $87, $78, $77
    db $87, $97, $78, $77, $86, $97, $78, $77, $87, $77, $87, $78, $88, $87, $78, $77
    db $88, $77, $78, $78, $86, $88, $67, $87, $87, $78, $67, $97, $78, $87, $78, $87
    db $88, $77, $77, $78, $78, $86, $7a, $78, $87, $78, $78, $77, $98, $78, $78, $78
    db $97, $79, $77, $88, $77, $87, $68, $87, $88, $78, $77, $87, $87, $78, $87, $87
    db $89, $77, $87, $87, $79, $77, $88, $77, $88, $78, $86, $88, $78, $86, $86, $88
    db $68, $97, $88, $78, $87, $78, $77, $78, $87, $87, $77, $88, $77, $88, $77, $87
    db $87, $78, $77, $88, $78, $77, $97, $79, $86, $89, $77, $86, $89, $68, $97, $78
    db $87, $96, $78, $78, $78, $88, $77, $86, $79, $78, $87, $87, $77, $87, $96, $79
    db $86, $87, $79, $87, $78, $76, $78, $87, $88, $88, $68, $97, $88, $77, $97, $78
    db $67, $96, $88, $68, $87, $87, $78, $88, $77, $98, $68, $86, $98, $79, $86, $88
    db $88, $88, $87, $78, $68, $88, $68, $87, $78, $76, $98, $59, $96, $79, $76, $88
    db $88, $76, $98, $68, $87, $86, $97, $67, $77, $77, $87, $79, $77, $87, $86, $6a
    db $85, $88, $78, $87, $87, $88, $78, $78, $87, $68, $87, $88, $89, $78, $95, $89
    db $58, $96, $87, $89, $87, $78, $88, $87, $79, $77, $88, $88, $78, $86, $88, $68
    db $96, $88, $77, $78, $77, $98, $87, $78, $87, $78, $88, $68, $87, $88, $87, $89
    db $57, $98, $77, $87, $78, $77, $98, $68, $77, $88, $79, $67, $87, $77, $98, $68
    db $87, $87, $79, $77, $97, $78, $75, $a8, $79, $67, $87, $79, $87, $87, $78, $77
    db $87, $76, $87, $78, $78, $86, $98, $67, $78, $77, $89, $68, $97, $78, $77, $78
    db $88, $78, $78, $77, $88, $77, $88, $78, $96, $88, $78, $77, $88, $77, $78, $77
    db $97, $89, $77, $97, $68, $88, $77, $97, $78, $77, $86, $87, $78, $86, $87, $88
    db $69, $86, $89, $67, $86, $87, $69, $86, $89, $69, $86, $86, $88, $78, $78, $87
    db $88, $78, $87, $78, $77, $88, $87, $87, $68, $87, $88, $68, $96, $78, $78, $87
    db $88, $79, $77, $88, $87, $87, $78, $87, $88, $78, $87, $88, $86, $88, $79, $77
    db $87, $69, $78, $95, $89, $68, $76, $88, $78, $86, $88, $75, $89, $68, $68, $77
    db $87, $86, $99, $67, $78, $87, $68, $86, $88, $78, $87, $87, $a7, $88, $87, $69
    db $67, $86, $7a, $67, $98, $87, $78, $68, $97, $78, $87, $88, $77, $88, $76, $98
    db $87, $87, $77, $86, $87, $78, $88, $87, $88, $78, $87, $77, $88, $78, $78, $77
    db $88, $97, $96, $88, $88, $87, $88, $68, $97, $78, $86, $89, $77, $87, $78, $97
    db $69, $77, $87, $78, $78, $68, $88, $79, $68, $86, $78, $77, $87, $77, $88, $69
    db $87, $5a, $95, $88, $78, $77, $78, $86, $8a, $77, $87, $79, $76, $97, $78, $86
    db $89, $7a, $96, $98, $66, $97, $79, $68, $86, $97, $79, $97, $69, $87, $87, $79
    db $86, $87, $79, $77, $96, $89, $88, $77, $68, $75, $97, $58, $97, $78, $77, $87
    db $87, $68, $77, $77, $99, $85, $97, $6a, $77, $88, $87, $79, $78, $77, $88, $77
    db $87, $97, $79, $87, $78, $97, $79, $87, $97, $76, $97, $87, $87, $96, $78, $75
    db $8a, $76, $7a, $77, $77, $86, $87, $7a, $97, $98, $87, $97, $68, $89, $97, $88
    db $86, $98, $5a, $87, $86, $77, $79, $88, $87, $87, $69, $49, $98, $78, $86, $98
    db $57, $88, $78, $77, $96, $89, $78, $96, $78, $86, $78, $67, $87, $79, $78, $87
    db $87, $66, $87, $89, $66, $76, $88, $58, $77, $76, $88, $78, $87, $78, $68, $88
    db $87, $97, $77, $66, $8a, $87, $a9, $78, $46, $77, $98, $9a, $a8, $76, $55, $77
    db $88, $ba, $7a, $65, $75, $69, $78, $98, $86, $67, $87, $87, $8a, $68, $76, $86
    db $67, $98, $87, $88, $88, $67, $88, $58, $a7, $87, $76, $67, $78, $98, $87, $76
    db $68, $68, $78, $98, $86, $76, $79, $9a, $98, $67, $56, $77, $99, $8b, $76, $76
    db $67, $77, $88, $98, $89, $86, $68, $57, $89, $78, $79, $97, $97, $99, $75, $87
    db $68, $8b, $a7, $97, $66, $67, $68, $a8, $97, $78, $67, $86, $78, $87, $68, $96
    db $87, $89, $97, $76, $68, $67, $a8, $98, $76, $67, $68, $6b, $96, $98, $78, $68
    db $87, $aa, $78, $96, $78, $8b, $88, $a5, $59, $7a, $8a, $86, $66, $58, $a9, $a9
    db $88, $96, $67, $79, $88, $86, $89, $66, $88, $98, $69, $66, $76, $77, $7a, $76
    db $89, $88, $66, $85, $89, $7b, $87, $86, $89, $66, $b9, $75, $76, $97, $b8, $88
    db $55, $46, $9b, $ba, $75, $34, $78, $aa, $a9, $65, $86, $79, $98, $97, $67, $79
    db $88, $86, $78, $78, $88, $97, $66, $67, $a8, $99, $66, $57, $66, $88, $78, $66
    db $45, $46, $9a, $a6, $78, $44, $66, $9c, $a6, $58, $54, $67, $97, $97, $54, $77
    db $87, $65, $67, $69, $96, $67, $35, $88, $98, $56, $77, $a8, $88, $36, $88, $ae
    db $a7, $85, $65, $7b, $ca, $75, $67, $79, $b8, $66, $68, $aa, $a5, $87, $8a, $99
    db $aa, $66, $6a, $bb, $ba, $67, $77, $8b, $b9, $97, $66, $89, $be, $c7, $74, $45
    db $9c, $dd, $97, $53, $46, $bb, $aa, $75, $58, $69, $bb, $86, $85, $55, $49, $aa
    db $87, $95, $74, $59, $76, $a8, $75, $55, $68, $88, $77, $66, $69, $96, $67, $55
    db $56, $87, $78, $88, $68, $66, $78, $99, $86, $66, $89, $99, $a9, $65, $67, $7d
    db $c9, $74, $26, $8d, $fb, $83, $13, $7c, $fd, $94, $22, $4b, $ed, $a5, $21, $39
    db $ef, $fb, $31, $04, $bf, $f8, $54, $04, $8c, $eb, $73, $20, $5b, $dd, $94, $10
    db $4b, $de, $c8, $30, $16, $ee, $d9, $62, $03, $89, $ca, $98, $66, $9a, $87, $66
    db $87, $8a, $c8, $66, $76, $ac, $64, $44, $8b, $99, $72, $3a, $bf, $a4, $31, $38
    db $dc, $a9, $43, $59, $ee, $d6, $20, $48, $dd, $a7, $35, $78, $9b, $77, $95, $27
    db $88, $da, $87, $43, $5a, $cc, $8a, $53, $54, $8d, $c7, $36, $65, $68, $78, $98
    db $89, $72, $26, $8a, $a9, $64, $57, $ae, $e9, $54, $47, $bc, $ca, $61, $16, $ab
    db $ba, $65, $55, $8a, $a9, $77, $77, $86, $76, $58, $9b, $96, $55, $69, $b9, $86
    db $56, $89, $ab, $a9, $53, $36, $9a, $aa, $96, $33, $6b, $cd, $b8, $62, $26, $8a
    db $aa, $a8, $64, $55, $58, $ba, $a7, $44, $57, $aa, $ba, $85, $56, $79, $aa, $a7
    db $53, $56, $aa, $b9, $86, $55, $58, $98, $98, $65, $66, $67, $89, $a9, $78, $77
    db $87, $77, $77, $66, $68, $99, $99, $98, $77, $78, $88, $88, $87, $66, $77, $77
    db $87, $87, $78, $99, $99, $87, $77, $77, $88, $98, $87, $77, $77, $78, $88, $88
    db $88, $88, $88, $77, $77, $88, $88, $88, $88, $77, $77, $87, $77, $78, $88, $88
    db $88, $87, $77, $77, $78, $89, $88, $87, $77, $77, $88, $88, $88, $87, $77, $77
    db $87, $78, $88, $77, $78, $88, $88, $87, $77, $77, $77, $87, $88, $88, $88, $77
    db $87, $77, $78, $88, $87, $87, $77, $78, $77, $88, $88, $88, $77, $77, $77, $77
    db $88, $88, $87, $77, $88, $88, $88, $88, $77, $88, $77, $88, $77, $87, $77, $78
    db $87, $77, $78, $87, $77, $77, $77, $78, $87, $77, $77, $77, $77, $77, $88, $87
    db $88, $88, $88, $88, $88, $88, $77, $77, $77, $77, $87, $77, $88, $88, $88, $88
    db $88, $88, $88, $88, $88, $88, $87, $88, $88, $88, $88, $88, $77, $87, $87, $77
    db $87, $77, $78, $88, $88, $87, $78, $87, $77, $77, $77, $78, $78, $88, $88, $88
    db $87, $77, $77, $77, $88, $88, $88, $78, $88, $78, $87, $77, $77, $77, $77, $88
    db $88, $88, $78, $88, $87, $77, $77, $77, $77, $77, $77, $77, $87, $88, $88, $88
    db $88, $88, $87, $77, $88, $78, $88, $88, $88, $88, $88, $88, $88, $87, $78, $87
    db $88, $87, $78, $88, $88, $87, $88, $77, $87, $77, $77, $77, $77, $77, $77, $88
    db $87, $77, $77, $77, $77, $77, $77, $77, $77, $78, $87, $78, $77, $77, $77, $88
    db $88, $78, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88
    db $88, $77, $87, $87, $77, $77, $77, $88, $88, $87, $78, $78, $88, $88, $88, $88
    db $88, $88, $87, $78, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $88, $88
    db $88, $88, $87, $77, $77, $77, $77, $87, $77, $87, $88, $88, $88, $88, $88, $88
    db $88, $77, $77, $77, $77, $77, $77, $77, $88, $88, $77, $87, $77, $77, $77, $77
    db $87, $77, $78, $88, $88, $88, $88, $88, $88, $87, $87, $87, $77, $77, $77, $87
    db $87, $77, $77, $78, $88, $87, $78, $87, $78, $88, $88, $88, $88, $88, $88, $88
    db $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $77, $77, $77
    db $87, $77, $77, $77, $78, $88, $88, $88, $87, $77, $77, $77, $77, $77, $77, $77
    db $87, $88, $88, $88, $88, $77, $77, $77, $77, $77, $77, $77, $77, $77, $88, $88
    db $88, $88, $88, $88, $88, $88, $88, $88, $87, $77, $77, $77, $88, $88, $88, $88
    db $88, $88, $88, $88, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77
    db $87, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $78, $78
    db $88, $88, $88, $87, $88, $77, $88, $87, $88, $88, $88, $88, $88, $88, $88, $88
    db $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $87, $88, $78, $88, $88
    db $88, $78, $77, $77, $77, $78, $87, $88, $88, $88, $88, $88, $88, $88, $88, $88
    db $88, $88, $87, $78, $87, $78, $87, $77, $78, $88, $88, $87, $77, $78, $77, $78
    db $88, $77, $78, $87, $77, $88, $87, $78, $87, $77, $88, $87, $77, $88, $87, $78
    db $88, $77, $77, $78, $88, $88, $78, $87, $87, $77, $88, $87, $77, $88, $77, $88
    db $88, $88, $77, $77, $78, $77, $78, $88, $87, $88, $77, $78, $88, $77, $88, $77
    db $87, $88, $88, $88, $87, $77, $77, $78, $88, $88, $78, $77, $77, $78, $88, $87
    db $87, $78, $87, $88, $87, $77, $78, $87, $88, $87, $77, $78, $77, $78, $88, $77
    db $88, $77, $88, $88, $77, $77, $87, $88, $88, $88, $78, $87, $88, $87, $77, $77
    db $88, $88, $88, $87, $77, $77, $78, $88, $88, $87, $77, $77, $88, $88, $88, $77
    db $67, $77, $88, $88, $77, $77, $78, $88, $78, $87, $76, $67, $88, $98, $98, $77
    db $87, $77, $79, $98, $88, $88, $76, $78, $88, $88, $87, $77, $77, $77, $89, $88
    db $87, $77, $76, $89, $87, $88, $87, $77, $78, $88, $88, $88, $76, $77, $88, $88
    db $88, $87, $77, $88, $87, $78, $87, $77, $87, $78, $77, $78, $87, $77, $88, $88
    db $88, $77, $77, $78, $88, $88, $87, $77, $77, $78, $88, $88, $77, $67, $77, $88
    db $88, $77, $77, $78, $88, $78, $87, $77, $67, $88, $99, $98, $77, $77, $77, $78
    db $99, $88, $88, $76, $68, $88, $88, $87, $77, $77, $77, $89, $98, $76, $77, $76
    db $89, $88, $78, $88, $77, $77, $88, $88, $88, $76, $67, $88, $88, $89, $87, $77
    db $88, $87, $78, $87, $77, $78, $77, $77, $88, $88, $77, $88, $77, $88, $87, $77
    db $88, $77, $78, $88, $77, $88, $76, $67, $88, $77, $88, $77, $78, $88, $87, $88
    db $88, $77, $78, $78, $99, $77, $87, $77, $77, $88, $88, $98, $76, $67, $77, $78
    db $89, $88, $88, $87, $66, $68, $88, $89, $99, $77, $68, $76, $66, $89, $97, $77
    db $87, $66, $78, $89, $99, $88, $76, $67, $78, $88, $88, $88, $77, $78, $88, $88
    db $98, $87, $77, $67, $88, $99, $88, $77, $66, $78, $88, $88, $77, $77, $77, $77
    db $88, $87, $77, $77, $67, $89, $87, $88, $87, $77, $78, $88, $88, $97, $66, $67
    db $88, $88, $98, $87, $78, $88, $77, $78, $87, $77, $87, $77, $77, $88, $87, $78
    db $87, $78, $88, $87, $77, $88, $77, $88, $88, $78, $88, $76, $68, $87, $78, $87
    db $87, $88, $87, $77, $88, $87, $77, $77, $89, $98, $77, $77, $77, $78, $88, $89
    db $87, $66, $67, $77, $78, $89, $88, $88, $77, $66, $78, $88, $9a, $98, $76, $78
    db $66, $67, $99, $87, $77, $76, $66, $78, $99, $99, $88, $66, $77, $79, $88, $88
    db $87, $77, $88, $77, $78, $99, $88, $66, $67, $79, $99, $98, $66, $68, $88, $88
    db $87, $89, $76, $56, $78, $78, $99, $97, $78, $87, $66, $68, $aa, $98, $88, $65
    db $67, $89, $76, $89, $a8, $76, $78, $88, $78, $89, $87, $78, $87, $66, $89, $98
    db $87, $77, $66, $78, $88, $88, $87, $77, $76, $78, $88, $78, $88, $77, $77, $88
    db $88, $89, $76, $66, $78, $87, $89, $87, $77, $88, $87, $78, $87, $77, $78, $77
    db $87, $78, $88, $77, $88, $77, $88, $87, $77, $78, $87, $78, $88, $77, $88, $86
    db $66, $88, $77, $88, $77, $78, $88, $87, $78, $88, $77, $77, $78, $99, $87, $87
    db $87, $77, $88, $98, $98, $76, $66, $77, $77, $88, $98, $88, $87, $66, $67, $88
    db $89, $a9, $87, $67, $86, $66, $79, $97, $77, $77, $66, $68, $89, $99, $99, $76
    db $67, $78, $98, $88, $88, $77, $78, $77, $77, $89, $98, $76, $66, $77, $99, $99
    db $86, $66, $88, $88, $77, $78, $97, $55, $67, $87, $89, $99, $77, $88, $76, $67
    db $9b, $a8, $88, $76, $56, $78, $97, $68, $9a, $86, $67, $88, $77, $79, $97, $67
    db $88, $76, $58, $a9, $87, $77, $76, $67, $88, $87, $78, $98, $77, $78, $88, $88
    db $88, $87, $77, $77, $78, $89, $98, $76, $67, $77, $77, $89, $87, $87, $77, $66
    db $88, $98, $89, $98, $76, $78, $76, $67, $9a, $87, $77, $76, $56, $78, $99, $99
    db $98, $66, $67, $79, $88, $89, $88, $77, $78, $77, $78, $99, $88, $76, $67, $79
    db $99, $98, $66, $67, $88, $88, $77, $89, $76, $56, $78, $77, $99, $98, $78, $87
    db $66, $68, $ab, $98, $88, $65, $57, $89, $86, $79, $a9, $76, $78, $88, $77, $89
    db $86, $68, $98, $65, $7a, $a8, $76, $77, $65, $68, $98, $77, $89, $98, $77, $88
    db $88, $87, $98, $87, $77, $76, $68, $9b, $a8, $76, $78, $86, $67, $99, $77, $78
    db $87, $67, $8a, $99, $76, $67, $76, $67, $89, $97, $77, $88, $75, $56, $8a, $98
    db $99, $85, $46, $78, $86, $8a, $bb, $95, $46, $65, $65, $89, $bb, $96, $68, $88
    db $55, $78, $9a, $97, $78, $76, $78, $88, $88, $88, $88, $77, $78, $78, $76, $78
    db $99, $87, $67, $78, $98, $88, $76, $56, $78, $99, $77, $78, $86, $56, $68, $87
    db $89, $98, $77, $87, $76, $67, $9b, $a8, $88, $76, $56, $79, $96, $68, $a9, $86
    db $68, $88, $77, $89, $96, $67, $98, $75, $69, $a9, $76, $77, $75, $57, $99, $87
    db $89, $98, $76, $78, $88, $87, $99, $87, $77, $77, $67, $8a, $b8, $76, $78, $87
    db $66, $89, $87, $77, $88, $66, $8a, $a9, $86, $67, $87, $66, $88, $98, $77, $88
    db $86, $56, $79, $a8, $99, $96, $45, $78, $87, $79, $bb, $a7, $45, $65, $55, $78
    db $bb, $a7, $57, $88, $65, $68, $9a, $98, $77, $76, $67, $89, $88, $88, $78, $87
    db $87, $78, $86, $56, $7a, $a9, $77, $78, $88, $67, $87, $64, $58, $99, $98, $77
    db $87, $76, $79, $a9, $88, $98, $56, $56, $78, $89, $9b, $b8, $75, $45, $77, $79
    db $8a, $a8, $67, $77, $77, $68, $88, $77, $77, $77, $87, $89, $98, $67, $77, $78
    db $88, $98, $87, $55, $68, $99, $97, $67, $99, $75, $56, $88, $77, $89, $98, $78
    db $87, $66, $68, $ab, $98, $88, $65, $67, $89, $76, $89, $a9, $76, $78, $88, $77
    db $89, $86, $68, $97, $65, $7a, $a8, $76, $77, $65, $68, $98, $77, $89, $98, $77
    db $88, $88, $88, $98, $87, $77, $76, $68, $9b, $a7, $76, $78, $76, $67, $99, $77
    db $88, $87, $67, $9a, $99, $76, $68, $76, $67, $89, $97, $77, $88, $75, $57, $8a
    db $98, $99, $85, $46, $78, $86, $8a, $bb, $95, $46, $65, $56, $8a, $cb, $85, $68
    db $87, $55, $79, $aa, $97, $77, $76, $78, $98, $88, $87, $88, $77, $78, $79, $75
    db $56, $9b, $98, $77, $78, $87, $68, $86, $54, $79, $a9, $88, $78, $87, $76, $7a
    db $98, $79, $97, $56, $57, $78, $99, $ab, $97, $64, $46, $77, $88, $aa, $97, $67
    db $87, $75, $78, $87, $77, $87, $77, $88, $a9, $86, $57, $88, $87, $78, $88, $76
    db $67, $88, $88, $77, $99, $99, $86, $56, $88, $87, $68, $ab, $a8, $55, $66, $56
    db $68, $ab, $a8, $67, $88, $75, $57, $9a, $a8, $77, $77, $67, $89, $88, $88, $78
    db $87, $77, $88, $97, $55, $79, $b9, $87, $77, $88, $76, $88, $65, $47, $9a, $98
    db $86, $88, $76, $77, $a9, $87, $99, $65, $65, $78, $89, $9a, $b9, $76, $44, $67
    db $88, $8a, $a9, $76, $77, $77, $58, $88, $77, $77, $77, $88, $8a, $98, $55, $78
    db $89, $87, $88, $77, $54, $68, $9a, $b8, $67, $a9, $96, $45, $8b, $97, $56, $9a
    db $b8, $88, $65, $45, $79, $a9, $85, $57, $a8, $65, $57, $88, $76, $67, $ac, $96
    db $89, $ca, $75, $8b, $b9, $65, $67, $76, $67, $87, $77, $67, $89, $97, $55, $8a
    db $87, $68, $87, $76, $56, $68, $ab, $98, $67, $68, $bb, $97, $89, $75, $68, $88
    db $87, $67, $68, $77, $88, $96, $57, $ab, $a6, $68, $bb, $a6, $46, $77, $65, $67

    cp c                                          ; $6440: $b9
    add [hl]                                      ; $6441: $86
    ld h, a                                       ; $6442: $67
    adc c                                         ; $6443: $89
    ld h, l                                       ; $6444: $65
    ld l, b                                       ; $6445: $68
    xor d                                         ; $6446: $aa
    add a                                         ; $6447: $87
    ld a, b                                       ; $6448: $78
    adc b                                         ; $6449: $88
    adc b                                         ; $644a: $88
    add a                                         ; $644b: $87
    ld [hl], a                                    ; $644c: $77
    add a                                         ; $644d: $87
    adc c                                         ; $644e: $89
    add a                                         ; $644f: $87
    adc b                                         ; $6450: $88
    adc c                                         ; $6451: $89
    ld [hl], l                                    ; $6452: $75
    ld d, [hl]                                    ; $6453: $56
    adc e                                         ; $6454: $8b
    sbc b                                         ; $6455: $98
    ld h, a                                       ; $6456: $67
    ld a, b                                       ; $6457: $78
    add a                                         ; $6458: $87
    ld l, b                                       ; $6459: $68
    add [hl]                                      ; $645a: $86
    ld d, h                                       ; $645b: $54
    ld l, c                                       ; $645c: $69
    xor c                                         ; $645d: $a9
    adc b                                         ; $645e: $88
    ld a, b                                       ; $645f: $78
    add a                                         ; $6460: $87
    halt                                          ; $6461: $76
    ld a, d                                       ; $6462: $7a
    sbc b                                         ; $6463: $98
    ld a, b                                       ; $6464: $78
    sub a                                         ; $6465: $97
    ld d, [hl]                                    ; $6466: $56
    ld d, a                                       ; $6467: $57
    ld a, b                                       ; $6468: $78
    sbc c                                         ; $6469: $99
    xor h                                         ; $646a: $ac
    and a                                         ; $646b: $a7
    ld h, h                                       ; $646c: $64
    ld b, [hl]                                    ; $646d: $46
    ld [hl], a                                    ; $646e: $77
    adc c                                         ; $646f: $89
    sbc d                                         ; $6470: $9a
    sub a                                         ; $6471: $97
    ld h, a                                       ; $6472: $67
    ld [hl], a                                    ; $6473: $77
    ld [hl], l                                    ; $6474: $75
    ld a, b                                       ; $6475: $78
    adc b                                         ; $6476: $88
    ld [hl], a                                    ; $6477: $77
    ld [hl], a                                    ; $6478: $77
    ld [hl], a                                    ; $6479: $77
    add a                                         ; $647a: $87
    xor c                                         ; $647b: $a9
    add [hl]                                      ; $647c: $86
    ld d, a                                       ; $647d: $57
    adc b                                         ; $647e: $88
    sbc b                                         ; $647f: $98
    adc b                                         ; $6480: $88
    add a                                         ; $6481: $87
    ld [hl], l                                    ; $6482: $75
    ld b, [hl]                                    ; $6483: $46
    adc c                                         ; $6484: $89
    xor e                                         ; $6485: $ab
    add [hl]                                      ; $6486: $86
    ld a, d                                       ; $6487: $7a
    xor c                                         ; $6488: $a9
    ld [hl], h                                    ; $6489: $74
    ld e, b                                       ; $648a: $58
    cp d                                          ; $648b: $ba
    ld [hl], l                                    ; $648c: $75
    ld l, c                                       ; $648d: $69
    xor h                                         ; $648e: $ac
    sub a                                         ; $648f: $97
    add a                                         ; $6490: $87
    ld h, l                                       ; $6491: $65
    ld b, a                                       ; $6492: $47
    sbc d                                         ; $6493: $9a
    sbc b                                         ; $6494: $98
    ld d, l                                       ; $6495: $55
    ld a, d                                       ; $6496: $7a
    sub [hl]                                      ; $6497: $96
    ld d, h                                       ; $6498: $54
    ld l, b                                       ; $6499: $68
    sub a                                         ; $649a: $97
    ld h, [hl]                                    ; $649b: $66
    ld a, c                                       ; $649c: $79
    ret                                           ; $649d: $c9


    ld h, [hl]                                    ; $649e: $66
    sbc e                                         ; $649f: $9b
    and a                                         ; $64a0: $a7
    ld d, a                                       ; $64a1: $57
    cp e                                          ; $64a2: $bb
    sub a                                         ; $64a3: $97
    ld d, [hl]                                    ; $64a4: $56
    ld [hl], a                                    ; $64a5: $77
    halt                                          ; $64a6: $76
    ld a, b                                       ; $64a7: $78
    ld [hl], a                                    ; $64a8: $77
    halt                                          ; $64a9: $76
    ld a, b                                       ; $64aa: $78
    sbc d                                         ; $64ab: $9a
    ld [hl], l                                    ; $64ac: $75
    ld e, b                                       ; $64ad: $58
    xor c                                         ; $64ae: $a9
    halt                                          ; $64af: $76
    adc b                                         ; $64b0: $88
    ld [hl], a                                    ; $64b1: $77
    ld h, l                                       ; $64b2: $65
    ld h, [hl]                                    ; $64b3: $66
    ld a, d                                       ; $64b4: $7a
    cp c                                          ; $64b5: $b9
    add [hl]                                      ; $64b6: $86
    halt                                          ; $64b7: $76
    ld a, e                                       ; $64b8: $7b
    cp d                                          ; $64b9: $ba
    adc b                                         ; $64ba: $88
    sbc b                                         ; $64bb: $98
    ld d, [hl]                                    ; $64bc: $56
    adc b                                         ; $64bd: $88
    add a                                         ; $64be: $87
    halt                                          ; $64bf: $76
    add [hl]                                      ; $64c0: $86
    ld [hl], a                                    ; $64c1: $77
    ld a, b                                       ; $64c2: $78
    ld a, c                                       ; $64c3: $79
    ld [hl], l                                    ; $64c4: $75
    ld a, d                                       ; $64c5: $7a
    cp e                                          ; $64c6: $bb
    ld [hl], l                                    ; $64c7: $75
    ld a, e                                       ; $64c8: $7b
    cp d                                          ; $64c9: $ba
    ld h, l                                       ; $64ca: $65
    ld l, b                                       ; $64cb: $68
    sub a                                         ; $64cc: $97
    ld d, h                                       ; $64cd: $54
    ld c, c                                       ; $64ce: $49
    add a                                         ; $64cf: $87
    add [hl]                                      ; $64d0: $86
    ld a, b                                       ; $64d1: $78
    xor b                                         ; $64d2: $a8
    ld d, h                                       ; $64d3: $54
    ld e, c                                       ; $64d4: $59
    xor b                                         ; $64d5: $a8
    ld [hl], a                                    ; $64d6: $77
    sbc d                                         ; $64d7: $9a
    cp d                                          ; $64d8: $ba
    sub a                                         ; $64d9: $97
    ld d, l                                       ; $64da: $55
    ld [hl], a                                    ; $64db: $77
    ld [hl], a                                    ; $64dc: $77
    sbc c                                         ; $64dd: $99
    sbc b                                         ; $64de: $98
    adc c                                         ; $64df: $89
    add a                                         ; $64e0: $87
    ld h, a                                       ; $64e1: $67
    adc b                                         ; $64e2: $88
    add a                                         ; $64e3: $87
    ld h, a                                       ; $64e4: $67
    adc c                                         ; $64e5: $89
    sbc c                                         ; $64e6: $99
    ld a, b                                       ; $64e7: $78
    halt                                          ; $64e8: $76
    halt                                          ; $64e9: $76
    ld d, [hl]                                    ; $64ea: $56
    adc c                                         ; $64eb: $89
    xor d                                         ; $64ec: $aa
    add [hl]                                      ; $64ed: $86
    ld a, c                                       ; $64ee: $79
    xor c                                         ; $64ef: $a9
    add h                                         ; $64f0: $84
    ld d, a                                       ; $64f1: $57
    cp d                                          ; $64f2: $ba
    ld [hl], l                                    ; $64f3: $75
    ld l, b                                       ; $64f4: $68
    xor h                                         ; $64f5: $ac
    sub a                                         ; $64f6: $97
    add a                                         ; $64f7: $87
    ld h, l                                       ; $64f8: $65
    ld b, a                                       ; $64f9: $47
    sbc d                                         ; $64fa: $9a
    sbc b                                         ; $64fb: $98
    ld d, l                                       ; $64fc: $55
    ld l, d                                       ; $64fd: $6a
    sub [hl]                                      ; $64fe: $96
    ld d, h                                       ; $64ff: $54
    ld l, b                                       ; $6500: $68
    sbc b                                         ; $6501: $98
    halt                                          ; $6502: $76
    ld a, c                                       ; $6503: $79
    jp z, $9b66                                   ; $6504: $ca $66 $9b

    or a                                          ; $6507: $b7
    ld d, a                                       ; $6508: $57
    cp e                                          ; $6509: $bb
    sub a                                         ; $650a: $97
    ld d, [hl]                                    ; $650b: $56
    ld [hl], a                                    ; $650c: $77
    halt                                          ; $650d: $76
    ld a, b                                       ; $650e: $78
    ld [hl], a                                    ; $650f: $77
    add [hl]                                      ; $6510: $86
    ld a, b                                       ; $6511: $78
    sbc d                                         ; $6512: $9a
    ld [hl], l                                    ; $6513: $75
    ld d, a                                       ; $6514: $57
    xor c                                         ; $6515: $a9
    halt                                          ; $6516: $76
    adc b                                         ; $6517: $88
    ld [hl], a                                    ; $6518: $77
    ld h, [hl]                                    ; $6519: $66
    ld h, [hl]                                    ; $651a: $66
    ld a, d                                       ; $651b: $7a
    cp c                                          ; $651c: $b9
    add [hl]                                      ; $651d: $86
    halt                                          ; $651e: $76
    ld a, e                                       ; $651f: $7b
    cp d                                          ; $6520: $ba
    adc b                                         ; $6521: $88
    sbc b                                         ; $6522: $98
    ld d, [hl]                                    ; $6523: $56
    adc b                                         ; $6524: $88
    add a                                         ; $6525: $87
    halt                                          ; $6526: $76
    halt                                          ; $6527: $76
    ld a, b                                       ; $6528: $78
    ld a, b                                       ; $6529: $78
    ld a, c                                       ; $652a: $79
    ld [hl], l                                    ; $652b: $75
    ld a, d                                       ; $652c: $7a
    cp e                                          ; $652d: $bb
    ld [hl], h                                    ; $652e: $74
    ld l, e                                       ; $652f: $6b
    cp d                                          ; $6530: $ba
    ld [hl], l                                    ; $6531: $75
    ld e, b                                       ; $6532: $58
    sub a                                         ; $6533: $97
    ld d, h                                       ; $6534: $54
    ld c, c                                       ; $6535: $49
    add a                                         ; $6536: $87
    ld [hl], l                                    ; $6537: $75
    ld h, a                                       ; $6538: $67
    xor b                                         ; $6539: $a8
    ld d, h                                       ; $653a: $54
    ld e, d                                       ; $653b: $5a
    cp c                                          ; $653c: $b9
    ld h, [hl]                                    ; $653d: $66
    adc d                                         ; $653e: $8a
    cp e                                          ; $653f: $bb
    xor b                                         ; $6540: $a8
    ld d, h                                       ; $6541: $54
    ld [hl], a                                    ; $6542: $77
    ld [hl], a                                    ; $6543: $77
    sbc c                                         ; $6544: $99
    xor c                                         ; $6545: $a9
    adc d                                         ; $6546: $8a
    sub [hl]                                      ; $6547: $96
    ld d, [hl]                                    ; $6548: $56
    ld h, a                                       ; $6549: $67
    adc b                                         ; $654a: $88
    ld l, b                                       ; $654b: $68
    sbc c                                         ; $654c: $99
    sbc c                                         ; $654d: $99
    adc b                                         ; $654e: $88
    ld d, l                                       ; $654f: $55
    ld h, [hl]                                    ; $6550: $66
    adc b                                         ; $6551: $88
    adc b                                         ; $6552: $88
    ld [hl], a                                    ; $6553: $77
    ld b, h                                       ; $6554: $44
    ld a, b                                       ; $6555: $78
    adc b                                         ; $6556: $88
    add a                                         ; $6557: $87
    halt                                          ; $6558: $76
    ld h, a                                       ; $6559: $67
    ld [hl], a                                    ; $655a: $77
    xor h                                         ; $655b: $ac
    jp z, $73aa                                   ; $655c: $ca $aa $73

    ld [de], a                                    ; $655f: $12
    xor d                                         ; $6560: $aa
    add [hl]                                      ; $6561: $86
    ld h, a                                       ; $6562: $67
    adc c                                         ; $6563: $89
    add [hl]                                      ; $6564: $86
    adc b                                         ; $6565: $88
    ld [hl], a                                    ; $6566: $77
    sbc d                                         ; $6567: $9a
    sub a                                         ; $6568: $97
    ld a, b                                       ; $6569: $78
    xor b                                         ; $656a: $a8
    ld h, [hl]                                    ; $656b: $66
    ld h, a                                       ; $656c: $67
    adc b                                         ; $656d: $88
    ld [hl], a                                    ; $656e: $77
    ld [hl], a                                    ; $656f: $77
    adc c                                         ; $6570: $89
    sbc b                                         ; $6571: $98
    ld [hl], a                                    ; $6572: $77
    ld a, c                                       ; $6573: $79
    add a                                         ; $6574: $87
    ld a, b                                       ; $6575: $78
    sbc c                                         ; $6576: $99
    sbc c                                         ; $6577: $99
    halt                                          ; $6578: $76
    ld l, b                                       ; $6579: $68
    bit 6, [hl]                                   ; $657a: $cb $76
    ld h, [hl]                                    ; $657c: $66
    ld d, h                                       ; $657d: $54
    ld e, b                                       ; $657e: $58
    sbc d                                         ; $657f: $9a
    sbc b                                         ; $6580: $98
    ld d, [hl]                                    ; $6581: $56
    xor h                                         ; $6582: $ac
    sub a                                         ; $6583: $97
    ld h, h                                       ; $6584: $64
    ld b, [hl]                                    ; $6585: $46
    adc b                                         ; $6586: $88
    ld [hl], a                                    ; $6587: $77
    adc d                                         ; $6588: $8a
    cp b                                          ; $6589: $b8
    ld d, [hl]                                    ; $658a: $56
    adc d                                         ; $658b: $8a
    sub a                                         ; $658c: $97
    ld l, c                                       ; $658d: $69
    cp d                                          ; $658e: $ba
    sub [hl]                                      ; $658f: $96
    ld d, [hl]                                    ; $6590: $56
    ld a, b                                       ; $6591: $78
    ld h, [hl]                                    ; $6592: $66
    ld [hl], a                                    ; $6593: $77
    ld [hl], a                                    ; $6594: $77
    ld [hl], a                                    ; $6595: $77
    ld a, b                                       ; $6596: $78
    xor c                                         ; $6597: $a9
    ld [hl], h                                    ; $6598: $74
    ld l, c                                       ; $6599: $69
    xor b                                         ; $659a: $a8
    ld h, [hl]                                    ; $659b: $66
    adc b                                         ; $659c: $88
    ld [hl], a                                    ; $659d: $77
    ld h, l                                       ; $659e: $65
    ld h, [hl]                                    ; $659f: $66
    adc e                                         ; $65a0: $8b
    cp c                                          ; $65a1: $b9
    add [hl]                                      ; $65a2: $86
    halt                                          ; $65a3: $76
    adc h                                         ; $65a4: $8c
    cp c                                          ; $65a5: $b9
    ld a, b                                       ; $65a6: $78
    sub a                                         ; $65a7: $97
    ld d, [hl]                                    ; $65a8: $56
    adc b                                         ; $65a9: $88
    ld [hl], a                                    ; $65aa: $77
    ld h, a                                       ; $65ab: $67
    halt                                          ; $65ac: $76
    add a                                         ; $65ad: $87
    ld a, b                                       ; $65ae: $78
    ld a, c                                       ; $65af: $79
    ld d, [hl]                                    ; $65b0: $56
    adc e                                         ; $65b1: $8b
    cp d                                          ; $65b2: $ba
    ld d, l                                       ; $65b3: $55
    adc h                                         ; $65b4: $8c
    cp c                                          ; $65b5: $b9
    ld d, l                                       ; $65b6: $55
    ld l, b                                       ; $65b7: $68
    add [hl]                                      ; $65b8: $86
    ld b, h                                       ; $65b9: $44
    ld l, d                                       ; $65ba: $6a
    add a                                         ; $65bb: $87
    ld h, l                                       ; $65bc: $65
    ld l, c                                       ; $65bd: $69
    sub a                                         ; $65be: $97
    ld d, h                                       ; $65bf: $54
    adc e                                         ; $65c0: $8b
    xor b                                         ; $65c1: $a8
    ld h, a                                       ; $65c2: $67
    sbc e                                         ; $65c3: $9b
    cp e                                          ; $65c4: $bb
    and a                                         ; $65c5: $a7
    ld b, l                                       ; $65c6: $45
    ld [hl], a                                    ; $65c7: $77
    ld a, b                                       ; $65c8: $78
    xor c                                         ; $65c9: $a9
    xor b                                         ; $65ca: $a8
    sbc d                                         ; $65cb: $9a
    add l                                         ; $65cc: $85
    ld d, [hl]                                    ; $65cd: $56
    ld h, a                                       ; $65ce: $67
    add a                                         ; $65cf: $87
    adc b                                         ; $65d0: $88
    sbc c                                         ; $65d1: $99
    sbc c                                         ; $65d2: $99
    add a                                         ; $65d3: $87
    ld b, [hl]                                    ; $65d4: $46
    ld h, a                                       ; $65d5: $67
    adc b                                         ; $65d6: $88
    sub a                                         ; $65d7: $97
    add [hl]                                      ; $65d8: $86
    dec [hl]                                      ; $65d9: $35
    add a                                         ; $65da: $87
    adc b                                         ; $65db: $88
    add a                                         ; $65dc: $87
    ld h, [hl]                                    ; $65dd: $66
    ld h, a                                       ; $65de: $67
    ld a, b                                       ; $65df: $78
    cp h                                          ; $65e0: $bc
    cp c                                          ; $65e1: $b9
    cp c                                          ; $65e2: $b9
    ld h, d                                       ; $65e3: $62
    dec d                                         ; $65e4: $15
    cp c                                          ; $65e5: $b9
    halt                                          ; $65e6: $76
    ld h, a                                       ; $65e7: $67
    adc c                                         ; $65e8: $89
    ld [hl], a                                    ; $65e9: $77
    adc b                                         ; $65ea: $88
    ld a, b                                       ; $65eb: $78
    sbc d                                         ; $65ec: $9a
    add a                                         ; $65ed: $87
    ld a, c                                       ; $65ee: $79
    sub [hl]                                      ; $65ef: $96
    add l                                         ; $65f0: $85
    ld a, b                                       ; $65f1: $78
    add a                                         ; $65f2: $87
    ld [hl], a                                    ; $65f3: $77
    ld a, b                                       ; $65f4: $78
    adc c                                         ; $65f5: $89
    add a                                         ; $65f6: $87
    ld a, b                                       ; $65f7: $78
    adc b                                         ; $65f8: $88
    add a                                         ; $65f9: $87
    adc c                                         ; $65fa: $89
    sbc b                                         ; $65fb: $98
    adc b                                         ; $65fc: $88
    halt                                          ; $65fd: $76
    ld l, d                                       ; $65fe: $6a
    ret                                           ; $65ff: $c9


    ld h, l                                       ; $6600: $65
    ld d, [hl]                                    ; $6601: $56
    ld d, h                                       ; $6602: $54
    ld l, b                                       ; $6603: $68
    sbc d                                         ; $6604: $9a
    adc b                                         ; $6605: $88
    ld e, d                                       ; $6606: $5a
    call c, $7199                                 ; $6607: $dc $99 $71
    dec b                                         ; $660a: $05
    adc d                                         ; $660b: $8a
    sbc c                                         ; $660c: $99
    sbc b                                         ; $660d: $98
    add a                                         ; $660e: $87
    ld d, e                                       ; $660f: $53
    dec [hl]                                      ; $6610: $35
    adc d                                         ; $6611: $8a
    xor b                                         ; $6612: $a8
    adc c                                         ; $6613: $89
    sub [hl]                                      ; $6614: $96
    ld a, b                                       ; $6615: $78
    sbc e                                         ; $6616: $9b
    sub a                                         ; $6617: $97
    ld b, h                                       ; $6618: $44
    ld a, b                                       ; $6619: $78
    adc d                                         ; $661a: $8a
    sbc c                                         ; $661b: $99
    halt                                          ; $661c: $76
    ld l, b                                       ; $661d: $68
    sbc b                                         ; $661e: $98
    ld d, [hl]                                    ; $661f: $56
    adc c                                         ; $6620: $89
    ld h, a                                       ; $6621: $67
    sbc e                                         ; $6622: $9b
    and a                                         ; $6623: $a7
    ld b, [hl]                                    ; $6624: $46
    sbc e                                         ; $6625: $9b
    and a                                         ; $6626: $a7
    ld d, l                                       ; $6627: $55
    ld a, c                                       ; $6628: $79
    add [hl]                                      ; $6629: $86
    ld b, h                                       ; $662a: $44
    adc c                                         ; $662b: $89
    add a                                         ; $662c: $87
    ld h, [hl]                                    ; $662d: $66
    ld a, c                                       ; $662e: $79
    add [hl]                                      ; $662f: $86
    ld d, l                                       ; $6630: $55
    sbc e                                         ; $6631: $9b
    sub a                                         ; $6632: $97
    ld l, b                                       ; $6633: $68
    xor e                                         ; $6634: $ab
    cp e                                          ; $6635: $bb
    sub l                                         ; $6636: $95
    ld b, [hl]                                    ; $6637: $46
    add a                                         ; $6638: $87
    ld a, c                                       ; $6639: $79
    xor d                                         ; $663a: $aa
    sbc b                                         ; $663b: $98
    sbc c                                         ; $663c: $99
    ld [hl], l                                    ; $663d: $75
    ld h, [hl]                                    ; $663e: $66
    ld a, b                                       ; $663f: $78
    add [hl]                                      ; $6640: $86
    ld a, c                                       ; $6641: $79
    sbc c                                         ; $6642: $99
    sbc b                                         ; $6643: $98
    add [hl]                                      ; $6644: $86
    ld b, [hl]                                    ; $6645: $46
    ld l, b                                       ; $6646: $68
    adc b                                         ; $6647: $88
    add a                                         ; $6648: $87
    add h                                         ; $6649: $84
    ld [hl], $88                                  ; $664a: $36 $88
    adc b                                         ; $664c: $88
    ld [hl], a                                    ; $664d: $77
    ld h, [hl]                                    ; $664e: $66
    ld [hl], a                                    ; $664f: $77
    adc c                                         ; $6650: $89
    cp h                                          ; $6651: $bc
    xor d                                         ; $6652: $aa
    xor b                                         ; $6653: $a8
    ld b, d                                       ; $6654: $42
    add hl, de                                    ; $6655: $19
    cp b                                          ; $6656: $b8
    ld h, [hl]                                    ; $6657: $66
    ld l, b                                       ; $6658: $68
    adc c                                         ; $6659: $89
    ld h, a                                       ; $665a: $67
    add a                                         ; $665b: $87
    ld a, b                                       ; $665c: $78
    sbc c                                         ; $665d: $99
    ld [hl], a                                    ; $665e: $77
    adc c                                         ; $665f: $89
    add [hl]                                      ; $6660: $86
    ld h, [hl]                                    ; $6661: $66
    ld a, b                                       ; $6662: $78
    add a                                         ; $6663: $87
    ld [hl], a                                    ; $6664: $77
    ld [hl], a                                    ; $6665: $77
    adc b                                         ; $6666: $88
    add a                                         ; $6667: $87
    add a                                         ; $6668: $87
    adc b                                         ; $6669: $88
    ld [hl], a                                    ; $666a: $77
    sbc c                                         ; $666b: $99
    sbc b                                         ; $666c: $98
    sbc b                                         ; $666d: $98
    ld h, [hl]                                    ; $666e: $66
    ld a, e                                       ; $666f: $7b
    cp b                                          ; $6670: $b8
    ld h, l                                       ; $6671: $65
    ld h, [hl]                                    ; $6672: $66
    ld b, l                                       ; $6673: $45
    ld a, c                                       ; $6674: $79
    sbc c                                         ; $6675: $99
    add [hl]                                      ; $6676: $86
    ld a, e                                       ; $6677: $7b
    db $db                                        ; $6678: $db
    sbc c                                         ; $6679: $99
    ld d, b                                       ; $667a: $50
    ld h, $99                                     ; $667b: $26 $99
    sbc c                                         ; $667d: $99
    sbc b                                         ; $667e: $98
    add [hl]                                      ; $667f: $86
    ld b, e                                       ; $6680: $43
    ld b, a                                       ; $6681: $47
    sbc d                                         ; $6682: $9a
    sbc b                                         ; $6683: $98
    sbc c                                         ; $6684: $99
    add l                                         ; $6685: $85
    ld h, a                                       ; $6686: $67
    xor h                                         ; $6687: $ac

jr_015_6688:
    add h                                         ; $6688: $84
    dec h                                         ; $6689: $25
    adc b                                         ; $668a: $88
    sbc e                                         ; $668b: $9b
    xor d                                         ; $668c: $aa
    ld h, l                                       ; $668d: $65
    adc c                                         ; $668e: $89
    and [hl]                                      ; $668f: $a6
    ld b, [hl]                                    ; $6690: $46
    xor d                                         ; $6691: $aa
    adc c                                         ; $6692: $89
    cp c                                          ; $6693: $b9
    ld h, e                                       ; $6694: $63
    ld b, a                                       ; $6695: $47
    adc c                                         ; $6696: $89
    halt                                          ; $6697: $76
    ld b, [hl]                                    ; $6698: $46
    sbc h                                         ; $6699: $9c
    sub a                                         ; $669a: $97
    ld b, l                                       ; $669b: $45
    ld l, d                                       ; $669c: $6a
    adc c                                         ; $669d: $89
    add [hl]                                      ; $669e: $86
    ld d, h                                       ; $669f: $54
    adc d                                         ; $66a0: $8a
    cp h                                          ; $66a1: $bc
    xor d                                         ; $66a2: $aa
    ld h, d                                       ; $66a3: $62
    dec [hl]                                      ; $66a4: $35
    sbc e                                         ; $66a5: $9b
    add a                                         ; $66a6: $87
    ld a, b                                       ; $66a7: $78
    cp d                                          ; $66a8: $ba
    adc b                                         ; $66a9: $88
    adc c                                         ; $66aa: $89
    sub h                                         ; $66ab: $94
    ld h, a                                       ; $66ac: $67
    ld d, a                                       ; $66ad: $57
    xor l                                         ; $66ae: $ad
    sub l                                         ; $66af: $95
    inc h                                         ; $66b0: $24
    ld e, b                                       ; $66b1: $58
    xor h                                         ; $66b2: $ac
    xor c                                         ; $66b3: $a9
    xor b                                         ; $66b4: $a8
    sbc c                                         ; $66b5: $99
    ld [hl], l                                    ; $66b6: $75
    ld b, [hl]                                    ; $66b7: $46
    ld a, d                                       ; $66b8: $7a
    sub l                                         ; $66b9: $95
    ld l, b                                       ; $66ba: $68
    cp d                                          ; $66bb: $ba
    halt                                          ; $66bc: $76
    ld a, b                                       ; $66bd: $78
    ld l, b                                       ; $66be: $68
    ld a, b                                       ; $66bf: $78
    add a                                         ; $66c0: $87
    ld l, b                                       ; $66c1: $68
    add h                                         ; $66c2: $84
    scf                                           ; $66c3: $37
    sbc c                                         ; $66c4: $99
    sbc c                                         ; $66c5: $99
    ld [hl], l                                    ; $66c6: $75
    ld h, [hl]                                    ; $66c7: $66
    add a                                         ; $66c8: $87
    ld d, a                                       ; $66c9: $57
    xor h                                         ; $66ca: $ac
    xor d                                         ; $66cb: $aa
    xor b                                         ; $66cc: $a8
    ld d, e                                       ; $66cd: $53
    jr z, jr_015_6688                             ; $66ce: $28 $b8

    ld h, [hl]                                    ; $66d0: $66
    ld l, b                                       ; $66d1: $68
    adc c                                         ; $66d2: $89
    ld [hl], a                                    ; $66d3: $77
    add a                                         ; $66d4: $87
    ld a, b                                       ; $66d5: $78
    sbc c                                         ; $66d6: $99
    ld [hl], a                                    ; $66d7: $77
    adc c                                         ; $66d8: $89
    sub [hl]                                      ; $66d9: $96
    ld h, l                                       ; $66da: $65
    ld a, b                                       ; $66db: $78
    add a                                         ; $66dc: $87
    ld [hl], a                                    ; $66dd: $77
    ld [hl], a                                    ; $66de: $77
    adc c                                         ; $66df: $89
    add a                                         ; $66e0: $87
    ld a, b                                       ; $66e1: $78
    adc b                                         ; $66e2: $88
    ld [hl], a                                    ; $66e3: $77
    sbc c                                         ; $66e4: $99
    sbc b                                         ; $66e5: $98
    adc b                                         ; $66e6: $88
    ld h, [hl]                                    ; $66e7: $66
    ld l, e                                       ; $66e8: $6b

jr_015_66e9:
    cp b                                          ; $66e9: $b8
    ld h, l                                       ; $66ea: $65
    ld h, [hl]                                    ; $66eb: $66
    ld d, h                                       ; $66ec: $54
    ld a, b                                       ; $66ed: $78
    sbc d                                         ; $66ee: $9a
    add a                                         ; $66ef: $87
    ld l, e                                       ; $66f0: $6b
    db $db                                        ; $66f1: $db
    sbc c                                         ; $66f2: $99
    ld h, c                                       ; $66f3: $61
    dec d                                         ; $66f4: $15
    sbc d                                         ; $66f5: $9a
    sbc c                                         ; $66f6: $99
    sbc b                                         ; $66f7: $98
    add [hl]                                      ; $66f8: $86
    ld d, e                                       ; $66f9: $53
    ld [hl], $8a                                  ; $66fa: $36 $8a
    sbc b                                         ; $66fc: $98
    adc c                                         ; $66fd: $89
    sub [hl]                                      ; $66fe: $96
    ld h, a                                       ; $66ff: $67
    xor h                                         ; $6700: $ac
    add l                                         ; $6701: $85
    dec h                                         ; $6702: $25
    adc b                                         ; $6703: $88
    adc e                                         ; $6704: $8b
    xor d                                         ; $6705: $aa
    ld [hl], l                                    ; $6706: $75
    ld a, c                                       ; $6707: $79
    and a                                         ; $6708: $a7
    ld b, [hl]                                    ; $6709: $46
    sbc d                                         ; $670a: $9a
    adc b                                         ; $670b: $88
    xor d                                         ; $670c: $aa
    ld h, h                                       ; $670d: $64
    ld b, a                                       ; $670e: $47
    adc c                                         ; $670f: $89
    add [hl]                                      ; $6710: $86
    ld b, l                                       ; $6711: $45
    adc h                                         ; $6712: $8c
    xor b                                         ; $6713: $a8
    ld b, l                                       ; $6714: $45
    ld l, c                                       ; $6715: $69
    sbc c                                         ; $6716: $99
    add [hl]                                      ; $6717: $86
    ld h, h                                       ; $6718: $64
    ld l, d                                       ; $6719: $6a
    cp h                                          ; $671a: $bc
    xor d                                         ; $671b: $aa
    ld [hl], d                                    ; $671c: $72
    dec [hl]                                      ; $671d: $35
    adc e                                         ; $671e: $8b
    add a                                         ; $671f: $87
    adc b                                         ; $6720: $88
    xor d                                         ; $6721: $aa
    adc b                                         ; $6722: $88
    adc b                                         ; $6723: $88
    and l                                         ; $6724: $a5
    ld e, b                                       ; $6725: $58
    ld d, [hl]                                    ; $6726: $56
    sbc l                                         ; $6727: $9d
    and l                                         ; $6728: $a5
    inc de                                        ; $6729: $13
    ld b, a                                       ; $672a: $47
    xor l                                         ; $672b: $ad
    xor c                                         ; $672c: $a9
    xor c                                         ; $672d: $a9
    adc c                                         ; $672e: $89
    ld h, l                                       ; $672f: $65
    ld [hl], $7a                                  ; $6730: $36 $7a
    or l                                          ; $6732: $b5
    ld e, b                                       ; $6733: $58
    cp e                                          ; $6734: $bb
    ld h, h                                       ; $6735: $64
    ld e, b                                       ; $6736: $58
    adc c                                         ; $6737: $89
    sbc c                                         ; $6738: $99
    ld h, l                                       ; $6739: $65
    ld c, b                                       ; $673a: $48
    sub l                                         ; $673b: $95
    jr z, jr_015_66e9                             ; $673c: $28 $ab

    cp d                                          ; $673e: $ba
    ld h, e                                       ; $673f: $63
    ld d, a                                       ; $6740: $57
    sbc c                                         ; $6741: $99
    inc hl                                        ; $6742: $23
    ld a, d                                       ; $6743: $7a
    sbc d                                         ; $6744: $9a
    add [hl]                                      ; $6745: $86
    ld d, l                                       ; $6746: $55
    sbc d                                         ; $6747: $9a
    and [hl]                                      ; $6748: $a6
    ld [hl], $9a                                  ; $6749: $36 $9a
    xor h                                         ; $674b: $ac
    or [hl]                                       ; $674c: $b6
    ld l, b                                       ; $674d: $68
    add [hl]                                      ; $674e: $86
    ld [hl], $9a                                  ; $674f: $36 $9a
    ld a, b                                       ; $6751: $78
    ld a, c                                       ; $6752: $79
    sbc b                                         ; $6753: $98
    ld l, b                                       ; $6754: $68
    xor d                                         ; $6755: $aa

Call_015_6756:
    ld a, b                                       ; $6756: $78
    xor e                                         ; $6757: $ab
    sbc b                                         ; $6758: $98
    ld h, d                                       ; $6759: $62
    dec h                                         ; $675a: $25
    xor a                                         ; $675b: $af
    ret c                                         ; $675c: $d8

    ld h, l                                       ; $675d: $65
    ld b, e                                       ; $675e: $43
    dec [hl]                                      ; $675f: $35
    sbc d                                         ; $6760: $9a
    add [hl]                                      ; $6761: $86
    ld d, l                                       ; $6762: $55
    adc h                                         ; $6763: $8c

Call_015_6764:
    jp z, Jump_015_41a9                           ; $6764: $ca $a9 $41

    scf                                           ; $6767: $37
    xor d                                         ; $6768: $aa
    add a                                         ; $6769: $87
    adc c                                         ; $676a: $89
    ld [hl], l                                    ; $676b: $75
    ld b, h                                       ; $676c: $44
    ld l, b                                       ; $676d: $68
    sbc c                                         ; $676e: $99
    sbc c                                         ; $676f: $99
    sbc c                                         ; $6770: $99
    halt                                          ; $6771: $76
    ld a, b                                       ; $6772: $78
    bit 6, e                                      ; $6773: $cb $73

Jump_015_6775:
    scf                                           ; $6775: $37

Jump_015_6776:
    adc b                                         ; $6776: $88
    xor d                                         ; $6777: $aa
    cp b                                          ; $6778: $b8
    ld d, l                                       ; $6779: $55
    sbc c                                         ; $677a: $99
    and h                                         ; $677b: $a4
    ld d, a                                       ; $677c: $57
    xor c                                         ; $677d: $a9
    adc d                                         ; $677e: $8a
    cp b                                          ; $677f: $b8
    ld d, e                                       ; $6780: $53
    ld e, b                                       ; $6781: $58
    sbc c                                         ; $6782: $99
    ld [hl], l                                    ; $6783: $75
    ld b, a                                       ; $6784: $47
    xor e                                         ; $6785: $ab
    sub l                                         ; $6786: $95
    ld b, l                                       ; $6787: $45
    adc c                                         ; $6788: $89
    adc c                                         ; $6789: $89
    halt                                          ; $678a: $76
    ld d, l                                       ; $678b: $55
    sbc d                                         ; $678c: $9a
    res 5, d                                      ; $678d: $cb $aa
    ld b, d                                       ; $678f: $42
    ld b, [hl]                                    ; $6790: $46
    xor d                                         ; $6791: $aa
    ld [hl], a                                    ; $6792: $77
    ld a, c                                       ; $6793: $79
    cp c                                          ; $6794: $b9

jr_015_6795:
    adc b                                         ; $6795: $88
    adc c                                         ; $6796: $89
    add h                                         ; $6797: $84
    ld [hl], a                                    ; $6798: $77
    ld e, b                                       ; $6799: $58
    cp h                                          ; $679a: $bc
    add e                                         ; $679b: $83
    inc h                                         ; $679c: $24
    ld l, c                                       ; $679d: $69
    call z, $a89a                                 ; $679e: $cc $9a $a8
    sub a                                         ; $67a1: $97
    ld h, e                                       ; $67a2: $63
    ld d, [hl]                                    ; $67a3: $56
    adc h                                         ; $67a4: $8c
    add h                                         ; $67a5: $84
    ld l, c                                       ; $67a6: $69
    ret                                           ; $67a7: $c9


    ld b, l                                       ; $67a8: $45
    ld l, c                                       ; $67a9: $69
    adc d                                         ; $67aa: $8a
    adc b                                         ; $67ab: $88
    ld d, h                                       ; $67ac: $54
    ld e, c                                       ; $67ad: $59
    ld [hl], e                                    ; $67ae: $73
    ld e, c                                       ; $67af: $59
    cp e                                          ; $67b0: $bb
    xor b                                         ; $67b1: $a8
    ld b, h                                       ; $67b2: $44
    ld l, b                                       ; $67b3: $68
    and l                                         ; $67b4: $a5
    ld h, $99                                     ; $67b5: $26 $99
    sbc c                                         ; $67b7: $99
    halt                                          ; $67b8: $76
    ld d, a                                       ; $67b9: $57
    xor c                                         ; $67ba: $a9
    sub h                                         ; $67bb: $94
    ld d, a                                       ; $67bc: $57
    xor c                                         ; $67bd: $a9
    cp e                                          ; $67be: $bb
    add [hl]                                      ; $67bf: $86
    adc b                                         ; $67c0: $88
    add l                                         ; $67c1: $85
    ld c, b                                       ; $67c2: $48
    xor c                                         ; $67c3: $a9
    ld [hl], a                                    ; $67c4: $77
    ld a, c                                       ; $67c5: $79
    sub a                                         ; $67c6: $97
    ld l, c                                       ; $67c7: $69
    cp c                                          ; $67c8: $b9
    adc c                                         ; $67c9: $89
    cp d                                          ; $67ca: $ba
    add a                                         ; $67cb: $87
    ld sp, $df37                                  ; $67cc: $31 $37 $df
    cp b                                          ; $67cf: $b8
    add h                                         ; $67d0: $84
    ld [hl-], a                                   ; $67d1: $32
    ld b, a                                       ; $67d2: $47
    xor c                                         ; $67d3: $a9
    ld d, e                                       ; $67d4: $53
    scf                                           ; $67d5: $37
    xor e                                         ; $67d6: $ab
    sbc c                                         ; $67d7: $99
    xor b                                         ; $67d8: $a8
    ld d, e                                       ; $67d9: $53
    jr c, jr_015_6795                             ; $67da: $38 $b9

    inc sp                                        ; $67dc: $33
    adc c                                         ; $67dd: $89
    ld d, l                                       ; $67de: $55
    cp [hl]                                       ; $67df: $be
    jp z, $b956                                   ; $67e0: $ca $56 $b9

    halt                                          ; $67e3: $76
    sbc h                                         ; $67e4: $9c
    res 0, l                                      ; $67e5: $cb $85
    ld [hl-], a                                   ; $67e7: $32
    ld c, b                                       ; $67e8: $48
    xor d                                         ; $67e9: $aa
    sbc b                                         ; $67ea: $98
    add l                                         ; $67eb: $85
    ld [hl-], a                                   ; $67ec: $32
    ld l, d                                       ; $67ed: $6a
    and a                                         ; $67ee: $a7
    ld d, [hl]                                    ; $67ef: $56
    call Call_000_3584                            ; $67f0: $cd $84 $35
    ld [hl], a                                    ; $67f3: $77
    add a                                         ; $67f4: $87
    halt                                          ; $67f5: $76
    ld a, c                                       ; $67f6: $79
    cp b                                          ; $67f7: $b8
    ld b, [hl]                                    ; $67f8: $46
    xor c                                         ; $67f9: $a9
    ld [hl], l                                    ; $67fa: $75
    ld e, b                                       ; $67fb: $58
    sbc c                                         ; $67fc: $99
    call z, Call_015_68a7                         ; $67fd: $cc $a7 $68
    sbc b                                         ; $6800: $98
    ld [hl], h                                    ; $6801: $74
    ld l, b                                       ; $6802: $68
    sbc b                                         ; $6803: $98
    adc c                                         ; $6804: $89
    sbc b                                         ; $6805: $98
    ld d, l                                       ; $6806: $55
    ld [hl], a                                    ; $6807: $77
    adc b                                         ; $6808: $88
    halt                                          ; $6809: $76
    ld h, a                                       ; $680a: $67
    xor c                                         ; $680b: $a9
    add l                                         ; $680c: $85
    ld h, [hl]                                    ; $680d: $66
    sbc b                                         ; $680e: $98
    adc b                                         ; $680f: $88
    ld h, [hl]                                    ; $6810: $66
    ld d, [hl]                                    ; $6811: $56
    xor d                                         ; $6812: $aa
    jp z, Jump_000_23a8                           ; $6813: $ca $a8 $23

    ld e, b                                       ; $6816: $58
    cp c                                          ; $6817: $b9
    ld [hl], a                                    ; $6818: $77
    adc d                                         ; $6819: $8a
    xor b                                         ; $681a: $a8
    adc b                                         ; $681b: $88
    adc d                                         ; $681c: $8a
    ld d, l                                       ; $681d: $55
    add l                                         ; $681e: $85
    ld l, c                                       ; $681f: $69
    jp z, $3462                                   ; $6820: $ca $62 $34

    ld a, d                                       ; $6823: $7a
    jp c, $989a                                   ; $6824: $da $9a $98

    sub [hl]                                      ; $6827: $96
    ld h, e                                       ; $6828: $63
    ld h, a                                       ; $6829: $67
    xor e                                         ; $682a: $ab
    ld h, l                                       ; $682b: $65
    adc e                                         ; $682c: $8b
    or a                                          ; $682d: $b7
    ld b, l                                       ; $682e: $45
    adc b                                         ; $682f: $88
    sbc c                                         ; $6830: $99
    sub a                                         ; $6831: $97
    ld d, h                                       ; $6832: $54
    ld a, c                                       ; $6833: $79
    ld d, e                                       ; $6834: $53
    ld a, d                                       ; $6835: $7a
    cp d                                          ; $6836: $ba
    and a                                         ; $6837: $a7
    ld b, l                                       ; $6838: $45
    ld a, c                                       ; $6839: $79
    sub e                                         ; $683a: $93
    ld b, a                                       ; $683b: $47
    sbc c                                         ; $683c: $99
    sbc b                                         ; $683d: $98
    ld h, l                                       ; $683e: $65
    ld l, b                                       ; $683f: $68
    xor c                                         ; $6840: $a9
    ld [hl], h                                    ; $6841: $74
    ld l, c                                       ; $6842: $69
    xor d                                         ; $6843: $aa

Call_015_6844:
    cp d                                          ; $6844: $ba

Call_015_6845:
    halt                                          ; $6845: $76
    adc b                                         ; $6846: $88
    ld [hl], h                                    ; $6847: $74
    ld e, c                                       ; $6848: $59
    xor b                                         ; $6849: $a8
    add a                                         ; $684a: $87
    adc c                                         ; $684b: $89
    sub l                                         ; $684c: $95
    adc d                                         ; $684d: $8a
    or a                                          ; $684e: $b7
    adc d                                         ; $684f: $8a
    ret                                           ; $6850: $c9


    add [hl]                                      ; $6851: $86
    ld [de], a                                    ; $6852: $12
    ld e, d                                       ; $6853: $5a

Call_015_6854:
    cp $97                                        ; $6854: $fe $97
    ld h, h                                       ; $6856: $64
    inc hl                                        ; $6857: $23
    ld e, c                                       ; $6858: $59
    and a                                         ; $6859: $a7
    ld b, d                                       ; $685a: $42
    ld e, b                                       ; $685b: $58
    cp d                                          ; $685c: $ba
    sbc d                                         ; $685d: $9a
    sub a                                         ; $685e: $97
    ld b, d                                       ; $685f: $42
    ld e, d                                       ; $6860: $5a
    or a                                          ; $6861: $b7
    dec h                                         ; $6862: $25

Call_015_6863:
    xor b                                         ; $6863: $a8
    ld c, b                                       ; $6864: $48
    sbc $b8                                       ; $6865: $de $b8
    ld c, c                                       ; $6867: $49
    cp b                                          ; $6868: $b8
    ld h, a                                       ; $6869: $67
    cp h                                          ; $686a: $bc
    jp z, $2265                                   ; $686b: $ca $65 $22

    ld l, c                                       ; $686e: $69
    cp d                                          ; $686f: $ba
    adc c                                         ; $6870: $89
    ld [hl], l                                    ; $6871: $75
    inc h                                         ; $6872: $24
    adc e                                         ; $6873: $8b
    sub [hl]                                      ; $6874: $96
    ld e, b                                       ; $6875: $58
    db $ec                                        ; $6876: $ec
    ld [hl], e                                    ; $6877: $73
    scf                                           ; $6878: $37
    add a                                         ; $6879: $87
    add [hl]                                      ; $687a: $86
    ld h, l                                       ; $687b: $65
    ld a, e                                       ; $687c: $7b
    add $37                                       ; $687d: $c6 $37
    xor c                                         ; $687f: $a9
    add [hl]                                      ; $6880: $86
    ld l, c                                       ; $6881: $69
    sbc e                                         ; $6882: $9b
    db $db                                        ; $6883: $db
    add [hl]                                      ; $6884: $86
    adc d                                         ; $6885: $8a
    sub [hl]                                      ; $6886: $96
    ld b, h                                       ; $6887: $44
    ld l, b                                       ; $6888: $68
    adc b                                         ; $6889: $88
    add a                                         ; $688a: $87
    adc d                                         ; $688b: $8a
    ld l, b                                       ; $688c: $68
    ld h, l                                       ; $688d: $65
    adc b                                         ; $688e: $88
    xor c                                         ; $688f: $a9
    ld h, h                                       ; $6890: $64
    ld e, b                                       ; $6891: $58
    xor e                                         ; $6892: $ab
    ld [hl], a                                    ; $6893: $77
    add l                                         ; $6894: $85
    ld b, l                                       ; $6895: $45
    ld d, l                                       ; $6896: $55
    sbc d                                         ; $6897: $9a
    ld [hl], a                                    ; $6898: $77
    add [hl]                                      ; $6899: $86
    inc [hl]                                      ; $689a: $34
    adc h                                         ; $689b: $8c
    add $56                                       ; $689c: $c6 $56
    sbc b                                         ; $689e: $98
    halt                                          ; $689f: $76
    ld h, l                                       ; $68a0: $65
    ld d, a                                       ; $68a1: $57
    xor e                                         ; $68a2: $ab
    xor b                                         ; $68a3: $a8
    add a                                         ; $68a4: $87
    ld [hl], a                                    ; $68a5: $77
    sbc c                                         ; $68a6: $99

Call_015_68a7:
    add a                                         ; $68a7: $87
    adc b                                         ; $68a8: $88
    ld [hl], l                                    ; $68a9: $75
    ld e, b                                       ; $68aa: $58
    sbc b                                         ; $68ab: $98
    ld [hl], a                                    ; $68ac: $77
    adc d                                         ; $68ad: $8a
    sub [hl]                                      ; $68ae: $96
    ld a, c                                       ; $68af: $79
    cp b                                          ; $68b0: $b8
    adc c                                         ; $68b1: $89
    cp d                                          ; $68b2: $ba
    add a                                         ; $68b3: $87
    ld hl, $ef48                                  ; $68b4: $21 $48 $ef
    and a                                         ; $68b7: $a7
    ld h, h                                       ; $68b8: $64
    ld [hl-], a                                   ; $68b9: $32
    ld c, b                                       ; $68ba: $48
    cp b                                          ; $68bb: $b8
    ld b, d                                       ; $68bc: $42
    ld c, b                                       ; $68bd: $48
    xor e                                         ; $68be: $ab
    sbc c                                         ; $68bf: $99
    xor b                                         ; $68c0: $a8
    ld d, d                                       ; $68c1: $52
    ld c, b                                       ; $68c2: $48
    cp b                                          ; $68c3: $b8
    inc sp                                        ; $68c4: $33
    sbc c                                         ; $68c5: $99
    ld b, [hl]                                    ; $68c6: $46
    cp [hl]                                       ; $68c7: $be
    cp d                                          ; $68c8: $ba
    ld b, a                                       ; $68c9: $47
    cp c                                          ; $68ca: $b9
    halt                                          ; $68cb: $76
    xor h                                         ; $68cc: $ac
    bit 6, l                                      ; $68cd: $cb $75
    ld [hl-], a                                   ; $68cf: $32
    ld c, b                                       ; $68d0: $48
    xor d                                         ; $68d1: $aa
    adc b                                         ; $68d2: $88
    add l                                         ; $68d3: $85
    inc sp                                        ; $68d4: $33
    ld a, d                                       ; $68d5: $7a
    and a                                         ; $68d6: $a7
    ld d, [hl]                                    ; $68d7: $56
    db $dd                                        ; $68d8: $dd
    add h                                         ; $68d9: $84
    ld [hl], $87                                  ; $68da: $36 $87
    add [hl]                                      ; $68dc: $86
    ld h, l                                       ; $68dd: $65
    ld l, c                                       ; $68de: $69
    ret z                                         ; $68df: $c8

    ld [hl], $99                                  ; $68e0: $36 $99
    add a                                         ; $68e2: $87
    ld e, c                                       ; $68e3: $59
    sbc d                                         ; $68e4: $9a
    call c, Call_015_7997                         ; $68e5: $dc $97 $79
    sub a                                         ; $68e8: $97
    ld d, h                                       ; $68e9: $54
    ld l, b                                       ; $68ea: $68
    adc b                                         ; $68eb: $88
    adc b                                         ; $68ec: $88
    adc d                                         ; $68ed: $8a
    ld [hl], a                                    ; $68ee: $77
    ld [hl], l                                    ; $68ef: $75
    adc b                                         ; $68f0: $88
    sbc d                                         ; $68f1: $9a

jr_015_68f2:
    ld [hl], l                                    ; $68f2: $75
    ld b, a                                       ; $68f3: $47
    xor h                                         ; $68f4: $ac
    add [hl]                                      ; $68f5: $86
    add a                                         ; $68f6: $87
    ld b, h                                       ; $68f7: $44
    ld b, [hl]                                    ; $68f8: $46
    sbc e                                         ; $68f9: $9b
    ld h, l                                       ; $68fa: $65
    halt                                          ; $68fb: $76
    ld [hl-], a                                   ; $68fc: $32
    ld a, [hl]                                    ; $68fd: $7e
    ld a, [$8877]                                 ; $68fe: $fa $77 $88
    ld d, h                                       ; $6901: $54
    ld d, l                                       ; $6902: $55
    ld d, a                                       ; $6903: $57
    sbc h                                         ; $6904: $9c
    rst $18                                       ; $6905: $df
    add sp, $21                                   ; $6906: $e8 $21
    ld b, l                                       ; $6908: $45
    adc e                                         ; $6909: $8b
    sbc d                                         ; $690a: $9a
    add [hl]                                      ; $690b: $86
    adc b                                         ; $690c: $88
    ld d, l                                       ; $690d: $55
    ld [hl], a                                    ; $690e: $77
    adc d                                         ; $690f: $8a
    ret                                           ; $6910: $c9


    add [hl]                                      ; $6911: $86
    ld e, c                                       ; $6912: $59
    cp c                                          ; $6913: $b9
    adc c                                         ; $6914: $89
    ret                                           ; $6915: $c9


    ld b, e                                       ; $6916: $43
    ld d, a                                       ; $6917: $57
    adc d                                         ; $6918: $8a
    halt                                          ; $6919: $76
    ld d, [hl]                                    ; $691a: $56
    ld l, b                                       ; $691b: $68
    ld [hl], a                                    ; $691c: $77
    sub l                                         ; $691d: $95
    ld a, c                                       ; $691e: $79
    xor b                                         ; $691f: $a8
    sub [hl]                                      ; $6920: $96
    ld a, b                                       ; $6921: $78
    adc h                                         ; $6922: $8c
    add h                                         ; $6923: $84
    ld l, b                                       ; $6924: $68
    cp h                                          ; $6925: $bc
    cp c                                          ; $6926: $b9
    add e                                         ; $6927: $83
    inc hl                                        ; $6928: $23
    dec [hl]                                      ; $6929: $35
    ld h, h                                       ; $692a: $64
    ld e, b                                       ; $692b: $58
    xor b                                         ; $692c: $a8
    ld b, l                                       ; $692d: $45
    sbc d                                         ; $692e: $9a
    xor h                                         ; $692f: $ac
    db $eb                                        ; $6930: $eb
    and [hl]                                      ; $6931: $a6
    db $10                                        ; $6932: $10
    jr c, jr_015_68f2                             ; $6933: $38 $bd

    db $dd                                        ; $6935: $dd
    ret                                           ; $6936: $c9


    ld b, d                                       ; $6937: $42
    dec [hl]                                      ; $6938: $35
    adc d                                         ; $6939: $8a
    sbc b                                         ; $693a: $98
    ld h, [hl]                                    ; $693b: $66
    ld [hl], a                                    ; $693c: $77
    ld a, b                                       ; $693d: $78
    cp e                                          ; $693e: $bb
    add h                                         ; $693f: $84
    dec h                                         ; $6940: $25
    sbc h                                         ; $6941: $9c
    and l                                         ; $6942: $a5
    ld e, b                                       ; $6943: $58
    sub e                                         ; $6944: $93
    ld c, c                                       ; $6945: $49
    res 4, l                                      ; $6946: $cb $a5
    ld a, d                                       ; $6948: $7a
    ld h, l                                       ; $6949: $65
    ld l, d                                       ; $694a: $6a
    cp e                                          ; $694b: $bb
    xor b                                         ; $694c: $a8
    ld h, e                                       ; $694d: $63
    inc d                                         ; $694e: $14
    adc e                                         ; $694f: $8b
    cp b                                          ; $6950: $b8
    adc b                                         ; $6951: $88
    ld d, d                                       ; $6952: $52

Call_015_6953:
    scf                                           ; $6953: $37
    cp d                                          ; $6954: $ba
    ld h, l                                       ; $6955: $65
    ld a, l                                       ; $6956: $7d
    ret c                                         ; $6957: $d8

    ld b, e                                       ; $6958: $43
    ld l, b                                       ; $6959: $68
    ld a, b                                       ; $695a: $78
    ld h, [hl]                                    ; $695b: $66
    ld d, [hl]                                    ; $695c: $56
    xor h                                         ; $695d: $ac
    ld [hl], e                                    ; $695e: $73
    ld l, d                                       ; $695f: $6a

jr_015_6960:
    sbc b                                         ; $6960: $98
    ld h, l                                       ; $6961: $65
    sbc c                                         ; $6962: $99
    xor l                                         ; $6963: $ad
    ret                                           ; $6964: $c9


    ld h, a                                       ; $6965: $67
    xor c                                         ; $6966: $a9
    ld [hl], l                                    ; $6967: $75
    ld b, [hl]                                    ; $6968: $46
    adc b                                         ; $6969: $88
    adc b                                         ; $696a: $88
    ld a, b                                       ; $696b: $78

jr_015_696c:
    and a                                         ; $696c: $a7
    ld [hl], a                                    ; $696d: $77
    ld e, b                                       ; $696e: $58
    adc c                                         ; $696f: $89
    and a                                         ; $6970: $a7
    ld d, h                                       ; $6971: $54
    ld a, d                                       ; $6972: $7a
    ret z                                         ; $6973: $c8

    ld l, b                                       ; $6974: $68
    ld [hl], e                                    ; $6975: $73
    ld b, h                                       ; $6976: $44
    ld l, d                                       ; $6977: $6a
    or [hl]                                       ; $6978: $b6
    ld h, a                                       ; $6979: $67
    ld h, e                                       ; $697a: $63
    jr z, jr_015_696c                             ; $697b: $28 $ef

    and a                                         ; $697d: $a7
    ld a, b                                       ; $697e: $78
    add l                                         ; $697f: $85
    ld b, l                                       ; $6980: $45
    ld d, l                                       ; $6981: $55
    ld a, c                                       ; $6982: $79
    call $71fe                                    ; $6983: $cd $fe $71
    inc d                                         ; $6986: $14
    ld e, b                                       ; $6987: $58
    cp c                                          ; $6988: $b9
    xor b                                         ; $6989: $a8
    ld l, b                                       ; $698a: $68
    add l                                         ; $698b: $85
    ld d, a                                       ; $698c: $57
    ld a, b                                       ; $698d: $78
    cp h                                          ; $698e: $bc
    sbc b                                         ; $698f: $98
    ld d, l                                       ; $6990: $55
    sbc e                                         ; $6991: $9b
    sbc b                                         ; $6992: $98
    sbc h                                         ; $6993: $9c
    add h                                         ; $6994: $84
    dec [hl]                                      ; $6995: $35
    ld a, b                                       ; $6996: $78
    and [hl]                                      ; $6997: $a6
    ld h, l                                       ; $6998: $65
    ld h, [hl]                                    ; $6999: $66
    sub a                                         ; $699a: $97
    ld a, b                                       ; $699b: $78
    ld e, b                                       ; $699c: $58
    sbc d                                         ; $699d: $9a
    adc b                                         ; $699e: $88
    ld l, b                                       ; $699f: $68
    adc c                                         ; $69a0: $89
    cp b                                          ; $69a1: $b8
    ld b, [hl]                                    ; $69a2: $46
    adc e                                         ; $69a3: $8b
    res 2, a                                      ; $69a4: $cb $97
    inc sp                                        ; $69a6: $33
    inc sp                                        ; $69a7: $33
    ld d, [hl]                                    ; $69a8: $56
    ld d, l                                       ; $69a9: $55
    adc d                                         ; $69aa: $8a
    ld [hl], h                                    ; $69ab: $74
    ld e, c                                       ; $69ac: $59
    xor d                                         ; $69ad: $aa
    sbc $aa                                       ; $69ae: $de $aa
    ld h, c                                       ; $69b0: $61
    dec d                                         ; $69b1: $15
    sbc h                                         ; $69b2: $9c
    set 3, h                                      ; $69b3: $cb $dc
    sub h                                         ; $69b5: $94
    inc [hl]                                      ; $69b6: $34
    ld l, b                                       ; $69b7: $68
    sbc c                                         ; $69b8: $99
    sbc b                                         ; $69b9: $98
    add a                                         ; $69ba: $87
    ld d, l                                       ; $69bb: $55
    adc e                                         ; $69bc: $8b
    xor b                                         ; $69bd: $a8
    ld b, h                                       ; $69be: $44
    ld l, d                                       ; $69bf: $6a
    cp h                                          ; $69c0: $bc
    sub a                                         ; $69c1: $97
    ld a, b                                       ; $69c2: $78
    ld sp, $aa38                                  ; $69c3: $31 $38 $aa
    ld h, a                                       ; $69c6: $67
    ld b, d                                       ; $69c7: $42
    jr c, jr_015_6960                             ; $69c8: $38 $96

    ld l, c                                       ; $69ca: $69
    call z, $1670                                 ; $69cb: $cc $70 $16
    cp h                                          ; $69ce: $bc
    xor d                                         ; $69cf: $aa
    bit 6, [hl]                                   ; $69d0: $cb $76
    ld a, b                                       ; $69d2: $78
    adc c                                         ; $69d3: $89
    ld h, [hl]                                    ; $69d4: $66
    ld l, b                                       ; $69d5: $68
    adc b                                         ; $69d6: $88
    ld h, [hl]                                    ; $69d7: $66
    adc b                                         ; $69d8: $88
    ld [hl], a                                    ; $69d9: $77
    ld l, b                                       ; $69da: $68
    xor e                                         ; $69db: $ab
    add l                                         ; $69dc: $85
    ld l, b                                       ; $69dd: $68
    ld [hl], l                                    ; $69de: $75
    sbc l                                         ; $69df: $9d
    reti                                          ; $69e0: $d9


    ld h, l                                       ; $69e1: $65
    ld a, c                                       ; $69e2: $79
    add l                                         ; $69e3: $85
    ld e, c                                       ; $69e4: $59
    cp e                                          ; $69e5: $bb
    and a                                         ; $69e6: $a7
    ld d, e                                       ; $69e7: $53
    dec [hl]                                      ; $69e8: $35
    sbc d                                         ; $69e9: $9a
    and a                                         ; $69ea: $a7
    add [hl]                                      ; $69eb: $86
    ld d, h                                       ; $69ec: $54
    ld e, b                                       ; $69ed: $58
    xor b                                         ; $69ee: $a8
    ld h, l                                       ; $69ef: $65
    sbc [hl]                                      ; $69f0: $9e
    or [hl]                                       ; $69f1: $b6
    inc [hl]                                      ; $69f2: $34
    ld [hl], a                                    ; $69f3: $77
    ld [hl], a                                    ; $69f4: $77
    ld h, [hl]                                    ; $69f5: $66
    ld d, a                                       ; $69f6: $57
    cp e                                          ; $69f7: $bb
    ld d, h                                       ; $69f8: $54
    adc d                                         ; $69f9: $8a
    adc b                                         ; $69fa: $88
    ld d, a                                       ; $69fb: $57
    sbc c                                         ; $69fc: $99
    cp l                                          ; $69fd: $bd
    cp b                                          ; $69fe: $b8
    ld l, b                                       ; $69ff: $68
    xor b                                         ; $6a00: $a8
    ld h, h                                       ; $6a01: $64
    ld d, a                                       ; $6a02: $57
    adc b                                         ; $6a03: $88
    adc b                                         ; $6a04: $88
    ld a, c                                       ; $6a05: $79
    sub [hl]                                      ; $6a06: $96
    add [hl]                                      ; $6a07: $86
    ld l, b                                       ; $6a08: $68
    adc d                                         ; $6a09: $8a
    sub [hl]                                      ; $6a0a: $96
    ld b, l                                       ; $6a0b: $45
    adc e                                         ; $6a0c: $8b
    and a                                         ; $6a0d: $a7
    ld a, b                                       ; $6a0e: $78
    ld d, h                                       ; $6a0f: $54
    ld b, h                                       ; $6a10: $44
    ld a, e                                       ; $6a11: $7b
    sub [hl]                                      ; $6a12: $96
    ld h, a                                       ; $6a13: $67
    ld d, d                                       ; $6a14: $52
    ld c, e                                       ; $6a15: $4b
    cp $77                                        ; $6a16: $fe $77
    ld a, c                                       ; $6a18: $79
    ld h, h                                       ; $6a19: $64
    ld b, [hl]                                    ; $6a1a: $46
    ld d, [hl]                                    ; $6a1b: $56
    adc d                                         ; $6a1c: $8a
    sbc $fc                                       ; $6a1d: $de $fc
    ld b, c                                       ; $6a1f: $41
    inc h                                         ; $6a20: $24
    ld l, d                                       ; $6a21: $6a
    xor c                                         ; $6a22: $a9
    sub a                                         ; $6a23: $97
    ld a, b                                       ; $6a24: $78
    ld [hl], l                                    ; $6a25: $75
    ld h, a                                       ; $6a26: $67
    adc b                                         ; $6a27: $88
    jp z, Jump_015_4687                           ; $6a28: $ca $87 $46

    xor d                                         ; $6a2b: $aa
    adc b                                         ; $6a2c: $88
    xor h                                         ; $6a2d: $ac
    ld h, h                                       ; $6a2e: $64
    ld [hl], $88                                  ; $6a2f: $36 $88
    sub l                                         ; $6a31: $95
    ld h, l                                       ; $6a32: $65
    ld h, a                                       ; $6a33: $67

jr_015_6a34:
    add [hl]                                      ; $6a34: $86
    add a                                         ; $6a35: $87
    ld l, b                                       ; $6a36: $68
    xor c                                         ; $6a37: $a9
    sub a                                         ; $6a38: $97
    ld l, b                                       ; $6a39: $68
    ld a, d                                       ; $6a3a: $7a
    or [hl]                                       ; $6a3b: $b6
    ld d, a                                       ; $6a3c: $57
    sbc e                                         ; $6a3d: $9b
    jp z, $2496                                   ; $6a3e: $ca $96 $24

    inc [hl]                                      ; $6a41: $34

Call_015_6a42:
    ld d, l                                       ; $6a42: $55
    ld b, [hl]                                    ; $6a43: $46
    sbc c                                         ; $6a44: $99
    ld h, h                                       ; $6a45: $64
    ld a, c                                       ; $6a46: $79
    xor e                                         ; $6a47: $ab
    call c, Call_015_41a9                         ; $6a48: $dc $a9 $41
    daa                                           ; $6a4b: $27
    xor h                                         ; $6a4c: $ac
    cp h                                          ; $6a4d: $bc
    call c, Call_000_3574                         ; $6a4e: $dc $74 $35
    ld a, b                                       ; $6a51: $78
    sbc d                                         ; $6a52: $9a
    sbc b                                         ; $6a53: $98
    add [hl]                                      ; $6a54: $86
    ld b, [hl]                                    ; $6a55: $46
    sbc e                                         ; $6a56: $9b
    sub [hl]                                      ; $6a57: $96
    ld b, l                                       ; $6a58: $45
    ld a, d                                       ; $6a59: $7a
    cp e                                          ; $6a5a: $bb
    add [hl]                                      ; $6a5b: $86
    add [hl]                                      ; $6a5c: $86
    ld de, $b859                                  ; $6a5d: $11 $59 $b8
    ld h, [hl]                                    ; $6a60: $66
    ld [hl-], a                                   ; $6a61: $32
    ld e, c                                       ; $6a62: $59
    add [hl]                                      ; $6a63: $86
    ld a, d                                       ; $6a64: $7a
    swap b                                        ; $6a65: $cb $30
    jr z, jr_015_6a34                             ; $6a67: $28 $cb

    sbc e                                         ; $6a69: $9b
    ld [$8977], a                                 ; $6a6a: $ea $77 $89
    ld a, c                                       ; $6a6d: $79
    ld l, b                                       ; $6a6e: $68
    adc c                                         ; $6a6f: $89
    add [hl]                                      ; $6a70: $86
    ld d, [hl]                                    ; $6a71: $56
    ld [hl], a                                    ; $6a72: $77

jr_015_6a73:
    adc c                                         ; $6a73: $89
    sbc d                                         ; $6a74: $9a
    bit 6, l                                      ; $6a75: $cb $75
    ld d, [hl]                                    ; $6a77: $56
    ld a, b                                       ; $6a78: $78
    cp h                                          ; $6a79: $bc
    and l                                         ; $6a7a: $a5
    ld h, [hl]                                    ; $6a7b: $66
    ld h, a                                       ; $6a7c: $67
    ld [hl], l                                    ; $6a7d: $75
    ld e, b                                       ; $6a7e: $58
    cp e                                          ; $6a7f: $bb
    sub a                                         ; $6a80: $97
    ld b, l                                       ; $6a81: $45
    ld a, b                                       ; $6a82: $78
    adc d                                         ; $6a83: $8a
    cp d                                          ; $6a84: $ba
    ld d, l                                       ; $6a85: $55
    ld l, b                                       ; $6a86: $68
    adc b                                         ; $6a87: $88
    ld [hl], l                                    ; $6a88: $75
    ld h, [hl]                                    ; $6a89: $66
    ld l, b                                       ; $6a8a: $68
    sub a                                         ; $6a8b: $97
    add [hl]                                      ; $6a8c: $86
    ld l, b                                       ; $6a8d: $68
    xor c                                         ; $6a8e: $a9
    sub a                                         ; $6a8f: $97
    adc b                                         ; $6a90: $88
    adc e                                         ; $6a91: $8b
    and l                                         ; $6a92: $a5
    ld h, a                                       ; $6a93: $67
    xor e                                         ; $6a94: $ab
    ret                                           ; $6a95: $c9


    sub l                                         ; $6a96: $95
    inc h                                         ; $6a97: $24
    inc [hl]                                      ; $6a98: $34
    ld h, l                                       ; $6a99: $65
    ld d, [hl]                                    ; $6a9a: $56
    sbc c                                         ; $6a9b: $99
    ld d, h                                       ; $6a9c: $54
    ld a, c                                       ; $6a9d: $79
    xor e                                         ; $6a9e: $ab
    db $eb                                        ; $6a9f: $eb
    xor b                                         ; $6aa0: $a8
    ld sp, $bc38                                  ; $6aa1: $31 $38 $bc
    cp h                                          ; $6aa4: $bc
    db $db                                        ; $6aa5: $db
    ld h, h                                       ; $6aa6: $64
    ld b, l                                       ; $6aa7: $45
    ld a, c                                       ; $6aa8: $79
    sbc d                                         ; $6aa9: $9a
    adc b                                         ; $6aaa: $88
    add [hl]                                      ; $6aab: $86
    ld b, a                                       ; $6aac: $47

jr_015_6aad:
    sbc e                                         ; $6aad: $9b
    sub [hl]                                      ; $6aae: $96
    ld b, l                                       ; $6aaf: $45
    adc e                                         ; $6ab0: $8b
    bit 6, [hl]                                   ; $6ab1: $cb $76
    add [hl]                                      ; $6ab3: $86
    ld [de], a                                    ; $6ab4: $12
    ld l, d                                       ; $6ab5: $6a
    cp b                                          ; $6ab6: $b8
    halt                                          ; $6ab7: $76
    ld [hl-], a                                   ; $6ab8: $32
    ld l, c                                       ; $6ab9: $69
    add [hl]                                      ; $6aba: $86
    adc d                                         ; $6abb: $8a
    jp c, $3920                                   ; $6abc: $da $20 $39

    res 3, h                                      ; $6abf: $cb $9c
    reti                                          ; $6ac1: $d9


    ld [hl], a                                    ; $6ac2: $77
    sbc b                                         ; $6ac3: $98
    ld a, b                                       ; $6ac4: $78
    ld l, b                                       ; $6ac5: $68
    adc c                                         ; $6ac6: $89
    ld [hl], l                                    ; $6ac7: $75
    ld d, [hl]                                    ; $6ac8: $56
    add a                                         ; $6ac9: $87
    adc b                                         ; $6aca: $88
    adc c                                         ; $6acb: $89
    cp e                                          ; $6acc: $bb
    add [hl]                                      ; $6acd: $86
    ld h, a                                       ; $6ace: $67
    ld h, a                                       ; $6acf: $67
    call Call_015_54a4                            ; $6ad0: $cd $a4 $54
    ld l, c                                       ; $6ad3: $69
    ld [hl], e                                    ; $6ad4: $73
    jr c, jr_015_6a73                             ; $6ad5: $38 $9c

    sub [hl]                                      ; $6ad7: $96
    ld [hl-], a                                   ; $6ad8: $32
    dec d                                         ; $6ad9: $15
    sbc h                                         ; $6ada: $9c
    and [hl]                                      ; $6adb: $a6
    ld l, b                                       ; $6adc: $68
    cp e                                          ; $6add: $bb
    sub [hl]                                      ; $6ade: $96
    inc h                                         ; $6adf: $24
    ld h, a                                       ; $6ae0: $67
    sbc l                                         ; $6ae1: $9d
    jp c, Jump_015_4665                           ; $6ae2: $da $65 $46

    sbc b                                         ; $6ae5: $98
    sbc c                                         ; $6ae6: $99
    ld a, b                                       ; $6ae7: $78
    sbc d                                         ; $6ae8: $9a
    cp d                                          ; $6ae9: $ba
    halt                                          ; $6aea: $76
    adc c                                         ; $6aeb: $89
    add a                                         ; $6aec: $87
    adc b                                         ; $6aed: $88
    ld h, h                                       ; $6aee: $64
    ld c, c                                       ; $6aef: $49
    reti                                          ; $6af0: $d9


    ld d, l                                       ; $6af1: $55
    ld d, a                                       ; $6af2: $57
    xor e                                         ; $6af3: $ab
    xor c                                         ; $6af4: $a9
    ld d, e                                       ; $6af5: $53
    ld b, a                                       ; $6af6: $47
    sbc b                                         ; $6af7: $98
    ld h, a                                       ; $6af8: $67
    ld [hl], a                                    ; $6af9: $77
    adc c                                         ; $6afa: $89
    ld a, b                                       ; $6afb: $78
    ld [hl], a                                    ; $6afc: $77
    adc c                                         ; $6afd: $89
    ld [hl], h                                    ; $6afe: $74
    ld l, d                                       ; $6aff: $6a
    or a                                          ; $6b00: $b7
    ld h, h                                       ; $6b01: $64
    jr c, jr_015_6aad                             ; $6b02: $38 $a9

    sub l                                         ; $6b04: $95
    ld d, [hl]                                    ; $6b05: $56
    adc h                                         ; $6b06: $8c
    cp b                                          ; $6b07: $b8
    adc b                                         ; $6b08: $88
    ld h, [hl]                                    ; $6b09: $66
    ld l, b                                       ; $6b0a: $68
    add a                                         ; $6b0b: $87
    adc c                                         ; $6b0c: $89
    sbc b                                         ; $6b0d: $98
    halt                                          ; $6b0e: $76
    ld h, h                                       ; $6b0f: $64
    ld d, [hl]                                    ; $6b10: $56
    ld [hl], l                                    ; $6b11: $75
    adc c                                         ; $6b12: $89
    ld a, c                                       ; $6b13: $79
    xor e                                         ; $6b14: $ab
    xor c                                         ; $6b15: $a9
    adc b                                         ; $6b16: $88
    sbc d                                         ; $6b17: $9a
    sub [hl]                                      ; $6b18: $96
    inc hl                                        ; $6b19: $23
    ld l, c                                       ; $6b1a: $69
    cp c                                          ; $6b1b: $b9
    sbc e                                         ; $6b1c: $9b
    and a                                         ; $6b1d: $a7
    ld d, l                                       ; $6b1e: $55
    ld h, [hl]                                    ; $6b1f: $66
    add a                                         ; $6b20: $87
    sbc c                                         ; $6b21: $99
    adc b                                         ; $6b22: $88
    ld [hl], l                                    ; $6b23: $75
    ld a, b                                       ; $6b24: $78
    sbc b                                         ; $6b25: $98
    halt                                          ; $6b26: $76
    ld h, a                                       ; $6b27: $67
    sbc d                                         ; $6b28: $9a
    xor b                                         ; $6b29: $a8
    ld [hl], a                                    ; $6b2a: $77
    ld [hl], e                                    ; $6b2b: $73
    dec [hl]                                      ; $6b2c: $35
    sbc d                                         ; $6b2d: $9a
    sub [hl]                                      ; $6b2e: $96
    ld [hl], h                                    ; $6b2f: $74
    inc h                                         ; $6b30: $24
    adc b                                         ; $6b31: $88
    ld h, a                                       ; $6b32: $67
    xor h                                         ; $6b33: $ac
    call nz, $8c02                                ; $6b34: $c4 $02 $8c
    cp c                                          ; $6b37: $b9
    cp [hl]                                       ; $6b38: $be
    and a                                         ; $6b39: $a7
    ld a, b                                       ; $6b3a: $78
    sub a                                         ; $6b3b: $97
    add [hl]                                      ; $6b3c: $86
    adc b                                         ; $6b3d: $88
    sub a                                         ; $6b3e: $97
    ld h, h                                       ; $6b3f: $64
    ld l, b                                       ; $6b40: $68
    ld a, b                                       ; $6b41: $78
    sbc b                                         ; $6b42: $98
    sbc e                                         ; $6b43: $9b
    ret                                           ; $6b44: $c9


    ld h, l                                       ; $6b45: $65
    ld [hl], a                                    ; $6b46: $77
    ld a, e                                       ; $6b47: $7b
    db $eb                                        ; $6b48: $eb
    ld d, h                                       ; $6b49: $54
    ld b, l                                       ; $6b4a: $45
    sbc b                                         ; $6b4b: $98
    ld b, d                                       ; $6b4c: $42
    ld a, c                                       ; $6b4d: $79
    jp z, Jump_000_3173                           ; $6b4e: $ca $73 $31

    ld b, a                                       ; $6b51: $47
    cp e                                          ; $6b52: $bb
    ld h, [hl]                                    ; $6b53: $66
    ld a, e                                       ; $6b54: $7b
    jp z, $2673                                   ; $6b55: $ca $73 $26

    ld l, b                                       ; $6b58: $68
    adc $b7                                       ; $6b59: $ce $b7
    ld d, h                                       ; $6b5b: $54
    ld e, b                                       ; $6b5c: $58
    adc b                                         ; $6b5d: $88
    sbc b                                         ; $6b5e: $98
    adc b                                         ; $6b5f: $88
    xor e                                         ; $6b60: $ab
    cp b                                          ; $6b61: $b8
    ld d, a                                       ; $6b62: $57
    sbc b                                         ; $6b63: $98
    adc b                                         ; $6b64: $88
    sub [hl]                                      ; $6b65: $96
    ld d, h                                       ; $6b66: $54
    adc l                                         ; $6b67: $8d
    and l                                         ; $6b68: $a5
    ld d, l                                       ; $6b69: $55
    ld l, d                                       ; $6b6a: $6a
    cp e                                          ; $6b6b: $bb
    sub [hl]                                      ; $6b6c: $96
    inc [hl]                                      ; $6b6d: $34
    ld l, c                                       ; $6b6e: $69
    sub [hl]                                      ; $6b6f: $96
    ld h, a                                       ; $6b70: $67
    ld a, b                                       ; $6b71: $78
    sub a                                         ; $6b72: $97
    ld [hl], a                                    ; $6b73: $77
    ld a, b                                       ; $6b74: $78
    sbc b                                         ; $6b75: $98
    ld d, l                                       ; $6b76: $55
    sbc e                                         ; $6b77: $9b
    add [hl]                                      ; $6b78: $86
    ld d, e                                       ; $6b79: $53
    ld l, e                                       ; $6b7a: $6b
    sbc c                                         ; $6b7b: $99
    ld h, h                                       ; $6b7c: $64
    ld h, a                                       ; $6b7d: $67
    cp e                                          ; $6b7e: $bb
    sub a                                         ; $6b7f: $97
    add [hl]                                      ; $6b80: $86
    ld h, [hl]                                    ; $6b81: $66
    adc c                                         ; $6b82: $89
    add a                                         ; $6b83: $87
    sbc c                                         ; $6b84: $99
    add a                                         ; $6b85: $87
    ld [hl], a                                    ; $6b86: $77
    ld d, l                                       ; $6b87: $55
    ld h, a                                       ; $6b88: $67
    ld l, b                                       ; $6b89: $68
    sub a                                         ; $6b8a: $97
    adc h                                         ; $6b8b: $8c
    db $db                                        ; $6b8c: $db
    sub [hl]                                      ; $6b8d: $96
    ld h, l                                       ; $6b8e: $65
    xor e                                         ; $6b8f: $ab
    add e                                         ; $6b90: $83
    inc hl                                        ; $6b91: $23
    adc e                                         ; $6b92: $8b
    add [hl]                                      ; $6b93: $86
    sbc d                                         ; $6b94: $9a
    add l                                         ; $6b95: $85
    ld a, b                                       ; $6b96: $78
    ld h, h                                       ; $6b97: $64
    ld e, b                                       ; $6b98: $58
    cp e                                          ; $6b99: $bb
    sub a                                         ; $6b9a: $97
    ld a, c                                       ; $6b9b: $79
    add l                                         ; $6b9c: $85
    ld e, b                                       ; $6b9d: $58
    cp d                                          ; $6b9e: $ba
    halt                                          ; $6b9f: $76
    ld h, l                                       ; $6ba0: $65
    ld h, a                                       ; $6ba1: $67
    ld d, l                                       ; $6ba2: $55
    sbc l                                         ; $6ba3: $9d
    cp d                                          ; $6ba4: $ba
    ld h, l                                       ; $6ba5: $65
    ld e, c                                       ; $6ba6: $59
    add [hl]                                      ; $6ba7: $86
    ld a, d                                       ; $6ba8: $7a
    sub a                                         ; $6ba9: $97
    ld d, [hl]                                    ; $6baa: $56
    halt                                          ; $6bab: $76
    add a                                         ; $6bac: $87
    ld [hl], a                                    ; $6bad: $77
    ld h, [hl]                                    ; $6bae: $66
    sbc d                                         ; $6baf: $9a
    sub [hl]                                      ; $6bb0: $96
    ld d, l                                       ; $6bb1: $55
    ld l, d                                       ; $6bb2: $6a
    cp c                                          ; $6bb3: $b9
    sub a                                         ; $6bb4: $97
    ld b, h                                       ; $6bb5: $44
    ld a, d                                       ; $6bb6: $7a
    xor c                                         ; $6bb7: $a9
    adc d                                         ; $6bb8: $8a
    xor c                                         ; $6bb9: $a9
    ld h, l                                       ; $6bba: $65
    ld d, a                                       ; $6bbb: $57
    sbc c                                         ; $6bbc: $99
    adc c                                         ; $6bbd: $89
    sbc c                                         ; $6bbe: $99
    add [hl]                                      ; $6bbf: $86
    ld d, a                                       ; $6bc0: $57
    sbc d                                         ; $6bc1: $9a
    sub [hl]                                      ; $6bc2: $96
    ld d, [hl]                                    ; $6bc3: $56
    adc d                                         ; $6bc4: $8a
    cp c                                          ; $6bc5: $b9
    ld [hl], a                                    ; $6bc6: $77
    add l                                         ; $6bc7: $85
    inc hl                                        ; $6bc8: $23
    ld a, c                                       ; $6bc9: $79
    and a                                         ; $6bca: $a7
    ld [hl], l                                    ; $6bcb: $75
    inc hl                                        ; $6bcc: $23
    ld a, c                                       ; $6bcd: $79
    halt                                          ; $6bce: $76
    sbc e                                         ; $6bcf: $9b
    ret c                                         ; $6bd0: $d8

    nop                                           ; $6bd1: $00
    ld e, d                                       ; $6bd2: $5a
    jp z, $d8ad                                   ; $6bd3: $ca $ad $d8

    ld a, b                                       ; $6bd6: $78
    sbc b                                         ; $6bd7: $98
    add a                                         ; $6bd8: $87
    ld l, b                                       ; $6bd9: $68
    sbc b                                         ; $6bda: $98
    ld [hl], l                                    ; $6bdb: $75
    ld d, a                                       ; $6bdc: $57
    ld [hl], a                                    ; $6bdd: $77
    sbc b                                         ; $6bde: $98
    sbc c                                         ; $6bdf: $99
    jp z, Jump_015_6775                           ; $6be0: $ca $75 $67

    ld l, b                                       ; $6be3: $68
    db $dd                                        ; $6be4: $dd
    add e                                         ; $6be5: $83
    ld d, h                                       ; $6be6: $54
    ld a, c                                       ; $6be7: $79
    ld h, d                                       ; $6be8: $62
    ld c, c                                       ; $6be9: $49
    xor e                                         ; $6bea: $ab
    sub l                                         ; $6beb: $95
    ld [hl-], a                                   ; $6bec: $32
    dec h                                         ; $6bed: $25
    xor h                                         ; $6bee: $ac
    sub [hl]                                      ; $6bef: $96
    ld l, c                                       ; $6bf0: $69
    res 2, l                                      ; $6bf1: $cb $95
    dec h                                         ; $6bf3: $25
    ld h, a                                       ; $6bf4: $67
    xor [hl]                                      ; $6bf5: $ae
    reti                                          ; $6bf6: $d9


    ld h, l                                       ; $6bf7: $65
    ld b, [hl]                                    ; $6bf8: $46
    sbc b                                         ; $6bf9: $98
    sbc c                                         ; $6bfa: $99
    ld a, b                                       ; $6bfb: $78
    sbc e                                         ; $6bfc: $9b
    cp d                                          ; $6bfd: $ba
    ld h, [hl]                                    ; $6bfe: $66
    adc c                                         ; $6bff: $89
    add a                                         ; $6c00: $87
    adc b                                         ; $6c01: $88
    ld d, h                                       ; $6c02: $54
    ld e, e                                       ; $6c03: $5b
    rst $00                                       ; $6c04: $c7
    ld b, l                                       ; $6c05: $45
    ld e, b                                       ; $6c06: $58
    cp e                                          ; $6c07: $bb
    xor b                                         ; $6c08: $a8
    inc sp                                        ; $6c09: $33
    ld b, a                                       ; $6c0a: $47
    sbc b                                         ; $6c0b: $98
    ld h, a                                       ; $6c0c: $67
    ld [hl], a                                    ; $6c0d: $77
    adc b                                         ; $6c0e: $88
    ld a, b                                       ; $6c0f: $78
    add a                                         ; $6c10: $87
    sbc c                                         ; $6c11: $99
    ld h, h                                       ; $6c12: $64
    ld a, e                                       ; $6c13: $7b
    and a                                         ; $6c14: $a7
    ld h, e                                       ; $6c15: $63
    ld c, c                                       ; $6c16: $49
    xor c                                         ; $6c17: $a9
    add l                                         ; $6c18: $85
    ld d, [hl]                                    ; $6c19: $56
    xor h                                         ; $6c1a: $ac
    and a                                         ; $6c1b: $a7
    sub a                                         ; $6c1c: $97
    ld h, l                                       ; $6c1d: $65
    ld l, b                                       ; $6c1e: $68
    add a                                         ; $6c1f: $87
    adc c                                         ; $6c20: $89

Jump_015_6c21:
    sub a                                         ; $6c21: $97
    ld [hl], a                                    ; $6c22: $77
    ld [hl], h                                    ; $6c23: $74
    ld h, a                                       ; $6c24: $67
    halt                                          ; $6c25: $76
    sbc b                                         ; $6c26: $98
    ld a, d                                       ; $6c27: $7a
    db $dd                                        ; $6c28: $dd
    xor b                                         ; $6c29: $a8
    ld h, l                                       ; $6c2a: $65
    ld a, e                                       ; $6c2b: $7b
    and l                                         ; $6c2c: $a5
    ld [hl+], a                                   ; $6c2d: $22
    ld e, d                                       ; $6c2e: $5a
    and [hl]                                      ; $6c2f: $a6
    adc d                                         ; $6c30: $8a
    sub [hl]                                      ; $6c31: $96
    ld h, a                                       ; $6c32: $67
    ld [hl], h                                    ; $6c33: $74
    ld d, [hl]                                    ; $6c34: $56
    xor h                                         ; $6c35: $ac
    xor b                                         ; $6c36: $a8
    ld l, b                                       ; $6c37: $68
    sub a                                         ; $6c38: $97
    ld b, [hl]                                    ; $6c39: $46

jr_015_6c3a:
    xor e                                         ; $6c3a: $ab
    sub a                                         ; $6c3b: $97
    ld h, l                                       ; $6c3c: $65
    ld d, a                                       ; $6c3d: $57
    ld [hl], l                                    ; $6c3e: $75
    ld a, e                                       ; $6c3f: $7b
    res 0, [hl]                                   ; $6c40: $cb $86
    ld e, b                                       ; $6c42: $58
    sub a                                         ; $6c43: $97
    ld l, c                                       ; $6c44: $69
    xor b                                         ; $6c45: $a8
    ld d, l                                       ; $6c46: $55
    halt                                          ; $6c47: $76
    ld a, b                                       ; $6c48: $78
    ld a, b                                       ; $6c49: $78
    ld h, l                                       ; $6c4a: $65
    ld a, e                                       ; $6c4b: $7b
    cp c                                          ; $6c4c: $b9
    ld b, l                                       ; $6c4d: $45
    ld d, a                                       ; $6c4e: $57
    xor d                                         ; $6c4f: $aa
    sbc b                                         ; $6c50: $98
    ld h, h                                       ; $6c51: $64
    ld l, c                                       ; $6c52: $69
    cp c                                          ; $6c53: $b9
    ld h, [hl]                                    ; $6c54: $66
    ld a, b                                       ; $6c55: $78
    halt                                          ; $6c56: $76
    ld l, b                                       ; $6c57: $68
    sbc e                                         ; $6c58: $9b
    xor c                                         ; $6c59: $a9
    sbc b                                         ; $6c5a: $98
    add a                                         ; $6c5b: $87
    ld h, [hl]                                    ; $6c5c: $66
    xor e                                         ; $6c5d: $ab
    and [hl]                                      ; $6c5e: $a6
    ld h, l                                       ; $6c5f: $65
    ld l, b                                       ; $6c60: $68
    ld [hl], h                                    ; $6c61: $74
    ld e, c                                       ; $6c62: $59
    xor e                                         ; $6c63: $ab
    sub l                                         ; $6c64: $95
    inc sp                                        ; $6c65: $33
    dec h                                         ; $6c66: $25
    sbc e                                         ; $6c67: $9b
    sub l                                         ; $6c68: $95
    ld e, b                                       ; $6c69: $58
    cp e                                          ; $6c6a: $bb
    sub [hl]                                      ; $6c6b: $96
    inc h                                         ; $6c6c: $24
    ld h, a                                       ; $6c6d: $67
    sbc [hl]                                      ; $6c6e: $9e
    ld [$4564], a                                 ; $6c6f: $ea $64 $45
    sbc b                                         ; $6c72: $98
    sbc c                                         ; $6c73: $99
    ld a, b                                       ; $6c74: $78
    sbc e                                         ; $6c75: $9b
    bit 6, l                                      ; $6c76: $cb $75
    adc c                                         ; $6c78: $89
    add a                                         ; $6c79: $87
    adc b                                         ; $6c7a: $88
    ld h, h                                       ; $6c7b: $64
    ld c, d                                       ; $6c7c: $4a
    ret c                                         ; $6c7d: $d8

    ld b, l                                       ; $6c7e: $45
    ld b, a                                       ; $6c7f: $47
    cp h                                          ; $6c80: $bc
    cp c                                          ; $6c81: $b9
    ld b, d                                       ; $6c82: $42
    ld b, a                                       ; $6c83: $47
    sbc b                                         ; $6c84: $98
    ld h, [hl]                                    ; $6c85: $66
    ld [hl], a                                    ; $6c86: $77
    adc c                                         ; $6c87: $89
    ld a, b                                       ; $6c88: $78
    ld [hl], a                                    ; $6c89: $77
    sbc c                                         ; $6c8a: $99
    ld [hl], h                                    ; $6c8b: $74
    ld l, e                                       ; $6c8c: $6b
    or a                                          ; $6c8d: $b7
    ld h, h                                       ; $6c8e: $64
    jr c, jr_015_6c3a                             ; $6c8f: $38 $a9

    sub l                                         ; $6c91: $95
    ld d, [hl]                                    ; $6c92: $56
    sbc h                                         ; $6c93: $9c
    cp b                                          ; $6c94: $b8
    add a                                         ; $6c95: $87
    ld h, [hl]                                    ; $6c96: $66
    ld l, b                                       ; $6c97: $68
    sub a                                         ; $6c98: $97
    adc c                                         ; $6c99: $89
    sub a                                         ; $6c9a: $97
    halt                                          ; $6c9b: $76
    ld [hl], h                                    ; $6c9c: $74
    ld h, [hl]                                    ; $6c9d: $66
    halt                                          ; $6c9e: $76
    sbc c                                         ; $6c9f: $99
    ld l, d                                       ; $6ca0: $6a
    db $dd                                        ; $6ca1: $dd
    cp b                                          ; $6ca2: $b8
    ld h, l                                       ; $6ca3: $65
    ld l, e                                       ; $6ca4: $6b
    and [hl]                                      ; $6ca5: $a6
    ld [hl+], a                                   ; $6ca6: $22
    ld c, c                                       ; $6ca7: $49
    or a                                          ; $6ca8: $b7
    ld a, d                                       ; $6ca9: $7a
    and [hl]                                      ; $6caa: $a6
    ld h, a                                       ; $6cab: $67
    ld [hl], l                                    ; $6cac: $75
    ld b, l                                       ; $6cad: $45
    xor h                                         ; $6cae: $ac
    cp c                                          ; $6caf: $b9
    add a                                         ; $6cb0: $87
    sbc b                                         ; $6cb1: $98
    ld d, l                                       ; $6cb2: $55
    sbc e                                         ; $6cb3: $9b
    and a                                         ; $6cb4: $a7
    ld h, l                                       ; $6cb5: $65
    ld d, a                                       ; $6cb6: $57
    ld [hl], l                                    ; $6cb7: $75
    ld l, e                                       ; $6cb8: $6b
    db $db                                        ; $6cb9: $db
    sub [hl]                                      ; $6cba: $96
    ld d, a                                       ; $6cbb: $57
    sbc b                                         ; $6cbc: $98
    ld l, b                                       ; $6cbd: $68
    xor c                                         ; $6cbe: $a9
    ld h, l                                       ; $6cbf: $65
    add [hl]                                      ; $6cc0: $86
    ld a, b                                       ; $6cc1: $78
    ld a, b                                       ; $6cc2: $78
    ld h, [hl]                                    ; $6cc3: $66
    ld a, d                                       ; $6cc4: $7a
    cp c                                          ; $6cc5: $b9
    ld b, h                                       ; $6cc6: $44
    ld [hl], $ab                                  ; $6cc7: $36 $ab
    sbc b                                         ; $6cc9: $98
    ld h, e                                       ; $6cca: $63
    ld e, c                                       ; $6ccb: $59
    ret                                           ; $6ccc: $c9


    ld h, l                                       ; $6ccd: $65
    adc b                                         ; $6cce: $88
    ld [hl], l                                    ; $6ccf: $75
    ld d, a                                       ; $6cd0: $57
    xor e                                         ; $6cd1: $ab
    xor b                                         ; $6cd2: $a8
    xor e                                         ; $6cd3: $ab
    cp b                                          ; $6cd4: $b8
    ld h, h                                       ; $6cd5: $64
    ld l, b                                       ; $6cd6: $68
    xor c                                         ; $6cd7: $a9
    sbc b                                         ; $6cd8: $98
    halt                                          ; $6cd9: $76
    adc b                                         ; $6cda: $88
    adc c                                         ; $6cdb: $89
    xor d                                         ; $6cdc: $aa
    ld [hl], h                                    ; $6cdd: $74
    ld h, a                                       ; $6cde: $67
    ld a, b                                       ; $6cdf: $78
    sub a                                         ; $6ce0: $97
    ld d, e                                       ; $6ce1: $53
    ld b, a                                       ; $6ce2: $47
    ld h, a                                       ; $6ce3: $67
    sbc e                                         ; $6ce4: $9b
    sub a                                         ; $6ce5: $97
    ld [hl], a                                    ; $6ce6: $77
    adc b                                         ; $6ce7: $88
    ld [hl], a                                    ; $6ce8: $77
    halt                                          ; $6ce9: $76
    ld [hl], a                                    ; $6cea: $77
    sbc c                                         ; $6ceb: $99
    sbc b                                         ; $6cec: $98
    sbc d                                         ; $6ced: $9a
    sub a                                         ; $6cee: $97
    ld d, [hl]                                    ; $6cef: $56
    add a                                         ; $6cf0: $87
    add a                                         ; $6cf1: $87
    ld h, h                                       ; $6cf2: $64
    ld l, b                                       ; $6cf3: $68
    sub a                                         ; $6cf4: $97
    adc d                                         ; $6cf5: $8a
    sbc b                                         ; $6cf6: $98
    adc c                                         ; $6cf7: $89
    ld [hl], l                                    ; $6cf8: $75
    ld b, l                                       ; $6cf9: $45
    adc d                                         ; $6cfa: $8a
    xor b                                         ; $6cfb: $a8
    ld [hl], a                                    ; $6cfc: $77
    sbc c                                         ; $6cfd: $99
    halt                                          ; $6cfe: $76
    ld a, c                                       ; $6cff: $79
    sub a                                         ; $6d00: $97
    add a                                         ; $6d01: $87
    ld h, [hl]                                    ; $6d02: $66
    halt                                          ; $6d03: $76
    ld l, c                                       ; $6d04: $69
    res 4, a                                      ; $6d05: $cb $a7
    ld h, l                                       ; $6d07: $65
    sbc b                                         ; $6d08: $98
    halt                                          ; $6d09: $76
    sbc c                                         ; $6d0a: $99
    ld [hl], l                                    ; $6d0b: $75
    ld h, a                                       ; $6d0c: $67
    ld l, b                                       ; $6d0d: $68
    add a                                         ; $6d0e: $87
    halt                                          ; $6d0f: $76
    ld l, c                                       ; $6d10: $69
    cp d                                          ; $6d11: $ba
    ld h, e                                       ; $6d12: $63
    inc [hl]                                      ; $6d13: $34
    sbc e                                         ; $6d14: $9b
    xor b                                         ; $6d15: $a8
    ld [hl], h                                    ; $6d16: $74
    ld c, b                                       ; $6d17: $48
    jp z, $7874                                   ; $6d18: $ca $74 $78

    ld [hl], l                                    ; $6d1b: $75
    ld d, [hl]                                    ; $6d1c: $56
    sbc e                                         ; $6d1d: $9b
    cp b                                          ; $6d1e: $b8
    sbc e                                         ; $6d1f: $9b
    cp c                                          ; $6d20: $b9
    ld h, l                                       ; $6d21: $65
    ld e, b                                       ; $6d22: $58
    sbc d                                         ; $6d23: $9a
    sbc b                                         ; $6d24: $98
    halt                                          ; $6d25: $76
    ld a, b                                       ; $6d26: $78
    ld a, c                                       ; $6d27: $79
    xor d                                         ; $6d28: $aa
    sub h                                         ; $6d29: $94
    ld d, a                                       ; $6d2a: $57
    ld a, b                                       ; $6d2b: $78
    xor b                                         ; $6d2c: $a8
    ld h, h                                       ; $6d2d: $64
    ld [hl], $67                                  ; $6d2e: $36 $67
    adc e                                         ; $6d30: $8b
    and a                                         ; $6d31: $a7
    ld [hl], a                                    ; $6d32: $77
    adc b                                         ; $6d33: $88
    add a                                         ; $6d34: $87
    ld [hl], a                                    ; $6d35: $77
    ld h, a                                       ; $6d36: $67
    adc c                                         ; $6d37: $89
    sbc b                                         ; $6d38: $98
    adc c                                         ; $6d39: $89
    sub a                                         ; $6d3a: $97
    ld d, l                                       ; $6d3b: $55
    halt                                          ; $6d3c: $76
    halt                                          ; $6d3d: $76
    ld [hl], l                                    ; $6d3e: $75
    ld h, a                                       ; $6d3f: $67
    add a                                         ; $6d40: $87
    adc d                                         ; $6d41: $8a
    sbc c                                         ; $6d42: $99
    adc d                                         ; $6d43: $8a
    add [hl]                                      ; $6d44: $86
    dec [hl]                                      ; $6d45: $35
    ld a, c                                       ; $6d46: $79
    sub a                                         ; $6d47: $97
    ld h, a                                       ; $6d48: $67
    adc d                                         ; $6d49: $8a
    sbc b                                         ; $6d4a: $98
    halt                                          ; $6d4b: $76
    ld [hl], a                                    ; $6d4c: $77
    sbc d                                         ; $6d4d: $9a
    add [hl]                                      ; $6d4e: $86
    ld a, b                                       ; $6d4f: $78
    adc e                                         ; $6d50: $8b
    cp d                                          ; $6d51: $ba
    xor c                                         ; $6d52: $a9
    add a                                         ; $6d53: $87
    ld h, a                                       ; $6d54: $67
    halt                                          ; $6d55: $76
    ld d, [hl]                                    ; $6d56: $56
    adc c                                         ; $6d57: $89
    ld [hl], a                                    ; $6d58: $77
    adc b                                         ; $6d59: $88
    ld [hl], h                                    ; $6d5a: $74
    ld d, l                                       ; $6d5b: $55
    ld a, b                                       ; $6d5c: $78
    sbc b                                         ; $6d5d: $98
    halt                                          ; $6d5e: $76
    ld l, b                                       ; $6d5f: $68
    sbc d                                         ; $6d60: $9a
    xor b                                         ; $6d61: $a8
    halt                                          ; $6d62: $76
    adc c                                         ; $6d63: $89
    halt                                          ; $6d64: $76
    halt                                          ; $6d65: $76
    ld b, l                                       ; $6d66: $45
    ld h, a                                       ; $6d67: $67
    adc c                                         ; $6d68: $89
    xor c                                         ; $6d69: $a9
    adc b                                         ; $6d6a: $88
    xor e                                         ; $6d6b: $ab
    sbc b                                         ; $6d6c: $98
    ld h, [hl]                                    ; $6d6d: $66
    adc b                                         ; $6d6e: $88
    adc b                                         ; $6d6f: $88
    add [hl]                                      ; $6d70: $86
    ld a, b                                       ; $6d71: $78
    adc b                                         ; $6d72: $88
    ld a, b                                       ; $6d73: $78
    halt                                          ; $6d74: $76
    adc b                                         ; $6d75: $88
    sbc c                                         ; $6d76: $99
    add a                                         ; $6d77: $87
    ld [hl], a                                    ; $6d78: $77
    ld a, b                                       ; $6d79: $78
    sbc c                                         ; $6d7a: $99
    add a                                         ; $6d7b: $87
    ld h, [hl]                                    ; $6d7c: $66
    ld a, b                                       ; $6d7d: $78
    add a                                         ; $6d7e: $87
    adc b                                         ; $6d7f: $88
    add a                                         ; $6d80: $87
    adc b                                         ; $6d81: $88
    sbc c                                         ; $6d82: $99
    add a                                         ; $6d83: $87
    halt                                          ; $6d84: $76
    ld [hl], a                                    ; $6d85: $77
    ld [hl], a                                    ; $6d86: $77
    halt                                          ; $6d87: $76
    ld d, [hl]                                    ; $6d88: $56
    adc c                                         ; $6d89: $89
    sbc b                                         ; $6d8a: $98
    ld [hl], a                                    ; $6d8b: $77
    ld [hl], a                                    ; $6d8c: $77
    add a                                         ; $6d8d: $87
    adc b                                         ; $6d8e: $88
    halt                                          ; $6d8f: $76
    ld h, a                                       ; $6d90: $67
    sbc d                                         ; $6d91: $9a
    cp c                                          ; $6d92: $b9
    add a                                         ; $6d93: $87
    ld h, [hl]                                    ; $6d94: $66
    sbc d                                         ; $6d95: $9a
    sub [hl]                                      ; $6d96: $96
    ld d, l                                       ; $6d97: $55
    ld a, c                                       ; $6d98: $79
    add a                                         ; $6d99: $87
    adc c                                         ; $6d9a: $89
    add [hl]                                      ; $6d9b: $86
    ld [hl], a                                    ; $6d9c: $77
    ld h, [hl]                                    ; $6d9d: $66
    ld l, b                                       ; $6d9e: $68
    xor c                                         ; $6d9f: $a9
    add a                                         ; $6da0: $87
    ld a, b                                       ; $6da1: $78
    sub [hl]                                      ; $6da2: $96
    ld d, a                                       ; $6da3: $57
    xor d                                         ; $6da4: $aa
    add a                                         ; $6da5: $87
    ld h, l                                       ; $6da6: $65
    ld h, a                                       ; $6da7: $67
    ld h, l                                       ; $6da8: $65
    adc h                                         ; $6da9: $8c
    cp d                                          ; $6daa: $ba
    ld [hl], l                                    ; $6dab: $75
    ld e, c                                       ; $6dac: $59
    sub a                                         ; $6dad: $97
    ld l, d                                       ; $6dae: $6a
    and a                                         ; $6daf: $a7
    ld d, [hl]                                    ; $6db0: $56
    halt                                          ; $6db1: $76
    adc b                                         ; $6db2: $88
    ld [hl], a                                    ; $6db3: $77
    ld h, [hl]                                    ; $6db4: $66
    sbc e                                         ; $6db5: $9b
    and [hl]                                      ; $6db6: $a6
    inc sp                                        ; $6db7: $33
    ld c, b                                       ; $6db8: $48
    cp d                                          ; $6db9: $ba
    add a                                         ; $6dba: $87
    ld b, h                                       ; $6dbb: $44
    ld a, e                                       ; $6dbc: $7b
    or a                                          ; $6dbd: $b7
    ld b, a                                       ; $6dbe: $47
    sbc b                                         ; $6dbf: $98
    ld d, l                                       ; $6dc0: $55
    ld e, b                                       ; $6dc1: $58
    cp e                                          ; $6dc2: $bb
    adc c                                         ; $6dc3: $89
    cp e                                          ; $6dc4: $bb
    and [hl]                                      ; $6dc5: $a6
    ld d, h                                       ; $6dc6: $54
    adc c                                         ; $6dc7: $89
    xor c                                         ; $6dc8: $a9
    sub a                                         ; $6dc9: $97
    ld h, a                                       ; $6dca: $67
    add a                                         ; $6dcb: $87
    sbc d                                         ; $6dcc: $9a
    xor c                                         ; $6dcd: $a9
    ld d, l                                       ; $6dce: $55
    ld [hl], a                                    ; $6dcf: $77
    adc d                                         ; $6dd0: $8a
    add [hl]                                      ; $6dd1: $86
    ld b, e                                       ; $6dd2: $43
    ld h, [hl]                                    ; $6dd3: $66
    ld a, b                                       ; $6dd4: $78
    xor d                                         ; $6dd5: $aa
    add a                                         ; $6dd6: $87
    ld a, b                                       ; $6dd7: $78
    adc b                                         ; $6dd8: $88
    ld [hl], a                                    ; $6dd9: $77
    halt                                          ; $6dda: $76
    ld a, b                                       ; $6ddb: $78
    sbc c                                         ; $6ddc: $99
    adc b                                         ; $6ddd: $88
    sbc c                                         ; $6dde: $99
    ld [hl], l                                    ; $6ddf: $75
    ld d, a                                       ; $6de0: $57
    ld h, a                                       ; $6de1: $67
    ld [hl], a                                    ; $6de2: $77
    ld h, [hl]                                    ; $6de3: $66
    ld a, b                                       ; $6de4: $78
    ld a, b                                       ; $6de5: $78
    xor c                                         ; $6de6: $a9
    sbc b                                         ; $6de7: $98
    xor b                                         ; $6de8: $a8
    ld h, e                                       ; $6de9: $63
    ld b, a                                       ; $6dea: $47
    sbc c                                         ; $6deb: $99
    halt                                          ; $6dec: $76
    ld a, b                                       ; $6ded: $78
    xor d                                         ; $6dee: $aa
    add a                                         ; $6def: $87
    ld h, a                                       ; $6df0: $67
    ld a, c                                       ; $6df1: $79
    xor b                                         ; $6df2: $a8
    ld [hl], a                                    ; $6df3: $77
    adc b                                         ; $6df4: $88
    xor e                                         ; $6df5: $ab
    xor d                                         ; $6df6: $aa
    sbc b                                         ; $6df7: $98
    halt                                          ; $6df8: $76
    ld [hl], a                                    ; $6df9: $77
    ld h, l                                       ; $6dfa: $65
    ld l, b                                       ; $6dfb: $68
    sbc b                                         ; $6dfc: $98
    ld a, b                                       ; $6dfd: $78
    add a                                         ; $6dfe: $87
    ld d, l                                       ; $6dff: $55
    ld d, a                                       ; $6e00: $57
    ld a, d                                       ; $6e01: $7a
    add a                                         ; $6e02: $87
    ld h, [hl]                                    ; $6e03: $66
    adc b                                         ; $6e04: $88
    xor d                                         ; $6e05: $aa
    add a                                         ; $6e06: $87
    ld l, b                                       ; $6e07: $68
    sbc b                                         ; $6e08: $98
    ld h, a                                       ; $6e09: $67
    ld h, h                                       ; $6e0a: $64
    ld d, [hl]                                    ; $6e0b: $56
    ld l, b                                       ; $6e0c: $68
    adc d                                         ; $6e0d: $8a
    sbc c                                         ; $6e0e: $99
    adc c                                         ; $6e0f: $89
    cp d                                          ; $6e10: $ba
    add [hl]                                      ; $6e11: $86
    ld e, b                                       ; $6e12: $58
    adc b                                         ; $6e13: $88
    add a                                         ; $6e14: $87
    ld h, a                                       ; $6e15: $67
    adc b                                         ; $6e16: $88
    add a                                         ; $6e17: $87
    add a                                         ; $6e18: $87
    ld l, b                                       ; $6e19: $68
    adc c                                         ; $6e1a: $89
    sbc b                                         ; $6e1b: $98
    ld a, b                                       ; $6e1c: $78
    ld [hl], a                                    ; $6e1d: $77
    adc c                                         ; $6e1e: $89
    sbc b                                         ; $6e1f: $98
    add [hl]                                      ; $6e20: $86
    ld h, a                                       ; $6e21: $67
    adc b                                         ; $6e22: $88
    adc b                                         ; $6e23: $88
    add a                                         ; $6e24: $87
    ld a, b                                       ; $6e25: $78
    adc c                                         ; $6e26: $89
    sbc b                                         ; $6e27: $98
    ld [hl], a                                    ; $6e28: $77
    ld h, a                                       ; $6e29: $67
    ld [hl], a                                    ; $6e2a: $77
    ld [hl], a                                    ; $6e2b: $77
    ld h, l                                       ; $6e2c: $65
    ld h, a                                       ; $6e2d: $67
    sbc d                                         ; $6e2e: $9a
    sbc b                                         ; $6e2f: $98
    ld h, [hl]                                    ; $6e30: $66
    ld l, b                                       ; $6e31: $68
    adc b                                         ; $6e32: $88
    add a                                         ; $6e33: $87
    ld d, l                                       ; $6e34: $55
    ld a, d                                       ; $6e35: $7a
    xor c                                         ; $6e36: $a9
    ld [hl], a                                    ; $6e37: $77
    ld [hl], a                                    ; $6e38: $77
    ld h, a                                       ; $6e39: $67
    ld a, b                                       ; $6e3a: $78
    sbc c                                         ; $6e3b: $99
    add a                                         ; $6e3c: $87
    sbc c                                         ; $6e3d: $99
    sub a                                         ; $6e3e: $97
    ld h, l                                       ; $6e3f: $65
    adc b                                         ; $6e40: $88
    sbc b                                         ; $6e41: $98
    adc b                                         ; $6e42: $88
    ld [hl], a                                    ; $6e43: $77
    add a                                         ; $6e44: $87
    adc c                                         ; $6e45: $89
    sbc c                                         ; $6e46: $99
    ld h, l                                       ; $6e47: $65
    ld [hl], a                                    ; $6e48: $77
    ld a, c                                       ; $6e49: $79
    add [hl]                                      ; $6e4a: $86
    ld d, h                                       ; $6e4b: $54
    ld h, a                                       ; $6e4c: $67
    ld a, b                                       ; $6e4d: $78
    xor d                                         ; $6e4e: $aa
    add a                                         ; $6e4f: $87
    adc b                                         ; $6e50: $88
    adc b                                         ; $6e51: $88
    ld [hl], a                                    ; $6e52: $77
    halt                                          ; $6e53: $76
    ld [hl], a                                    ; $6e54: $77
    sbc c                                         ; $6e55: $99
    sbc b                                         ; $6e56: $98
    sbc c                                         ; $6e57: $99
    halt                                          ; $6e58: $76
    ld d, [hl]                                    ; $6e59: $56
    halt                                          ; $6e5a: $76
    ld [hl], a                                    ; $6e5b: $77
    ld h, [hl]                                    ; $6e5c: $66
    ld a, b                                       ; $6e5d: $78
    ld [hl], a                                    ; $6e5e: $77
    sbc c                                         ; $6e5f: $99
    sbc b                                         ; $6e60: $98
    xor c                                         ; $6e61: $a9
    ld [hl], h                                    ; $6e62: $74
    ld b, a                                       ; $6e63: $47
    sbc c                                         ; $6e64: $99
    halt                                          ; $6e65: $76
    ld [hl], a                                    ; $6e66: $77
    sbc c                                         ; $6e67: $99
    add a                                         ; $6e68: $87
    ld h, a                                       ; $6e69: $67
    ld a, b                                       ; $6e6a: $78
    xor c                                         ; $6e6b: $a9
    halt                                          ; $6e6c: $76
    adc b                                         ; $6e6d: $88
    xor e                                         ; $6e6e: $ab
    xor c                                         ; $6e6f: $a9
    sbc b                                         ; $6e70: $98
    add a                                         ; $6e71: $87
    ld a, b                                       ; $6e72: $78
    ld [hl], l                                    ; $6e73: $75
    ld h, a                                       ; $6e74: $67
    adc b                                         ; $6e75: $88
    ld a, b                                       ; $6e76: $78
    adc b                                         ; $6e77: $88
    ld d, l                                       ; $6e78: $55
    ld d, a                                       ; $6e79: $57
    ld a, c                                       ; $6e7a: $79
    add a                                         ; $6e7b: $87
    ld h, [hl]                                    ; $6e7c: $66
    ld a, b                                       ; $6e7d: $78
    xor d                                         ; $6e7e: $aa
    adc b                                         ; $6e7f: $88
    ld h, a                                       ; $6e80: $67
    sbc b                                         ; $6e81: $98
    ld [hl], a                                    ; $6e82: $77
    ld [hl], l                                    ; $6e83: $75
    ld d, [hl]                                    ; $6e84: $56
    ld [hl], a                                    ; $6e85: $77
    adc c                                         ; $6e86: $89
    sbc b                                         ; $6e87: $98
    adc c                                         ; $6e88: $89
    xor c                                         ; $6e89: $a9
    add a                                         ; $6e8a: $87
    ld h, a                                       ; $6e8b: $67
    adc b                                         ; $6e8c: $88
    add a                                         ; $6e8d: $87
    ld h, a                                       ; $6e8e: $67
    adc b                                         ; $6e8f: $88
    add a                                         ; $6e90: $87
    ld [hl], a                                    ; $6e91: $77
    ld h, a                                       ; $6e92: $67
    adc b                                         ; $6e93: $88
    sbc b                                         ; $6e94: $98
    ld a, b                                       ; $6e95: $78
    ld [hl], a                                    ; $6e96: $77
    adc c                                         ; $6e97: $89
    sbc b                                         ; $6e98: $98
    halt                                          ; $6e99: $76
    ld h, a                                       ; $6e9a: $67
    adc b                                         ; $6e9b: $88
    adc b                                         ; $6e9c: $88
    add a                                         ; $6e9d: $87
    ld a, b                                       ; $6e9e: $78
    adc b                                         ; $6e9f: $88
    adc b                                         ; $6ea0: $88
    ld [hl], a                                    ; $6ea1: $77
    ld h, a                                       ; $6ea2: $67
    ld [hl], a                                    ; $6ea3: $77
    ld [hl], a                                    ; $6ea4: $77
    ld h, [hl]                                    ; $6ea5: $66
    ld h, a                                       ; $6ea6: $67
    sbc c                                         ; $6ea7: $99
    adc b                                         ; $6ea8: $88
    ld [hl], a                                    ; $6ea9: $77
    ld a, b                                       ; $6eaa: $78
    add a                                         ; $6eab: $87
    add a                                         ; $6eac: $87
    ld h, [hl]                                    ; $6ead: $66
    ld a, b                                       ; $6eae: $78
    sbc c                                         ; $6eaf: $99
    adc b                                         ; $6eb0: $88
    ld [hl], a                                    ; $6eb1: $77
    ld a, b                                       ; $6eb2: $78
    adc c                                         ; $6eb3: $89
    add a                                         ; $6eb4: $87
    ld [hl], a                                    ; $6eb5: $77
    ld [hl], a                                    ; $6eb6: $77
    adc b                                         ; $6eb7: $88
    adc b                                         ; $6eb8: $88
    ld [hl], a                                    ; $6eb9: $77
    ld [hl], a                                    ; $6eba: $77
    adc b                                         ; $6ebb: $88
    adc b                                         ; $6ebc: $88
    ld [hl], a                                    ; $6ebd: $77
    ld a, b                                       ; $6ebe: $78
    adc b                                         ; $6ebf: $88
    add a                                         ; $6ec0: $87
    ld [hl], a                                    ; $6ec1: $77
    adc b                                         ; $6ec2: $88
    adc b                                         ; $6ec3: $88
    add a                                         ; $6ec4: $87
    ld h, a                                       ; $6ec5: $67
    ld [hl], a                                    ; $6ec6: $77
    ld a, b                                       ; $6ec7: $78
    add a                                         ; $6ec8: $87
    ld a, b                                       ; $6ec9: $78
    adc b                                         ; $6eca: $88
    sbc b                                         ; $6ecb: $98
    ld [hl], a                                    ; $6ecc: $77
    ld [hl], a                                    ; $6ecd: $77
    ld [hl], a                                    ; $6ece: $77
    ld [hl], a                                    ; $6ecf: $77
    add a                                         ; $6ed0: $87
    ld h, a                                       ; $6ed1: $67
    adc b                                         ; $6ed2: $88
    sbc c                                         ; $6ed3: $99
    add a                                         ; $6ed4: $87
    ld [hl], a                                    ; $6ed5: $77
    adc b                                         ; $6ed6: $88
    adc b                                         ; $6ed7: $88
    ld [hl], a                                    ; $6ed8: $77
    ld [hl], a                                    ; $6ed9: $77
    sbc c                                         ; $6eda: $99
    sbc b                                         ; $6edb: $98
    adc b                                         ; $6edc: $88
    add a                                         ; $6edd: $87
    adc b                                         ; $6ede: $88
    ld [hl], a                                    ; $6edf: $77
    add a                                         ; $6ee0: $87
    add a                                         ; $6ee1: $87
    ld a, b                                       ; $6ee2: $78
    add a                                         ; $6ee3: $87
    ld h, [hl]                                    ; $6ee4: $66
    ld h, a                                       ; $6ee5: $67
    adc c                                         ; $6ee6: $89
    add a                                         ; $6ee7: $87
    ld [hl], a                                    ; $6ee8: $77
    ld a, b                                       ; $6ee9: $78
    sbc c                                         ; $6eea: $99
    add a                                         ; $6eeb: $87
    ld a, b                                       ; $6eec: $78
    adc b                                         ; $6eed: $88
    ld [hl], a                                    ; $6eee: $77
    halt                                          ; $6eef: $76
    ld h, [hl]                                    ; $6ef0: $66
    ld a, b                                       ; $6ef1: $78
    adc c                                         ; $6ef2: $89
    sbc b                                         ; $6ef3: $98
    adc c                                         ; $6ef4: $89
    sbc c                                         ; $6ef5: $99
    add a                                         ; $6ef6: $87
    ld l, b                                       ; $6ef7: $68
    adc b                                         ; $6ef8: $88
    add a                                         ; $6ef9: $87
    ld h, a                                       ; $6efa: $67
    adc b                                         ; $6efb: $88
    add a                                         ; $6efc: $87
    add a                                         ; $6efd: $87
    ld a, b                                       ; $6efe: $78
    adc b                                         ; $6eff: $88
    adc b                                         ; $6f00: $88
    ld a, b                                       ; $6f01: $78
    ld [hl], a                                    ; $6f02: $77
    adc b                                         ; $6f03: $88
    adc b                                         ; $6f04: $88
    ld [hl], a                                    ; $6f05: $77
    ld [hl], a                                    ; $6f06: $77
    adc b                                         ; $6f07: $88
    adc b                                         ; $6f08: $88
    add a                                         ; $6f09: $87
    ld a, b                                       ; $6f0a: $78
    adc b                                         ; $6f0b: $88
    adc b                                         ; $6f0c: $88
    ld [hl], a                                    ; $6f0d: $77
    ld [hl], a                                    ; $6f0e: $77
    ld [hl], a                                    ; $6f0f: $77
    add a                                         ; $6f10: $87
    halt                                          ; $6f11: $76
    ld [hl], a                                    ; $6f12: $77
    adc b                                         ; $6f13: $88
    adc b                                         ; $6f14: $88
    ld [hl], a                                    ; $6f15: $77
    ld a, b                                       ; $6f16: $78
    ld a, b                                       ; $6f17: $78
    add a                                         ; $6f18: $87
    halt                                          ; $6f19: $76
    ld a, b                                       ; $6f1a: $78
    sbc c                                         ; $6f1b: $99
    adc b                                         ; $6f1c: $88
    ld [hl], a                                    ; $6f1d: $77
    ld a, b                                       ; $6f1e: $78
    adc b                                         ; $6f1f: $88
    add a                                         ; $6f20: $87
    ld [hl], a                                    ; $6f21: $77
    ld [hl], a                                    ; $6f22: $77
    adc b                                         ; $6f23: $88
    adc b                                         ; $6f24: $88
    ld [hl], a                                    ; $6f25: $77
    ld [hl], a                                    ; $6f26: $77
    adc b                                         ; $6f27: $88
    adc b                                         ; $6f28: $88
    ld [hl], a                                    ; $6f29: $77
    ld a, b                                       ; $6f2a: $78
    adc b                                         ; $6f2b: $88
    add a                                         ; $6f2c: $87
    ld [hl], a                                    ; $6f2d: $77
    adc b                                         ; $6f2e: $88
    adc b                                         ; $6f2f: $88
    add a                                         ; $6f30: $87
    ld [hl], a                                    ; $6f31: $77
    ld [hl], a                                    ; $6f32: $77
    adc b                                         ; $6f33: $88
    ld [hl], a                                    ; $6f34: $77
    ld a, b                                       ; $6f35: $78
    adc b                                         ; $6f36: $88
    adc b                                         ; $6f37: $88
    ld [hl], a                                    ; $6f38: $77
    ld [hl], a                                    ; $6f39: $77
    adc b                                         ; $6f3a: $88
    ld [hl], a                                    ; $6f3b: $77
    ld [hl], a                                    ; $6f3c: $77
    ld [hl], a                                    ; $6f3d: $77
    adc b                                         ; $6f3e: $88
    adc b                                         ; $6f3f: $88
    add a                                         ; $6f40: $87
    ld a, b                                       ; $6f41: $78
    adc b                                         ; $6f42: $88
    adc b                                         ; $6f43: $88
    ld [hl], a                                    ; $6f44: $77
    ld [hl], a                                    ; $6f45: $77
    adc b                                         ; $6f46: $88
    adc b                                         ; $6f47: $88
    ld [hl], a                                    ; $6f48: $77
    adc b                                         ; $6f49: $88
    adc b                                         ; $6f4a: $88
    adc b                                         ; $6f4b: $88
    ld [hl], a                                    ; $6f4c: $77
    ld [hl], a                                    ; $6f4d: $77
    ld a, b                                       ; $6f4e: $78
    ld [hl], a                                    ; $6f4f: $77
    add a                                         ; $6f50: $87
    ld [hl], a                                    ; $6f51: $77
    adc b                                         ; $6f52: $88
    adc b                                         ; $6f53: $88
    ld [hl], a                                    ; $6f54: $77
    ld [hl], a                                    ; $6f55: $77
    ld a, b                                       ; $6f56: $78
    adc b                                         ; $6f57: $88
    ld [hl], a                                    ; $6f58: $77
    ld [hl], a                                    ; $6f59: $77
    ld a, b                                       ; $6f5a: $78
    adc b                                         ; $6f5b: $88
    add a                                         ; $6f5c: $87
    ld [hl], a                                    ; $6f5d: $77
    ld [hl], a                                    ; $6f5e: $77
    adc b                                         ; $6f5f: $88
    adc b                                         ; $6f60: $88
    ld [hl], a                                    ; $6f61: $77
    ld [hl], a                                    ; $6f62: $77
    adc b                                         ; $6f63: $88
    adc b                                         ; $6f64: $88
    ld [hl], a                                    ; $6f65: $77
    ld [hl], a                                    ; $6f66: $77
    adc b                                         ; $6f67: $88
    adc b                                         ; $6f68: $88
    add a                                         ; $6f69: $87
    ld [hl], a                                    ; $6f6a: $77
    ld [hl], a                                    ; $6f6b: $77
    adc b                                         ; $6f6c: $88
    adc b                                         ; $6f6d: $88
    add a                                         ; $6f6e: $87
    adc b                                         ; $6f6f: $88
    adc b                                         ; $6f70: $88
    add a                                         ; $6f71: $87
    adc b                                         ; $6f72: $88
    add a                                         ; $6f73: $87
    ld [hl], a                                    ; $6f74: $77
    ld a, b                                       ; $6f75: $78
    adc b                                         ; $6f76: $88
    ld [hl], a                                    ; $6f77: $77
    ld [hl], a                                    ; $6f78: $77
    ld a, b                                       ; $6f79: $78
    adc b                                         ; $6f7a: $88
    add a                                         ; $6f7b: $87
    ld [hl], a                                    ; $6f7c: $77
    ld a, b                                       ; $6f7d: $78
    adc b                                         ; $6f7e: $88
    add a                                         ; $6f7f: $87
    add a                                         ; $6f80: $87
    ld a, b                                       ; $6f81: $78
    adc b                                         ; $6f82: $88
    adc b                                         ; $6f83: $88
    ld [hl], a                                    ; $6f84: $77
    adc b                                         ; $6f85: $88
    adc b                                         ; $6f86: $88
    adc b                                         ; $6f87: $88
    ld [hl], a                                    ; $6f88: $77
    ld [hl], a                                    ; $6f89: $77
    ld [hl], a                                    ; $6f8a: $77
    ld [hl], a                                    ; $6f8b: $77
    ld [hl], a                                    ; $6f8c: $77
    ld a, b                                       ; $6f8d: $78
    adc b                                         ; $6f8e: $88
    add a                                         ; $6f8f: $87
    add a                                         ; $6f90: $87
    adc b                                         ; $6f91: $88
    ld a, b                                       ; $6f92: $78
    ld [hl], a                                    ; $6f93: $77
    ld [hl], a                                    ; $6f94: $77
    adc b                                         ; $6f95: $88
    adc b                                         ; $6f96: $88
    add a                                         ; $6f97: $87
    ld [hl], a                                    ; $6f98: $77
    adc b                                         ; $6f99: $88
    adc b                                         ; $6f9a: $88
    ld [hl], a                                    ; $6f9b: $77
    ld [hl], a                                    ; $6f9c: $77
    ld a, b                                       ; $6f9d: $78
    adc b                                         ; $6f9e: $88
    add a                                         ; $6f9f: $87
    add a                                         ; $6fa0: $87
    ld a, b                                       ; $6fa1: $78
    adc b                                         ; $6fa2: $88
    add a                                         ; $6fa3: $87
    ld [hl], a                                    ; $6fa4: $77
    adc b                                         ; $6fa5: $88
    adc b                                         ; $6fa6: $88
    ld [hl], a                                    ; $6fa7: $77
    ld a, b                                       ; $6fa8: $78
    adc b                                         ; $6fa9: $88
    adc b                                         ; $6faa: $88
    ld [hl], a                                    ; $6fab: $77
    ld [hl], a                                    ; $6fac: $77
    ld [hl], a                                    ; $6fad: $77
    add a                                         ; $6fae: $87
    ld [hl], a                                    ; $6faf: $77
    adc b                                         ; $6fb0: $88
    adc b                                         ; $6fb1: $88
    add a                                         ; $6fb2: $87
    ld [hl], a                                    ; $6fb3: $77
    ld a, b                                       ; $6fb4: $78
    add a                                         ; $6fb5: $87
    ld [hl], a                                    ; $6fb6: $77
    ld [hl], a                                    ; $6fb7: $77
    ld a, b                                       ; $6fb8: $78
    adc b                                         ; $6fb9: $88
    adc b                                         ; $6fba: $88
    ld [hl], a                                    ; $6fbb: $77
    adc b                                         ; $6fbc: $88
    adc b                                         ; $6fbd: $88
    add a                                         ; $6fbe: $87
    ld [hl], a                                    ; $6fbf: $77
    adc b                                         ; $6fc0: $88
    adc b                                         ; $6fc1: $88
    add a                                         ; $6fc2: $87
    ld a, b                                       ; $6fc3: $78
    adc b                                         ; $6fc4: $88
    adc b                                         ; $6fc5: $88
    add a                                         ; $6fc6: $87
    ld [hl], a                                    ; $6fc7: $77
    ld [hl], a                                    ; $6fc8: $77
    add a                                         ; $6fc9: $87
    add a                                         ; $6fca: $87
    ld [hl], a                                    ; $6fcb: $77
    ld a, b                                       ; $6fcc: $78
    adc b                                         ; $6fcd: $88
    add a                                         ; $6fce: $87
    ld [hl], a                                    ; $6fcf: $77
    add a                                         ; $6fd0: $87
    adc b                                         ; $6fd1: $88
    add a                                         ; $6fd2: $87
    ld [hl], a                                    ; $6fd3: $77
    ld [hl], a                                    ; $6fd4: $77
    adc b                                         ; $6fd5: $88
    adc b                                         ; $6fd6: $88
    add a                                         ; $6fd7: $87
    ld [hl], a                                    ; $6fd8: $77
    ld a, b                                       ; $6fd9: $78
    adc b                                         ; $6fda: $88
    add a                                         ; $6fdb: $87
    ld [hl], a                                    ; $6fdc: $77
    ld a, b                                       ; $6fdd: $78
    adc b                                         ; $6fde: $88
    adc b                                         ; $6fdf: $88
    add a                                         ; $6fe0: $87
    ld a, b                                       ; $6fe1: $78
    adc b                                         ; $6fe2: $88
    adc b                                         ; $6fe3: $88
    ld [hl], a                                    ; $6fe4: $77
    ld [hl], a                                    ; $6fe5: $77
    adc b                                         ; $6fe6: $88
    adc b                                         ; $6fe7: $88
    add a                                         ; $6fe8: $87
    ld [hl], a                                    ; $6fe9: $77
    adc b                                         ; $6fea: $88
    adc b                                         ; $6feb: $88
    ld [hl], a                                    ; $6fec: $77
    adc b                                         ; $6fed: $88
    adc b                                         ; $6fee: $88
    adc b                                         ; $6fef: $88
    adc b                                         ; $6ff0: $88
    adc b                                         ; $6ff1: $88
    adc b                                         ; $6ff2: $88
    adc b                                         ; $6ff3: $88
    adc b                                         ; $6ff4: $88
    adc b                                         ; $6ff5: $88
    adc b                                         ; $6ff6: $88
    adc b                                         ; $6ff7: $88
    adc b                                         ; $6ff8: $88
    adc b                                         ; $6ff9: $88
    adc b                                         ; $6ffa: $88
    adc b                                         ; $6ffb: $88
    adc b                                         ; $6ffc: $88
    adc b                                         ; $6ffd: $88
    adc b                                         ; $6ffe: $88
    adc b                                         ; $6fff: $88

    db $88, $88, $76, $66, $88, $76, $56, $77, $89, $97, $67, $88, $88, $77, $8a, $aa
    db $98, $76, $55, $67, $77, $78, $89, $89, $a9, $76, $67, $99, $97, $78, $88, $76
    db $45, $57, $88, $77, $65, $57, $88, $87, $79, $9b, $cb, $a8, $88, $9a, $a7, $65
    db $57, $66, $67, $65, $77, $78, $aa, $96, $78, $aa, $a8, $64, $66, $97, $44, $47
    db $89, $98, $76, $77, $79, $9a, $9a, $cb, $a8, $67, $89, $87, $65, $44, $57, $77
    db $87, $66, $8b, $cb, $98, $78, $aa, $87, $89, $87, $43, $35, $78, $97, $54, $69
    db $98, $75, $66, $67, $9a, $bc, $cb, $74, $6b, $b9, $87, $66, $53, $59, $98, $ab
    db $b9, $89, $98, $75, $53, $47, $99, $95, $39, $cb, $64, $44, $56, $9b, $9b, $b9
    db $99, $66, $88, $65, $8c, $ca, $96, $56, $66, $65, $43, $36, $99, $a9, $64, $48
    db $cc, $96, $67, $88, $78, $89, $a9, $88, $88, $66, $9b, $ca, $66, $7a, $a8, $65
    db $66, $78, $87, $9a, $87, $78, $76, $42, $5a, $98, $56, $78, $86, $78, $76, $45
    db $89, $bb, $bc, $b9, $76, $88, $86, $43, $25, $88, $99, $8a, $ab, $98, $a8, $88
    db $89, $a7, $77, $33, $54, $55, $69, $a9, $86, $66, $89, $c9, $56, $b8, $68, $75
    db $87, $9c, $96, $44, $79, $bb, $aa, $ca, $85, $54, $78, $78, $89, $85, $45, $77
    db $57, $8a, $a6, $23, $47, $99, $b9, $77, $78, $a8, $9b, $a9, $87, $53, $45, $55
    db $89, $99, $86, $69, $ab, $bd, $a6, $66, $79, $a9, $87, $77, $74, $32, $33, $67
    db $88, $ca, $67, $ad, $c8, $8a, $9b, $b9, $65, $43, $45, $78, $94, $54, $56, $59
    db $a9, $97, $9b, $dc, $a5, $35, $88, $78, $ab, $a9, $86, $78, $75, $55, $23, $58
    db $a9, $75, $65, $77, $bc, $b9, $88, $78, $8c, $a8, $52, $5a, $cc, $b8, $89, $98
    db $54, $67, $65, $58, $7a, $87, $86, $34, $6a, $ed, $86, $9b, $b5, $33, $34, $88
    db $9b, $a8, $75, $55, $7a, $97, $66, $77, $45, $89, $de, $b9, $98, $64, $6a, $98
    db $86, $78, $86, $79, $9a, $ab, $86, $41, $45, $79, $a8, $55, $9b, $96, $32, $48
    db $bc, $b7, $69, $cd, $a4, $23, $68, $ac, $dc, $85, $45, $6b, $dc, $96, $54, $55
    db $45, $54, $78, $68, $cd, $d8, $56, $9a, $43, $45, $8b, $dc, $72, $25, $76, $56
    db $9a, $ad, $ea, $53, $38, $ba, $77, $8b, $dc, $73, $21, $46, $67, $7a, $da, $86
    db $9c, $a5, $33, $49, $de, $c7, $66, $67, $8b, $b8, $42, $55, $42, $67, $86, $68
    db $87, $88, $dc, $98, $88, $87, $58, $9b, $dc, $ab, $a7, $21, $13, $68, $77, $62
    db $27, $ab, $ef, $b6, $46, $ac, $a7, $54, $44, $79, $88, $86, $67, $ac, $95, $22
    db $5a, $cc, $db, $74, $45, $56, $ce, $a3, $35, $79, $85, $56, $9b, $75, $9b, $cb
    db $a9, $67, $66, $43, $34, $33, $68, $ae, $fe, $b7, $76, $63, $37, $bc, $da, $75
    db $56, $ac, $96, $31, $46, $7b, $dd, $c9, $73, $25, $9a, $75, $67, $7b, $ee, $95
    db $34, $42, $35, $8a, $a7, $77, $88, $66, $74, $24, $8a, $cd, $a8, $79, $99, $ba
    db $aa, $ab, $c9, $66, $67, $51, $00, $39, $cc, $a9, $77, $89, $64, $36, $9a, $ab
    db $cb, $84, $23, $8b, $ba, $ac, $ca, $85, $11, $03, $8a, $97, $53, $27, $98, $9b
    db $ba, $a8, $53, $22, $5a, $ef, $eb, $98, $75, $31, $14, $9c, $bc, $db, $96, $64
    db $20, $36, $ab, $87, $79, $98, $78, $87, $9d, $dd, $ed, $96, $31, $15, $ac, $86
    db $65, $45, $67, $86, $51, $26, $56, $99, $9a, $a9, $ab, $ec, $ba, $73, $13, $9d
    db $a8, $99, $ba, $52, $38, $bc, $eb, $53, $13, $13, $58, $66, $68, $bd, $cd, $a6
    db $33, $35, $8d, $fe, $b8, $64, $55, $56, $76, $46, $89, $9a, $9a, $dc, $93, $11
    db $48, $87, $79, $ee, $a8, $63, $23, $79, $99, $de, $a6, $32, $59, $ce, $b7, $54
    db $24, $76, $99, $63, $77, $8a, $b8, $41, $23, $ad, $fd, $85, $8b, $dd, $a7, $75
    db $10, $47, $9a, $83, $15, $bc, $96, $68, $88, $a8, $ab, $a7, $57, $9c, $ec, $53
    db $46, $99, $73, $13, $68, $bb, $ab, $a8, $64, $10, $35, $8b, $de, $dc, $95, $46
    db $88, $52, $28, $bb, $c8, $30, $3a, $b7, $34, $8c, $da, $65, $68, $ab, $cb, $bc
    db $b9, $63, $24, $8c, $eb, $63, $22, $56, $8b, $ac, $ec, $94, $10, $14, $8a, $bd
    db $c9, $64, $67, $65, $34, $68, $77, $79, $ab, $a9, $62, $68, $99, $77, $8d, $fc
    db $a8, $97, $54, $48, $a7, $76, $56, $87, $78, $98, $ba, $63, $29, $ba, $76, $58
    db $cb, $a9, $ca, $83, $02, $65, $25, $8a, $b8, $65, $7c, $db, $52, $4a, $ec, $95
    db $36, $a8, $44, $64, $69, $8a, $88, $ce, $ca, $98, $53, $12, $32, $49, $cf, $ea
    db $85, $77, $55, $ad, $bb, $87, $46, $99, $86, $53, $79, $86, $64, $24, $9d, $cd
    db $db, $85, $10, $37, $9b, $bb, $99, $64, $54, $9b, $cc, $84, $34, $79, $ca, $98
    db $64, $35, $be, $db, $a9, $96, $20, $06, $cc, $a4, $11, $6b, $ba, $97, $55, $87
    db $45, $8a, $ef, $c9, $65, $36, $78, $9a, $ba, $75, $53, $46, $88, $88, $88, $9a
    db $aa, $97, $42, $14, $ae, $ec, $cd, $c8, $30, $23, $57, $76, $54, $46, $9a, $98
    db $89, $bd, $c7, $33, $6a, $bc, $99, $98, $97, $55, $66, $43, $66, $ab, $99, $84
    db $87, $79, $98, $64, $45, $58, $cb, $cb, $89, $9c, $eb, $63, $31, $58, $64, $57
    db $8a, $98, $75, $78, $cc, $71, $13, $6a, $de, $dc, $d9, $64, $35, $76, $43, $35
    db $68, $a9, $a7, $64, $35, $9c, $bb, $cc, $bc, $b8, $74, $03, $7c, $cb, $a6, $67
    db $86, $88, $75, $23, $43, $25, $ae, $b9, $8b, $c9, $95, $36, $76, $52, $26, $ef
    db $ec, $a9, $85, $45, $57, $a8, $55, $66, $89, $a8, $76, $65, $89, $be, $c6, $88
    db $ac, $dc, $96, $34, $9b, $98, $73, $24, $8b, $a8, $52, $11, $46, $66, $67, $69
    db $97, $89, $9a, $bb, $cb, $a8, $55, $5a, $cd, $aa, $ba, $a8, $32, $13, $32, $57
    db $ce, $a5, $21, $33, $7a, $a9, $aa, $ba, $9b, $aa, $98, $76, $9c, $cb, $87, $77
    db $43, $31, $27, $bb, $85, $44, $69, $aa, $aa, $9a, $a8, $22, $6a, $ca, $76, $47
    db $99, $63, $12, $45, $58, $78, $9a, $aa, $a9, $bf, $c7, $67, $8a, $aa, $cc, $c7
    db $10, $03, $8b, $cc, $bb, $84, $42, $35, $67, $77, $31, $36, $9b, $a9, $99, $78
    db $9c, $c9, $98, $64, $22, $47, $9a, $ba, $87, $bb, $98, $85, $65, $7a, $dd, $cd
    db $a7, $52, $11, $38, $76, $58, $7a, $bd, $89, $85, $33, $36, $5a, $ba, $ca, $bc
    db $a9, $85, $20, $25, $66, $89, $bc, $cc, $a7, $64, $45, $68, $55, $67, $87, $79
    db $9a, $a7, $59, $ba, $85, $33, $7a, $ba, $89, $99, $75, $55, $56, $99, $99, $a7
    db $86, $6a, $ac, $ca, $8a, $66, $10, $14, $79, $9a, $a8, $76, $78, $99, $98, $76
    db $88, $a9, $88, $54, $56, $55, $9a, $ac, $96, $57, $87, $8a, $b9, $88, $58, $79
    db $88, $76, $54, $35, $79, $a8, $66, $8c, $ec, $b9, $65, $36, $78, $98, $63, $24
    db $57, $78, $aa, $ca, $64, $56, $ac, $a7, $68, $75, $67, $75, $8a, $99, $b8, $85
    db $87, $99, $9a, $88, $aa, $86, $44, $44, $66, $77, $64, $66, $68, $8a, $bb, $ac
    db $a9, $a8, $76, $8a, $87, $62, $24, $68, $ab, $88, $86, $76, $7b, $a8, $77, $88
    db $88, $88, $87, $43, $13, $58, $ac, $c9, $53, $46, $9a, $9c, $ca, $dd, $a7, $55
    db $58, $9a, $95, $53, $57, $77, $9a, $78, $76, $76, $57, $89, $66, $36, $66, $8b
    db $b8, $78, $86, $55, $76, $8b, $ee, $eb, $86, $44, $65, $66, $79, $87, $64, $44
    db $58, $a9, $ba, $84, $67, $9c, $ab, $96, $77, $69, $aa, $ac, $b8, $54, $13, $7a
    db $b8, $77, $64, $65, $42, $48, $68, $cc, $c8, $42, $36, $69, $ca, $a9, $79, $78
    db $88, $8a, $aa, $94, $68, $9a, $77, $74, $67, $8a, $96, $55, $56, $89, $97, $75
    db $88, $b8, $aa, $a6, $45, $99, $ed, $b9, $77, $57, $87, $53, $47, $77, $63, $55
    db $89, $b9, $87, $65, $56, $96, $78, $78, $96, $87, $78, $78, $ab, $bc, $bb, $87
    db $86, $79, $98, $77, $87, $68, $a9, $85, $31, $23, $49, $a9, $aa, $9b, $75, $75
    db $47, $85, $9a, $77, $89, $98, $9a, $97, $75, $59, $aa, $ca, $87, $9b, $99, $76
    db $12, $59, $8a, $a4, $46, $87, $76, $87, $77, $76, $67, $a9, $bb, $86, $62, $37
    db $8a, $99, $68, $aa, $b6, $77, $78, $87, $88, $9c, $c9, $86, $46, $77, $74, $33
    db $56, $66, $68, $98, $58, $bc, $aa, $a7, $89, $77, $8a, $79, $7a, $a7, $63, $34
    db $66, $65, $68, $a9, $98, $8a, $aa, $a9, $98, $67, $77, $79, $97, $67, $77, $78
    db $87, $76, $56, $78, $ab, $b9, $76, $55, $57, $66, $64, $68, $89, $98, $65, $77
    db $9a, $a8, $67, $67, $79, $98, $78, $88, $89, $a9, $88, $89, $aa, $b8, $78, $66
    db $57, $78, $87, $44, $68, $99, $87, $78, $98, $76, $55, $89, $99, $98, $76, $65
    db $45, $66, $57, $55, $67, $ac, $dd, $ba, $87, $87, $69, $98, $55, $56, $67, $9a
    db $98, $77, $77, $89, $97, $87, $79, $88, $78, $86, $56, $66, $79, $99, $a9, $79
    db $89, $88, $66, $77, $77, $66, $67, $68, $9a, $96, $66, $78, $99, $a9, $77, $78
    db $66, $68, $a9, $86, $67, $67, $a9, $85, $76, $54, $79, $9a, $a9, $76, $78, $99
    db $88, $86, $78, $9a, $a8, $88, $65, $54, $56, $67, $88, $89, $a9, $88, $99, $99
    db $97, $66, $77, $9a, $98, $86, $65, $55, $68, $89, $9a, $9a, $77, $54, $45, $66
    db $46, $96, $99, $a8, $88, $8a, $bb, $aa, $98, $87, $55, $66, $76, $56, $68, $98
    db $a9, $76, $78, $8b, $a9, $99, $86, $75, $76, $77, $66, $65, $67, $88, $89, $88
    db $89, $88, $88, $98, $87, $76, $66, $89, $99, $87, $68, $79, $88, $76, $55, $68
    db $99, $98, $76, $78, $76, $68, $99, $98, $76, $68, $89, $89, $86, $65, $68, $99
    db $a9, $66, $67, $67, $77, $88, $87, $66, $78, $89, $88, $89, $a9, $77, $78, $87
    db $87, $77, $65, $55, $78, $98, $87, $77, $79, $99, $aa, $aa, $87, $87, $76, $75
    db $67, $87, $76, $77, $77, $87, $88, $9a, $a8, $86, $77, $66, $88, $89, $87, $76
    db $66, $65, $79, $86, $66, $77, $89, $9a, $aa, $98, $66, $79, $99, $87, $79, $99
    db $88, $77, $89, $98, $76, $54, $45, $57, $88, $77, $65, $68, $99, $78, $89, $99
    db $87, $87, $87, $68, $98, $79, $99, $a8, $77, $77, $88, $98, $77, $65, $87, $79
    db $98, $86, $77, $77, $88, $88, $88, $77, $76, $77, $77, $78, $77, $88, $98, $88
    db $87, $77, $77, $76, $77, $87, $88, $a9, $88, $78, $77, $77, $78, $99, $98, $78
    db $88, $77, $77, $78, $77, $77, $67, $88, $98, $79, $98, $87, $89, $99, $76, $66
    db $67, $67, $77, $77, $88, $87, $78, $88, $99, $78, $99, $88, $78, $78, $87, $67
    db $66, $67, $76, $77, $76, $77, $77, $88, $99, $88, $88, $88, $98, $88, $87, $78
    db $88, $87, $67, $77, $78, $67, $77, $77, $98, $88, $78, $97, $88, $78, $88, $88
    db $87, $77, $77, $67, $78, $88, $99, $87, $77, $77, $77, $87, $78, $88, $77, $67
    db $88, $88, $87, $67, $78, $89, $98, $89, $78, $87, $68, $98, $86, $65, $57, $77
    db $87, $88, $88, $77, $77, $78, $88, $88, $78, $98, $88, $87, $77, $88, $77, $77
    db $88, $87, $88, $87, $87, $77, $77, $77, $77, $78, $77, $88, $87, $89, $88, $89
    db $87, $77, $77, $76, $67, $77, $88, $76, $77, $88, $88, $87, $87, $77, $78, $99
    db $99, $98, $76, $66, $78, $89, $98, $77, $77, $78, $88, $87, $66, $66, $78, $98
    db $87, $76, $88, $78, $77, $77, $77, $77, $78, $67, $76, $77, $77, $78, $98, $89
    db $99, $99, $89, $98, $88, $87, $76, $77, $76, $66, $56, $77, $78, $88, $98, $88
    db $88, $87, $66, $76, $79, $a8, $87, $66, $77, $89, $87, $78, $88, $88, $77, $66
    db $88, $88, $77, $78, $88, $99, $99, $87, $77, $78, $77, $87, $66, $67, $77, $78
    db $88, $89, $78, $87, $88, $88, $77, $77, $78, $77, $77, $88, $98, $88, $87, $88
    db $88, $99, $89, $88, $76, $55, $66, $77, $88, $88, $88, $87, $78, $88, $87, $76
    db $87, $78, $87, $77, $88, $88, $77, $77, $88, $78, $88, $77, $77, $67, $88, $89
    db $99, $98, $77, $67, $76, $66, $56, $77, $77, $88, $88, $98, $89, $aa, $98, $77
    db $87, $98, $77, $76, $66, $66, $78, $99, $88, $77, $78, $89, $98, $87, $77, $77
    db $87, $77, $78, $88, $77, $77, $77, $66, $78, $99, $88, $77, $77, $88, $77, $88
    db $89, $87, $87, $88, $87, $87, $77, $78, $89, $88, $88, $87, $77, $78, $87, $76
    db $66, $67, $77, $77, $88, $88, $88, $99, $88, $88, $88, $77, $88, $88, $87, $77
    db $66, $67, $78, $77, $77, $78, $88, $88, $89, $98, $87, $77, $77, $88, $77, $66
    db $87, $77, $78, $88, $88, $87, $88, $88, $88, $88, $88, $77, $67, $88, $88, $87
    db $88, $77, $77, $78, $88, $87, $77, $77, $77, $78, $77, $76, $66, $77, $88, $88

    add a                                         ; $7880: $87
    adc b                                         ; $7881: $88
    adc c                                         ; $7882: $89
    adc b                                         ; $7883: $88
    sbc b                                         ; $7884: $98
    adc b                                         ; $7885: $88
    adc b                                         ; $7886: $88
    add a                                         ; $7887: $87
    adc b                                         ; $7888: $88
    ld [hl], a                                    ; $7889: $77
    ld [hl], a                                    ; $788a: $77
    ld [hl], a                                    ; $788b: $77
    ld [hl], a                                    ; $788c: $77
    ld [hl], a                                    ; $788d: $77
    ld [hl], a                                    ; $788e: $77
    ld a, b                                       ; $788f: $78
    sbc c                                         ; $7890: $99
    sbc c                                         ; $7891: $99
    adc b                                         ; $7892: $88
    adc b                                         ; $7893: $88
    adc b                                         ; $7894: $88
    ld [hl], a                                    ; $7895: $77
    ld [hl], a                                    ; $7896: $77
    ld [hl], a                                    ; $7897: $77
    halt                                          ; $7898: $76
    ld h, a                                       ; $7899: $67
    ld [hl], a                                    ; $789a: $77
    ld [hl], a                                    ; $789b: $77
    add a                                         ; $789c: $87
    add a                                         ; $789d: $87
    ld [hl], a                                    ; $789e: $77
    ld [hl], a                                    ; $789f: $77
    adc b                                         ; $78a0: $88
    ld a, b                                       ; $78a1: $78
    adc b                                         ; $78a2: $88
    adc b                                         ; $78a3: $88
    adc b                                         ; $78a4: $88
    adc b                                         ; $78a5: $88
    adc b                                         ; $78a6: $88
    adc b                                         ; $78a7: $88
    sbc b                                         ; $78a8: $98
    sbc b                                         ; $78a9: $98
    ld [hl], a                                    ; $78aa: $77
    adc b                                         ; $78ab: $88
    adc b                                         ; $78ac: $88
    ld [hl], a                                    ; $78ad: $77
    ld [hl], a                                    ; $78ae: $77
    ld [hl], a                                    ; $78af: $77
    add a                                         ; $78b0: $87
    ld h, [hl]                                    ; $78b1: $66
    ld [hl], a                                    ; $78b2: $77
    adc b                                         ; $78b3: $88
    ld [hl], a                                    ; $78b4: $77
    add a                                         ; $78b5: $87
    ld a, b                                       ; $78b6: $78
    ld a, b                                       ; $78b7: $78
    ld [hl], a                                    ; $78b8: $77
    ld a, b                                       ; $78b9: $78
    adc c                                         ; $78ba: $89
    sbc b                                         ; $78bb: $98
    adc b                                         ; $78bc: $88
    adc b                                         ; $78bd: $88
    adc b                                         ; $78be: $88
    adc c                                         ; $78bf: $89
    sbc b                                         ; $78c0: $98
    add a                                         ; $78c1: $87
    halt                                          ; $78c2: $76
    ld h, a                                       ; $78c3: $67
    ld [hl], a                                    ; $78c4: $77
    ld [hl], a                                    ; $78c5: $77
    halt                                          ; $78c6: $76
    ld h, [hl]                                    ; $78c7: $66
    ld [hl], a                                    ; $78c8: $77
    add a                                         ; $78c9: $87
    adc b                                         ; $78ca: $88
    add a                                         ; $78cb: $87
    adc b                                         ; $78cc: $88
    adc b                                         ; $78cd: $88
    adc b                                         ; $78ce: $88
    adc b                                         ; $78cf: $88
    adc b                                         ; $78d0: $88
    adc b                                         ; $78d1: $88
    adc b                                         ; $78d2: $88
    adc b                                         ; $78d3: $88
    add a                                         ; $78d4: $87
    ld [hl], a                                    ; $78d5: $77
    ld a, b                                       ; $78d6: $78
    ld [hl], a                                    ; $78d7: $77
    ld [hl], a                                    ; $78d8: $77
    ld [hl], a                                    ; $78d9: $77
    adc b                                         ; $78da: $88
    ld a, b                                       ; $78db: $78
    adc b                                         ; $78dc: $88
    adc b                                         ; $78dd: $88
    adc b                                         ; $78de: $88
    ld [hl], a                                    ; $78df: $77
    adc b                                         ; $78e0: $88
    ld [hl], a                                    ; $78e1: $77
    ld [hl], a                                    ; $78e2: $77
    add a                                         ; $78e3: $87
    ld [hl], a                                    ; $78e4: $77
    halt                                          ; $78e5: $76
    ld h, a                                       ; $78e6: $67
    ld [hl], a                                    ; $78e7: $77
    ld a, b                                       ; $78e8: $78
    adc b                                         ; $78e9: $88
    adc b                                         ; $78ea: $88
    adc b                                         ; $78eb: $88
    adc b                                         ; $78ec: $88
    adc b                                         ; $78ed: $88
    adc b                                         ; $78ee: $88
    adc b                                         ; $78ef: $88
    adc b                                         ; $78f0: $88
    adc b                                         ; $78f1: $88
    ld [hl], a                                    ; $78f2: $77
    ld [hl], a                                    ; $78f3: $77
    adc b                                         ; $78f4: $88
    ld [hl], a                                    ; $78f5: $77
    ld [hl], a                                    ; $78f6: $77
    ld [hl], a                                    ; $78f7: $77
    ld [hl], a                                    ; $78f8: $77
    ld h, [hl]                                    ; $78f9: $66
    ld [hl], a                                    ; $78fa: $77
    ld [hl], a                                    ; $78fb: $77
    adc b                                         ; $78fc: $88
    ld [hl], a                                    ; $78fd: $77
    add a                                         ; $78fe: $87
    adc b                                         ; $78ff: $88
    adc b                                         ; $7900: $88
    adc b                                         ; $7901: $88
    adc b                                         ; $7902: $88
    adc b                                         ; $7903: $88
    adc b                                         ; $7904: $88
    add a                                         ; $7905: $87
    ld [hl], a                                    ; $7906: $77
    add a                                         ; $7907: $87
    ld a, b                                       ; $7908: $78
    adc b                                         ; $7909: $88
    adc b                                         ; $790a: $88
    add a                                         ; $790b: $87
    ld [hl], a                                    ; $790c: $77
    ld [hl], a                                    ; $790d: $77
    add a                                         ; $790e: $87
    halt                                          ; $790f: $76
    add a                                         ; $7910: $87
    ld [hl], a                                    ; $7911: $77
    ld [hl], a                                    ; $7912: $77
    ld a, b                                       ; $7913: $78
    adc c                                         ; $7914: $89
    sbc b                                         ; $7915: $98
    add a                                         ; $7916: $87
    ld a, b                                       ; $7917: $78
    adc b                                         ; $7918: $88
    add a                                         ; $7919: $87
    ld [hl], a                                    ; $791a: $77
    ld [hl], a                                    ; $791b: $77
    ld [hl], a                                    ; $791c: $77
    ld [hl], a                                    ; $791d: $77
    ld a, b                                       ; $791e: $78
    adc b                                         ; $791f: $88
    adc b                                         ; $7920: $88
    ld [hl], a                                    ; $7921: $77
    add a                                         ; $7922: $87
    ld a, b                                       ; $7923: $78
    adc b                                         ; $7924: $88
    add a                                         ; $7925: $87
    ld [hl], a                                    ; $7926: $77
    ld [hl], a                                    ; $7927: $77
    ld h, a                                       ; $7928: $67
    adc b                                         ; $7929: $88
    adc b                                         ; $792a: $88
    adc b                                         ; $792b: $88
    adc b                                         ; $792c: $88
    adc b                                         ; $792d: $88
    adc b                                         ; $792e: $88
    adc c                                         ; $792f: $89
    sbc b                                         ; $7930: $98
    ld [hl], a                                    ; $7931: $77
    ld a, b                                       ; $7932: $78
    ld [hl], a                                    ; $7933: $77
    ld [hl], a                                    ; $7934: $77
    ld [hl], a                                    ; $7935: $77
    ld [hl], a                                    ; $7936: $77
    ld a, b                                       ; $7937: $78
    add a                                         ; $7938: $87
    ld [hl], a                                    ; $7939: $77
    halt                                          ; $793a: $76
    ld h, a                                       ; $793b: $67
    ld a, b                                       ; $793c: $78
    adc b                                         ; $793d: $88
    adc b                                         ; $793e: $88
    adc b                                         ; $793f: $88
    add a                                         ; $7940: $87
    ld [hl], a                                    ; $7941: $77
    ld a, b                                       ; $7942: $78
    ld [hl], a                                    ; $7943: $77
    adc b                                         ; $7944: $88
    adc b                                         ; $7945: $88
    adc b                                         ; $7946: $88
    sbc c                                         ; $7947: $99
    sbc b                                         ; $7948: $98
    adc b                                         ; $7949: $88
    add a                                         ; $794a: $87
    ld [hl], a                                    ; $794b: $77
    ld [hl], a                                    ; $794c: $77
    ld [hl], a                                    ; $794d: $77
    halt                                          ; $794e: $76
    ld [hl], a                                    ; $794f: $77
    adc b                                         ; $7950: $88
    adc b                                         ; $7951: $88
    adc b                                         ; $7952: $88
    add a                                         ; $7953: $87

Jump_015_7954:
    ld a, b                                       ; $7954: $78
    halt                                          ; $7955: $76
    ld [hl], a                                    ; $7956: $77
    ld a, b                                       ; $7957: $78
    add a                                         ; $7958: $87
    adc b                                         ; $7959: $88
    adc b                                         ; $795a: $88
    adc b                                         ; $795b: $88
    add a                                         ; $795c: $87
    ld [hl], a                                    ; $795d: $77
    adc b                                         ; $795e: $88
    adc b                                         ; $795f: $88
    add a                                         ; $7960: $87
    adc b                                         ; $7961: $88
    adc b                                         ; $7962: $88
    adc b                                         ; $7963: $88
    add a                                         ; $7964: $87

Jump_015_7965:
    ld [hl], a                                    ; $7965: $77
    ld [hl], a                                    ; $7966: $77
    ld a, b                                       ; $7967: $78
    adc b                                         ; $7968: $88
    adc b                                         ; $7969: $88
    adc b                                         ; $796a: $88
    ld [hl], a                                    ; $796b: $77
    ld [hl], a                                    ; $796c: $77
    add a                                         ; $796d: $87
    ld [hl], a                                    ; $796e: $77
    ld [hl], a                                    ; $796f: $77
    add a                                         ; $7970: $87
    adc b                                         ; $7971: $88
    adc b                                         ; $7972: $88
    adc b                                         ; $7973: $88
    adc b                                         ; $7974: $88
    adc b                                         ; $7975: $88
    adc b                                         ; $7976: $88
    adc b                                         ; $7977: $88
    ld [hl], a                                    ; $7978: $77
    ld [hl], a                                    ; $7979: $77
    ld [hl], a                                    ; $797a: $77
    ld [hl], a                                    ; $797b: $77
    ld [hl], a                                    ; $797c: $77
    ld [hl], a                                    ; $797d: $77
    ld [hl], a                                    ; $797e: $77
    adc b                                         ; $797f: $88
    adc b                                         ; $7980: $88
    adc b                                         ; $7981: $88
    adc b                                         ; $7982: $88
    adc b                                         ; $7983: $88
    adc b                                         ; $7984: $88
    adc c                                         ; $7985: $89
    adc b                                         ; $7986: $88
    adc b                                         ; $7987: $88
    ld [hl], a                                    ; $7988: $77
    ld [hl], a                                    ; $7989: $77
    ld a, b                                       ; $798a: $78
    ld [hl], a                                    ; $798b: $77
    ld h, [hl]                                    ; $798c: $66
    ld [hl], a                                    ; $798d: $77
    ld h, [hl]                                    ; $798e: $66
    adc b                                         ; $798f: $88
    adc b                                         ; $7990: $88
    adc b                                         ; $7991: $88
    adc b                                         ; $7992: $88
    adc b                                         ; $7993: $88
    adc b                                         ; $7994: $88
    adc b                                         ; $7995: $88
    adc b                                         ; $7996: $88

Call_015_7997:
    ld [hl], a                                    ; $7997: $77
    ld [hl], a                                    ; $7998: $77
    ld a, b                                       ; $7999: $78
    add a                                         ; $799a: $87
    adc b                                         ; $799b: $88
    ld [hl], a                                    ; $799c: $77
    ld [hl], a                                    ; $799d: $77
    ld [hl], a                                    ; $799e: $77
    adc b                                         ; $799f: $88
    adc c                                         ; $79a0: $89
    adc b                                         ; $79a1: $88
    ld [hl], a                                    ; $79a2: $77
    ld [hl], a                                    ; $79a3: $77
    ld [hl], a                                    ; $79a4: $77
    adc b                                         ; $79a5: $88
    add a                                         ; $79a6: $87
    ld a, b                                       ; $79a7: $78
    ld [hl], a                                    ; $79a8: $77
    ld [hl], a                                    ; $79a9: $77
    ld [hl], a                                    ; $79aa: $77
    ld [hl], a                                    ; $79ab: $77
    ld [hl], a                                    ; $79ac: $77
    ld [hl], a                                    ; $79ad: $77
    ld a, b                                       ; $79ae: $78
    ld a, b                                       ; $79af: $78
    adc b                                         ; $79b0: $88
    adc b                                         ; $79b1: $88
    adc b                                         ; $79b2: $88
    adc b                                         ; $79b3: $88
    adc b                                         ; $79b4: $88
    adc b                                         ; $79b5: $88
    adc b                                         ; $79b6: $88
    adc b                                         ; $79b7: $88
    adc b                                         ; $79b8: $88
    add a                                         ; $79b9: $87
    ld [hl], a                                    ; $79ba: $77
    ld h, a                                       ; $79bb: $67
    ld [hl], a                                    ; $79bc: $77
    ld [hl], a                                    ; $79bd: $77
    ld [hl], a                                    ; $79be: $77
    ld [hl], a                                    ; $79bf: $77
    add [hl]                                      ; $79c0: $86
    ld a, b                                       ; $79c1: $78
    adc b                                         ; $79c2: $88
    adc b                                         ; $79c3: $88
    ld a, b                                       ; $79c4: $78
    adc b                                         ; $79c5: $88
    adc b                                         ; $79c6: $88
    adc b                                         ; $79c7: $88
    ld [hl], a                                    ; $79c8: $77
    ld a, b                                       ; $79c9: $78
    add a                                         ; $79ca: $87
    adc b                                         ; $79cb: $88
    adc b                                         ; $79cc: $88
    add a                                         ; $79cd: $87
    ld [hl], a                                    ; $79ce: $77
    ld [hl], a                                    ; $79cf: $77
    add a                                         ; $79d0: $87
    adc b                                         ; $79d1: $88
    adc b                                         ; $79d2: $88
    adc b                                         ; $79d3: $88
    add a                                         ; $79d4: $87
    add a                                         ; $79d5: $87
    ld a, b                                       ; $79d6: $78
    adc b                                         ; $79d7: $88
    ld [hl], a                                    ; $79d8: $77
    ld [hl], a                                    ; $79d9: $77
    ld [hl], a                                    ; $79da: $77
    ld [hl], a                                    ; $79db: $77
    ld a, b                                       ; $79dc: $78
    ld [hl], a                                    ; $79dd: $77
    ld [hl], a                                    ; $79de: $77
    ld [hl], a                                    ; $79df: $77
    add a                                         ; $79e0: $87
    ld [hl], a                                    ; $79e1: $77
    ld [hl], a                                    ; $79e2: $77
    adc b                                         ; $79e3: $88
    adc b                                         ; $79e4: $88
    adc b                                         ; $79e5: $88
    add a                                         ; $79e6: $87
    ld a, b                                       ; $79e7: $78
    ld a, b                                       ; $79e8: $78
    adc b                                         ; $79e9: $88
    ld a, b                                       ; $79ea: $78
    adc b                                         ; $79eb: $88
    adc b                                         ; $79ec: $88
    adc b                                         ; $79ed: $88
    ld [hl], a                                    ; $79ee: $77
    ld a, b                                       ; $79ef: $78
    adc b                                         ; $79f0: $88
    add a                                         ; $79f1: $87
    ld [hl], a                                    ; $79f2: $77
    ld [hl], a                                    ; $79f3: $77
    ld [hl], a                                    ; $79f4: $77
    ld [hl], a                                    ; $79f5: $77
    ld [hl], a                                    ; $79f6: $77
    adc b                                         ; $79f7: $88
    adc b                                         ; $79f8: $88
    adc b                                         ; $79f9: $88
    adc b                                         ; $79fa: $88
    adc b                                         ; $79fb: $88
    adc b                                         ; $79fc: $88
    adc b                                         ; $79fd: $88
    add a                                         ; $79fe: $87
    ld a, b                                       ; $79ff: $78
    add a                                         ; $7a00: $87
    adc b                                         ; $7a01: $88
    add a                                         ; $7a02: $87
    ld [hl], a                                    ; $7a03: $77
    ld [hl], a                                    ; $7a04: $77
    ld [hl], a                                    ; $7a05: $77
    adc b                                         ; $7a06: $88
    add a                                         ; $7a07: $87
    ld [hl], a                                    ; $7a08: $77
    adc b                                         ; $7a09: $88
    adc b                                         ; $7a0a: $88
    adc b                                         ; $7a0b: $88
    add a                                         ; $7a0c: $87
    adc b                                         ; $7a0d: $88
    ld [hl], a                                    ; $7a0e: $77
    ld [hl], a                                    ; $7a0f: $77
    add a                                         ; $7a10: $87
    adc b                                         ; $7a11: $88
    adc b                                         ; $7a12: $88
    ld [hl], a                                    ; $7a13: $77
    ld [hl], a                                    ; $7a14: $77
    ld [hl], a                                    ; $7a15: $77
    adc b                                         ; $7a16: $88
    ld a, b                                       ; $7a17: $78
    adc b                                         ; $7a18: $88
    add a                                         ; $7a19: $87
    ld [hl], a                                    ; $7a1a: $77
    ld [hl], a                                    ; $7a1b: $77
    ld [hl], a                                    ; $7a1c: $77
    add a                                         ; $7a1d: $87
    ld [hl], a                                    ; $7a1e: $77
    ld [hl], a                                    ; $7a1f: $77
    adc b                                         ; $7a20: $88
    ld [hl], a                                    ; $7a21: $77
    adc b                                         ; $7a22: $88
    adc b                                         ; $7a23: $88
    adc b                                         ; $7a24: $88
    add a                                         ; $7a25: $87
    ld [hl], a                                    ; $7a26: $77
    ld [hl], a                                    ; $7a27: $77
    ld a, b                                       ; $7a28: $78
    ld [hl], a                                    ; $7a29: $77
    ld [hl], a                                    ; $7a2a: $77
    add a                                         ; $7a2b: $87
    adc b                                         ; $7a2c: $88
    ld [hl], a                                    ; $7a2d: $77
    ld [hl], a                                    ; $7a2e: $77
    ld [hl], a                                    ; $7a2f: $77
    adc b                                         ; $7a30: $88
    adc b                                         ; $7a31: $88
    adc b                                         ; $7a32: $88
    ld [hl], a                                    ; $7a33: $77

Jump_015_7a34:
    ld a, b                                       ; $7a34: $78
    adc b                                         ; $7a35: $88
    adc b                                         ; $7a36: $88
    ld [hl], a                                    ; $7a37: $77
    ld [hl], a                                    ; $7a38: $77
    ld [hl], a                                    ; $7a39: $77
    ld a, b                                       ; $7a3a: $78
    add a                                         ; $7a3b: $87
    ld a, b                                       ; $7a3c: $78
    adc b                                         ; $7a3d: $88
    add a                                         ; $7a3e: $87
    ld [hl], a                                    ; $7a3f: $77
    add a                                         ; $7a40: $87
    ld [hl], a                                    ; $7a41: $77
    ld [hl], a                                    ; $7a42: $77
    adc b                                         ; $7a43: $88
    adc b                                         ; $7a44: $88
    ld [hl], a                                    ; $7a45: $77
    ld [hl], a                                    ; $7a46: $77
    ld [hl], a                                    ; $7a47: $77
    ld a, b                                       ; $7a48: $78
    adc b                                         ; $7a49: $88
    ld [hl], a                                    ; $7a4a: $77
    adc b                                         ; $7a4b: $88
    adc b                                         ; $7a4c: $88
    ld [hl], a                                    ; $7a4d: $77
    adc b                                         ; $7a4e: $88
    adc b                                         ; $7a4f: $88
    add a                                         ; $7a50: $87
    add a                                         ; $7a51: $87
    ld [hl], a                                    ; $7a52: $77
    add a                                         ; $7a53: $87
    ld [hl], a                                    ; $7a54: $77
    ld [hl], a                                    ; $7a55: $77
    ld [hl], a                                    ; $7a56: $77
    adc b                                         ; $7a57: $88
    adc b                                         ; $7a58: $88
    add a                                         ; $7a59: $87
    ld a, b                                       ; $7a5a: $78
    ld a, b                                       ; $7a5b: $78
    adc b                                         ; $7a5c: $88
    adc b                                         ; $7a5d: $88
    ld a, b                                       ; $7a5e: $78
    adc b                                         ; $7a5f: $88
    adc b                                         ; $7a60: $88
    adc b                                         ; $7a61: $88
    adc b                                         ; $7a62: $88
    ld [hl], a                                    ; $7a63: $77
    add a                                         ; $7a64: $87
    ld a, b                                       ; $7a65: $78
    ld [hl], a                                    ; $7a66: $77
    ld [hl], a                                    ; $7a67: $77
    ld [hl], a                                    ; $7a68: $77
    ld [hl], a                                    ; $7a69: $77
    ld a, b                                       ; $7a6a: $78
    adc b                                         ; $7a6b: $88
    add a                                         ; $7a6c: $87
    ld [hl], a                                    ; $7a6d: $77
    ld [hl], a                                    ; $7a6e: $77
    ld [hl], a                                    ; $7a6f: $77
    adc b                                         ; $7a70: $88
    adc b                                         ; $7a71: $88
    adc b                                         ; $7a72: $88
    ld [hl], a                                    ; $7a73: $77
    ld a, b                                       ; $7a74: $78
    adc b                                         ; $7a75: $88
    adc b                                         ; $7a76: $88
    ld [hl], a                                    ; $7a77: $77
    ld a, b                                       ; $7a78: $78
    add a                                         ; $7a79: $87
    adc b                                         ; $7a7a: $88
    ld a, b                                       ; $7a7b: $78
    adc b                                         ; $7a7c: $88
    add a                                         ; $7a7d: $87
    ld a, b                                       ; $7a7e: $78
    ld [hl], a                                    ; $7a7f: $77
    adc b                                         ; $7a80: $88
    adc b                                         ; $7a81: $88
    adc b                                         ; $7a82: $88
    adc b                                         ; $7a83: $88
    adc b                                         ; $7a84: $88
    adc b                                         ; $7a85: $88
    ld [hl], a                                    ; $7a86: $77
    ld [hl], a                                    ; $7a87: $77
    ld [hl], a                                    ; $7a88: $77
    ld [hl], a                                    ; $7a89: $77
    ld [hl], a                                    ; $7a8a: $77
    add a                                         ; $7a8b: $87
    ld [hl], a                                    ; $7a8c: $77
    add a                                         ; $7a8d: $87
    adc b                                         ; $7a8e: $88
    ld [hl], a                                    ; $7a8f: $77
    adc b                                         ; $7a90: $88
    add a                                         ; $7a91: $87
    ld [hl], a                                    ; $7a92: $77
    ld [hl], a                                    ; $7a93: $77
    ld a, b                                       ; $7a94: $78
    add a                                         ; $7a95: $87
    adc b                                         ; $7a96: $88
    adc b                                         ; $7a97: $88
    ld [hl], a                                    ; $7a98: $77
    add a                                         ; $7a99: $87
    adc b                                         ; $7a9a: $88
    adc b                                         ; $7a9b: $88
    ld [hl], a                                    ; $7a9c: $77
    ld [hl], a                                    ; $7a9d: $77
    ld a, b                                       ; $7a9e: $78
    adc b                                         ; $7a9f: $88
    add a                                         ; $7aa0: $87
    ld [hl], a                                    ; $7aa1: $77
    add a                                         ; $7aa2: $87
    ld [hl], a                                    ; $7aa3: $77
    ld [hl], a                                    ; $7aa4: $77
    ld a, b                                       ; $7aa5: $78
    adc b                                         ; $7aa6: $88
    adc b                                         ; $7aa7: $88
    adc b                                         ; $7aa8: $88
    adc b                                         ; $7aa9: $88
    adc b                                         ; $7aaa: $88
    adc b                                         ; $7aab: $88
    ld [hl], a                                    ; $7aac: $77
    ld [hl], a                                    ; $7aad: $77
    ld [hl], a                                    ; $7aae: $77
    adc b                                         ; $7aaf: $88
    add a                                         ; $7ab0: $87
    ld [hl], a                                    ; $7ab1: $77
    ld a, b                                       ; $7ab2: $78
    ld [hl], a                                    ; $7ab3: $77
    ld [hl], a                                    ; $7ab4: $77
    ld [hl], a                                    ; $7ab5: $77
    ld [hl], a                                    ; $7ab6: $77
    adc b                                         ; $7ab7: $88
    adc b                                         ; $7ab8: $88
    add a                                         ; $7ab9: $87
    ld [hl], a                                    ; $7aba: $77
    ld [hl], a                                    ; $7abb: $77
    ld a, b                                       ; $7abc: $78
    adc b                                         ; $7abd: $88
    adc b                                         ; $7abe: $88
    adc b                                         ; $7abf: $88
    adc b                                         ; $7ac0: $88
    adc b                                         ; $7ac1: $88
    adc b                                         ; $7ac2: $88
    adc b                                         ; $7ac3: $88
    adc b                                         ; $7ac4: $88
    adc b                                         ; $7ac5: $88
    ld a, b                                       ; $7ac6: $78
    ld [hl], a                                    ; $7ac7: $77
    ld [hl], a                                    ; $7ac8: $77
    ld [hl], a                                    ; $7ac9: $77
    ld [hl], a                                    ; $7aca: $77
    ld [hl], a                                    ; $7acb: $77
    add a                                         ; $7acc: $87
    ld [hl], a                                    ; $7acd: $77
    ld [hl], a                                    ; $7ace: $77
    ld [hl], a                                    ; $7acf: $77
    add a                                         ; $7ad0: $87
    ld [hl], a                                    ; $7ad1: $77
    ld [hl], a                                    ; $7ad2: $77
    ld [hl], a                                    ; $7ad3: $77
    ld [hl], a                                    ; $7ad4: $77
    adc b                                         ; $7ad5: $88
    adc b                                         ; $7ad6: $88
    adc b                                         ; $7ad7: $88
    ld a, b                                       ; $7ad8: $78
    add a                                         ; $7ad9: $87
    ld [hl], a                                    ; $7ada: $77
    adc b                                         ; $7adb: $88
    add a                                         ; $7adc: $87
    ld a, b                                       ; $7add: $78
    adc b                                         ; $7ade: $88
    adc b                                         ; $7adf: $88
    add a                                         ; $7ae0: $87
    ld a, b                                       ; $7ae1: $78
    add a                                         ; $7ae2: $87
    ld [hl], a                                    ; $7ae3: $77
    add a                                         ; $7ae4: $87
    ld a, b                                       ; $7ae5: $78
    ld a, b                                       ; $7ae6: $78
    add a                                         ; $7ae7: $87
    ld [hl], a                                    ; $7ae8: $77
    ld [hl], a                                    ; $7ae9: $77
    ld [hl], a                                    ; $7aea: $77
    ld a, b                                       ; $7aeb: $78
    ld a, b                                       ; $7aec: $78
    add a                                         ; $7aed: $87
    adc b                                         ; $7aee: $88
    adc b                                         ; $7aef: $88
    adc b                                         ; $7af0: $88
    adc b                                         ; $7af1: $88
    adc b                                         ; $7af2: $88
    ld [hl], a                                    ; $7af3: $77
    ld [hl], a                                    ; $7af4: $77
    ld [hl], a                                    ; $7af5: $77
    ld [hl], a                                    ; $7af6: $77
    add a                                         ; $7af7: $87
    ld a, b                                       ; $7af8: $78
    adc b                                         ; $7af9: $88
    add a                                         ; $7afa: $87
    adc b                                         ; $7afb: $88
    adc b                                         ; $7afc: $88
    adc b                                         ; $7afd: $88
    adc b                                         ; $7afe: $88
    ld [hl], a                                    ; $7aff: $77
    add a                                         ; $7b00: $87
    ld [hl], a                                    ; $7b01: $77
    ld a, b                                       ; $7b02: $78
    adc b                                         ; $7b03: $88
    adc b                                         ; $7b04: $88
    ld [hl], a                                    ; $7b05: $77
    ld [hl], a                                    ; $7b06: $77
    ld a, b                                       ; $7b07: $78
    adc b                                         ; $7b08: $88
    ld [hl], a                                    ; $7b09: $77
    ld [hl], a                                    ; $7b0a: $77
    ld a, b                                       ; $7b0b: $78
    adc b                                         ; $7b0c: $88
    ld [hl], a                                    ; $7b0d: $77
    ld a, b                                       ; $7b0e: $78
    adc b                                         ; $7b0f: $88
    adc b                                         ; $7b10: $88
    adc b                                         ; $7b11: $88
    adc b                                         ; $7b12: $88
    adc b                                         ; $7b13: $88
    ld [hl], a                                    ; $7b14: $77
    adc b                                         ; $7b15: $88
    adc b                                         ; $7b16: $88
    add a                                         ; $7b17: $87
    ld [hl], a                                    ; $7b18: $77
    ld [hl], a                                    ; $7b19: $77
    ld [hl], a                                    ; $7b1a: $77
    adc b                                         ; $7b1b: $88
    ld a, b                                       ; $7b1c: $78
    add a                                         ; $7b1d: $87
    add a                                         ; $7b1e: $87
    ld a, b                                       ; $7b1f: $78
    adc b                                         ; $7b20: $88
    adc b                                         ; $7b21: $88
    adc b                                         ; $7b22: $88
    adc b                                         ; $7b23: $88
    add a                                         ; $7b24: $87
    ld [hl], a                                    ; $7b25: $77
    ld [hl], a                                    ; $7b26: $77
    ld a, b                                       ; $7b27: $78
    add a                                         ; $7b28: $87
    ld a, b                                       ; $7b29: $78
    adc b                                         ; $7b2a: $88
    adc b                                         ; $7b2b: $88
    adc b                                         ; $7b2c: $88
    adc b                                         ; $7b2d: $88
    adc b                                         ; $7b2e: $88
    adc b                                         ; $7b2f: $88
    add a                                         ; $7b30: $87
    ld [hl], a                                    ; $7b31: $77
    ld [hl], a                                    ; $7b32: $77
    ld [hl], a                                    ; $7b33: $77
    ld [hl], a                                    ; $7b34: $77
    ld [hl], a                                    ; $7b35: $77
    ld [hl], a                                    ; $7b36: $77
    ld [hl], a                                    ; $7b37: $77
    ld [hl], a                                    ; $7b38: $77
    ld a, b                                       ; $7b39: $78
    adc b                                         ; $7b3a: $88
    adc b                                         ; $7b3b: $88
    adc b                                         ; $7b3c: $88
    adc b                                         ; $7b3d: $88
    adc b                                         ; $7b3e: $88
    adc b                                         ; $7b3f: $88
    adc b                                         ; $7b40: $88
    adc b                                         ; $7b41: $88

Jump_015_7b42:
    add a                                         ; $7b42: $87
    adc b                                         ; $7b43: $88
    adc b                                         ; $7b44: $88
    ld [hl], a                                    ; $7b45: $77
    ld [hl], a                                    ; $7b46: $77
    ld [hl], a                                    ; $7b47: $77
    ld [hl], a                                    ; $7b48: $77
    ld [hl], a                                    ; $7b49: $77
    ld [hl], a                                    ; $7b4a: $77
    ld [hl], a                                    ; $7b4b: $77
    adc b                                         ; $7b4c: $88
    ld a, b                                       ; $7b4d: $78
    ld a, b                                       ; $7b4e: $78
    adc b                                         ; $7b4f: $88
    adc b                                         ; $7b50: $88
    adc b                                         ; $7b51: $88
    adc b                                         ; $7b52: $88

Jump_015_7b53:
    add a                                         ; $7b53: $87
    add a                                         ; $7b54: $87
    ld [hl], a                                    ; $7b55: $77
    ld [hl], a                                    ; $7b56: $77
    ld [hl], a                                    ; $7b57: $77
    ld [hl], a                                    ; $7b58: $77
    ld [hl], a                                    ; $7b59: $77
    add a                                         ; $7b5a: $87
    ld [hl], a                                    ; $7b5b: $77
    ld [hl], a                                    ; $7b5c: $77
    ld [hl], a                                    ; $7b5d: $77
    adc b                                         ; $7b5e: $88
    ld [hl], a                                    ; $7b5f: $77
    add a                                         ; $7b60: $87
    ld a, b                                       ; $7b61: $78
    adc b                                         ; $7b62: $88
    adc b                                         ; $7b63: $88
    adc b                                         ; $7b64: $88
    adc b                                         ; $7b65: $88
    adc b                                         ; $7b66: $88
    adc b                                         ; $7b67: $88
    add a                                         ; $7b68: $87
    ld [hl], a                                    ; $7b69: $77
    ld [hl], a                                    ; $7b6a: $77
    ld [hl], a                                    ; $7b6b: $77
    ld a, b                                       ; $7b6c: $78
    adc b                                         ; $7b6d: $88
    adc b                                         ; $7b6e: $88
    add a                                         ; $7b6f: $87
    add a                                         ; $7b70: $87
    ld a, b                                       ; $7b71: $78
    adc b                                         ; $7b72: $88
    adc b                                         ; $7b73: $88
    add a                                         ; $7b74: $87
    adc b                                         ; $7b75: $88
    ld [hl], a                                    ; $7b76: $77
    ld [hl], a                                    ; $7b77: $77
    ld [hl], a                                    ; $7b78: $77
    ld [hl], a                                    ; $7b79: $77
    ld a, b                                       ; $7b7a: $78
    add a                                         ; $7b7b: $87
    ld [hl], a                                    ; $7b7c: $77
    ld a, b                                       ; $7b7d: $78
    adc b                                         ; $7b7e: $88
    add a                                         ; $7b7f: $87
    add a                                         ; $7b80: $87
    ld a, b                                       ; $7b81: $78
    add a                                         ; $7b82: $87
    ld [hl], a                                    ; $7b83: $77
    ld [hl], a                                    ; $7b84: $77
    ld a, b                                       ; $7b85: $78
    add a                                         ; $7b86: $87
    ld [hl], a                                    ; $7b87: $77
    adc b                                         ; $7b88: $88
    adc b                                         ; $7b89: $88
    adc b                                         ; $7b8a: $88
    adc b                                         ; $7b8b: $88
    add a                                         ; $7b8c: $87
    ld [hl], a                                    ; $7b8d: $77
    ld [hl], a                                    ; $7b8e: $77
    ld a, b                                       ; $7b8f: $78
    adc b                                         ; $7b90: $88
    adc b                                         ; $7b91: $88
    adc b                                         ; $7b92: $88
    adc b                                         ; $7b93: $88
    ld [hl], a                                    ; $7b94: $77
    ld [hl], a                                    ; $7b95: $77
    ld [hl], a                                    ; $7b96: $77
    ld [hl], a                                    ; $7b97: $77
    ld a, b                                       ; $7b98: $78
    adc b                                         ; $7b99: $88
    adc b                                         ; $7b9a: $88
    adc b                                         ; $7b9b: $88
    adc b                                         ; $7b9c: $88
    adc b                                         ; $7b9d: $88
    adc b                                         ; $7b9e: $88
    ld [hl], a                                    ; $7b9f: $77
    add a                                         ; $7ba0: $87
    ld [hl], a                                    ; $7ba1: $77
    ld [hl], a                                    ; $7ba2: $77
    ld a, b                                       ; $7ba3: $78
    ld a, b                                       ; $7ba4: $78
    adc b                                         ; $7ba5: $88
    adc b                                         ; $7ba6: $88
    adc b                                         ; $7ba7: $88
    add a                                         ; $7ba8: $87
    ld [hl], a                                    ; $7ba9: $77
    ld [hl], a                                    ; $7baa: $77
    ld a, b                                       ; $7bab: $78
    ld [hl], a                                    ; $7bac: $77
    ld [hl], a                                    ; $7bad: $77
    ld a, b                                       ; $7bae: $78
    add a                                         ; $7baf: $87
    adc b                                         ; $7bb0: $88
    ld a, b                                       ; $7bb1: $78
    adc b                                         ; $7bb2: $88
    adc b                                         ; $7bb3: $88
    adc b                                         ; $7bb4: $88
    add a                                         ; $7bb5: $87
    add a                                         ; $7bb6: $87
    ld [hl], a                                    ; $7bb7: $77
    adc b                                         ; $7bb8: $88
    adc b                                         ; $7bb9: $88
    adc b                                         ; $7bba: $88
    ld [hl], a                                    ; $7bbb: $77
    ld [hl], a                                    ; $7bbc: $77
    ld [hl], a                                    ; $7bbd: $77
    ld [hl], a                                    ; $7bbe: $77
    ld a, b                                       ; $7bbf: $78
    adc b                                         ; $7bc0: $88
    adc b                                         ; $7bc1: $88
    add a                                         ; $7bc2: $87
    ld [hl], a                                    ; $7bc3: $77
    adc b                                         ; $7bc4: $88
    adc b                                         ; $7bc5: $88
    ld [hl], a                                    ; $7bc6: $77
    ld a, b                                       ; $7bc7: $78
    add a                                         ; $7bc8: $87
    adc b                                         ; $7bc9: $88
    ld a, b                                       ; $7bca: $78
    adc b                                         ; $7bcb: $88
    ld a, b                                       ; $7bcc: $78
    ld a, b                                       ; $7bcd: $78
    ld [hl], a                                    ; $7bce: $77
    ld [hl], a                                    ; $7bcf: $77
    adc b                                         ; $7bd0: $88
    ld a, b                                       ; $7bd1: $78
    adc b                                         ; $7bd2: $88
    adc b                                         ; $7bd3: $88
    ld [hl], a                                    ; $7bd4: $77
    add a                                         ; $7bd5: $87
    adc b                                         ; $7bd6: $88
    adc b                                         ; $7bd7: $88
    add a                                         ; $7bd8: $87
    ld [hl], a                                    ; $7bd9: $77
    adc b                                         ; $7bda: $88
    adc b                                         ; $7bdb: $88
    add a                                         ; $7bdc: $87
    adc b                                         ; $7bdd: $88
    adc b                                         ; $7bde: $88
    adc b                                         ; $7bdf: $88
    adc b                                         ; $7be0: $88
    adc b                                         ; $7be1: $88
    adc b                                         ; $7be2: $88
    adc b                                         ; $7be3: $88
    adc b                                         ; $7be4: $88
    adc b                                         ; $7be5: $88
    adc b                                         ; $7be6: $88
    adc b                                         ; $7be7: $88
    adc b                                         ; $7be8: $88
    adc b                                         ; $7be9: $88
    adc b                                         ; $7bea: $88
    adc b                                         ; $7beb: $88
    adc b                                         ; $7bec: $88
    adc b                                         ; $7bed: $88
    adc b                                         ; $7bee: $88
    adc b                                         ; $7bef: $88
    add a                                         ; $7bf0: $87
    add a                                         ; $7bf1: $87
    ld a, b                                       ; $7bf2: $78
    add a                                         ; $7bf3: $87
    adc b                                         ; $7bf4: $88
    ld [hl], a                                    ; $7bf5: $77
    add a                                         ; $7bf6: $87
    ld a, b                                       ; $7bf7: $78
    add a                                         ; $7bf8: $87
    adc b                                         ; $7bf9: $88
    ld [hl], a                                    ; $7bfa: $77
    adc b                                         ; $7bfb: $88
    ld a, b                                       ; $7bfc: $78
    add a                                         ; $7bfd: $87
    ld a, b                                       ; $7bfe: $78
    add a                                         ; $7bff: $87
    adc c                                         ; $7c00: $89
    add a                                         ; $7c01: $87
    adc b                                         ; $7c02: $88
    ld [hl], a                                    ; $7c03: $77
    add a                                         ; $7c04: $87
    ld a, b                                       ; $7c05: $78
    add a                                         ; $7c06: $87
    adc b                                         ; $7c07: $88
    ld [hl], a                                    ; $7c08: $77
    adc b                                         ; $7c09: $88
    ld a, b                                       ; $7c0a: $78
    ld [hl], a                                    ; $7c0b: $77
    ld a, b                                       ; $7c0c: $78
    ld a, b                                       ; $7c0d: $78
    add a                                         ; $7c0e: $87
    ld a, b                                       ; $7c0f: $78
    add a                                         ; $7c10: $87
    adc b                                         ; $7c11: $88
    ld [hl], a                                    ; $7c12: $77
    add a                                         ; $7c13: $87
    ld a, b                                       ; $7c14: $78
    ld [hl], a                                    ; $7c15: $77
    adc b                                         ; $7c16: $88
    ld [hl], a                                    ; $7c17: $77
    add a                                         ; $7c18: $87
    ld a, b                                       ; $7c19: $78
    add a                                         ; $7c1a: $87
    ld a, b                                       ; $7c1b: $78
    ld [hl], a                                    ; $7c1c: $77
    adc b                                         ; $7c1d: $88
    ld [hl], a                                    ; $7c1e: $77
    add a                                         ; $7c1f: $87
    adc b                                         ; $7c20: $88
    add a                                         ; $7c21: $87
    ld a, b                                       ; $7c22: $78
    add a                                         ; $7c23: $87
    adc b                                         ; $7c24: $88
    ld [hl], a                                    ; $7c25: $77
    adc b                                         ; $7c26: $88
    ld a, b                                       ; $7c27: $78
    add a                                         ; $7c28: $87
    adc b                                         ; $7c29: $88
    ld [hl], a                                    ; $7c2a: $77
    sub a                                         ; $7c2b: $97
    ld a, b                                       ; $7c2c: $78
    halt                                          ; $7c2d: $76
    sbc d                                         ; $7c2e: $9a
    ld l, b                                       ; $7c2f: $68

Call_015_7c30:
    add [hl]                                      ; $7c30: $86
    ld e, d                                       ; $7c31: $5a
    sub [hl]                                      ; $7c32: $96
    adc b                                         ; $7c33: $88
    ld h, [hl]                                    ; $7c34: $66
    sbc b                                         ; $7c35: $98
    ld l, c                                       ; $7c36: $69
    sub [hl]                                      ; $7c37: $96
    ld a, c                                       ; $7c38: $79
    ld h, [hl]                                    ; $7c39: $66
    sbc c                                         ; $7c3a: $99
    ld a, b                                       ; $7c3b: $78
    add [hl]                                      ; $7c3c: $86
    ld l, c                                       ; $7c3d: $69
    add a                                         ; $7c3e: $87
    sbc b                                         ; $7c3f: $98
    adc b                                         ; $7c40: $88
    add a                                         ; $7c41: $87
    ld a, c                                       ; $7c42: $79
    add a                                         ; $7c43: $87
    adc b                                         ; $7c44: $88
    ld h, a                                       ; $7c45: $67
    add a                                         ; $7c46: $87
    adc c                                         ; $7c47: $89
    add a                                         ; $7c48: $87
    ld a, b                                       ; $7c49: $78
    ld a, b                                       ; $7c4a: $78
    adc b                                         ; $7c4b: $88
    ld a, b                                       ; $7c4c: $78
    add a                                         ; $7c4d: $87
    ld a, b                                       ; $7c4e: $78
    add a                                         ; $7c4f: $87
    adc b                                         ; $7c50: $88
    ld [hl], a                                    ; $7c51: $77
    adc b                                         ; $7c52: $88
    ld [hl], a                                    ; $7c53: $77
    add a                                         ; $7c54: $87
    ld a, b                                       ; $7c55: $78
    add a                                         ; $7c56: $87
    ld a, b                                       ; $7c57: $78
    ld [hl], a                                    ; $7c58: $77
    add a                                         ; $7c59: $87
    ld a, b                                       ; $7c5a: $78
    add a                                         ; $7c5b: $87
    ld a, b                                       ; $7c5c: $78
    ld [hl], a                                    ; $7c5d: $77
    ld [hl], a                                    ; $7c5e: $77
    sbc c                                         ; $7c5f: $99
    ld d, a                                       ; $7c60: $57
    sub h                                         ; $7c61: $94
    ld l, l                                       ; $7c62: $6d
    sub h                                         ; $7c63: $94
    sbc b                                         ; $7c64: $98
    ld b, l                                       ; $7c65: $45
    ret c                                         ; $7c66: $d8

    ld e, c                                       ; $7c67: $59
    add l                                         ; $7c68: $85
    ld e, h                                       ; $7c69: $5c
    add h                                         ; $7c6a: $84
    xor d                                         ; $7c6b: $aa
    ld b, [hl]                                    ; $7c6c: $46
    push bc                                       ; $7c6d: $c5
    ld c, h                                       ; $7c6e: $4c
    and h                                         ; $7c6f: $a4
    sbc c                                         ; $7c70: $99
    dec [hl]                                      ; $7c71: $35
    ret c                                         ; $7c72: $d8

    ld l, e                                       ; $7c73: $6b
    add e                                         ; $7c74: $83
    ld a, e                                       ; $7c75: $7b
    ld d, a                                       ; $7c76: $57
    rst $00                                       ; $7c77: $c7
    ld e, c                                       ; $7c78: $59
    add l                                         ; $7c79: $85
    ld l, d                                       ; $7c7a: $6a
    ld [hl], a                                    ; $7c7b: $77
    cp c                                          ; $7c7c: $b9
    ld b, l                                       ; $7c7d: $45
    and a                                         ; $7c7e: $a7
    ld a, d                                       ; $7c7f: $7a
    add [hl]                                      ; $7c80: $86
    adc b                                         ; $7c81: $88
    ld e, b                                       ; $7c82: $58
    and a                                         ; $7c83: $a7
    ld l, b                                       ; $7c84: $68
    add a                                         ; $7c85: $87
    adc b                                         ; $7c86: $88
    halt                                          ; $7c87: $76
    sbc b                                         ; $7c88: $98
    ld l, b                                       ; $7c89: $68
    sub [hl]                                      ; $7c8a: $96
    ld l, b                                       ; $7c8b: $68
    ld [hl], a                                    ; $7c8c: $77
    adc b                                         ; $7c8d: $88
    ld [hl], a                                    ; $7c8e: $77
    add a                                         ; $7c8f: $87
    adc b                                         ; $7c90: $88
    add a                                         ; $7c91: $87
    ld a, b                                       ; $7c92: $78
    add a                                         ; $7c93: $87
    ld [hl], a                                    ; $7c94: $77
    ld [hl], a                                    ; $7c95: $77
    adc b                                         ; $7c96: $88
    add a                                         ; $7c97: $87
    adc b                                         ; $7c98: $88
    ld l, b                                       ; $7c99: $68
    call nc, Call_000_335b                        ; $7c9a: $d4 $5b $33
    db $ed                                        ; $7c9d: $ed
    add hl, de                                    ; $7c9e: $19
    or d                                          ; $7c9f: $b2
    ccf                                           ; $7ca0: $3f
    and c                                         ; $7ca1: $a1
    cp d                                          ; $7ca2: $ba
    inc hl                                        ; $7ca3: $23
    ld hl, sp+$1c                                 ; $7ca4: $f8 $1c
    jp nz, Jump_015_425d                          ; $7ca6: $c2 $5d $42

    db $eb                                        ; $7ca9: $eb
    ld a, [hl-]                                   ; $7caa: $3a
    sub c                                         ; $7cab: $91
    ld e, [hl]                                    ; $7cac: $5e
    ld h, a                                       ; $7cad: $67
    add $28                                       ; $7cae: $c6 $28
    and e                                         ; $7cb0: $a3
    sbc l                                         ; $7cb1: $9d
    ld d, [hl]                                    ; $7cb2: $56
    or [hl]                                       ; $7cb3: $b6
    ld c, b                                       ; $7cb4: $48
    sub [hl]                                      ; $7cb5: $96
    xor e                                         ; $7cb6: $ab
    ld h, h                                       ; $7cb7: $64
    adc b                                         ; $7cb8: $88
    ld e, d                                       ; $7cb9: $5a
    or l                                          ; $7cba: $b5
    ld e, c                                       ; $7cbb: $59
    ld [hl], l                                    ; $7cbc: $75
    xor d                                         ; $7cbd: $aa
    ld h, [hl]                                    ; $7cbe: $66
    sub a                                         ; $7cbf: $97
    ld l, b                                       ; $7cc0: $68
    and [hl]                                      ; $7cc1: $a6
    ld l, c                                       ; $7cc2: $69
    add l                                         ; $7cc3: $85
    adc c                                         ; $7cc4: $89
    ld h, a                                       ; $7cc5: $67

jr_015_7cc6:
    sub a                                         ; $7cc6: $97
    ld l, b                                       ; $7cc7: $68
    add a                                         ; $7cc8: $87
    ld a, b                                       ; $7cc9: $78
    add a                                         ; $7cca: $87
    adc b                                         ; $7ccb: $88
    ld [hl], a                                    ; $7ccc: $77
    adc b                                         ; $7ccd: $88
    ld a, b                                       ; $7cce: $78
    add a                                         ; $7ccf: $87
    adc b                                         ; $7cd0: $88
    add [hl]                                      ; $7cd1: $86
    ld a, h                                       ; $7cd2: $7c
    ld d, h                                       ; $7cd3: $54
    or l                                          ; $7cd4: $b5

jr_015_7cd5:
    ld l, $d1                                     ; $7cd5: $2e $d1
    sbc h                                         ; $7cd7: $9c
    inc hl                                        ; $7cd8: $23
    ld a, [$a11c]                                 ; $7cd9: $fa $1c $a1
    ld l, a                                       ; $7cdc: $6f
    ld d, e                                       ; $7cdd: $53
    add sp, $1a                                   ; $7cde: $e8 $1a
    pop bc                                        ; $7ce0: $c1
    ld a, a                                       ; $7ce1: $7f
    ld d, h                                       ; $7ce2: $54
    sub $1a                                       ; $7ce3: $d6 $1a
    db $e3                                        ; $7ce5: $e3
    adc l                                         ; $7ce6: $8d
    ld d, c                                       ; $7ce7: $51
    cp e                                          ; $7ce8: $bb
    add hl, hl                                    ; $7ce9: $29
    call nc, $824c                                ; $7cea: $d4 $4c $82
    xor e                                         ; $7ced: $ab
    jr c, jr_015_7cc6                             ; $7cee: $38 $d6

    ld c, c                                       ; $7cf0: $49
    add h                                         ; $7cf1: $84
    xor h                                         ; $7cf2: $ac
    ld h, l                                       ; $7cf3: $65
    sbc b                                         ; $7cf4: $98
    ld e, b                                       ; $7cf5: $58
    or a                                          ; $7cf6: $b7
    ld l, c                                       ; $7cf7: $69
    add [hl]                                      ; $7cf8: $86
    adc c                                         ; $7cf9: $89
    halt                                          ; $7cfa: $76

jr_015_7cfb:
    adc c                                         ; $7cfb: $89
    ld h, a                                       ; $7cfc: $67
    sub a                                         ; $7cfd: $97
    ld l, b                                       ; $7cfe: $68
    add [hl]                                      ; $7cff: $86
    adc c                                         ; $7d00: $89
    ld h, [hl]                                    ; $7d01: $66
    sbc b                                         ; $7d02: $98
    ld [hl], a                                    ; $7d03: $77
    add a                                         ; $7d04: $87
    ld a, b                                       ; $7d05: $78
    adc b                                         ; $7d06: $88
    add a                                         ; $7d07: $87
    ld [hl], a                                    ; $7d08: $77
    adc b                                         ; $7d09: $88
    add a                                         ; $7d0a: $87
    adc b                                         ; $7d0b: $88
    ld h, [hl]                                    ; $7d0c: $66
    rst $10                                       ; $7d0d: $d7
    dec sp                                        ; $7d0e: $3b
    ld h, c                                       ; $7d0f: $61
    cp a                                          ; $7d10: $bf
    jr z, jr_015_7cd5                             ; $7d11: $28 $c2

    ccf                                           ; $7d13: $3f
    add c                                         ; $7d14: $81
    ret c                                         ; $7d15: $d8

    add hl, bc                                    ; $7d16: $09
    pop hl                                        ; $7d17: $e1
    ld a, [hl]                                    ; $7d18: $7e
    ld b, e                                       ; $7d19: $43
    rst $20                                       ; $7d1a: $e7
    inc e                                         ; $7d1b: $1c
    or c                                          ; $7d1c: $b1
    xor e                                         ; $7d1d: $ab
    dec h                                         ; $7d1e: $25
    push af                                       ; $7d1f: $f5
    ld e, [hl]                                    ; $7d20: $5e
    ld [hl], c                                    ; $7d21: $71
    xor h                                         ; $7d22: $ac
    add hl, hl                                    ; $7d23: $29
    db $d3                                        ; $7d24: $d3
    ld c, l                                       ; $7d25: $4d
    ld [hl], d                                    ; $7d26: $72
    cp d                                          ; $7d27: $ba
    dec hl                                        ; $7d28: $2b
    call nz, Call_015_555a                        ; $7d29: $c4 $5a $55
    jp c, $9547                                   ; $7d2c: $da $47 $95

    ld l, e                                       ; $7d2f: $6b
    sub [hl]                                      ; $7d30: $96
    adc b                                         ; $7d31: $88
    ld h, [hl]                                    ; $7d32: $66
    xor b                                         ; $7d33: $a8
    ld e, b                                       ; $7d34: $58
    sub [hl]                                      ; $7d35: $96
    ld l, c                                       ; $7d36: $69
    add l                                         ; $7d37: $85
    adc c                                         ; $7d38: $89
    ld h, a                                       ; $7d39: $67
    sub a                                         ; $7d3a: $97
    ld l, b                                       ; $7d3b: $68
    add [hl]                                      ; $7d3c: $86
    ld a, b                                       ; $7d3d: $78
    ld [hl], a                                    ; $7d3e: $77
    adc b                                         ; $7d3f: $88
    adc b                                         ; $7d40: $88
    add a                                         ; $7d41: $87
    ld [hl], a                                    ; $7d42: $77
    adc c                                         ; $7d43: $89
    add l                                         ; $7d44: $85
    xor e                                         ; $7d45: $ab
    jr z, jr_015_7cfb                             ; $7d46: $28 $b3

    ld c, a                                       ; $7d48: $4f
    sub d                                         ; $7d49: $92
    cp d                                          ; $7d4a: $ba
    dec h                                         ; $7d4b: $25
    or $3d                                        ; $7d4c: $f6 $3d
    add c                                         ; $7d4e: $81
    adc [hl]                                      ; $7d4f: $8e
    dec [hl]                                      ; $7d50: $35
    sub $2b                                       ; $7d51: $d6 $2b
    pop bc                                        ; $7d53: $c1
    adc [hl]                                      ; $7d54: $8e
    ld b, e                                       ; $7d55: $43
    ret c                                         ; $7d56: $d8

    dec de                                        ; $7d57: $1b
    jp nc, Jump_015_428d                          ; $7d58: $d2 $8d $42

    sra d                                         ; $7d5b: $cb $2a
    call nz, $a23c                                ; $7d5d: $c4 $3c $a2
    xor h                                         ; $7d60: $ac
    dec [hl]                                      ; $7d61: $35
    sub $3b                                       ; $7d62: $d6 $3b
    sub d                                         ; $7d64: $92
    sbc l                                         ; $7d65: $9d
    ld d, l                                       ; $7d66: $55
    and a                                         ; $7d67: $a7
    ld c, e                                       ; $7d68: $4b
    or [hl]                                       ; $7d69: $b6
    ld [hl], a                                    ; $7d6a: $77
    ld h, a                                       ; $7d6b: $67
    xor c                                         ; $7d6c: $a9
    ld [hl], a                                    ; $7d6d: $77
    ld a, b                                       ; $7d6e: $78
    ld [hl], a                                    ; $7d6f: $77
    add a                                         ; $7d70: $87
    ld l, b                                       ; $7d71: $68
    add [hl]                                      ; $7d72: $86
    adc c                                         ; $7d73: $89
    ld h, [hl]                                    ; $7d74: $66
    sbc b                                         ; $7d75: $98
    ld l, c                                       ; $7d76: $69
    add [hl]                                      ; $7d77: $86
    adc b                                         ; $7d78: $88
    ld l, b                                       ; $7d79: $68
    add [hl]                                      ; $7d7a: $86
    ld a, b                                       ; $7d7b: $78
    ld a, b                                       ; $7d7c: $78
    add a                                         ; $7d7d: $87
    halt                                          ; $7d7e: $76
    xor d                                         ; $7d7f: $aa
    ld e, c                                       ; $7d80: $59
    ld [hl], c                                    ; $7d81: $71
    sbc [hl]                                      ; $7d82: $9e
    ld b, a                                       ; $7d83: $47
    jp $823e                                      ; $7d84: $c3 $3e $82


    ret c                                         ; $7d87: $d8

    ld a, [de]                                    ; $7d88: $1a
    jp nc, Jump_000_348d                          ; $7d89: $d2 $8d $34

    add sp, $2c                                   ; $7d8c: $e8 $2c
    or c                                          ; $7d8e: $b1
    adc l                                         ; $7d8f: $8d

jr_015_7d90:
    ld b, h                                       ; $7d90: $44
    add sp, $2b                                   ; $7d91: $e8 $2b
    and c                                         ; $7d93: $a1
    ld a, [hl]                                    ; $7d94: $7e
    ld b, l                                       ; $7d95: $45
    rst $20                                       ; $7d96: $e7
    ld a, [de]                                    ; $7d97: $1a
    jp Jump_015_538d                              ; $7d98: $c3 $8d $53


    xor d                                         ; $7d9b: $aa
    ld c, c                                       ; $7d9c: $49
    or l                                          ; $7d9d: $b5
    ld c, e                                       ; $7d9e: $4b
    and h                                         ; $7d9f: $a4
    adc c                                         ; $7da0: $89
    ld d, [hl]                                    ; $7da1: $56
    ret c                                         ; $7da2: $d8

    ld l, c                                       ; $7da3: $69
    ld [hl], h                                    ; $7da4: $74
    adc e                                         ; $7da5: $8b
    ld l, c                                       ; $7da6: $69
    and l                                         ; $7da7: $a5
    ld e, d                                       ; $7da8: $5a
    halt                                          ; $7da9: $76
    xor b                                         ; $7daa: $a8
    ld c, b                                       ; $7dab: $48
    sub l                                         ; $7dac: $95
    adc c                                         ; $7dad: $89
    ld d, [hl]                                    ; $7dae: $56
    or [hl]                                       ; $7daf: $b6
    ld e, d                                       ; $7db0: $5a
    add h                                         ; $7db1: $84
    sbc c                                         ; $7db2: $99
    ld d, a                                       ; $7db3: $57
    and [hl]                                      ; $7db4: $a6
    ld l, d                                       ; $7db5: $6a
    ld [hl], l                                    ; $7db6: $75
    xor c                                         ; $7db7: $a9
    ld l, b                                       ; $7db8: $68
    sub [hl]                                      ; $7db9: $96
    adc d                                         ; $7dba: $8a
    halt                                          ; $7dbb: $76
    adc c                                         ; $7dbc: $89
    ld [hl], a                                    ; $7dbd: $77
    sub a                                         ; $7dbe: $97
    ld l, c                                       ; $7dbf: $69
    add l                                         ; $7dc0: $85
    adc d                                         ; $7dc1: $8a
    ld d, l                                       ; $7dc2: $55
    cp b                                          ; $7dc3: $b8
    ld c, c                                       ; $7dc4: $49
    and h                                         ; $7dc5: $a4
    ld l, h                                       ; $7dc6: $6c
    ld h, h                                       ; $7dc7: $64
    cp c                                          ; $7dc8: $b9
    jr z, jr_015_7d90                             ; $7dc9: $28 $c5

    ld l, e                                       ; $7dcb: $6b
    ld d, e                                       ; $7dcc: $53
    jp z, $c329                                   ; $7dcd: $ca $29 $c3

    ld e, h                                       ; $7dd0: $5c
    ld h, l                                       ; $7dd1: $65
    ret z                                         ; $7dd2: $c8

    ld c, c                                       ; $7dd3: $49
    and h                                         ; $7dd4: $a4
    adc d                                         ; $7dd5: $8a
    ld d, a                                       ; $7dd6: $57
    or a                                          ; $7dd7: $b7
    ld e, c                                       ; $7dd8: $59
    add a                                         ; $7dd9: $87
    and a                                         ; $7dda: $a7
    ld a, c                                       ; $7ddb: $79
    ld [hl], l                                    ; $7ddc: $75
    sbc b                                         ; $7ddd: $98
    ld e, c                                       ; $7dde: $59
    add l                                         ; $7ddf: $85
    sbc c                                         ; $7de0: $99
    ld c, b                                       ; $7de1: $48
    or l                                          ; $7de2: $b5
    ld a, d                                       ; $7de3: $7a
    ld h, [hl]                                    ; $7de4: $66
    xor b                                         ; $7de5: $a8
    ld l, c                                       ; $7de6: $69
    add l                                         ; $7de7: $85
    ld a, c                                       ; $7de8: $79
    ld h, a                                       ; $7de9: $67
    sub [hl]                                      ; $7dea: $96
    ld l, b                                       ; $7deb: $68
    ld [hl], a                                    ; $7dec: $77
    sub a                                         ; $7ded: $97
    ld l, b                                       ; $7dee: $68
    ld [hl], a                                    ; $7def: $77
    add a                                         ; $7df0: $87
    ld a, b                                       ; $7df1: $78
    add a                                         ; $7df2: $87
    adc b                                         ; $7df3: $88
    ld [hl], a                                    ; $7df4: $77
    adc b                                         ; $7df5: $88
    ld a, b                                       ; $7df6: $78
    add a                                         ; $7df7: $87
    ld a, b                                       ; $7df8: $78
    add a                                         ; $7df9: $87
    adc b                                         ; $7dfa: $88
    ld a, b                                       ; $7dfb: $78
    add [hl]                                      ; $7dfc: $86
    sbc b                                         ; $7dfd: $98
    ld a, b                                       ; $7dfe: $78
    add [hl]                                      ; $7dff: $86
    adc c                                         ; $7e00: $89
    ld l, b                                       ; $7e01: $68
    add [hl]                                      ; $7e02: $86
    adc b                                         ; $7e03: $88
    ld a, b                                       ; $7e04: $78
    sub [hl]                                      ; $7e05: $96
    ld a, b                                       ; $7e06: $78
    ld [hl], a                                    ; $7e07: $77
    add a                                         ; $7e08: $87
    ld a, b                                       ; $7e09: $78
    ld [hl], a                                    ; $7e0a: $77
    adc b                                         ; $7e0b: $88
    ld [hl], a                                    ; $7e0c: $77
    ld [hl], a                                    ; $7e0d: $77
    ld [hl], a                                    ; $7e0e: $77
    adc b                                         ; $7e0f: $88
    add a                                         ; $7e10: $87
    add a                                         ; $7e11: $87
    ld a, c                                       ; $7e12: $79
    add [hl]                                      ; $7e13: $86
    adc b                                         ; $7e14: $88
    ld [hl], a                                    ; $7e15: $77
    sub a                                         ; $7e16: $97
    ld a, c                                       ; $7e17: $79
    add a                                         ; $7e18: $87
    adc c                                         ; $7e19: $89
    ld [hl], a                                    ; $7e1a: $77
    adc b                                         ; $7e1b: $88
    ld a, b                                       ; $7e1c: $78
    add a                                         ; $7e1d: $87
    ld a, b                                       ; $7e1e: $78
    add a                                         ; $7e1f: $87
    adc b                                         ; $7e20: $88
    add a                                         ; $7e21: $87
    adc b                                         ; $7e22: $88
    ld a, b                                       ; $7e23: $78
    add a                                         ; $7e24: $87
    ld a, b                                       ; $7e25: $78
    ld [hl], a                                    ; $7e26: $77
    adc b                                         ; $7e27: $88
    ld [hl], a                                    ; $7e28: $77
    add a                                         ; $7e29: $87
    ld [hl], a                                    ; $7e2a: $77
    ld [hl], a                                    ; $7e2b: $77
    adc b                                         ; $7e2c: $88
    ld [hl], a                                    ; $7e2d: $77
    ld [hl], a                                    ; $7e2e: $77
    ld [hl], a                                    ; $7e2f: $77
    add a                                         ; $7e30: $87
    ld [hl], a                                    ; $7e31: $77
    ld [hl], a                                    ; $7e32: $77
    ld [hl], a                                    ; $7e33: $77
    ld [hl], a                                    ; $7e34: $77
    ld [hl], a                                    ; $7e35: $77
    ld [hl], a                                    ; $7e36: $77
    add a                                         ; $7e37: $87
    ld a, b                                       ; $7e38: $78
    ld [hl], a                                    ; $7e39: $77
    add a                                         ; $7e3a: $87
    ld a, b                                       ; $7e3b: $78
    add a                                         ; $7e3c: $87
    ld a, b                                       ; $7e3d: $78
    ld [hl], a                                    ; $7e3e: $77
    add a                                         ; $7e3f: $87
    adc b                                         ; $7e40: $88
    ld [hl], a                                    ; $7e41: $77
    adc b                                         ; $7e42: $88
    ld a, b                                       ; $7e43: $78
    add a                                         ; $7e44: $87
    adc b                                         ; $7e45: $88
    ld a, b                                       ; $7e46: $78
    add a                                         ; $7e47: $87
    ld a, b                                       ; $7e48: $78
    adc b                                         ; $7e49: $88
    adc b                                         ; $7e4a: $88
    adc b                                         ; $7e4b: $88
    adc b                                         ; $7e4c: $88
    adc b                                         ; $7e4d: $88
    adc b                                         ; $7e4e: $88
    adc b                                         ; $7e4f: $88
    adc b                                         ; $7e50: $88
    adc b                                         ; $7e51: $88
    adc b                                         ; $7e52: $88
    adc b                                         ; $7e53: $88
    adc b                                         ; $7e54: $88
    adc b                                         ; $7e55: $88
    adc b                                         ; $7e56: $88
    add a                                         ; $7e57: $87
    adc b                                         ; $7e58: $88
    ld [hl], a                                    ; $7e59: $77
    ld [hl], a                                    ; $7e5a: $77
    ld a, b                                       ; $7e5b: $78
    add a                                         ; $7e5c: $87
    ld [hl], a                                    ; $7e5d: $77
    ld [hl], a                                    ; $7e5e: $77
    add a                                         ; $7e5f: $87
    add a                                         ; $7e60: $87
    ld [hl], a                                    ; $7e61: $77
    ld [hl], a                                    ; $7e62: $77
    ld [hl], a                                    ; $7e63: $77
    ld [hl], a                                    ; $7e64: $77
    ld [hl], a                                    ; $7e65: $77
    ld [hl], a                                    ; $7e66: $77
    ld a, b                                       ; $7e67: $78
    ld [hl], a                                    ; $7e68: $77
    add a                                         ; $7e69: $87
    ld [hl], a                                    ; $7e6a: $77
    add a                                         ; $7e6b: $87
    ld a, b                                       ; $7e6c: $78
    ld [hl], a                                    ; $7e6d: $77
    adc b                                         ; $7e6e: $88
    ld a, b                                       ; $7e6f: $78
    adc b                                         ; $7e70: $88
    adc b                                         ; $7e71: $88
    add a                                         ; $7e72: $87
    ld a, b                                       ; $7e73: $78
    adc b                                         ; $7e74: $88
    adc b                                         ; $7e75: $88
    add a                                         ; $7e76: $87
    adc b                                         ; $7e77: $88
    adc b                                         ; $7e78: $88
    adc b                                         ; $7e79: $88
    ld [hl], a                                    ; $7e7a: $77
    adc b                                         ; $7e7b: $88
    ld a, b                                       ; $7e7c: $78
    add a                                         ; $7e7d: $87
    adc b                                         ; $7e7e: $88
    adc b                                         ; $7e7f: $88
    add a                                         ; $7e80: $87
    add a                                         ; $7e81: $87
    adc b                                         ; $7e82: $88
    ld [hl], a                                    ; $7e83: $77
    ld a, b                                       ; $7e84: $78
    ld [hl], a                                    ; $7e85: $77
    add a                                         ; $7e86: $87
    ld [hl], a                                    ; $7e87: $77
    ld [hl], a                                    ; $7e88: $77
    ld [hl], a                                    ; $7e89: $77
    ld [hl], a                                    ; $7e8a: $77
    ld [hl], a                                    ; $7e8b: $77
    ld [hl], a                                    ; $7e8c: $77
    ld [hl], a                                    ; $7e8d: $77
    ld [hl], a                                    ; $7e8e: $77
    ld a, b                                       ; $7e8f: $78
    add a                                         ; $7e90: $87
    ld [hl], a                                    ; $7e91: $77
    ld [hl], a                                    ; $7e92: $77
    ld a, b                                       ; $7e93: $78
    adc b                                         ; $7e94: $88
    add a                                         ; $7e95: $87
    ld a, b                                       ; $7e96: $78
    ld a, b                                       ; $7e97: $78
    add a                                         ; $7e98: $87
    ld a, b                                       ; $7e99: $78
    add a                                         ; $7e9a: $87
    adc b                                         ; $7e9b: $88
    adc b                                         ; $7e9c: $88
    adc b                                         ; $7e9d: $88
    adc b                                         ; $7e9e: $88
    adc b                                         ; $7e9f: $88
    adc b                                         ; $7ea0: $88
    adc b                                         ; $7ea1: $88
    adc b                                         ; $7ea2: $88
    adc b                                         ; $7ea3: $88
    adc b                                         ; $7ea4: $88
    adc b                                         ; $7ea5: $88
    adc b                                         ; $7ea6: $88
    adc b                                         ; $7ea7: $88
    adc b                                         ; $7ea8: $88
    adc b                                         ; $7ea9: $88
    adc b                                         ; $7eaa: $88
    adc b                                         ; $7eab: $88
    adc b                                         ; $7eac: $88
    adc b                                         ; $7ead: $88
    adc b                                         ; $7eae: $88
    add a                                         ; $7eaf: $87

jr_015_7eb0:
    add a                                         ; $7eb0: $87
    add a                                         ; $7eb1: $87
    adc b                                         ; $7eb2: $88
    adc b                                         ; $7eb3: $88
    add a                                         ; $7eb4: $87
    ld [hl], a                                    ; $7eb5: $77
    adc b                                         ; $7eb6: $88
    add a                                         ; $7eb7: $87
    ld [hl], a                                    ; $7eb8: $77
    adc b                                         ; $7eb9: $88
    ld h, a                                       ; $7eba: $67
    sub [hl]                                      ; $7ebb: $96
    ld a, c                                       ; $7ebc: $79
    ld h, [hl]                                    ; $7ebd: $66
    cp b                                          ; $7ebe: $b8
    ld e, c                                       ; $7ebf: $59
    sub l                                         ; $7ec0: $95
    ld a, e                                       ; $7ec1: $7b
    ld h, a                                       ; $7ec2: $67
    sub a                                         ; $7ec3: $97
    ld e, c                                       ; $7ec4: $59
    sub l                                         ; $7ec5: $95
    adc b                                         ; $7ec6: $88
    ld d, [hl]                                    ; $7ec7: $56
    or [hl]                                       ; $7ec8: $b6
    ld e, d                                       ; $7ec9: $5a
    sub h                                         ; $7eca: $94
    sbc d                                         ; $7ecb: $9a
    ld d, a                                       ; $7ecc: $57
    and a                                         ; $7ecd: $a7
    adc c                                         ; $7ece: $89
    ld [hl], l                                    ; $7ecf: $75
    xor c                                         ; $7ed0: $a9
    ld l, b                                       ; $7ed1: $68
    ld [hl], l                                    ; $7ed2: $75
    ld a, d                                       ; $7ed3: $7a
    ld d, a                                       ; $7ed4: $57
    and [hl]                                      ; $7ed5: $a6
    ld c, e                                       ; $7ed6: $4b
    sub e                                         ; $7ed7: $93
    xor e                                         ; $7ed8: $ab
    jr z, jr_015_7eb0                             ; $7ed9: $28 $d5

    ld l, e                                       ; $7edb: $6b
    ld d, h                                       ; $7edc: $54
    ret c                                         ; $7edd: $d8

    ld l, c                                       ; $7ede: $69
    ld h, h                                       ; $7edf: $64
    sbc d                                         ; $7ee0: $9a
    ld l, d                                       ; $7ee1: $6a
    add h                                         ; $7ee2: $84
    ld l, d                                       ; $7ee3: $6a
    ld l, c                                       ; $7ee4: $69
    or l                                          ; $7ee5: $b5
    ld e, e                                       ; $7ee6: $5b
    ld h, l                                       ; $7ee7: $65
    ret z                                         ; $7ee8: $c8

    ld c, c                                       ; $7ee9: $49
    sub e                                         ; $7eea: $93
    adc e                                         ; $7eeb: $8b
    ld b, a                                       ; $7eec: $47
    or l                                          ; $7eed: $b5
    ld e, e                                       ; $7eee: $5b
    ld [hl], h                                    ; $7eef: $74
    xor c                                         ; $7ef0: $a9
    ld e, c                                       ; $7ef1: $59
    and l                                         ; $7ef2: $a5
    ld l, d                                       ; $7ef3: $6a
    add a                                         ; $7ef4: $87
    sbc b                                         ; $7ef5: $98
    push bc                                       ; $7ef6: $c5
    ld c, h                                       ; $7ef7: $4c
    ld b, e                                       ; $7ef8: $43
    db $ec                                        ; $7ef9: $ec
    dec de                                        ; $7efa: $1b
    or c                                          ; $7efb: $b1
    ld a, a                                       ; $7efc: $7f
    dec [hl]                                      ; $7efd: $35

jr_015_7efe:
    call nc, $913d                                ; $7efe: $d4 $3d $91
    xor e                                         ; $7f01: $ab
    dec h                                         ; $7f02: $25
    and $3c                                       ; $7f03: $e6 $3c
    sub c                                         ; $7f05: $91
    sbc a                                         ; $7f06: $9f
    inc [hl]                                      ; $7f07: $34
    rst $30                                       ; $7f08: $f7
    dec de                                        ; $7f09: $1b
    jp nz, Jump_015_547e                          ; $7f0a: $c2 $7e $54

    rst $10                                       ; $7f0d: $d7
    add hl, de                                    ; $7f0e: $19
    db $d3                                        ; $7f0f: $d3
    sbc l                                         ; $7f10: $9d
    ld sp, $5abc                                  ; $7f11: $31 $bc $5a
    and l                                         ; $7f14: $a5
    jr z, jr_015_7efe                             ; $7f15: $28 $e7

    sbc d                                         ; $7f17: $9a
    ld h, h                                       ; $7f18: $64
    ld a, c                                       ; $7f19: $79
    ld a, h                                       ; $7f1a: $7c
    add l                                         ; $7f1b: $85
    add a                                         ; $7f1c: $87
    add hl, sp                                    ; $7f1d: $39
    call nc, $636b                                ; $7f1e: $d4 $6b $63
    xor e                                         ; $7f21: $ab
    add hl, hl                                    ; $7f22: $29
    call nz, $633c                                ; $7f23: $c4 $3c $63
    jp c, Jump_015_4953                           ; $7f26: $da $53 $49

    add $aa                                       ; $7f29: $c6 $aa
    ld [hl-], a                                   ; $7f2b: $32
    cp e                                          ; $7f2c: $bb
    dec hl                                        ; $7f2d: $2b
    or d                                          ; $7f2e: $b2
    ld e, [hl]                                    ; $7f2f: $5e
    ld d, h                                       ; $7f30: $54
    rst $30                                       ; $7f31: $f7
    dec bc                                        ; $7f32: $0b
    pop de                                        ; $7f33: $d1
    sbc l                                         ; $7f34: $9d
    inc [hl]                                      ; $7f35: $34
    add sp, $3c                                   ; $7f36: $e8 $3c
    sub d                                         ; $7f38: $92
    adc [hl]                                      ; $7f39: $8e
    ld b, [hl]                                    ; $7f3a: $46
    sub $2b                                       ; $7f3b: $d6 $2b
    pop bc                                        ; $7f3d: $c1
    sbc h                                         ; $7f3e: $9c
    ld b, e                                       ; $7f3f: $43
    ret c                                         ; $7f40: $d8

    inc l                                         ; $7f41: $2c
    and d                                         ; $7f42: $a2
    ld l, l                                       ; $7f43: $6d
    ld b, h                                       ; $7f44: $44
    rst $10                                       ; $7f45: $d7
    ld a, [hl+]                                   ; $7f46: $2a
    or d                                          ; $7f47: $b2
    adc h                                         ; $7f48: $8c
    ld d, h                                       ; $7f49: $54
    cp b                                          ; $7f4a: $b8
    ld c, c                                       ; $7f4b: $49
    or a                                          ; $7f4c: $b7
    ld d, [hl]                                    ; $7f4d: $56
    cp b                                          ; $7f4e: $b8
    ld e, h                                       ; $7f4f: $5c
    and e                                         ; $7f50: $a3
    ld e, h                                       ; $7f51: $5c
    ld d, l                                       ; $7f52: $55
    ret c                                         ; $7f53: $d8

    add hl, sp                                    ; $7f54: $39
    sub e                                         ; $7f55: $93
    sbc l                                         ; $7f56: $9d
    ld h, [hl]                                    ; $7f57: $66
    add [hl]                                      ; $7f58: $86
    ld e, d                                       ; $7f59: $5a
    sbc b                                         ; $7f5a: $98
    add [hl]                                      ; $7f5b: $86
    ld l, b                                       ; $7f5c: $68
    adc b                                         ; $7f5d: $88
    sbc b                                         ; $7f5e: $98
    ld d, l                                       ; $7f5f: $55
    and [hl]                                      ; $7f60: $a6
    ld l, d                                       ; $7f61: $6a
    ld [hl], l                                    ; $7f62: $75
    adc b                                         ; $7f63: $88
    ld l, c                                       ; $7f64: $69
    add [hl]                                      ; $7f65: $86
    sbc b                                         ; $7f66: $98
    ld e, b                                       ; $7f67: $58
    and [hl]                                      ; $7f68: $a6
    ld a, d                                       ; $7f69: $7a
    ld h, [hl]                                    ; $7f6a: $66
    and a                                         ; $7f6b: $a7
    ld l, c                                       ; $7f6c: $69
    add l                                         ; $7f6d: $85
    sbc c                                         ; $7f6e: $99
    ld d, a                                       ; $7f6f: $57
    and [hl]                                      ; $7f70: $a6
    ld l, e                                       ; $7f71: $6b
    ld [hl], l                                    ; $7f72: $75
    adc b                                         ; $7f73: $88
    ld a, b                                       ; $7f74: $78
    sub a                                         ; $7f75: $97
    ld l, b                                       ; $7f76: $68
    sub [hl]                                      ; $7f77: $96
    ld a, c                                       ; $7f78: $79
    halt                                          ; $7f79: $76
    adc b                                         ; $7f7a: $88
    ld l, b                                       ; $7f7b: $68
    sub [hl]                                      ; $7f7c: $96
    ld a, c                                       ; $7f7d: $79
    ld [hl], a                                    ; $7f7e: $77
    sub a                                         ; $7f7f: $97
    ld l, c                                       ; $7f80: $69
    halt                                          ; $7f81: $76
    sbc b                                         ; $7f82: $98
    ld l, b                                       ; $7f83: $68
    sub [hl]                                      ; $7f84: $96
    ld a, b                                       ; $7f85: $78
    ld [hl], a                                    ; $7f86: $77
    adc b                                         ; $7f87: $88
    ld [hl], a                                    ; $7f88: $77
    ld a, b                                       ; $7f89: $78
    add a                                         ; $7f8a: $87
    adc b                                         ; $7f8b: $88
    ld a, b                                       ; $7f8c: $78
    add a                                         ; $7f8d: $87
    adc c                                         ; $7f8e: $89
    ld [hl], a                                    ; $7f8f: $77
    add a                                         ; $7f90: $87
    ld a, b                                       ; $7f91: $78
    add a                                         ; $7f92: $87
    ld a, b                                       ; $7f93: $78
    ld [hl], a                                    ; $7f94: $77
    sbc b                                         ; $7f95: $98
    ld a, b                                       ; $7f96: $78
    add a                                         ; $7f97: $87
    ld a, b                                       ; $7f98: $78
    adc b                                         ; $7f99: $88
    add a                                         ; $7f9a: $87
    ld [hl], a                                    ; $7f9b: $77
    adc b                                         ; $7f9c: $88
    adc b                                         ; $7f9d: $88
    ld [hl], a                                    ; $7f9e: $77
    add a                                         ; $7f9f: $87
    adc c                                         ; $7fa0: $89
    ld [hl], a                                    ; $7fa1: $77
    ld a, b                                       ; $7fa2: $78
    ld a, b                                       ; $7fa3: $78
    add a                                         ; $7fa4: $87
    ld [hl], a                                    ; $7fa5: $77
    ld a, b                                       ; $7fa6: $78
    add a                                         ; $7fa7: $87
    adc b                                         ; $7fa8: $88
    ld [hl], a                                    ; $7fa9: $77
    ld a, b                                       ; $7faa: $78
    add a                                         ; $7fab: $87
    adc b                                         ; $7fac: $88
    ld [hl], a                                    ; $7fad: $77
    add a                                         ; $7fae: $87
    ld a, b                                       ; $7faf: $78
    add a                                         ; $7fb0: $87
    adc b                                         ; $7fb1: $88
    ld [hl], a                                    ; $7fb2: $77
    add a                                         ; $7fb3: $87
    ld a, b                                       ; $7fb4: $78
    add a                                         ; $7fb5: $87
    adc b                                         ; $7fb6: $88
    ld a, b                                       ; $7fb7: $78
    add a                                         ; $7fb8: $87
    ld a, b                                       ; $7fb9: $78
    ld [hl], a                                    ; $7fba: $77
    adc b                                         ; $7fbb: $88
    ld a, b                                       ; $7fbc: $78
    add a                                         ; $7fbd: $87
    ld a, b                                       ; $7fbe: $78
    ld [hl], a                                    ; $7fbf: $77
    sbc b                                         ; $7fc0: $98
    ld a, b                                       ; $7fc1: $78
    add a                                         ; $7fc2: $87
    adc b                                         ; $7fc3: $88
    ld [hl], a                                    ; $7fc4: $77
    add a                                         ; $7fc5: $87
    ld a, b                                       ; $7fc6: $78
    adc b                                         ; $7fc7: $88
    add a                                         ; $7fc8: $87
    ld a, b                                       ; $7fc9: $78
    adc b                                         ; $7fca: $88
    adc b                                         ; $7fcb: $88
    ld [hl], a                                    ; $7fcc: $77
    ld a, b                                       ; $7fcd: $78
    ld a, b                                       ; $7fce: $78
    add a                                         ; $7fcf: $87
    adc b                                         ; $7fd0: $88
    add a                                         ; $7fd1: $87
    adc b                                         ; $7fd2: $88
    ld [hl], a                                    ; $7fd3: $77
    add a                                         ; $7fd4: $87
    ld [hl], a                                    ; $7fd5: $77
    ld [hl], a                                    ; $7fd6: $77
    ld [hl], a                                    ; $7fd7: $77
    ld [hl], a                                    ; $7fd8: $77
    add a                                         ; $7fd9: $87
    ld [hl], a                                    ; $7fda: $77
    add a                                         ; $7fdb: $87
    ld a, b                                       ; $7fdc: $78
    ld [hl], a                                    ; $7fdd: $77
    ld [hl], a                                    ; $7fde: $77
    ld [hl], a                                    ; $7fdf: $77
    add a                                         ; $7fe0: $87
    ld [hl], a                                    ; $7fe1: $77
    ld [hl], a                                    ; $7fe2: $77
    add a                                         ; $7fe3: $87
    ld a, b                                       ; $7fe4: $78
    add a                                         ; $7fe5: $87
    ld a, b                                       ; $7fe6: $78
    ld [hl], a                                    ; $7fe7: $77
    adc b                                         ; $7fe8: $88
    ld a, b                                       ; $7fe9: $78
    ld [hl], a                                    ; $7fea: $77
    ld a, b                                       ; $7feb: $78
    adc b                                         ; $7fec: $88
    adc b                                         ; $7fed: $88
    ld a, b                                       ; $7fee: $78
    adc b                                         ; $7fef: $88
    adc b                                         ; $7ff0: $88
    add a                                         ; $7ff1: $87
    adc b                                         ; $7ff2: $88
    add a                                         ; $7ff3: $87
    adc b                                         ; $7ff4: $88
    adc b                                         ; $7ff5: $88
    add a                                         ; $7ff6: $87
    ld a, b                                       ; $7ff7: $78
    adc b                                         ; $7ff8: $88
    add a                                         ; $7ff9: $87
    adc b                                         ; $7ffa: $88
    adc b                                         ; $7ffb: $88
    adc b                                         ; $7ffc: $88
    ld a, b                                       ; $7ffd: $78
    adc b                                         ; $7ffe: $88
    adc b                                         ; $7fff: $88
