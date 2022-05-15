; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $08b", ROMX[$4000], BANK[$8b]

    adc e                                         ; $4000: $8b
    jr jr_08b_4003                                ; $4001: $18 $00

jr_08b_4003:
    inc d                                         ; $4003: $14
    nop                                           ; $4004: $00
    jr nz, jr_08b_403c                            ; $4005: $20 $35

    pop de                                        ; $4007: $d1
    pop de                                        ; $4008: $d1
    pop de                                        ; $4009: $d1
    pop de                                        ; $400a: $d1
    pop de                                        ; $400b: $d1
    pop de                                        ; $400c: $d1
    pop de                                        ; $400d: $d1
    pop de                                        ; $400e: $d1
    pop de                                        ; $400f: $d1
    pop de                                        ; $4010: $d1
    pop de                                        ; $4011: $d1
    pop de                                        ; $4012: $d1
    pop de                                        ; $4013: $d1
    pop de                                        ; $4014: $d1
    pop de                                        ; $4015: $d1
    pop de                                        ; $4016: $d1
    inc bc                                        ; $4017: $03
    inc bc                                        ; $4018: $03
    inc bc                                        ; $4019: $03
    inc bc                                        ; $401a: $03
    inc bc                                        ; $401b: $03
    inc bc                                        ; $401c: $03
    inc bc                                        ; $401d: $03
    inc bc                                        ; $401e: $03
    inc bc                                        ; $401f: $03
    inc bc                                        ; $4020: $03
    inc bc                                        ; $4021: $03
    inc bc                                        ; $4022: $03
    inc bc                                        ; $4023: $03
    inc bc                                        ; $4024: $03
    inc bc                                        ; $4025: $03
    inc bc                                        ; $4026: $03
    pop de                                        ; $4027: $d1
    jp nc, $d4d3                                  ; $4028: $d2 $d3 $d4

    pop de                                        ; $402b: $d1
    push de                                       ; $402c: $d5
    sub $d7                                       ; $402d: $d6 $d7
    ret c                                         ; $402f: $d8

    reti                                          ; $4030: $d9


    jp c, $dcdb                                   ; $4031: $da $db $dc

    db $dd                                        ; $4034: $dd
    sbc $df                                       ; $4035: $de $df
    inc bc                                        ; $4037: $03
    add d                                         ; $4038: $82
    add d                                         ; $4039: $82
    add d                                         ; $403a: $82
    inc bc                                        ; $403b: $03

jr_08b_403c:
    add d                                         ; $403c: $82
    add d                                         ; $403d: $82
    add d                                         ; $403e: $82
    add d                                         ; $403f: $82
    add d                                         ; $4040: $82
    add d                                         ; $4041: $82
    add d                                         ; $4042: $82
    add d                                         ; $4043: $82
    add d                                         ; $4044: $82
    add d                                         ; $4045: $82
    add d                                         ; $4046: $82
    pop de                                        ; $4047: $d1
    pop de                                        ; $4048: $d1
    ret c                                         ; $4049: $d8

    reti                                          ; $404a: $d9


    pop de                                        ; $404b: $d1
    pop de                                        ; $404c: $d1
    call c, $e0dd                                 ; $404d: $dc $dd $e0
    pop de                                        ; $4050: $d1
    pop hl                                        ; $4051: $e1
    ld [c], a                                     ; $4052: $e2
    db $e3                                        ; $4053: $e3
    db $e4                                        ; $4054: $e4
    push hl                                       ; $4055: $e5
    and $03                                       ; $4056: $e6 $03
    inc bc                                        ; $4058: $03
    add d                                         ; $4059: $82
    add d                                         ; $405a: $82
    inc bc                                        ; $405b: $03
    inc bc                                        ; $405c: $03
    add d                                         ; $405d: $82
    add d                                         ; $405e: $82
    add d                                         ; $405f: $82
    inc bc                                        ; $4060: $03
    add d                                         ; $4061: $82
    add d                                         ; $4062: $82
    add d                                         ; $4063: $82
    and d                                         ; $4064: $a2
    add d                                         ; $4065: $82
    add d                                         ; $4066: $82
    jp c, $e0db                                   ; $4067: $da $db $e0

    pop de                                        ; $406a: $d1
    sbc $df                                       ; $406b: $de $df
    db $e3                                        ; $406d: $e3
    db $e4                                        ; $406e: $e4
    rst $20                                       ; $406f: $e7
    add sp, -$2d                                  ; $4070: $e8 $d3
    call nc, $eae9                                ; $4072: $d4 $e9 $ea
    sub $d7                                       ; $4075: $d6 $d7
    add d                                         ; $4077: $82
    add d                                         ; $4078: $82
    add d                                         ; $4079: $82
    inc bc                                        ; $407a: $03
    add d                                         ; $407b: $82
    add d                                         ; $407c: $82
    add d                                         ; $407d: $82
    and d                                         ; $407e: $a2
    add d                                         ; $407f: $82
    add d                                         ; $4080: $82
    add d                                         ; $4081: $82
    add d                                         ; $4082: $82
    add d                                         ; $4083: $82
    add d                                         ; $4084: $82
    add d                                         ; $4085: $82
    add d                                         ; $4086: $82
    pop de                                        ; $4087: $d1
    pop de                                        ; $4088: $d1
    pop de                                        ; $4089: $d1
    pop de                                        ; $408a: $d1
    pop de                                        ; $408b: $d1
    pop de                                        ; $408c: $d1
    pop de                                        ; $408d: $d1
    pop de                                        ; $408e: $d1
    ldh [$d1], a                                  ; $408f: $e0 $d1
    pop de                                        ; $4091: $d1
    pop de                                        ; $4092: $d1
    db $eb                                        ; $4093: $eb
    db $e4                                        ; $4094: $e4
    pop de                                        ; $4095: $d1
    pop de                                        ; $4096: $d1
    inc bc                                        ; $4097: $03
    inc bc                                        ; $4098: $03
    inc bc                                        ; $4099: $03
    inc bc                                        ; $409a: $03
    inc bc                                        ; $409b: $03
    inc bc                                        ; $409c: $03
    inc bc                                        ; $409d: $03
    inc bc                                        ; $409e: $03
    add d                                         ; $409f: $82
    inc bc                                        ; $40a0: $03
    inc bc                                        ; $40a1: $03
    inc bc                                        ; $40a2: $03
    add d                                         ; $40a3: $82
    and d                                         ; $40a4: $a2
    inc bc                                        ; $40a5: $03
    inc bc                                        ; $40a6: $03
    pop hl                                        ; $40a7: $e1
    ld [c], a                                     ; $40a8: $e2
    rst $20                                       ; $40a9: $e7
    add sp, -$1b                                  ; $40aa: $e8 $e5
    and $e9                                       ; $40ac: $e6 $e9
    ld [$d1d1], a                                 ; $40ae: $ea $d1 $d1
    db $ec                                        ; $40b1: $ec
    reti                                          ; $40b2: $d9


    pop de                                        ; $40b3: $d1
    pop de                                        ; $40b4: $d1
    db $ed                                        ; $40b5: $ed
    db $dd                                        ; $40b6: $dd
    add d                                         ; $40b7: $82
    add d                                         ; $40b8: $82
    add d                                         ; $40b9: $82
    add d                                         ; $40ba: $82
    add d                                         ; $40bb: $82
    add d                                         ; $40bc: $82
    add d                                         ; $40bd: $82
    add d                                         ; $40be: $82
    inc bc                                        ; $40bf: $03
    inc bc                                        ; $40c0: $03
    inc bc                                        ; $40c1: $03
    add d                                         ; $40c2: $82
    inc bc                                        ; $40c3: $03
    inc bc                                        ; $40c4: $03
    add d                                         ; $40c5: $82
    add d                                         ; $40c6: $82
    db $d3                                        ; $40c7: $d3
    call nc, $d1d1                                ; $40c8: $d4 $d1 $d1
    sub $d7                                       ; $40cb: $d6 $d7
    pop de                                        ; $40cd: $d1
    pop de                                        ; $40ce: $d1
    jp c, $d1db                                   ; $40cf: $da $db $d1

    pop de                                        ; $40d2: $d1
    sbc $ee                                       ; $40d3: $de $ee
    rst $28                                       ; $40d5: $ef
    jp nc, $8282                                  ; $40d6: $d2 $82 $82

    inc bc                                        ; $40d9: $03
    inc bc                                        ; $40da: $03
    add d                                         ; $40db: $82
    add d                                         ; $40dc: $82
    inc bc                                        ; $40dd: $03
    inc bc                                        ; $40de: $03
    add d                                         ; $40df: $82
    add d                                         ; $40e0: $82
    inc bc                                        ; $40e1: $03
    inc bc                                        ; $40e2: $03
    add d                                         ; $40e3: $82
    add d                                         ; $40e4: $82
    add d                                         ; $40e5: $82
    add d                                         ; $40e6: $82
    db $ec                                        ; $40e7: $ec
    reti                                          ; $40e8: $d9


    jp c, $eddb                                   ; $40e9: $da $db $ed

    db $dd                                        ; $40ec: $dd
    sbc $ee                                       ; $40ed: $de $ee
    ldh a, [$f1]                                  ; $40ef: $f0 $f1
    rst $20                                       ; $40f1: $e7
    ld a, [c]                                     ; $40f2: $f2
    db $d3                                        ; $40f3: $d3
    di                                            ; $40f4: $f3
    jp hl                                         ; $40f5: $e9


    db $f4                                        ; $40f6: $f4
    inc bc                                        ; $40f7: $03
    add d                                         ; $40f8: $82
    add d                                         ; $40f9: $82
    add d                                         ; $40fa: $82
    add d                                         ; $40fb: $82
    add d                                         ; $40fc: $82
    add d                                         ; $40fd: $82
    add d                                         ; $40fe: $82
    add d                                         ; $40ff: $82
    add d                                         ; $4100: $82
    add d                                         ; $4101: $82
    add d                                         ; $4102: $82
    add d                                         ; $4103: $82
    add d                                         ; $4104: $82
    add d                                         ; $4105: $82
    add d                                         ; $4106: $82
    db $d3                                        ; $4107: $d3
    call nc, $d1d1                                ; $4108: $d4 $d1 $d1
    sub $d7                                       ; $410b: $d6 $d7
    pop de                                        ; $410d: $d1
    pop de                                        ; $410e: $d1
    jp c, $e0db                                   ; $410f: $da $db $e0

    pop de                                        ; $4112: $d1
    sbc $df                                       ; $4113: $de $df
    db $e3                                        ; $4115: $e3
    db $e4                                        ; $4116: $e4
    add d                                         ; $4117: $82
    add d                                         ; $4118: $82
    inc bc                                        ; $4119: $03
    inc bc                                        ; $411a: $03
    add d                                         ; $411b: $82
    add d                                         ; $411c: $82
    inc bc                                        ; $411d: $03
    inc bc                                        ; $411e: $03
    add d                                         ; $411f: $82
    add d                                         ; $4120: $82
    add d                                         ; $4121: $82
    inc bc                                        ; $4122: $03
    add d                                         ; $4123: $82
    add d                                         ; $4124: $82
    add d                                         ; $4125: $82
    and d                                         ; $4126: $a2
    pop de                                        ; $4127: $d1
    pop de                                        ; $4128: $d1
    ldh a, [$f1]                                  ; $4129: $f0 $f1
    pop de                                        ; $412b: $d1
    jp nc, $f3d3                                  ; $412c: $d2 $d3 $f3

    pop de                                        ; $412f: $d1
    push de                                       ; $4130: $d5
    sub $d7                                       ; $4131: $d6 $d7
    pop de                                        ; $4133: $d1
    reti                                          ; $4134: $d9


    jp c, Jump_000_03db                           ; $4135: $da $db $03

    inc bc                                        ; $4138: $03
    add d                                         ; $4139: $82
    add d                                         ; $413a: $82
    inc bc                                        ; $413b: $03
    add d                                         ; $413c: $82
    add d                                         ; $413d: $82
    add d                                         ; $413e: $82
    inc bc                                        ; $413f: $03
    add d                                         ; $4140: $82
    add d                                         ; $4141: $82
    add d                                         ; $4142: $82
    inc bc                                        ; $4143: $03
    add d                                         ; $4144: $82
    add d                                         ; $4145: $82
    add d                                         ; $4146: $82
    rst $20                                       ; $4147: $e7
    ld a, [c]                                     ; $4148: $f2
    push af                                       ; $4149: $f5
    push de                                       ; $414a: $d5
    jp hl                                         ; $414b: $e9


    db $f4                                        ; $414c: $f4
    or $d9                                        ; $414d: $f6 $d9
    rst $30                                       ; $414f: $f7
    pop de                                        ; $4150: $d1
    call c, $d1dd                                 ; $4151: $dc $dd $d1
    pop de                                        ; $4154: $d1
    pop hl                                        ; $4155: $e1
    ld [c], a                                     ; $4156: $e2
    add d                                         ; $4157: $82
    add d                                         ; $4158: $82
    add d                                         ; $4159: $82
    add d                                         ; $415a: $82
    add d                                         ; $415b: $82
    add d                                         ; $415c: $82
    add d                                         ; $415d: $82
    add d                                         ; $415e: $82
    inc bc                                        ; $415f: $03
    inc bc                                        ; $4160: $03
    add d                                         ; $4161: $82
    add d                                         ; $4162: $82
    add d                                         ; $4163: $82
    inc bc                                        ; $4164: $03
    add d                                         ; $4165: $82
    add d                                         ; $4166: $82
    sub $d7                                       ; $4167: $d6 $d7
    rst $30                                       ; $4169: $f7
    pop de                                        ; $416a: $d1
    jp c, $d1db                                   ; $416b: $da $db $d1

    pop de                                        ; $416e: $d1
    sbc $ee                                       ; $416f: $de $ee
    rst $28                                       ; $4171: $ef
    pop de                                        ; $4172: $d1
    rst $20                                       ; $4173: $e7
    ld a, [c]                                     ; $4174: $f2
    push af                                       ; $4175: $f5
    pop de                                        ; $4176: $d1
    add d                                         ; $4177: $82
    add d                                         ; $4178: $82
    inc bc                                        ; $4179: $03
    inc bc                                        ; $417a: $03
    add d                                         ; $417b: $82
    add d                                         ; $417c: $82
    add d                                         ; $417d: $82
    inc bc                                        ; $417e: $03
    add d                                         ; $417f: $82
    add d                                         ; $4180: $82
    add d                                         ; $4181: $82
    inc bc                                        ; $4182: $03
    add d                                         ; $4183: $82
    add d                                         ; $4184: $82
    add d                                         ; $4185: $82
    inc bc                                        ; $4186: $03
    rst $20                                       ; $4187: $e7
    add sp, -$2d                                  ; $4188: $e8 $d3
    call nc, $eae9                                ; $418a: $d4 $e9 $ea
    sub $d7                                       ; $418d: $d6 $d7
    db $ec                                        ; $418f: $ec
    reti                                          ; $4190: $d9


    jp c, $eddb                                   ; $4191: $da $db $ed

    db $dd                                        ; $4194: $dd
    sbc $ee                                       ; $4195: $de $ee
    add d                                         ; $4197: $82
    add d                                         ; $4198: $82
    add d                                         ; $4199: $82
    add d                                         ; $419a: $82
    add d                                         ; $419b: $82
    add d                                         ; $419c: $82
    add d                                         ; $419d: $82
    add d                                         ; $419e: $82
    inc bc                                        ; $419f: $03
    add d                                         ; $41a0: $82
    add d                                         ; $41a1: $82
    add d                                         ; $41a2: $82
    add d                                         ; $41a3: $82
    add d                                         ; $41a4: $82
    add d                                         ; $41a5: $82
    add d                                         ; $41a6: $82
    call c, $dedd                                 ; $41a7: $dc $dd $de
    xor $e1                                       ; $41aa: $ee $e1
    ld [c], a                                     ; $41ac: $e2
    rst $20                                       ; $41ad: $e7
    ld a, [c]                                     ; $41ae: $f2
    push hl                                       ; $41af: $e5
    and $e9                                       ; $41b0: $e6 $e9
    db $f4                                        ; $41b2: $f4
    rst $28                                       ; $41b3: $ef
    pop de                                        ; $41b4: $d1
    rst $30                                       ; $41b5: $f7
    pop de                                        ; $41b6: $d1
    add d                                         ; $41b7: $82
    add d                                         ; $41b8: $82
    add d                                         ; $41b9: $82
    add d                                         ; $41ba: $82
    add d                                         ; $41bb: $82
    add d                                         ; $41bc: $82
    add d                                         ; $41bd: $82
    add d                                         ; $41be: $82
    add d                                         ; $41bf: $82
    add d                                         ; $41c0: $82
    add d                                         ; $41c1: $82
    add d                                         ; $41c2: $82
    add d                                         ; $41c3: $82
    inc bc                                        ; $41c4: $03
    inc bc                                        ; $41c5: $03
    inc bc                                        ; $41c6: $03
    rst $28                                       ; $41c7: $ef
    pop de                                        ; $41c8: $d1
    push hl                                       ; $41c9: $e5
    and $f5                                       ; $41ca: $e6 $f5
    pop de                                        ; $41cc: $d1
    pop de                                        ; $41cd: $d1
    pop de                                        ; $41ce: $d1
    or $d1                                        ; $41cf: $f6 $d1
    pop de                                        ; $41d1: $d1
    pop de                                        ; $41d2: $d1
    pop de                                        ; $41d3: $d1
    pop de                                        ; $41d4: $d1
    pop de                                        ; $41d5: $d1
    pop de                                        ; $41d6: $d1
    add d                                         ; $41d7: $82
    inc bc                                        ; $41d8: $03
    add d                                         ; $41d9: $82
    add d                                         ; $41da: $82
    add d                                         ; $41db: $82
    inc bc                                        ; $41dc: $03
    inc bc                                        ; $41dd: $03
    inc bc                                        ; $41de: $03
    add d                                         ; $41df: $82
    inc bc                                        ; $41e0: $03
    inc bc                                        ; $41e1: $03
    inc bc                                        ; $41e2: $03
    inc bc                                        ; $41e3: $03
    inc bc                                        ; $41e4: $03
    inc bc                                        ; $41e5: $03
    inc bc                                        ; $41e6: $03
    jp hl                                         ; $41e7: $e9


    db $f4                                        ; $41e8: $f4
    or $d1                                        ; $41e9: $f6 $d1
    rst $30                                       ; $41eb: $f7
    pop de                                        ; $41ec: $d1
    pop de                                        ; $41ed: $d1
    pop de                                        ; $41ee: $d1
    pop de                                        ; $41ef: $d1
    pop de                                        ; $41f0: $d1
    ld hl, sp-$07                                 ; $41f1: $f8 $f9
    pop de                                        ; $41f3: $d1
    pop de                                        ; $41f4: $d1
    ld a, [$82fb]                                 ; $41f5: $fa $fb $82
    add d                                         ; $41f8: $82
    add d                                         ; $41f9: $82
    inc bc                                        ; $41fa: $03
    inc bc                                        ; $41fb: $03
    inc bc                                        ; $41fc: $03
    inc bc                                        ; $41fd: $03
    inc bc                                        ; $41fe: $03
    inc bc                                        ; $41ff: $03
    inc bc                                        ; $4200: $03
    ld bc, $0301                                  ; $4201: $01 $01 $03
    inc bc                                        ; $4204: $03
    ld bc, $d101                                  ; $4205: $01 $01 $d1
    pop de                                        ; $4208: $d1
    pop de                                        ; $4209: $d1
    pop de                                        ; $420a: $d1
    pop de                                        ; $420b: $d1
    pop de                                        ; $420c: $d1
    pop de                                        ; $420d: $d1
    ret c                                         ; $420e: $d8

    pop de                                        ; $420f: $d1
    pop de                                        ; $4210: $d1
    pop de                                        ; $4211: $d1
    call c, $d1d1                                 ; $4212: $dc $d1 $d1
    pop de                                        ; $4215: $d1
    pop hl                                        ; $4216: $e1
    inc bc                                        ; $4217: $03
    inc bc                                        ; $4218: $03
    inc bc                                        ; $4219: $03
    inc bc                                        ; $421a: $03
    inc bc                                        ; $421b: $03
    inc bc                                        ; $421c: $03
    inc bc                                        ; $421d: $03
    add d                                         ; $421e: $82
    inc bc                                        ; $421f: $03
    inc bc                                        ; $4220: $03
    inc bc                                        ; $4221: $03
    add d                                         ; $4222: $82
    inc bc                                        ; $4223: $03
    inc bc                                        ; $4224: $03
    inc bc                                        ; $4225: $03
    add d                                         ; $4226: $82
    push de                                       ; $4227: $d5
    sub $d7                                       ; $4228: $d6 $d7
    push hl                                       ; $422a: $e5
    reti                                          ; $422b: $d9


    jp c, $d1db                                   ; $422c: $da $db $d1

    db $dd                                        ; $422f: $dd
    sbc $ee                                       ; $4230: $de $ee
    rst $28                                       ; $4232: $ef
    ld [c], a                                     ; $4233: $e2
    rst $20                                       ; $4234: $e7
    ld a, [c]                                     ; $4235: $f2
    push af                                       ; $4236: $f5
    add d                                         ; $4237: $82
    add d                                         ; $4238: $82
    add d                                         ; $4239: $82
    add d                                         ; $423a: $82
    add d                                         ; $423b: $82
    add d                                         ; $423c: $82
    add d                                         ; $423d: $82
    inc bc                                        ; $423e: $03
    add d                                         ; $423f: $82
    add d                                         ; $4240: $82
    add d                                         ; $4241: $82
    add d                                         ; $4242: $82
    add d                                         ; $4243: $82
    add d                                         ; $4244: $82
    add d                                         ; $4245: $82
    add d                                         ; $4246: $82
    and $e9                                       ; $4247: $e6 $e9
    ld [$d1d6], a                                 ; $4249: $ea $d6 $d1
    db $ec                                        ; $424c: $ec
    reti                                          ; $424d: $d9


    jp c, $edd1                                   ; $424e: $da $d1 $ed

    db $dd                                        ; $4251: $dd
    sbc $d1                                       ; $4252: $de $d1
    ldh a, [$f1]                                  ; $4254: $f0 $f1
    rst $20                                       ; $4256: $e7
    add d                                         ; $4257: $82
    add d                                         ; $4258: $82
    add d                                         ; $4259: $82
    add d                                         ; $425a: $82
    inc bc                                        ; $425b: $03
    inc bc                                        ; $425c: $03
    add d                                         ; $425d: $82
    add d                                         ; $425e: $82
    inc bc                                        ; $425f: $03
    add d                                         ; $4260: $82
    add d                                         ; $4261: $82
    add d                                         ; $4262: $82
    inc bc                                        ; $4263: $03
    add d                                         ; $4264: $82
    add d                                         ; $4265: $82
    add d                                         ; $4266: $82
    rst $10                                       ; $4267: $d7
    pop de                                        ; $4268: $d1
    pop de                                        ; $4269: $d1
    pop de                                        ; $426a: $d1
    db $db                                        ; $426b: $db
    pop de                                        ; $426c: $d1
    pop de                                        ; $426d: $d1
    pop de                                        ; $426e: $d1
    xor $ef                                       ; $426f: $ee $ef
    pop de                                        ; $4271: $d1
    pop de                                        ; $4272: $d1
    ld a, [c]                                     ; $4273: $f2
    push af                                       ; $4274: $f5
    pop de                                        ; $4275: $d1
    ret c                                         ; $4276: $d8

    add d                                         ; $4277: $82
    inc bc                                        ; $4278: $03
    inc bc                                        ; $4279: $03
    inc bc                                        ; $427a: $03
    add d                                         ; $427b: $82
    inc bc                                        ; $427c: $03
    inc bc                                        ; $427d: $03
    inc bc                                        ; $427e: $03
    add d                                         ; $427f: $82
    add d                                         ; $4280: $82
    inc bc                                        ; $4281: $03
    inc bc                                        ; $4282: $03
    add d                                         ; $4283: $82
    add d                                         ; $4284: $82
    inc bc                                        ; $4285: $03
    add d                                         ; $4286: $82
    pop de                                        ; $4287: $d1
    pop de                                        ; $4288: $d1
    ldh [$e5], a                                  ; $4289: $e0 $e5
    rst $28                                       ; $428b: $ef
    db $e4                                        ; $428c: $e4
    db $eb                                        ; $428d: $eb
    db $e4                                        ; $428e: $e4
    push af                                       ; $428f: $f5
    jp nc, $d4d3                                  ; $4290: $d2 $d3 $d4

    or $d5                                        ; $4293: $f6 $d5
    sub $d7                                       ; $4295: $d6 $d7
    inc bc                                        ; $4297: $03
    inc bc                                        ; $4298: $03
    add d                                         ; $4299: $82
    add d                                         ; $429a: $82
    add d                                         ; $429b: $82
    add d                                         ; $429c: $82
    add d                                         ; $429d: $82
    and d                                         ; $429e: $a2
    add d                                         ; $429f: $82
    add d                                         ; $42a0: $82
    add d                                         ; $42a1: $82
    add d                                         ; $42a2: $82
    add d                                         ; $42a3: $82
    add d                                         ; $42a4: $82
    add d                                         ; $42a5: $82
    add d                                         ; $42a6: $82
    and $e9                                       ; $42a7: $e6 $e9
    db $f4                                        ; $42a9: $f4
    or $d1                                        ; $42aa: $f6 $d1
    rst $30                                       ; $42ac: $f7
    pop de                                        ; $42ad: $d1
    pop de                                        ; $42ae: $d1
    pop de                                        ; $42af: $d1
    pop de                                        ; $42b0: $d1
    pop de                                        ; $42b1: $d1
    pop de                                        ; $42b2: $d1
    pop de                                        ; $42b3: $d1
    pop de                                        ; $42b4: $d1
    pop de                                        ; $42b5: $d1
    call c, $8282                                 ; $42b6: $dc $82 $82
    add d                                         ; $42b9: $82
    add d                                         ; $42ba: $82
    inc bc                                        ; $42bb: $03
    inc bc                                        ; $42bc: $03
    inc bc                                        ; $42bd: $03
    inc bc                                        ; $42be: $03
    inc bc                                        ; $42bf: $03
    inc bc                                        ; $42c0: $03
    inc bc                                        ; $42c1: $03
    inc bc                                        ; $42c2: $03
    inc bc                                        ; $42c3: $03
    inc bc                                        ; $42c4: $03
    inc bc                                        ; $42c5: $03
    add d                                         ; $42c6: $82
    jp nc, $f3d3                                  ; $42c7: $d2 $d3 $f3

    jp hl                                         ; $42ca: $e9


    push de                                       ; $42cb: $d5
    sub $d7                                       ; $42cc: $d6 $d7
    rst $30                                       ; $42ce: $f7
    reti                                          ; $42cf: $d9


    jp c, $d1db                                   ; $42d0: $da $db $d1

    db $dd                                        ; $42d3: $dd
    sbc $ee                                       ; $42d4: $de $ee
    rst $28                                       ; $42d6: $ef
    add d                                         ; $42d7: $82
    add d                                         ; $42d8: $82
    add d                                         ; $42d9: $82
    add d                                         ; $42da: $82
    add d                                         ; $42db: $82
    add d                                         ; $42dc: $82
    add d                                         ; $42dd: $82
    inc bc                                        ; $42de: $03
    add d                                         ; $42df: $82
    add d                                         ; $42e0: $82
    add d                                         ; $42e1: $82
    add d                                         ; $42e2: $82
    add d                                         ; $42e3: $82
    add d                                         ; $42e4: $82
    add d                                         ; $42e5: $82
    add d                                         ; $42e6: $82
    db $f4                                        ; $42e7: $f4
    or $d1                                        ; $42e8: $f6 $d1
    call c, $d1d1                                 ; $42ea: $dc $d1 $d1
    pop de                                        ; $42ed: $d1
    pop hl                                        ; $42ee: $e1
    pop de                                        ; $42ef: $d1
    pop de                                        ; $42f0: $d1
    pop de                                        ; $42f1: $d1
    push hl                                       ; $42f2: $e5
    pop de                                        ; $42f3: $d1
    pop de                                        ; $42f4: $d1
    pop de                                        ; $42f5: $d1
    pop de                                        ; $42f6: $d1
    add d                                         ; $42f7: $82
    add d                                         ; $42f8: $82
    inc bc                                        ; $42f9: $03
    add d                                         ; $42fa: $82
    inc bc                                        ; $42fb: $03
    inc bc                                        ; $42fc: $03
    inc bc                                        ; $42fd: $03
    add d                                         ; $42fe: $82
    inc bc                                        ; $42ff: $03
    inc bc                                        ; $4300: $03
    inc bc                                        ; $4301: $03
    add d                                         ; $4302: $82
    inc bc                                        ; $4303: $03
    inc bc                                        ; $4304: $03
    inc bc                                        ; $4305: $03
    inc bc                                        ; $4306: $03
    ret c                                         ; $4307: $d8

    reti                                          ; $4308: $d9


    jp c, $dcdb                                   ; $4309: $da $db $dc

    db $dd                                        ; $430c: $dd
    sbc $ee                                       ; $430d: $de $ee
    pop hl                                        ; $430f: $e1
    ld [c], a                                     ; $4310: $e2
    rst $20                                       ; $4311: $e7
    ld a, [c]                                     ; $4312: $f2
    push hl                                       ; $4313: $e5
    and $e9                                       ; $4314: $e6 $e9
    db $f4                                        ; $4316: $f4
    add d                                         ; $4317: $82
    add d                                         ; $4318: $82
    add d                                         ; $4319: $82
    add d                                         ; $431a: $82
    add d                                         ; $431b: $82
    add d                                         ; $431c: $82
    add d                                         ; $431d: $82
    add d                                         ; $431e: $82
    add d                                         ; $431f: $82
    add d                                         ; $4320: $82
    add d                                         ; $4321: $82
    add d                                         ; $4322: $82
    add d                                         ; $4323: $82
    add d                                         ; $4324: $82
    add d                                         ; $4325: $82
    add d                                         ; $4326: $82
    pop de                                        ; $4327: $d1
    pop de                                        ; $4328: $d1
    pop de                                        ; $4329: $d1
    pop hl                                        ; $432a: $e1
    rst $28                                       ; $432b: $ef
    pop de                                        ; $432c: $d1
    pop de                                        ; $432d: $d1
    push hl                                       ; $432e: $e5
    push af                                       ; $432f: $f5
    pop de                                        ; $4330: $d1
    pop de                                        ; $4331: $d1
    pop de                                        ; $4332: $d1
    or $d1                                        ; $4333: $f6 $d1
    pop de                                        ; $4335: $d1
    pop de                                        ; $4336: $d1
    inc bc                                        ; $4337: $03
    inc bc                                        ; $4338: $03
    inc bc                                        ; $4339: $03
    add d                                         ; $433a: $82
    add d                                         ; $433b: $82
    inc bc                                        ; $433c: $03
    inc bc                                        ; $433d: $03
    add d                                         ; $433e: $82
    add d                                         ; $433f: $82
    inc bc                                        ; $4340: $03
    inc bc                                        ; $4341: $03
    inc bc                                        ; $4342: $03
    add d                                         ; $4343: $82
    inc bc                                        ; $4344: $03
    inc bc                                        ; $4345: $03
    inc bc                                        ; $4346: $03
    ld [c], a                                     ; $4347: $e2
    rst $20                                       ; $4348: $e7
    ld a, [c]                                     ; $4349: $f2
    push af                                       ; $434a: $f5
    and $e9                                       ; $434b: $e6 $e9
    db $f4                                        ; $434d: $f4
    or $d1                                        ; $434e: $f6 $d1
    rst $30                                       ; $4350: $f7
    pop de                                        ; $4351: $d1
    pop de                                        ; $4352: $d1
    pop de                                        ; $4353: $d1
    pop de                                        ; $4354: $d1
    db $fc                                        ; $4355: $fc
    db $fd                                        ; $4356: $fd
    add d                                         ; $4357: $82
    add d                                         ; $4358: $82
    add d                                         ; $4359: $82
    add d                                         ; $435a: $82
    add d                                         ; $435b: $82
    add d                                         ; $435c: $82
    add d                                         ; $435d: $82
    add d                                         ; $435e: $82
    inc bc                                        ; $435f: $03
    inc bc                                        ; $4360: $03
    inc bc                                        ; $4361: $03
    inc bc                                        ; $4362: $03
    inc bc                                        ; $4363: $03
    inc bc                                        ; $4364: $03
    ld bc, $d101                                  ; $4365: $01 $01 $d1
    pop de                                        ; $4368: $d1
    cp $ff                                        ; $4369: $fe $ff
    pop de                                        ; $436b: $d1
    db $fd                                        ; $436c: $fd
    nop                                           ; $436d: $00
    ld bc, $02fe                                  ; $436e: $01 $fe $02
    inc bc                                        ; $4371: $03
    inc b                                         ; $4372: $04
    nop                                           ; $4373: $00
    ld bc, $02fe                                  ; $4374: $01 $fe $02
    inc bc                                        ; $4377: $03
    inc bc                                        ; $4378: $03
    ld bc, $0301                                  ; $4379: $01 $01 $03
    ld bc, $0101                                  ; $437c: $01 $01 $01
    ld bc, $0101                                  ; $437f: $01 $01 $01
    ld bc, $0101                                  ; $4382: $01 $01 $01
    ld bc, $d101                                  ; $4385: $01 $01 $d1
    pop de                                        ; $4388: $d1
    rst $30                                       ; $4389: $f7
    pop de                                        ; $438a: $d1
    pop de                                        ; $438b: $d1
    pop de                                        ; $438c: $d1
    pop de                                        ; $438d: $d1
    pop de                                        ; $438e: $d1
    pop de                                        ; $438f: $d1
    pop de                                        ; $4390: $d1
    pop de                                        ; $4391: $d1
    pop de                                        ; $4392: $d1
    pop de                                        ; $4393: $d1
    pop de                                        ; $4394: $d1
    pop de                                        ; $4395: $d1
    pop de                                        ; $4396: $d1
    inc bc                                        ; $4397: $03
    inc bc                                        ; $4398: $03
    inc bc                                        ; $4399: $03
    inc bc                                        ; $439a: $03
    inc bc                                        ; $439b: $03
    inc bc                                        ; $439c: $03
    inc bc                                        ; $439d: $03
    inc bc                                        ; $439e: $03
    inc bc                                        ; $439f: $03
    inc bc                                        ; $43a0: $03
    inc bc                                        ; $43a1: $03
    inc bc                                        ; $43a2: $03
    inc bc                                        ; $43a3: $03
    inc bc                                        ; $43a4: $03
    inc bc                                        ; $43a5: $03
    inc bc                                        ; $43a6: $03
    pop de                                        ; $43a7: $d1
    pop de                                        ; $43a8: $d1
    pop de                                        ; $43a9: $d1
    db $fd                                        ; $43aa: $fd
    pop de                                        ; $43ab: $d1
    dec b                                         ; $43ac: $05
    ld b, $02                                     ; $43ad: $06 $02
    pop de                                        ; $43af: $d1
    pop de                                        ; $43b0: $d1
    pop de                                        ; $43b1: $d1
    pop de                                        ; $43b2: $d1
    pop de                                        ; $43b3: $d1
    rst $38                                       ; $43b4: $ff
    db $fc                                        ; $43b5: $fc
    inc b                                         ; $43b6: $04
    inc bc                                        ; $43b7: $03
    inc bc                                        ; $43b8: $03
    inc bc                                        ; $43b9: $03
    ld bc, $0103                                  ; $43ba: $01 $03 $01
    ld bc, $0301                                  ; $43bd: $01 $01 $03
    inc bc                                        ; $43c0: $03
    inc bc                                        ; $43c1: $03
    inc bc                                        ; $43c2: $03
    inc bc                                        ; $43c3: $03
    ld bc, $0101                                  ; $43c4: $01 $01 $01
    rlca                                          ; $43c7: $07
    ld bc, $0206                                  ; $43c8: $01 $06 $02
    inc bc                                        ; $43cb: $03
    db $fd                                        ; $43cc: $fd
    rlca                                          ; $43cd: $07
    pop de                                        ; $43ce: $d1
    pop de                                        ; $43cf: $d1
    pop de                                        ; $43d0: $d1
    pop de                                        ; $43d1: $d1
    pop de                                        ; $43d2: $d1
    nop                                           ; $43d3: $00
    dec b                                         ; $43d4: $05
    pop de                                        ; $43d5: $d1
    pop de                                        ; $43d6: $d1
    ld bc, $0101                                  ; $43d7: $01 $01 $01
    ld bc, $0101                                  ; $43da: $01 $01 $01
    ld bc, $0303                                  ; $43dd: $01 $03 $03
    inc bc                                        ; $43e0: $03
    inc bc                                        ; $43e1: $03
    inc bc                                        ; $43e2: $03
    ld bc, $0301                                  ; $43e3: $01 $01 $03
    inc bc                                        ; $43e6: $03
    inc bc                                        ; $43e7: $03
    db $fd                                        ; $43e8: $fd
    rlca                                          ; $43e9: $07
    dec b                                         ; $43ea: $05
    pop de                                        ; $43eb: $d1
    pop de                                        ; $43ec: $d1
    pop de                                        ; $43ed: $d1
    pop de                                        ; $43ee: $d1
    pop de                                        ; $43ef: $d1
    pop de                                        ; $43f0: $d1
    pop de                                        ; $43f1: $d1
    ld [$0a09], sp                                ; $43f2: $08 $09 $0a
    pop de                                        ; $43f5: $d1
    pop de                                        ; $43f6: $d1
    ld bc, $0101                                  ; $43f7: $01 $01 $01
    ld bc, $0303                                  ; $43fa: $01 $03 $03
    inc bc                                        ; $43fd: $03
    inc bc                                        ; $43fe: $03
    inc bc                                        ; $43ff: $03
    inc bc                                        ; $4400: $03
    inc bc                                        ; $4401: $03
    ld bc, $0101                                  ; $4402: $01 $01 $01
    inc bc                                        ; $4405: $03
    inc bc                                        ; $4406: $03
    db $e4                                        ; $4407: $e4
    db $eb                                        ; $4408: $eb
    db $e4                                        ; $4409: $e4
    pop de                                        ; $440a: $d1
    jp nc, $d4d3                                  ; $440b: $d2 $d3 $d4

    pop de                                        ; $440e: $d1
    push de                                       ; $440f: $d5
    sub $d7                                       ; $4410: $d6 $d7
    pop de                                        ; $4412: $d1
    reti                                          ; $4413: $d9


    jp c, $d1db                                   ; $4414: $da $db $d1

    add d                                         ; $4417: $82
    add d                                         ; $4418: $82
    and d                                         ; $4419: $a2
    inc bc                                        ; $441a: $03
    add d                                         ; $441b: $82
    add d                                         ; $441c: $82
    add d                                         ; $441d: $82
    inc bc                                        ; $441e: $03
    add d                                         ; $441f: $82
    add d                                         ; $4420: $82
    add d                                         ; $4421: $82
    inc bc                                        ; $4422: $03
    add d                                         ; $4423: $82
    add d                                         ; $4424: $82
    add d                                         ; $4425: $82
    inc bc                                        ; $4426: $03
    pop de                                        ; $4427: $d1
    push de                                       ; $4428: $d5
    sub $d7                                       ; $4429: $d6 $d7
    ret c                                         ; $442b: $d8

    reti                                          ; $442c: $d9


    jp c, $dcdb                                   ; $442d: $da $db $dc

    db $dd                                        ; $4430: $dd
    sbc $ee                                       ; $4431: $de $ee
    pop hl                                        ; $4433: $e1
    ld [c], a                                     ; $4434: $e2
    rst $20                                       ; $4435: $e7
    ld a, [c]                                     ; $4436: $f2
    inc bc                                        ; $4437: $03
    add d                                         ; $4438: $82
    add d                                         ; $4439: $82
    add d                                         ; $443a: $82
    add d                                         ; $443b: $82
    add d                                         ; $443c: $82
    add d                                         ; $443d: $82
    add d                                         ; $443e: $82
    add d                                         ; $443f: $82
    add d                                         ; $4440: $82
    add d                                         ; $4441: $82
    add d                                         ; $4442: $82
    add d                                         ; $4443: $82
    add d                                         ; $4444: $82
    add d                                         ; $4445: $82
    add d                                         ; $4446: $82
    pop de                                        ; $4447: $d1
    pop de                                        ; $4448: $d1
    db $ed                                        ; $4449: $ed
    db $dd                                        ; $444a: $dd
    pop de                                        ; $444b: $d1
    pop de                                        ; $444c: $d1
    ldh a, [$f1]                                  ; $444d: $f0 $f1
    rst $28                                       ; $444f: $ef
    jp nc, $f3d3                                  ; $4450: $d2 $d3 $f3

    push af                                       ; $4453: $f5
    push de                                       ; $4454: $d5
    sub $d7                                       ; $4455: $d6 $d7
    inc bc                                        ; $4457: $03
    inc bc                                        ; $4458: $03
    add d                                         ; $4459: $82
    add d                                         ; $445a: $82
    inc bc                                        ; $445b: $03
    inc bc                                        ; $445c: $03
    add d                                         ; $445d: $82
    add d                                         ; $445e: $82
    add d                                         ; $445f: $82
    add d                                         ; $4460: $82
    add d                                         ; $4461: $82
    add d                                         ; $4462: $82
    add d                                         ; $4463: $82
    add d                                         ; $4464: $82
    add d                                         ; $4465: $82
    add d                                         ; $4466: $82
    sbc $ee                                       ; $4467: $de $ee
    rst $28                                       ; $4469: $ef
    ret c                                         ; $446a: $d8

    rst $20                                       ; $446b: $e7
    ld a, [c]                                     ; $446c: $f2
    push af                                       ; $446d: $f5
    call c, $f4e9                                 ; $446e: $dc $e9 $f4
    or $e1                                        ; $4471: $f6 $e1
    rst $30                                       ; $4473: $f7
    pop de                                        ; $4474: $d1
    pop de                                        ; $4475: $d1
    push hl                                       ; $4476: $e5
    add d                                         ; $4477: $82
    add d                                         ; $4478: $82
    add d                                         ; $4479: $82
    add d                                         ; $447a: $82
    add d                                         ; $447b: $82
    add d                                         ; $447c: $82
    add d                                         ; $447d: $82
    add d                                         ; $447e: $82
    add d                                         ; $447f: $82
    add d                                         ; $4480: $82
    add d                                         ; $4481: $82
    add d                                         ; $4482: $82
    inc bc                                        ; $4483: $03
    inc bc                                        ; $4484: $03
    inc bc                                        ; $4485: $03
    add d                                         ; $4486: $82
    db $dd                                        ; $4487: $dd
    sbc $ee                                       ; $4488: $de $ee
    rst $28                                       ; $448a: $ef
    ld [c], a                                     ; $448b: $e2
    rst $20                                       ; $448c: $e7
    ld a, [c]                                     ; $448d: $f2
    push af                                       ; $448e: $f5
    and $e9                                       ; $448f: $e6 $e9
    db $f4                                        ; $4491: $f4
    or $d1                                        ; $4492: $f6 $d1
    rst $30                                       ; $4494: $f7
    pop de                                        ; $4495: $d1
    pop de                                        ; $4496: $d1
    add d                                         ; $4497: $82
    add d                                         ; $4498: $82
    add d                                         ; $4499: $82
    add d                                         ; $449a: $82
    add d                                         ; $449b: $82
    add d                                         ; $449c: $82
    add d                                         ; $449d: $82
    add d                                         ; $449e: $82
    add d                                         ; $449f: $82
    add d                                         ; $44a0: $82
    add d                                         ; $44a1: $82
    add d                                         ; $44a2: $82
    inc bc                                        ; $44a3: $03
    inc bc                                        ; $44a4: $03
    inc bc                                        ; $44a5: $03
    inc bc                                        ; $44a6: $03
    push hl                                       ; $44a7: $e5
    and $e9                                       ; $44a8: $e6 $e9
    db $f4                                        ; $44aa: $f4
    pop de                                        ; $44ab: $d1
    pop de                                        ; $44ac: $d1
    rst $30                                       ; $44ad: $f7
    pop de                                        ; $44ae: $d1
    pop de                                        ; $44af: $d1
    pop de                                        ; $44b0: $d1
    pop de                                        ; $44b1: $d1
    pop de                                        ; $44b2: $d1
    pop de                                        ; $44b3: $d1
    pop de                                        ; $44b4: $d1
    pop de                                        ; $44b5: $d1
    pop de                                        ; $44b6: $d1
    add d                                         ; $44b7: $82
    add d                                         ; $44b8: $82
    add d                                         ; $44b9: $82
    add d                                         ; $44ba: $82
    inc bc                                        ; $44bb: $03
    inc bc                                        ; $44bc: $03
    inc bc                                        ; $44bd: $03
    inc bc                                        ; $44be: $03
    inc bc                                        ; $44bf: $03
    inc bc                                        ; $44c0: $03
    inc bc                                        ; $44c1: $03
    inc bc                                        ; $44c2: $03
    inc bc                                        ; $44c3: $03
    inc bc                                        ; $44c4: $03
    inc bc                                        ; $44c5: $03
    inc bc                                        ; $44c6: $03
    or $d9                                        ; $44c7: $f6 $d9
    jp c, $dcdb                                   ; $44c9: $da $db $dc

    db $dd                                        ; $44cc: $dd
    sbc $ee                                       ; $44cd: $de $ee
    pop hl                                        ; $44cf: $e1
    ld [c], a                                     ; $44d0: $e2
    rst $20                                       ; $44d1: $e7
    ld a, [c]                                     ; $44d2: $f2
    push hl                                       ; $44d3: $e5
    and $e9                                       ; $44d4: $e6 $e9
    db $f4                                        ; $44d6: $f4
    add d                                         ; $44d7: $82
    add d                                         ; $44d8: $82
    add d                                         ; $44d9: $82
    add d                                         ; $44da: $82
    add d                                         ; $44db: $82
    add d                                         ; $44dc: $82
    add d                                         ; $44dd: $82
    add d                                         ; $44de: $82
    add d                                         ; $44df: $82
    add d                                         ; $44e0: $82
    add d                                         ; $44e1: $82
    add d                                         ; $44e2: $82
    add d                                         ; $44e3: $82
    add d                                         ; $44e4: $82
    add d                                         ; $44e5: $82
    add d                                         ; $44e6: $82
    pop de                                        ; $44e7: $d1
    pop de                                        ; $44e8: $d1
    pop de                                        ; $44e9: $d1
    pop de                                        ; $44ea: $d1
    rst $28                                       ; $44eb: $ef
    pop de                                        ; $44ec: $d1
    pop de                                        ; $44ed: $d1
    pop de                                        ; $44ee: $d1
    push af                                       ; $44ef: $f5
    pop de                                        ; $44f0: $d1
    pop de                                        ; $44f1: $d1
    pop de                                        ; $44f2: $d1
    or $d1                                        ; $44f3: $f6 $d1
    pop de                                        ; $44f5: $d1
    pop de                                        ; $44f6: $d1
    add d                                         ; $44f7: $82
    inc bc                                        ; $44f8: $03
    inc bc                                        ; $44f9: $03
    inc bc                                        ; $44fa: $03
    add d                                         ; $44fb: $82
    inc bc                                        ; $44fc: $03
    inc bc                                        ; $44fd: $03
    inc bc                                        ; $44fe: $03
    add d                                         ; $44ff: $82
    inc bc                                        ; $4500: $03
    inc bc                                        ; $4501: $03
    inc bc                                        ; $4502: $03
    add d                                         ; $4503: $82
    inc bc                                        ; $4504: $03
    inc bc                                        ; $4505: $03
    inc bc                                        ; $4506: $03
    db $fc                                        ; $4507: $fc
    pop de                                        ; $4508: $d1
    pop de                                        ; $4509: $d1
    pop de                                        ; $450a: $d1
    cp $ff                                        ; $450b: $fe $ff
    db $fc                                        ; $450d: $fc
    db $fd                                        ; $450e: $fd
    nop                                           ; $450f: $00
    ld bc, $0206                                  ; $4510: $01 $06 $02
    db $fc                                        ; $4513: $fc
    inc b                                         ; $4514: $04
    rlca                                          ; $4515: $07
    dec b                                         ; $4516: $05
    ld bc, $0303                                  ; $4517: $01 $03 $03
    inc bc                                        ; $451a: $03
    ld bc, $0101                                  ; $451b: $01 $01 $01
    ld bc, $0101                                  ; $451e: $01 $01 $01
    ld bc, $0101                                  ; $4521: $01 $01 $01
    ld bc, $0101                                  ; $4524: $01 $01 $01
    pop de                                        ; $4527: $d1
    pop de                                        ; $4528: $d1
    pop de                                        ; $4529: $d1
    pop de                                        ; $452a: $d1
    pop de                                        ; $452b: $d1
    dec bc                                        ; $452c: $0b
    pop de                                        ; $452d: $d1
    add hl, bc                                    ; $452e: $09
    db $fc                                        ; $452f: $fc
    inc b                                         ; $4530: $04
    rlca                                          ; $4531: $07
    dec b                                         ; $4532: $05
    cp $ff                                        ; $4533: $fe $ff
    db $fc                                        ; $4535: $fc
    db $fd                                        ; $4536: $fd
    inc bc                                        ; $4537: $03
    inc bc                                        ; $4538: $03
    inc bc                                        ; $4539: $03
    inc bc                                        ; $453a: $03
    inc bc                                        ; $453b: $03
    ld bc, $0103                                  ; $453c: $01 $03 $01
    ld bc, $0101                                  ; $453f: $01 $01 $01
    ld bc, $0101                                  ; $4542: $01 $01 $01
    ld bc, $d101                                  ; $4545: $01 $01 $d1
    pop de                                        ; $4548: $d1
    rst $30                                       ; $4549: $f7
    pop de                                        ; $454a: $d1
    ld a, [bc]                                    ; $454b: $0a
    pop de                                        ; $454c: $d1
    pop de                                        ; $454d: $d1
    pop de                                        ; $454e: $d1
    pop de                                        ; $454f: $d1
    pop de                                        ; $4550: $d1
    pop de                                        ; $4551: $d1
    pop de                                        ; $4552: $d1
    rlca                                          ; $4553: $07
    dec b                                         ; $4554: $05
    pop de                                        ; $4555: $d1
    pop de                                        ; $4556: $d1
    inc bc                                        ; $4557: $03
    inc bc                                        ; $4558: $03
    inc bc                                        ; $4559: $03
    inc bc                                        ; $455a: $03
    ld bc, $0303                                  ; $455b: $01 $03 $03
    inc bc                                        ; $455e: $03
    inc bc                                        ; $455f: $03
    inc bc                                        ; $4560: $03
    inc bc                                        ; $4561: $03
    inc bc                                        ; $4562: $03
    ld bc, $0301                                  ; $4563: $01 $01 $03
    inc bc                                        ; $4566: $03
    pop de                                        ; $4567: $d1
    pop de                                        ; $4568: $d1
    pop de                                        ; $4569: $d1
    pop de                                        ; $456a: $d1
    pop de                                        ; $456b: $d1
    pop de                                        ; $456c: $d1
    pop de                                        ; $456d: $d1
    pop de                                        ; $456e: $d1
    pop de                                        ; $456f: $d1
    pop de                                        ; $4570: $d1
    pop de                                        ; $4571: $d1
    call c, $d10c                                 ; $4572: $dc $0c $d1
    pop de                                        ; $4575: $d1
    pop hl                                        ; $4576: $e1
    inc bc                                        ; $4577: $03
    inc bc                                        ; $4578: $03
    inc bc                                        ; $4579: $03
    inc bc                                        ; $457a: $03
    inc bc                                        ; $457b: $03
    inc bc                                        ; $457c: $03
    inc bc                                        ; $457d: $03
    inc bc                                        ; $457e: $03
    inc bc                                        ; $457f: $03
    inc bc                                        ; $4580: $03
    inc bc                                        ; $4581: $03
    add d                                         ; $4582: $82
    ld bc, $0303                                  ; $4583: $01 $03 $03
    add d                                         ; $4586: $82
    cp $d1                                        ; $4587: $fe $d1
    pop de                                        ; $4589: $d1
    pop de                                        ; $458a: $d1
    pop de                                        ; $458b: $d1
    dec c                                         ; $458c: $0d
    ld c, $0f                                     ; $458d: $0e $0f
    inc c                                         ; $458f: $0c
    db $10                                        ; $4590: $10
    ld de, $d10d                                  ; $4591: $11 $0d $d1
    pop de                                        ; $4594: $d1
    pop de                                        ; $4595: $d1
    ldh [rSB], a                                  ; $4596: $e0 $01
    inc bc                                        ; $4598: $03
    inc bc                                        ; $4599: $03
    inc bc                                        ; $459a: $03
    inc bc                                        ; $459b: $03
    ld bc, $0101                                  ; $459c: $01 $01 $01
    ld bc, $0101                                  ; $459f: $01 $01 $01
    ld bc, $0303                                  ; $45a2: $01 $03 $03
    inc bc                                        ; $45a5: $03
    add d                                         ; $45a6: $82
    dec bc                                        ; $45a7: $0b
    pop de                                        ; $45a8: $d1
    pop de                                        ; $45a9: $d1
    pop de                                        ; $45aa: $d1
    inc c                                         ; $45ab: $0c
    ld [de], a                                    ; $45ac: $12
    inc de                                        ; $45ad: $13
    inc d                                         ; $45ae: $14
    ld c, $08                                     ; $45af: $0e $08
    inc c                                         ; $45b1: $0c
    db $10                                        ; $45b2: $10
    pop de                                        ; $45b3: $d1
    pop de                                        ; $45b4: $d1
    pop de                                        ; $45b5: $d1
    pop de                                        ; $45b6: $d1
    ld bc, $0303                                  ; $45b7: $01 $03 $03
    inc bc                                        ; $45ba: $03
    ld bc, $0101                                  ; $45bb: $01 $01 $01
    ld bc, $0101                                  ; $45be: $01 $01 $01
    ld bc, $0301                                  ; $45c1: $01 $01 $03
    inc bc                                        ; $45c4: $03
    inc bc                                        ; $45c5: $03
    inc bc                                        ; $45c6: $03
    dec bc                                        ; $45c7: $0b
    pop de                                        ; $45c8: $d1
    ld de, $150d                                  ; $45c9: $11 $0d $15
    rrca                                          ; $45cc: $0f
    ld d, $12                                     ; $45cd: $16 $12
    inc de                                        ; $45cf: $13
    inc d                                         ; $45d0: $14
    dec d                                         ; $45d1: $15
    rrca                                          ; $45d2: $0f
    inc c                                         ; $45d3: $0c
    db $10                                        ; $45d4: $10
    ld de, $0114                                  ; $45d5: $11 $14 $01
    inc bc                                        ; $45d8: $03
    ld bc, $0101                                  ; $45d9: $01 $01 $01
    ld bc, $0101                                  ; $45dc: $01 $01 $01
    ld bc, $0101                                  ; $45df: $01 $01 $01
    ld bc, $0101                                  ; $45e2: $01 $01 $01
    ld bc, $0e01                                  ; $45e5: $01 $01 $0e
    dec bc                                        ; $45e8: $0b
    pop de                                        ; $45e9: $d1
    push hl                                       ; $45ea: $e5
    ld de, $0e0d                                  ; $45eb: $11 $0d $0e
    pop de                                        ; $45ee: $d1
    ld d, $10                                     ; $45ef: $16 $10
    ld de, $150d                                  ; $45f1: $11 $0d $15
    rrca                                          ; $45f4: $0f
    ld d, $12                                     ; $45f5: $16 $12
    ld bc, $0301                                  ; $45f7: $01 $01 $03
    add d                                         ; $45fa: $82
    ld bc, $0101                                  ; $45fb: $01 $01 $01
    inc bc                                        ; $45fe: $03
    ld bc, $0101                                  ; $45ff: $01 $01 $01
    ld bc, $0101                                  ; $4602: $01 $01 $01
    ld bc, $d901                                  ; $4605: $01 $01 $d9
    jp c, $e0db                                   ; $4608: $da $db $e0

    db $dd                                        ; $460b: $dd
    sbc $df                                       ; $460c: $de $df
    db $e3                                        ; $460e: $e3
    ld [c], a                                     ; $460f: $e2
    rst $20                                       ; $4610: $e7
    add sp, -$2d                                  ; $4611: $e8 $d3
    and $e9                                       ; $4613: $e6 $e9
    ld [$82d6], a                                 ; $4615: $ea $d6 $82
    add d                                         ; $4618: $82
    add d                                         ; $4619: $82
    add d                                         ; $461a: $82
    add d                                         ; $461b: $82
    add d                                         ; $461c: $82
    add d                                         ; $461d: $82
    add d                                         ; $461e: $82
    add d                                         ; $461f: $82
    add d                                         ; $4620: $82
    add d                                         ; $4621: $82
    add d                                         ; $4622: $82
    add d                                         ; $4623: $82
    add d                                         ; $4624: $82
    add d                                         ; $4625: $82
    add d                                         ; $4626: $82
    pop de                                        ; $4627: $d1
    pop de                                        ; $4628: $d1
    push de                                       ; $4629: $d5
    sub $e4                                       ; $462a: $d6 $e4
    ret c                                         ; $462c: $d8

    reti                                          ; $462d: $d9


    jp c, $dcd4                                   ; $462e: $da $d4 $dc

    db $dd                                        ; $4631: $dd
    sbc $d7                                       ; $4632: $de $d7
    pop hl                                        ; $4634: $e1
    ld [c], a                                     ; $4635: $e2
    rst $20                                       ; $4636: $e7
    inc bc                                        ; $4637: $03
    inc bc                                        ; $4638: $03
    add d                                         ; $4639: $82
    add d                                         ; $463a: $82
    and d                                         ; $463b: $a2
    add d                                         ; $463c: $82
    add d                                         ; $463d: $82
    add d                                         ; $463e: $82
    add d                                         ; $463f: $82
    add d                                         ; $4640: $82
    add d                                         ; $4641: $82
    add d                                         ; $4642: $82
    add d                                         ; $4643: $82
    add d                                         ; $4644: $82
    add d                                         ; $4645: $82
    add d                                         ; $4646: $82
    rst $10                                       ; $4647: $d7
    pop de                                        ; $4648: $d1
    pop de                                        ; $4649: $d1
    pop de                                        ; $464a: $d1
    db $db                                        ; $464b: $db
    pop de                                        ; $464c: $d1
    pop de                                        ; $464d: $d1
    pop de                                        ; $464e: $d1
    xor $ef                                       ; $464f: $ee $ef
    pop de                                        ; $4651: $d1
    pop de                                        ; $4652: $d1
    ld a, [c]                                     ; $4653: $f2
    push af                                       ; $4654: $f5
    pop de                                        ; $4655: $d1
    jp nc, $0382                                  ; $4656: $d2 $82 $03

    inc bc                                        ; $4659: $03
    inc bc                                        ; $465a: $03
    add d                                         ; $465b: $82
    inc bc                                        ; $465c: $03
    inc bc                                        ; $465d: $03
    inc bc                                        ; $465e: $03
    add d                                         ; $465f: $82
    add d                                         ; $4660: $82
    inc bc                                        ; $4661: $03
    inc bc                                        ; $4662: $03
    add d                                         ; $4663: $82
    add d                                         ; $4664: $82
    inc bc                                        ; $4665: $03
    add d                                         ; $4666: $82
    pop de                                        ; $4667: $d1
    db $ec                                        ; $4668: $ec
    reti                                          ; $4669: $d9


    jp c, $edd1                                   ; $466a: $da $d1 $ed

    db $dd                                        ; $466d: $dd
    sbc $d1                                       ; $466e: $de $d1
    ldh a, [$f1]                                  ; $4670: $f0 $f1
    rst $20                                       ; $4672: $e7
    jp nc, $f3d3                                  ; $4673: $d2 $d3 $f3

    jp hl                                         ; $4676: $e9


    inc bc                                        ; $4677: $03
    inc bc                                        ; $4678: $03
    add d                                         ; $4679: $82
    add d                                         ; $467a: $82
    inc bc                                        ; $467b: $03
    add d                                         ; $467c: $82
    add d                                         ; $467d: $82
    add d                                         ; $467e: $82
    inc bc                                        ; $467f: $03
    add d                                         ; $4680: $82
    add d                                         ; $4681: $82
    add d                                         ; $4682: $82
    add d                                         ; $4683: $82
    add d                                         ; $4684: $82
    add d                                         ; $4685: $82
    add d                                         ; $4686: $82
    db $db                                        ; $4687: $db
    push hl                                       ; $4688: $e5
    and $e9                                       ; $4689: $e6 $e9
    xor $ef                                       ; $468b: $ee $ef
    pop de                                        ; $468d: $d1
    rst $30                                       ; $468e: $f7
    ld a, [c]                                     ; $468f: $f2
    push af                                       ; $4690: $f5
    pop de                                        ; $4691: $d1
    pop de                                        ; $4692: $d1
    db $f4                                        ; $4693: $f4
    or $d1                                        ; $4694: $f6 $d1
    pop de                                        ; $4696: $d1
    add d                                         ; $4697: $82
    add d                                         ; $4698: $82
    add d                                         ; $4699: $82
    add d                                         ; $469a: $82
    add d                                         ; $469b: $82
    add d                                         ; $469c: $82
    inc bc                                        ; $469d: $03
    inc bc                                        ; $469e: $03
    add d                                         ; $469f: $82
    add d                                         ; $46a0: $82
    inc bc                                        ; $46a1: $03
    inc bc                                        ; $46a2: $03
    add d                                         ; $46a3: $82
    add d                                         ; $46a4: $82
    inc bc                                        ; $46a5: $03
    inc bc                                        ; $46a6: $03
    db $f4                                        ; $46a7: $f4
    or $d1                                        ; $46a8: $f6 $d1
    push de                                       ; $46aa: $d5
    pop de                                        ; $46ab: $d1
    pop de                                        ; $46ac: $d1
    pop de                                        ; $46ad: $d1
    reti                                          ; $46ae: $d9


    pop de                                        ; $46af: $d1
    pop de                                        ; $46b0: $d1
    call c, $d1dd                                 ; $46b1: $dc $dd $d1
    pop de                                        ; $46b4: $d1
    pop hl                                        ; $46b5: $e1
    ld [c], a                                     ; $46b6: $e2
    add d                                         ; $46b7: $82
    add d                                         ; $46b8: $82
    inc bc                                        ; $46b9: $03
    add d                                         ; $46ba: $82
    inc bc                                        ; $46bb: $03
    inc bc                                        ; $46bc: $03
    inc bc                                        ; $46bd: $03
    add d                                         ; $46be: $82
    inc bc                                        ; $46bf: $03
    inc bc                                        ; $46c0: $03
    add d                                         ; $46c1: $82
    add d                                         ; $46c2: $82
    inc bc                                        ; $46c3: $03
    inc bc                                        ; $46c4: $03
    add d                                         ; $46c5: $82
    add d                                         ; $46c6: $82
    push de                                       ; $46c7: $d5
    sub $d7                                       ; $46c8: $d6 $d7
    rst $30                                       ; $46ca: $f7
    reti                                          ; $46cb: $d9


    jp c, $d1db                                   ; $46cc: $da $db $d1

    db $dd                                        ; $46cf: $dd
    sbc $ee                                       ; $46d0: $de $ee
    rst $28                                       ; $46d2: $ef
    ld [c], a                                     ; $46d3: $e2
    rst $20                                       ; $46d4: $e7
    ld a, [c]                                     ; $46d5: $f2
    push af                                       ; $46d6: $f5
    add d                                         ; $46d7: $82
    add d                                         ; $46d8: $82
    add d                                         ; $46d9: $82
    inc bc                                        ; $46da: $03
    add d                                         ; $46db: $82
    add d                                         ; $46dc: $82
    add d                                         ; $46dd: $82
    add d                                         ; $46de: $82
    add d                                         ; $46df: $82
    add d                                         ; $46e0: $82
    add d                                         ; $46e1: $82
    add d                                         ; $46e2: $82
    add d                                         ; $46e3: $82
    add d                                         ; $46e4: $82
    add d                                         ; $46e5: $82
    add d                                         ; $46e6: $82
    pop de                                        ; $46e7: $d1
    pop de                                        ; $46e8: $d1
    pop de                                        ; $46e9: $d1
    rst $38                                       ; $46ea: $ff
    pop de                                        ; $46eb: $d1
    pop de                                        ; $46ec: $d1
    rlca                                          ; $46ed: $07
    dec b                                         ; $46ee: $05
    pop de                                        ; $46ef: $d1
    rst $38                                       ; $46f0: $ff
    db $fc                                        ; $46f1: $fc
    inc b                                         ; $46f2: $04
    rlca                                          ; $46f3: $07
    dec b                                         ; $46f4: $05
    ld b, $02                                     ; $46f5: $06 $02
    inc bc                                        ; $46f7: $03
    inc bc                                        ; $46f8: $03
    inc bc                                        ; $46f9: $03
    ld bc, $0303                                  ; $46fa: $01 $03 $03
    ld bc, $0301                                  ; $46fd: $01 $01 $03
    ld bc, $0101                                  ; $4700: $01 $01 $01
    ld bc, $0101                                  ; $4703: $01 $01 $01
    ld bc, $d1d1                                  ; $4706: $01 $d1 $d1
    push hl                                       ; $4709: $e5
    and $fe                                       ; $470a: $e6 $fe
    pop de                                        ; $470c: $d1
    pop de                                        ; $470d: $d1
    pop de                                        ; $470e: $d1
    rlca                                          ; $470f: $07
    dec b                                         ; $4710: $05
    cp $d1                                        ; $4711: $fe $d1
    inc bc                                        ; $4713: $03
    inc b                                         ; $4714: $04
    rlca                                          ; $4715: $07
    dec b                                         ; $4716: $05
    inc bc                                        ; $4717: $03
    inc bc                                        ; $4718: $03
    add d                                         ; $4719: $82
    add d                                         ; $471a: $82
    ld bc, $0303                                  ; $471b: $01 $03 $03
    inc bc                                        ; $471e: $03
    ld bc, $0101                                  ; $471f: $01 $01 $01
    inc bc                                        ; $4722: $03
    ld bc, $0101                                  ; $4723: $01 $01 $01
    ld bc, $f4e9                                  ; $4726: $01 $e9 $f4
    or $d1                                        ; $4729: $f6 $d1
    rst $30                                       ; $472b: $f7
    pop de                                        ; $472c: $d1
    pop de                                        ; $472d: $d1
    pop de                                        ; $472e: $d1
    pop de                                        ; $472f: $d1
    pop de                                        ; $4730: $d1
    pop de                                        ; $4731: $d1
    pop de                                        ; $4732: $d1
    cp $d1                                        ; $4733: $fe $d1
    pop de                                        ; $4735: $d1
    pop de                                        ; $4736: $d1
    add d                                         ; $4737: $82
    add d                                         ; $4738: $82
    add d                                         ; $4739: $82
    inc bc                                        ; $473a: $03
    inc bc                                        ; $473b: $03
    inc bc                                        ; $473c: $03
    inc bc                                        ; $473d: $03
    inc bc                                        ; $473e: $03
    inc bc                                        ; $473f: $03
    inc bc                                        ; $4740: $03
    inc bc                                        ; $4741: $03
    inc bc                                        ; $4742: $03
    ld bc, $0303                                  ; $4743: $01 $03 $03
    inc bc                                        ; $4746: $03
    and $e9                                       ; $4747: $e6 $e9
    db $f4                                        ; $4749: $f4
    or $d1                                        ; $474a: $f6 $d1
    rst $30                                       ; $474c: $f7
    pop de                                        ; $474d: $d1
    pop de                                        ; $474e: $d1
    pop de                                        ; $474f: $d1
    pop de                                        ; $4750: $d1
    pop de                                        ; $4751: $d1
    pop de                                        ; $4752: $d1
    ld de, $d10d                                  ; $4753: $11 $0d $d1
    add hl, bc                                    ; $4756: $09
    add d                                         ; $4757: $82
    add d                                         ; $4758: $82
    add d                                         ; $4759: $82
    add d                                         ; $475a: $82
    inc bc                                        ; $475b: $03
    inc bc                                        ; $475c: $03
    inc bc                                        ; $475d: $03
    inc bc                                        ; $475e: $03
    inc bc                                        ; $475f: $03
    inc bc                                        ; $4760: $03
    inc bc                                        ; $4761: $03
    inc bc                                        ; $4762: $03
    ld bc, $0301                                  ; $4763: $01 $01 $03
    ld bc, $fdd1                                  ; $4766: $01 $d1 $fd
    rlca                                          ; $4769: $07
    ld bc, $d1d1                                  ; $476a: $01 $d1 $d1
    db $fc                                        ; $476d: $fc
    db $fd                                        ; $476e: $fd
    pop de                                        ; $476f: $d1
    pop de                                        ; $4770: $d1
    pop de                                        ; $4771: $d1
    pop de                                        ; $4772: $d1
    ld a, [bc]                                    ; $4773: $0a
    pop de                                        ; $4774: $d1
    pop de                                        ; $4775: $d1
    ld hl, sp+$03                                 ; $4776: $f8 $03
    ld bc, $0101                                  ; $4778: $01 $01 $01
    inc bc                                        ; $477b: $03
    inc bc                                        ; $477c: $03
    ld bc, $0301                                  ; $477d: $01 $01 $03
    inc bc                                        ; $4780: $03
    inc bc                                        ; $4781: $03
    inc bc                                        ; $4782: $03
    ld bc, $0303                                  ; $4783: $01 $03 $03
    ld bc, $0206                                  ; $4786: $01 $06 $02
    inc bc                                        ; $4789: $03
    inc b                                         ; $478a: $04
    rlca                                          ; $478b: $07
    ld bc, $0206                                  ; $478c: $01 $06 $02
    db $fc                                        ; $478f: $fc
    db $fd                                        ; $4790: $fd
    rlca                                          ; $4791: $07
    dec b                                         ; $4792: $05
    ld sp, hl                                     ; $4793: $f9
    pop de                                        ; $4794: $d1
    db $fc                                        ; $4795: $fc
    db $fd                                        ; $4796: $fd
    ld bc, $0101                                  ; $4797: $01 $01 $01
    ld bc, $0101                                  ; $479a: $01 $01 $01
    ld bc, $0101                                  ; $479d: $01 $01 $01
    ld bc, $0101                                  ; $47a0: $01 $01 $01
    ld bc, $0103                                  ; $47a3: $01 $03 $01
    ld bc, $0107                                  ; $47a6: $01 $07 $01
    cp $ff                                        ; $47a9: $fe $ff
    inc bc                                        ; $47ab: $03
    inc b                                         ; $47ac: $04
    nop                                           ; $47ad: $00
    ld bc, $fffe                                  ; $47ae: $01 $fe $ff
    db $fc                                        ; $47b1: $fc
    db $fd                                        ; $47b2: $fd
    pop de                                        ; $47b3: $d1
    pop de                                        ; $47b4: $d1
    dec bc                                        ; $47b5: $0b
    pop de                                        ; $47b6: $d1
    ld bc, $0101                                  ; $47b7: $01 $01 $01
    ld bc, $0101                                  ; $47ba: $01 $01 $01
    ld bc, $0101                                  ; $47bd: $01 $01 $01
    ld bc, $0101                                  ; $47c0: $01 $01 $01
    inc bc                                        ; $47c3: $03
    inc bc                                        ; $47c4: $03
    ld bc, $d103                                  ; $47c5: $01 $03 $d1
    pop de                                        ; $47c8: $d1
    call c, $efdd                                 ; $47c9: $dc $dd $ef
    pop de                                        ; $47cc: $d1
    pop hl                                        ; $47cd: $e1
    ld [c], a                                     ; $47ce: $e2
    push af                                       ; $47cf: $f5
    pop de                                        ; $47d0: $d1
    push hl                                       ; $47d1: $e5
    and $f6                                       ; $47d2: $e6 $f6
    pop de                                        ; $47d4: $d1
    pop de                                        ; $47d5: $d1
    pop de                                        ; $47d6: $d1
    inc bc                                        ; $47d7: $03
    inc bc                                        ; $47d8: $03
    add d                                         ; $47d9: $82
    add d                                         ; $47da: $82
    add d                                         ; $47db: $82
    inc bc                                        ; $47dc: $03
    add d                                         ; $47dd: $82
    add d                                         ; $47de: $82
    add d                                         ; $47df: $82
    inc bc                                        ; $47e0: $03
    add d                                         ; $47e1: $82
    add d                                         ; $47e2: $82
    add d                                         ; $47e3: $82
    inc bc                                        ; $47e4: $03
    inc bc                                        ; $47e5: $03
    inc bc                                        ; $47e6: $03
    sbc $df                                       ; $47e7: $de $df
    db $e3                                        ; $47e9: $e3
    db $e4                                        ; $47ea: $e4
    rst $20                                       ; $47eb: $e7
    add sp, -$2d                                  ; $47ec: $e8 $d3
    call nc, $eae9                                ; $47ee: $d4 $e9 $ea
    sub $d7                                       ; $47f1: $d6 $d7
    db $ec                                        ; $47f3: $ec
    reti                                          ; $47f4: $d9


    jp c, $82db                                   ; $47f5: $da $db $82

    add d                                         ; $47f8: $82
    add d                                         ; $47f9: $82
    and d                                         ; $47fa: $a2
    add d                                         ; $47fb: $82
    add d                                         ; $47fc: $82
    add d                                         ; $47fd: $82
    add d                                         ; $47fe: $82
    add d                                         ; $47ff: $82
    add d                                         ; $4800: $82
    add d                                         ; $4801: $82
    add d                                         ; $4802: $82
    inc bc                                        ; $4803: $03
    add d                                         ; $4804: $82
    add d                                         ; $4805: $82
    add d                                         ; $4806: $82
    pop de                                        ; $4807: $d1
    pop de                                        ; $4808: $d1
    pop de                                        ; $4809: $d1
    pop de                                        ; $480a: $d1
    rst $28                                       ; $480b: $ef
    pop de                                        ; $480c: $d1
    pop de                                        ; $480d: $d1
    pop de                                        ; $480e: $d1
    push af                                       ; $480f: $f5
    pop de                                        ; $4810: $d1
    ldh [$d1], a                                  ; $4811: $e0 $d1
    or $e4                                        ; $4813: $f6 $e4
    db $eb                                        ; $4815: $eb
    db $e4                                        ; $4816: $e4
    inc bc                                        ; $4817: $03
    inc bc                                        ; $4818: $03
    inc bc                                        ; $4819: $03
    inc bc                                        ; $481a: $03
    add d                                         ; $481b: $82
    inc bc                                        ; $481c: $03
    inc bc                                        ; $481d: $03
    inc bc                                        ; $481e: $03
    add d                                         ; $481f: $82
    inc bc                                        ; $4820: $03
    add d                                         ; $4821: $82
    inc bc                                        ; $4822: $03
    add d                                         ; $4823: $82
    add d                                         ; $4824: $82
    add d                                         ; $4825: $82
    and d                                         ; $4826: $a2
    pop de                                        ; $4827: $d1
    pop de                                        ; $4828: $d1
    pop de                                        ; $4829: $d1
    pop de                                        ; $482a: $d1
    pop de                                        ; $482b: $d1
    pop de                                        ; $482c: $d1
    pop de                                        ; $482d: $d1
    pop de                                        ; $482e: $d1
    pop de                                        ; $482f: $d1
    pop de                                        ; $4830: $d1
    pop de                                        ; $4831: $d1
    jp nc, $d1d1                                  ; $4832: $d2 $d1 $d1

    pop de                                        ; $4835: $d1
    push de                                       ; $4836: $d5
    inc bc                                        ; $4837: $03
    inc bc                                        ; $4838: $03
    inc bc                                        ; $4839: $03
    inc bc                                        ; $483a: $03
    inc bc                                        ; $483b: $03
    inc bc                                        ; $483c: $03
    inc bc                                        ; $483d: $03
    inc bc                                        ; $483e: $03
    inc bc                                        ; $483f: $03
    inc bc                                        ; $4840: $03
    inc bc                                        ; $4841: $03
    add d                                         ; $4842: $82
    inc bc                                        ; $4843: $03
    inc bc                                        ; $4844: $03
    inc bc                                        ; $4845: $03
    add d                                         ; $4846: $82
    db $ed                                        ; $4847: $ed
    db $dd                                        ; $4848: $dd
    sbc $ee                                       ; $4849: $de $ee
    ldh a, [$f1]                                  ; $484b: $f0 $f1
    rst $20                                       ; $484d: $e7
    ld a, [c]                                     ; $484e: $f2
    db $d3                                        ; $484f: $d3
    di                                            ; $4850: $f3
    jp hl                                         ; $4851: $e9


    db $f4                                        ; $4852: $f4
    sub $d7                                       ; $4853: $d6 $d7
    rst $30                                       ; $4855: $f7
    pop de                                        ; $4856: $d1
    add d                                         ; $4857: $82
    add d                                         ; $4858: $82
    add d                                         ; $4859: $82
    add d                                         ; $485a: $82
    add d                                         ; $485b: $82
    add d                                         ; $485c: $82
    add d                                         ; $485d: $82
    add d                                         ; $485e: $82
    add d                                         ; $485f: $82
    add d                                         ; $4860: $82
    add d                                         ; $4861: $82
    add d                                         ; $4862: $82
    add d                                         ; $4863: $82
    add d                                         ; $4864: $82
    inc bc                                        ; $4865: $03
    inc bc                                        ; $4866: $03
    rst $28                                       ; $4867: $ef
    pop de                                        ; $4868: $d1
    rst $30                                       ; $4869: $f7
    pop de                                        ; $486a: $d1
    push af                                       ; $486b: $f5
    pop de                                        ; $486c: $d1
    pop de                                        ; $486d: $d1
    pop de                                        ; $486e: $d1
    or $d1                                        ; $486f: $f6 $d1
    pop de                                        ; $4871: $d1
    pop de                                        ; $4872: $d1
    pop de                                        ; $4873: $d1
    pop de                                        ; $4874: $d1
    pop de                                        ; $4875: $d1
    pop de                                        ; $4876: $d1
    add d                                         ; $4877: $82
    inc bc                                        ; $4878: $03
    inc bc                                        ; $4879: $03
    inc bc                                        ; $487a: $03
    add d                                         ; $487b: $82
    inc bc                                        ; $487c: $03
    inc bc                                        ; $487d: $03
    inc bc                                        ; $487e: $03
    add d                                         ; $487f: $82
    inc bc                                        ; $4880: $03
    inc bc                                        ; $4881: $03
    inc bc                                        ; $4882: $03
    inc bc                                        ; $4883: $03
    inc bc                                        ; $4884: $03
    inc bc                                        ; $4885: $03
    inc bc                                        ; $4886: $03
    pop de                                        ; $4887: $d1
    jp nc, $d4d3                                  ; $4888: $d2 $d3 $d4

    pop de                                        ; $488b: $d1
    push de                                       ; $488c: $d5
    sub $d7                                       ; $488d: $d6 $d7
    ret c                                         ; $488f: $d8

    reti                                          ; $4890: $d9


    jp c, $dcdb                                   ; $4891: $da $db $dc

    db $dd                                        ; $4894: $dd
    sbc $ee                                       ; $4895: $de $ee
    inc bc                                        ; $4897: $03
    add d                                         ; $4898: $82
    add d                                         ; $4899: $82
    add d                                         ; $489a: $82
    inc bc                                        ; $489b: $03
    add d                                         ; $489c: $82
    add d                                         ; $489d: $82
    add d                                         ; $489e: $82
    add d                                         ; $489f: $82
    add d                                         ; $48a0: $82
    add d                                         ; $48a1: $82
    add d                                         ; $48a2: $82
    add d                                         ; $48a3: $82
    add d                                         ; $48a4: $82
    add d                                         ; $48a5: $82
    add d                                         ; $48a6: $82
    pop de                                        ; $48a7: $d1
    pop de                                        ; $48a8: $d1
    pop de                                        ; $48a9: $d1
    reti                                          ; $48aa: $d9


    pop de                                        ; $48ab: $d1
    pop de                                        ; $48ac: $d1
    call c, $d1dd                                 ; $48ad: $dc $dd $d1
    pop de                                        ; $48b0: $d1
    pop hl                                        ; $48b1: $e1
    ld [c], a                                     ; $48b2: $e2
    pop de                                        ; $48b3: $d1
    pop de                                        ; $48b4: $d1
    push hl                                       ; $48b5: $e5
    and $03                                       ; $48b6: $e6 $03
    inc bc                                        ; $48b8: $03
    inc bc                                        ; $48b9: $03
    add d                                         ; $48ba: $82
    inc bc                                        ; $48bb: $03
    inc bc                                        ; $48bc: $03
    add d                                         ; $48bd: $82
    add d                                         ; $48be: $82
    inc bc                                        ; $48bf: $03
    inc bc                                        ; $48c0: $03
    add d                                         ; $48c1: $82
    add d                                         ; $48c2: $82
    inc bc                                        ; $48c3: $03
    inc bc                                        ; $48c4: $03
    add d                                         ; $48c5: $82
    add d                                         ; $48c6: $82
    jp c, $d1db                                   ; $48c7: $da $db $d1

    pop de                                        ; $48ca: $d1
    sbc $ee                                       ; $48cb: $de $ee
    rst $28                                       ; $48cd: $ef
    pop de                                        ; $48ce: $d1
    rst $20                                       ; $48cf: $e7
    ld a, [c]                                     ; $48d0: $f2
    push af                                       ; $48d1: $f5
    pop de                                        ; $48d2: $d1
    jp hl                                         ; $48d3: $e9


    db $f4                                        ; $48d4: $f4
    or $d1                                        ; $48d5: $f6 $d1
    add d                                         ; $48d7: $82
    add d                                         ; $48d8: $82
    add d                                         ; $48d9: $82
    inc bc                                        ; $48da: $03
    add d                                         ; $48db: $82
    add d                                         ; $48dc: $82
    add d                                         ; $48dd: $82
    inc bc                                        ; $48de: $03
    add d                                         ; $48df: $82
    add d                                         ; $48e0: $82
    add d                                         ; $48e1: $82
    inc bc                                        ; $48e2: $03
    add d                                         ; $48e3: $82
    add d                                         ; $48e4: $82
    add d                                         ; $48e5: $82
    inc bc                                        ; $48e6: $03
    pop de                                        ; $48e7: $d1
    pop de                                        ; $48e8: $d1
    pop de                                        ; $48e9: $d1
    pop de                                        ; $48ea: $d1
    pop de                                        ; $48eb: $d1
    pop de                                        ; $48ec: $d1
    pop de                                        ; $48ed: $d1
    pop de                                        ; $48ee: $d1
    pop de                                        ; $48ef: $d1
    add hl, bc                                    ; $48f0: $09
    ld a, [bc]                                    ; $48f1: $0a
    pop de                                        ; $48f2: $d1
    pop de                                        ; $48f3: $d1
    pop de                                        ; $48f4: $d1
    pop de                                        ; $48f5: $d1
    pop de                                        ; $48f6: $d1
    inc bc                                        ; $48f7: $03
    inc bc                                        ; $48f8: $03
    inc bc                                        ; $48f9: $03
    inc bc                                        ; $48fa: $03
    inc bc                                        ; $48fb: $03
    inc bc                                        ; $48fc: $03
    inc bc                                        ; $48fd: $03
    inc bc                                        ; $48fe: $03
    inc bc                                        ; $48ff: $03
    ld bc, $0301                                  ; $4900: $01 $01 $03
    inc bc                                        ; $4903: $03
    inc bc                                        ; $4904: $03
    inc bc                                        ; $4905: $03
    inc bc                                        ; $4906: $03
    pop hl                                        ; $4907: $e1
    ld [c], a                                     ; $4908: $e2
    rst $20                                       ; $4909: $e7
    ld a, [c]                                     ; $490a: $f2
    push hl                                       ; $490b: $e5
    and $e9                                       ; $490c: $e6 $e9
    db $f4                                        ; $490e: $f4
    pop de                                        ; $490f: $d1
    pop de                                        ; $4910: $d1
    rst $30                                       ; $4911: $f7
    pop de                                        ; $4912: $d1
    ld de, $0e0d                                  ; $4913: $11 $0d $0e
    ld [$8282], sp                                ; $4916: $08 $82 $82
    add d                                         ; $4919: $82
    add d                                         ; $491a: $82
    add d                                         ; $491b: $82
    add d                                         ; $491c: $82
    add d                                         ; $491d: $82
    add d                                         ; $491e: $82
    inc bc                                        ; $491f: $03
    inc bc                                        ; $4920: $03
    inc bc                                        ; $4921: $03
    inc bc                                        ; $4922: $03
    ld bc, $0101                                  ; $4923: $01 $01 $01
    ld bc, $d1fc                                  ; $4926: $01 $fc $d1
    pop de                                        ; $4929: $d1
    pop de                                        ; $492a: $d1
    cp $ff                                        ; $492b: $fe $ff
    db $fc                                        ; $492d: $fc
    pop de                                        ; $492e: $d1
    pop de                                        ; $492f: $d1
    pop de                                        ; $4930: $d1
    dec bc                                        ; $4931: $0b
    pop de                                        ; $4932: $d1
    pop de                                        ; $4933: $d1
    db $10                                        ; $4934: $10
    ld de, $0117                                  ; $4935: $11 $17 $01
    inc bc                                        ; $4938: $03
    inc bc                                        ; $4939: $03
    inc bc                                        ; $493a: $03
    ld bc, $0101                                  ; $493b: $01 $01 $01
    inc bc                                        ; $493e: $03
    inc bc                                        ; $493f: $03
    inc bc                                        ; $4940: $03
    ld bc, $0303                                  ; $4941: $01 $03 $03
    ld bc, $0101                                  ; $4944: $01 $01 $01
    rst $30                                       ; $4947: $f7
    pop de                                        ; $4948: $d1
    pop de                                        ; $4949: $d1
    pop de                                        ; $494a: $d1
    pop de                                        ; $494b: $d1
    pop de                                        ; $494c: $d1
    ld c, $08                                     ; $494d: $0e $08
    inc c                                         ; $494f: $0c
    db $10                                        ; $4950: $10
    inc de                                        ; $4951: $13
    inc d                                         ; $4952: $14
    jr @+$11                                      ; $4953: $18 $0f

    ld d, $12                                     ; $4955: $16 $12
    inc bc                                        ; $4957: $03
    inc bc                                        ; $4958: $03
    inc bc                                        ; $4959: $03
    inc bc                                        ; $495a: $03
    inc bc                                        ; $495b: $03
    inc bc                                        ; $495c: $03
    ld bc, $0101                                  ; $495d: $01 $01 $01
    ld bc, $0101                                  ; $4960: $01 $01 $01
    ld bc, $0101                                  ; $4963: $01 $01 $01
    ld bc, $0d11                                  ; $4966: $01 $11 $0d
    ld c, $08                                     ; $4969: $0e $08
    ld d, $12                                     ; $496b: $16 $12
    inc de                                        ; $496d: $13
    inc d                                         ; $496e: $14
    dec d                                         ; $496f: $15
    rrca                                          ; $4970: $0f
    ld d, $10                                     ; $4971: $16 $10
    inc de                                        ; $4973: $13
    dec c                                         ; $4974: $0d
    ld c, $d1                                     ; $4975: $0e $d1
    ld bc, $0101                                  ; $4977: $01 $01 $01
    ld bc, $0101                                  ; $497a: $01 $01 $01
    ld bc, $0101                                  ; $497d: $01 $01 $01
    ld bc, $0101                                  ; $4980: $01 $01 $01
    ld bc, $0101                                  ; $4983: $01 $01 $01
    inc bc                                        ; $4986: $03
    inc c                                         ; $4987: $0c
    ld [de], a                                    ; $4988: $12
    inc de                                        ; $4989: $13
    inc d                                         ; $498a: $14
    ld c, $08                                     ; $498b: $0e $08
    pop de                                        ; $498d: $d1
    pop de                                        ; $498e: $d1
    pop de                                        ; $498f: $d1
    pop de                                        ; $4990: $d1
    pop de                                        ; $4991: $d1
    pop de                                        ; $4992: $d1
    dec bc                                        ; $4993: $0b
    pop de                                        ; $4994: $d1
    pop de                                        ; $4995: $d1
    pop de                                        ; $4996: $d1
    ld bc, $0101                                  ; $4997: $01 $01 $01
    ld bc, $0101                                  ; $499a: $01 $01 $01
    inc bc                                        ; $499d: $03
    inc bc                                        ; $499e: $03
    inc bc                                        ; $499f: $03
    inc bc                                        ; $49a0: $03
    inc bc                                        ; $49a1: $03
    inc bc                                        ; $49a2: $03
    ld bc, $0303                                  ; $49a3: $01 $03 $03
    inc bc                                        ; $49a6: $03
    rst $20                                       ; $49a7: $e7
    ld a, [c]                                     ; $49a8: $f2
    push af                                       ; $49a9: $f5
    pop de                                        ; $49aa: $d1
    jp hl                                         ; $49ab: $e9


    db $f4                                        ; $49ac: $f4
    or $d1                                        ; $49ad: $f6 $d1
    rst $30                                       ; $49af: $f7
    pop de                                        ; $49b0: $d1
    pop de                                        ; $49b1: $d1
    pop de                                        ; $49b2: $d1
    pop de                                        ; $49b3: $d1
    pop de                                        ; $49b4: $d1
    ldh [$d1], a                                  ; $49b5: $e0 $d1
    add d                                         ; $49b7: $82
    add d                                         ; $49b8: $82
    add d                                         ; $49b9: $82
    inc bc                                        ; $49ba: $03
    add d                                         ; $49bb: $82
    add d                                         ; $49bc: $82
    add d                                         ; $49bd: $82
    inc bc                                        ; $49be: $03
    inc bc                                        ; $49bf: $03
    inc bc                                        ; $49c0: $03
    inc bc                                        ; $49c1: $03
    inc bc                                        ; $49c2: $03
    add d                                         ; $49c3: $82
    inc bc                                        ; $49c4: $03
    add d                                         ; $49c5: $82
    inc bc                                        ; $49c6: $03
    pop de                                        ; $49c7: $d1
    add hl, de                                    ; $49c8: $19
    ld a, [de]                                    ; $49c9: $1a
    dec de                                        ; $49ca: $1b
    pop de                                        ; $49cb: $d1
    inc e                                         ; $49cc: $1c
    dec e                                         ; $49cd: $1d
    ld e, $d1                                     ; $49ce: $1e $d1
    rra                                           ; $49d0: $1f
    jr nz, jr_08b_49f4                            ; $49d1: $20 $21

    pop de                                        ; $49d3: $d1
    ld [hl+], a                                   ; $49d4: $22
    inc hl                                        ; $49d5: $23
    inc h                                         ; $49d6: $24
    inc bc                                        ; $49d7: $03
    rlca                                          ; $49d8: $07
    rlca                                          ; $49d9: $07
    rlca                                          ; $49da: $07
    inc bc                                        ; $49db: $03
    rlca                                          ; $49dc: $07
    rlca                                          ; $49dd: $07
    rlca                                          ; $49de: $07
    inc bc                                        ; $49df: $03
    rlca                                          ; $49e0: $07
    rlca                                          ; $49e1: $07
    rlca                                          ; $49e2: $07
    inc bc                                        ; $49e3: $03
    rlca                                          ; $49e4: $07
    rlca                                          ; $49e5: $07
    rlca                                          ; $49e6: $07
    dec h                                         ; $49e7: $25
    ld h, $27                                     ; $49e8: $26 $27
    jr z, jr_08b_4a15                             ; $49ea: $28 $29

    ld a, [hl+]                                   ; $49ec: $2a
    dec hl                                        ; $49ed: $2b
    inc l                                         ; $49ee: $2c
    dec l                                         ; $49ef: $2d
    ld l, $2f                                     ; $49f0: $2e $2f
    jr nc, jr_08b_4a25                            ; $49f2: $30 $31

jr_08b_49f4:
    ld [hl-], a                                   ; $49f4: $32
    inc sp                                        ; $49f5: $33
    inc [hl]                                      ; $49f6: $34
    inc bc                                        ; $49f7: $03
    inc bc                                        ; $49f8: $03
    inc bc                                        ; $49f9: $03
    inc bc                                        ; $49fa: $03
    inc bc                                        ; $49fb: $03
    inc bc                                        ; $49fc: $03
    inc bc                                        ; $49fd: $03
    inc bc                                        ; $49fe: $03
    inc bc                                        ; $49ff: $03
    inc bc                                        ; $4a00: $03
    inc bc                                        ; $4a01: $03
    inc bc                                        ; $4a02: $03
    inc bc                                        ; $4a03: $03
    inc bc                                        ; $4a04: $03
    inc bc                                        ; $4a05: $03
    inc bc                                        ; $4a06: $03
    rst $28                                       ; $4a07: $ef
    db $e4                                        ; $4a08: $e4
    db $eb                                        ; $4a09: $eb
    db $e4                                        ; $4a0a: $e4
    push af                                       ; $4a0b: $f5
    jp nc, $d4d3                                  ; $4a0c: $d2 $d3 $d4

    or $d5                                        ; $4a0f: $f6 $d5
    sub $d7                                       ; $4a11: $d6 $d7
    ret c                                         ; $4a13: $d8

    reti                                          ; $4a14: $d9


jr_08b_4a15:
    jp c, $82db                                   ; $4a15: $da $db $82

    add d                                         ; $4a18: $82
    add d                                         ; $4a19: $82
    and d                                         ; $4a1a: $a2
    add d                                         ; $4a1b: $82
    add d                                         ; $4a1c: $82
    add d                                         ; $4a1d: $82
    add d                                         ; $4a1e: $82
    add d                                         ; $4a1f: $82
    add d                                         ; $4a20: $82
    add d                                         ; $4a21: $82
    add d                                         ; $4a22: $82
    add d                                         ; $4a23: $82
    add d                                         ; $4a24: $82

jr_08b_4a25:
    add d                                         ; $4a25: $82
    add d                                         ; $4a26: $82
    pop de                                        ; $4a27: $d1
    dec [hl]                                      ; $4a28: $35
    ld [hl], $37                                  ; $4a29: $36 $37
    pop de                                        ; $4a2b: $d1
    jr c, jr_08b_4a67                             ; $4a2c: $38 $39

    ld a, [hl-]                                   ; $4a2e: $3a
    pop de                                        ; $4a2f: $d1
    dec sp                                        ; $4a30: $3b
    inc a                                         ; $4a31: $3c
    dec a                                         ; $4a32: $3d
    pop de                                        ; $4a33: $d1
    ld a, $3f                                     ; $4a34: $3e $3f
    ld b, b                                       ; $4a36: $40
    inc bc                                        ; $4a37: $03
    rlca                                          ; $4a38: $07
    rlca                                          ; $4a39: $07
    rlca                                          ; $4a3a: $07
    inc bc                                        ; $4a3b: $03
    rlca                                          ; $4a3c: $07
    rlca                                          ; $4a3d: $07
    rlca                                          ; $4a3e: $07
    inc bc                                        ; $4a3f: $03
    rlca                                          ; $4a40: $07
    rlca                                          ; $4a41: $07
    rlca                                          ; $4a42: $07
    inc bc                                        ; $4a43: $03
    rlca                                          ; $4a44: $07
    rlca                                          ; $4a45: $07
    rlca                                          ; $4a46: $07
    ld b, c                                       ; $4a47: $41
    ld b, d                                       ; $4a48: $42
    ld b, e                                       ; $4a49: $43
    ld b, h                                       ; $4a4a: $44
    ld b, l                                       ; $4a4b: $45
    ld b, [hl]                                    ; $4a4c: $46
    ld b, a                                       ; $4a4d: $47
    ld c, b                                       ; $4a4e: $48
    dec h                                         ; $4a4f: $25
    ld h, $27                                     ; $4a50: $26 $27
    jr z, jr_08b_4a7d                             ; $4a52: $28 $29

    ld a, [hl+]                                   ; $4a54: $2a
    dec hl                                        ; $4a55: $2b
    inc l                                         ; $4a56: $2c
    inc bc                                        ; $4a57: $03
    inc bc                                        ; $4a58: $03
    inc bc                                        ; $4a59: $03
    inc bc                                        ; $4a5a: $03
    inc bc                                        ; $4a5b: $03
    inc bc                                        ; $4a5c: $03
    inc bc                                        ; $4a5d: $03
    inc bc                                        ; $4a5e: $03
    inc bc                                        ; $4a5f: $03
    inc bc                                        ; $4a60: $03
    inc bc                                        ; $4a61: $03
    inc bc                                        ; $4a62: $03
    inc bc                                        ; $4a63: $03
    inc bc                                        ; $4a64: $03
    inc bc                                        ; $4a65: $03
    inc bc                                        ; $4a66: $03

jr_08b_4a67:
    push af                                       ; $4a67: $f5
    pop de                                        ; $4a68: $d1
    pop de                                        ; $4a69: $d1
    pop de                                        ; $4a6a: $d1
    or $d1                                        ; $4a6b: $f6 $d1
    pop de                                        ; $4a6d: $d1
    pop de                                        ; $4a6e: $d1
    pop de                                        ; $4a6f: $d1
    pop de                                        ; $4a70: $d1
    pop de                                        ; $4a71: $d1
    pop de                                        ; $4a72: $d1
    inc c                                         ; $4a73: $0c
    db $10                                        ; $4a74: $10
    ld de, $820d                                  ; $4a75: $11 $0d $82
    inc bc                                        ; $4a78: $03
    inc bc                                        ; $4a79: $03
    inc bc                                        ; $4a7a: $03
    add d                                         ; $4a7b: $82
    inc bc                                        ; $4a7c: $03

jr_08b_4a7d:
    inc bc                                        ; $4a7d: $03
    inc bc                                        ; $4a7e: $03
    inc bc                                        ; $4a7f: $03
    inc bc                                        ; $4a80: $03
    inc bc                                        ; $4a81: $03
    inc bc                                        ; $4a82: $03
    ld bc, $0101                                  ; $4a83: $01 $01 $01
    ld bc, $dddc                                  ; $4a86: $01 $dc $dd
    sbc $ee                                       ; $4a89: $de $ee
    pop hl                                        ; $4a8b: $e1
    ld [c], a                                     ; $4a8c: $e2
    rst $20                                       ; $4a8d: $e7
    ld a, [c]                                     ; $4a8e: $f2
    push hl                                       ; $4a8f: $e5
    and $e9                                       ; $4a90: $e6 $e9
    db $f4                                        ; $4a92: $f4
    pop de                                        ; $4a93: $d1
    pop de                                        ; $4a94: $d1
    rst $30                                       ; $4a95: $f7
    pop de                                        ; $4a96: $d1
    add d                                         ; $4a97: $82
    add d                                         ; $4a98: $82
    add d                                         ; $4a99: $82
    add d                                         ; $4a9a: $82
    add d                                         ; $4a9b: $82
    add d                                         ; $4a9c: $82
    add d                                         ; $4a9d: $82
    add d                                         ; $4a9e: $82
    add d                                         ; $4a9f: $82
    add d                                         ; $4aa0: $82
    add d                                         ; $4aa1: $82
    add d                                         ; $4aa2: $82
    inc bc                                        ; $4aa3: $03
    inc bc                                        ; $4aa4: $03
    inc bc                                        ; $4aa5: $03
    inc bc                                        ; $4aa6: $03
    rst $28                                       ; $4aa7: $ef
    add hl, de                                    ; $4aa8: $19
    ld a, [de]                                    ; $4aa9: $1a
    dec de                                        ; $4aaa: $1b
    push af                                       ; $4aab: $f5
    inc e                                         ; $4aac: $1c
    dec e                                         ; $4aad: $1d
    ld e, $f6                                     ; $4aae: $1e $f6
    rra                                           ; $4ab0: $1f
    jr nz, jr_08b_4ad4                            ; $4ab1: $20 $21

    pop de                                        ; $4ab3: $d1
    ld [hl+], a                                   ; $4ab4: $22
    inc hl                                        ; $4ab5: $23
    inc h                                         ; $4ab6: $24
    add d                                         ; $4ab7: $82
    rlca                                          ; $4ab8: $07
    rlca                                          ; $4ab9: $07
    rlca                                          ; $4aba: $07
    add d                                         ; $4abb: $82
    rlca                                          ; $4abc: $07
    rlca                                          ; $4abd: $07
    rlca                                          ; $4abe: $07
    add d                                         ; $4abf: $82
    rlca                                          ; $4ac0: $07
    rlca                                          ; $4ac1: $07
    rlca                                          ; $4ac2: $07
    inc bc                                        ; $4ac3: $03
    rlca                                          ; $4ac4: $07
    rlca                                          ; $4ac5: $07
    rlca                                          ; $4ac6: $07
    dec l                                         ; $4ac7: $2d
    ld l, $2f                                     ; $4ac8: $2e $2f
    jr nc, @+$33                                  ; $4aca: $30 $31

    ld [hl-], a                                   ; $4acc: $32
    inc sp                                        ; $4acd: $33
    inc [hl]                                      ; $4ace: $34
    ld b, c                                       ; $4acf: $41
    ld b, d                                       ; $4ad0: $42
    ld b, e                                       ; $4ad1: $43
    ld b, h                                       ; $4ad2: $44
    ld b, l                                       ; $4ad3: $45

jr_08b_4ad4:
    ld b, [hl]                                    ; $4ad4: $46
    ld b, a                                       ; $4ad5: $47
    ld c, b                                       ; $4ad6: $48
    inc bc                                        ; $4ad7: $03
    inc bc                                        ; $4ad8: $03
    inc bc                                        ; $4ad9: $03
    inc bc                                        ; $4ada: $03
    inc bc                                        ; $4adb: $03
    inc bc                                        ; $4adc: $03
    inc bc                                        ; $4add: $03
    inc bc                                        ; $4ade: $03
    inc bc                                        ; $4adf: $03
    inc bc                                        ; $4ae0: $03
    inc bc                                        ; $4ae1: $03
    inc bc                                        ; $4ae2: $03
    inc bc                                        ; $4ae3: $03
    inc bc                                        ; $4ae4: $03
    inc bc                                        ; $4ae5: $03
    inc bc                                        ; $4ae6: $03
    ld c, $08                                     ; $4ae7: $0e $08
    pop de                                        ; $4ae9: $d1
    pop de                                        ; $4aea: $d1
    pop de                                        ; $4aeb: $d1
    ld hl, sp-$07                                 ; $4aec: $f8 $f9
    pop de                                        ; $4aee: $d1
    pop de                                        ; $4aef: $d1
    ld a, [$d1fb]                                 ; $4af0: $fa $fb $d1
    pop de                                        ; $4af3: $d1
    pop de                                        ; $4af4: $d1
    pop de                                        ; $4af5: $d1
    pop de                                        ; $4af6: $d1
    ld bc, $0301                                  ; $4af7: $01 $01 $03
    inc bc                                        ; $4afa: $03
    inc bc                                        ; $4afb: $03
    ld bc, $0301                                  ; $4afc: $01 $01 $03
    inc bc                                        ; $4aff: $03
    ld bc, $0301                                  ; $4b00: $01 $01 $03
    inc bc                                        ; $4b03: $03
    inc bc                                        ; $4b04: $03
    inc bc                                        ; $4b05: $03
    inc bc                                        ; $4b06: $03
    pop de                                        ; $4b07: $d1
    pop de                                        ; $4b08: $d1
    pop de                                        ; $4b09: $d1
    rst $38                                       ; $4b0a: $ff
    pop de                                        ; $4b0b: $d1
    pop de                                        ; $4b0c: $d1
    pop de                                        ; $4b0d: $d1
    dec b                                         ; $4b0e: $05
    pop de                                        ; $4b0f: $d1
    pop de                                        ; $4b10: $d1
    db $fc                                        ; $4b11: $fc
    inc b                                         ; $4b12: $04
    pop de                                        ; $4b13: $d1
    dec b                                         ; $4b14: $05
    ld b, $02                                     ; $4b15: $06 $02
    inc bc                                        ; $4b17: $03
    inc bc                                        ; $4b18: $03
    inc bc                                        ; $4b19: $03
    ld bc, $0303                                  ; $4b1a: $01 $03 $03
    inc bc                                        ; $4b1d: $03
    ld bc, $0303                                  ; $4b1e: $01 $03 $03
    ld bc, $0301                                  ; $4b21: $01 $01 $03
    ld bc, $0101                                  ; $4b24: $01 $01 $01
    ldh a, [$f1]                                  ; $4b27: $f0 $f1
    rst $20                                       ; $4b29: $e7
    ld a, [c]                                     ; $4b2a: $f2
    db $d3                                        ; $4b2b: $d3
    di                                            ; $4b2c: $f3
    jp hl                                         ; $4b2d: $e9


    db $f4                                        ; $4b2e: $f4
    sub $d7                                       ; $4b2f: $d6 $d7
    rst $30                                       ; $4b31: $f7
    pop de                                        ; $4b32: $d1
    jp c, $d1db                                   ; $4b33: $da $db $d1

    pop de                                        ; $4b36: $d1
    add d                                         ; $4b37: $82
    add d                                         ; $4b38: $82
    add d                                         ; $4b39: $82
    add d                                         ; $4b3a: $82
    add d                                         ; $4b3b: $82
    add d                                         ; $4b3c: $82
    add d                                         ; $4b3d: $82
    add d                                         ; $4b3e: $82
    add d                                         ; $4b3f: $82
    add d                                         ; $4b40: $82
    inc bc                                        ; $4b41: $03
    inc bc                                        ; $4b42: $03
    add d                                         ; $4b43: $82
    add d                                         ; $4b44: $82
    add d                                         ; $4b45: $82
    inc bc                                        ; $4b46: $03
    push af                                       ; $4b47: $f5
    pop de                                        ; $4b48: $d1
    pop de                                        ; $4b49: $d1
    pop de                                        ; $4b4a: $d1
    or $d1                                        ; $4b4b: $f6 $d1
    pop de                                        ; $4b4d: $d1
    pop de                                        ; $4b4e: $d1
    pop de                                        ; $4b4f: $d1
    pop de                                        ; $4b50: $d1
    rlca                                          ; $4b51: $07
    dec b                                         ; $4b52: $05
    cp $02                                        ; $4b53: $fe $02
    db $fc                                        ; $4b55: $fc
    inc b                                         ; $4b56: $04
    add d                                         ; $4b57: $82
    inc bc                                        ; $4b58: $03
    inc bc                                        ; $4b59: $03
    inc bc                                        ; $4b5a: $03
    add d                                         ; $4b5b: $82
    inc bc                                        ; $4b5c: $03
    inc bc                                        ; $4b5d: $03
    inc bc                                        ; $4b5e: $03
    inc bc                                        ; $4b5f: $03
    inc bc                                        ; $4b60: $03
    ld bc, $0101                                  ; $4b61: $01 $01 $01
    ld bc, $0101                                  ; $4b64: $01 $01 $01
    pop de                                        ; $4b67: $d1
    pop de                                        ; $4b68: $d1
    pop de                                        ; $4b69: $d1
    rst $38                                       ; $4b6a: $ff
    pop de                                        ; $4b6b: $d1
    db $fd                                        ; $4b6c: $fd
    rlca                                          ; $4b6d: $07
    ld bc, $0206                                  ; $4b6e: $01 $06 $02
    inc bc                                        ; $4b71: $03
    inc b                                         ; $4b72: $04
    nop                                           ; $4b73: $00
    dec b                                         ; $4b74: $05
    cp $ff                                        ; $4b75: $fe $ff
    inc bc                                        ; $4b77: $03
    inc bc                                        ; $4b78: $03
    inc bc                                        ; $4b79: $03
    ld bc, $0103                                  ; $4b7a: $01 $03 $01
    ld bc, $0101                                  ; $4b7d: $01 $01 $01
    ld bc, $0101                                  ; $4b80: $01 $01 $01
    ld bc, $0101                                  ; $4b83: $01 $01 $01
    ld bc, $fdfc                                  ; $4b86: $01 $fc $fd
    rlca                                          ; $4b89: $07
    pop de                                        ; $4b8a: $d1
    ld b, $02                                     ; $4b8b: $06 $02
    inc bc                                        ; $4b8d: $03
    db $fd                                        ; $4b8e: $fd
    nop                                           ; $4b8f: $00
    ld bc, $02fe                                  ; $4b90: $01 $fe $02
    pop de                                        ; $4b93: $d1
    pop de                                        ; $4b94: $d1
    pop de                                        ; $4b95: $d1
    pop de                                        ; $4b96: $d1
    ld bc, $0101                                  ; $4b97: $01 $01 $01
    inc bc                                        ; $4b9a: $03
    ld bc, $0101                                  ; $4b9b: $01 $01 $01
    ld bc, $0101                                  ; $4b9e: $01 $01 $01
    ld bc, $0301                                  ; $4ba1: $01 $01 $03
    inc bc                                        ; $4ba4: $03
    inc bc                                        ; $4ba5: $03
    inc bc                                        ; $4ba6: $03
    sbc $ee                                       ; $4ba7: $de $ee
    rst $28                                       ; $4ba9: $ef
    pop de                                        ; $4baa: $d1
    rst $20                                       ; $4bab: $e7
    ld a, [c]                                     ; $4bac: $f2
    push af                                       ; $4bad: $f5
    pop de                                        ; $4bae: $d1
    jp hl                                         ; $4baf: $e9


    db $f4                                        ; $4bb0: $f4
    or $d1                                        ; $4bb1: $f6 $d1
    rst $30                                       ; $4bb3: $f7
    pop de                                        ; $4bb4: $d1
    pop de                                        ; $4bb5: $d1
    pop de                                        ; $4bb6: $d1
    add d                                         ; $4bb7: $82
    add d                                         ; $4bb8: $82
    add d                                         ; $4bb9: $82
    inc bc                                        ; $4bba: $03
    add d                                         ; $4bbb: $82
    add d                                         ; $4bbc: $82
    add d                                         ; $4bbd: $82
    inc bc                                        ; $4bbe: $03
    add d                                         ; $4bbf: $82
    add d                                         ; $4bc0: $82
    add d                                         ; $4bc1: $82
    inc bc                                        ; $4bc2: $03
    inc bc                                        ; $4bc3: $03
    inc bc                                        ; $4bc4: $03
    inc bc                                        ; $4bc5: $03
    inc bc                                        ; $4bc6: $03
    pop de                                        ; $4bc7: $d1
    dec b                                         ; $4bc8: $05
    cp $ff                                        ; $4bc9: $fe $ff
    pop de                                        ; $4bcb: $d1
    pop de                                        ; $4bcc: $d1
    pop de                                        ; $4bcd: $d1
    pop de                                        ; $4bce: $d1
    pop de                                        ; $4bcf: $d1
    dec bc                                        ; $4bd0: $0b
    pop de                                        ; $4bd1: $d1
    pop de                                        ; $4bd2: $d1
    pop de                                        ; $4bd3: $d1
    pop de                                        ; $4bd4: $d1
    pop de                                        ; $4bd5: $d1
    pop de                                        ; $4bd6: $d1
    inc bc                                        ; $4bd7: $03
    ld bc, $0101                                  ; $4bd8: $01 $01 $01
    inc bc                                        ; $4bdb: $03
    inc bc                                        ; $4bdc: $03
    inc bc                                        ; $4bdd: $03
    inc bc                                        ; $4bde: $03
    inc bc                                        ; $4bdf: $03
    ld bc, $0303                                  ; $4be0: $01 $03 $03
    inc bc                                        ; $4be3: $03
    inc bc                                        ; $4be4: $03
    inc bc                                        ; $4be5: $03
    inc bc                                        ; $4be6: $03
    pop de                                        ; $4be7: $d1
    pop de                                        ; $4be8: $d1
    ldh [$d1], a                                  ; $4be9: $e0 $d1
    pop de                                        ; $4beb: $d1
    db $e4                                        ; $4bec: $e4
    db $eb                                        ; $4bed: $eb
    db $e4                                        ; $4bee: $e4
    pop de                                        ; $4bef: $d1
    jp nc, $d4d3                                  ; $4bf0: $d2 $d3 $d4

    pop de                                        ; $4bf3: $d1
    push de                                       ; $4bf4: $d5
    sub $d7                                       ; $4bf5: $d6 $d7
    inc bc                                        ; $4bf7: $03
    inc bc                                        ; $4bf8: $03
    add d                                         ; $4bf9: $82
    inc bc                                        ; $4bfa: $03
    inc bc                                        ; $4bfb: $03
    add d                                         ; $4bfc: $82
    add d                                         ; $4bfd: $82
    and d                                         ; $4bfe: $a2
    inc bc                                        ; $4bff: $03
    add d                                         ; $4c00: $82
    add d                                         ; $4c01: $82
    add d                                         ; $4c02: $82
    inc bc                                        ; $4c03: $03
    add d                                         ; $4c04: $82
    add d                                         ; $4c05: $82
    add d                                         ; $4c06: $82
    pop de                                        ; $4c07: $d1
    pop de                                        ; $4c08: $d1
    pop de                                        ; $4c09: $d1
    pop de                                        ; $4c0a: $d1
    pop de                                        ; $4c0b: $d1
    pop de                                        ; $4c0c: $d1
    pop de                                        ; $4c0d: $d1
    add hl, bc                                    ; $4c0e: $09
    pop de                                        ; $4c0f: $d1
    pop de                                        ; $4c10: $d1
    pop de                                        ; $4c11: $d1
    pop de                                        ; $4c12: $d1
    ld c, $08                                     ; $4c13: $0e $08
    inc c                                         ; $4c15: $0c
    db $10                                        ; $4c16: $10
    inc bc                                        ; $4c17: $03
    inc bc                                        ; $4c18: $03
    inc bc                                        ; $4c19: $03
    inc bc                                        ; $4c1a: $03
    inc bc                                        ; $4c1b: $03
    inc bc                                        ; $4c1c: $03
    inc bc                                        ; $4c1d: $03
    ld bc, $0303                                  ; $4c1e: $01 $03 $03
    inc bc                                        ; $4c21: $03
    inc bc                                        ; $4c22: $03
    ld bc, $0101                                  ; $4c23: $01 $01 $01
    ld bc, $d1d1                                  ; $4c26: $01 $d1 $d1
    add hl, bc                                    ; $4c29: $09
    ld a, [bc]                                    ; $4c2a: $0a
    ld c, c                                       ; $4c2b: $49
    ld c, d                                       ; $4c2c: $4a
    pop de                                        ; $4c2d: $d1
    pop de                                        ; $4c2e: $d1
    ld c, e                                       ; $4c2f: $4b
    ld c, h                                       ; $4c30: $4c
    ld c, l                                       ; $4c31: $4d
    ld c, [hl]                                    ; $4c32: $4e
    ld c, a                                       ; $4c33: $4f
    ld d, b                                       ; $4c34: $50
    ld d, c                                       ; $4c35: $51
    ld d, d                                       ; $4c36: $52
    inc bc                                        ; $4c37: $03
    inc bc                                        ; $4c38: $03
    ld bc, $0301                                  ; $4c39: $01 $01 $03
    inc bc                                        ; $4c3c: $03
    inc bc                                        ; $4c3d: $03
    inc bc                                        ; $4c3e: $03
    inc bc                                        ; $4c3f: $03
    inc bc                                        ; $4c40: $03
    inc bc                                        ; $4c41: $03
    inc bc                                        ; $4c42: $03
    inc bc                                        ; $4c43: $03
    inc bc                                        ; $4c44: $03
    inc bc                                        ; $4c45: $03
    inc bc                                        ; $4c46: $03
    pop de                                        ; $4c47: $d1
    pop de                                        ; $4c48: $d1
    pop de                                        ; $4c49: $d1
    dec bc                                        ; $4c4a: $0b
    pop de                                        ; $4c4b: $d1
    pop de                                        ; $4c4c: $d1
    pop de                                        ; $4c4d: $d1
    pop de                                        ; $4c4e: $d1
    pop de                                        ; $4c4f: $d1
    ld hl, sp-$07                                 ; $4c50: $f8 $f9
    pop de                                        ; $4c52: $d1
    ld d, e                                       ; $4c53: $53
    ld a, [$d1fb]                                 ; $4c54: $fa $fb $d1
    inc bc                                        ; $4c57: $03
    inc bc                                        ; $4c58: $03
    inc bc                                        ; $4c59: $03
    ld bc, $0303                                  ; $4c5a: $01 $03 $03
    inc bc                                        ; $4c5d: $03
    inc bc                                        ; $4c5e: $03
    inc bc                                        ; $4c5f: $03
    ld bc, $0301                                  ; $4c60: $01 $01 $03
    inc bc                                        ; $4c63: $03
    ld bc, $0301                                  ; $4c64: $01 $01 $03
    pop de                                        ; $4c67: $d1
    dec c                                         ; $4c68: $0d
    ld c, $0f                                     ; $4c69: $0e $0f
    rst $28                                       ; $4c6b: $ef
    pop de                                        ; $4c6c: $d1
    pop de                                        ; $4c6d: $d1
    dec c                                         ; $4c6e: $0d
    push af                                       ; $4c6f: $f5
    pop de                                        ; $4c70: $d1
    pop de                                        ; $4c71: $d1
    pop de                                        ; $4c72: $d1
    or $d1                                        ; $4c73: $f6 $d1
    pop de                                        ; $4c75: $d1
    pop de                                        ; $4c76: $d1
    inc bc                                        ; $4c77: $03
    ld bc, $0101                                  ; $4c78: $01 $01 $01
    add d                                         ; $4c7b: $82
    inc bc                                        ; $4c7c: $03
    inc bc                                        ; $4c7d: $03
    ld bc, $0382                                  ; $4c7e: $01 $82 $03
    inc bc                                        ; $4c81: $03
    inc bc                                        ; $4c82: $03
    add d                                         ; $4c83: $82
    inc bc                                        ; $4c84: $03
    inc bc                                        ; $4c85: $03
    inc bc                                        ; $4c86: $03
    ld d, h                                       ; $4c87: $54
    ld d, l                                       ; $4c88: $55
    ld d, [hl]                                    ; $4c89: $56
    ld d, a                                       ; $4c8a: $57
    ld e, b                                       ; $4c8b: $58
    ld e, c                                       ; $4c8c: $59
    ld e, d                                       ; $4c8d: $5a
    ld e, e                                       ; $4c8e: $5b
    ld e, h                                       ; $4c8f: $5c
    ld e, l                                       ; $4c90: $5d
    ld e, [hl]                                    ; $4c91: $5e
    ld e, a                                       ; $4c92: $5f
    pop de                                        ; $4c93: $d1
    ldh [$d1], a                                  ; $4c94: $e0 $d1
    pop de                                        ; $4c96: $d1
    inc bc                                        ; $4c97: $03
    inc bc                                        ; $4c98: $03
    inc bc                                        ; $4c99: $03
    inc bc                                        ; $4c9a: $03
    inc bc                                        ; $4c9b: $03
    inc bc                                        ; $4c9c: $03
    inc bc                                        ; $4c9d: $03
    inc bc                                        ; $4c9e: $03
    ld b, e                                       ; $4c9f: $43
    ld b, e                                       ; $4ca0: $43
    ld b, e                                       ; $4ca1: $43
    inc bc                                        ; $4ca2: $03
    inc bc                                        ; $4ca3: $03
    add d                                         ; $4ca4: $82
    inc bc                                        ; $4ca5: $03
    inc bc                                        ; $4ca6: $03
    ld d, h                                       ; $4ca7: $54
    ld c, c                                       ; $4ca8: $49
    ld c, d                                       ; $4ca9: $4a
    pop de                                        ; $4caa: $d1
    ld e, b                                       ; $4cab: $58
    ld e, c                                       ; $4cac: $59
    ld e, d                                       ; $4cad: $5a
    ld c, c                                       ; $4cae: $49
    ld h, b                                       ; $4caf: $60
    ld c, h                                       ; $4cb0: $4c
    ld h, c                                       ; $4cb1: $61
    ld h, d                                       ; $4cb2: $62
    ld e, h                                       ; $4cb3: $5c
    ld e, l                                       ; $4cb4: $5d
    ld e, [hl]                                    ; $4cb5: $5e
    ld d, d                                       ; $4cb6: $52
    inc bc                                        ; $4cb7: $03
    inc bc                                        ; $4cb8: $03
    inc bc                                        ; $4cb9: $03
    inc bc                                        ; $4cba: $03
    inc bc                                        ; $4cbb: $03
    inc bc                                        ; $4cbc: $03
    inc bc                                        ; $4cbd: $03
    inc bc                                        ; $4cbe: $03
    inc bc                                        ; $4cbf: $03
    inc bc                                        ; $4cc0: $03
    inc bc                                        ; $4cc1: $03
    inc bc                                        ; $4cc2: $03
    ld b, e                                       ; $4cc3: $43
    ld b, e                                       ; $4cc4: $43
    ld b, e                                       ; $4cc5: $43
    inc bc                                        ; $4cc6: $03
    ld h, e                                       ; $4cc7: $63
    pop de                                        ; $4cc8: $d1
    rst $30                                       ; $4cc9: $f7
    pop de                                        ; $4cca: $d1
    ld c, d                                       ; $4ccb: $4a
    pop de                                        ; $4ccc: $d1
    pop de                                        ; $4ccd: $d1
    dec bc                                        ; $4cce: $0b
    ld c, e                                       ; $4ccf: $4b
    ld e, [hl]                                    ; $4cd0: $5e
    ld e, l                                       ; $4cd1: $5d
    ld e, h                                       ; $4cd2: $5c
    ld h, h                                       ; $4cd3: $64
    ld h, l                                       ; $4cd4: $65
    ld d, c                                       ; $4cd5: $51
    ld d, d                                       ; $4cd6: $52
    rlca                                          ; $4cd7: $07
    inc bc                                        ; $4cd8: $03
    inc bc                                        ; $4cd9: $03
    inc bc                                        ; $4cda: $03
    inc bc                                        ; $4cdb: $03
    inc bc                                        ; $4cdc: $03
    inc bc                                        ; $4cdd: $03
    ld bc, $2303                                  ; $4cde: $01 $03 $23
    inc hl                                        ; $4ce1: $23
    inc hl                                        ; $4ce2: $23
    inc bc                                        ; $4ce3: $03
    inc bc                                        ; $4ce4: $03
    inc bc                                        ; $4ce5: $03
    inc bc                                        ; $4ce6: $03
    pop de                                        ; $4ce7: $d1
    pop de                                        ; $4ce8: $d1
    dec bc                                        ; $4ce9: $0b
    pop de                                        ; $4cea: $d1
    pop de                                        ; $4ceb: $d1
    rst $38                                       ; $4cec: $ff
    db $fc                                        ; $4ced: $fc
    db $fd                                        ; $4cee: $fd
    add hl, bc                                    ; $4cef: $09
    ld a, [bc]                                    ; $4cf0: $0a
    pop de                                        ; $4cf1: $d1
    rst $38                                       ; $4cf2: $ff
    ld c, c                                       ; $4cf3: $49
    ld c, d                                       ; $4cf4: $4a
    pop de                                        ; $4cf5: $d1
    pop de                                        ; $4cf6: $d1
    inc bc                                        ; $4cf7: $03
    inc bc                                        ; $4cf8: $03
    ld bc, $0303                                  ; $4cf9: $01 $03 $03
    ld bc, $0101                                  ; $4cfc: $01 $01 $01
    ld bc, $0301                                  ; $4cff: $01 $01 $03
    ld bc, $0303                                  ; $4d02: $01 $03 $03
    inc bc                                        ; $4d05: $03
    inc bc                                        ; $4d06: $03
    pop de                                        ; $4d07: $d1
    pop de                                        ; $4d08: $d1
    dec bc                                        ; $4d09: $0b
    pop de                                        ; $4d0a: $d1
    rlca                                          ; $4d0b: $07
    pop de                                        ; $4d0c: $d1
    pop de                                        ; $4d0d: $d1
    pop de                                        ; $4d0e: $d1
    db $fc                                        ; $4d0f: $fc
    db $fd                                        ; $4d10: $fd
    pop de                                        ; $4d11: $d1
    ld h, [hl]                                    ; $4d12: $66
    pop de                                        ; $4d13: $d1
    pop de                                        ; $4d14: $d1
    pop de                                        ; $4d15: $d1
    ld h, a                                       ; $4d16: $67
    inc bc                                        ; $4d17: $03
    inc bc                                        ; $4d18: $03
    ld bc, $0103                                  ; $4d19: $01 $03 $01
    inc bc                                        ; $4d1c: $03
    inc bc                                        ; $4d1d: $03
    inc bc                                        ; $4d1e: $03
    ld bc, $0301                                  ; $4d1f: $01 $01 $03
    ld [bc], a                                    ; $4d22: $02
    inc bc                                        ; $4d23: $03
    inc bc                                        ; $4d24: $03
    inc bc                                        ; $4d25: $03
    ld [bc], a                                    ; $4d26: $02
    pop de                                        ; $4d27: $d1
    pop de                                        ; $4d28: $d1
    cp $ff                                        ; $4d29: $fe $ff
    pop de                                        ; $4d2b: $d1
    pop de                                        ; $4d2c: $d1
    pop de                                        ; $4d2d: $d1
    pop de                                        ; $4d2e: $d1
    ld l, b                                       ; $4d2f: $68
    dec bc                                        ; $4d30: $0b
    pop de                                        ; $4d31: $d1
    pop de                                        ; $4d32: $d1
    ld l, c                                       ; $4d33: $69
    pop de                                        ; $4d34: $d1
    pop de                                        ; $4d35: $d1
    ld [$0303], sp                                ; $4d36: $08 $03 $03
    ld bc, $0301                                  ; $4d39: $01 $01 $03
    inc bc                                        ; $4d3c: $03
    inc bc                                        ; $4d3d: $03
    inc bc                                        ; $4d3e: $03
    ld [bc], a                                    ; $4d3f: $02
    ld bc, $0303                                  ; $4d40: $01 $03 $03
    ld [bc], a                                    ; $4d43: $02
    inc bc                                        ; $4d44: $03
    inc bc                                        ; $4d45: $03
    ld bc, $fdfc                                  ; $4d46: $01 $fc $fd
    nop                                           ; $4d49: $00
    ld bc, $ffd1                                  ; $4d4a: $01 $d1 $ff
    db $fc                                        ; $4d4d: $fc
    db $fd                                        ; $4d4e: $fd
    dec bc                                        ; $4d4f: $0b
    pop de                                        ; $4d50: $d1
    pop de                                        ; $4d51: $d1
    pop de                                        ; $4d52: $d1
    inc c                                         ; $4d53: $0c
    db $10                                        ; $4d54: $10
    ld de, $010d                                  ; $4d55: $11 $0d $01
    ld bc, $0101                                  ; $4d58: $01 $01 $01
    inc bc                                        ; $4d5b: $03
    ld bc, $0101                                  ; $4d5c: $01 $01 $01
    ld bc, $0303                                  ; $4d5f: $01 $03 $03
    inc bc                                        ; $4d62: $03
    ld bc, $0101                                  ; $4d63: $01 $01 $01
    ld bc, $0206                                  ; $4d66: $01 $06 $02
    inc bc                                        ; $4d69: $03
    db $fd                                        ; $4d6a: $fd
    rlca                                          ; $4d6b: $07
    pop de                                        ; $4d6c: $d1
    pop de                                        ; $4d6d: $d1
    pop de                                        ; $4d6e: $d1
    pop de                                        ; $4d6f: $d1
    pop de                                        ; $4d70: $d1
    pop de                                        ; $4d71: $d1
    pop de                                        ; $4d72: $d1
    ld c, $08                                     ; $4d73: $0e $08
    inc c                                         ; $4d75: $0c
    db $10                                        ; $4d76: $10
    ld bc, $0101                                  ; $4d77: $01 $01 $01
    ld bc, $0301                                  ; $4d7a: $01 $01 $03
    inc bc                                        ; $4d7d: $03
    inc bc                                        ; $4d7e: $03
    inc bc                                        ; $4d7f: $03
    inc bc                                        ; $4d80: $03
    inc bc                                        ; $4d81: $03
    inc bc                                        ; $4d82: $03
    ld bc, $0101                                  ; $4d83: $01 $01 $01
    ld bc, $d1d1                                  ; $4d86: $01 $d1 $d1
    pop de                                        ; $4d89: $d1
    ld l, d                                       ; $4d8a: $6a
    ld a, [bc]                                    ; $4d8b: $0a
    pop de                                        ; $4d8c: $d1
    ld de, $d10d                                  ; $4d8d: $11 $0d $d1
    ld [$120c], sp                                ; $4d90: $08 $0c $12
    ld de, $1514                                  ; $4d93: $11 $14 $15
    rrca                                          ; $4d96: $0f
    inc bc                                        ; $4d97: $03
    inc bc                                        ; $4d98: $03
    inc bc                                        ; $4d99: $03
    ld [bc], a                                    ; $4d9a: $02
    ld bc, $0103                                  ; $4d9b: $01 $03 $01
    ld bc, $0103                                  ; $4d9e: $01 $03 $01
    ld bc, $0101                                  ; $4da1: $01 $01 $01
    ld bc, $0101                                  ; $4da4: $01 $01 $01
    ld l, e                                       ; $4da7: $6b
    db $10                                        ; $4da8: $10
    ld de, $0e14                                  ; $4da9: $11 $14 $0e
    rrca                                          ; $4dac: $0f
    ld d, $12                                     ; $4dad: $16 $12
    inc de                                        ; $4daf: $13
    inc d                                         ; $4db0: $14
    ld c, $0f                                     ; $4db1: $0e $0f
    ld d, $10                                     ; $4db3: $16 $10
    inc de                                        ; $4db5: $13
    dec c                                         ; $4db6: $0d
    ld [bc], a                                    ; $4db7: $02
    ld bc, $0101                                  ; $4db8: $01 $01 $01
    ld bc, $0101                                  ; $4dbb: $01 $01 $01
    ld bc, $0101                                  ; $4dbe: $01 $01 $01
    ld bc, $0101                                  ; $4dc1: $01 $01 $01
    ld bc, $0101                                  ; $4dc4: $01 $01 $01
    dec d                                         ; $4dc7: $15
    rrca                                          ; $4dc8: $0f
    ld d, $12                                     ; $4dc9: $16 $12
    inc de                                        ; $4dcb: $13
    dec c                                         ; $4dcc: $0d
    dec d                                         ; $4dcd: $15
    ld [$120c], sp                                ; $4dce: $08 $0c $12
    ld de, $0ed1                                  ; $4dd1: $11 $d1 $0e
    ld [$0bd1], sp                                ; $4dd4: $08 $d1 $0b
    ld bc, $0101                                  ; $4dd7: $01 $01 $01
    ld bc, $0101                                  ; $4dda: $01 $01 $01
    ld bc, $0101                                  ; $4ddd: $01 $01 $01
    ld bc, $0301                                  ; $4de0: $01 $01 $03
    ld bc, $0301                                  ; $4de3: $01 $01 $03
    ld bc, $1413                                  ; $4de6: $01 $13 $14
    ld c, $d1                                     ; $4de9: $0e $d1
    inc c                                         ; $4deb: $0c
    pop de                                        ; $4dec: $d1
    pop de                                        ; $4ded: $d1
    pop de                                        ; $4dee: $d1
    pop de                                        ; $4def: $d1
    pop de                                        ; $4df0: $d1
    pop de                                        ; $4df1: $d1
    dec bc                                        ; $4df2: $0b
    pop de                                        ; $4df3: $d1
    dec bc                                        ; $4df4: $0b
    pop de                                        ; $4df5: $d1
    pop de                                        ; $4df6: $d1
    ld bc, $0101                                  ; $4df7: $01 $01 $01
    inc bc                                        ; $4dfa: $03
    ld bc, $0303                                  ; $4dfb: $01 $03 $03
    inc bc                                        ; $4dfe: $03
    inc bc                                        ; $4dff: $03
    inc bc                                        ; $4e00: $03
    inc bc                                        ; $4e01: $03
    ld bc, $0103                                  ; $4e02: $01 $03 $01
    inc bc                                        ; $4e05: $03
    inc bc                                        ; $4e06: $03
    ld d, $12                                     ; $4e07: $16 $12
    inc de                                        ; $4e09: $13
    inc d                                         ; $4e0a: $14
    ld c, $08                                     ; $4e0b: $0e $08
    inc c                                         ; $4e0d: $0c
    db $10                                        ; $4e0e: $10
    pop de                                        ; $4e0f: $d1

Jump_08b_4e10:
    pop de                                        ; $4e10: $d1
    pop de                                        ; $4e11: $d1
    pop de                                        ; $4e12: $d1
    pop de                                        ; $4e13: $d1
    pop de                                        ; $4e14: $d1
    pop de                                        ; $4e15: $d1
    pop de                                        ; $4e16: $d1
    ld bc, $0101                                  ; $4e17: $01 $01 $01
    ld bc, $0101                                  ; $4e1a: $01 $01 $01
    ld bc, $0301                                  ; $4e1d: $01 $01 $03
    inc bc                                        ; $4e20: $03
    inc bc                                        ; $4e21: $03
    inc bc                                        ; $4e22: $03
    inc bc                                        ; $4e23: $03
    inc bc                                        ; $4e24: $03
    inc bc                                        ; $4e25: $03
    inc bc                                        ; $4e26: $03
    ld c, $08                                     ; $4e27: $0e $08
    inc c                                         ; $4e29: $0c
    db $10                                        ; $4e2a: $10
    ld de, $f80d                                  ; $4e2b: $11 $0d $f8
    ld sp, hl                                     ; $4e2e: $f9
    pop de                                        ; $4e2f: $d1
    pop de                                        ; $4e30: $d1
    ld a, [$d1fb]                                 ; $4e31: $fa $fb $d1
    pop de                                        ; $4e34: $d1
    pop de                                        ; $4e35: $d1
    db $fd                                        ; $4e36: $fd
    ld bc, $0101                                  ; $4e37: $01 $01 $01
    ld bc, $0101                                  ; $4e3a: $01 $01 $01
    ld bc, $0301                                  ; $4e3d: $01 $01 $03
    inc bc                                        ; $4e40: $03
    ld bc, $0301                                  ; $4e41: $01 $01 $03
    inc bc                                        ; $4e44: $03
    inc bc                                        ; $4e45: $03
    ld bc, $d1d1                                  ; $4e46: $01 $d1 $d1
    dec bc                                        ; $4e49: $0b
    pop de                                        ; $4e4a: $d1
    pop de                                        ; $4e4b: $d1
    dec bc                                        ; $4e4c: $0b
    rlca                                          ; $4e4d: $07
    dec b                                         ; $4e4e: $05
    pop de                                        ; $4e4f: $d1
    rst $38                                       ; $4e50: $ff
    db $fc                                        ; $4e51: $fc
    inc b                                         ; $4e52: $04
    rlca                                          ; $4e53: $07
    dec b                                         ; $4e54: $05
    ld b, $02                                     ; $4e55: $06 $02
    inc bc                                        ; $4e57: $03
    inc bc                                        ; $4e58: $03
    ld bc, $0303                                  ; $4e59: $01 $03 $03
    ld bc, $0101                                  ; $4e5c: $01 $01 $01
    inc bc                                        ; $4e5f: $03
    ld bc, $0101                                  ; $4e60: $01 $01 $01
    ld bc, $0101                                  ; $4e63: $01 $01 $01
    ld bc, $fdfc                                  ; $4e66: $01 $fc $fd
    nop                                           ; $4e69: $00
    ld bc, $02fe                                  ; $4e6a: $01 $fe $02
    inc bc                                        ; $4e6d: $03
    db $fd                                        ; $4e6e: $fd
    nop                                           ; $4e6f: $00
    ld bc, $d1fe                                  ; $4e70: $01 $fe $d1
    inc bc                                        ; $4e73: $03
    db $fd                                        ; $4e74: $fd
    pop de                                        ; $4e75: $d1
    pop de                                        ; $4e76: $d1
    ld bc, $0101                                  ; $4e77: $01 $01 $01
    ld bc, $0101                                  ; $4e7a: $01 $01 $01
    ld bc, $0101                                  ; $4e7d: $01 $01 $01
    ld bc, $0301                                  ; $4e80: $01 $01 $03
    ld bc, $0301                                  ; $4e83: $01 $01 $03
    inc bc                                        ; $4e86: $03
    pop de                                        ; $4e87: $d1
    add hl, bc                                    ; $4e88: $09
    ld a, [bc]                                    ; $4e89: $0a
    pop de                                        ; $4e8a: $d1
    rlca                                          ; $4e8b: $07
    dec b                                         ; $4e8c: $05
    cp $ff                                        ; $4e8d: $fe $ff
    inc bc                                        ; $4e8f: $03
    inc b                                         ; $4e90: $04
    nop                                           ; $4e91: $00
    dec b                                         ; $4e92: $05
    cp $02                                        ; $4e93: $fe $02
    inc bc                                        ; $4e95: $03
    inc b                                         ; $4e96: $04
    inc bc                                        ; $4e97: $03
    ld bc, $0301                                  ; $4e98: $01 $01 $03
    ld bc, $0101                                  ; $4e9b: $01 $01 $01
    ld bc, $0101                                  ; $4e9e: $01 $01 $01
    ld bc, $0101                                  ; $4ea1: $01 $01 $01
    ld bc, $0101                                  ; $4ea4: $01 $01 $01
    rlca                                          ; $4ea7: $07
    dec b                                         ; $4ea8: $05
    cp $ff                                        ; $4ea9: $fe $ff
    inc bc                                        ; $4eab: $03
    db $fd                                        ; $4eac: $fd
    rlca                                          ; $4ead: $07
    ld bc, $02fe                                  ; $4eae: $01 $fe $02
    inc bc                                        ; $4eb1: $03
    inc b                                         ; $4eb2: $04
    nop                                           ; $4eb3: $00
    ld bc, $ff06                                  ; $4eb4: $01 $06 $ff
    ld bc, $0101                                  ; $4eb7: $01 $01 $01
    ld bc, $0101                                  ; $4eba: $01 $01 $01
    ld bc, $0101                                  ; $4ebd: $01 $01 $01
    ld bc, $0101                                  ; $4ec0: $01 $01 $01
    ld bc, $0101                                  ; $4ec3: $01 $01 $01
    ld bc, $04fc                                  ; $4ec6: $01 $fc $04
    nop                                           ; $4ec9: $00
    ld bc, $0206                                  ; $4eca: $01 $06 $02
    inc bc                                        ; $4ecd: $03
    db $fd                                        ; $4ece: $fd
    rlca                                          ; $4ecf: $07
    ld bc, $fffe                                  ; $4ed0: $01 $fe $ff
    inc bc                                        ; $4ed3: $03
    db $fd                                        ; $4ed4: $fd
    rlca                                          ; $4ed5: $07
    pop de                                        ; $4ed6: $d1
    ld bc, $0101                                  ; $4ed7: $01 $01 $01
    ld bc, $0101                                  ; $4eda: $01 $01 $01
    ld bc, $0101                                  ; $4edd: $01 $01 $01
    ld bc, $0101                                  ; $4ee0: $01 $01 $01
    ld bc, $0101                                  ; $4ee3: $01 $01 $01
    inc bc                                        ; $4ee6: $03
    cp $d1                                        ; $4ee7: $fe $d1
    ldh [$d1], a                                  ; $4ee9: $e0 $d1
    pop de                                        ; $4eeb: $d1
    db $e4                                        ; $4eec: $e4
    db $eb                                        ; $4eed: $eb
    db $e4                                        ; $4eee: $e4
    pop de                                        ; $4eef: $d1
    jp nc, $d4d3                                  ; $4ef0: $d2 $d3 $d4

    pop de                                        ; $4ef3: $d1
    push de                                       ; $4ef4: $d5
    sub $d7                                       ; $4ef5: $d6 $d7
    ld bc, $8203                                  ; $4ef7: $01 $03 $82
    inc bc                                        ; $4efa: $03
    inc bc                                        ; $4efb: $03
    add d                                         ; $4efc: $82
    add d                                         ; $4efd: $82
    and d                                         ; $4efe: $a2
    inc bc                                        ; $4eff: $03
    add d                                         ; $4f00: $82
    add d                                         ; $4f01: $82
    add d                                         ; $4f02: $82
    inc bc                                        ; $4f03: $03
    add d                                         ; $4f04: $82
    add d                                         ; $4f05: $82
    add d                                         ; $4f06: $82
    rlca                                          ; $4f07: $07
    pop de                                        ; $4f08: $d1
    db $e4                                        ; $4f09: $e4
    db $eb                                        ; $4f0a: $eb
    pop de                                        ; $4f0b: $d1
    pop de                                        ; $4f0c: $d1
    jp nc, $d1d3                                  ; $4f0d: $d2 $d3 $d1

    pop de                                        ; $4f10: $d1
    push de                                       ; $4f11: $d5
    sub $d1                                       ; $4f12: $d6 $d1
    ret c                                         ; $4f14: $d8

    reti                                          ; $4f15: $d9


    jp c, $0301                                   ; $4f16: $da $01 $03

    add d                                         ; $4f19: $82
    add d                                         ; $4f1a: $82
    inc bc                                        ; $4f1b: $03
    inc bc                                        ; $4f1c: $03
    add d                                         ; $4f1d: $82
    add d                                         ; $4f1e: $82
    inc bc                                        ; $4f1f: $03
    inc bc                                        ; $4f20: $03
    add d                                         ; $4f21: $82
    add d                                         ; $4f22: $82
    inc bc                                        ; $4f23: $03
    add d                                         ; $4f24: $82
    add d                                         ; $4f25: $82
    add d                                         ; $4f26: $82
    db $e4                                        ; $4f27: $e4
    pop de                                        ; $4f28: $d1
    pop de                                        ; $4f29: $d1
    pop de                                        ; $4f2a: $d1
    call nc, $0c08                                ; $4f2b: $d4 $08 $0c
    pop de                                        ; $4f2e: $d1
    rst $10                                       ; $4f2f: $d7
    pop de                                        ; $4f30: $d1
    ld c, $0f                                     ; $4f31: $0e $0f
    db $db                                        ; $4f33: $db
    ldh [$d1], a                                  ; $4f34: $e0 $d1
    dec c                                         ; $4f36: $0d
    and d                                         ; $4f37: $a2
    inc bc                                        ; $4f38: $03
    inc bc                                        ; $4f39: $03
    inc bc                                        ; $4f3a: $03
    add d                                         ; $4f3b: $82
    ld bc, $0301                                  ; $4f3c: $01 $01 $03
    add d                                         ; $4f3f: $82
    inc bc                                        ; $4f40: $03
    ld bc, $8201                                  ; $4f41: $01 $01 $82
    add d                                         ; $4f44: $82
    inc bc                                        ; $4f45: $03
    ld bc, $f9f8                                  ; $4f46: $01 $f8 $f9
    inc c                                         ; $4f49: $0c
    db $10                                        ; $4f4a: $10
    ld a, [$d1fb]                                 ; $4f4b: $fa $fb $d1
    pop de                                        ; $4f4e: $d1
    ld d, $12                                     ; $4f4f: $16 $12
    ld de, $0e0d                                  ; $4f51: $11 $0d $0e
    rrca                                          ; $4f54: $0f
    ld d, $12                                     ; $4f55: $16 $12
    ld bc, $0101                                  ; $4f57: $01 $01 $01
    ld bc, $0101                                  ; $4f5a: $01 $01 $01
    inc bc                                        ; $4f5d: $03
    inc bc                                        ; $4f5e: $03
    ld bc, $0101                                  ; $4f5f: $01 $01 $01
    ld bc, $0101                                  ; $4f62: $01 $01 $01
    ld bc, $1101                                  ; $4f65: $01 $01 $11
    dec c                                         ; $4f68: $0d
    dec d                                         ; $4f69: $15
    rrca                                          ; $4f6a: $0f
    inc c                                         ; $4f6b: $0c
    db $10                                        ; $4f6c: $10
    ld de, $d114                                  ; $4f6d: $11 $14 $d1
    pop de                                        ; $4f70: $d1
    pop de                                        ; $4f71: $d1
    dec bc                                        ; $4f72: $0b
    inc de                                        ; $4f73: $13
    dec c                                         ; $4f74: $0d
    pop de                                        ; $4f75: $d1
    pop de                                        ; $4f76: $d1
    ld bc, $0101                                  ; $4f77: $01 $01 $01
    ld bc, $0101                                  ; $4f7a: $01 $01 $01
    ld bc, $0301                                  ; $4f7d: $01 $01 $03
    inc bc                                        ; $4f80: $03
    inc bc                                        ; $4f81: $03
    ld bc, $0101                                  ; $4f82: $01 $01 $01
    inc bc                                        ; $4f85: $03
    inc bc                                        ; $4f86: $03
    pop de                                        ; $4f87: $d1
    call c, $dedd                                 ; $4f88: $dc $dd $de
    pop de                                        ; $4f8b: $d1
    pop hl                                        ; $4f8c: $e1
    ld [c], a                                     ; $4f8d: $e2
    rst $20                                       ; $4f8e: $e7
    pop de                                        ; $4f8f: $d1
    push hl                                       ; $4f90: $e5
    and $e9                                       ; $4f91: $e6 $e9
    pop de                                        ; $4f93: $d1
    pop de                                        ; $4f94: $d1
    pop de                                        ; $4f95: $d1
    db $ec                                        ; $4f96: $ec
    inc bc                                        ; $4f97: $03
    add d                                         ; $4f98: $82
    add d                                         ; $4f99: $82
    add d                                         ; $4f9a: $82
    inc bc                                        ; $4f9b: $03
    add d                                         ; $4f9c: $82
    add d                                         ; $4f9d: $82
    add d                                         ; $4f9e: $82
    inc bc                                        ; $4f9f: $03
    add d                                         ; $4fa0: $82
    add d                                         ; $4fa1: $82
    add d                                         ; $4fa2: $82
    inc bc                                        ; $4fa3: $03
    inc bc                                        ; $4fa4: $03
    inc bc                                        ; $4fa5: $03
    inc bc                                        ; $4fa6: $03
    rst $18                                       ; $4fa7: $df
    db $e3                                        ; $4fa8: $e3
    db $e4                                        ; $4fa9: $e4
    pop de                                        ; $4faa: $d1
    add sp, -$2d                                  ; $4fab: $e8 $d3
    call nc, $ead1                                ; $4fad: $d4 $d1 $ea
    sub $d7                                       ; $4fb0: $d6 $d7
    pop de                                        ; $4fb2: $d1
    reti                                          ; $4fb3: $d9


    jp c, $d1db                                   ; $4fb4: $da $db $d1

    add d                                         ; $4fb7: $82
    add d                                         ; $4fb8: $82
    and d                                         ; $4fb9: $a2
    inc bc                                        ; $4fba: $03
    add d                                         ; $4fbb: $82
    add d                                         ; $4fbc: $82
    add d                                         ; $4fbd: $82
    inc bc                                        ; $4fbe: $03
    add d                                         ; $4fbf: $82
    add d                                         ; $4fc0: $82
    add d                                         ; $4fc1: $82
    inc bc                                        ; $4fc2: $03
    add d                                         ; $4fc3: $82
    add d                                         ; $4fc4: $82
    add d                                         ; $4fc5: $82
    inc bc                                        ; $4fc6: $03
    pop de                                        ; $4fc7: $d1
    pop de                                        ; $4fc8: $d1
    pop de                                        ; $4fc9: $d1
    ldh [$0b], a                                  ; $4fca: $e0 $0b
    pop de                                        ; $4fcc: $d1
    db $e4                                        ; $4fcd: $e4
    db $eb                                        ; $4fce: $eb
    pop de                                        ; $4fcf: $d1
    pop de                                        ; $4fd0: $d1
    jp nc, $d1d3                                  ; $4fd1: $d2 $d3 $d1

    pop de                                        ; $4fd4: $d1
    push de                                       ; $4fd5: $d5
    sub $03                                       ; $4fd6: $d6 $03
    inc bc                                        ; $4fd8: $03
    inc bc                                        ; $4fd9: $03
    add d                                         ; $4fda: $82
    ld bc, $8203                                  ; $4fdb: $01 $03 $82
    add d                                         ; $4fde: $82
    inc bc                                        ; $4fdf: $03
    inc bc                                        ; $4fe0: $03
    add d                                         ; $4fe1: $82
    add d                                         ; $4fe2: $82
    inc bc                                        ; $4fe3: $03
    inc bc                                        ; $4fe4: $03
    add d                                         ; $4fe5: $82
    add d                                         ; $4fe6: $82
    pop de                                        ; $4fe7: $d1
    pop de                                        ; $4fe8: $d1
    dec bc                                        ; $4fe9: $0b
    db $e4                                        ; $4fea: $e4
    db $e4                                        ; $4feb: $e4
    pop de                                        ; $4fec: $d1
    pop de                                        ; $4fed: $d1
    jp nc, $d1d4                                  ; $4fee: $d2 $d4 $d1

    pop de                                        ; $4ff1: $d1
    push de                                       ; $4ff2: $d5
    rst $10                                       ; $4ff3: $d7
    pop de                                        ; $4ff4: $d1
    ret c                                         ; $4ff5: $d8

    reti                                          ; $4ff6: $d9


    inc bc                                        ; $4ff7: $03
    inc bc                                        ; $4ff8: $03
    ld bc, $a282                                  ; $4ff9: $01 $82 $a2
    inc bc                                        ; $4ffc: $03
    inc bc                                        ; $4ffd: $03
    add d                                         ; $4ffe: $82
    add d                                         ; $4fff: $82
    inc bc                                        ; $5000: $03
    inc bc                                        ; $5001: $03
    add d                                         ; $5002: $82
    add d                                         ; $5003: $82
    inc bc                                        ; $5004: $03
    add d                                         ; $5005: $82
    add d                                         ; $5006: $82
    cp $ff                                        ; $5007: $fe $ff
    pop de                                        ; $5009: $d1
    db $ed                                        ; $500a: $ed
    pop de                                        ; $500b: $d1
    pop de                                        ; $500c: $d1
    pop de                                        ; $500d: $d1
    ldh a, [$d1]                                  ; $500e: $f0 $d1
    pop de                                        ; $5010: $d1
    jp nc, $d1d3                                  ; $5011: $d2 $d3 $d1

    pop de                                        ; $5014: $d1
    push de                                       ; $5015: $d5
    sub $01                                       ; $5016: $d6 $01
    ld bc, $8203                                  ; $5018: $01 $03 $82
    inc bc                                        ; $501b: $03
    inc bc                                        ; $501c: $03
    inc bc                                        ; $501d: $03
    add d                                         ; $501e: $82
    inc bc                                        ; $501f: $03
    inc bc                                        ; $5020: $03
    add d                                         ; $5021: $82
    add d                                         ; $5022: $82
    inc bc                                        ; $5023: $03
    inc bc                                        ; $5024: $03
    add d                                         ; $5025: $82
    add d                                         ; $5026: $82
    db $dd                                        ; $5027: $dd
    sbc $ee                                       ; $5028: $de $ee
    rst $28                                       ; $502a: $ef
    pop af                                        ; $502b: $f1
    rst $20                                       ; $502c: $e7
    ld a, [c]                                     ; $502d: $f2
    push af                                       ; $502e: $f5
    di                                            ; $502f: $f3
    jp hl                                         ; $5030: $e9


    db $f4                                        ; $5031: $f4
    or $d7                                        ; $5032: $f6 $d7
    rst $30                                       ; $5034: $f7
    pop de                                        ; $5035: $d1
    pop de                                        ; $5036: $d1
    add d                                         ; $5037: $82
    add d                                         ; $5038: $82
    add d                                         ; $5039: $82
    add d                                         ; $503a: $82
    add d                                         ; $503b: $82
    add d                                         ; $503c: $82
    add d                                         ; $503d: $82
    add d                                         ; $503e: $82
    add d                                         ; $503f: $82
    add d                                         ; $5040: $82
    add d                                         ; $5041: $82
    add d                                         ; $5042: $82
    add d                                         ; $5043: $82
    inc bc                                        ; $5044: $03
    inc bc                                        ; $5045: $03
    inc bc                                        ; $5046: $03
    pop de                                        ; $5047: $d1
    ret c                                         ; $5048: $d8

    reti                                          ; $5049: $d9


    jp c, $dcd1                                   ; $504a: $da $d1 $dc

    db $dd                                        ; $504d: $dd
    sbc $d1                                       ; $504e: $de $d1
    pop hl                                        ; $5050: $e1
    ld [c], a                                     ; $5051: $e2
    rst $20                                       ; $5052: $e7
    pop de                                        ; $5053: $d1
    push hl                                       ; $5054: $e5
    and $e9                                       ; $5055: $e6 $e9
    inc bc                                        ; $5057: $03
    add d                                         ; $5058: $82
    add d                                         ; $5059: $82
    add d                                         ; $505a: $82
    inc bc                                        ; $505b: $03
    add d                                         ; $505c: $82
    add d                                         ; $505d: $82
    add d                                         ; $505e: $82
    inc bc                                        ; $505f: $03
    add d                                         ; $5060: $82
    add d                                         ; $5061: $82
    add d                                         ; $5062: $82
    inc bc                                        ; $5063: $03
    add d                                         ; $5064: $82
    add d                                         ; $5065: $82
    add d                                         ; $5066: $82
    db $db                                        ; $5067: $db
    pop de                                        ; $5068: $d1
    call c, $eedd                                 ; $5069: $dc $dd $ee
    rst $28                                       ; $506c: $ef
    pop hl                                        ; $506d: $e1
    ld [c], a                                     ; $506e: $e2
    ld a, [c]                                     ; $506f: $f2
    push af                                       ; $5070: $f5
    push hl                                       ; $5071: $e5
    and $f4                                       ; $5072: $e6 $f4
    or $63                                        ; $5074: $f6 $63
    pop de                                        ; $5076: $d1
    add d                                         ; $5077: $82
    inc bc                                        ; $5078: $03
    add d                                         ; $5079: $82
    add d                                         ; $507a: $82
    add d                                         ; $507b: $82
    add d                                         ; $507c: $82
    add d                                         ; $507d: $82
    add d                                         ; $507e: $82
    add d                                         ; $507f: $82
    add d                                         ; $5080: $82
    add d                                         ; $5081: $82
    add d                                         ; $5082: $82
    add d                                         ; $5083: $82
    add d                                         ; $5084: $82
    rlca                                          ; $5085: $07
    inc bc                                        ; $5086: $03
    pop de                                        ; $5087: $d1
    pop de                                        ; $5088: $d1
    reti                                          ; $5089: $d9


    jp c, $dcd1                                   ; $508a: $da $d1 $dc

    db $dd                                        ; $508d: $dd
    sbc $d1                                       ; $508e: $de $d1
    pop hl                                        ; $5090: $e1
    ld [c], a                                     ; $5091: $e2
    rst $20                                       ; $5092: $e7
    pop de                                        ; $5093: $d1
    push hl                                       ; $5094: $e5
    and $e9                                       ; $5095: $e6 $e9
    inc bc                                        ; $5097: $03
    inc bc                                        ; $5098: $03
    add d                                         ; $5099: $82
    add d                                         ; $509a: $82
    inc bc                                        ; $509b: $03
    add d                                         ; $509c: $82
    add d                                         ; $509d: $82
    add d                                         ; $509e: $82
    inc bc                                        ; $509f: $03
    add d                                         ; $50a0: $82
    add d                                         ; $50a1: $82
    add d                                         ; $50a2: $82
    inc bc                                        ; $50a3: $03
    add d                                         ; $50a4: $82
    add d                                         ; $50a5: $82
    add d                                         ; $50a6: $82
    db $db                                        ; $50a7: $db
    pop de                                        ; $50a8: $d1
    pop de                                        ; $50a9: $d1
    ld hl, sp-$12                                 ; $50aa: $f8 $ee
    rst $28                                       ; $50ac: $ef
    pop de                                        ; $50ad: $d1
    ld a, [$f5f2]                                 ; $50ae: $fa $f2 $f5
    ld h, e                                       ; $50b1: $63
    pop de                                        ; $50b2: $d1
    db $f4                                        ; $50b3: $f4
    or $4e                                        ; $50b4: $f6 $4e
    ld c, l                                       ; $50b6: $4d
    add d                                         ; $50b7: $82
    add d                                         ; $50b8: $82
    inc bc                                        ; $50b9: $03
    ld bc, $8282                                  ; $50ba: $01 $82 $82
    inc bc                                        ; $50bd: $03
    ld bc, $8282                                  ; $50be: $01 $82 $82
    rlca                                          ; $50c1: $07
    inc bc                                        ; $50c2: $03
    add d                                         ; $50c3: $82
    add d                                         ; $50c4: $82
    inc hl                                        ; $50c5: $23
    inc hl                                        ; $50c6: $23
    ld sp, hl                                     ; $50c7: $f9
    pop de                                        ; $50c8: $d1
    pop de                                        ; $50c9: $d1
    rst $30                                       ; $50ca: $f7
    ei                                            ; $50cb: $fb
    pop de                                        ; $50cc: $d1
    ld e, h                                       ; $50cd: $5c
    ld e, l                                       ; $50ce: $5d
    ld c, d                                       ; $50cf: $4a
    ld c, c                                       ; $50d0: $49
    ld e, d                                       ; $50d1: $5a
    ld e, e                                       ; $50d2: $5b
    ld c, e                                       ; $50d3: $4b
    ld c, h                                       ; $50d4: $4c
    ld h, c                                       ; $50d5: $61
    ld h, d                                       ; $50d6: $62
    ld bc, $0303                                  ; $50d7: $01 $03 $03
    inc bc                                        ; $50da: $03
    ld bc, $0303                                  ; $50db: $01 $03 $03
    inc bc                                        ; $50de: $03
    inc hl                                        ; $50df: $23
    inc hl                                        ; $50e0: $23
    inc bc                                        ; $50e1: $03
    inc bc                                        ; $50e2: $03
    inc bc                                        ; $50e3: $03
    inc bc                                        ; $50e4: $03
    inc bc                                        ; $50e5: $03
    inc bc                                        ; $50e6: $03
    pop de                                        ; $50e7: $d1
    pop de                                        ; $50e8: $d1
    dec bc                                        ; $50e9: $0b
    pop de                                        ; $50ea: $d1
    ld e, [hl]                                    ; $50eb: $5e
    ld d, l                                       ; $50ec: $55
    ld l, h                                       ; $50ed: $6c
    ld d, a                                       ; $50ee: $57
    ld e, b                                       ; $50ef: $58
    ld e, c                                       ; $50f0: $59
    ld e, d                                       ; $50f1: $5a
    ld e, e                                       ; $50f2: $5b
    ld c, e                                       ; $50f3: $4b
    ld c, h                                       ; $50f4: $4c
    ld h, c                                       ; $50f5: $61
    ld h, d                                       ; $50f6: $62
    inc bc                                        ; $50f7: $03
    inc bc                                        ; $50f8: $03
    ld bc, $0303                                  ; $50f9: $01 $03 $03
    inc bc                                        ; $50fc: $03
    inc bc                                        ; $50fd: $03
    inc bc                                        ; $50fe: $03
    inc bc                                        ; $50ff: $03
    inc bc                                        ; $5100: $03
    inc bc                                        ; $5101: $03
    inc bc                                        ; $5102: $03
    inc bc                                        ; $5103: $03
    inc bc                                        ; $5104: $03
    inc bc                                        ; $5105: $03
    inc bc                                        ; $5106: $03
    ld d, $12                                     ; $5107: $16 $12
    ld de, $0e0d                                  ; $5109: $11 $0d $0e
    rrca                                          ; $510c: $0f
    ld d, $10                                     ; $510d: $16 $10
    pop de                                        ; $510f: $d1
    pop de                                        ; $5110: $d1
    pop de                                        ; $5111: $d1
    pop de                                        ; $5112: $d1
    ldh [$d1], a                                  ; $5113: $e0 $d1
    ld hl, sp-$07                                 ; $5115: $f8 $f9
    ld bc, $0101                                  ; $5117: $01 $01 $01
    ld bc, $0101                                  ; $511a: $01 $01 $01
    ld bc, $0301                                  ; $511d: $01 $01 $03
    inc bc                                        ; $5120: $03
    inc bc                                        ; $5121: $03
    inc bc                                        ; $5122: $03
    add d                                         ; $5123: $82
    inc bc                                        ; $5124: $03
    ld bc, $d101                                  ; $5125: $01 $01 $d1
    pop de                                        ; $5128: $d1
    pop de                                        ; $5129: $d1
    ld a, [$d111]                                 ; $512a: $fa $11 $d1
    pop de                                        ; $512d: $d1
    pop de                                        ; $512e: $d1
    pop de                                        ; $512f: $d1
    dec bc                                        ; $5130: $0b
    pop de                                        ; $5131: $d1
    pop de                                        ; $5132: $d1
    pop de                                        ; $5133: $d1
    rst $38                                       ; $5134: $ff
    db $fc                                        ; $5135: $fc
    db $fd                                        ; $5136: $fd
    inc bc                                        ; $5137: $03
    inc bc                                        ; $5138: $03
    inc bc                                        ; $5139: $03
    ld bc, $0301                                  ; $513a: $01 $01 $03
    inc bc                                        ; $513d: $03
    inc bc                                        ; $513e: $03
    inc bc                                        ; $513f: $03
    ld bc, $0303                                  ; $5140: $01 $03 $03
    inc bc                                        ; $5143: $03
    ld bc, $0101                                  ; $5144: $01 $01 $01
    ei                                            ; $5147: $fb
    pop de                                        ; $5148: $d1
    pop de                                        ; $5149: $d1
    pop de                                        ; $514a: $d1
    add hl, bc                                    ; $514b: $09
    ld a, [bc]                                    ; $514c: $0a
    pop de                                        ; $514d: $d1
    dec c                                         ; $514e: $0d
    pop de                                        ; $514f: $d1
    pop de                                        ; $5150: $d1
    pop de                                        ; $5151: $d1
    pop de                                        ; $5152: $d1
    nop                                           ; $5153: $00
    ld bc, $d1fe                                  ; $5154: $01 $fe $d1
    ld bc, $0303                                  ; $5157: $01 $03 $03
    inc bc                                        ; $515a: $03
    ld bc, $0301                                  ; $515b: $01 $01 $03
    ld bc, $0303                                  ; $515e: $01 $03 $03
    inc bc                                        ; $5161: $03
    inc bc                                        ; $5162: $03
    ld bc, $0101                                  ; $5163: $01 $01 $01
    inc bc                                        ; $5166: $03
    pop de                                        ; $5167: $d1
    db $10                                        ; $5168: $10
    ld de, $0e0d                                  ; $5169: $11 $0d $0e
    ld [$1016], sp                                ; $516c: $08 $16 $10
    pop de                                        ; $516f: $d1
    pop de                                        ; $5170: $d1
    pop de                                        ; $5171: $d1
    pop de                                        ; $5172: $d1
    dec bc                                        ; $5173: $0b
    pop de                                        ; $5174: $d1
    pop de                                        ; $5175: $d1
    pop de                                        ; $5176: $d1
    inc bc                                        ; $5177: $03
    ld bc, $0101                                  ; $5178: $01 $01 $01
    ld bc, $0101                                  ; $517b: $01 $01 $01
    ld bc, $0303                                  ; $517e: $01 $03 $03
    inc bc                                        ; $5181: $03
    inc bc                                        ; $5182: $03
    ld bc, $0303                                  ; $5183: $01 $03 $03
    inc bc                                        ; $5186: $03
    db $eb                                        ; $5187: $eb
    db $e4                                        ; $5188: $e4
    ld a, [$d3fb]                                 ; $5189: $fa $fb $d3
    call nc, $d1d1                                ; $518c: $d4 $d1 $d1
    sub $d7                                       ; $518f: $d6 $d7
    pop de                                        ; $5191: $d1
    dec bc                                        ; $5192: $0b
    jp c, $d1db                                   ; $5193: $da $db $d1

    pop de                                        ; $5196: $d1
    add d                                         ; $5197: $82
    and d                                         ; $5198: $a2
    ld bc, $8201                                  ; $5199: $01 $01 $82
    add d                                         ; $519c: $82
    inc bc                                        ; $519d: $03
    inc bc                                        ; $519e: $03
    add d                                         ; $519f: $82
    add d                                         ; $51a0: $82
    inc bc                                        ; $51a1: $03
    ld bc, $8282                                  ; $51a2: $01 $82 $82
    inc bc                                        ; $51a5: $03
    inc bc                                        ; $51a6: $03
    pop de                                        ; $51a7: $d1
    pop de                                        ; $51a8: $d1
    pop de                                        ; $51a9: $d1
    rst $38                                       ; $51aa: $ff
    pop de                                        ; $51ab: $d1
    ldh [$d1], a                                  ; $51ac: $e0 $d1
    pop de                                        ; $51ae: $d1
    db $e4                                        ; $51af: $e4
    db $eb                                        ; $51b0: $eb
    db $e4                                        ; $51b1: $e4
    pop de                                        ; $51b2: $d1
    jp nc, $d4d3                                  ; $51b3: $d2 $d3 $d4

    pop de                                        ; $51b6: $d1
    inc bc                                        ; $51b7: $03
    inc bc                                        ; $51b8: $03
    inc bc                                        ; $51b9: $03
    ld bc, $8203                                  ; $51ba: $01 $03 $82
    inc bc                                        ; $51bd: $03
    inc bc                                        ; $51be: $03
    add d                                         ; $51bf: $82
    add d                                         ; $51c0: $82
    and d                                         ; $51c1: $a2
    inc bc                                        ; $51c2: $03
    add d                                         ; $51c3: $82
    add d                                         ; $51c4: $82
    add d                                         ; $51c5: $82
    inc bc                                        ; $51c6: $03
    db $fc                                        ; $51c7: $fc
    inc b                                         ; $51c8: $04
    nop                                           ; $51c9: $00
    ld bc, $ffd1                                  ; $51ca: $01 $d1 $ff
    inc bc                                        ; $51cd: $03
    inc b                                         ; $51ce: $04
    pop de                                        ; $51cf: $d1
    pop de                                        ; $51d0: $d1
    cp $02                                        ; $51d1: $fe $02
    pop de                                        ; $51d3: $d1
    add hl, bc                                    ; $51d4: $09
    ld a, [bc]                                    ; $51d5: $0a
    dec b                                         ; $51d6: $05
    ld bc, $0101                                  ; $51d7: $01 $01 $01
    ld bc, $0103                                  ; $51da: $01 $03 $01
    ld bc, $0301                                  ; $51dd: $01 $01 $03
    inc bc                                        ; $51e0: $03
    ld bc, $0301                                  ; $51e1: $01 $01 $03
    ld bc, $0101                                  ; $51e4: $01 $01 $01
    cp $ff                                        ; $51e7: $fe $ff
    pop de                                        ; $51e9: $d1
    pop de                                        ; $51ea: $d1
    nop                                           ; $51eb: $00
    dec b                                         ; $51ec: $05
    cp $d1                                        ; $51ed: $fe $d1
    inc bc                                        ; $51ef: $03
    inc b                                         ; $51f0: $04
    nop                                           ; $51f1: $00
    dec b                                         ; $51f2: $05
    cp $02                                        ; $51f3: $fe $02
    inc bc                                        ; $51f5: $03
    inc b                                         ; $51f6: $04
    ld bc, $0301                                  ; $51f7: $01 $01 $03
    inc bc                                        ; $51fa: $03
    ld bc, $0101                                  ; $51fb: $01 $01 $01
    inc bc                                        ; $51fe: $03
    ld bc, $0101                                  ; $51ff: $01 $01 $01
    ld bc, $0101                                  ; $5202: $01 $01 $01
    ld bc, $de01                                  ; $5205: $01 $01 $de
    xor $ef                                       ; $5208: $ee $ef
    pop de                                        ; $520a: $d1
    rst $20                                       ; $520b: $e7
    ld a, [c]                                     ; $520c: $f2
    push af                                       ; $520d: $f5
    ret c                                         ; $520e: $d8

    jp hl                                         ; $520f: $e9


    db $f4                                        ; $5210: $f4
    or $dc                                        ; $5211: $f6 $dc
    rst $30                                       ; $5213: $f7
    pop de                                        ; $5214: $d1
    pop de                                        ; $5215: $d1
    pop hl                                        ; $5216: $e1
    add d                                         ; $5217: $82
    add d                                         ; $5218: $82
    add d                                         ; $5219: $82
    inc bc                                        ; $521a: $03
    add d                                         ; $521b: $82
    add d                                         ; $521c: $82
    add d                                         ; $521d: $82
    add d                                         ; $521e: $82
    add d                                         ; $521f: $82
    add d                                         ; $5220: $82
    add d                                         ; $5221: $82
    add d                                         ; $5222: $82
    inc bc                                        ; $5223: $03
    inc bc                                        ; $5224: $03
    inc bc                                        ; $5225: $03
    add d                                         ; $5226: $82
    push de                                       ; $5227: $d5
    sub $d7                                       ; $5228: $d6 $d7
    pop de                                        ; $522a: $d1
    reti                                          ; $522b: $d9


    jp c, $d1db                                   ; $522c: $da $db $d1

    db $dd                                        ; $522f: $dd
    sbc $ee                                       ; $5230: $de $ee
    rst $28                                       ; $5232: $ef
    ld [c], a                                     ; $5233: $e2
    rst $20                                       ; $5234: $e7
    ld a, [c]                                     ; $5235: $f2
    push af                                       ; $5236: $f5
    add d                                         ; $5237: $82
    add d                                         ; $5238: $82
    add d                                         ; $5239: $82
    inc bc                                        ; $523a: $03
    add d                                         ; $523b: $82
    add d                                         ; $523c: $82
    add d                                         ; $523d: $82
    inc bc                                        ; $523e: $03
    add d                                         ; $523f: $82
    add d                                         ; $5240: $82
    add d                                         ; $5241: $82
    add d                                         ; $5242: $82
    add d                                         ; $5243: $82
    add d                                         ; $5244: $82
    add d                                         ; $5245: $82
    add d                                         ; $5246: $82
    rlca                                          ; $5247: $07
    dec b                                         ; $5248: $05
    ld b, $02                                     ; $5249: $06 $02
    pop de                                        ; $524b: $d1
    db $fd                                        ; $524c: $fd
    rlca                                          ; $524d: $07
    ld bc, $d1d1                                  ; $524e: $01 $d1 $d1
    db $fc                                        ; $5251: $fc
    db $fd                                        ; $5252: $fd
    ldh [$d1], a                                  ; $5253: $e0 $d1
    pop de                                        ; $5255: $d1
    pop de                                        ; $5256: $d1
    ld bc, $0101                                  ; $5257: $01 $01 $01
    ld bc, $0103                                  ; $525a: $01 $03 $01
    ld bc, $0301                                  ; $525d: $01 $01 $03
    inc bc                                        ; $5260: $03
    ld bc, $8201                                  ; $5261: $01 $01 $82
    inc bc                                        ; $5264: $03
    inc bc                                        ; $5265: $03
    inc bc                                        ; $5266: $03
    pop de                                        ; $5267: $d1
    dec bc                                        ; $5268: $0b
    pop de                                        ; $5269: $d1
    push hl                                       ; $526a: $e5
    ld d, h                                       ; $526b: $54
    ld e, [hl]                                    ; $526c: $5e
    ld e, l                                       ; $526d: $5d
    ld e, h                                       ; $526e: $5c
    ld d, [hl]                                    ; $526f: $56
    ld e, c                                       ; $5270: $59
    ld e, d                                       ; $5271: $5a
    ld e, e                                       ; $5272: $5b
    ld c, e                                       ; $5273: $4b
    ld c, h                                       ; $5274: $4c
    ld h, c                                       ; $5275: $61
    ld h, d                                       ; $5276: $62
    inc bc                                        ; $5277: $03
    ld bc, $8203                                  ; $5278: $01 $03 $82
    inc bc                                        ; $527b: $03
    inc hl                                        ; $527c: $23
    inc hl                                        ; $527d: $23
    inc hl                                        ; $527e: $23
    inc bc                                        ; $527f: $03
    inc bc                                        ; $5280: $03
    inc bc                                        ; $5281: $03
    inc bc                                        ; $5282: $03
    inc bc                                        ; $5283: $03
    inc bc                                        ; $5284: $03
    inc bc                                        ; $5285: $03
    inc bc                                        ; $5286: $03
    and $e9                                       ; $5287: $e6 $e9
    db $f4                                        ; $5289: $f4
    or $d1                                        ; $528a: $f6 $d1
    rst $30                                       ; $528c: $f7
    pop de                                        ; $528d: $d1
    dec bc                                        ; $528e: $0b
    ld c, c                                       ; $528f: $49
    ld c, d                                       ; $5290: $4a
    pop de                                        ; $5291: $d1
    ld hl, sp+$4b                                 ; $5292: $f8 $4b
    ld c, h                                       ; $5294: $4c
    ld l, l                                       ; $5295: $6d
    ld a, [$8282]                                 ; $5296: $fa $82 $82
    add d                                         ; $5299: $82
    add d                                         ; $529a: $82
    inc bc                                        ; $529b: $03
    inc bc                                        ; $529c: $03
    inc bc                                        ; $529d: $03
    ld bc, $0303                                  ; $529e: $01 $03 $03
    inc bc                                        ; $52a1: $03
    ld bc, $0303                                  ; $52a2: $01 $03 $03
    inc bc                                        ; $52a5: $03
    ld bc, $d1d1                                  ; $52a6: $01 $d1 $d1
    pop de                                        ; $52a9: $d1
    db $e4                                        ; $52aa: $e4
    pop de                                        ; $52ab: $d1
    ld hl, sp-$07                                 ; $52ac: $f8 $f9
    jp nc, $faf9                                  ; $52ae: $d2 $f9 $fa

    ei                                            ; $52b1: $fb
    push de                                       ; $52b2: $d5
    ei                                            ; $52b3: $fb
    pop de                                        ; $52b4: $d1
    ret c                                         ; $52b5: $d8

    reti                                          ; $52b6: $d9


    inc bc                                        ; $52b7: $03
    inc bc                                        ; $52b8: $03
    inc bc                                        ; $52b9: $03
    add d                                         ; $52ba: $82
    inc bc                                        ; $52bb: $03
    ld bc, $8201                                  ; $52bc: $01 $01 $82
    ld bc, $0101                                  ; $52bf: $01 $01 $01
    add d                                         ; $52c2: $82
    ld bc, $8203                                  ; $52c3: $01 $03 $82
    add d                                         ; $52c6: $82
    db $eb                                        ; $52c7: $eb
    db $e4                                        ; $52c8: $e4
    pop de                                        ; $52c9: $d1
    pop de                                        ; $52ca: $d1
    db $d3                                        ; $52cb: $d3
    call nc, $d10b                                ; $52cc: $d4 $0b $d1
    sub $d7                                       ; $52cf: $d6 $d7
    pop de                                        ; $52d1: $d1
    pop de                                        ; $52d2: $d1
    jp c, $d1db                                   ; $52d3: $da $db $d1

    pop de                                        ; $52d6: $d1
    add d                                         ; $52d7: $82
    and d                                         ; $52d8: $a2
    inc bc                                        ; $52d9: $03
    inc bc                                        ; $52da: $03
    add d                                         ; $52db: $82
    add d                                         ; $52dc: $82
    ld bc, $8203                                  ; $52dd: $01 $03 $82
    add d                                         ; $52e0: $82
    inc bc                                        ; $52e1: $03
    inc bc                                        ; $52e2: $03
    add d                                         ; $52e3: $82
    add d                                         ; $52e4: $82
    inc bc                                        ; $52e5: $03
    inc bc                                        ; $52e6: $03
    ld c, $0f                                     ; $52e7: $0e $0f
    ld d, $6e                                     ; $52e9: $16 $6e
    inc de                                        ; $52eb: $13
    inc d                                         ; $52ec: $14
    dec d                                         ; $52ed: $15
    ld l, a                                       ; $52ee: $6f
    inc c                                         ; $52ef: $0c
    db $10                                        ; $52f0: $10
    ld de, $d10d                                  ; $52f1: $11 $0d $d1
    pop de                                        ; $52f4: $d1
    pop de                                        ; $52f5: $d1
    db $10                                        ; $52f6: $10
    ld bc, $0101                                  ; $52f7: $01 $01 $01
    ld bc, $0101                                  ; $52fa: $01 $01 $01
    ld bc, $0101                                  ; $52fd: $01 $01 $01
    ld bc, $0101                                  ; $5300: $01 $01 $01
    inc bc                                        ; $5303: $03
    inc bc                                        ; $5304: $03
    inc bc                                        ; $5305: $03
    ld bc, $1470                                  ; $5306: $01 $70 $14
    dec d                                         ; $5309: $15
    ld [$1271], sp                                ; $530a: $08 $71 $12
    ld de, $150d                                  ; $530d: $11 $0d $15
    ld [$0b0c], sp                                ; $5310: $08 $0c $0b
    ld de, $d10d                                  ; $5313: $11 $0d $d1
    pop de                                        ; $5316: $d1
    ld bc, $0101                                  ; $5317: $01 $01 $01
    ld bc, $0101                                  ; $531a: $01 $01 $01
    ld bc, $0101                                  ; $531d: $01 $01 $01
    ld bc, $0101                                  ; $5320: $01 $01 $01
    ld bc, $0301                                  ; $5323: $01 $01 $03
    inc bc                                        ; $5326: $03
    inc c                                         ; $5327: $0c
    db $10                                        ; $5328: $10
    pop de                                        ; $5329: $d1
    pop de                                        ; $532a: $d1
    pop de                                        ; $532b: $d1
    pop de                                        ; $532c: $d1
    pop de                                        ; $532d: $d1
    pop de                                        ; $532e: $d1
    pop de                                        ; $532f: $d1
    pop de                                        ; $5330: $d1
    add hl, bc                                    ; $5331: $09
    ld a, [bc]                                    ; $5332: $0a
    pop de                                        ; $5333: $d1
    pop de                                        ; $5334: $d1
    pop de                                        ; $5335: $d1
    pop de                                        ; $5336: $d1
    ld bc, $0301                                  ; $5337: $01 $01 $03
    inc bc                                        ; $533a: $03
    inc bc                                        ; $533b: $03
    inc bc                                        ; $533c: $03
    inc bc                                        ; $533d: $03
    inc bc                                        ; $533e: $03
    inc bc                                        ; $533f: $03
    inc bc                                        ; $5340: $03
    ld bc, $0301                                  ; $5341: $01 $01 $03
    inc bc                                        ; $5344: $03
    inc bc                                        ; $5345: $03
    inc bc                                        ; $5346: $03
    ld hl, sp-$07                                 ; $5347: $f8 $f9
    pop de                                        ; $5349: $d1
    pop de                                        ; $534a: $d1
    ld a, [$d1fb]                                 ; $534b: $fa $fb $d1
    pop de                                        ; $534e: $d1
    cp $d1                                        ; $534f: $fe $d1
    pop de                                        ; $5351: $d1
    pop de                                        ; $5352: $d1
    rlca                                          ; $5353: $07
    dec b                                         ; $5354: $05
    cp $ff                                        ; $5355: $fe $ff
    ld bc, $0301                                  ; $5357: $01 $01 $03
    inc bc                                        ; $535a: $03
    ld bc, $0301                                  ; $535b: $01 $01 $03
    inc bc                                        ; $535e: $03
    ld bc, $0303                                  ; $535f: $01 $03 $03
    inc bc                                        ; $5362: $03
    ld bc, $0101                                  ; $5363: $01 $01 $01
    ld bc, $d1d1                                  ; $5366: $01 $d1 $d1
    pop de                                        ; $5369: $d1
    pop de                                        ; $536a: $d1
    pop de                                        ; $536b: $d1
    pop de                                        ; $536c: $d1
    pop de                                        ; $536d: $d1
    pop de                                        ; $536e: $d1
    pop de                                        ; $536f: $d1
    add hl, bc                                    ; $5370: $09
    ld a, [bc]                                    ; $5371: $0a
    pop de                                        ; $5372: $d1
    db $fc                                        ; $5373: $fc
    db $fd                                        ; $5374: $fd
    rlca                                          ; $5375: $07
    dec b                                         ; $5376: $05
    inc bc                                        ; $5377: $03
    inc bc                                        ; $5378: $03
    inc bc                                        ; $5379: $03
    inc bc                                        ; $537a: $03
    inc bc                                        ; $537b: $03
    inc bc                                        ; $537c: $03
    inc bc                                        ; $537d: $03
    inc bc                                        ; $537e: $03
    inc bc                                        ; $537f: $03
    ld bc, $0301                                  ; $5380: $01 $01 $03
    ld bc, $0101                                  ; $5383: $01 $01 $01
    ld bc, $d1d1                                  ; $5386: $01 $d1 $d1
    pop de                                        ; $5389: $d1
    pop de                                        ; $538a: $d1
    pop de                                        ; $538b: $d1
    pop de                                        ; $538c: $d1
    pop de                                        ; $538d: $d1
    pop de                                        ; $538e: $d1
    pop de                                        ; $538f: $d1
    db $fd                                        ; $5390: $fd
    rlca                                          ; $5391: $07
    dec b                                         ; $5392: $05
    cp $ff                                        ; $5393: $fe $ff
    db $fc                                        ; $5395: $fc
    pop de                                        ; $5396: $d1
    inc bc                                        ; $5397: $03
    inc bc                                        ; $5398: $03
    inc bc                                        ; $5399: $03
    inc bc                                        ; $539a: $03
    inc bc                                        ; $539b: $03
    inc bc                                        ; $539c: $03
    inc bc                                        ; $539d: $03
    inc bc                                        ; $539e: $03
    inc bc                                        ; $539f: $03
    ld bc, $0101                                  ; $53a0: $01 $01 $01
    ld bc, $0101                                  ; $53a3: $01 $01 $01
    inc bc                                        ; $53a6: $03
    inc bc                                        ; $53a7: $03
    inc b                                         ; $53a8: $04
    rlca                                          ; $53a9: $07
    ld bc, $0206                                  ; $53aa: $01 $06 $02
    inc bc                                        ; $53ad: $03
    inc b                                         ; $53ae: $04
    rlca                                          ; $53af: $07
    ld bc, $0206                                  ; $53b0: $01 $06 $02
    db $fc                                        ; $53b3: $fc
    db $fd                                        ; $53b4: $fd
    rlca                                          ; $53b5: $07
    pop de                                        ; $53b6: $d1
    ld bc, $0101                                  ; $53b7: $01 $01 $01
    ld bc, $0101                                  ; $53ba: $01 $01 $01
    ld bc, $0101                                  ; $53bd: $01 $01 $01
    ld bc, $0101                                  ; $53c0: $01 $01 $01
    ld bc, $0101                                  ; $53c3: $01 $01 $01
    inc bc                                        ; $53c6: $03
    ld b, $02                                     ; $53c7: $06 $02
    inc bc                                        ; $53c9: $03
    inc b                                         ; $53ca: $04
    nop                                           ; $53cb: $00
    ld bc, $fffe                                  ; $53cc: $01 $fe $ff
    db $fc                                        ; $53cf: $fc
    db $fd                                        ; $53d0: $fd
    pop de                                        ; $53d1: $d1
    pop de                                        ; $53d2: $d1
    dec bc                                        ; $53d3: $0b
    pop de                                        ; $53d4: $d1
    pop de                                        ; $53d5: $d1
    pop de                                        ; $53d6: $d1
    ld bc, $0101                                  ; $53d7: $01 $01 $01
    ld bc, $0101                                  ; $53da: $01 $01 $01
    ld bc, $0101                                  ; $53dd: $01 $01 $01
    ld bc, $0303                                  ; $53e0: $01 $03 $03
    ld bc, $0303                                  ; $53e3: $01 $03 $03
    inc bc                                        ; $53e6: $03
    rlca                                          ; $53e7: $07
    dec b                                         ; $53e8: $05
    pop de                                        ; $53e9: $d1
    pop de                                        ; $53ea: $d1
    db $fc                                        ; $53eb: $fc
    pop de                                        ; $53ec: $d1
    pop de                                        ; $53ed: $d1
    pop de                                        ; $53ee: $d1
    pop de                                        ; $53ef: $d1
    pop de                                        ; $53f0: $d1
    pop de                                        ; $53f1: $d1
    dec bc                                        ; $53f2: $0b
    pop de                                        ; $53f3: $d1
    pop de                                        ; $53f4: $d1
    add hl, bc                                    ; $53f5: $09
    ld a, [bc]                                    ; $53f6: $0a
    ld bc, $0301                                  ; $53f7: $01 $01 $03
    inc bc                                        ; $53fa: $03
    ld bc, $0303                                  ; $53fb: $01 $03 $03
    inc bc                                        ; $53fe: $03
    inc bc                                        ; $53ff: $03
    inc bc                                        ; $5400: $03
    inc bc                                        ; $5401: $03
    ld bc, $0303                                  ; $5402: $01 $03 $03
    ld bc, $d101                                  ; $5405: $01 $01 $d1
    pop de                                        ; $5408: $d1
    rst $30                                       ; $5409: $f7
    pop de                                        ; $540a: $d1
    pop de                                        ; $540b: $d1
    pop de                                        ; $540c: $d1
    pop de                                        ; $540d: $d1
    pop de                                        ; $540e: $d1
    pop de                                        ; $540f: $d1
    pop de                                        ; $5410: $d1
    pop de                                        ; $5411: $d1
    dec c                                         ; $5412: $0d
    pop de                                        ; $5413: $d1
    pop de                                        ; $5414: $d1
    inc c                                         ; $5415: $0c
    db $10                                        ; $5416: $10
    inc bc                                        ; $5417: $03
    inc bc                                        ; $5418: $03
    inc bc                                        ; $5419: $03
    inc bc                                        ; $541a: $03
    inc bc                                        ; $541b: $03
    inc bc                                        ; $541c: $03
    inc bc                                        ; $541d: $03
    inc bc                                        ; $541e: $03
    inc bc                                        ; $541f: $03
    inc bc                                        ; $5420: $03
    inc bc                                        ; $5421: $03
    ld bc, $0303                                  ; $5422: $01 $03 $03
    ld bc, $d101                                  ; $5425: $01 $01 $d1
    pop de                                        ; $5428: $d1
    pop de                                        ; $5429: $d1
    pop de                                        ; $542a: $d1
    pop de                                        ; $542b: $d1
    add hl, bc                                    ; $542c: $09
    ld a, [bc]                                    ; $542d: $0a
    pop de                                        ; $542e: $d1
    pop de                                        ; $542f: $d1
    pop de                                        ; $5430: $d1
    pop de                                        ; $5431: $d1
    ld [hl], d                                    ; $5432: $72
    pop de                                        ; $5433: $d1
    pop de                                        ; $5434: $d1
    pop de                                        ; $5435: $d1
    ld [hl], e                                    ; $5436: $73
    inc bc                                        ; $5437: $03
    inc bc                                        ; $5438: $03
    inc bc                                        ; $5439: $03
    inc bc                                        ; $543a: $03
    inc bc                                        ; $543b: $03
    ld bc, $0301                                  ; $543c: $01 $01 $03
    inc bc                                        ; $543f: $03
    inc bc                                        ; $5440: $03
    inc bc                                        ; $5441: $03
    add d                                         ; $5442: $82
    inc bc                                        ; $5443: $03
    inc bc                                        ; $5444: $03
    inc bc                                        ; $5445: $03
    add d                                         ; $5446: $82
    pop de                                        ; $5447: $d1
    pop de                                        ; $5448: $d1
    pop de                                        ; $5449: $d1
    pop de                                        ; $544a: $d1
    ld [hl], h                                    ; $544b: $74
    ld [hl], l                                    ; $544c: $75
    halt                                          ; $544d: $76
    ld [hl], a                                    ; $544e: $77
    ld a, b                                       ; $544f: $78
    ld a, c                                       ; $5450: $79
    ld a, d                                       ; $5451: $7a
    ld a, e                                       ; $5452: $7b
    ld a, h                                       ; $5453: $7c
    ld a, l                                       ; $5454: $7d
    ld a, [hl]                                    ; $5455: $7e
    ld a, a                                       ; $5456: $7f
    inc bc                                        ; $5457: $03
    inc bc                                        ; $5458: $03
    inc bc                                        ; $5459: $03
    inc bc                                        ; $545a: $03
    add d                                         ; $545b: $82
    add d                                         ; $545c: $82
    add d                                         ; $545d: $82
    add d                                         ; $545e: $82
    add d                                         ; $545f: $82
    add d                                         ; $5460: $82
    add d                                         ; $5461: $82
    add d                                         ; $5462: $82
    add d                                         ; $5463: $82
    add d                                         ; $5464: $82
    add d                                         ; $5465: $82
    add d                                         ; $5466: $82
    pop de                                        ; $5467: $d1
    pop de                                        ; $5468: $d1
    inc c                                         ; $5469: $0c
    db $10                                        ; $546a: $10
    ld de, $150d                                  ; $546b: $11 $0d $15
    rrca                                          ; $546e: $0f
    add b                                         ; $546f: $80
    dec bc                                        ; $5470: $0b
    pop de                                        ; $5471: $d1
    dec c                                         ; $5472: $0d
    add c                                         ; $5473: $81
    pop de                                        ; $5474: $d1
    pop de                                        ; $5475: $d1
    pop de                                        ; $5476: $d1
    inc bc                                        ; $5477: $03
    inc bc                                        ; $5478: $03
    ld bc, $0101                                  ; $5479: $01 $01 $01
    ld bc, $0101                                  ; $547c: $01 $01 $01
    adc d                                         ; $547f: $8a
    ld bc, $0103                                  ; $5480: $01 $03 $01
    adc d                                         ; $5483: $8a
    inc bc                                        ; $5484: $03
    inc bc                                        ; $5485: $03
    inc bc                                        ; $5486: $03
    ld de, $1514                                  ; $5487: $11 $14 $15
    rrca                                          ; $548a: $0f
    ld d, $12                                     ; $548b: $16 $12
    inc de                                        ; $548d: $13
    inc d                                         ; $548e: $14
    ld c, $0f                                     ; $548f: $0e $0f
    inc c                                         ; $5491: $0c
    ld [de], a                                    ; $5492: $12
    pop de                                        ; $5493: $d1
    dec c                                         ; $5494: $0d
    ld c, $08                                     ; $5495: $0e $08
    ld bc, $0101                                  ; $5497: $01 $01 $01
    ld bc, $0101                                  ; $549a: $01 $01 $01
    ld bc, $0101                                  ; $549d: $01 $01 $01
    ld bc, $0101                                  ; $54a0: $01 $01 $01
    inc bc                                        ; $54a3: $03
    ld bc, $0101                                  ; $54a4: $01 $01 $01
    pop de                                        ; $54a7: $d1
    pop de                                        ; $54a8: $d1
    pop de                                        ; $54a9: $d1
    pop de                                        ; $54aa: $d1
    pop de                                        ; $54ab: $d1
    pop de                                        ; $54ac: $d1
    pop de                                        ; $54ad: $d1
    dec b                                         ; $54ae: $05
    pop de                                        ; $54af: $d1
    rst $38                                       ; $54b0: $ff
    db $fc                                        ; $54b1: $fc
    db $fd                                        ; $54b2: $fd
    pop de                                        ; $54b3: $d1
    pop de                                        ; $54b4: $d1
    pop de                                        ; $54b5: $d1
    pop de                                        ; $54b6: $d1
    inc bc                                        ; $54b7: $03
    inc bc                                        ; $54b8: $03
    inc bc                                        ; $54b9: $03
    inc bc                                        ; $54ba: $03
    inc bc                                        ; $54bb: $03
    inc bc                                        ; $54bc: $03
    inc bc                                        ; $54bd: $03
    ld bc, $0103                                  ; $54be: $01 $03 $01
    ld bc, $0301                                  ; $54c1: $01 $01 $03
    inc bc                                        ; $54c4: $03
    inc bc                                        ; $54c5: $03
    inc bc                                        ; $54c6: $03
    db $fc                                        ; $54c7: $fc
    inc b                                         ; $54c8: $04
    nop                                           ; $54c9: $00
    dec b                                         ; $54ca: $05
    ld b, $02                                     ; $54cb: $06 $02
    db $fc                                        ; $54cd: $fc
    pop de                                        ; $54ce: $d1
    rlca                                          ; $54cf: $07
    dec b                                         ; $54d0: $05
    pop de                                        ; $54d1: $d1
    pop de                                        ; $54d2: $d1
    dec bc                                        ; $54d3: $0b
    pop de                                        ; $54d4: $d1
    pop de                                        ; $54d5: $d1
    pop de                                        ; $54d6: $d1
    ld bc, $0101                                  ; $54d7: $01 $01 $01
    ld bc, $0101                                  ; $54da: $01 $01 $01
    ld bc, $0103                                  ; $54dd: $01 $03 $01
    ld bc, $0303                                  ; $54e0: $01 $03 $03
    ld bc, $0303                                  ; $54e3: $01 $03 $03
    inc bc                                        ; $54e6: $03
    pop de                                        ; $54e7: $d1
    pop de                                        ; $54e8: $d1
    pop de                                        ; $54e9: $d1
    pop de                                        ; $54ea: $d1
    rst $28                                       ; $54eb: $ef
    pop de                                        ; $54ec: $d1
    pop de                                        ; $54ed: $d1
    pop de                                        ; $54ee: $d1
    push af                                       ; $54ef: $f5
    pop de                                        ; $54f0: $d1
    pop de                                        ; $54f1: $d1
    pop de                                        ; $54f2: $d1
    or $d1                                        ; $54f3: $f6 $d1
    pop de                                        ; $54f5: $d1
    pop de                                        ; $54f6: $d1
    inc bc                                        ; $54f7: $03
    inc bc                                        ; $54f8: $03
    inc bc                                        ; $54f9: $03
    inc bc                                        ; $54fa: $03
    add d                                         ; $54fb: $82
    inc bc                                        ; $54fc: $03
    inc bc                                        ; $54fd: $03
    inc bc                                        ; $54fe: $03
    add d                                         ; $54ff: $82
    inc bc                                        ; $5500: $03
    inc bc                                        ; $5501: $03
    inc bc                                        ; $5502: $03
    add d                                         ; $5503: $82
    inc bc                                        ; $5504: $03
    inc bc                                        ; $5505: $03
    inc bc                                        ; $5506: $03
    pop de                                        ; $5507: $d1
    pop de                                        ; $5508: $d1
    pop de                                        ; $5509: $d1
    pop de                                        ; $550a: $d1
    pop de                                        ; $550b: $d1
    pop de                                        ; $550c: $d1
    pop de                                        ; $550d: $d1
    pop de                                        ; $550e: $d1
    pop de                                        ; $550f: $d1
    pop de                                        ; $5510: $d1
    pop de                                        ; $5511: $d1
    pop de                                        ; $5512: $d1
    pop de                                        ; $5513: $d1
    pop de                                        ; $5514: $d1
    add hl, bc                                    ; $5515: $09
    ld a, [bc]                                    ; $5516: $0a
    inc bc                                        ; $5517: $03
    inc bc                                        ; $5518: $03
    inc bc                                        ; $5519: $03
    inc bc                                        ; $551a: $03
    inc bc                                        ; $551b: $03
    inc bc                                        ; $551c: $03
    inc bc                                        ; $551d: $03
    inc bc                                        ; $551e: $03
    inc bc                                        ; $551f: $03
    inc bc                                        ; $5520: $03
    inc bc                                        ; $5521: $03
    inc bc                                        ; $5522: $03
    inc bc                                        ; $5523: $03
    inc bc                                        ; $5524: $03
    ld bc, $d101                                  ; $5525: $01 $01 $d1
    pop de                                        ; $5528: $d1
    pop de                                        ; $5529: $d1
    pop de                                        ; $552a: $d1
    pop de                                        ; $552b: $d1
    db $10                                        ; $552c: $10
    ld de, $0e0d                                  ; $552d: $11 $0d $0e
    rrca                                          ; $5530: $0f
    inc c                                         ; $5531: $0c
    ld [hl], h                                    ; $5532: $74
    inc de                                        ; $5533: $13
    inc d                                         ; $5534: $14
    ld [hl], d                                    ; $5535: $72
    ld a, b                                       ; $5536: $78
    inc bc                                        ; $5537: $03
    inc bc                                        ; $5538: $03
    inc bc                                        ; $5539: $03
    inc bc                                        ; $553a: $03
    inc bc                                        ; $553b: $03
    ld bc, $0101                                  ; $553c: $01 $01 $01
    ld bc, $0101                                  ; $553f: $01 $01 $01
    add d                                         ; $5542: $82
    ld bc, $8201                                  ; $5543: $01 $01 $82
    add d                                         ; $5546: $82
    inc c                                         ; $5547: $0c
    db $10                                        ; $5548: $10
    ld de, $150d                                  ; $5549: $11 $0d $15
    rrca                                          ; $554c: $0f
    ld d, $12                                     ; $554d: $16 $12
    ld [hl], l                                    ; $554f: $75
    halt                                          ; $5550: $76
    ld [hl], a                                    ; $5551: $77
    rrca                                          ; $5552: $0f
    ld a, c                                       ; $5553: $79
    ld a, d                                       ; $5554: $7a
    ld a, e                                       ; $5555: $7b
    add b                                         ; $5556: $80
    ld bc, $0101                                  ; $5557: $01 $01 $01
    ld bc, $0101                                  ; $555a: $01 $01 $01
    ld bc, $8201                                  ; $555d: $01 $01 $82
    add d                                         ; $5560: $82
    add d                                         ; $5561: $82
    ld bc, $8282                                  ; $5562: $01 $82 $82
    add d                                         ; $5565: $82
    adc d                                         ; $5566: $8a
    ld c, $19                                     ; $5567: $0e $19
    ld a, [de]                                    ; $5569: $1a
    dec de                                        ; $556a: $1b
    ld de, $1d1c                                  ; $556b: $11 $1c $1d
    ld e, $16                                     ; $556e: $1e $16
    rra                                           ; $5570: $1f
    jr nz, jr_08b_5594                            ; $5571: $20 $21

    dec d                                         ; $5573: $15
    ld [hl+], a                                   ; $5574: $22
    inc hl                                        ; $5575: $23
    inc h                                         ; $5576: $24
    ld bc, $0707                                  ; $5577: $01 $07 $07
    rlca                                          ; $557a: $07
    ld bc, $0707                                  ; $557b: $01 $07 $07
    rlca                                          ; $557e: $07
    ld bc, $0707                                  ; $557f: $01 $07 $07
    rlca                                          ; $5582: $07
    ld bc, $0707                                  ; $5583: $01 $07 $07
    rlca                                          ; $5586: $07
    ld d, $12                                     ; $5587: $16 $12
    ld [hl], e                                    ; $5589: $73
    ld a, h                                       ; $558a: $7c
    dec d                                         ; $558b: $15
    ld [$8382], sp                                ; $558c: $08 $82 $83
    ld de, $8414                                  ; $558f: $11 $14 $84
    add l                                         ; $5592: $85
    inc c                                         ; $5593: $0c

jr_08b_5594:
    db $10                                        ; $5594: $10
    pop de                                        ; $5595: $d1
    pop de                                        ; $5596: $d1
    ld bc, $8201                                  ; $5597: $01 $01 $82
    add d                                         ; $559a: $82
    ld bc, $8a01                                  ; $559b: $01 $01 $8a
    adc d                                         ; $559e: $8a
    ld bc, $8a01                                  ; $559f: $01 $01 $8a
    adc d                                         ; $55a2: $8a
    ld bc, $0301                                  ; $55a3: $01 $01 $03
    inc bc                                        ; $55a6: $03
    ld a, l                                       ; $55a7: $7d
    ld a, [hl]                                    ; $55a8: $7e
    ld a, a                                       ; $55a9: $7f
    add c                                         ; $55aa: $81
    add [hl]                                      ; $55ab: $86
    add a                                         ; $55ac: $87
    adc b                                         ; $55ad: $88
    adc c                                         ; $55ae: $89
    adc d                                         ; $55af: $8a
    adc e                                         ; $55b0: $8b
    adc h                                         ; $55b1: $8c
    adc l                                         ; $55b2: $8d
    adc [hl]                                      ; $55b3: $8e
    adc a                                         ; $55b4: $8f
    pop de                                        ; $55b5: $d1
    pop de                                        ; $55b6: $d1
    add d                                         ; $55b7: $82
    add d                                         ; $55b8: $82
    add d                                         ; $55b9: $82
    adc d                                         ; $55ba: $8a
    adc d                                         ; $55bb: $8a
    adc d                                         ; $55bc: $8a
    adc d                                         ; $55bd: $8a
    adc d                                         ; $55be: $8a
    adc d                                         ; $55bf: $8a
    adc d                                         ; $55c0: $8a
    adc d                                         ; $55c1: $8a
    adc d                                         ; $55c2: $8a
    dec bc                                        ; $55c3: $0b
    dec bc                                        ; $55c4: $0b
    inc bc                                        ; $55c5: $03
    inc bc                                        ; $55c6: $03
    inc de                                        ; $55c7: $13
    dec [hl]                                      ; $55c8: $35
    ld [hl], $37                                  ; $55c9: $36 $37
    inc c                                         ; $55cb: $0c
    jr c, jr_08b_5607                             ; $55cc: $38 $39

    ld a, [hl-]                                   ; $55ce: $3a
    pop de                                        ; $55cf: $d1
    dec sp                                        ; $55d0: $3b
    inc a                                         ; $55d1: $3c
    dec a                                         ; $55d2: $3d
    pop de                                        ; $55d3: $d1
    ld a, $3f                                     ; $55d4: $3e $3f
    ld b, b                                       ; $55d6: $40
    ld bc, $0707                                  ; $55d7: $01 $07 $07
    rlca                                          ; $55da: $07
    ld bc, $0707                                  ; $55db: $01 $07 $07
    rlca                                          ; $55de: $07
    inc bc                                        ; $55df: $03
    rlca                                          ; $55e0: $07
    rlca                                          ; $55e1: $07
    rlca                                          ; $55e2: $07
    inc bc                                        ; $55e3: $03
    rlca                                          ; $55e4: $07
    rlca                                          ; $55e5: $07
    rlca                                          ; $55e6: $07
    db $e4                                        ; $55e7: $e4
    db $eb                                        ; $55e8: $eb
    db $e4                                        ; $55e9: $e4
    dec bc                                        ; $55ea: $0b
    jp nc, $d4d3                                  ; $55eb: $d2 $d3 $d4

    pop de                                        ; $55ee: $d1
    push de                                       ; $55ef: $d5
    sub $d7                                       ; $55f0: $d6 $d7
    pop de                                        ; $55f2: $d1
    reti                                          ; $55f3: $d9


    jp c, $e0db                                   ; $55f4: $da $db $e0

    add d                                         ; $55f7: $82
    add d                                         ; $55f8: $82
    and d                                         ; $55f9: $a2
    ld bc, $8282                                  ; $55fa: $01 $82 $82
    add d                                         ; $55fd: $82
    inc bc                                        ; $55fe: $03
    add d                                         ; $55ff: $82
    add d                                         ; $5600: $82
    add d                                         ; $5601: $82
    inc bc                                        ; $5602: $03
    add d                                         ; $5603: $82
    add d                                         ; $5604: $82
    add d                                         ; $5605: $82
    add d                                         ; $5606: $82

jr_08b_5607:
    pop de                                        ; $5607: $d1
    pop de                                        ; $5608: $d1
    dec bc                                        ; $5609: $0b
    ld e, h                                       ; $560a: $5c
    pop de                                        ; $560b: $d1
    dec bc                                        ; $560c: $0b
    pop de                                        ; $560d: $d1
    pop de                                        ; $560e: $d1
    pop de                                        ; $560f: $d1
    pop de                                        ; $5610: $d1
    pop de                                        ; $5611: $d1
    db $e4                                        ; $5612: $e4
    pop de                                        ; $5613: $d1
    pop de                                        ; $5614: $d1
    pop de                                        ; $5615: $d1
    jp nc, Jump_000_0303                          ; $5616: $d2 $03 $03

    ld bc, $0343                                  ; $5619: $01 $43 $03
    ld bc, $0303                                  ; $561c: $01 $03 $03
    inc bc                                        ; $561f: $03
    inc bc                                        ; $5620: $03
    inc bc                                        ; $5621: $03
    add d                                         ; $5622: $82
    inc bc                                        ; $5623: $03
    inc bc                                        ; $5624: $03
    inc bc                                        ; $5625: $03
    add d                                         ; $5626: $82
    ld e, l                                       ; $5627: $5d
    ld e, [hl]                                    ; $5628: $5e
    ld l, h                                       ; $5629: $6c
    ld c, a                                       ; $562a: $4f
    ldh [$d1], a                                  ; $562b: $e0 $d1
    ld e, h                                       ; $562d: $5c
    ld e, l                                       ; $562e: $5d
    db $eb                                        ; $562f: $eb
    db $e4                                        ; $5630: $e4
    pop de                                        ; $5631: $d1
    dec bc                                        ; $5632: $0b
    db $d3                                        ; $5633: $d3
    call nc, $d1d1                                ; $5634: $d4 $d1 $d1
    ld b, e                                       ; $5637: $43
    ld b, e                                       ; $5638: $43
    inc bc                                        ; $5639: $03
    inc bc                                        ; $563a: $03
    add d                                         ; $563b: $82
    inc bc                                        ; $563c: $03
    ld b, e                                       ; $563d: $43
    ld b, e                                       ; $563e: $43
    add d                                         ; $563f: $82
    and d                                         ; $5640: $a2
    inc bc                                        ; $5641: $03
    ld bc, $8282                                  ; $5642: $01 $82 $82
    inc bc                                        ; $5645: $03
    inc bc                                        ; $5646: $03
    ld d, b                                       ; $5647: $50
    ld d, l                                       ; $5648: $55
    ld c, l                                       ; $5649: $4d
    ld c, [hl]                                    ; $564a: $4e
    ld e, [hl]                                    ; $564b: $5e
    ld e, c                                       ; $564c: $59
    ld e, d                                       ; $564d: $5a
    ld e, e                                       ; $564e: $5b
    pop de                                        ; $564f: $d1
    ld c, [hl]                                    ; $5650: $4e
    ld c, l                                       ; $5651: $4d
    ld h, d                                       ; $5652: $62
    pop de                                        ; $5653: $d1
    ldh [$d1], a                                  ; $5654: $e0 $d1
    ld c, d                                       ; $5656: $4a
    inc bc                                        ; $5657: $03
    inc bc                                        ; $5658: $03
    inc bc                                        ; $5659: $03
    inc bc                                        ; $565a: $03
    ld b, e                                       ; $565b: $43
    inc bc                                        ; $565c: $03
    inc bc                                        ; $565d: $03
    inc bc                                        ; $565e: $03
    inc bc                                        ; $565f: $03
    ld h, e                                       ; $5660: $63
    ld h, e                                       ; $5661: $63
    inc bc                                        ; $5662: $03
    inc bc                                        ; $5663: $03
    add d                                         ; $5664: $82
    inc bc                                        ; $5665: $03
    ld h, e                                       ; $5666: $63
    db $dd                                        ; $5667: $dd
    sbc $df                                       ; $5668: $de $df
    db $e3                                        ; $566a: $e3
    ld [c], a                                     ; $566b: $e2
    rst $20                                       ; $566c: $e7
    add sp, -$2d                                  ; $566d: $e8 $d3
    and $e9                                       ; $566f: $e6 $e9
    ld [$d1d6], a                                 ; $5671: $ea $d6 $d1
    db $ec                                        ; $5674: $ec
    reti                                          ; $5675: $d9


    jp c, $8282                                   ; $5676: $da $82 $82

    add d                                         ; $5679: $82
    add d                                         ; $567a: $82
    add d                                         ; $567b: $82
    add d                                         ; $567c: $82
    add d                                         ; $567d: $82
    add d                                         ; $567e: $82
    add d                                         ; $567f: $82
    add d                                         ; $5680: $82
    add d                                         ; $5681: $82
    add d                                         ; $5682: $82
    inc bc                                        ; $5683: $03
    inc bc                                        ; $5684: $03
    add d                                         ; $5685: $82
    add d                                         ; $5686: $82
    db $e4                                        ; $5687: $e4
    pop de                                        ; $5688: $d1
    pop de                                        ; $5689: $d1
    push de                                       ; $568a: $d5
    call nc, $d8d1                                ; $568b: $d4 $d1 $d8
    reti                                          ; $568e: $d9


    rst $10                                       ; $568f: $d7
    pop de                                        ; $5690: $d1
    call c, $dbdd                                 ; $5691: $dc $dd $db
    pop de                                        ; $5694: $d1
    pop hl                                        ; $5695: $e1
    ld [c], a                                     ; $5696: $e2
    and d                                         ; $5697: $a2
    inc bc                                        ; $5698: $03
    inc bc                                        ; $5699: $03
    add d                                         ; $569a: $82
    add d                                         ; $569b: $82
    inc bc                                        ; $569c: $03
    add d                                         ; $569d: $82
    add d                                         ; $569e: $82
    add d                                         ; $569f: $82
    inc bc                                        ; $56a0: $03
    add d                                         ; $56a1: $82
    add d                                         ; $56a2: $82
    add d                                         ; $56a3: $82
    inc bc                                        ; $56a4: $03
    add d                                         ; $56a5: $82
    add d                                         ; $56a6: $82
    sub $d7                                       ; $56a7: $d6 $d7
    pop de                                        ; $56a9: $d1
    pop de                                        ; $56aa: $d1
    jp c, $d1db                                   ; $56ab: $da $db $d1

    pop de                                        ; $56ae: $d1
    sbc $ee                                       ; $56af: $de $ee
    rst $28                                       ; $56b1: $ef
    pop de                                        ; $56b2: $d1
    rst $20                                       ; $56b3: $e7
    ld a, [c]                                     ; $56b4: $f2
    push af                                       ; $56b5: $f5
    ret c                                         ; $56b6: $d8

    add d                                         ; $56b7: $82
    add d                                         ; $56b8: $82
    inc bc                                        ; $56b9: $03
    inc bc                                        ; $56ba: $03
    add d                                         ; $56bb: $82
    add d                                         ; $56bc: $82
    inc bc                                        ; $56bd: $03
    inc bc                                        ; $56be: $03
    add d                                         ; $56bf: $82
    add d                                         ; $56c0: $82
    add d                                         ; $56c1: $82
    inc bc                                        ; $56c2: $03
    add d                                         ; $56c3: $82
    add d                                         ; $56c4: $82
    add d                                         ; $56c5: $82
    add d                                         ; $56c6: $82
    pop de                                        ; $56c7: $d1
    db $ed                                        ; $56c8: $ed
    db $dd                                        ; $56c9: $dd
    sbc $d1                                       ; $56ca: $de $d1
    ldh a, [$f1]                                  ; $56cc: $f0 $f1
    rst $20                                       ; $56ce: $e7
    jp nc, $f3d3                                  ; $56cf: $d2 $d3 $f3

    jp hl                                         ; $56d2: $e9


    push de                                       ; $56d3: $d5
    sub $d7                                       ; $56d4: $d6 $d7
    rst $30                                       ; $56d6: $f7
    inc bc                                        ; $56d7: $03
    add d                                         ; $56d8: $82
    add d                                         ; $56d9: $82
    add d                                         ; $56da: $82
    inc bc                                        ; $56db: $03
    add d                                         ; $56dc: $82
    add d                                         ; $56dd: $82
    add d                                         ; $56de: $82
    add d                                         ; $56df: $82
    add d                                         ; $56e0: $82
    add d                                         ; $56e1: $82
    add d                                         ; $56e2: $82
    add d                                         ; $56e3: $82
    add d                                         ; $56e4: $82
    add d                                         ; $56e5: $82
    inc bc                                        ; $56e6: $03
    xor $ef                                       ; $56e7: $ee $ef
    push hl                                       ; $56e9: $e5
    and $f2                                       ; $56ea: $e6 $f2
    push af                                       ; $56ec: $f5
    pop de                                        ; $56ed: $d1
    pop de                                        ; $56ee: $d1
    db $f4                                        ; $56ef: $f4
    or $d1                                        ; $56f0: $f6 $d1
    pop de                                        ; $56f2: $d1
    pop de                                        ; $56f3: $d1
    pop de                                        ; $56f4: $d1
    ldh [$d1], a                                  ; $56f5: $e0 $d1
    add d                                         ; $56f7: $82
    add d                                         ; $56f8: $82
    add d                                         ; $56f9: $82
    add d                                         ; $56fa: $82
    add d                                         ; $56fb: $82
    add d                                         ; $56fc: $82
    inc bc                                        ; $56fd: $03
    inc bc                                        ; $56fe: $03
    add d                                         ; $56ff: $82
    add d                                         ; $5700: $82
    inc bc                                        ; $5701: $03
    inc bc                                        ; $5702: $03
    inc bc                                        ; $5703: $03
    inc bc                                        ; $5704: $03
    add d                                         ; $5705: $82
    inc bc                                        ; $5706: $03
    jp hl                                         ; $5707: $e9


Jump_08b_5708:
    db $f4                                        ; $5708: $f4
    or $dc                                        ; $5709: $f6 $dc
    rst $30                                       ; $570b: $f7
    pop de                                        ; $570c: $d1
    pop de                                        ; $570d: $d1
    pop hl                                        ; $570e: $e1
    pop de                                        ; $570f: $d1
    pop de                                        ; $5710: $d1
    pop de                                        ; $5711: $d1
    push hl                                       ; $5712: $e5
    pop de                                        ; $5713: $d1
    pop de                                        ; $5714: $d1
    pop de                                        ; $5715: $d1
    pop de                                        ; $5716: $d1
    add d                                         ; $5717: $82
    add d                                         ; $5718: $82
    add d                                         ; $5719: $82
    add d                                         ; $571a: $82
    inc bc                                        ; $571b: $03
    inc bc                                        ; $571c: $03
    inc bc                                        ; $571d: $03
    add d                                         ; $571e: $82
    inc bc                                        ; $571f: $03
    inc bc                                        ; $5720: $03
    inc bc                                        ; $5721: $03
    add d                                         ; $5722: $82
    inc bc                                        ; $5723: $03
    inc bc                                        ; $5724: $03
    inc bc                                        ; $5725: $03
    inc bc                                        ; $5726: $03
    db $dd                                        ; $5727: $dd
    sbc $ee                                       ; $5728: $de $ee
    rst $28                                       ; $572a: $ef
    ld [c], a                                     ; $572b: $e2
    rst $20                                       ; $572c: $e7
    ld a, [c]                                     ; $572d: $f2
    push af                                       ; $572e: $f5
    and $e9                                       ; $572f: $e6 $e9
    db $f4                                        ; $5731: $f4
    or $e0                                        ; $5732: $f6 $e0
    rst $30                                       ; $5734: $f7
    pop de                                        ; $5735: $d1
    ret c                                         ; $5736: $d8

    add d                                         ; $5737: $82
    add d                                         ; $5738: $82
    add d                                         ; $5739: $82
    add d                                         ; $573a: $82
    add d                                         ; $573b: $82
    add d                                         ; $573c: $82
    add d                                         ; $573d: $82
    add d                                         ; $573e: $82
    add d                                         ; $573f: $82
    add d                                         ; $5740: $82
    add d                                         ; $5741: $82
    add d                                         ; $5742: $82
    add d                                         ; $5743: $82
    inc bc                                        ; $5744: $03
    inc bc                                        ; $5745: $03
    add d                                         ; $5746: $82
    reti                                          ; $5747: $d9


    jp c, $d1db                                   ; $5748: $da $db $d1

    db $dd                                        ; $574b: $dd
    sbc $ee                                       ; $574c: $de $ee
    rst $28                                       ; $574e: $ef
    ld [c], a                                     ; $574f: $e2
    rst $20                                       ; $5750: $e7
    ld a, [c]                                     ; $5751: $f2
    push af                                       ; $5752: $f5
    and $e9                                       ; $5753: $e6 $e9
    db $f4                                        ; $5755: $f4
    or $82                                        ; $5756: $f6 $82
    add d                                         ; $5758: $82
    add d                                         ; $5759: $82
    add d                                         ; $575a: $82
    add d                                         ; $575b: $82
    add d                                         ; $575c: $82
    add d                                         ; $575d: $82
    add d                                         ; $575e: $82
    add d                                         ; $575f: $82
    add d                                         ; $5760: $82
    add d                                         ; $5761: $82
    add d                                         ; $5762: $82
    add d                                         ; $5763: $82
    add d                                         ; $5764: $82
    add d                                         ; $5765: $82
    add d                                         ; $5766: $82
    pop de                                        ; $5767: $d1
    db $e4                                        ; $5768: $e4
    db $eb                                        ; $5769: $eb
    db $e4                                        ; $576a: $e4
    pop de                                        ; $576b: $d1
    jp nc, $d4d3                                  ; $576c: $d2 $d3 $d4

    pop de                                        ; $576f: $d1
    push de                                       ; $5770: $d5
    sub $d7                                       ; $5771: $d6 $d7
    ret c                                         ; $5773: $d8

    reti                                          ; $5774: $d9


    jp c, Jump_000_03db                           ; $5775: $da $db $03

    add d                                         ; $5778: $82
    add d                                         ; $5779: $82
    and d                                         ; $577a: $a2
    inc bc                                        ; $577b: $03
    add d                                         ; $577c: $82
    add d                                         ; $577d: $82
    add d                                         ; $577e: $82
    inc bc                                        ; $577f: $03
    add d                                         ; $5780: $82
    add d                                         ; $5781: $82
    add d                                         ; $5782: $82
    add d                                         ; $5783: $82
    add d                                         ; $5784: $82
    add d                                         ; $5785: $82
    add d                                         ; $5786: $82
    pop de                                        ; $5787: $d1
    pop de                                        ; $5788: $d1
    pop de                                        ; $5789: $d1
    db $e4                                        ; $578a: $e4
    pop de                                        ; $578b: $d1
    pop de                                        ; $578c: $d1
    pop de                                        ; $578d: $d1
    jp nc, $d1d1                                  ; $578e: $d2 $d1 $d1

    pop de                                        ; $5791: $d1
    push de                                       ; $5792: $d5
    pop de                                        ; $5793: $d1
    pop de                                        ; $5794: $d1
    ret c                                         ; $5795: $d8

    reti                                          ; $5796: $d9


    inc bc                                        ; $5797: $03
    inc bc                                        ; $5798: $03
    inc bc                                        ; $5799: $03
    add d                                         ; $579a: $82
    inc bc                                        ; $579b: $03
    inc bc                                        ; $579c: $03
    inc bc                                        ; $579d: $03
    add d                                         ; $579e: $82
    inc bc                                        ; $579f: $03
    inc bc                                        ; $57a0: $03
    inc bc                                        ; $57a1: $03
    add d                                         ; $57a2: $82
    inc bc                                        ; $57a3: $03
    inc bc                                        ; $57a4: $03
    add d                                         ; $57a5: $82
    add d                                         ; $57a6: $82
    db $eb                                        ; $57a7: $eb
    db $e4                                        ; $57a8: $e4
    pop de                                        ; $57a9: $d1
    call c, $d4d3                                 ; $57aa: $dc $d3 $d4
    pop de                                        ; $57ad: $d1
    pop hl                                        ; $57ae: $e1
    sub $d7                                       ; $57af: $d6 $d7
    pop de                                        ; $57b1: $d1
    push hl                                       ; $57b2: $e5
    jp c, $e0db                                   ; $57b3: $da $db $e0

    pop de                                        ; $57b6: $d1
    add d                                         ; $57b7: $82
    and d                                         ; $57b8: $a2
    inc bc                                        ; $57b9: $03
    add d                                         ; $57ba: $82
    add d                                         ; $57bb: $82
    add d                                         ; $57bc: $82
    inc bc                                        ; $57bd: $03
    add d                                         ; $57be: $82
    add d                                         ; $57bf: $82
    add d                                         ; $57c0: $82
    inc bc                                        ; $57c1: $03
    add d                                         ; $57c2: $82
    add d                                         ; $57c3: $82
    add d                                         ; $57c4: $82
    add d                                         ; $57c5: $82
    inc bc                                        ; $57c6: $03
    pop de                                        ; $57c7: $d1
    dec b                                         ; $57c8: $05
    cp $ff                                        ; $57c9: $fe $ff
    ld c, c                                       ; $57cb: $49
    ld c, d                                       ; $57cc: $4a
    pop de                                        ; $57cd: $d1
    ld h, e                                       ; $57ce: $63
    ld c, e                                       ; $57cf: $4b
    ld c, h                                       ; $57d0: $4c
    ld d, e                                       ; $57d1: $53
    pop de                                        ; $57d2: $d1
    ld c, c                                       ; $57d3: $49
    ld h, l                                       ; $57d4: $65
    ld e, a                                       ; $57d5: $5f
    ld h, b                                       ; $57d6: $60
    inc bc                                        ; $57d7: $03
    ld bc, $0101                                  ; $57d8: $01 $01 $01
    inc bc                                        ; $57db: $03
    inc bc                                        ; $57dc: $03
    inc bc                                        ; $57dd: $03
    rlca                                          ; $57de: $07
    inc bc                                        ; $57df: $03
    inc bc                                        ; $57e0: $03
    inc bc                                        ; $57e1: $03
    inc bc                                        ; $57e2: $03
    ld h, e                                       ; $57e3: $63
    inc bc                                        ; $57e4: $03
    inc bc                                        ; $57e5: $03
    inc bc                                        ; $57e6: $03
    db $fc                                        ; $57e7: $fc
    inc b                                         ; $57e8: $04
    rlca                                          ; $57e9: $07
    ld bc, $ffd1                                  ; $57ea: $01 $d1 $ff
    db $fc                                        ; $57ed: $fc
    db $fd                                        ; $57ee: $fd
    dec bc                                        ; $57ef: $0b
    pop de                                        ; $57f0: $d1
    ld hl, sp-$07                                 ; $57f1: $f8 $f9
    ld c, l                                       ; $57f3: $4d
    ld c, [hl]                                    ; $57f4: $4e
    ld a, [$01fb]                                 ; $57f5: $fa $fb $01
    ld bc, $0101                                  ; $57f8: $01 $01 $01
    inc bc                                        ; $57fb: $03
    ld bc, $0101                                  ; $57fc: $01 $01 $01
    ld bc, $0103                                  ; $57ff: $01 $03 $01
    ld bc, $0303                                  ; $5802: $01 $03 $03
    ld bc, $fe01                                  ; $5805: $01 $01 $fe
    rst $38                                       ; $5808: $ff
    pop de                                        ; $5809: $d1
    pop de                                        ; $580a: $d1
    pop de                                        ; $580b: $d1
    ld h, e                                       ; $580c: $63
    pop de                                        ; $580d: $d1
    pop de                                        ; $580e: $d1
    pop de                                        ; $580f: $d1
    pop de                                        ; $5810: $d1
    pop de                                        ; $5811: $d1
    pop de                                        ; $5812: $d1
    pop de                                        ; $5813: $d1
    pop de                                        ; $5814: $d1
    pop de                                        ; $5815: $d1
    ld h, e                                       ; $5816: $63
    ld bc, $0301                                  ; $5817: $01 $01 $03
    inc bc                                        ; $581a: $03
    inc bc                                        ; $581b: $03
    rlca                                          ; $581c: $07
    inc bc                                        ; $581d: $03
    inc bc                                        ; $581e: $03
    inc bc                                        ; $581f: $03
    inc bc                                        ; $5820: $03
    inc bc                                        ; $5821: $03
    inc bc                                        ; $5822: $03
    inc bc                                        ; $5823: $03
    inc bc                                        ; $5824: $03
    inc bc                                        ; $5825: $03
    rlca                                          ; $5826: $07
    pop de                                        ; $5827: $d1
    ld c, [hl]                                    ; $5828: $4e
    ld c, l                                       ; $5829: $4d
    ld d, a                                       ; $582a: $57
    dec bc                                        ; $582b: $0b
    pop de                                        ; $582c: $d1
    pop de                                        ; $582d: $d1
    ld c, d                                       ; $582e: $4a
    pop de                                        ; $582f: $d1
    pop de                                        ; $5830: $d1
    pop de                                        ; $5831: $d1
    dec bc                                        ; $5832: $0b
    pop de                                        ; $5833: $d1
    ldh [$d1], a                                  ; $5834: $e0 $d1
    pop de                                        ; $5836: $d1
    inc bc                                        ; $5837: $03
    ld h, e                                       ; $5838: $63
    ld h, e                                       ; $5839: $63
    inc bc                                        ; $583a: $03
    ld bc, $0303                                  ; $583b: $01 $03 $03
    ld h, e                                       ; $583e: $63
    inc bc                                        ; $583f: $03
    inc bc                                        ; $5840: $03
    inc bc                                        ; $5841: $03
    ld bc, $8203                                  ; $5842: $01 $03 $82
    inc bc                                        ; $5845: $03
    inc bc                                        ; $5846: $03
    ld d, h                                       ; $5847: $54
    ld d, l                                       ; $5848: $55
    ld c, c                                       ; $5849: $49
    ld c, d                                       ; $584a: $4a
    ld c, c                                       ; $584b: $49
    ld e, c                                       ; $584c: $59
    ld e, d                                       ; $584d: $5a
    ld e, e                                       ; $584e: $5b
    pop de                                        ; $584f: $d1
    ld d, e                                       ; $5850: $53
    ld h, c                                       ; $5851: $61
    ld h, d                                       ; $5852: $62
    pop de                                        ; $5853: $d1
    pop de                                        ; $5854: $d1
    sub b                                         ; $5855: $90
    ld d, d                                       ; $5856: $52
    inc bc                                        ; $5857: $03
    inc bc                                        ; $5858: $03
    inc bc                                        ; $5859: $03
    inc bc                                        ; $585a: $03
    ld h, e                                       ; $585b: $63
    inc bc                                        ; $585c: $03
    inc bc                                        ; $585d: $03
    inc bc                                        ; $585e: $03
    inc bc                                        ; $585f: $03
    ld h, e                                       ; $5860: $63
    inc bc                                        ; $5861: $03
    inc bc                                        ; $5862: $03
    inc bc                                        ; $5863: $03
    inc bc                                        ; $5864: $03
    ld l, e                                       ; $5865: $6b
    inc bc                                        ; $5866: $03
    pop de                                        ; $5867: $d1
    dec bc                                        ; $5868: $0b
    pop de                                        ; $5869: $d1
    pop de                                        ; $586a: $d1
    ld c, l                                       ; $586b: $4d
    ld c, [hl]                                    ; $586c: $4e
    add hl, bc                                    ; $586d: $09
    ld a, [bc]                                    ; $586e: $0a
    ld c, e                                       ; $586f: $4b
    ld c, h                                       ; $5870: $4c
    ld c, c                                       ; $5871: $49
    ld c, d                                       ; $5872: $4a
    ld c, a                                       ; $5873: $4f
    ld d, b                                       ; $5874: $50
    ld d, c                                       ; $5875: $51
    ld d, d                                       ; $5876: $52
    inc bc                                        ; $5877: $03
    ld bc, $0303                                  ; $5878: $01 $03 $03
    inc bc                                        ; $587b: $03
    inc bc                                        ; $587c: $03
    ld bc, $0301                                  ; $587d: $01 $01 $03
    inc bc                                        ; $5880: $03
    inc bc                                        ; $5881: $03
    inc bc                                        ; $5882: $03
    inc bc                                        ; $5883: $03
    inc bc                                        ; $5884: $03
    inc bc                                        ; $5885: $03
    inc bc                                        ; $5886: $03
    pop de                                        ; $5887: $d1
    pop de                                        ; $5888: $d1
    rst $30                                       ; $5889: $f7
    pop de                                        ; $588a: $d1
    pop de                                        ; $588b: $d1
    pop de                                        ; $588c: $d1
    ld h, e                                       ; $588d: $63
    pop de                                        ; $588e: $d1
    pop de                                        ; $588f: $d1
    dec bc                                        ; $5890: $0b
    pop de                                        ; $5891: $d1
    ld c, d                                       ; $5892: $4a
    ld c, e                                       ; $5893: $4b
    ld c, h                                       ; $5894: $4c
    ld h, c                                       ; $5895: $61
    ld h, d                                       ; $5896: $62
    inc bc                                        ; $5897: $03
    inc bc                                        ; $5898: $03
    inc bc                                        ; $5899: $03
    inc bc                                        ; $589a: $03
    inc bc                                        ; $589b: $03
    inc bc                                        ; $589c: $03
    rlca                                          ; $589d: $07
    inc bc                                        ; $589e: $03
    inc bc                                        ; $589f: $03
    ld bc, $2303                                  ; $58a0: $01 $03 $23
    inc bc                                        ; $58a3: $03
    inc bc                                        ; $58a4: $03
    inc bc                                        ; $58a5: $03
    inc bc                                        ; $58a6: $03
    pop de                                        ; $58a7: $d1
    ld hl, sp-$07                                 ; $58a8: $f8 $f9
    ld l, l                                       ; $58aa: $6d
    pop de                                        ; $58ab: $d1
    ld a, [$d1fb]                                 ; $58ac: $fa $fb $d1
    pop de                                        ; $58af: $d1
    pop de                                        ; $58b0: $d1
    pop de                                        ; $58b1: $d1
    sub c                                         ; $58b2: $91
    pop de                                        ; $58b3: $d1
    pop de                                        ; $58b4: $d1
    ld h, e                                       ; $58b5: $63
    sub d                                         ; $58b6: $92
    inc bc                                        ; $58b7: $03
    ld bc, $6301                                  ; $58b8: $01 $01 $63
    inc bc                                        ; $58bb: $03
    ld bc, $0301                                  ; $58bc: $01 $01 $03
    inc bc                                        ; $58bf: $03
    inc bc                                        ; $58c0: $03
    inc bc                                        ; $58c1: $03
    dec bc                                        ; $58c2: $0b
    inc bc                                        ; $58c3: $03
    inc bc                                        ; $58c4: $03
    rlca                                          ; $58c5: $07
    dec bc                                        ; $58c6: $0b
    ld d, h                                       ; $58c7: $54
    ld d, l                                       ; $58c8: $55
    ld l, h                                       ; $58c9: $6c
    ld d, a                                       ; $58ca: $57
    ld e, b                                       ; $58cb: $58
    ld e, c                                       ; $58cc: $59
    ld e, a                                       ; $58cd: $5f
    ld h, b                                       ; $58ce: $60
    ld c, e                                       ; $58cf: $4b
    ld c, h                                       ; $58d0: $4c
    ld h, c                                       ; $58d1: $61
    ld l, l                                       ; $58d2: $6d
    ld d, [hl]                                    ; $58d3: $56
    ld h, l                                       ; $58d4: $65
    ld d, e                                       ; $58d5: $53
    pop de                                        ; $58d6: $d1
    inc bc                                        ; $58d7: $03
    inc bc                                        ; $58d8: $03
    inc bc                                        ; $58d9: $03
    inc bc                                        ; $58da: $03
    inc bc                                        ; $58db: $03
    inc bc                                        ; $58dc: $03
    inc bc                                        ; $58dd: $03
    inc bc                                        ; $58de: $03
    inc bc                                        ; $58df: $03
    inc bc                                        ; $58e0: $03
    inc bc                                        ; $58e1: $03
    ld b, e                                       ; $58e2: $43
    inc bc                                        ; $58e3: $03
    inc bc                                        ; $58e4: $03
    ld b, e                                       ; $58e5: $43
    inc bc                                        ; $58e6: $03
    ld h, h                                       ; $58e7: $64
    ld h, l                                       ; $58e8: $65
    ld d, c                                       ; $58e9: $51
    ld d, d                                       ; $58ea: $52
    ld d, h                                       ; $58eb: $54
    ld d, l                                       ; $58ec: $55
    ld l, h                                       ; $58ed: $6c
    ld d, a                                       ; $58ee: $57
    pop de                                        ; $58ef: $d1
    pop de                                        ; $58f0: $d1
    ldh [rWY], a                                  ; $58f1: $e0 $4a
    pop de                                        ; $58f3: $d1
    db $e4                                        ; $58f4: $e4
    db $eb                                        ; $58f5: $eb
    db $e4                                        ; $58f6: $e4
    inc bc                                        ; $58f7: $03
    inc bc                                        ; $58f8: $03
    inc bc                                        ; $58f9: $03
    inc bc                                        ; $58fa: $03
    inc bc                                        ; $58fb: $03
    inc bc                                        ; $58fc: $03
    inc bc                                        ; $58fd: $03
    inc bc                                        ; $58fe: $03
    inc bc                                        ; $58ff: $03
    inc bc                                        ; $5900: $03
    add d                                         ; $5901: $82
    ld h, e                                       ; $5902: $63
    inc bc                                        ; $5903: $03
    add d                                         ; $5904: $82
    add d                                         ; $5905: $82
    and d                                         ; $5906: $a2
    dec bc                                        ; $5907: $0b
    pop de                                        ; $5908: $d1
    sub e                                         ; $5909: $93
    ld d, a                                       ; $590a: $57
    pop de                                        ; $590b: $d1
    ld h, e                                       ; $590c: $63
    sub h                                         ; $590d: $94
    ld e, e                                       ; $590e: $5b
    pop de                                        ; $590f: $d1
    ld d, e                                       ; $5910: $53
    ld h, c                                       ; $5911: $61
    ld h, d                                       ; $5912: $62
    sub c                                         ; $5913: $91
    ld h, l                                       ; $5914: $65
    ld d, c                                       ; $5915: $51
    sub d                                         ; $5916: $92
    ld bc, $2b03                                  ; $5917: $01 $03 $2b
    inc bc                                        ; $591a: $03
    inc bc                                        ; $591b: $03
    rlca                                          ; $591c: $07
    dec hl                                        ; $591d: $2b
    inc bc                                        ; $591e: $03
    inc bc                                        ; $591f: $03
    inc hl                                        ; $5920: $23
    inc bc                                        ; $5921: $03
    inc bc                                        ; $5922: $03
    dec bc                                        ; $5923: $0b
    inc bc                                        ; $5924: $03
    inc bc                                        ; $5925: $03
    ld l, e                                       ; $5926: $6b
    ld d, h                                       ; $5927: $54
    ld l, l                                       ; $5928: $6d
    pop de                                        ; $5929: $d1
    ld h, e                                       ; $592a: $63
    sub d                                         ; $592b: $92
    pop de                                        ; $592c: $d1
    pop de                                        ; $592d: $d1
    pop de                                        ; $592e: $d1
    sub c                                         ; $592f: $91
    ld h, e                                       ; $5930: $63
    pop de                                        ; $5931: $d1
    pop de                                        ; $5932: $d1
    pop de                                        ; $5933: $d1
    pop de                                        ; $5934: $d1
    pop de                                        ; $5935: $d1
    dec bc                                        ; $5936: $0b
    inc bc                                        ; $5937: $03
    ld b, e                                       ; $5938: $43
    inc bc                                        ; $5939: $03
    rlca                                          ; $593a: $07
    ld l, e                                       ; $593b: $6b
    inc bc                                        ; $593c: $03
    inc bc                                        ; $593d: $03
    inc bc                                        ; $593e: $03
    ld l, e                                       ; $593f: $6b
    rlca                                          ; $5940: $07
    inc bc                                        ; $5941: $03
    inc bc                                        ; $5942: $03
    inc bc                                        ; $5943: $03
    inc bc                                        ; $5944: $03
    inc bc                                        ; $5945: $03
    ld bc, $f8d1                                  ; $5946: $01 $d1 $f8
    ld sp, hl                                     ; $5949: $f9
    rst $30                                       ; $594a: $f7
    rst $28                                       ; $594b: $ef
    ld a, [$d1fb]                                 ; $594c: $fa $fb $d1
    push af                                       ; $594f: $f5
    pop de                                        ; $5950: $d1
    dec bc                                        ; $5951: $0b
    ld l, l                                       ; $5952: $6d
    or $d1                                        ; $5953: $f6 $d1
    sub b                                         ; $5955: $90
    ld h, d                                       ; $5956: $62
    inc bc                                        ; $5957: $03
    ld bc, $0301                                  ; $5958: $01 $01 $03
    add d                                         ; $595b: $82
    ld bc, $0301                                  ; $595c: $01 $01 $03
    add d                                         ; $595f: $82
    inc bc                                        ; $5960: $03
    ld bc, $8223                                  ; $5961: $01 $23 $82
    inc bc                                        ; $5964: $03
    dec hl                                        ; $5965: $2b
    inc bc                                        ; $5966: $03
    pop de                                        ; $5967: $d1
    ld l, l                                       ; $5968: $6d
    ld d, c                                       ; $5969: $51
    ld d, d                                       ; $596a: $52
    sub b                                         ; $596b: $90
    ld d, l                                       ; $596c: $55
    ld l, h                                       ; $596d: $6c
    ld d, a                                       ; $596e: $57
    ld e, b                                       ; $596f: $58
    ld e, c                                       ; $5970: $59
    ld e, d                                       ; $5971: $5a
    ld e, e                                       ; $5972: $5b
    ld c, e                                       ; $5973: $4b
    ld c, h                                       ; $5974: $4c
    ld h, c                                       ; $5975: $61
    ld h, d                                       ; $5976: $62
    inc bc                                        ; $5977: $03
    inc hl                                        ; $5978: $23
    inc bc                                        ; $5979: $03
    inc bc                                        ; $597a: $03
    dec hl                                        ; $597b: $2b
    inc bc                                        ; $597c: $03
    inc bc                                        ; $597d: $03
    inc bc                                        ; $597e: $03
    inc bc                                        ; $597f: $03
    inc bc                                        ; $5980: $03
    inc bc                                        ; $5981: $03
    inc bc                                        ; $5982: $03
    inc bc                                        ; $5983: $03
    inc bc                                        ; $5984: $03
    inc bc                                        ; $5985: $03
    inc bc                                        ; $5986: $03
    ld h, h                                       ; $5987: $64
    ld h, l                                       ; $5988: $65
    ld d, c                                       ; $5989: $51
    ld e, a                                       ; $598a: $5f
    ld d, h                                       ; $598b: $54
    ld d, l                                       ; $598c: $55
    ld l, h                                       ; $598d: $6c
    ld d, a                                       ; $598e: $57
    ld e, b                                       ; $598f: $58
    ld e, c                                       ; $5990: $59
    ld e, d                                       ; $5991: $5a
    ld e, e                                       ; $5992: $5b
    ld c, e                                       ; $5993: $4b
    ld c, h                                       ; $5994: $4c
    ld h, c                                       ; $5995: $61
    ld h, d                                       ; $5996: $62
    inc bc                                        ; $5997: $03
    inc bc                                        ; $5998: $03
    inc bc                                        ; $5999: $03
    inc bc                                        ; $599a: $03
    inc bc                                        ; $599b: $03
    inc bc                                        ; $599c: $03
    inc bc                                        ; $599d: $03
    inc bc                                        ; $599e: $03
    inc bc                                        ; $599f: $03
    inc bc                                        ; $59a0: $03
    inc bc                                        ; $59a1: $03
    inc bc                                        ; $59a2: $03
    inc bc                                        ; $59a3: $03
    inc bc                                        ; $59a4: $03
    inc bc                                        ; $59a5: $03
    inc bc                                        ; $59a6: $03
    ld h, b                                       ; $59a7: $60
    ld h, l                                       ; $59a8: $65
    ld d, c                                       ; $59a9: $51
    ld d, d                                       ; $59aa: $52
    ld d, h                                       ; $59ab: $54
    ld d, l                                       ; $59ac: $55
    ld l, h                                       ; $59ad: $6c
    ld d, a                                       ; $59ae: $57
    ld e, b                                       ; $59af: $58
    ld e, c                                       ; $59b0: $59
    ld e, d                                       ; $59b1: $5a
    ld e, e                                       ; $59b2: $5b
    ld c, e                                       ; $59b3: $4b
    ld c, h                                       ; $59b4: $4c
    ld h, c                                       ; $59b5: $61
    ld h, d                                       ; $59b6: $62
    inc bc                                        ; $59b7: $03
    inc bc                                        ; $59b8: $03
    inc bc                                        ; $59b9: $03
    inc bc                                        ; $59ba: $03
    inc bc                                        ; $59bb: $03
    inc bc                                        ; $59bc: $03
    inc bc                                        ; $59bd: $03
    inc bc                                        ; $59be: $03
    inc bc                                        ; $59bf: $03
    inc bc                                        ; $59c0: $03
    inc bc                                        ; $59c1: $03
    inc bc                                        ; $59c2: $03
    inc bc                                        ; $59c3: $03
    inc bc                                        ; $59c4: $03
    inc bc                                        ; $59c5: $03
    inc bc                                        ; $59c6: $03
    pop de                                        ; $59c7: $d1
    sub c                                         ; $59c8: $91
    ld d, c                                       ; $59c9: $51
    ld d, d                                       ; $59ca: $52
    dec bc                                        ; $59cb: $0b
    sub d                                         ; $59cc: $92
    ld l, h                                       ; $59cd: $6c
    ld d, a                                       ; $59ce: $57
    ld c, c                                       ; $59cf: $49
    ld e, c                                       ; $59d0: $59
    ld e, d                                       ; $59d1: $5a
    ld e, e                                       ; $59d2: $5b
    ld c, e                                       ; $59d3: $4b
    ld c, a                                       ; $59d4: $4f
    ld d, b                                       ; $59d5: $50
    ld h, d                                       ; $59d6: $62
    inc bc                                        ; $59d7: $03
    dec bc                                        ; $59d8: $0b
    inc bc                                        ; $59d9: $03
    inc bc                                        ; $59da: $03
    ld bc, $030b                                  ; $59db: $01 $0b $03
    inc bc                                        ; $59de: $03
    inc hl                                        ; $59df: $23
    inc bc                                        ; $59e0: $03
    inc bc                                        ; $59e1: $03
    inc bc                                        ; $59e2: $03
    inc bc                                        ; $59e3: $03
    inc bc                                        ; $59e4: $03
    inc bc                                        ; $59e5: $03
    inc bc                                        ; $59e6: $03
    ld h, h                                       ; $59e7: $64
    ld e, a                                       ; $59e8: $5f
    ld h, b                                       ; $59e9: $60
    ld d, d                                       ; $59ea: $52
    ld d, h                                       ; $59eb: $54
    ld d, l                                       ; $59ec: $55
    ld l, h                                       ; $59ed: $6c
    ld d, a                                       ; $59ee: $57
    ld e, b                                       ; $59ef: $58
    ld e, c                                       ; $59f0: $59
    ld e, d                                       ; $59f1: $5a
    ld e, e                                       ; $59f2: $5b
    ld c, e                                       ; $59f3: $4b
    ld c, h                                       ; $59f4: $4c
    ld h, c                                       ; $59f5: $61
    ld h, d                                       ; $59f6: $62
    inc bc                                        ; $59f7: $03
    inc bc                                        ; $59f8: $03
    inc bc                                        ; $59f9: $03
    inc bc                                        ; $59fa: $03
    inc bc                                        ; $59fb: $03
    inc bc                                        ; $59fc: $03
    inc bc                                        ; $59fd: $03
    inc bc                                        ; $59fe: $03
    inc bc                                        ; $59ff: $03
    inc bc                                        ; $5a00: $03
    inc bc                                        ; $5a01: $03
    inc bc                                        ; $5a02: $03
    inc bc                                        ; $5a03: $03
    inc bc                                        ; $5a04: $03
    inc bc                                        ; $5a05: $03
    inc bc                                        ; $5a06: $03
    ld h, h                                       ; $5a07: $64
    ld c, a                                       ; $5a08: $4f
    ld d, b                                       ; $5a09: $50
    ld d, d                                       ; $5a0a: $52
    ld e, a                                       ; $5a0b: $5f
    ld h, b                                       ; $5a0c: $60
    ld l, h                                       ; $5a0d: $6c
    ld d, a                                       ; $5a0e: $57
    ld e, b                                       ; $5a0f: $58
    ld e, c                                       ; $5a10: $59
    ld e, d                                       ; $5a11: $5a
    ld e, e                                       ; $5a12: $5b
    ld c, e                                       ; $5a13: $4b
    ld c, h                                       ; $5a14: $4c
    ld h, c                                       ; $5a15: $61
    ld h, d                                       ; $5a16: $62
    inc bc                                        ; $5a17: $03
    inc bc                                        ; $5a18: $03
    inc bc                                        ; $5a19: $03
    inc bc                                        ; $5a1a: $03
    inc bc                                        ; $5a1b: $03
    inc bc                                        ; $5a1c: $03
    inc bc                                        ; $5a1d: $03
    inc bc                                        ; $5a1e: $03
    inc bc                                        ; $5a1f: $03
    inc bc                                        ; $5a20: $03
    inc bc                                        ; $5a21: $03
    inc bc                                        ; $5a22: $03
    inc bc                                        ; $5a23: $03
    inc bc                                        ; $5a24: $03
    inc bc                                        ; $5a25: $03
    inc bc                                        ; $5a26: $03
    ld h, h                                       ; $5a27: $64
    ld h, l                                       ; $5a28: $65
    ld d, c                                       ; $5a29: $51
    ld d, d                                       ; $5a2a: $52
    ld d, h                                       ; $5a2b: $54
    ld d, l                                       ; $5a2c: $55
    ld l, h                                       ; $5a2d: $6c
    ld d, a                                       ; $5a2e: $57
    ld e, b                                       ; $5a2f: $58
    ld e, c                                       ; $5a30: $59
    ld e, a                                       ; $5a31: $5f
    ld h, b                                       ; $5a32: $60
    ld c, e                                       ; $5a33: $4b
    ld e, a                                       ; $5a34: $5f
    ld h, b                                       ; $5a35: $60
    ld h, d                                       ; $5a36: $62
    inc bc                                        ; $5a37: $03
    inc bc                                        ; $5a38: $03
    inc bc                                        ; $5a39: $03
    inc bc                                        ; $5a3a: $03
    inc bc                                        ; $5a3b: $03
    inc bc                                        ; $5a3c: $03
    inc bc                                        ; $5a3d: $03
    inc bc                                        ; $5a3e: $03
    inc bc                                        ; $5a3f: $03
    inc bc                                        ; $5a40: $03
    inc bc                                        ; $5a41: $03
    inc bc                                        ; $5a42: $03
    inc bc                                        ; $5a43: $03
    inc bc                                        ; $5a44: $03
    inc bc                                        ; $5a45: $03
    inc bc                                        ; $5a46: $03
    ld h, h                                       ; $5a47: $64
    ld h, l                                       ; $5a48: $65
    ld d, c                                       ; $5a49: $51
    ld d, d                                       ; $5a4a: $52
    ld d, h                                       ; $5a4b: $54
    ld d, l                                       ; $5a4c: $55
    ld l, h                                       ; $5a4d: $6c
    ld d, a                                       ; $5a4e: $57
    ld c, c                                       ; $5a4f: $49
    ld e, c                                       ; $5a50: $59
    ld e, d                                       ; $5a51: $5a
    ld e, a                                       ; $5a52: $5f
    pop de                                        ; $5a53: $d1
    sub b                                         ; $5a54: $90
    ld h, c                                       ; $5a55: $61
    ld h, d                                       ; $5a56: $62
    inc bc                                        ; $5a57: $03
    inc bc                                        ; $5a58: $03
    inc bc                                        ; $5a59: $03
    inc bc                                        ; $5a5a: $03
    inc bc                                        ; $5a5b: $03
    inc bc                                        ; $5a5c: $03
    inc bc                                        ; $5a5d: $03
    inc bc                                        ; $5a5e: $03
    ld h, e                                       ; $5a5f: $63
    inc bc                                        ; $5a60: $03
    inc bc                                        ; $5a61: $03
    inc bc                                        ; $5a62: $03
    inc bc                                        ; $5a63: $03
    ld l, e                                       ; $5a64: $6b
    inc bc                                        ; $5a65: $03
    inc bc                                        ; $5a66: $03
    ld h, h                                       ; $5a67: $64
    ld h, l                                       ; $5a68: $65
    ld d, [hl]                                    ; $5a69: $56
    ld d, d                                       ; $5a6a: $52
    ld d, h                                       ; $5a6b: $54
    ld d, l                                       ; $5a6c: $55
    ld l, h                                       ; $5a6d: $6c
    ld d, a                                       ; $5a6e: $57
    ld h, b                                       ; $5a6f: $60
    ld e, c                                       ; $5a70: $59
    ld e, d                                       ; $5a71: $5a
    ld e, e                                       ; $5a72: $5b
    ld e, a                                       ; $5a73: $5f
    ld h, b                                       ; $5a74: $60
    ld h, c                                       ; $5a75: $61
    ld h, d                                       ; $5a76: $62
    inc bc                                        ; $5a77: $03
    inc bc                                        ; $5a78: $03
    inc bc                                        ; $5a79: $03
    inc bc                                        ; $5a7a: $03
    inc bc                                        ; $5a7b: $03
    inc bc                                        ; $5a7c: $03
    inc bc                                        ; $5a7d: $03
    inc bc                                        ; $5a7e: $03
    inc bc                                        ; $5a7f: $03
    inc bc                                        ; $5a80: $03
    inc bc                                        ; $5a81: $03
    inc bc                                        ; $5a82: $03
    inc bc                                        ; $5a83: $03
    inc bc                                        ; $5a84: $03
    inc bc                                        ; $5a85: $03
    inc bc                                        ; $5a86: $03
    ld h, h                                       ; $5a87: $64
    ld h, l                                       ; $5a88: $65
    ld d, c                                       ; $5a89: $51
    ld d, d                                       ; $5a8a: $52
    ld d, h                                       ; $5a8b: $54
    ld d, l                                       ; $5a8c: $55
    ld l, h                                       ; $5a8d: $6c
    ld d, a                                       ; $5a8e: $57
    ld e, b                                       ; $5a8f: $58
    ld e, c                                       ; $5a90: $59
    ld e, d                                       ; $5a91: $5a
    ld e, e                                       ; $5a92: $5b
    ld c, e                                       ; $5a93: $4b
    ld c, h                                       ; $5a94: $4c
    ld h, c                                       ; $5a95: $61
    ld h, d                                       ; $5a96: $62
    inc bc                                        ; $5a97: $03
    inc bc                                        ; $5a98: $03
    inc bc                                        ; $5a99: $03
    inc bc                                        ; $5a9a: $03
    inc bc                                        ; $5a9b: $03
    inc bc                                        ; $5a9c: $03
    inc bc                                        ; $5a9d: $03
    inc bc                                        ; $5a9e: $03
    inc bc                                        ; $5a9f: $03
    inc bc                                        ; $5aa0: $03
    inc bc                                        ; $5aa1: $03
    inc bc                                        ; $5aa2: $03
    inc bc                                        ; $5aa3: $03
    inc bc                                        ; $5aa4: $03
    inc bc                                        ; $5aa5: $03
    inc bc                                        ; $5aa6: $03
    ld h, h                                       ; $5aa7: $64
    ld h, l                                       ; $5aa8: $65
    ld d, c                                       ; $5aa9: $51
    ld d, d                                       ; $5aaa: $52
    ld d, h                                       ; $5aab: $54
    ld d, l                                       ; $5aac: $55
    ld l, h                                       ; $5aad: $6c
    ld d, a                                       ; $5aae: $57
    ld e, b                                       ; $5aaf: $58
    ld e, c                                       ; $5ab0: $59
    ld e, d                                       ; $5ab1: $5a
    ld e, e                                       ; $5ab2: $5b
    ld c, e                                       ; $5ab3: $4b
    ld c, h                                       ; $5ab4: $4c
    ld h, c                                       ; $5ab5: $61
    ld d, [hl]                                    ; $5ab6: $56
    inc bc                                        ; $5ab7: $03
    inc bc                                        ; $5ab8: $03
    inc bc                                        ; $5ab9: $03
    inc bc                                        ; $5aba: $03
    inc bc                                        ; $5abb: $03
    inc bc                                        ; $5abc: $03
    inc bc                                        ; $5abd: $03
    inc bc                                        ; $5abe: $03
    inc bc                                        ; $5abf: $03
    inc bc                                        ; $5ac0: $03
    inc bc                                        ; $5ac1: $03
    inc bc                                        ; $5ac2: $03
    inc bc                                        ; $5ac3: $03
    inc bc                                        ; $5ac4: $03
    inc bc                                        ; $5ac5: $03
    inc bc                                        ; $5ac6: $03
    ld hl, sp-$07                                 ; $5ac7: $f8 $f9
    sub d                                         ; $5ac9: $92
    ld d, d                                       ; $5aca: $52
    ld a, [$91fb]                                 ; $5acb: $fa $fb $91
    ld d, a                                       ; $5ace: $57
    pop de                                        ; $5acf: $d1
    pop de                                        ; $5ad0: $d1
    ldh [$90], a                                  ; $5ad1: $e0 $90
    rst $28                                       ; $5ad3: $ef
    db $e4                                        ; $5ad4: $e4
    db $eb                                        ; $5ad5: $eb
    db $e4                                        ; $5ad6: $e4
    ld bc, $4b01                                  ; $5ad7: $01 $01 $4b
    inc bc                                        ; $5ada: $03
    ld bc, $4b01                                  ; $5adb: $01 $01 $4b
    inc bc                                        ; $5ade: $03
    inc bc                                        ; $5adf: $03
    inc bc                                        ; $5ae0: $03
    add d                                         ; $5ae1: $82
    ld l, e                                       ; $5ae2: $6b
    add d                                         ; $5ae3: $82
    add d                                         ; $5ae4: $82
    add d                                         ; $5ae5: $82
    and d                                         ; $5ae6: $a2
    ld h, h                                       ; $5ae7: $64
    ld h, l                                       ; $5ae8: $65
    ld d, c                                       ; $5ae9: $51
    ld d, d                                       ; $5aea: $52
    ld d, h                                       ; $5aeb: $54
    ld d, l                                       ; $5aec: $55
    ld l, h                                       ; $5aed: $6c
    ld d, a                                       ; $5aee: $57
    ld e, b                                       ; $5aef: $58
    ld e, c                                       ; $5af0: $59
    ld e, d                                       ; $5af1: $5a
    ld e, e                                       ; $5af2: $5b
    ld l, l                                       ; $5af3: $6d
    ld c, h                                       ; $5af4: $4c
    ld h, c                                       ; $5af5: $61
    ld h, d                                       ; $5af6: $62
    inc bc                                        ; $5af7: $03
    inc bc                                        ; $5af8: $03
    inc bc                                        ; $5af9: $03
    inc bc                                        ; $5afa: $03
    inc bc                                        ; $5afb: $03
    inc bc                                        ; $5afc: $03
    inc bc                                        ; $5afd: $03
    inc bc                                        ; $5afe: $03
    inc bc                                        ; $5aff: $03
    inc bc                                        ; $5b00: $03
    inc bc                                        ; $5b01: $03
    inc bc                                        ; $5b02: $03
    ld h, e                                       ; $5b03: $63
    inc bc                                        ; $5b04: $03
    inc bc                                        ; $5b05: $03
    inc bc                                        ; $5b06: $03
    ld h, h                                       ; $5b07: $64
    ld h, l                                       ; $5b08: $65
    ld d, c                                       ; $5b09: $51
    ld d, d                                       ; $5b0a: $52
    ld d, h                                       ; $5b0b: $54
    ld d, l                                       ; $5b0c: $55
    ld c, a                                       ; $5b0d: $4f
    ld d, b                                       ; $5b0e: $50
    ld e, b                                       ; $5b0f: $58
    ld e, c                                       ; $5b10: $59
    ld e, d                                       ; $5b11: $5a
    ld e, e                                       ; $5b12: $5b
    ld c, e                                       ; $5b13: $4b
    ld c, h                                       ; $5b14: $4c
    ld h, c                                       ; $5b15: $61
    ld h, d                                       ; $5b16: $62
    inc bc                                        ; $5b17: $03
    inc bc                                        ; $5b18: $03
    inc bc                                        ; $5b19: $03
    inc bc                                        ; $5b1a: $03
    inc bc                                        ; $5b1b: $03
    inc bc                                        ; $5b1c: $03
    inc bc                                        ; $5b1d: $03
    inc bc                                        ; $5b1e: $03
    inc bc                                        ; $5b1f: $03
    inc bc                                        ; $5b20: $03
    inc bc                                        ; $5b21: $03
    inc bc                                        ; $5b22: $03
    inc bc                                        ; $5b23: $03
    inc bc                                        ; $5b24: $03
    inc bc                                        ; $5b25: $03
    inc bc                                        ; $5b26: $03
    ld h, h                                       ; $5b27: $64
    ld h, l                                       ; $5b28: $65
    ld d, c                                       ; $5b29: $51
    ld d, d                                       ; $5b2a: $52
    ld d, h                                       ; $5b2b: $54
    ld d, l                                       ; $5b2c: $55
    ld l, h                                       ; $5b2d: $6c
    ld d, a                                       ; $5b2e: $57
    ld c, a                                       ; $5b2f: $4f
    ld d, b                                       ; $5b30: $50
    ld e, d                                       ; $5b31: $5a
    ld e, e                                       ; $5b32: $5b
    ld c, e                                       ; $5b33: $4b
    ld c, h                                       ; $5b34: $4c
    ld h, c                                       ; $5b35: $61
    ld h, d                                       ; $5b36: $62
    inc bc                                        ; $5b37: $03
    inc bc                                        ; $5b38: $03
    inc bc                                        ; $5b39: $03
    inc bc                                        ; $5b3a: $03
    inc bc                                        ; $5b3b: $03
    inc bc                                        ; $5b3c: $03
    inc bc                                        ; $5b3d: $03
    inc bc                                        ; $5b3e: $03
    inc bc                                        ; $5b3f: $03
    inc bc                                        ; $5b40: $03
    inc bc                                        ; $5b41: $03
    inc bc                                        ; $5b42: $03
    inc bc                                        ; $5b43: $03
    inc bc                                        ; $5b44: $03
    inc bc                                        ; $5b45: $03
    inc bc                                        ; $5b46: $03
    ld h, h                                       ; $5b47: $64
    ld h, l                                       ; $5b48: $65
    ld d, c                                       ; $5b49: $51
    sub b                                         ; $5b4a: $90
    ld d, h                                       ; $5b4b: $54
    ld d, l                                       ; $5b4c: $55
    ld l, h                                       ; $5b4d: $6c
    ld d, a                                       ; $5b4e: $57
    ld e, b                                       ; $5b4f: $58
    ld e, c                                       ; $5b50: $59
    ld e, d                                       ; $5b51: $5a
    ld e, e                                       ; $5b52: $5b
    ld c, e                                       ; $5b53: $4b
    ld c, h                                       ; $5b54: $4c
    ld e, a                                       ; $5b55: $5f
    ld h, b                                       ; $5b56: $60
    inc bc                                        ; $5b57: $03
    inc bc                                        ; $5b58: $03
    inc bc                                        ; $5b59: $03
    dec bc                                        ; $5b5a: $0b
    inc bc                                        ; $5b5b: $03
    inc bc                                        ; $5b5c: $03
    inc bc                                        ; $5b5d: $03
    inc bc                                        ; $5b5e: $03
    inc bc                                        ; $5b5f: $03
    inc bc                                        ; $5b60: $03
    inc bc                                        ; $5b61: $03
    inc bc                                        ; $5b62: $03
    inc bc                                        ; $5b63: $03
    inc bc                                        ; $5b64: $03
    inc bc                                        ; $5b65: $03
    inc bc                                        ; $5b66: $03
    pop de                                        ; $5b67: $d1
    dec bc                                        ; $5b68: $0b
    call c, Call_08b_6ddd                         ; $5b69: $dc $dd $6d
    pop de                                        ; $5b6c: $d1
    pop hl                                        ; $5b6d: $e1
    ld [c], a                                     ; $5b6e: $e2
    ld e, b                                       ; $5b6f: $58
    sub b                                         ; $5b70: $90
    push hl                                       ; $5b71: $e5
    and $4b                                       ; $5b72: $e6 $4b
    ld c, h                                       ; $5b74: $4c
    sub e                                         ; $5b75: $93
    pop de                                        ; $5b76: $d1
    inc bc                                        ; $5b77: $03
    ld bc, $8282                                  ; $5b78: $01 $82 $82
    inc bc                                        ; $5b7b: $03
    inc bc                                        ; $5b7c: $03
    add d                                         ; $5b7d: $82
    add d                                         ; $5b7e: $82
    inc bc                                        ; $5b7f: $03
    dec bc                                        ; $5b80: $0b
    add d                                         ; $5b81: $82
    add d                                         ; $5b82: $82
    inc bc                                        ; $5b83: $03
    inc bc                                        ; $5b84: $03
    dec bc                                        ; $5b85: $0b
    inc bc                                        ; $5b86: $03
    sbc $ee                                       ; $5b87: $de $ee
    rst $28                                       ; $5b89: $ef
    pop de                                        ; $5b8a: $d1
    rst $20                                       ; $5b8b: $e7
    ld a, [c]                                     ; $5b8c: $f2
    push af                                       ; $5b8d: $f5
    pop de                                        ; $5b8e: $d1
    jp hl                                         ; $5b8f: $e9


    db $f4                                        ; $5b90: $f4
    or $d1                                        ; $5b91: $f6 $d1
    rst $30                                       ; $5b93: $f7
    pop de                                        ; $5b94: $d1
    ldh [$d1], a                                  ; $5b95: $e0 $d1
    add d                                         ; $5b97: $82
    add d                                         ; $5b98: $82
    add d                                         ; $5b99: $82
    inc bc                                        ; $5b9a: $03
    add d                                         ; $5b9b: $82
    add d                                         ; $5b9c: $82
    add d                                         ; $5b9d: $82
    inc bc                                        ; $5b9e: $03
    add d                                         ; $5b9f: $82
    add d                                         ; $5ba0: $82
    add d                                         ; $5ba1: $82
    inc bc                                        ; $5ba2: $03
    inc bc                                        ; $5ba3: $03
    inc bc                                        ; $5ba4: $03
    add d                                         ; $5ba5: $82
    inc bc                                        ; $5ba6: $03
    ld h, h                                       ; $5ba7: $64
    ld h, l                                       ; $5ba8: $65
    ld d, c                                       ; $5ba9: $51
    ld d, d                                       ; $5baa: $52
    ld d, h                                       ; $5bab: $54
    ld d, l                                       ; $5bac: $55
    ld l, h                                       ; $5bad: $6c
    ld d, a                                       ; $5bae: $57
    ld e, b                                       ; $5baf: $58
    ld e, c                                       ; $5bb0: $59
    ld d, [hl]                                    ; $5bb1: $56
    ld e, e                                       ; $5bb2: $5b
    ld c, e                                       ; $5bb3: $4b
    ld c, h                                       ; $5bb4: $4c
    ld h, c                                       ; $5bb5: $61
    ld h, d                                       ; $5bb6: $62
    inc bc                                        ; $5bb7: $03
    inc bc                                        ; $5bb8: $03
    inc bc                                        ; $5bb9: $03
    inc bc                                        ; $5bba: $03
    inc bc                                        ; $5bbb: $03
    inc bc                                        ; $5bbc: $03
    inc bc                                        ; $5bbd: $03
    inc bc                                        ; $5bbe: $03
    inc bc                                        ; $5bbf: $03
    inc bc                                        ; $5bc0: $03
    inc bc                                        ; $5bc1: $03
    inc bc                                        ; $5bc2: $03
    inc bc                                        ; $5bc3: $03
    inc bc                                        ; $5bc4: $03
    inc bc                                        ; $5bc5: $03
    inc bc                                        ; $5bc6: $03
    ld h, h                                       ; $5bc7: $64
    ld h, l                                       ; $5bc8: $65
    sub h                                         ; $5bc9: $94
    pop de                                        ; $5bca: $d1
    ld d, h                                       ; $5bcb: $54
    ld d, l                                       ; $5bcc: $55
    ld l, h                                       ; $5bcd: $6c
    sub c                                         ; $5bce: $91
    ld e, b                                       ; $5bcf: $58
    ld e, c                                       ; $5bd0: $59
    ld e, d                                       ; $5bd1: $5a
    sub d                                         ; $5bd2: $92
    ld c, e                                       ; $5bd3: $4b
    ld c, h                                       ; $5bd4: $4c
    ld h, c                                       ; $5bd5: $61
    ld h, d                                       ; $5bd6: $62
    inc bc                                        ; $5bd7: $03
    inc bc                                        ; $5bd8: $03
    dec bc                                        ; $5bd9: $0b
    inc bc                                        ; $5bda: $03
    inc bc                                        ; $5bdb: $03
    inc bc                                        ; $5bdc: $03
    inc bc                                        ; $5bdd: $03
    dec hl                                        ; $5bde: $2b
    inc bc                                        ; $5bdf: $03
    inc bc                                        ; $5be0: $03
    inc bc                                        ; $5be1: $03
    dec hl                                        ; $5be2: $2b
    inc bc                                        ; $5be3: $03
    inc bc                                        ; $5be4: $03
    inc bc                                        ; $5be5: $03
    inc bc                                        ; $5be6: $03
    pop de                                        ; $5be7: $d1
    db $e4                                        ; $5be8: $e4
    db $eb                                        ; $5be9: $eb
    db $e4                                        ; $5bea: $e4
    dec bc                                        ; $5beb: $0b
    jp nc, $d4d3                                  ; $5bec: $d2 $d3 $d4

    pop de                                        ; $5bef: $d1
    push de                                       ; $5bf0: $d5
    sub $d7                                       ; $5bf1: $d6 $d7
    ret c                                         ; $5bf3: $d8

    reti                                          ; $5bf4: $d9


    jp c, Jump_000_03db                           ; $5bf5: $da $db $03

    add d                                         ; $5bf8: $82
    add d                                         ; $5bf9: $82
    and d                                         ; $5bfa: $a2
    ld bc, $8282                                  ; $5bfb: $01 $82 $82
    add d                                         ; $5bfe: $82
    inc bc                                        ; $5bff: $03
    add d                                         ; $5c00: $82
    add d                                         ; $5c01: $82
    add d                                         ; $5c02: $82
    add d                                         ; $5c03: $82
    add d                                         ; $5c04: $82
    add d                                         ; $5c05: $82
    add d                                         ; $5c06: $82
    ld h, h                                       ; $5c07: $64
    ld h, l                                       ; $5c08: $65
    ld d, c                                       ; $5c09: $51
    ld d, d                                       ; $5c0a: $52
    ld d, h                                       ; $5c0b: $54
    ld d, l                                       ; $5c0c: $55
    ld l, h                                       ; $5c0d: $6c
    ld d, a                                       ; $5c0e: $57
    ld e, b                                       ; $5c0f: $58
    ld e, c                                       ; $5c10: $59
    ld e, d                                       ; $5c11: $5a
    ld e, e                                       ; $5c12: $5b
    ld c, e                                       ; $5c13: $4b
    ld c, h                                       ; $5c14: $4c
    ld h, c                                       ; $5c15: $61
    ld e, a                                       ; $5c16: $5f
    inc bc                                        ; $5c17: $03
    inc bc                                        ; $5c18: $03
    inc bc                                        ; $5c19: $03
    inc bc                                        ; $5c1a: $03
    inc bc                                        ; $5c1b: $03
    inc bc                                        ; $5c1c: $03
    inc bc                                        ; $5c1d: $03
    inc bc                                        ; $5c1e: $03
    inc bc                                        ; $5c1f: $03
    inc bc                                        ; $5c20: $03
    inc bc                                        ; $5c21: $03
    inc bc                                        ; $5c22: $03
    inc bc                                        ; $5c23: $03
    inc bc                                        ; $5c24: $03
    inc bc                                        ; $5c25: $03
    inc bc                                        ; $5c26: $03
    ld h, h                                       ; $5c27: $64
    ld h, l                                       ; $5c28: $65
    ld d, c                                       ; $5c29: $51
    ld d, d                                       ; $5c2a: $52
    ld d, h                                       ; $5c2b: $54
    ld d, l                                       ; $5c2c: $55
    ld l, h                                       ; $5c2d: $6c
    ld d, a                                       ; $5c2e: $57
    ld e, b                                       ; $5c2f: $58
    ld e, c                                       ; $5c30: $59
    ld e, d                                       ; $5c31: $5a
    ld e, e                                       ; $5c32: $5b
    ld h, b                                       ; $5c33: $60
    ld c, h                                       ; $5c34: $4c
    ld h, c                                       ; $5c35: $61
    ld h, d                                       ; $5c36: $62
    inc bc                                        ; $5c37: $03
    inc bc                                        ; $5c38: $03
    inc bc                                        ; $5c39: $03
    inc bc                                        ; $5c3a: $03
    inc bc                                        ; $5c3b: $03
    inc bc                                        ; $5c3c: $03
    inc bc                                        ; $5c3d: $03
    inc bc                                        ; $5c3e: $03
    inc bc                                        ; $5c3f: $03
    inc bc                                        ; $5c40: $03
    inc bc                                        ; $5c41: $03
    inc bc                                        ; $5c42: $03
    inc bc                                        ; $5c43: $03
    inc bc                                        ; $5c44: $03
    inc bc                                        ; $5c45: $03
    inc bc                                        ; $5c46: $03
    ld h, h                                       ; $5c47: $64
    ld h, l                                       ; $5c48: $65
    ld d, c                                       ; $5c49: $51
    ld d, d                                       ; $5c4a: $52
    ld d, h                                       ; $5c4b: $54
    ld d, l                                       ; $5c4c: $55
    ld l, h                                       ; $5c4d: $6c
    ld d, a                                       ; $5c4e: $57
    ld c, a                                       ; $5c4f: $4f
    ld d, b                                       ; $5c50: $50
    ld e, d                                       ; $5c51: $5a
    ld e, e                                       ; $5c52: $5b
    ld c, e                                       ; $5c53: $4b
    ld c, h                                       ; $5c54: $4c
    ld h, c                                       ; $5c55: $61
    sub h                                         ; $5c56: $94
    inc bc                                        ; $5c57: $03
    inc bc                                        ; $5c58: $03
    inc bc                                        ; $5c59: $03
    inc bc                                        ; $5c5a: $03
    inc bc                                        ; $5c5b: $03
    inc bc                                        ; $5c5c: $03
    inc bc                                        ; $5c5d: $03
    inc bc                                        ; $5c5e: $03
    inc bc                                        ; $5c5f: $03
    inc bc                                        ; $5c60: $03
    inc bc                                        ; $5c61: $03
    inc bc                                        ; $5c62: $03
    inc bc                                        ; $5c63: $03
    inc bc                                        ; $5c64: $03
    inc bc                                        ; $5c65: $03
    ld c, e                                       ; $5c66: $4b
    call c, $dedd                                 ; $5c67: $dc $dd $de
    rst $18                                       ; $5c6a: $df
    pop hl                                        ; $5c6b: $e1
    ld [c], a                                     ; $5c6c: $e2
    rst $20                                       ; $5c6d: $e7
    add sp, -$1b                                  ; $5c6e: $e8 $e5
    and $e9                                       ; $5c70: $e6 $e9
    ld [$d1d1], a                                 ; $5c72: $ea $d1 $d1
    db $ec                                        ; $5c75: $ec
    reti                                          ; $5c76: $d9


    add d                                         ; $5c77: $82
    add d                                         ; $5c78: $82
    add d                                         ; $5c79: $82
    add d                                         ; $5c7a: $82
    add d                                         ; $5c7b: $82
    add d                                         ; $5c7c: $82
    add d                                         ; $5c7d: $82
    add d                                         ; $5c7e: $82
    add d                                         ; $5c7f: $82
    add d                                         ; $5c80: $82
    add d                                         ; $5c81: $82
    add d                                         ; $5c82: $82
    inc bc                                        ; $5c83: $03
    inc bc                                        ; $5c84: $03
    inc bc                                        ; $5c85: $03
    add d                                         ; $5c86: $82
    ld h, h                                       ; $5c87: $64
    ld h, l                                       ; $5c88: $65
    ld d, c                                       ; $5c89: $51
    ld d, d                                       ; $5c8a: $52
    ld d, h                                       ; $5c8b: $54
    ld d, l                                       ; $5c8c: $55
    ld l, h                                       ; $5c8d: $6c
    ld d, a                                       ; $5c8e: $57
    ld e, b                                       ; $5c8f: $58
    ld e, c                                       ; $5c90: $59
    ld e, d                                       ; $5c91: $5a
    ld e, e                                       ; $5c92: $5b
    ld c, e                                       ; $5c93: $4b
    ld c, h                                       ; $5c94: $4c
    ld h, c                                       ; $5c95: $61
    ld c, a                                       ; $5c96: $4f
    inc bc                                        ; $5c97: $03
    inc bc                                        ; $5c98: $03
    inc bc                                        ; $5c99: $03
    inc bc                                        ; $5c9a: $03
    inc bc                                        ; $5c9b: $03
    inc bc                                        ; $5c9c: $03
    inc bc                                        ; $5c9d: $03
    inc bc                                        ; $5c9e: $03
    inc bc                                        ; $5c9f: $03
    inc bc                                        ; $5ca0: $03
    inc bc                                        ; $5ca1: $03
    inc bc                                        ; $5ca2: $03
    inc bc                                        ; $5ca3: $03
    inc bc                                        ; $5ca4: $03
    inc bc                                        ; $5ca5: $03
    inc bc                                        ; $5ca6: $03
    ld h, h                                       ; $5ca7: $64
    ld h, l                                       ; $5ca8: $65
    ld d, c                                       ; $5ca9: $51
    ld d, d                                       ; $5caa: $52
    ld d, h                                       ; $5cab: $54
    ld d, l                                       ; $5cac: $55
    ld l, h                                       ; $5cad: $6c
    ld d, a                                       ; $5cae: $57
    ld e, b                                       ; $5caf: $58
    ld e, c                                       ; $5cb0: $59
    ld e, d                                       ; $5cb1: $5a
    ld e, e                                       ; $5cb2: $5b
    ld d, b                                       ; $5cb3: $50
    ld c, h                                       ; $5cb4: $4c
    ld h, c                                       ; $5cb5: $61
    ld h, d                                       ; $5cb6: $62
    inc bc                                        ; $5cb7: $03
    inc bc                                        ; $5cb8: $03
    inc bc                                        ; $5cb9: $03
    inc bc                                        ; $5cba: $03
    inc bc                                        ; $5cbb: $03
    inc bc                                        ; $5cbc: $03
    inc bc                                        ; $5cbd: $03
    inc bc                                        ; $5cbe: $03
    inc bc                                        ; $5cbf: $03
    inc bc                                        ; $5cc0: $03
    inc bc                                        ; $5cc1: $03
    inc bc                                        ; $5cc2: $03
    inc bc                                        ; $5cc3: $03
    inc bc                                        ; $5cc4: $03
    inc bc                                        ; $5cc5: $03
    inc bc                                        ; $5cc6: $03
    ld h, h                                       ; $5cc7: $64
    ld h, l                                       ; $5cc8: $65
    ld d, c                                       ; $5cc9: $51
    sub e                                         ; $5cca: $93
    ld d, h                                       ; $5ccb: $54
    ld d, l                                       ; $5ccc: $55
    sub h                                         ; $5ccd: $94
    pop de                                        ; $5cce: $d1
    ld e, b                                       ; $5ccf: $58
    ld e, c                                       ; $5cd0: $59
    sub e                                         ; $5cd1: $93
    pop de                                        ; $5cd2: $d1
    ld c, e                                       ; $5cd3: $4b
    ld l, l                                       ; $5cd4: $6d
    ld hl, sp-$07                                 ; $5cd5: $f8 $f9
    inc bc                                        ; $5cd7: $03
    inc bc                                        ; $5cd8: $03
    inc bc                                        ; $5cd9: $03
    ld c, e                                       ; $5cda: $4b
    inc bc                                        ; $5cdb: $03
    inc bc                                        ; $5cdc: $03
    ld c, e                                       ; $5cdd: $4b
    inc bc                                        ; $5cde: $03
    inc bc                                        ; $5cdf: $03
    inc bc                                        ; $5ce0: $03
    ld c, e                                       ; $5ce1: $4b
    inc bc                                        ; $5ce2: $03
    inc bc                                        ; $5ce3: $03
    ld b, e                                       ; $5ce4: $43
    ld bc, $6301                                  ; $5ce5: $01 $01 $63
    dec bc                                        ; $5ce8: $0b
    db $ed                                        ; $5ce9: $ed
    db $dd                                        ; $5cea: $dd
    pop de                                        ; $5ceb: $d1
    pop de                                        ; $5cec: $d1
    ldh a, [$f1]                                  ; $5ced: $f0 $f1
    dec bc                                        ; $5cef: $0b
    jp nc, $f3d3                                  ; $5cf0: $d2 $d3 $f3

    pop de                                        ; $5cf3: $d1
    push de                                       ; $5cf4: $d5
    sub $d7                                       ; $5cf5: $d6 $d7
    rlca                                          ; $5cf7: $07
    ld bc, $8282                                  ; $5cf8: $01 $82 $82
    inc bc                                        ; $5cfb: $03
    inc bc                                        ; $5cfc: $03
    add d                                         ; $5cfd: $82
    add d                                         ; $5cfe: $82
    ld bc, $8282                                  ; $5cff: $01 $82 $82
    add d                                         ; $5d02: $82
    inc bc                                        ; $5d03: $03
    add d                                         ; $5d04: $82
    add d                                         ; $5d05: $82
    add d                                         ; $5d06: $82
    pop de                                        ; $5d07: $d1
    pop de                                        ; $5d08: $d1
    pop de                                        ; $5d09: $d1
    add d                                         ; $5d0a: $82
    pop de                                        ; $5d0b: $d1
    pop de                                        ; $5d0c: $d1
    pop de                                        ; $5d0d: $d1
    add h                                         ; $5d0e: $84
    pop de                                        ; $5d0f: $d1
    pop de                                        ; $5d10: $d1
    pop de                                        ; $5d11: $d1
    pop de                                        ; $5d12: $d1
    pop de                                        ; $5d13: $d1
    dec bc                                        ; $5d14: $0b
    pop de                                        ; $5d15: $d1
    pop de                                        ; $5d16: $d1
    inc bc                                        ; $5d17: $03
    inc bc                                        ; $5d18: $03
    inc bc                                        ; $5d19: $03
    adc d                                         ; $5d1a: $8a
    inc bc                                        ; $5d1b: $03
    inc bc                                        ; $5d1c: $03
    inc bc                                        ; $5d1d: $03
    adc d                                         ; $5d1e: $8a
    inc bc                                        ; $5d1f: $03
    inc bc                                        ; $5d20: $03
    inc bc                                        ; $5d21: $03
    inc bc                                        ; $5d22: $03
    inc bc                                        ; $5d23: $03
    ld bc, $0303                                  ; $5d24: $01 $03 $03
    add e                                         ; $5d27: $83
    add [hl]                                      ; $5d28: $86
    add a                                         ; $5d29: $87
    adc b                                         ; $5d2a: $88
    add l                                         ; $5d2b: $85
    adc d                                         ; $5d2c: $8a
    adc e                                         ; $5d2d: $8b
    adc h                                         ; $5d2e: $8c
    pop de                                        ; $5d2f: $d1
    adc [hl]                                      ; $5d30: $8e
    adc a                                         ; $5d31: $8f
    ld bc, $95d1                                  ; $5d32: $01 $d1 $95
    sub [hl]                                      ; $5d35: $96
    db $fd                                        ; $5d36: $fd
    adc d                                         ; $5d37: $8a
    adc d                                         ; $5d38: $8a
    adc d                                         ; $5d39: $8a
    adc d                                         ; $5d3a: $8a
    adc d                                         ; $5d3b: $8a
    adc d                                         ; $5d3c: $8a
    adc d                                         ; $5d3d: $8a
    adc d                                         ; $5d3e: $8a
    inc bc                                        ; $5d3f: $03
    dec bc                                        ; $5d40: $0b
    dec bc                                        ; $5d41: $0b
    ld bc, $0b03                                  ; $5d42: $01 $03 $0b
    dec bc                                        ; $5d45: $0b
    ld bc, $d189                                  ; $5d46: $01 $89 $d1
    pop de                                        ; $5d49: $d1
    pop de                                        ; $5d4a: $d1
    adc l                                         ; $5d4b: $8d
    db $fd                                        ; $5d4c: $fd
    pop de                                        ; $5d4d: $d1
    pop de                                        ; $5d4e: $d1
    ld b, $ff                                     ; $5d4f: $06 $ff
    db $fc                                        ; $5d51: $fc
    pop de                                        ; $5d52: $d1
    nop                                           ; $5d53: $00
    ld bc, $ff06                                  ; $5d54: $01 $06 $ff
    adc d                                         ; $5d57: $8a
    inc bc                                        ; $5d58: $03
    inc bc                                        ; $5d59: $03
    inc bc                                        ; $5d5a: $03
    adc d                                         ; $5d5b: $8a
    ld bc, $0303                                  ; $5d5c: $01 $03 $03
    ld bc, $0101                                  ; $5d5f: $01 $01 $01
    inc bc                                        ; $5d62: $03
    ld bc, $0101                                  ; $5d63: $01 $01 $01
    ld bc, $d1d1                                  ; $5d66: $01 $d1 $d1
    ld de, $d1d1                                  ; $5d69: $11 $d1 $d1
    pop de                                        ; $5d6c: $d1
    pop de                                        ; $5d6d: $d1
    pop de                                        ; $5d6e: $d1
    add hl, bc                                    ; $5d6f: $09
    ld a, [bc]                                    ; $5d70: $0a
    pop de                                        ; $5d71: $d1
    pop de                                        ; $5d72: $d1
    inc bc                                        ; $5d73: $03
    db $fd                                        ; $5d74: $fd
    rlca                                          ; $5d75: $07
    dec b                                         ; $5d76: $05
    inc bc                                        ; $5d77: $03
    inc bc                                        ; $5d78: $03
    ld bc, $0303                                  ; $5d79: $01 $03 $03
    inc bc                                        ; $5d7c: $03
    inc bc                                        ; $5d7d: $03
    inc bc                                        ; $5d7e: $03
    ld bc, $0301                                  ; $5d7f: $01 $01 $03
    inc bc                                        ; $5d82: $03
    ld bc, $0101                                  ; $5d83: $01 $01 $01
    ld bc, $d1d1                                  ; $5d86: $01 $d1 $d1
    pop de                                        ; $5d89: $d1
    pop de                                        ; $5d8a: $d1
    pop de                                        ; $5d8b: $d1
    pop de                                        ; $5d8c: $d1
    pop de                                        ; $5d8d: $d1
    ld hl, sp-$2f                                 ; $5d8e: $f8 $d1
    pop de                                        ; $5d90: $d1
    pop de                                        ; $5d91: $d1
    ld a, [$d1e0]                                 ; $5d92: $fa $e0 $d1
    pop de                                        ; $5d95: $d1
    pop de                                        ; $5d96: $d1
    inc bc                                        ; $5d97: $03
    inc bc                                        ; $5d98: $03
    inc bc                                        ; $5d99: $03
    inc bc                                        ; $5d9a: $03
    inc bc                                        ; $5d9b: $03
    inc bc                                        ; $5d9c: $03
    inc bc                                        ; $5d9d: $03
    ld bc, $0303                                  ; $5d9e: $01 $03 $03
    inc bc                                        ; $5da1: $03
    ld bc, $0382                                  ; $5da2: $01 $82 $03
    inc bc                                        ; $5da5: $03
    inc bc                                        ; $5da6: $03
    pop de                                        ; $5da7: $d1
    pop de                                        ; $5da8: $d1
    pop de                                        ; $5da9: $d1
    rst $38                                       ; $5daa: $ff
    ld sp, hl                                     ; $5dab: $f9
    pop de                                        ; $5dac: $d1
    pop de                                        ; $5dad: $d1
    pop de                                        ; $5dae: $d1
    ei                                            ; $5daf: $fb
    pop de                                        ; $5db0: $d1
    pop de                                        ; $5db1: $d1
    pop de                                        ; $5db2: $d1
    pop de                                        ; $5db3: $d1
    pop de                                        ; $5db4: $d1
    pop de                                        ; $5db5: $d1
    pop de                                        ; $5db6: $d1
    inc bc                                        ; $5db7: $03
    inc bc                                        ; $5db8: $03
    inc bc                                        ; $5db9: $03
    ld bc, $0301                                  ; $5dba: $01 $01 $03
    inc bc                                        ; $5dbd: $03
    inc bc                                        ; $5dbe: $03
    ld bc, $0303                                  ; $5dbf: $01 $03 $03
    inc bc                                        ; $5dc2: $03
    inc bc                                        ; $5dc3: $03
    inc bc                                        ; $5dc4: $03
    inc bc                                        ; $5dc5: $03
    inc bc                                        ; $5dc6: $03
    db $fc                                        ; $5dc7: $fc
    inc b                                         ; $5dc8: $04
    nop                                           ; $5dc9: $00
    ld bc, $ffd1                                  ; $5dca: $01 $d1 $ff
    inc bc                                        ; $5dcd: $03
    db $fd                                        ; $5dce: $fd
    pop de                                        ; $5dcf: $d1
    pop de                                        ; $5dd0: $d1
    cp $ff                                        ; $5dd1: $fe $ff
    pop de                                        ; $5dd3: $d1
    add hl, bc                                    ; $5dd4: $09
    ld a, [bc]                                    ; $5dd5: $0a
    pop de                                        ; $5dd6: $d1
    ld bc, $0101                                  ; $5dd7: $01 $01 $01
    ld bc, $0103                                  ; $5dda: $01 $03 $01
    ld bc, $0301                                  ; $5ddd: $01 $01 $03
    inc bc                                        ; $5de0: $03
    ld bc, $0301                                  ; $5de1: $01 $01 $03
    ld bc, $0301                                  ; $5de4: $01 $01 $03
    ld b, $02                                     ; $5de7: $06 $02
    inc bc                                        ; $5de9: $03
    inc b                                         ; $5dea: $04
    nop                                           ; $5deb: $00
    ld bc, $0206                                  ; $5dec: $01 $06 $02
    db $fc                                        ; $5def: $fc
    db $fd                                        ; $5df0: $fd
    rlca                                          ; $5df1: $07
    dec b                                         ; $5df2: $05
    pop de                                        ; $5df3: $d1
    pop de                                        ; $5df4: $d1
    dec bc                                        ; $5df5: $0b
    pop de                                        ; $5df6: $d1
    ld bc, $0101                                  ; $5df7: $01 $01 $01
    ld bc, $0101                                  ; $5dfa: $01 $01 $01
    ld bc, $0101                                  ; $5dfd: $01 $01 $01
    ld bc, $0101                                  ; $5e00: $01 $01 $01
    inc bc                                        ; $5e03: $03
    inc bc                                        ; $5e04: $03
    ld bc, $e303                                  ; $5e05: $01 $03 $e3
    db $e4                                        ; $5e08: $e4
    pop de                                        ; $5e09: $d1
    pop de                                        ; $5e0a: $d1
    db $d3                                        ; $5e0b: $d3
    call nc, $d1d1                                ; $5e0c: $d4 $d1 $d1
    sub $d7                                       ; $5e0f: $d6 $d7
    pop de                                        ; $5e11: $d1
    pop de                                        ; $5e12: $d1
    jp c, $d1db                                   ; $5e13: $da $db $d1

    pop de                                        ; $5e16: $d1
    add d                                         ; $5e17: $82
    and d                                         ; $5e18: $a2
    inc bc                                        ; $5e19: $03
    inc bc                                        ; $5e1a: $03
    add d                                         ; $5e1b: $82
    add d                                         ; $5e1c: $82
    inc bc                                        ; $5e1d: $03
    inc bc                                        ; $5e1e: $03
    add d                                         ; $5e1f: $82
    add d                                         ; $5e20: $82
    inc bc                                        ; $5e21: $03
    inc bc                                        ; $5e22: $03
    add d                                         ; $5e23: $82
    add d                                         ; $5e24: $82
    inc bc                                        ; $5e25: $03
    inc bc                                        ; $5e26: $03
    pop de                                        ; $5e27: $d1
    pop de                                        ; $5e28: $d1
    pop de                                        ; $5e29: $d1
    dec c                                         ; $5e2a: $0d
    pop de                                        ; $5e2b: $d1
    ld [$100c], sp                                ; $5e2c: $08 $0c $10
    ld de, $150d                                  ; $5e2f: $11 $0d $15
    rrca                                          ; $5e32: $0f
    pop de                                        ; $5e33: $d1
    db $10                                        ; $5e34: $10
    ld de, $0314                                  ; $5e35: $11 $14 $03
    inc bc                                        ; $5e38: $03
    inc bc                                        ; $5e39: $03
    ld bc, $0103                                  ; $5e3a: $01 $03 $01
    ld bc, $0101                                  ; $5e3d: $01 $01 $01
    ld bc, $0101                                  ; $5e40: $01 $01 $01
    inc bc                                        ; $5e43: $03
    ld bc, $0101                                  ; $5e44: $01 $01 $01
    ld c, $08                                     ; $5e47: $0e $08
    inc c                                         ; $5e49: $0c
    db $10                                        ; $5e4a: $10
    inc de                                        ; $5e4b: $13
    inc d                                         ; $5e4c: $14
    dec d                                         ; $5e4d: $15
    rrca                                          ; $5e4e: $0f
    ld d, $12                                     ; $5e4f: $16 $12
    inc de                                        ; $5e51: $13
    inc d                                         ; $5e52: $14
    dec d                                         ; $5e53: $15
    ld [$1016], sp                                ; $5e54: $08 $16 $10
    ld bc, $0101                                  ; $5e57: $01 $01 $01
    ld bc, $0101                                  ; $5e5a: $01 $01 $01
    ld bc, $0101                                  ; $5e5d: $01 $01 $01
    ld bc, $0101                                  ; $5e60: $01 $01 $01
    ld bc, $0101                                  ; $5e63: $01 $01 $01
    ld bc, $0d11                                  ; $5e66: $01 $11 $0d
    ld c, $d1                                     ; $5e69: $0e $d1
    ld d, $12                                     ; $5e6b: $16 $12
    ld de, $150d                                  ; $5e6d: $11 $0d $15
    rrca                                          ; $5e70: $0f
    ld d, $12                                     ; $5e71: $16 $12
    inc de                                        ; $5e73: $13
    dec c                                         ; $5e74: $0d
    ld c, $08                                     ; $5e75: $0e $08
    ld bc, $0101                                  ; $5e77: $01 $01 $01
    inc bc                                        ; $5e7a: $03
    ld bc, $0101                                  ; $5e7b: $01 $01 $01
    ld bc, $0101                                  ; $5e7e: $01 $01 $01
    ld bc, $0101                                  ; $5e81: $01 $01 $01
    ld bc, $0101                                  ; $5e84: $01 $01 $01
    pop de                                        ; $5e87: $d1
    pop de                                        ; $5e88: $d1
    inc c                                         ; $5e89: $0c
    db $10                                        ; $5e8a: $10
    pop de                                        ; $5e8b: $d1
    pop de                                        ; $5e8c: $d1
    pop de                                        ; $5e8d: $d1
    ld [$d10b], sp                                ; $5e8e: $08 $0b $d1
    pop de                                        ; $5e91: $d1
    pop de                                        ; $5e92: $d1
    pop de                                        ; $5e93: $d1
    pop de                                        ; $5e94: $d1
    pop de                                        ; $5e95: $d1
    pop de                                        ; $5e96: $d1
    inc bc                                        ; $5e97: $03
    inc bc                                        ; $5e98: $03
    ld bc, $0301                                  ; $5e99: $01 $01 $03
    inc bc                                        ; $5e9c: $03
    inc bc                                        ; $5e9d: $03
    ld bc, $0301                                  ; $5e9e: $01 $01 $03
    inc bc                                        ; $5ea1: $03
    inc bc                                        ; $5ea2: $03
    inc bc                                        ; $5ea3: $03
    inc bc                                        ; $5ea4: $03
    inc bc                                        ; $5ea5: $03
    inc bc                                        ; $5ea6: $03
    ld de, $0e14                                  ; $5ea7: $11 $14 $0e
    ld [$100c], sp                                ; $5eaa: $08 $0c $10
    ld de, $d1d1                                  ; $5ead: $11 $d1 $d1
    pop de                                        ; $5eb0: $d1
    pop de                                        ; $5eb1: $d1
    pop de                                        ; $5eb2: $d1
    pop de                                        ; $5eb3: $d1
    pop de                                        ; $5eb4: $d1
    pop de                                        ; $5eb5: $d1
    rst $38                                       ; $5eb6: $ff
    ld bc, $0101                                  ; $5eb7: $01 $01 $01
    ld bc, $0101                                  ; $5eba: $01 $01 $01
    ld bc, $0303                                  ; $5ebd: $01 $03 $03
    inc bc                                        ; $5ec0: $03
    inc bc                                        ; $5ec1: $03
    inc bc                                        ; $5ec2: $03
    inc bc                                        ; $5ec3: $03
    inc bc                                        ; $5ec4: $03
    inc bc                                        ; $5ec5: $03
    ld bc, $100c                                  ; $5ec6: $01 $0c $10
    pop de                                        ; $5ec9: $d1
    pop de                                        ; $5eca: $d1
    pop de                                        ; $5ecb: $d1
    ld hl, sp-$07                                 ; $5ecc: $f8 $f9
    pop de                                        ; $5ece: $d1
    pop de                                        ; $5ecf: $d1
    ld a, [$fffb]                                 ; $5ed0: $fa $fb $ff
    db $fc                                        ; $5ed3: $fc
    db $fd                                        ; $5ed4: $fd
    nop                                           ; $5ed5: $00
    dec b                                         ; $5ed6: $05
    ld bc, $0301                                  ; $5ed7: $01 $01 $03
    inc bc                                        ; $5eda: $03
    inc bc                                        ; $5edb: $03
    ld bc, $0301                                  ; $5edc: $01 $01 $03
    inc bc                                        ; $5edf: $03
    ld bc, $0101                                  ; $5ee0: $01 $01 $01
    ld bc, $0101                                  ; $5ee3: $01 $01 $01
    ld bc, $f8d1                                  ; $5ee6: $01 $d1 $f8
    ld sp, hl                                     ; $5ee9: $f9
    pop de                                        ; $5eea: $d1
    pop de                                        ; $5eeb: $d1
    ld a, [$d1fb]                                 ; $5eec: $fa $fb $d1
    dec bc                                        ; $5eef: $0b
    pop de                                        ; $5ef0: $d1
    rlca                                          ; $5ef1: $07
    dec b                                         ; $5ef2: $05
    cp $ff                                        ; $5ef3: $fe $ff
    inc bc                                        ; $5ef5: $03
    inc b                                         ; $5ef6: $04
    inc bc                                        ; $5ef7: $03
    ld bc, $0301                                  ; $5ef8: $01 $01 $03
    inc bc                                        ; $5efb: $03
    ld bc, $0301                                  ; $5efc: $01 $01 $03
    ld bc, $0103                                  ; $5eff: $01 $03 $01
    ld bc, $0101                                  ; $5f02: $01 $01 $01
    ld bc, $9501                                  ; $5f05: $01 $01 $95
    sub [hl]                                      ; $5f08: $96
    pop de                                        ; $5f09: $d1
    pop de                                        ; $5f0a: $d1
    pop de                                        ; $5f0b: $d1
    pop de                                        ; $5f0c: $d1
    rlca                                          ; $5f0d: $07
    dec b                                         ; $5f0e: $05
    cp $02                                        ; $5f0f: $fe $02
    inc bc                                        ; $5f11: $03
    inc b                                         ; $5f12: $04
    nop                                           ; $5f13: $00
    ld bc, $ff06                                  ; $5f14: $01 $06 $ff
    dec bc                                        ; $5f17: $0b
    dec bc                                        ; $5f18: $0b
    inc bc                                        ; $5f19: $03
    inc bc                                        ; $5f1a: $03
    inc bc                                        ; $5f1b: $03
    inc bc                                        ; $5f1c: $03
    ld bc, $0101                                  ; $5f1d: $01 $01 $01
    ld bc, $0101                                  ; $5f20: $01 $01 $01
    ld bc, $0101                                  ; $5f23: $01 $01 $01
    ld bc, $19fc                                  ; $5f26: $01 $fc $19
    ld a, [de]                                    ; $5f29: $1a
    dec de                                        ; $5f2a: $1b
    ld b, $1c                                     ; $5f2b: $06 $1c
    dec e                                         ; $5f2d: $1d
    ld e, $00                                     ; $5f2e: $1e $00
    rra                                           ; $5f30: $1f
    jr nz, jr_08b_5f54                            ; $5f31: $20 $21

    db $fc                                        ; $5f33: $fc
    ld [hl+], a                                   ; $5f34: $22
    inc hl                                        ; $5f35: $23
    inc h                                         ; $5f36: $24
    ld bc, $0707                                  ; $5f37: $01 $07 $07
    rlca                                          ; $5f3a: $07
    ld bc, $0707                                  ; $5f3b: $01 $07 $07
    rlca                                          ; $5f3e: $07
    ld bc, $0707                                  ; $5f3f: $01 $07 $07
    rlca                                          ; $5f42: $07
    ld bc, $0707                                  ; $5f43: $01 $07 $07
    rlca                                          ; $5f46: $07
    nop                                           ; $5f47: $00
    ld bc, $0206                                  ; $5f48: $01 $06 $02
    inc bc                                        ; $5f4b: $03
    db $fd                                        ; $5f4c: $fd
    nop                                           ; $5f4d: $00
    dec b                                         ; $5f4e: $05
    cp $ff                                        ; $5f4f: $fe $ff
    pop de                                        ; $5f51: $d1
    pop de                                        ; $5f52: $d1
    pop de                                        ; $5f53: $d1

jr_08b_5f54:
    pop de                                        ; $5f54: $d1
    pop de                                        ; $5f55: $d1
    pop de                                        ; $5f56: $d1
    ld bc, $0101                                  ; $5f57: $01 $01 $01
    ld bc, $0101                                  ; $5f5a: $01 $01 $01
    ld bc, $0101                                  ; $5f5d: $01 $01 $01
    ld bc, $0303                                  ; $5f60: $01 $03 $03
    inc bc                                        ; $5f63: $03
    inc bc                                        ; $5f64: $03
    inc bc                                        ; $5f65: $03
    inc bc                                        ; $5f66: $03
    inc bc                                        ; $5f67: $03
    db $fd                                        ; $5f68: $fd
    rlca                                          ; $5f69: $07
    pop de                                        ; $5f6a: $d1
    cp $d1                                        ; $5f6b: $fe $d1
    pop de                                        ; $5f6d: $d1
    pop de                                        ; $5f6e: $d1
    pop de                                        ; $5f6f: $d1
    pop de                                        ; $5f70: $d1
    pop de                                        ; $5f71: $d1
    pop de                                        ; $5f72: $d1
    pop de                                        ; $5f73: $d1
    pop de                                        ; $5f74: $d1
    pop de                                        ; $5f75: $d1
    pop de                                        ; $5f76: $d1
    ld bc, $0101                                  ; $5f77: $01 $01 $01
    inc bc                                        ; $5f7a: $03
    ld bc, $0303                                  ; $5f7b: $01 $03 $03
    inc bc                                        ; $5f7e: $03
    inc bc                                        ; $5f7f: $03
    inc bc                                        ; $5f80: $03
    inc bc                                        ; $5f81: $03
    inc bc                                        ; $5f82: $03
    inc bc                                        ; $5f83: $03
    inc bc                                        ; $5f84: $03
    inc bc                                        ; $5f85: $03
    inc bc                                        ; $5f86: $03
    dec bc                                        ; $5f87: $0b
    pop de                                        ; $5f88: $d1
    pop de                                        ; $5f89: $d1
    pop de                                        ; $5f8a: $d1
    ld c, $08                                     ; $5f8b: $0e $08
    pop de                                        ; $5f8d: $d1
    add hl, bc                                    ; $5f8e: $09
    ld de, $0e14                                  ; $5f8f: $11 $14 $0e
    ld [$100c], sp                                ; $5f92: $08 $0c $10
    ld de, $01d1                                  ; $5f95: $11 $d1 $01
    inc bc                                        ; $5f98: $03
    inc bc                                        ; $5f99: $03
    inc bc                                        ; $5f9a: $03
    ld bc, $0301                                  ; $5f9b: $01 $01 $03
    ld bc, $0101                                  ; $5f9e: $01 $01 $01
    ld bc, $0101                                  ; $5fa1: $01 $01 $01
    ld bc, $0301                                  ; $5fa4: $01 $01 $03
    pop de                                        ; $5fa7: $d1
    pop de                                        ; $5fa8: $d1
    pop de                                        ; $5fa9: $d1
    pop de                                        ; $5faa: $d1
    ld a, [bc]                                    ; $5fab: $0a
    pop de                                        ; $5fac: $d1
    pop de                                        ; $5fad: $d1
    pop de                                        ; $5fae: $d1
    pop de                                        ; $5faf: $d1
    pop de                                        ; $5fb0: $d1
    pop de                                        ; $5fb1: $d1
    pop de                                        ; $5fb2: $d1
    pop de                                        ; $5fb3: $d1
    dec bc                                        ; $5fb4: $0b
    pop de                                        ; $5fb5: $d1
    db $fd                                        ; $5fb6: $fd
    inc bc                                        ; $5fb7: $03
    inc bc                                        ; $5fb8: $03
    inc bc                                        ; $5fb9: $03
    inc bc                                        ; $5fba: $03
    ld bc, $0303                                  ; $5fbb: $01 $03 $03
    inc bc                                        ; $5fbe: $03
    inc bc                                        ; $5fbf: $03
    inc bc                                        ; $5fc0: $03
    inc bc                                        ; $5fc1: $03
    inc bc                                        ; $5fc2: $03
    inc bc                                        ; $5fc3: $03
    ld bc, $0103                                  ; $5fc4: $01 $03 $01
    pop de                                        ; $5fc7: $d1
    add hl, de                                    ; $5fc8: $19
    ld a, [de]                                    ; $5fc9: $1a
    dec de                                        ; $5fca: $1b
    pop de                                        ; $5fcb: $d1
    inc e                                         ; $5fcc: $1c
    dec e                                         ; $5fcd: $1d
    ld e, $fe                                     ; $5fce: $1e $fe
    rra                                           ; $5fd0: $1f
    jr nz, @+$23                                  ; $5fd1: $20 $21

    rlca                                          ; $5fd3: $07
    ld [hl+], a                                   ; $5fd4: $22
    inc hl                                        ; $5fd5: $23
    inc h                                         ; $5fd6: $24
    inc bc                                        ; $5fd7: $03
    rlca                                          ; $5fd8: $07
    rlca                                          ; $5fd9: $07
    rlca                                          ; $5fda: $07
    inc bc                                        ; $5fdb: $03
    rlca                                          ; $5fdc: $07
    rlca                                          ; $5fdd: $07
    rlca                                          ; $5fde: $07
    ld bc, $0707                                  ; $5fdf: $01 $07 $07
    rlca                                          ; $5fe2: $07
    ld bc, $0707                                  ; $5fe3: $01 $07 $07
    rlca                                          ; $5fe6: $07
    pop de                                        ; $5fe7: $d1
    pop de                                        ; $5fe8: $d1
    pop de                                        ; $5fe9: $d1
    dec bc                                        ; $5fea: $0b
    pop de                                        ; $5feb: $d1
    pop de                                        ; $5fec: $d1
    cp $ff                                        ; $5fed: $fe $ff
    db $fc                                        ; $5fef: $fc
    db $fd                                        ; $5ff0: $fd
    nop                                           ; $5ff1: $00
    dec b                                         ; $5ff2: $05
    ld b, $02                                     ; $5ff3: $06 $02
    inc bc                                        ; $5ff5: $03
    inc b                                         ; $5ff6: $04
    inc bc                                        ; $5ff7: $03
    inc bc                                        ; $5ff8: $03
    inc bc                                        ; $5ff9: $03
    ld bc, $0303                                  ; $5ffa: $01 $03 $03
    ld bc, $0101                                  ; $5ffd: $01 $01 $01
    ld bc, $0101                                  ; $6000: $01 $01 $01
    ld bc, $0101                                  ; $6003: $01 $01 $01
    ld bc, $05d1                                  ; $6006: $01 $d1 $05
    ld b, $ff                                     ; $6009: $06 $ff
    db $fc                                        ; $600b: $fc
    inc b                                         ; $600c: $04
    rlca                                          ; $600d: $07
    ld bc, $0206                                  ; $600e: $01 $06 $02
    inc bc                                        ; $6011: $03
    inc b                                         ; $6012: $04
    nop                                           ; $6013: $00
    ld bc, $fffe                                  ; $6014: $01 $fe $ff
    inc bc                                        ; $6017: $03
    ld bc, $0101                                  ; $6018: $01 $01 $01
    ld bc, $0101                                  ; $601b: $01 $01 $01
    ld bc, $0101                                  ; $601e: $01 $01 $01
    ld bc, $0101                                  ; $6021: $01 $01 $01
    ld bc, $0101                                  ; $6024: $01 $01 $01
    inc bc                                        ; $6027: $03
    dec [hl]                                      ; $6028: $35
    ld [hl], $37                                  ; $6029: $36 $37
    ld b, $38                                     ; $602b: $06 $38
    add hl, sp                                    ; $602d: $39
    ld a, [hl-]                                   ; $602e: $3a
    rlca                                          ; $602f: $07
    dec sp                                        ; $6030: $3b
    inc a                                         ; $6031: $3c
    dec a                                         ; $6032: $3d
    db $fc                                        ; $6033: $fc
    ld a, $3f                                     ; $6034: $3e $3f
    ld b, b                                       ; $6036: $40
    ld bc, $0707                                  ; $6037: $01 $07 $07
    rlca                                          ; $603a: $07
    ld bc, $0707                                  ; $603b: $01 $07 $07
    rlca                                          ; $603e: $07
    ld bc, $0707                                  ; $603f: $01 $07 $07
    rlca                                          ; $6042: $07
    ld bc, $0707                                  ; $6043: $01 $07 $07
    rlca                                          ; $6046: $07
    pop de                                        ; $6047: $d1
    rst $30                                       ; $6048: $f7
    pop de                                        ; $6049: $d1
    pop de                                        ; $604a: $d1
    pop de                                        ; $604b: $d1
    pop de                                        ; $604c: $d1
    pop de                                        ; $604d: $d1
    pop de                                        ; $604e: $d1
    ldh [$d1], a                                  ; $604f: $e0 $d1
    pop de                                        ; $6051: $d1
    pop de                                        ; $6052: $d1
    db $eb                                        ; $6053: $eb
    db $e4                                        ; $6054: $e4
    pop de                                        ; $6055: $d1
    pop de                                        ; $6056: $d1
    inc bc                                        ; $6057: $03
    inc bc                                        ; $6058: $03
    inc bc                                        ; $6059: $03
    inc bc                                        ; $605a: $03
    inc bc                                        ; $605b: $03
    inc bc                                        ; $605c: $03
    inc bc                                        ; $605d: $03
    inc bc                                        ; $605e: $03
    add d                                         ; $605f: $82
    inc bc                                        ; $6060: $03
    inc bc                                        ; $6061: $03
    inc bc                                        ; $6062: $03
    add d                                         ; $6063: $82
    and d                                         ; $6064: $a2
    inc bc                                        ; $6065: $03
    inc bc                                        ; $6066: $03
    call c, $dedd                                 ; $6067: $dc $dd $de
    xor $e1                                       ; $606a: $ee $e1
    ld [c], a                                     ; $606c: $e2
    rst $20                                       ; $606d: $e7
    ld a, [c]                                     ; $606e: $f2
    push hl                                       ; $606f: $e5
    and $e9                                       ; $6070: $e6 $e9
    db $f4                                        ; $6072: $f4
    pop de                                        ; $6073: $d1
    pop de                                        ; $6074: $d1
    rst $30                                       ; $6075: $f7
    ldh [$82], a                                  ; $6076: $e0 $82
    add d                                         ; $6078: $82
    add d                                         ; $6079: $82
    add d                                         ; $607a: $82
    add d                                         ; $607b: $82
    add d                                         ; $607c: $82
    add d                                         ; $607d: $82
    add d                                         ; $607e: $82
    add d                                         ; $607f: $82
    add d                                         ; $6080: $82
    add d                                         ; $6081: $82
    add d                                         ; $6082: $82
    inc bc                                        ; $6083: $03
    inc bc                                        ; $6084: $03
    inc bc                                        ; $6085: $03
    add d                                         ; $6086: $82
    rst $28                                       ; $6087: $ef
    pop de                                        ; $6088: $d1
    call c, $f5dd                                 ; $6089: $dc $dd $f5
    pop de                                        ; $608c: $d1
    pop hl                                        ; $608d: $e1
    ld [c], a                                     ; $608e: $e2
    or $d1                                        ; $608f: $f6 $d1
    push hl                                       ; $6091: $e5
    and $d1                                       ; $6092: $e6 $d1
    pop de                                        ; $6094: $d1
    pop de                                        ; $6095: $d1
    pop de                                        ; $6096: $d1
    add d                                         ; $6097: $82
    inc bc                                        ; $6098: $03
    add d                                         ; $6099: $82
    add d                                         ; $609a: $82
    add d                                         ; $609b: $82
    inc bc                                        ; $609c: $03
    add d                                         ; $609d: $82
    add d                                         ; $609e: $82
    add d                                         ; $609f: $82
    inc bc                                        ; $60a0: $03
    add d                                         ; $60a1: $82
    add d                                         ; $60a2: $82
    inc bc                                        ; $60a3: $03
    inc bc                                        ; $60a4: $03
    inc bc                                        ; $60a5: $03
    inc bc                                        ; $60a6: $03
    db $d3                                        ; $60a7: $d3
    call nc, $d1d1                                ; $60a8: $d4 $d1 $d1
    sub $d7                                       ; $60ab: $d6 $d7
    pop de                                        ; $60ad: $d1
    pop de                                        ; $60ae: $d1
    jp c, $d1db                                   ; $60af: $da $db $d1

    pop de                                        ; $60b2: $d1
    sbc $ee                                       ; $60b3: $de $ee
    rst $28                                       ; $60b5: $ef
    pop de                                        ; $60b6: $d1
    add d                                         ; $60b7: $82
    add d                                         ; $60b8: $82
    inc bc                                        ; $60b9: $03
    inc bc                                        ; $60ba: $03
    add d                                         ; $60bb: $82
    add d                                         ; $60bc: $82
    inc bc                                        ; $60bd: $03
    inc bc                                        ; $60be: $03
    add d                                         ; $60bf: $82
    add d                                         ; $60c0: $82
    inc bc                                        ; $60c1: $03
    inc bc                                        ; $60c2: $03
    add d                                         ; $60c3: $82
    add d                                         ; $60c4: $82
    add d                                         ; $60c5: $82
    inc bc                                        ; $60c6: $03
    pop de                                        ; $60c7: $d1
    pop de                                        ; $60c8: $d1
    db $e4                                        ; $60c9: $e4
    db $eb                                        ; $60ca: $eb
    pop de                                        ; $60cb: $d1
    pop de                                        ; $60cc: $d1
    jp nc, $d1d3                                  ; $60cd: $d2 $d3 $d1

    pop de                                        ; $60d0: $d1
    push de                                       ; $60d1: $d5
    sub $d1                                       ; $60d2: $d6 $d1
    ret c                                         ; $60d4: $d8

    reti                                          ; $60d5: $d9


    jp c, Jump_000_0303                           ; $60d6: $da $03 $03

    add d                                         ; $60d9: $82
    add d                                         ; $60da: $82
    inc bc                                        ; $60db: $03
    inc bc                                        ; $60dc: $03
    add d                                         ; $60dd: $82
    add d                                         ; $60de: $82
    inc bc                                        ; $60df: $03
    inc bc                                        ; $60e0: $03
    add d                                         ; $60e1: $82
    add d                                         ; $60e2: $82
    inc bc                                        ; $60e3: $03
    add d                                         ; $60e4: $82
    add d                                         ; $60e5: $82
    add d                                         ; $60e6: $82
    db $e4                                        ; $60e7: $e4
    pop de                                        ; $60e8: $d1
    pop de                                        ; $60e9: $d1
    pop de                                        ; $60ea: $d1
    call nc, $d1d1                                ; $60eb: $d4 $d1 $d1
    pop de                                        ; $60ee: $d1
    rst $10                                       ; $60ef: $d7
    pop de                                        ; $60f0: $d1
    pop de                                        ; $60f1: $d1
    jp nc, $d1db                                  ; $60f2: $d2 $db $d1

    pop de                                        ; $60f5: $d1
    push de                                       ; $60f6: $d5
    and d                                         ; $60f7: $a2
    inc bc                                        ; $60f8: $03
    inc bc                                        ; $60f9: $03
    inc bc                                        ; $60fa: $03
    add d                                         ; $60fb: $82
    inc bc                                        ; $60fc: $03
    inc bc                                        ; $60fd: $03
    inc bc                                        ; $60fe: $03
    add d                                         ; $60ff: $82
    inc bc                                        ; $6100: $03
    inc bc                                        ; $6101: $03
    add d                                         ; $6102: $82
    add d                                         ; $6103: $82
    inc bc                                        ; $6104: $03
    inc bc                                        ; $6105: $03
    add d                                         ; $6106: $82
    rst $20                                       ; $6107: $e7
    ld a, [c]                                     ; $6108: $f2
    push af                                       ; $6109: $f5
    ld hl, sp-$17                                 ; $610a: $f8 $e9
    db $f4                                        ; $610c: $f4
    or $fa                                        ; $610d: $f6 $fa
    rst $30                                       ; $610f: $f7
    pop de                                        ; $6110: $d1
    pop de                                        ; $6111: $d1
    pop de                                        ; $6112: $d1
    ld c, [hl]                                    ; $6113: $4e
    ld c, l                                       ; $6114: $4d
    sub b                                         ; $6115: $90
    ld d, e                                       ; $6116: $53
    add d                                         ; $6117: $82
    add d                                         ; $6118: $82
    add d                                         ; $6119: $82
    ld bc, $8282                                  ; $611a: $01 $82 $82
    add d                                         ; $611d: $82
    ld bc, $0303                                  ; $611e: $01 $03 $03
    inc bc                                        ; $6121: $03
    inc bc                                        ; $6122: $03
    inc hl                                        ; $6123: $23
    inc hl                                        ; $6124: $23
    dec bc                                        ; $6125: $0b
    inc hl                                        ; $6126: $23
    ld sp, hl                                     ; $6127: $f9
    call c, $dedd                                 ; $6128: $dc $dd $de
    ei                                            ; $612b: $fb
    pop hl                                        ; $612c: $e1
    ld [c], a                                     ; $612d: $e2
    rst $20                                       ; $612e: $e7
    pop de                                        ; $612f: $d1
    push hl                                       ; $6130: $e5
    and $e9                                       ; $6131: $e6 $e9
    ld e, [hl]                                    ; $6133: $5e
    ld e, l                                       ; $6134: $5d
    ld e, h                                       ; $6135: $5c
    rst $30                                       ; $6136: $f7
    ld bc, $8282                                  ; $6137: $01 $82 $82
    add d                                         ; $613a: $82
    ld bc, $8282                                  ; $613b: $01 $82 $82
    add d                                         ; $613e: $82
    inc bc                                        ; $613f: $03
    add d                                         ; $6140: $82
    add d                                         ; $6141: $82
    add d                                         ; $6142: $82
    inc hl                                        ; $6143: $23
    inc hl                                        ; $6144: $23
    inc hl                                        ; $6145: $23
    inc bc                                        ; $6146: $03
    xor $ef                                       ; $6147: $ee $ef
    pop de                                        ; $6149: $d1
    reti                                          ; $614a: $d9


    ld a, [c]                                     ; $614b: $f2
    push af                                       ; $614c: $f5
    call c, $f4dd                                 ; $614d: $dc $dd $f4
    or $e1                                        ; $6150: $f6 $e1
    ld [c], a                                     ; $6152: $e2
    pop de                                        ; $6153: $d1
    pop de                                        ; $6154: $d1
    push hl                                       ; $6155: $e5
    and $82                                       ; $6156: $e6 $82
    add d                                         ; $6158: $82
    inc bc                                        ; $6159: $03
    add d                                         ; $615a: $82
    add d                                         ; $615b: $82
    add d                                         ; $615c: $82
    add d                                         ; $615d: $82
    add d                                         ; $615e: $82
    add d                                         ; $615f: $82
    add d                                         ; $6160: $82
    add d                                         ; $6161: $82
    add d                                         ; $6162: $82
    inc bc                                        ; $6163: $03
    inc bc                                        ; $6164: $03
    add d                                         ; $6165: $82
    add d                                         ; $6166: $82
    jp c, $d1db                                   ; $6167: $da $db $d1

    ld h, e                                       ; $616a: $63
    sbc $ee                                       ; $616b: $de $ee
    rst $28                                       ; $616d: $ef
    pop de                                        ; $616e: $d1
    rst $20                                       ; $616f: $e7
    ld a, [c]                                     ; $6170: $f2
    push af                                       ; $6171: $f5
    sub e                                         ; $6172: $93
    jp hl                                         ; $6173: $e9


    db $f4                                        ; $6174: $f4
    or $94                                        ; $6175: $f6 $94
    add d                                         ; $6177: $82
    add d                                         ; $6178: $82
    add d                                         ; $6179: $82
    rlca                                          ; $617a: $07
    add d                                         ; $617b: $82
    add d                                         ; $617c: $82
    add d                                         ; $617d: $82
    inc bc                                        ; $617e: $03
    add d                                         ; $617f: $82
    add d                                         ; $6180: $82
    add d                                         ; $6181: $82
    dec hl                                        ; $6182: $2b
    add d                                         ; $6183: $82
    add d                                         ; $6184: $82
    add d                                         ; $6185: $82
    dec hl                                        ; $6186: $2b
    ld l, h                                       ; $6187: $6c
    ld d, a                                       ; $6188: $57
    ld d, h                                       ; $6189: $54
    ld d, l                                       ; $618a: $55
    ld e, d                                       ; $618b: $5a
    ld e, e                                       ; $618c: $5b
    ld e, b                                       ; $618d: $58
    ld c, a                                       ; $618e: $4f
    ld h, b                                       ; $618f: $60
    ld h, d                                       ; $6190: $62
    ld c, e                                       ; $6191: $4b
    ld c, h                                       ; $6192: $4c
    ld d, c                                       ; $6193: $51
    ld d, d                                       ; $6194: $52
    ld h, h                                       ; $6195: $64
    ld h, l                                       ; $6196: $65
    inc bc                                        ; $6197: $03
    inc bc                                        ; $6198: $03
    inc bc                                        ; $6199: $03
    inc bc                                        ; $619a: $03
    inc bc                                        ; $619b: $03
    inc bc                                        ; $619c: $03
    inc bc                                        ; $619d: $03
    inc bc                                        ; $619e: $03
    inc bc                                        ; $619f: $03
    inc bc                                        ; $61a0: $03
    inc bc                                        ; $61a1: $03
    inc bc                                        ; $61a2: $03
    inc bc                                        ; $61a3: $03
    inc bc                                        ; $61a4: $03
    inc bc                                        ; $61a5: $03
    inc bc                                        ; $61a6: $03
    ld l, h                                       ; $61a7: $6c
    ld d, a                                       ; $61a8: $57
    ld d, h                                       ; $61a9: $54
    ld e, [hl]                                    ; $61aa: $5e
    ld d, b                                       ; $61ab: $50
    ld e, e                                       ; $61ac: $5b
    ld e, b                                       ; $61ad: $58
    ld e, c                                       ; $61ae: $59
    ld h, c                                       ; $61af: $61
    ld e, a                                       ; $61b0: $5f
    ld h, b                                       ; $61b1: $60
    ld c, h                                       ; $61b2: $4c
    ld d, c                                       ; $61b3: $51
    ld d, d                                       ; $61b4: $52
    ld h, h                                       ; $61b5: $64
    ld h, l                                       ; $61b6: $65
    inc bc                                        ; $61b7: $03
    inc bc                                        ; $61b8: $03
    inc bc                                        ; $61b9: $03
    inc hl                                        ; $61ba: $23
    inc bc                                        ; $61bb: $03
    inc bc                                        ; $61bc: $03
    inc bc                                        ; $61bd: $03
    inc bc                                        ; $61be: $03
    inc bc                                        ; $61bf: $03
    inc bc                                        ; $61c0: $03
    inc bc                                        ; $61c1: $03
    inc bc                                        ; $61c2: $03
    inc bc                                        ; $61c3: $03
    inc bc                                        ; $61c4: $03
    inc bc                                        ; $61c5: $03
    inc bc                                        ; $61c6: $03
    ld e, l                                       ; $61c7: $5d
    ld e, h                                       ; $61c8: $5c
    pop de                                        ; $61c9: $d1
    pop de                                        ; $61ca: $d1
    ld e, d                                       ; $61cb: $5a
    ld e, e                                       ; $61cc: $5b
    ld c, l                                       ; $61cd: $4d
    ld c, [hl]                                    ; $61ce: $4e
    ld h, c                                       ; $61cf: $61
    ld h, d                                       ; $61d0: $62
    ld c, e                                       ; $61d1: $4b
    ld c, h                                       ; $61d2: $4c
    ld d, c                                       ; $61d3: $51
    ld d, d                                       ; $61d4: $52
    ld h, h                                       ; $61d5: $64
    ld d, [hl]                                    ; $61d6: $56
    inc hl                                        ; $61d7: $23
    inc hl                                        ; $61d8: $23
    inc bc                                        ; $61d9: $03
    inc bc                                        ; $61da: $03
    inc bc                                        ; $61db: $03
    inc bc                                        ; $61dc: $03
    inc bc                                        ; $61dd: $03
    inc bc                                        ; $61de: $03
    inc bc                                        ; $61df: $03
    inc bc                                        ; $61e0: $03
    inc bc                                        ; $61e1: $03
    inc bc                                        ; $61e2: $03
    inc bc                                        ; $61e3: $03
    inc bc                                        ; $61e4: $03
    inc bc                                        ; $61e5: $03
    inc bc                                        ; $61e6: $03
    rst $30                                       ; $61e7: $f7
    pop de                                        ; $61e8: $d1
    sub e                                         ; $61e9: $93
    ld d, a                                       ; $61ea: $57
    pop de                                        ; $61eb: $d1
    ld h, e                                       ; $61ec: $63
    sub h                                         ; $61ed: $94
    ld e, a                                       ; $61ee: $5f
    sub b                                         ; $61ef: $90
    ld d, e                                       ; $61f0: $53
    ld c, e                                       ; $61f1: $4b
    ld c, h                                       ; $61f2: $4c
    ld d, c                                       ; $61f3: $51
    ld d, d                                       ; $61f4: $52
    ld h, h                                       ; $61f5: $64
    ld h, l                                       ; $61f6: $65
    inc bc                                        ; $61f7: $03
    inc bc                                        ; $61f8: $03
    dec hl                                        ; $61f9: $2b
    inc bc                                        ; $61fa: $03
    inc bc                                        ; $61fb: $03
    rlca                                          ; $61fc: $07
    dec hl                                        ; $61fd: $2b
    inc bc                                        ; $61fe: $03
    dec bc                                        ; $61ff: $0b
    inc hl                                        ; $6200: $23
    inc bc                                        ; $6201: $03
    inc bc                                        ; $6202: $03
    inc bc                                        ; $6203: $03
    inc bc                                        ; $6204: $03
    inc bc                                        ; $6205: $03
    inc bc                                        ; $6206: $03
    pop de                                        ; $6207: $d1
    ld hl, sp-$07                                 ; $6208: $f8 $f9
    pop de                                        ; $620a: $d1
    pop de                                        ; $620b: $d1
    ld a, [$93fb]                                 ; $620c: $fa $fb $93
    pop de                                        ; $620f: $d1
    pop de                                        ; $6210: $d1
    pop de                                        ; $6211: $d1
    sub h                                         ; $6212: $94
    pop de                                        ; $6213: $d1
    pop de                                        ; $6214: $d1
    sub c                                         ; $6215: $91
    ld d, d                                       ; $6216: $52
    inc bc                                        ; $6217: $03
    ld bc, $0301                                  ; $6218: $01 $01 $03
    inc bc                                        ; $621b: $03
    ld bc, $2b01                                  ; $621c: $01 $01 $2b
    inc bc                                        ; $621f: $03
    inc bc                                        ; $6220: $03
    inc bc                                        ; $6221: $03
    dec hl                                        ; $6222: $2b
    inc bc                                        ; $6223: $03
    inc bc                                        ; $6224: $03
    dec bc                                        ; $6225: $0b
    inc bc                                        ; $6226: $03
    sub d                                         ; $6227: $92
    ld d, l                                       ; $6228: $55
    ld l, h                                       ; $6229: $6c
    sub c                                         ; $622a: $91
    ld c, a                                       ; $622b: $4f
    ld d, b                                       ; $622c: $50
    sub d                                         ; $622d: $92
    pop de                                        ; $622e: $d1
    ld c, e                                       ; $622f: $4b
    ld c, h                                       ; $6230: $4c
    sub c                                         ; $6231: $91
    ld h, e                                       ; $6232: $63
    ld h, h                                       ; $6233: $64
    sub d                                         ; $6234: $92
    pop de                                        ; $6235: $d1
    pop de                                        ; $6236: $d1
    dec bc                                        ; $6237: $0b
    inc bc                                        ; $6238: $03
    inc bc                                        ; $6239: $03
    ld l, e                                       ; $623a: $6b
    inc bc                                        ; $623b: $03
    inc bc                                        ; $623c: $03
    ld l, e                                       ; $623d: $6b
    inc bc                                        ; $623e: $03
    inc bc                                        ; $623f: $03
    inc bc                                        ; $6240: $03
    ld l, e                                       ; $6241: $6b
    rlca                                          ; $6242: $07
    inc bc                                        ; $6243: $03
    ld l, e                                       ; $6244: $6b
    inc bc                                        ; $6245: $03
    inc bc                                        ; $6246: $03
    pop de                                        ; $6247: $d1
    dec c                                         ; $6248: $0d
    pop de                                        ; $6249: $d1
    pop de                                        ; $624a: $d1
    pop de                                        ; $624b: $d1
    db $10                                        ; $624c: $10
    ld de, $d1d1                                  ; $624d: $11 $d1 $d1
    ld [$1016], sp                                ; $6250: $08 $16 $10
    ld de, $150d                                  ; $6253: $11 $0d $15
    rrca                                          ; $6256: $0f
    inc bc                                        ; $6257: $03
    ld bc, $0303                                  ; $6258: $01 $03 $03
    inc bc                                        ; $625b: $03
    ld bc, $0301                                  ; $625c: $01 $01 $03
    inc bc                                        ; $625f: $03
    ld bc, $0101                                  ; $6260: $01 $01 $01
    ld bc, $0101                                  ; $6263: $01 $01 $01
    ld bc, $e2e1                                  ; $6266: $01 $e1 $e2
    rst $20                                       ; $6269: $e7
    ld a, [c]                                     ; $626a: $f2
    push hl                                       ; $626b: $e5
    and $e9                                       ; $626c: $e6 $e9
    db $f4                                        ; $626e: $f4
    pop de                                        ; $626f: $d1
    pop de                                        ; $6270: $d1
    rst $30                                       ; $6271: $f7
    pop de                                        ; $6272: $d1
    inc c                                         ; $6273: $0c
    pop de                                        ; $6274: $d1
    pop de                                        ; $6275: $d1
    pop de                                        ; $6276: $d1
    add d                                         ; $6277: $82
    add d                                         ; $6278: $82
    add d                                         ; $6279: $82
    add d                                         ; $627a: $82
    add d                                         ; $627b: $82
    add d                                         ; $627c: $82
    add d                                         ; $627d: $82
    add d                                         ; $627e: $82
    inc bc                                        ; $627f: $03
    inc bc                                        ; $6280: $03
    inc bc                                        ; $6281: $03
    inc bc                                        ; $6282: $03
    ld bc, $0303                                  ; $6283: $01 $03 $03
    inc bc                                        ; $6286: $03
    rst $28                                       ; $6287: $ef
    pop de                                        ; $6288: $d1
    sub d                                         ; $6289: $92
    ld d, a                                       ; $628a: $57
    push af                                       ; $628b: $f5
    sub e                                         ; $628c: $93
    ld e, a                                       ; $628d: $5f
    ld h, b                                       ; $628e: $60
    or $94                                        ; $628f: $f6 $94
    ld h, c                                       ; $6291: $61
    ld h, d                                       ; $6292: $62
    sub a                                         ; $6293: $97
    ld h, l                                       ; $6294: $65
    ld d, c                                       ; $6295: $51
    sbc b                                         ; $6296: $98
    add d                                         ; $6297: $82
    inc bc                                        ; $6298: $03
    dec bc                                        ; $6299: $0b
    inc bc                                        ; $629a: $03
    add d                                         ; $629b: $82
    dec hl                                        ; $629c: $2b
    inc bc                                        ; $629d: $03
    inc bc                                        ; $629e: $03
    add d                                         ; $629f: $82
    dec hl                                        ; $62a0: $2b
    inc bc                                        ; $62a1: $03
    inc bc                                        ; $62a2: $03
    dec bc                                        ; $62a3: $0b
    inc bc                                        ; $62a4: $03
    inc bc                                        ; $62a5: $03
    dec bc                                        ; $62a6: $0b
    ld d, h                                       ; $62a7: $54
    sub c                                         ; $62a8: $91
    pop de                                        ; $62a9: $d1
    ld [$d192], sp                                ; $62aa: $08 $92 $d1
    pop de                                        ; $62ad: $d1
    dec c                                         ; $62ae: $0d
    sub c                                         ; $62af: $91
    ld h, e                                       ; $62b0: $63
    ld hl, sp-$07                                 ; $62b1: $f8 $f9
    pop de                                        ; $62b3: $d1
    pop de                                        ; $62b4: $d1
    ld a, [$03fb]                                 ; $62b5: $fa $fb $03
    ld l, e                                       ; $62b8: $6b
    inc bc                                        ; $62b9: $03
    ld bc, $036b                                  ; $62ba: $01 $6b $03
    inc bc                                        ; $62bd: $03
    ld bc, $076b                                  ; $62be: $01 $6b $07
    ld bc, $0301                                  ; $62c1: $01 $01 $03
    inc bc                                        ; $62c4: $03
    ld bc, $1601                                  ; $62c5: $01 $01 $16
    ld [de], a                                    ; $62c8: $12
    inc de                                        ; $62c9: $13
    inc d                                         ; $62ca: $14
    ld c, $0f                                     ; $62cb: $0e $0f
    ld d, $12                                     ; $62cd: $16 $12
    ld de, $150d                                  ; $62cf: $11 $0d $15
    rrca                                          ; $62d2: $0f
    pop de                                        ; $62d3: $d1
    db $10                                        ; $62d4: $10
    ld de, $0114                                  ; $62d5: $11 $14 $01
    ld bc, $0101                                  ; $62d8: $01 $01 $01
    ld bc, $0101                                  ; $62db: $01 $01 $01
    ld bc, $0101                                  ; $62de: $01 $01 $01
    ld bc, $0301                                  ; $62e1: $01 $01 $03
    ld bc, $0101                                  ; $62e4: $01 $01 $01
    dec d                                         ; $62e7: $15
    ld [$d1d1], sp                                ; $62e8: $08 $d1 $d1
    inc de                                        ; $62eb: $13
    inc d                                         ; $62ec: $14
    ld c, $d1                                     ; $62ed: $0e $d1
    ld d, $12                                     ; $62ef: $16 $12
    ld de, $15d1                                  ; $62f1: $11 $d1 $15
    rrca                                          ; $62f4: $0f
    inc c                                         ; $62f5: $0c
    pop de                                        ; $62f6: $d1
    ld bc, $0301                                  ; $62f7: $01 $01 $03
    inc bc                                        ; $62fa: $03
    ld bc, $0101                                  ; $62fb: $01 $01 $01
    inc bc                                        ; $62fe: $03
    ld bc, $0101                                  ; $62ff: $01 $01 $01
    inc bc                                        ; $6302: $03
    ld bc, $0101                                  ; $6303: $01 $01 $01
    inc bc                                        ; $6306: $03
    sbc c                                         ; $6307: $99
    ld d, l                                       ; $6308: $55
    ld l, h                                       ; $6309: $6c
    sbc c                                         ; $630a: $99
    sbc b                                         ; $630b: $98
    ld e, c                                       ; $630c: $59
    ld e, d                                       ; $630d: $5a
    sub a                                         ; $630e: $97
    ld c, e                                       ; $630f: $4b
    ld c, h                                       ; $6310: $4c
    sub d                                         ; $6311: $92
    db $e4                                        ; $6312: $e4
    ld h, h                                       ; $6313: $64
    ld h, l                                       ; $6314: $65
    sub c                                         ; $6315: $91
    jp nc, Jump_000_030b                          ; $6316: $d2 $0b $03

    inc bc                                        ; $6319: $03
    ld l, e                                       ; $631a: $6b
    ld l, e                                       ; $631b: $6b
    inc bc                                        ; $631c: $03
    inc bc                                        ; $631d: $03
    ld l, e                                       ; $631e: $6b
    inc bc                                        ; $631f: $03
    inc bc                                        ; $6320: $03
    ld l, e                                       ; $6321: $6b
    add d                                         ; $6322: $82
    inc bc                                        ; $6323: $03
    inc bc                                        ; $6324: $03
    ld l, e                                       ; $6325: $6b
    add d                                         ; $6326: $82
    pop de                                        ; $6327: $d1
    pop de                                        ; $6328: $d1
    pop de                                        ; $6329: $d1
    pop de                                        ; $632a: $d1
    ldh [$d1], a                                  ; $632b: $e0 $d1
    pop de                                        ; $632d: $d1
    pop de                                        ; $632e: $d1
    db $eb                                        ; $632f: $eb
    db $e4                                        ; $6330: $e4
    pop de                                        ; $6331: $d1
    dec bc                                        ; $6332: $0b
    db $d3                                        ; $6333: $d3
    call nc, $d1d1                                ; $6334: $d4 $d1 $d1
    inc bc                                        ; $6337: $03
    inc bc                                        ; $6338: $03
    inc bc                                        ; $6339: $03
    inc bc                                        ; $633a: $03
    add d                                         ; $633b: $82
    inc bc                                        ; $633c: $03
    inc bc                                        ; $633d: $03
    inc bc                                        ; $633e: $03
    add d                                         ; $633f: $82
    and d                                         ; $6340: $a2
    inc bc                                        ; $6341: $03
    ld bc, $8282                                  ; $6342: $01 $82 $82
    inc bc                                        ; $6345: $03
    inc bc                                        ; $6346: $03
    pop de                                        ; $6347: $d1
    pop de                                        ; $6348: $d1
    inc c                                         ; $6349: $0c
    ld [de], a                                    ; $634a: $12
    pop de                                        ; $634b: $d1
    pop de                                        ; $634c: $d1
    ld c, $0f                                     ; $634d: $0e $0f
    pop de                                        ; $634f: $d1
    db $10                                        ; $6350: $10
    ld de, $d114                                  ; $6351: $11 $14 $d1
    ld [$1016], sp                                ; $6354: $08 $16 $10
    inc bc                                        ; $6357: $03
    inc bc                                        ; $6358: $03
    ld bc, $0301                                  ; $6359: $01 $01 $03
    inc bc                                        ; $635c: $03
    ld bc, $0301                                  ; $635d: $01 $01 $03
    ld bc, $0101                                  ; $6360: $01 $01 $01
    inc bc                                        ; $6363: $03
    ld bc, $0101                                  ; $6364: $01 $01 $01
    inc de                                        ; $6367: $13
    dec c                                         ; $6368: $0d
    ld c, $08                                     ; $6369: $0e $08
    inc c                                         ; $636b: $0c
    db $10                                        ; $636c: $10
    ld de, $0ed1                                  ; $636d: $11 $d1 $0e
    ld [$10d1], sp                                ; $6370: $08 $d1 $10
    ld de, $0ed1                                  ; $6373: $11 $d1 $0e
    pop de                                        ; $6376: $d1
    ld bc, $0101                                  ; $6377: $01 $01 $01
    ld bc, $0101                                  ; $637a: $01 $01 $01
    ld bc, $0103                                  ; $637d: $01 $03 $01
    ld bc, $0103                                  ; $6380: $01 $03 $01
    ld bc, $0103                                  ; $6383: $01 $03 $01
    inc bc                                        ; $6386: $03
    ld d, h                                       ; $6387: $54
    sub d                                         ; $6388: $92
    pop de                                        ; $6389: $d1
    push de                                       ; $638a: $d5
    ld h, b                                       ; $638b: $60
    sub c                                         ; $638c: $91
    ret c                                         ; $638d: $d8

    reti                                          ; $638e: $d9


    sub d                                         ; $638f: $92
    pop de                                        ; $6390: $d1
    call c, $91dd                                 ; $6391: $dc $dd $91
    pop de                                        ; $6394: $d1
    pop hl                                        ; $6395: $e1
    ld [c], a                                     ; $6396: $e2
    inc bc                                        ; $6397: $03
    ld l, e                                       ; $6398: $6b
    inc bc                                        ; $6399: $03
    add d                                         ; $639a: $82
    inc bc                                        ; $639b: $03
    ld l, e                                       ; $639c: $6b
    add d                                         ; $639d: $82
    add d                                         ; $639e: $82
    ld l, e                                       ; $639f: $6b
    inc bc                                        ; $63a0: $03
    add d                                         ; $63a1: $82
    add d                                         ; $63a2: $82
    ld l, e                                       ; $63a3: $6b
    inc bc                                        ; $63a4: $03
    add d                                         ; $63a5: $82
    add d                                         ; $63a6: $82
    sub $d7                                       ; $63a7: $d6 $d7
    pop de                                        ; $63a9: $d1
    pop de                                        ; $63aa: $d1
    jp c, $d1db                                   ; $63ab: $da $db $d1

    pop de                                        ; $63ae: $d1
    sbc $ee                                       ; $63af: $de $ee
    rst $28                                       ; $63b1: $ef
    pop de                                        ; $63b2: $d1
    rst $20                                       ; $63b3: $e7
    ld a, [c]                                     ; $63b4: $f2
    push af                                       ; $63b5: $f5
    pop de                                        ; $63b6: $d1
    add d                                         ; $63b7: $82
    add d                                         ; $63b8: $82
    inc bc                                        ; $63b9: $03
    inc bc                                        ; $63ba: $03
    add d                                         ; $63bb: $82
    add d                                         ; $63bc: $82
    inc bc                                        ; $63bd: $03
    inc bc                                        ; $63be: $03
    add d                                         ; $63bf: $82
    add d                                         ; $63c0: $82
    add d                                         ; $63c1: $82
    inc bc                                        ; $63c2: $03
    add d                                         ; $63c3: $82
    add d                                         ; $63c4: $82
    add d                                         ; $63c5: $82
    inc bc                                        ; $63c6: $03
    pop de                                        ; $63c7: $d1
    dec c                                         ; $63c8: $0d
    ld c, $08                                     ; $63c9: $0e $08
    pop de                                        ; $63cb: $d1
    db $10                                        ; $63cc: $10
    ld de, $0ed1                                  ; $63cd: $11 $d1 $0e
    ld [$7574], sp                                ; $63d0: $08 $74 $75
    pop de                                        ; $63d3: $d1
    ld [hl], d                                    ; $63d4: $72
    ld a, b                                       ; $63d5: $78
    ld a, c                                       ; $63d6: $79
    inc bc                                        ; $63d7: $03
    ld bc, $0101                                  ; $63d8: $01 $01 $01
    inc bc                                        ; $63db: $03
    ld bc, $0301                                  ; $63dc: $01 $01 $03
    ld bc, $8201                                  ; $63df: $01 $01 $82
    add d                                         ; $63e2: $82
    inc bc                                        ; $63e3: $03
    add d                                         ; $63e4: $82
    add d                                         ; $63e5: $82
    add d                                         ; $63e6: $82
    pop de                                        ; $63e7: $d1
    db $10                                        ; $63e8: $10
    pop de                                        ; $63e9: $d1
    pop de                                        ; $63ea: $d1
    ld c, $d1                                     ; $63eb: $0e $d1
    pop de                                        ; $63ed: $d1
    pop de                                        ; $63ee: $d1
    halt                                          ; $63ef: $76
    ld [hl], a                                    ; $63f0: $77
    dec bc                                        ; $63f1: $0b
    pop de                                        ; $63f2: $d1
    ld a, d                                       ; $63f3: $7a
    ld a, e                                       ; $63f4: $7b
    add b                                         ; $63f5: $80
    dec b                                         ; $63f6: $05
    inc bc                                        ; $63f7: $03
    ld bc, $0303                                  ; $63f8: $01 $03 $03
    ld bc, $0303                                  ; $63fb: $01 $03 $03
    inc bc                                        ; $63fe: $03
    add d                                         ; $63ff: $82
    add d                                         ; $6400: $82
    ld bc, $8203                                  ; $6401: $01 $03 $82
    add d                                         ; $6404: $82
    adc d                                         ; $6405: $8a
    ld bc, $d2f5                                  ; $6406: $01 $f5 $d2
    db $d3                                        ; $6409: $d3
    call nc, $d5f6                                ; $640a: $d4 $f6 $d5
    sub $d7                                       ; $640d: $d6 $d7
    ret c                                         ; $640f: $d8

    reti                                          ; $6410: $d9


    jp c, $dcdb                                   ; $6411: $da $db $dc

    db $dd                                        ; $6414: $dd
    sbc $ee                                       ; $6415: $de $ee
    add d                                         ; $6417: $82
    add d                                         ; $6418: $82
    add d                                         ; $6419: $82
    add d                                         ; $641a: $82
    add d                                         ; $641b: $82
    add d                                         ; $641c: $82
    add d                                         ; $641d: $82
    add d                                         ; $641e: $82
    add d                                         ; $641f: $82
    add d                                         ; $6420: $82
    add d                                         ; $6421: $82
    add d                                         ; $6422: $82
    add d                                         ; $6423: $82
    add d                                         ; $6424: $82
    add d                                         ; $6425: $82
    add d                                         ; $6426: $82
    pop de                                        ; $6427: $d1
    ld c, [hl]                                    ; $6428: $4e
    ld c, l                                       ; $6429: $4d
    ld d, d                                       ; $642a: $52
    pop de                                        ; $642b: $d1
    pop de                                        ; $642c: $d1
    pop de                                        ; $642d: $d1
    ld c, d                                       ; $642e: $4a
    pop de                                        ; $642f: $d1
    pop de                                        ; $6430: $d1
    ldh [$d1], a                                  ; $6431: $e0 $d1
    rst $28                                       ; $6433: $ef
    db $e4                                        ; $6434: $e4
    db $eb                                        ; $6435: $eb
    db $e4                                        ; $6436: $e4
    inc bc                                        ; $6437: $03
    ld h, e                                       ; $6438: $63
    ld h, e                                       ; $6439: $63
    inc bc                                        ; $643a: $03
    inc bc                                        ; $643b: $03
    inc bc                                        ; $643c: $03
    inc bc                                        ; $643d: $03
    ld h, e                                       ; $643e: $63
    inc bc                                        ; $643f: $03
    inc bc                                        ; $6440: $03
    add d                                         ; $6441: $82
    inc bc                                        ; $6442: $03
    add d                                         ; $6443: $82
    add d                                         ; $6444: $82
    add d                                         ; $6445: $82
    and d                                         ; $6446: $a2
    ld h, h                                       ; $6447: $64
    ld h, l                                       ; $6448: $65
    ld d, c                                       ; $6449: $51
    ld d, d                                       ; $644a: $52
    ld c, c                                       ; $644b: $49
    ld d, l                                       ; $644c: $55
    ld l, h                                       ; $644d: $6c
    ld d, a                                       ; $644e: $57
    pop de                                        ; $644f: $d1
    ld e, h                                       ; $6450: $5c
    ld e, l                                       ; $6451: $5d
    ld e, [hl]                                    ; $6452: $5e
    ld hl, sp-$07                                 ; $6453: $f8 $f9
    pop de                                        ; $6455: $d1
    pop de                                        ; $6456: $d1
    inc bc                                        ; $6457: $03
    inc bc                                        ; $6458: $03
    inc bc                                        ; $6459: $03
    inc bc                                        ; $645a: $03
    ld h, e                                       ; $645b: $63
    inc bc                                        ; $645c: $03
    inc bc                                        ; $645d: $03
    inc bc                                        ; $645e: $03
    inc bc                                        ; $645f: $03
    ld b, e                                       ; $6460: $43
    ld b, e                                       ; $6461: $43
    ld b, e                                       ; $6462: $43
    ld bc, $0301                                  ; $6463: $01 $01 $03
    inc bc                                        ; $6466: $03
    ld h, h                                       ; $6467: $64
    ld h, l                                       ; $6468: $65
    ld d, c                                       ; $6469: $51
    ld d, d                                       ; $646a: $52
    ld e, a                                       ; $646b: $5f
    ld h, b                                       ; $646c: $60
    ld l, h                                       ; $646d: $6c
    ld d, a                                       ; $646e: $57
    ld e, b                                       ; $646f: $58
    ld e, c                                       ; $6470: $59
    ld e, d                                       ; $6471: $5a
    ld e, e                                       ; $6472: $5b
    ld e, h                                       ; $6473: $5c
    ld e, l                                       ; $6474: $5d
    ld e, [hl]                                    ; $6475: $5e
    ld h, d                                       ; $6476: $62
    inc bc                                        ; $6477: $03
    inc bc                                        ; $6478: $03
    inc bc                                        ; $6479: $03
    inc bc                                        ; $647a: $03
    inc bc                                        ; $647b: $03
    inc bc                                        ; $647c: $03
    inc bc                                        ; $647d: $03
    inc bc                                        ; $647e: $03
    inc bc                                        ; $647f: $03
    inc bc                                        ; $6480: $03
    inc bc                                        ; $6481: $03
    inc bc                                        ; $6482: $03
    ld b, e                                       ; $6483: $43
    ld b, e                                       ; $6484: $43
    ld b, e                                       ; $6485: $43
    inc bc                                        ; $6486: $03
    pop hl                                        ; $6487: $e1
    ld [c], a                                     ; $6488: $e2
    rst $20                                       ; $6489: $e7
    ld a, [c]                                     ; $648a: $f2
    push hl                                       ; $648b: $e5
    and $e9                                       ; $648c: $e6 $e9
    db $f4                                        ; $648e: $f4
    pop de                                        ; $648f: $d1
    pop de                                        ; $6490: $d1
    rst $30                                       ; $6491: $f7
    pop de                                        ; $6492: $d1
    pop de                                        ; $6493: $d1
    pop de                                        ; $6494: $d1
    pop de                                        ; $6495: $d1
    pop de                                        ; $6496: $d1
    add d                                         ; $6497: $82
    add d                                         ; $6498: $82
    add d                                         ; $6499: $82
    add d                                         ; $649a: $82
    add d                                         ; $649b: $82
    add d                                         ; $649c: $82
    add d                                         ; $649d: $82
    add d                                         ; $649e: $82
    inc bc                                        ; $649f: $03
    inc bc                                        ; $64a0: $03
    inc bc                                        ; $64a1: $03
    inc bc                                        ; $64a2: $03
    inc bc                                        ; $64a3: $03
    inc bc                                        ; $64a4: $03
    inc bc                                        ; $64a5: $03
    inc bc                                        ; $64a6: $03
    ld a, [$d1fb]                                 ; $64a7: $fa $fb $d1
    dec bc                                        ; $64aa: $0b
    pop de                                        ; $64ab: $d1
    pop de                                        ; $64ac: $d1
    pop de                                        ; $64ad: $d1
    pop de                                        ; $64ae: $d1
    pop de                                        ; $64af: $d1
    pop de                                        ; $64b0: $d1
    pop de                                        ; $64b1: $d1
    pop de                                        ; $64b2: $d1
    rst $28                                       ; $64b3: $ef
    pop de                                        ; $64b4: $d1
    pop de                                        ; $64b5: $d1
    pop de                                        ; $64b6: $d1
    ld bc, $0301                                  ; $64b7: $01 $01 $03
    ld bc, $0303                                  ; $64ba: $01 $03 $03
    inc bc                                        ; $64bd: $03
    inc bc                                        ; $64be: $03
    inc bc                                        ; $64bf: $03
    inc bc                                        ; $64c0: $03
    inc bc                                        ; $64c1: $03
    inc bc                                        ; $64c2: $03
    add d                                         ; $64c3: $82
    inc bc                                        ; $64c4: $03
    inc bc                                        ; $64c5: $03
    inc bc                                        ; $64c6: $03
    pop de                                        ; $64c7: $d1
    pop de                                        ; $64c8: $d1
    pop de                                        ; $64c9: $d1
    ldh [$d1], a                                  ; $64ca: $e0 $d1
    pop de                                        ; $64cc: $d1
    db $e4                                        ; $64cd: $e4
    db $eb                                        ; $64ce: $eb
    add hl, bc                                    ; $64cf: $09
    ld a, [bc]                                    ; $64d0: $0a
    jp nc, $d1d3                                  ; $64d1: $d2 $d3 $d1

    pop de                                        ; $64d4: $d1
    push de                                       ; $64d5: $d5
    sub $03                                       ; $64d6: $d6 $03
    inc bc                                        ; $64d8: $03
    inc bc                                        ; $64d9: $03
    add d                                         ; $64da: $82
    inc bc                                        ; $64db: $03
    inc bc                                        ; $64dc: $03
    add d                                         ; $64dd: $82
    add d                                         ; $64de: $82
    ld bc, $8201                                  ; $64df: $01 $01 $82
    add d                                         ; $64e2: $82
    inc bc                                        ; $64e3: $03
    inc bc                                        ; $64e4: $03
    add d                                         ; $64e5: $82
    add d                                         ; $64e6: $82
    pop de                                        ; $64e7: $d1
    pop de                                        ; $64e8: $d1
    pop de                                        ; $64e9: $d1
    pop de                                        ; $64ea: $d1
    pop de                                        ; $64eb: $d1
    rst $38                                       ; $64ec: $ff
    pop de                                        ; $64ed: $d1
    pop de                                        ; $64ee: $d1
    pop de                                        ; $64ef: $d1
    dec b                                         ; $64f0: $05
    cp $ff                                        ; $64f1: $fe $ff
    pop de                                        ; $64f3: $d1
    db $fd                                        ; $64f4: $fd
    nop                                           ; $64f5: $00
    dec b                                         ; $64f6: $05
    inc bc                                        ; $64f7: $03
    inc bc                                        ; $64f8: $03
    inc bc                                        ; $64f9: $03
    inc bc                                        ; $64fa: $03
    inc bc                                        ; $64fb: $03
    ld bc, $0303                                  ; $64fc: $01 $03 $03
    inc bc                                        ; $64ff: $03
    ld bc, $0101                                  ; $6500: $01 $01 $01
    inc bc                                        ; $6503: $03
    ld bc, $0101                                  ; $6504: $01 $01 $01
    pop hl                                        ; $6507: $e1
    ld [c], a                                     ; $6508: $e2
    rst $20                                       ; $6509: $e7
    ld a, [c]                                     ; $650a: $f2
    push hl                                       ; $650b: $e5
    and $e9                                       ; $650c: $e6 $e9
    db $f4                                        ; $650e: $f4
    pop de                                        ; $650f: $d1
    pop de                                        ; $6510: $d1
    rst $30                                       ; $6511: $f7
    pop de                                        ; $6512: $d1
    cp $d1                                        ; $6513: $fe $d1
    pop de                                        ; $6515: $d1
    dec bc                                        ; $6516: $0b
    add d                                         ; $6517: $82
    add d                                         ; $6518: $82
    add d                                         ; $6519: $82
    add d                                         ; $651a: $82
    add d                                         ; $651b: $82
    add d                                         ; $651c: $82
    add d                                         ; $651d: $82
    add d                                         ; $651e: $82
    inc bc                                        ; $651f: $03
    inc bc                                        ; $6520: $03
    inc bc                                        ; $6521: $03
    inc bc                                        ; $6522: $03
    ld bc, $0303                                  ; $6523: $01 $03 $03
    ld bc, $0bf5                                  ; $6526: $01 $f5 $0b
    pop de                                        ; $6529: $d1
    pop de                                        ; $652a: $d1
    or $d1                                        ; $652b: $f6 $d1
    pop de                                        ; $652d: $d1
    pop de                                        ; $652e: $d1
    ld hl, sp-$07                                 ; $652f: $f8 $f9
    pop de                                        ; $6531: $d1
    dec bc                                        ; $6532: $0b
    ld a, [$f8fb]                                 ; $6533: $fa $fb $f8
    ld sp, hl                                     ; $6536: $f9
    add d                                         ; $6537: $82
    ld bc, $0303                                  ; $6538: $01 $03 $03
    add d                                         ; $653b: $82
    inc bc                                        ; $653c: $03
    inc bc                                        ; $653d: $03
    inc bc                                        ; $653e: $03
    ld bc, $0301                                  ; $653f: $01 $01 $03
    ld bc, $0101                                  ; $6542: $01 $01 $01
    ld bc, $0b01                                  ; $6545: $01 $01 $0b
    rst $38                                       ; $6548: $ff
    inc bc                                        ; $6549: $03
    inc b                                         ; $654a: $04
    pop de                                        ; $654b: $d1
    dec b                                         ; $654c: $05
    ld b, $02                                     ; $654d: $06 $02
    db $fc                                        ; $654f: $fc
    inc b                                         ; $6550: $04
    nop                                           ; $6551: $00
    ld bc, $0206                                  ; $6552: $01 $06 $02
    inc bc                                        ; $6555: $03
    inc b                                         ; $6556: $04
    ld bc, $0101                                  ; $6557: $01 $01 $01
    ld bc, $0103                                  ; $655a: $01 $03 $01
    ld bc, $0101                                  ; $655d: $01 $01 $01
    ld bc, $0101                                  ; $6560: $01 $01 $01
    ld bc, $0101                                  ; $6563: $01 $01 $01
    ld bc, $0507                                  ; $6566: $01 $07 $05
    cp $d1                                        ; $6569: $fe $d1
    inc bc                                        ; $656b: $03
    inc b                                         ; $656c: $04
    nop                                           ; $656d: $00
    ld bc, $0206                                  ; $656e: $01 $06 $02
    inc bc                                        ; $6571: $03
    inc b                                         ; $6572: $04
    rlca                                          ; $6573: $07
    ld bc, $fffe                                  ; $6574: $01 $fe $ff
    ld bc, $0101                                  ; $6577: $01 $01 $01
    inc bc                                        ; $657a: $03
    ld bc, $0101                                  ; $657b: $01 $01 $01
    ld bc, $0101                                  ; $657e: $01 $01 $01
    ld bc, $0101                                  ; $6581: $01 $01 $01
    ld bc, $0101                                  ; $6584: $01 $01 $01
    dec bc                                        ; $6587: $0b
    pop de                                        ; $6588: $d1
    ld a, [$06fb]                                 ; $6589: $fa $fb $06
    ld [bc], a                                    ; $658c: $02
    inc bc                                        ; $658d: $03
    inc b                                         ; $658e: $04
    rlca                                          ; $658f: $07
    ld bc, $fffe                                  ; $6590: $01 $fe $ff
    db $fc                                        ; $6593: $fc
    db $fd                                        ; $6594: $fd
    pop de                                        ; $6595: $d1
    pop de                                        ; $6596: $d1
    ld bc, $0103                                  ; $6597: $01 $03 $01
    ld bc, $0101                                  ; $659a: $01 $01 $01
    ld bc, $0101                                  ; $659d: $01 $01 $01
    ld bc, $0101                                  ; $65a0: $01 $01 $01
    ld bc, $0301                                  ; $65a3: $01 $01 $03
    inc bc                                        ; $65a6: $03
    ld hl, sp-$07                                 ; $65a7: $f8 $f9
    pop de                                        ; $65a9: $d1
    rst $30                                       ; $65aa: $f7
    ld a, [$fefb]                                 ; $65ab: $fa $fb $fe
    pop de                                        ; $65ae: $d1
    db $fc                                        ; $65af: $fc
    pop de                                        ; $65b0: $d1
    pop de                                        ; $65b1: $d1
    pop de                                        ; $65b2: $d1
    ld hl, sp-$07                                 ; $65b3: $f8 $f9
    pop de                                        ; $65b5: $d1
    pop de                                        ; $65b6: $d1
    ld bc, $0301                                  ; $65b7: $01 $01 $03
    inc bc                                        ; $65ba: $03
    ld bc, $0101                                  ; $65bb: $01 $01 $01
    inc bc                                        ; $65be: $03
    ld bc, $0303                                  ; $65bf: $01 $03 $03
    inc bc                                        ; $65c2: $03
    ld bc, $0301                                  ; $65c3: $01 $01 $03
    inc bc                                        ; $65c6: $03
    ld h, h                                       ; $65c7: $64
    ld h, l                                       ; $65c8: $65
    ld d, c                                       ; $65c9: $51
    ld d, d                                       ; $65ca: $52
    ld d, h                                       ; $65cb: $54
    ld d, l                                       ; $65cc: $55
    ld l, h                                       ; $65cd: $6c
    ld d, a                                       ; $65ce: $57
    ld e, b                                       ; $65cf: $58
    ld e, c                                       ; $65d0: $59
    ld e, d                                       ; $65d1: $5a
    ld e, e                                       ; $65d2: $5b
    ld c, e                                       ; $65d3: $4b
    ld e, [hl]                                    ; $65d4: $5e
    ld e, l                                       ; $65d5: $5d
    ld e, h                                       ; $65d6: $5c
    inc bc                                        ; $65d7: $03
    inc bc                                        ; $65d8: $03
    inc bc                                        ; $65d9: $03
    inc bc                                        ; $65da: $03
    inc bc                                        ; $65db: $03
    inc bc                                        ; $65dc: $03
    inc bc                                        ; $65dd: $03
    inc bc                                        ; $65de: $03
    inc bc                                        ; $65df: $03
    inc bc                                        ; $65e0: $03
    inc bc                                        ; $65e1: $03
    inc bc                                        ; $65e2: $03
    inc bc                                        ; $65e3: $03
    ld h, e                                       ; $65e4: $63
    ld h, e                                       ; $65e5: $63
    ld h, e                                       ; $65e6: $63
    ld e, a                                       ; $65e7: $5f
    ld h, b                                       ; $65e8: $60
    ld d, c                                       ; $65e9: $51
    ld d, d                                       ; $65ea: $52
    ld d, h                                       ; $65eb: $54
    ld d, l                                       ; $65ec: $55
    ld l, h                                       ; $65ed: $6c
    ld l, l                                       ; $65ee: $6d
    ld e, [hl]                                    ; $65ef: $5e
    ld e, l                                       ; $65f0: $5d
    ld e, h                                       ; $65f1: $5c
    pop de                                        ; $65f2: $d1
    ldh [$d1], a                                  ; $65f3: $e0 $d1
    pop de                                        ; $65f5: $d1
    pop de                                        ; $65f6: $d1
    inc bc                                        ; $65f7: $03
    inc bc                                        ; $65f8: $03
    inc bc                                        ; $65f9: $03
    inc bc                                        ; $65fa: $03
    inc bc                                        ; $65fb: $03
    inc bc                                        ; $65fc: $03
    inc bc                                        ; $65fd: $03
    ld b, e                                       ; $65fe: $43
    ld h, e                                       ; $65ff: $63
    ld h, e                                       ; $6600: $63
    ld h, e                                       ; $6601: $63
    inc bc                                        ; $6602: $03
    add d                                         ; $6603: $82
    inc bc                                        ; $6604: $03
    inc bc                                        ; $6605: $03
    inc bc                                        ; $6606: $03
    sub b                                         ; $6607: $90
    ldh [$fa], a                                  ; $6608: $e0 $fa
    ei                                            ; $660a: $fb
    db $e4                                        ; $660b: $e4
    db $eb                                        ; $660c: $eb
    db $e4                                        ; $660d: $e4
    pop de                                        ; $660e: $d1
    jp nc, $d4d3                                  ; $660f: $d2 $d3 $d4

    pop de                                        ; $6612: $d1
    push de                                       ; $6613: $d5
    sub $d7                                       ; $6614: $d6 $d7
    pop de                                        ; $6616: $d1
    ld c, e                                       ; $6617: $4b
    add d                                         ; $6618: $82
    ld bc, $8201                                  ; $6619: $01 $01 $82
    add d                                         ; $661c: $82
    and d                                         ; $661d: $a2
    inc bc                                        ; $661e: $03
    add d                                         ; $661f: $82
    add d                                         ; $6620: $82
    add d                                         ; $6621: $82
    inc bc                                        ; $6622: $03
    add d                                         ; $6623: $82
    add d                                         ; $6624: $82
    add d                                         ; $6625: $82
    inc bc                                        ; $6626: $03
    pop de                                        ; $6627: $d1
    reti                                          ; $6628: $d9


    jp c, $dcdb                                   ; $6629: $da $db $dc

    db $dd                                        ; $662c: $dd
    sbc $ee                                       ; $662d: $de $ee
    pop hl                                        ; $662f: $e1
    ld [c], a                                     ; $6630: $e2
    rst $20                                       ; $6631: $e7
    ld a, [c]                                     ; $6632: $f2
    push hl                                       ; $6633: $e5
    and $e9                                       ; $6634: $e6 $e9
    db $f4                                        ; $6636: $f4
    inc bc                                        ; $6637: $03
    add d                                         ; $6638: $82
    add d                                         ; $6639: $82
    add d                                         ; $663a: $82
    add d                                         ; $663b: $82
    add d                                         ; $663c: $82
    add d                                         ; $663d: $82
    add d                                         ; $663e: $82
    add d                                         ; $663f: $82
    add d                                         ; $6640: $82
    add d                                         ; $6641: $82
    add d                                         ; $6642: $82
    add d                                         ; $6643: $82
    add d                                         ; $6644: $82
    add d                                         ; $6645: $82
    add d                                         ; $6646: $82
    pop de                                        ; $6647: $d1
    pop de                                        ; $6648: $d1
    pop de                                        ; $6649: $d1
    db $e4                                        ; $664a: $e4
    db $e4                                        ; $664b: $e4
    pop de                                        ; $664c: $d1
    ld h, e                                       ; $664d: $63
    jp nc, $d1d4                                  ; $664e: $d2 $d4 $d1

    pop de                                        ; $6651: $d1
    push de                                       ; $6652: $d5
    rst $10                                       ; $6653: $d7
    pop de                                        ; $6654: $d1
    ret c                                         ; $6655: $d8

    reti                                          ; $6656: $d9


    inc bc                                        ; $6657: $03
    inc bc                                        ; $6658: $03
    inc bc                                        ; $6659: $03
    add d                                         ; $665a: $82
    and d                                         ; $665b: $a2
    inc bc                                        ; $665c: $03
    rlca                                          ; $665d: $07
    add d                                         ; $665e: $82
    add d                                         ; $665f: $82
    inc bc                                        ; $6660: $03
    inc bc                                        ; $6661: $03
    add d                                         ; $6662: $82
    add d                                         ; $6663: $82
    inc bc                                        ; $6664: $03
    add d                                         ; $6665: $82
    add d                                         ; $6666: $82
    db $eb                                        ; $6667: $eb
    db $e4                                        ; $6668: $e4
    pop de                                        ; $6669: $d1
    ret c                                         ; $666a: $d8

    db $d3                                        ; $666b: $d3
    call nc, $dcd1                                ; $666c: $d4 $d1 $dc
    sub $d7                                       ; $666f: $d6 $d7
    pop de                                        ; $6671: $d1
    pop hl                                        ; $6672: $e1
    jp c, $d1db                                   ; $6673: $da $db $d1

    push hl                                       ; $6676: $e5
    add d                                         ; $6677: $82
    and d                                         ; $6678: $a2
    inc bc                                        ; $6679: $03
    add d                                         ; $667a: $82
    add d                                         ; $667b: $82
    add d                                         ; $667c: $82
    inc bc                                        ; $667d: $03
    add d                                         ; $667e: $82
    add d                                         ; $667f: $82
    add d                                         ; $6680: $82
    inc bc                                        ; $6681: $03
    add d                                         ; $6682: $82
    add d                                         ; $6683: $82
    add d                                         ; $6684: $82
    inc bc                                        ; $6685: $03
    add d                                         ; $6686: $82
    reti                                          ; $6687: $d9


    jp c, $d1db                                   ; $6688: $da $db $d1

    db $dd                                        ; $668b: $dd
    sbc $ee                                       ; $668c: $de $ee
    rst $28                                       ; $668e: $ef
    ld [c], a                                     ; $668f: $e2
    rst $20                                       ; $6690: $e7
    ld a, [c]                                     ; $6691: $f2
    push af                                       ; $6692: $f5
    and $e9                                       ; $6693: $e6 $e9
    db $f4                                        ; $6695: $f4
    or $82                                        ; $6696: $f6 $82
    add d                                         ; $6698: $82
    add d                                         ; $6699: $82
    inc bc                                        ; $669a: $03
    add d                                         ; $669b: $82
    add d                                         ; $669c: $82
    add d                                         ; $669d: $82
    add d                                         ; $669e: $82
    add d                                         ; $669f: $82
    add d                                         ; $66a0: $82
    add d                                         ; $66a1: $82
    add d                                         ; $66a2: $82
    add d                                         ; $66a3: $82
    add d                                         ; $66a4: $82
    add d                                         ; $66a5: $82
    add d                                         ; $66a6: $82
    pop de                                        ; $66a7: $d1
    pop de                                        ; $66a8: $d1
    rst $30                                       ; $66a9: $f7
    pop de                                        ; $66aa: $d1
    ld hl, sp-$07                                 ; $66ab: $f8 $f9
    pop de                                        ; $66ad: $d1
    dec bc                                        ; $66ae: $0b
    ld a, [$fefb]                                 ; $66af: $fa $fb $fe
    rst $38                                       ; $66b2: $ff
    inc bc                                        ; $66b3: $03
    db $fd                                        ; $66b4: $fd
    nop                                           ; $66b5: $00
    dec b                                         ; $66b6: $05
    inc bc                                        ; $66b7: $03
    inc bc                                        ; $66b8: $03
    inc bc                                        ; $66b9: $03
    inc bc                                        ; $66ba: $03
    ld bc, $0301                                  ; $66bb: $01 $01 $03
    ld bc, $0101                                  ; $66be: $01 $01 $01
    ld bc, $0101                                  ; $66c1: $01 $01 $01
    ld bc, $0101                                  ; $66c4: $01 $01 $01
    db $db                                        ; $66c7: $db
    pop de                                        ; $66c8: $d1
    call c, $eedd                                 ; $66c9: $dc $dd $ee
    rst $28                                       ; $66cc: $ef
    pop hl                                        ; $66cd: $e1
    ld [c], a                                     ; $66ce: $e2
    ld a, [c]                                     ; $66cf: $f2
    push af                                       ; $66d0: $f5
    push hl                                       ; $66d1: $e5
    and $f4                                       ; $66d2: $e6 $f4
    or $d1                                        ; $66d4: $f6 $d1
    pop de                                        ; $66d6: $d1
    add d                                         ; $66d7: $82
    inc bc                                        ; $66d8: $03
    add d                                         ; $66d9: $82
    add d                                         ; $66da: $82
    add d                                         ; $66db: $82
    add d                                         ; $66dc: $82
    add d                                         ; $66dd: $82
    add d                                         ; $66de: $82
    add d                                         ; $66df: $82
    add d                                         ; $66e0: $82
    add d                                         ; $66e1: $82
    add d                                         ; $66e2: $82
    add d                                         ; $66e3: $82
    add d                                         ; $66e4: $82
    inc bc                                        ; $66e5: $03
    inc bc                                        ; $66e6: $03
    sbc $ee                                       ; $66e7: $de $ee
    rst $28                                       ; $66e9: $ef
    pop de                                        ; $66ea: $d1
    rst $20                                       ; $66eb: $e7
    ld a, [c]                                     ; $66ec: $f2
    push af                                       ; $66ed: $f5
    ld hl, sp-$17                                 ; $66ee: $f8 $e9
    db $f4                                        ; $66f0: $f4
    or $fa                                        ; $66f1: $f6 $fa
    rst $30                                       ; $66f3: $f7
    pop de                                        ; $66f4: $d1
    pop de                                        ; $66f5: $d1
    pop de                                        ; $66f6: $d1
    add d                                         ; $66f7: $82
    add d                                         ; $66f8: $82
    add d                                         ; $66f9: $82
    inc bc                                        ; $66fa: $03
    add d                                         ; $66fb: $82
    add d                                         ; $66fc: $82
    add d                                         ; $66fd: $82
    ld bc, $8282                                  ; $66fe: $01 $82 $82
    add d                                         ; $6701: $82
    ld bc, $0303                                  ; $6702: $01 $03 $03
    inc bc                                        ; $6705: $03
    inc bc                                        ; $6706: $03
    db $fc                                        ; $6707: $fc
    rst $30                                       ; $6708: $f7
    nop                                           ; $6709: $00
    ld bc, $fff9                                  ; $670a: $01 $f9 $ff
    db $fc                                        ; $670d: $fc
    inc b                                         ; $670e: $04
    ei                                            ; $670f: $fb
    dec b                                         ; $6710: $05
    ld b, $02                                     ; $6711: $06 $02
    pop de                                        ; $6713: $d1
    db $fd                                        ; $6714: $fd
    rlca                                          ; $6715: $07
    dec b                                         ; $6716: $05
    ld bc, $0103                                  ; $6717: $01 $03 $01
    ld bc, $0101                                  ; $671a: $01 $01 $01
    ld bc, $0101                                  ; $671d: $01 $01 $01
    ld bc, $0101                                  ; $6720: $01 $01 $01
    inc bc                                        ; $6723: $03
    ld bc, $0101                                  ; $6724: $01 $01 $01
    ld b, $02                                     ; $6727: $06 $02
    inc bc                                        ; $6729: $03
    inc b                                         ; $672a: $04
    nop                                           ; $672b: $00
    ld bc, $0206                                  ; $672c: $01 $06 $02
    inc bc                                        ; $672f: $03
    db $fd                                        ; $6730: $fd
    rlca                                          ; $6731: $07
    dec b                                         ; $6732: $05
    cp $ff                                        ; $6733: $fe $ff
    pop de                                        ; $6735: $d1
    pop de                                        ; $6736: $d1
    ld bc, $0101                                  ; $6737: $01 $01 $01
    ld bc, $0101                                  ; $673a: $01 $01 $01
    ld bc, $0101                                  ; $673d: $01 $01 $01
    ld bc, $0101                                  ; $6740: $01 $01 $01
    ld bc, $0301                                  ; $6743: $01 $01 $03
    inc bc                                        ; $6746: $03
    pop de                                        ; $6747: $d1
    pop de                                        ; $6748: $d1
    ld c, $08                                     ; $6749: $0e $08
    pop de                                        ; $674b: $d1
    pop de                                        ; $674c: $d1
    ld de, $d114                                  ; $674d: $11 $14 $d1
    pop de                                        ; $6750: $d1
    pop de                                        ; $6751: $d1
    db $10                                        ; $6752: $10
    pop de                                        ; $6753: $d1
    add hl, bc                                    ; $6754: $09
    ld a, [bc]                                    ; $6755: $0a
    pop de                                        ; $6756: $d1
    inc bc                                        ; $6757: $03
    inc bc                                        ; $6758: $03
    ld bc, $0301                                  ; $6759: $01 $01 $03
    inc bc                                        ; $675c: $03
    ld bc, $0301                                  ; $675d: $01 $01 $03
    inc bc                                        ; $6760: $03
    inc bc                                        ; $6761: $03
    ld bc, $0103                                  ; $6762: $01 $03 $01
    ld bc, $d103                                  ; $6765: $01 $03 $d1
    pop de                                        ; $6768: $d1
    pop de                                        ; $6769: $d1
    pop de                                        ; $676a: $d1
    dec d                                         ; $676b: $15
    ld [$100c], sp                                ; $676c: $08 $0c $10
    inc de                                        ; $676f: $13
    inc d                                         ; $6770: $14
    dec d                                         ; $6771: $15
    ld [$120c], sp                                ; $6772: $08 $0c $12
    inc de                                        ; $6775: $13
    inc d                                         ; $6776: $14
    inc bc                                        ; $6777: $03
    inc bc                                        ; $6778: $03
    inc bc                                        ; $6779: $03
    inc bc                                        ; $677a: $03
    ld bc, $0101                                  ; $677b: $01 $01 $01
    ld bc, $0101                                  ; $677e: $01 $01 $01
    ld bc, $0101                                  ; $6781: $01 $01 $01
    ld bc, $0101                                  ; $6784: $01 $01 $01
    ld hl, sp-$07                                 ; $6787: $f8 $f9
    pop de                                        ; $6789: $d1
    pop de                                        ; $678a: $d1
    ld a, [$d1fb]                                 ; $678b: $fa $fb $d1
    pop de                                        ; $678e: $d1
    inc c                                         ; $678f: $0c
    ld [de], a                                    ; $6790: $12
    inc de                                        ; $6791: $13
    inc d                                         ; $6792: $14
    dec d                                         ; $6793: $15
    rrca                                          ; $6794: $0f
    ld d, $12                                     ; $6795: $16 $12
    ld bc, $0301                                  ; $6797: $01 $01 $03
    inc bc                                        ; $679a: $03
    ld bc, $0301                                  ; $679b: $01 $01 $03
    inc bc                                        ; $679e: $03
    ld bc, $0101                                  ; $679f: $01 $01 $01
    ld bc, $0101                                  ; $67a2: $01 $01 $01
    ld bc, $d101                                  ; $67a5: $01 $01 $d1
    pop de                                        ; $67a8: $d1
    ld c, $08                                     ; $67a9: $0e $08
    inc c                                         ; $67ab: $0c
    ld [de], a                                    ; $67ac: $12
    inc de                                        ; $67ad: $13
    inc d                                         ; $67ae: $14
    dec d                                         ; $67af: $15
    rrca                                          ; $67b0: $0f
    inc c                                         ; $67b1: $0c
    db $10                                        ; $67b2: $10
    ld de, $d10d                                  ; $67b3: $11 $0d $d1
    pop de                                        ; $67b6: $d1
    inc bc                                        ; $67b7: $03
    inc bc                                        ; $67b8: $03
    ld bc, $0101                                  ; $67b9: $01 $01 $01
    ld bc, $0101                                  ; $67bc: $01 $01 $01
    ld bc, $0101                                  ; $67bf: $01 $01 $01
    ld bc, $0101                                  ; $67c2: $01 $01 $01
    inc bc                                        ; $67c5: $03
    inc bc                                        ; $67c6: $03
    pop de                                        ; $67c7: $d1
    pop de                                        ; $67c8: $d1
    pop de                                        ; $67c9: $d1
    pop de                                        ; $67ca: $d1
    pop de                                        ; $67cb: $d1
    pop de                                        ; $67cc: $d1
    pop de                                        ; $67cd: $d1
    pop de                                        ; $67ce: $d1
    pop de                                        ; $67cf: $d1
    dec bc                                        ; $67d0: $0b
    pop de                                        ; $67d1: $d1
    pop de                                        ; $67d2: $d1
    pop de                                        ; $67d3: $d1
    pop de                                        ; $67d4: $d1
    pop de                                        ; $67d5: $d1
    pop de                                        ; $67d6: $d1
    inc bc                                        ; $67d7: $03
    inc bc                                        ; $67d8: $03
    inc bc                                        ; $67d9: $03
    inc bc                                        ; $67da: $03
    inc bc                                        ; $67db: $03
    inc bc                                        ; $67dc: $03
    inc bc                                        ; $67dd: $03
    inc bc                                        ; $67de: $03
    inc bc                                        ; $67df: $03
    ld bc, $0303                                  ; $67e0: $01 $03 $03
    inc bc                                        ; $67e3: $03
    inc bc                                        ; $67e4: $03
    inc bc                                        ; $67e5: $03
    inc bc                                        ; $67e6: $03
    pop de                                        ; $67e7: $d1
    db $fd                                        ; $67e8: $fd
    rlca                                          ; $67e9: $07
    dec b                                         ; $67ea: $05
    pop de                                        ; $67eb: $d1
    pop de                                        ; $67ec: $d1
    pop de                                        ; $67ed: $d1
    db $fd                                        ; $67ee: $fd
    pop de                                        ; $67ef: $d1
    dec c                                         ; $67f0: $0d
    ld c, $08                                     ; $67f1: $0e $08
    pop de                                        ; $67f3: $d1
    pop de                                        ; $67f4: $d1
    ld de, $030d                                  ; $67f5: $11 $0d $03
    ld bc, $0101                                  ; $67f8: $01 $01 $01
    inc bc                                        ; $67fb: $03
    inc bc                                        ; $67fc: $03
    inc bc                                        ; $67fd: $03
    ld bc, $0103                                  ; $67fe: $01 $03 $01
    ld bc, $0301                                  ; $6801: $01 $01 $03
    inc bc                                        ; $6804: $03
    ld bc, $0601                                  ; $6805: $01 $01 $06
    ld [bc], a                                    ; $6808: $02
    inc bc                                        ; $6809: $03
    inc b                                         ; $680a: $04
    rlca                                          ; $680b: $07
    ld bc, $02fe                                  ; $680c: $01 $fe $02
    pop de                                        ; $680f: $d1
    pop de                                        ; $6810: $d1
    rlca                                          ; $6811: $07
    dec b                                         ; $6812: $05
    dec d                                         ; $6813: $15
    rrca                                          ; $6814: $0f
    inc c                                         ; $6815: $0c
    pop de                                        ; $6816: $d1
    ld bc, $0101                                  ; $6817: $01 $01 $01
    ld bc, $0101                                  ; $681a: $01 $01 $01
    ld bc, $0301                                  ; $681d: $01 $01 $03
    inc bc                                        ; $6820: $03
    ld bc, $0101                                  ; $6821: $01 $01 $01
    ld bc, $0301                                  ; $6824: $01 $01 $03
    pop de                                        ; $6827: $d1
    pop de                                        ; $6828: $d1
    dec bc                                        ; $6829: $0b
    pop de                                        ; $682a: $d1
    pop de                                        ; $682b: $d1
    dec b                                         ; $682c: $05
    ld b, $ff                                     ; $682d: $06 $ff
    db $fc                                        ; $682f: $fc
    inc b                                         ; $6830: $04
    nop                                           ; $6831: $00
    ld bc, $0206                                  ; $6832: $01 $06 $02
    inc bc                                        ; $6835: $03
    inc b                                         ; $6836: $04
    inc bc                                        ; $6837: $03
    inc bc                                        ; $6838: $03
    ld bc, $0303                                  ; $6839: $01 $03 $03
    ld bc, $0101                                  ; $683c: $01 $01 $01
    ld bc, $0101                                  ; $683f: $01 $01 $01
    ld bc, $0101                                  ; $6842: $01 $01 $01
    ld bc, $d101                                  ; $6845: $01 $01 $d1
    dec b                                         ; $6848: $05
    cp $ff                                        ; $6849: $fe $ff
    inc bc                                        ; $684b: $03
    inc b                                         ; $684c: $04
    rlca                                          ; $684d: $07
    dec b                                         ; $684e: $05
    ld b, $ff                                     ; $684f: $06 $ff
    pop de                                        ; $6851: $d1
    db $e4                                        ; $6852: $e4
    rlca                                          ; $6853: $07
    pop de                                        ; $6854: $d1
    pop de                                        ; $6855: $d1
    jp nc, $0103                                  ; $6856: $d2 $03 $01

    ld bc, $0101                                  ; $6859: $01 $01 $01
    ld bc, $0101                                  ; $685c: $01 $01 $01
    ld bc, $0301                                  ; $685f: $01 $01 $03
    add d                                         ; $6862: $82
    ld bc, $0303                                  ; $6863: $01 $03 $03
    add d                                         ; $6866: $82
    pop de                                        ; $6867: $d1
    pop de                                        ; $6868: $d1
    pop de                                        ; $6869: $d1
    pop de                                        ; $686a: $d1
    ldh [$d1], a                                  ; $686b: $e0 $d1
    pop de                                        ; $686d: $d1
    pop de                                        ; $686e: $d1
    db $eb                                        ; $686f: $eb
    db $e4                                        ; $6870: $e4
    pop de                                        ; $6871: $d1
    pop de                                        ; $6872: $d1
    db $d3                                        ; $6873: $d3
    call nc, $d1d1                                ; $6874: $d4 $d1 $d1
    inc bc                                        ; $6877: $03
    inc bc                                        ; $6878: $03
    inc bc                                        ; $6879: $03
    inc bc                                        ; $687a: $03
    add d                                         ; $687b: $82
    inc bc                                        ; $687c: $03
    inc bc                                        ; $687d: $03
    inc bc                                        ; $687e: $03
    add d                                         ; $687f: $82
    and d                                         ; $6880: $a2
    inc bc                                        ; $6881: $03
    inc bc                                        ; $6882: $03
    add d                                         ; $6883: $82
    add d                                         ; $6884: $82
    inc bc                                        ; $6885: $03
    inc bc                                        ; $6886: $03
    ld de, $150d                                  ; $6887: $11 $0d $15
    rrca                                          ; $688a: $0f
    pop de                                        ; $688b: $d1
    pop de                                        ; $688c: $d1
    ld de, $d10d                                  ; $688d: $11 $0d $d1
    pop de                                        ; $6890: $d1
    dec bc                                        ; $6891: $0b
    db $10                                        ; $6892: $10
    pop de                                        ; $6893: $d1
    pop de                                        ; $6894: $d1
    pop de                                        ; $6895: $d1
    dec bc                                        ; $6896: $0b
    ld bc, $0101                                  ; $6897: $01 $01 $01
    ld bc, $0303                                  ; $689a: $01 $03 $03
    ld bc, $0301                                  ; $689d: $01 $01 $03
    inc bc                                        ; $68a0: $03
    ld bc, $0301                                  ; $68a1: $01 $01 $03
    inc bc                                        ; $68a4: $03
    inc bc                                        ; $68a5: $03
    ld bc, $0100                                  ; $68a6: $01 $00 $01
    cp $ff                                        ; $68a9: $fe $ff
    db $fc                                        ; $68ab: $fc
    db $fd                                        ; $68ac: $fd
    pop de                                        ; $68ad: $d1
    ld hl, sp-$2f                                 ; $68ae: $f8 $d1
    pop de                                        ; $68b0: $d1
    pop de                                        ; $68b1: $d1
    ld a, [$0dd1]                                 ; $68b2: $fa $d1 $0d
    ld c, $08                                     ; $68b5: $0e $08
    ld bc, $0101                                  ; $68b7: $01 $01 $01
    ld bc, $0101                                  ; $68ba: $01 $01 $01
    inc bc                                        ; $68bd: $03
    ld bc, $0303                                  ; $68be: $01 $03 $03
    inc bc                                        ; $68c1: $03
    ld bc, $0103                                  ; $68c2: $01 $03 $01
    ld bc, $d101                                  ; $68c5: $01 $01 $d1
    pop de                                        ; $68c8: $d1
    pop de                                        ; $68c9: $d1
    push de                                       ; $68ca: $d5
    ld sp, hl                                     ; $68cb: $f9
    pop de                                        ; $68cc: $d1
    ret c                                         ; $68cd: $d8

    reti                                          ; $68ce: $d9


    ei                                            ; $68cf: $fb
    pop de                                        ; $68d0: $d1
    call c, $d1dd                                 ; $68d1: $dc $dd $d1
    pop de                                        ; $68d4: $d1
    pop hl                                        ; $68d5: $e1
    ld [c], a                                     ; $68d6: $e2
    inc bc                                        ; $68d7: $03
    inc bc                                        ; $68d8: $03
    inc bc                                        ; $68d9: $03
    add d                                         ; $68da: $82
    ld bc, $8203                                  ; $68db: $01 $03 $82
    add d                                         ; $68de: $82
    ld bc, $8203                                  ; $68df: $01 $03 $82
    add d                                         ; $68e2: $82
    inc bc                                        ; $68e3: $03
    inc bc                                        ; $68e4: $03
    add d                                         ; $68e5: $82
    add d                                         ; $68e6: $82
    sub $d7                                       ; $68e7: $d6 $d7
    dec bc                                        ; $68e9: $0b
    pop de                                        ; $68ea: $d1
    jp c, $d1db                                   ; $68eb: $da $db $d1

    pop de                                        ; $68ee: $d1
    sbc $ee                                       ; $68ef: $de $ee
    rst $28                                       ; $68f1: $ef
    pop de                                        ; $68f2: $d1
    rst $20                                       ; $68f3: $e7
    ld a, [c]                                     ; $68f4: $f2
    push af                                       ; $68f5: $f5
    pop de                                        ; $68f6: $d1
    add d                                         ; $68f7: $82
    add d                                         ; $68f8: $82
    ld bc, $8203                                  ; $68f9: $01 $03 $82
    add d                                         ; $68fc: $82
    inc bc                                        ; $68fd: $03
    inc bc                                        ; $68fe: $03
    add d                                         ; $68ff: $82
    add d                                         ; $6900: $82
    add d                                         ; $6901: $82
    inc bc                                        ; $6902: $03
    add d                                         ; $6903: $82
    add d                                         ; $6904: $82
    add d                                         ; $6905: $82
    inc bc                                        ; $6906: $03
    pop de                                        ; $6907: $d1
    pop de                                        ; $6908: $d1
    pop de                                        ; $6909: $d1
    pop de                                        ; $690a: $d1
    pop de                                        ; $690b: $d1
    pop de                                        ; $690c: $d1
    pop de                                        ; $690d: $d1
    pop de                                        ; $690e: $d1
    pop de                                        ; $690f: $d1
    pop de                                        ; $6910: $d1
    pop de                                        ; $6911: $d1
    pop de                                        ; $6912: $d1
    pop de                                        ; $6913: $d1
    dec b                                         ; $6914: $05
    cp $ff                                        ; $6915: $fe $ff
    inc bc                                        ; $6917: $03
    inc bc                                        ; $6918: $03
    inc bc                                        ; $6919: $03
    inc bc                                        ; $691a: $03
    inc bc                                        ; $691b: $03
    inc bc                                        ; $691c: $03
    inc bc                                        ; $691d: $03
    inc bc                                        ; $691e: $03
    inc bc                                        ; $691f: $03
    inc bc                                        ; $6920: $03
    inc bc                                        ; $6921: $03
    inc bc                                        ; $6922: $03
    inc bc                                        ; $6923: $03
    ld bc, $0101                                  ; $6924: $01 $01 $01
    ld d, $12                                     ; $6927: $16 $12
    ld de, $15d1                                  ; $6929: $11 $d1 $15
    ld [$d1d1], sp                                ; $692c: $08 $d1 $d1
    pop de                                        ; $692f: $d1
    pop de                                        ; $6930: $d1
    dec bc                                        ; $6931: $0b
    pop de                                        ; $6932: $d1
    pop de                                        ; $6933: $d1
    pop de                                        ; $6934: $d1
    pop de                                        ; $6935: $d1
    dec b                                         ; $6936: $05
    ld bc, $0101                                  ; $6937: $01 $01 $01
    inc bc                                        ; $693a: $03
    ld bc, $0301                                  ; $693b: $01 $01 $03
    inc bc                                        ; $693e: $03
    inc bc                                        ; $693f: $03
    inc bc                                        ; $6940: $03
    ld bc, $0303                                  ; $6941: $01 $03 $03
    inc bc                                        ; $6944: $03
    inc bc                                        ; $6945: $03
    ld bc, $d1d1                                  ; $6946: $01 $d1 $d1
    push hl                                       ; $6949: $e5
    and $d1                                       ; $694a: $e6 $d1
    pop de                                        ; $694c: $d1
    pop de                                        ; $694d: $d1
    pop de                                        ; $694e: $d1
    pop de                                        ; $694f: $d1
    pop de                                        ; $6950: $d1
    rlca                                          ; $6951: $07
    ld bc, $02fe                                  ; $6952: $01 $fe $02
    inc bc                                        ; $6955: $03
    inc b                                         ; $6956: $04
    inc bc                                        ; $6957: $03
    inc bc                                        ; $6958: $03
    add d                                         ; $6959: $82
    add d                                         ; $695a: $82
    inc bc                                        ; $695b: $03
    inc bc                                        ; $695c: $03
    inc bc                                        ; $695d: $03
    inc bc                                        ; $695e: $03
    inc bc                                        ; $695f: $03
    inc bc                                        ; $6960: $03
    ld bc, $0101                                  ; $6961: $01 $01 $01
    ld bc, $0101                                  ; $6964: $01 $01 $01
    jp hl                                         ; $6967: $e9


Jump_08b_6968:
    db $f4                                        ; $6968: $f4
    or $ff                                        ; $6969: $f6 $ff
    rst $30                                       ; $696b: $f7
    db $fd                                        ; $696c: $fd
    rlca                                          ; $696d: $07
    ld bc, $0206                                  ; $696e: $01 $06 $02
    inc bc                                        ; $6971: $03
    inc b                                         ; $6972: $04
    nop                                           ; $6973: $00
    dec b                                         ; $6974: $05
    ld b, $ff                                     ; $6975: $06 $ff
    add d                                         ; $6977: $82
    add d                                         ; $6978: $82
    add d                                         ; $6979: $82
    ld bc, $0103                                  ; $697a: $01 $03 $01
    ld bc, $0101                                  ; $697d: $01 $01 $01
    ld bc, $0101                                  ; $6980: $01 $01 $01
    ld bc, $0101                                  ; $6983: $01 $01 $01
    ld bc, $fd03                                  ; $6986: $01 $03 $fd
    nop                                           ; $6989: $00
    ld bc, $0206                                  ; $698a: $01 $06 $02
    inc bc                                        ; $698d: $03
    db $fd                                        ; $698e: $fd
    nop                                           ; $698f: $00
    dec b                                         ; $6990: $05
    cp $d1                                        ; $6991: $fe $d1
    db $fc                                        ; $6993: $fc
    pop de                                        ; $6994: $d1
    pop de                                        ; $6995: $d1
    pop de                                        ; $6996: $d1
    ld bc, $0101                                  ; $6997: $01 $01 $01
    ld bc, $0101                                  ; $699a: $01 $01 $01
    ld bc, $0101                                  ; $699d: $01 $01 $01
    ld bc, $0301                                  ; $69a0: $01 $01 $03
    ld bc, $0303                                  ; $69a3: $01 $03 $03
    inc bc                                        ; $69a6: $03
    nop                                           ; $69a7: $00
    ld bc, $ff06                                  ; $69a8: $01 $06 $ff
    db $fc                                        ; $69ab: $fc
    db $fd                                        ; $69ac: $fd
    rlca                                          ; $69ad: $07
    dec b                                         ; $69ae: $05
    cp $d1                                        ; $69af: $fe $d1
    pop de                                        ; $69b1: $d1
    pop de                                        ; $69b2: $d1
    pop de                                        ; $69b3: $d1
    pop de                                        ; $69b4: $d1
    add hl, bc                                    ; $69b5: $09
    ld a, [bc]                                    ; $69b6: $0a
    ld bc, $0101                                  ; $69b7: $01 $01 $01
    ld bc, $0101                                  ; $69ba: $01 $01 $01
    ld bc, $0101                                  ; $69bd: $01 $01 $01
    inc bc                                        ; $69c0: $03
    inc bc                                        ; $69c1: $03
    inc bc                                        ; $69c2: $03
    inc bc                                        ; $69c3: $03
    inc bc                                        ; $69c4: $03
    ld bc, $0301                                  ; $69c5: $01 $01 $03
    db $fd                                        ; $69c8: $fd
    rlca                                          ; $69c9: $07
    pop de                                        ; $69ca: $d1
    cp $09                                        ; $69cb: $fe $09
    ld a, [bc]                                    ; $69cd: $0a
    pop de                                        ; $69ce: $d1
    pop de                                        ; $69cf: $d1
    pop de                                        ; $69d0: $d1
    pop de                                        ; $69d1: $d1
    pop de                                        ; $69d2: $d1
    ld [hl], h                                    ; $69d3: $74
    ld [hl], l                                    ; $69d4: $75
    halt                                          ; $69d5: $76
    ld [hl], a                                    ; $69d6: $77
    ld bc, $0101                                  ; $69d7: $01 $01 $01
    inc bc                                        ; $69da: $03
    ld bc, $0101                                  ; $69db: $01 $01 $01
    inc bc                                        ; $69de: $03
    inc bc                                        ; $69df: $03
    inc bc                                        ; $69e0: $03
    inc bc                                        ; $69e1: $03
    inc bc                                        ; $69e2: $03
    add d                                         ; $69e3: $82
    add d                                         ; $69e4: $82
    add d                                         ; $69e5: $82
    add d                                         ; $69e6: $82
    pop de                                        ; $69e7: $d1
    add hl, de                                    ; $69e8: $19
    ld a, [de]                                    ; $69e9: $1a
    dec de                                        ; $69ea: $1b
    pop de                                        ; $69eb: $d1
    inc e                                         ; $69ec: $1c
    dec e                                         ; $69ed: $1d
    ld e, $d1                                     ; $69ee: $1e $d1
    rra                                           ; $69f0: $1f
    jr nz, jr_08b_6a14                            ; $69f1: $20 $21

    ld c, $22                                     ; $69f3: $0e $22
    inc hl                                        ; $69f5: $23
    inc h                                         ; $69f6: $24
    inc bc                                        ; $69f7: $03
    rlca                                          ; $69f8: $07
    rlca                                          ; $69f9: $07
    rlca                                          ; $69fa: $07
    inc bc                                        ; $69fb: $03
    rlca                                          ; $69fc: $07
    rlca                                          ; $69fd: $07
    rlca                                          ; $69fe: $07
    inc bc                                        ; $69ff: $03
    rlca                                          ; $6a00: $07
    rlca                                          ; $6a01: $07
    rlca                                          ; $6a02: $07
    ld bc, $0707                                  ; $6a03: $01 $07 $07
    rlca                                          ; $6a06: $07
    ld d, $10                                     ; $6a07: $16 $10
    ld de, $1572                                  ; $6a09: $11 $72 $15
    rrca                                          ; $6a0c: $0f
    ld d, $73                                     ; $6a0d: $16 $73
    ld de, $150d                                  ; $6a0f: $11 $0d $15
    add d                                         ; $6a12: $82
    pop de                                        ; $6a13: $d1

jr_08b_6a14:
    db $10                                        ; $6a14: $10
    ld de, $0184                                  ; $6a15: $11 $84 $01
    ld bc, $8201                                  ; $6a18: $01 $01 $82
    ld bc, $0101                                  ; $6a1b: $01 $01 $01
    add d                                         ; $6a1e: $82
    ld bc, $0101                                  ; $6a1f: $01 $01 $01
    adc d                                         ; $6a22: $8a
    inc bc                                        ; $6a23: $03
    ld bc, $8a01                                  ; $6a24: $01 $01 $8a
    ld a, b                                       ; $6a27: $78
    ld a, c                                       ; $6a28: $79
    ld a, d                                       ; $6a29: $7a
    ld a, e                                       ; $6a2a: $7b
    ld a, h                                       ; $6a2b: $7c
    ld a, l                                       ; $6a2c: $7d
    ld a, [hl]                                    ; $6a2d: $7e
    ld a, a                                       ; $6a2e: $7f
    add e                                         ; $6a2f: $83
    add [hl]                                      ; $6a30: $86
    add a                                         ; $6a31: $87
    adc b                                         ; $6a32: $88
    add l                                         ; $6a33: $85
    adc d                                         ; $6a34: $8a
    adc e                                         ; $6a35: $8b
    adc h                                         ; $6a36: $8c
    add d                                         ; $6a37: $82
    add d                                         ; $6a38: $82
    add d                                         ; $6a39: $82
    add d                                         ; $6a3a: $82
    add d                                         ; $6a3b: $82
    add d                                         ; $6a3c: $82
    add d                                         ; $6a3d: $82
    add d                                         ; $6a3e: $82
    adc d                                         ; $6a3f: $8a
    adc d                                         ; $6a40: $8a
    adc d                                         ; $6a41: $8a
    adc d                                         ; $6a42: $8a
    adc d                                         ; $6a43: $8a
    adc d                                         ; $6a44: $8a
    adc d                                         ; $6a45: $8a
    adc d                                         ; $6a46: $8a
    add b                                         ; $6a47: $80
    dec [hl]                                      ; $6a48: $35
    ld [hl], $37                                  ; $6a49: $36 $37
    add c                                         ; $6a4b: $81
    jr c, @+$3b                                   ; $6a4c: $38 $39

    ld a, [hl-]                                   ; $6a4e: $3a
    adc c                                         ; $6a4f: $89
    dec sp                                        ; $6a50: $3b
    inc a                                         ; $6a51: $3c
    dec a                                         ; $6a52: $3d
    adc l                                         ; $6a53: $8d
    ld a, $3f                                     ; $6a54: $3e $3f
    ld b, b                                       ; $6a56: $40
    adc d                                         ; $6a57: $8a
    rlca                                          ; $6a58: $07
    rlca                                          ; $6a59: $07
    rlca                                          ; $6a5a: $07
    adc d                                         ; $6a5b: $8a
    rlca                                          ; $6a5c: $07
    rlca                                          ; $6a5d: $07
    rlca                                          ; $6a5e: $07
    adc d                                         ; $6a5f: $8a
    rlca                                          ; $6a60: $07
    rlca                                          ; $6a61: $07
    rlca                                          ; $6a62: $07
    adc d                                         ; $6a63: $8a
    rlca                                          ; $6a64: $07
    rlca                                          ; $6a65: $07
    rlca                                          ; $6a66: $07
    pop de                                        ; $6a67: $d1
    pop de                                        ; $6a68: $d1
    pop de                                        ; $6a69: $d1
    db $10                                        ; $6a6a: $10
    pop de                                        ; $6a6b: $d1
    pop de                                        ; $6a6c: $d1
    pop de                                        ; $6a6d: $d1
    pop de                                        ; $6a6e: $d1
    dec bc                                        ; $6a6f: $0b
    pop de                                        ; $6a70: $d1
    pop de                                        ; $6a71: $d1
    pop de                                        ; $6a72: $d1
    inc bc                                        ; $6a73: $03
    inc b                                         ; $6a74: $04
    nop                                           ; $6a75: $00
    ld bc, $0303                                  ; $6a76: $01 $03 $03
    inc bc                                        ; $6a79: $03
    ld bc, $0303                                  ; $6a7a: $01 $03 $03
    inc bc                                        ; $6a7d: $03
    inc bc                                        ; $6a7e: $03
    ld bc, $0303                                  ; $6a7f: $01 $03 $03
    inc bc                                        ; $6a82: $03
    ld bc, $0101                                  ; $6a83: $01 $01 $01
    ld bc, $8e11                                  ; $6a86: $01 $11 $8e
    adc a                                         ; $6a89: $8f
    pop de                                        ; $6a8a: $d1
    pop de                                        ; $6a8b: $d1
    sub l                                         ; $6a8c: $95
    sub [hl]                                      ; $6a8d: $96
    pop de                                        ; $6a8e: $d1
    pop de                                        ; $6a8f: $d1
    pop de                                        ; $6a90: $d1
    pop de                                        ; $6a91: $d1
    pop de                                        ; $6a92: $d1
    ld b, $ff                                     ; $6a93: $06 $ff
    db $fc                                        ; $6a95: $fc
    pop de                                        ; $6a96: $d1
    ld bc, $0b0b                                  ; $6a97: $01 $0b $0b
    inc bc                                        ; $6a9a: $03
    inc bc                                        ; $6a9b: $03
    dec bc                                        ; $6a9c: $0b
    dec bc                                        ; $6a9d: $0b
    inc bc                                        ; $6a9e: $03
    inc bc                                        ; $6a9f: $03
    inc bc                                        ; $6aa0: $03
    inc bc                                        ; $6aa1: $03
    inc bc                                        ; $6aa2: $03
    ld bc, $0101                                  ; $6aa3: $01 $01 $01
    inc bc                                        ; $6aa6: $03
    ld b, $ff                                     ; $6aa7: $06 $ff
    inc bc                                        ; $6aa9: $03
    db $fd                                        ; $6aaa: $fd
    rlca                                          ; $6aab: $07
    pop de                                        ; $6aac: $d1
    pop de                                        ; $6aad: $d1
    pop de                                        ; $6aae: $d1
    pop de                                        ; $6aaf: $d1
    pop de                                        ; $6ab0: $d1
    pop de                                        ; $6ab1: $d1
    pop de                                        ; $6ab2: $d1
    ld c, $08                                     ; $6ab3: $0e $08
    pop de                                        ; $6ab5: $d1
    pop de                                        ; $6ab6: $d1
    ld bc, $0101                                  ; $6ab7: $01 $01 $01
    ld bc, $0301                                  ; $6aba: $01 $01 $03
    inc bc                                        ; $6abd: $03
    inc bc                                        ; $6abe: $03
    inc bc                                        ; $6abf: $03
    inc bc                                        ; $6ac0: $03
    inc bc                                        ; $6ac1: $03
    inc bc                                        ; $6ac2: $03
    ld bc, $0301                                  ; $6ac3: $01 $01 $03
    inc bc                                        ; $6ac6: $03
    rlca                                          ; $6ac7: $07
    dec b                                         ; $6ac8: $05
    pop de                                        ; $6ac9: $d1
    pop de                                        ; $6aca: $d1
    pop de                                        ; $6acb: $d1
    pop de                                        ; $6acc: $d1
    pop de                                        ; $6acd: $d1
    pop de                                        ; $6ace: $d1
    pop de                                        ; $6acf: $d1
    pop de                                        ; $6ad0: $d1
    ld hl, sp-$07                                 ; $6ad1: $f8 $f9
    pop de                                        ; $6ad3: $d1
    pop de                                        ; $6ad4: $d1
    ld a, [$01fb]                                 ; $6ad5: $fa $fb $01
    ld bc, $0303                                  ; $6ad8: $01 $03 $03
    inc bc                                        ; $6adb: $03
    inc bc                                        ; $6adc: $03
    inc bc                                        ; $6add: $03
    inc bc                                        ; $6ade: $03
    inc bc                                        ; $6adf: $03
    inc bc                                        ; $6ae0: $03
    ld bc, $0301                                  ; $6ae1: $01 $01 $03
    inc bc                                        ; $6ae4: $03
    ld bc, $5e01                                  ; $6ae5: $01 $01 $5e
    ld e, l                                       ; $6ae8: $5d
    ld e, h                                       ; $6ae9: $5c
    ld c, [hl]                                    ; $6aea: $4e
    ldh [$d1], a                                  ; $6aeb: $e0 $d1
    ld hl, sp-$07                                 ; $6aed: $f8 $f9
    db $eb                                        ; $6aef: $eb
    db $e4                                        ; $6af0: $e4
    ld a, [$d3fb]                                 ; $6af1: $fa $fb $d3
    call nc, $d1d1                                ; $6af4: $d4 $d1 $d1
    ld h, e                                       ; $6af7: $63
    ld h, e                                       ; $6af8: $63
    ld h, e                                       ; $6af9: $63
    ld h, e                                       ; $6afa: $63
    add d                                         ; $6afb: $82
    inc bc                                        ; $6afc: $03
    ld bc, $8201                                  ; $6afd: $01 $01 $82
    and d                                         ; $6b00: $a2
    ld bc, $8201                                  ; $6b01: $01 $01 $82
    add d                                         ; $6b04: $82
    inc bc                                        ; $6b05: $03
    inc bc                                        ; $6b06: $03
    ld c, l                                       ; $6b07: $4d
    ld e, [hl]                                    ; $6b08: $5e
    ld e, l                                       ; $6b09: $5d
    ld e, h                                       ; $6b0a: $5c
    pop de                                        ; $6b0b: $d1
    ld h, e                                       ; $6b0c: $63
    pop de                                        ; $6b0d: $d1
    pop de                                        ; $6b0e: $d1
    pop de                                        ; $6b0f: $d1
    pop de                                        ; $6b10: $d1
    ldh [$d1], a                                  ; $6b11: $e0 $d1
    dec bc                                        ; $6b13: $0b
    db $e4                                        ; $6b14: $e4
    db $eb                                        ; $6b15: $eb
    db $e4                                        ; $6b16: $e4
    ld h, e                                       ; $6b17: $63
    ld h, e                                       ; $6b18: $63
    ld h, e                                       ; $6b19: $63
    ld h, e                                       ; $6b1a: $63
    inc bc                                        ; $6b1b: $03
    rlca                                          ; $6b1c: $07
    inc bc                                        ; $6b1d: $03
    inc bc                                        ; $6b1e: $03
    inc bc                                        ; $6b1f: $03
    inc bc                                        ; $6b20: $03
    add d                                         ; $6b21: $82
    inc bc                                        ; $6b22: $03
    ld bc, $8282                                  ; $6b23: $01 $82 $82
    and d                                         ; $6b26: $a2
    ld c, [hl]                                    ; $6b27: $4e
    ld c, l                                       ; $6b28: $4d
    ld d, h                                       ; $6b29: $54
    ld d, l                                       ; $6b2a: $55
    add hl, bc                                    ; $6b2b: $09
    ld a, [bc]                                    ; $6b2c: $0a
    ld c, d                                       ; $6b2d: $4a
    ld c, c                                       ; $6b2e: $49
    cp $02                                        ; $6b2f: $fe $02
    inc bc                                        ; $6b31: $03
    db $fd                                        ; $6b32: $fd
    pop de                                        ; $6b33: $d1
    dec b                                         ; $6b34: $05
    cp $02                                        ; $6b35: $fe $02
    ld h, e                                       ; $6b37: $63
    ld h, e                                       ; $6b38: $63
    inc bc                                        ; $6b39: $03
    inc bc                                        ; $6b3a: $03
    ld bc, $6301                                  ; $6b3b: $01 $01 $63
    ld h, e                                       ; $6b3e: $63
    ld bc, $0101                                  ; $6b3f: $01 $01 $01
    ld bc, $0103                                  ; $6b42: $01 $03 $01
    ld bc, $6c01                                  ; $6b45: $01 $01 $6c
    ld d, a                                       ; $6b48: $57
    ld d, h                                       ; $6b49: $54
    ld d, l                                       ; $6b4a: $55
    ld e, d                                       ; $6b4b: $5a
    ld e, e                                       ; $6b4c: $5b
    ld e, b                                       ; $6b4d: $58
    ld e, c                                       ; $6b4e: $59
    ld c, [hl]                                    ; $6b4f: $4e
    ld c, l                                       ; $6b50: $4d
    ld c, e                                       ; $6b51: $4b
    ld c, h                                       ; $6b52: $4c
    inc bc                                        ; $6b53: $03
    db $fd                                        ; $6b54: $fd
    ld d, e                                       ; $6b55: $53
    ld h, l                                       ; $6b56: $65
    inc bc                                        ; $6b57: $03
    inc bc                                        ; $6b58: $03
    inc bc                                        ; $6b59: $03
    inc bc                                        ; $6b5a: $03
    inc bc                                        ; $6b5b: $03
    inc bc                                        ; $6b5c: $03
    inc bc                                        ; $6b5d: $03
    inc bc                                        ; $6b5e: $03
    ld h, e                                       ; $6b5f: $63
    ld h, e                                       ; $6b60: $63
    inc bc                                        ; $6b61: $03
    inc bc                                        ; $6b62: $03
    ld bc, $6301                                  ; $6b63: $01 $01 $63
    inc bc                                        ; $6b66: $03
    sub $d7                                       ; $6b67: $d6 $d7
    pop de                                        ; $6b69: $d1

Jump_08b_6b6a:
    pop de                                        ; $6b6a: $d1
    jp c, $e0db                                   ; $6b6b: $da $db $e0

    pop de                                        ; $6b6e: $d1
    sbc $df                                       ; $6b6f: $de $df
    db $e3                                        ; $6b71: $e3
    db $e4                                        ; $6b72: $e4
    rst $20                                       ; $6b73: $e7
    add sp, -$2d                                  ; $6b74: $e8 $d3
    call nc, $8282                                ; $6b76: $d4 $82 $82
    inc bc                                        ; $6b79: $03
    inc bc                                        ; $6b7a: $03
    add d                                         ; $6b7b: $82
    add d                                         ; $6b7c: $82
    add d                                         ; $6b7d: $82
    inc bc                                        ; $6b7e: $03
    add d                                         ; $6b7f: $82
    add d                                         ; $6b80: $82
    add d                                         ; $6b81: $82
    and d                                         ; $6b82: $a2
    add d                                         ; $6b83: $82
    add d                                         ; $6b84: $82
    add d                                         ; $6b85: $82
    add d                                         ; $6b86: $82
    pop de                                        ; $6b87: $d1
    ld hl, sp-$07                                 ; $6b88: $f8 $f9
    dec b                                         ; $6b8a: $05
    pop de                                        ; $6b8b: $d1
    ld a, [$d1fb]                                 ; $6b8c: $fa $fb $d1
    ldh [$d1], a                                  ; $6b8f: $e0 $d1
    pop de                                        ; $6b91: $d1
    ld h, e                                       ; $6b92: $63
    db $e3                                        ; $6b93: $e3
    db $e4                                        ; $6b94: $e4
    pop de                                        ; $6b95: $d1
    pop de                                        ; $6b96: $d1
    inc bc                                        ; $6b97: $03
    ld bc, $0101                                  ; $6b98: $01 $01 $01
    inc bc                                        ; $6b9b: $03
    ld bc, $0301                                  ; $6b9c: $01 $01 $03
    add d                                         ; $6b9f: $82
    inc bc                                        ; $6ba0: $03
    inc bc                                        ; $6ba1: $03
    rlca                                          ; $6ba2: $07
    add d                                         ; $6ba3: $82
    and d                                         ; $6ba4: $a2
    inc bc                                        ; $6ba5: $03
    inc bc                                        ; $6ba6: $03
    ld b, $02                                     ; $6ba7: $06 $02
    db $fc                                        ; $6ba9: $fc
    ld d, e                                       ; $6baa: $53
    rlca                                          ; $6bab: $07
    ld bc, $ff06                                  ; $6bac: $01 $06 $ff
    pop de                                        ; $6baf: $d1
    db $fd                                        ; $6bb0: $fd
    sbc d                                         ; $6bb1: $9a
    sbc e                                         ; $6bb2: $9b
    dec bc                                        ; $6bb3: $0b
    rst $38                                       ; $6bb4: $ff
    sbc h                                         ; $6bb5: $9c
    sbc l                                         ; $6bb6: $9d
    ld bc, $0101                                  ; $6bb7: $01 $01 $01
    ld h, e                                       ; $6bba: $63
    ld bc, $0101                                  ; $6bbb: $01 $01 $01
    ld bc, $0103                                  ; $6bbe: $01 $03 $01
    add hl, bc                                    ; $6bc1: $09
    add hl, bc                                    ; $6bc2: $09
    ld bc, $0901                                  ; $6bc3: $01 $01 $09
    add hl, bc                                    ; $6bc6: $09
    jp hl                                         ; $6bc7: $e9


    ld [$d7d6], a                                 ; $6bc8: $ea $d6 $d7
    db $ec                                        ; $6bcb: $ec
    reti                                          ; $6bcc: $d9


    jp c, $eddb                                   ; $6bcd: $da $db $ed

    db $dd                                        ; $6bd0: $dd
    sbc $ee                                       ; $6bd1: $de $ee
    ldh a, [$f1]                                  ; $6bd3: $f0 $f1
    rst $20                                       ; $6bd5: $e7
    ld a, [c]                                     ; $6bd6: $f2
    add d                                         ; $6bd7: $82
    add d                                         ; $6bd8: $82
    add d                                         ; $6bd9: $82
    add d                                         ; $6bda: $82
    inc bc                                        ; $6bdb: $03
    add d                                         ; $6bdc: $82
    add d                                         ; $6bdd: $82
    add d                                         ; $6bde: $82
    add d                                         ; $6bdf: $82
    add d                                         ; $6be0: $82
    add d                                         ; $6be1: $82
    add d                                         ; $6be2: $82
    add d                                         ; $6be3: $82
    add d                                         ; $6be4: $82
    add d                                         ; $6be5: $82
    add d                                         ; $6be6: $82
    pop hl                                        ; $6be7: $e1
    ld [c], a                                     ; $6be8: $e2
    rst $20                                       ; $6be9: $e7
    add sp, -$1b                                  ; $6bea: $e8 $e5
    and $e9                                       ; $6bec: $e6 $e9
    ld [$d1ef], a                                 ; $6bee: $ea $ef $d1
    db $ec                                        ; $6bf1: $ec
    reti                                          ; $6bf2: $d9


    push af                                       ; $6bf3: $f5
    pop de                                        ; $6bf4: $d1
    db $ed                                        ; $6bf5: $ed
    db $dd                                        ; $6bf6: $dd
    add d                                         ; $6bf7: $82
    add d                                         ; $6bf8: $82
    add d                                         ; $6bf9: $82
    add d                                         ; $6bfa: $82
    add d                                         ; $6bfb: $82
    add d                                         ; $6bfc: $82
    add d                                         ; $6bfd: $82
    add d                                         ; $6bfe: $82
    add d                                         ; $6bff: $82
    inc bc                                        ; $6c00: $03
    inc bc                                        ; $6c01: $03
    add d                                         ; $6c02: $82
    add d                                         ; $6c03: $82
    inc bc                                        ; $6c04: $03
    add d                                         ; $6c05: $82
    add d                                         ; $6c06: $82
    db $d3                                        ; $6c07: $d3
    call nc, $10d1                                ; $6c08: $d4 $d1 $10
    sub $d7                                       ; $6c0b: $d6 $d7
    ld c, $0f                                     ; $6c0d: $0e $0f
    jp c, $d1db                                   ; $6c0f: $da $db $d1

    dec c                                         ; $6c12: $0d
    sbc $ee                                       ; $6c13: $de $ee
    rst $28                                       ; $6c15: $ef
    pop de                                        ; $6c16: $d1
    add d                                         ; $6c17: $82
    add d                                         ; $6c18: $82
    inc bc                                        ; $6c19: $03
    ld bc, $8282                                  ; $6c1a: $01 $82 $82
    ld bc, $8201                                  ; $6c1d: $01 $01 $82
    add d                                         ; $6c20: $82
    inc bc                                        ; $6c21: $03
    ld bc, $8282                                  ; $6c22: $01 $82 $82
    add d                                         ; $6c25: $82
    inc bc                                        ; $6c26: $03
    pop de                                        ; $6c27: $d1
    pop de                                        ; $6c28: $d1
    sbc [hl]                                      ; $6c29: $9e
    sbc a                                         ; $6c2a: $9f
    inc c                                         ; $6c2b: $0c
    pop de                                        ; $6c2c: $d1
    rlca                                          ; $6c2d: $07
    dec b                                         ; $6c2e: $05
    ld c, $d1                                     ; $6c2f: $0e $d1
    db $fc                                        ; $6c31: $fc
    db $e4                                        ; $6c32: $e4
    ld de, $d10d                                  ; $6c33: $11 $0d $d1
    jp nc, Jump_000_0303                          ; $6c36: $d2 $03 $03

    add hl, bc                                    ; $6c39: $09
    add hl, bc                                    ; $6c3a: $09
    ld bc, $0103                                  ; $6c3b: $01 $03 $01
    ld bc, $0301                                  ; $6c3e: $01 $01 $03
    ld bc, $0182                                  ; $6c41: $01 $82 $01
    ld bc, $8203                                  ; $6c44: $01 $03 $82
    db $d3                                        ; $6c47: $d3
    di                                            ; $6c48: $f3
    jp hl                                         ; $6c49: $e9


    db $f4                                        ; $6c4a: $f4
    sub $d7                                       ; $6c4b: $d6 $d7
    rst $30                                       ; $6c4d: $f7
    pop de                                        ; $6c4e: $d1
    jp c, $d1db                                   ; $6c4f: $da $db $d1

    pop de                                        ; $6c52: $d1
    sbc $ee                                       ; $6c53: $de $ee
    rst $28                                       ; $6c55: $ef
    pop de                                        ; $6c56: $d1
    add d                                         ; $6c57: $82
    add d                                         ; $6c58: $82
    add d                                         ; $6c59: $82
    add d                                         ; $6c5a: $82
    add d                                         ; $6c5b: $82
    add d                                         ; $6c5c: $82
    inc bc                                        ; $6c5d: $03
    inc bc                                        ; $6c5e: $03
    add d                                         ; $6c5f: $82
    add d                                         ; $6c60: $82
    add d                                         ; $6c61: $82
    inc bc                                        ; $6c62: $03
    add d                                         ; $6c63: $82
    add d                                         ; $6c64: $82
    add d                                         ; $6c65: $82
    inc bc                                        ; $6c66: $03
    or $d1                                        ; $6c67: $f6 $d1
    ldh a, [$f1]                                  ; $6c69: $f0 $f1
    pop de                                        ; $6c6b: $d1
    jp nc, $f3d3                                  ; $6c6c: $d2 $d3 $f3

    pop de                                        ; $6c6f: $d1
    push de                                       ; $6c70: $d5
    sub $d7                                       ; $6c71: $d6 $d7
    pop de                                        ; $6c73: $d1
    reti                                          ; $6c74: $d9


    jp c, $82db                                   ; $6c75: $da $db $82

    inc bc                                        ; $6c78: $03
    add d                                         ; $6c79: $82
    add d                                         ; $6c7a: $82
    inc bc                                        ; $6c7b: $03
    add d                                         ; $6c7c: $82
    add d                                         ; $6c7d: $82
    add d                                         ; $6c7e: $82
    inc bc                                        ; $6c7f: $03
    add d                                         ; $6c80: $82
    add d                                         ; $6c81: $82
    add d                                         ; $6c82: $82
    inc bc                                        ; $6c83: $03
    add d                                         ; $6c84: $82
    add d                                         ; $6c85: $82
    add d                                         ; $6c86: $82
    rst $20                                       ; $6c87: $e7
    ld a, [c]                                     ; $6c88: $f2
    push af                                       ; $6c89: $f5
    pop de                                        ; $6c8a: $d1
    jp hl                                         ; $6c8b: $e9


    db $f4                                        ; $6c8c: $f4
    or $0d                                        ; $6c8d: $f6 $0d
    rst $30                                       ; $6c8f: $f7
    pop de                                        ; $6c90: $d1
    inc c                                         ; $6c91: $0c
    ld [de], a                                    ; $6c92: $12
    pop de                                        ; $6c93: $d1
    pop de                                        ; $6c94: $d1
    ld c, $0f                                     ; $6c95: $0e $0f
    add d                                         ; $6c97: $82
    add d                                         ; $6c98: $82
    add d                                         ; $6c99: $82
    inc bc                                        ; $6c9a: $03
    add d                                         ; $6c9b: $82
    add d                                         ; $6c9c: $82
    add d                                         ; $6c9d: $82
    ld bc, $0303                                  ; $6c9e: $01 $03 $03
    ld bc, $8201                                  ; $6ca1: $01 $01 $82
    inc bc                                        ; $6ca4: $03
    ld bc, $1601                                  ; $6ca5: $01 $01 $16
    db $10                                        ; $6ca8: $10
    pop de                                        ; $6ca9: $d1
    push de                                       ; $6caa: $d5
    dec d                                         ; $6cab: $15
    ld [$d9d8], sp                                ; $6cac: $08 $d8 $d9
    ld de, $dc0d                                  ; $6caf: $11 $0d $dc
    db $dd                                        ; $6cb2: $dd
    inc c                                         ; $6cb3: $0c
    pop de                                        ; $6cb4: $d1
    pop hl                                        ; $6cb5: $e1
    ld [c], a                                     ; $6cb6: $e2
    ld bc, $0301                                  ; $6cb7: $01 $01 $03
    add d                                         ; $6cba: $82
    ld bc, $8201                                  ; $6cbb: $01 $01 $82
    add d                                         ; $6cbe: $82
    ld bc, $8201                                  ; $6cbf: $01 $01 $82
    add d                                         ; $6cc2: $82
    ld bc, $8203                                  ; $6cc3: $01 $03 $82
    add d                                         ; $6cc6: $82
    sub b                                         ; $6cc7: $90
    pop de                                        ; $6cc8: $d1
    push hl                                       ; $6cc9: $e5
    and $5a                                       ; $6cca: $e6 $5a
    ld d, e                                       ; $6ccc: $53
    pop de                                        ; $6ccd: $d1
    pop de                                        ; $6cce: $d1
    ld h, c                                       ; $6ccf: $61
    ld h, d                                       ; $6cd0: $62
    sub b                                         ; $6cd1: $90
    pop de                                        ; $6cd2: $d1
    ld e, a                                       ; $6cd3: $5f
    ld h, b                                       ; $6cd4: $60
    ld h, h                                       ; $6cd5: $64
    ld d, e                                       ; $6cd6: $53
    dec bc                                        ; $6cd7: $0b
    inc bc                                        ; $6cd8: $03
    add d                                         ; $6cd9: $82
    add d                                         ; $6cda: $82
    inc bc                                        ; $6cdb: $03
    inc bc                                        ; $6cdc: $03
    inc bc                                        ; $6cdd: $03
    inc bc                                        ; $6cde: $03
    inc bc                                        ; $6cdf: $03
    inc bc                                        ; $6ce0: $03
    dec bc                                        ; $6ce1: $0b
    inc bc                                        ; $6ce2: $03
    inc bc                                        ; $6ce3: $03
    inc bc                                        ; $6ce4: $03
    inc bc                                        ; $6ce5: $03
    inc bc                                        ; $6ce6: $03
    jp hl                                         ; $6ce7: $e9


    db $f4                                        ; $6ce8: $f4
    or $d1                                        ; $6ce9: $f6 $d1
    rst $30                                       ; $6ceb: $f7
    pop de                                        ; $6cec: $d1
    pop de                                        ; $6ced: $d1
    pop de                                        ; $6cee: $d1
    pop de                                        ; $6cef: $d1
    ld hl, sp-$07                                 ; $6cf0: $f8 $f9
    pop de                                        ; $6cf2: $d1
    pop de                                        ; $6cf3: $d1
    ld a, [$d1fb]                                 ; $6cf4: $fa $fb $d1
    add d                                         ; $6cf7: $82
    add d                                         ; $6cf8: $82
    add d                                         ; $6cf9: $82
    inc bc                                        ; $6cfa: $03
    inc bc                                        ; $6cfb: $03
    inc bc                                        ; $6cfc: $03
    inc bc                                        ; $6cfd: $03
    inc bc                                        ; $6cfe: $03
    inc bc                                        ; $6cff: $03
    ld bc, $0301                                  ; $6d00: $01 $01 $03
    inc bc                                        ; $6d03: $03
    ld bc, $0301                                  ; $6d04: $01 $01 $03
    pop de                                        ; $6d07: $d1
    ld [hl], e                                    ; $6d08: $73
    ld a, h                                       ; $6d09: $7c
    ld a, l                                       ; $6d0a: $7d
    pop de                                        ; $6d0b: $d1
    add d                                         ; $6d0c: $82
    add e                                         ; $6d0d: $83
    add [hl]                                      ; $6d0e: $86
    ld h, e                                       ; $6d0f: $63
    add h                                         ; $6d10: $84
    add l                                         ; $6d11: $85
    adc d                                         ; $6d12: $8a
    pop de                                        ; $6d13: $d1
    pop de                                        ; $6d14: $d1
    pop de                                        ; $6d15: $d1
    adc [hl]                                      ; $6d16: $8e
    inc bc                                        ; $6d17: $03
    add d                                         ; $6d18: $82
    add d                                         ; $6d19: $82
    add d                                         ; $6d1a: $82
    inc bc                                        ; $6d1b: $03
    adc d                                         ; $6d1c: $8a
    adc d                                         ; $6d1d: $8a
    adc d                                         ; $6d1e: $8a
    rlca                                          ; $6d1f: $07
    adc d                                         ; $6d20: $8a
    adc d                                         ; $6d21: $8a
    adc d                                         ; $6d22: $8a
    inc bc                                        ; $6d23: $03
    inc bc                                        ; $6d24: $03
    inc bc                                        ; $6d25: $03
    dec bc                                        ; $6d26: $0b
    ld a, [hl]                                    ; $6d27: $7e
    ld a, a                                       ; $6d28: $7f
    add c                                         ; $6d29: $81
    inc b                                         ; $6d2a: $04
    add a                                         ; $6d2b: $87
    adc b                                         ; $6d2c: $88
    adc c                                         ; $6d2d: $89
    rst $38                                       ; $6d2e: $ff
    adc e                                         ; $6d2f: $8b
    adc h                                         ; $6d30: $8c
    adc l                                         ; $6d31: $8d
    pop de                                        ; $6d32: $d1
    adc a                                         ; $6d33: $8f
    pop de                                        ; $6d34: $d1
    pop de                                        ; $6d35: $d1
    pop de                                        ; $6d36: $d1
    add d                                         ; $6d37: $82
    add d                                         ; $6d38: $82
    adc d                                         ; $6d39: $8a
    ld bc, $8a8a                                  ; $6d3a: $01 $8a $8a
    adc d                                         ; $6d3d: $8a
    ld bc, $8a8a                                  ; $6d3e: $01 $8a $8a
    adc d                                         ; $6d41: $8a
    inc bc                                        ; $6d42: $03
    dec bc                                        ; $6d43: $0b
    inc bc                                        ; $6d44: $03
    inc bc                                        ; $6d45: $03
    inc bc                                        ; $6d46: $03
    ld l, h                                       ; $6d47: $6c
    ld d, a                                       ; $6d48: $57
    ld d, h                                       ; $6d49: $54
    ld d, l                                       ; $6d4a: $55
    sub b                                         ; $6d4b: $90
    ld e, e                                       ; $6d4c: $5b
    ld e, b                                       ; $6d4d: $58
    ld e, c                                       ; $6d4e: $59
    cp $92                                        ; $6d4f: $fe $92
    ld c, e                                       ; $6d51: $4b
    ld c, a                                       ; $6d52: $4f
    rlca                                          ; $6d53: $07
    sub c                                         ; $6d54: $91
    ld h, h                                       ; $6d55: $64
    ld h, l                                       ; $6d56: $65
    inc bc                                        ; $6d57: $03
    inc bc                                        ; $6d58: $03
    inc bc                                        ; $6d59: $03
    inc bc                                        ; $6d5a: $03
    ld l, e                                       ; $6d5b: $6b
    inc bc                                        ; $6d5c: $03
    inc bc                                        ; $6d5d: $03
    inc bc                                        ; $6d5e: $03
    ld bc, $034b                                  ; $6d5f: $01 $4b $03
    inc bc                                        ; $6d62: $03
    ld bc, $034b                                  ; $6d63: $01 $4b $03
    inc bc                                        ; $6d66: $03
    sub b                                         ; $6d67: $90
    pop de                                        ; $6d68: $d1
    pop de                                        ; $6d69: $d1
    pop de                                        ; $6d6a: $d1
    ld e, d                                       ; $6d6b: $5a

Jump_08b_6d6c:
    ld d, e                                       ; $6d6c: $53
    pop de                                        ; $6d6d: $d1
    db $10                                        ; $6d6e: $10
    ld d, b                                       ; $6d6f: $50
    ld h, d                                       ; $6d70: $62
    sub e                                         ; $6d71: $93
    pop de                                        ; $6d72: $d1
    ld d, c                                       ; $6d73: $51
    ld d, d                                       ; $6d74: $52
    sub h                                         ; $6d75: $94
    pop de                                        ; $6d76: $d1
    dec bc                                        ; $6d77: $0b
    inc bc                                        ; $6d78: $03
    inc bc                                        ; $6d79: $03
    inc bc                                        ; $6d7a: $03
    inc bc                                        ; $6d7b: $03
    inc bc                                        ; $6d7c: $03
    inc bc                                        ; $6d7d: $03
    ld bc, $0303                                  ; $6d7e: $01 $03 $03
    dec bc                                        ; $6d81: $0b
    inc bc                                        ; $6d82: $03
    inc bc                                        ; $6d83: $03
    inc bc                                        ; $6d84: $03
    dec bc                                        ; $6d85: $0b
    inc bc                                        ; $6d86: $03
    pop de                                        ; $6d87: $d1
    ld [$950c], sp                                ; $6d88: $08 $0c $95
    ld de, $150d                                  ; $6d8b: $11 $0d $15
    rrca                                          ; $6d8e: $0f
    pop de                                        ; $6d8f: $d1
    pop de                                        ; $6d90: $d1
    ld de, $d10d                                  ; $6d91: $11 $0d $d1
    pop de                                        ; $6d94: $d1
    pop de                                        ; $6d95: $d1
    pop de                                        ; $6d96: $d1
    inc bc                                        ; $6d97: $03
    ld bc, $0b01                                  ; $6d98: $01 $01 $0b
    ld bc, $0101                                  ; $6d9b: $01 $01 $01
    ld bc, $0303                                  ; $6d9e: $01 $03 $03
    ld bc, $0301                                  ; $6da1: $01 $01 $03
    inc bc                                        ; $6da4: $03
    inc bc                                        ; $6da5: $03
    inc bc                                        ; $6da6: $03
    sub [hl]                                      ; $6da7: $96
    dec c                                         ; $6da8: $0d
    ld c, $08                                     ; $6da9: $0e $08
    ld d, $12                                     ; $6dab: $16 $12
    inc de                                        ; $6dad: $13
    inc d                                         ; $6dae: $14
    dec d                                         ; $6daf: $15
    rrca                                          ; $6db0: $0f
    ld d, $10                                     ; $6db1: $16 $10
    pop de                                        ; $6db3: $d1
    dec c                                         ; $6db4: $0d
    ld c, $08                                     ; $6db5: $0e $08
    dec bc                                        ; $6db7: $0b
    ld bc, $0101                                  ; $6db8: $01 $01 $01
    ld bc, $0101                                  ; $6dbb: $01 $01 $01
    ld bc, $0101                                  ; $6dbe: $01 $01 $01
    ld bc, $0301                                  ; $6dc1: $01 $01 $03
    ld bc, $0101                                  ; $6dc4: $01 $01 $01
    db $fc                                        ; $6dc7: $fc
    pop de                                        ; $6dc8: $d1
    ld d, e                                       ; $6dc9: $53
    ld d, l                                       ; $6dca: $55
    ldh [$d1], a                                  ; $6dcb: $e0 $d1
    pop de                                        ; $6dcd: $d1
    sub h                                         ; $6dce: $94
    db $eb                                        ; $6dcf: $eb
    db $e4                                        ; $6dd0: $e4
    pop de                                        ; $6dd1: $d1
    sub e                                         ; $6dd2: $93
    db $d3                                        ; $6dd3: $d3
    call nc, $0a09                                ; $6dd4: $d4 $09 $0a
    ld bc, $6303                                  ; $6dd7: $01 $03 $63
    inc bc                                        ; $6dda: $03
    add d                                         ; $6ddb: $82
    inc bc                                        ; $6ddc: $03

Call_08b_6ddd:
    inc bc                                        ; $6ddd: $03
    ld l, e                                       ; $6dde: $6b
    add d                                         ; $6ddf: $82
    and d                                         ; $6de0: $a2
    inc bc                                        ; $6de1: $03
    ld l, e                                       ; $6de2: $6b
    add d                                         ; $6de3: $82
    add d                                         ; $6de4: $82
    ld bc, $6c01                                  ; $6de5: $01 $01 $6c
    ld d, [hl]                                    ; $6de8: $56
    ld d, h                                       ; $6de9: $54
    sub c                                         ; $6dea: $91
    ld e, d                                       ; $6deb: $5a
    ld e, e                                       ; $6dec: $5b
    ld e, b                                       ; $6ded: $58
    sub d                                         ; $6dee: $92
    ld h, c                                       ; $6def: $61
    ld h, d                                       ; $6df0: $62
    ld c, e                                       ; $6df1: $4b
    ld c, h                                       ; $6df2: $4c
    ld d, e                                       ; $6df3: $53
    ld d, d                                       ; $6df4: $52
    ld h, h                                       ; $6df5: $64
    ld h, l                                       ; $6df6: $65
    inc bc                                        ; $6df7: $03
    inc bc                                        ; $6df8: $03
    inc bc                                        ; $6df9: $03
    dec hl                                        ; $6dfa: $2b
    inc bc                                        ; $6dfb: $03
    inc bc                                        ; $6dfc: $03
    inc bc                                        ; $6dfd: $03
    dec hl                                        ; $6dfe: $2b
    inc bc                                        ; $6dff: $03
    inc bc                                        ; $6e00: $03
    inc bc                                        ; $6e01: $03
    inc bc                                        ; $6e02: $03
    ld h, e                                       ; $6e03: $63
    inc bc                                        ; $6e04: $03
    inc bc                                        ; $6e05: $03
    inc bc                                        ; $6e06: $03
    add hl, bc                                    ; $6e07: $09
    ld a, [bc]                                    ; $6e08: $0a
    pop de                                        ; $6e09: $d1
    ld h, e                                       ; $6e0a: $63
    pop de                                        ; $6e0b: $d1
    pop de                                        ; $6e0c: $d1
    pop de                                        ; $6e0d: $d1
    pop de                                        ; $6e0e: $d1
    sub e                                         ; $6e0f: $93
    pop de                                        ; $6e10: $d1
    ld h, e                                       ; $6e11: $63
    pop de                                        ; $6e12: $d1
    sub h                                         ; $6e13: $94
    pop de                                        ; $6e14: $d1
    pop de                                        ; $6e15: $d1
    pop de                                        ; $6e16: $d1
    ld bc, $0301                                  ; $6e17: $01 $01 $03
    rlca                                          ; $6e1a: $07
    inc bc                                        ; $6e1b: $03
    inc bc                                        ; $6e1c: $03
    inc bc                                        ; $6e1d: $03
    inc bc                                        ; $6e1e: $03
    dec bc                                        ; $6e1f: $0b
    inc bc                                        ; $6e20: $03
    rlca                                          ; $6e21: $07
    inc bc                                        ; $6e22: $03
    dec bc                                        ; $6e23: $0b
    inc bc                                        ; $6e24: $03
    inc bc                                        ; $6e25: $03
    inc bc                                        ; $6e26: $03
    pop de                                        ; $6e27: $d1
    ldh [$d1], a                                  ; $6e28: $e0 $d1
    pop de                                        ; $6e2a: $d1
    db $e4                                        ; $6e2b: $e4
    db $eb                                        ; $6e2c: $eb
    db $e4                                        ; $6e2d: $e4
    pop de                                        ; $6e2e: $d1
    jp nc, $d4d3                                  ; $6e2f: $d2 $d3 $d4

    pop de                                        ; $6e32: $d1
    push de                                       ; $6e33: $d5
    sub $d7                                       ; $6e34: $d6 $d7
    pop de                                        ; $6e36: $d1
    inc bc                                        ; $6e37: $03
    add d                                         ; $6e38: $82
    inc bc                                        ; $6e39: $03
    inc bc                                        ; $6e3a: $03
    add d                                         ; $6e3b: $82
    add d                                         ; $6e3c: $82
    and d                                         ; $6e3d: $a2
    inc bc                                        ; $6e3e: $03
    add d                                         ; $6e3f: $82
    add d                                         ; $6e40: $82
    add d                                         ; $6e41: $82
    inc bc                                        ; $6e42: $03
    add d                                         ; $6e43: $82
    add d                                         ; $6e44: $82
    add d                                         ; $6e45: $82
    inc bc                                        ; $6e46: $03
    pop de                                        ; $6e47: $d1
    sbc b                                         ; $6e48: $98
    ld d, h                                       ; $6e49: $54
    ld d, l                                       ; $6e4a: $55
    dec bc                                        ; $6e4b: $0b
    sbc c                                         ; $6e4c: $99
    ld e, b                                       ; $6e4d: $58
    ld e, c                                       ; $6e4e: $59
    pop de                                        ; $6e4f: $d1
    sub a                                         ; $6e50: $97
    ld c, e                                       ; $6e51: $4b
    ld c, h                                       ; $6e52: $4c
    pop de                                        ; $6e53: $d1
    pop de                                        ; $6e54: $d1
    ld h, h                                       ; $6e55: $64
    ld e, a                                       ; $6e56: $5f
    inc bc                                        ; $6e57: $03
    dec hl                                        ; $6e58: $2b
    inc bc                                        ; $6e59: $03
    inc bc                                        ; $6e5a: $03
    ld bc, $034b                                  ; $6e5b: $01 $4b $03
    inc bc                                        ; $6e5e: $03
    inc bc                                        ; $6e5f: $03
    ld c, e                                       ; $6e60: $4b
    inc bc                                        ; $6e61: $03
    inc bc                                        ; $6e62: $03
    inc bc                                        ; $6e63: $03
    inc bc                                        ; $6e64: $03
    inc bc                                        ; $6e65: $03
    inc bc                                        ; $6e66: $03
    ld l, h                                       ; $6e67: $6c
    sub a                                         ; $6e68: $97
    pop de                                        ; $6e69: $d1
    ret c                                         ; $6e6a: $d8

    ld e, d                                       ; $6e6b: $5a
    sbc c                                         ; $6e6c: $99
    pop de                                        ; $6e6d: $d1
    call c, $9861                                 ; $6e6e: $dc $61 $98
    pop de                                        ; $6e71: $d1
    pop hl                                        ; $6e72: $e1
    ld h, b                                       ; $6e73: $60
    ld d, d                                       ; $6e74: $52
    pop de                                        ; $6e75: $d1
    push hl                                       ; $6e76: $e5
    inc bc                                        ; $6e77: $03
    dec hl                                        ; $6e78: $2b
    inc bc                                        ; $6e79: $03
    add d                                         ; $6e7a: $82
    inc bc                                        ; $6e7b: $03
    dec hl                                        ; $6e7c: $2b
    inc bc                                        ; $6e7d: $03
    add d                                         ; $6e7e: $82
    inc bc                                        ; $6e7f: $03
    ld c, e                                       ; $6e80: $4b
    inc bc                                        ; $6e81: $03
    add d                                         ; $6e82: $82
    inc bc                                        ; $6e83: $03
    inc bc                                        ; $6e84: $03
    inc bc                                        ; $6e85: $03
    add d                                         ; $6e86: $82
    nop                                           ; $6e87: $00
    dec b                                         ; $6e88: $05
    ld b, $ff                                     ; $6e89: $06 $ff
    db $fc                                        ; $6e8b: $fc
    db $fd                                        ; $6e8c: $fd
    rlca                                          ; $6e8d: $07
    dec b                                         ; $6e8e: $05
    pop de                                        ; $6e8f: $d1
    pop de                                        ; $6e90: $d1
    pop de                                        ; $6e91: $d1
    db $10                                        ; $6e92: $10
    ld de, $0e0d                                  ; $6e93: $11 $0d $0e
    ld [$0101], sp                                ; $6e96: $08 $01 $01
    ld bc, $0101                                  ; $6e99: $01 $01 $01
    ld bc, $0101                                  ; $6e9c: $01 $01 $01
    inc bc                                        ; $6e9f: $03
    inc bc                                        ; $6ea0: $03
    inc bc                                        ; $6ea1: $03
    ld bc, $0101                                  ; $6ea2: $01 $01 $01
    ld bc, $fc01                                  ; $6ea5: $01 $01 $fc
    db $fd                                        ; $6ea8: $fd
    pop de                                        ; $6ea9: $d1
    pop de                                        ; $6eaa: $d1
    pop de                                        ; $6eab: $d1
    pop de                                        ; $6eac: $d1
    inc c                                         ; $6ead: $0c
    db $10                                        ; $6eae: $10
    ld de, $150d                                  ; $6eaf: $11 $0d $15
    rrca                                          ; $6eb2: $0f
    ld d, $12                                     ; $6eb3: $16 $12
    inc de                                        ; $6eb5: $13
    dec c                                         ; $6eb6: $0d
    ld bc, $0301                                  ; $6eb7: $01 $01 $03
    inc bc                                        ; $6eba: $03
    inc bc                                        ; $6ebb: $03
    inc bc                                        ; $6ebc: $03
    ld bc, $0101                                  ; $6ebd: $01 $01 $01
    ld bc, $0101                                  ; $6ec0: $01 $01 $01
    ld bc, $0101                                  ; $6ec3: $01 $01 $01
    ld bc, $d1d1                                  ; $6ec6: $01 $d1 $d1
    pop de                                        ; $6ec9: $d1
    pop de                                        ; $6eca: $d1
    ld de, $0e0d                                  ; $6ecb: $11 $0d $0e
    pop de                                        ; $6ece: $d1
    ld d, $10                                     ; $6ecf: $16 $10
    pop de                                        ; $6ed1: $d1
    pop de                                        ; $6ed2: $d1
    pop de                                        ; $6ed3: $d1
    pop de                                        ; $6ed4: $d1
    db $fc                                        ; $6ed5: $fc
    db $fd                                        ; $6ed6: $fd
    inc bc                                        ; $6ed7: $03
    inc bc                                        ; $6ed8: $03
    inc bc                                        ; $6ed9: $03
    inc bc                                        ; $6eda: $03
    ld bc, $0101                                  ; $6edb: $01 $01 $01
    inc bc                                        ; $6ede: $03
    ld bc, $0301                                  ; $6edf: $01 $01 $03
    inc bc                                        ; $6ee2: $03
    inc bc                                        ; $6ee3: $03
    inc bc                                        ; $6ee4: $03
    ld bc, $fa01                                  ; $6ee5: $01 $01 $fa
    ei                                            ; $6ee8: $fb
    pop de                                        ; $6ee9: $d1
    pop de                                        ; $6eea: $d1
    pop de                                        ; $6eeb: $d1
    pop de                                        ; $6eec: $d1
    pop de                                        ; $6eed: $d1
    dec b                                         ; $6eee: $05
    pop de                                        ; $6eef: $d1
    rst $38                                       ; $6ef0: $ff
    db $fc                                        ; $6ef1: $fc
    inc b                                         ; $6ef2: $04
    nop                                           ; $6ef3: $00
    ld bc, $0206                                  ; $6ef4: $01 $06 $02
    ld bc, $0301                                  ; $6ef7: $01 $01 $03
    inc bc                                        ; $6efa: $03
    inc bc                                        ; $6efb: $03
    inc bc                                        ; $6efc: $03
    inc bc                                        ; $6efd: $03
    ld bc, $0103                                  ; $6efe: $01 $03 $01
    ld bc, $0101                                  ; $6f01: $01 $01 $01
    ld bc, $0101                                  ; $6f04: $01 $01 $01
    inc c                                         ; $6f07: $0c
    ld [de], a                                    ; $6f08: $12
    inc de                                        ; $6f09: $13
    inc d                                         ; $6f0a: $14
    dec d                                         ; $6f0b: $15
    rrca                                          ; $6f0c: $0f
    ld d, $10                                     ; $6f0d: $16 $10
    ld de, $0e0d                                  ; $6f0f: $11 $0d $0e
    pop de                                        ; $6f12: $d1
    pop de                                        ; $6f13: $d1
    pop de                                        ; $6f14: $d1
    ldh [$d1], a                                  ; $6f15: $e0 $d1
    ld bc, $0101                                  ; $6f17: $01 $01 $01
    ld bc, $0101                                  ; $6f1a: $01 $01 $01
    ld bc, $0101                                  ; $6f1d: $01 $01 $01
    ld bc, $0301                                  ; $6f20: $01 $01 $03
    inc bc                                        ; $6f23: $03
    inc bc                                        ; $6f24: $03
    add d                                         ; $6f25: $82
    inc bc                                        ; $6f26: $03
    dec d                                         ; $6f27: $15
    ld [$d10c], sp                                ; $6f28: $08 $0c $d1
    ld de, $d1d1                                  ; $6f2b: $11 $d1 $d1
    pop de                                        ; $6f2e: $d1
    pop de                                        ; $6f2f: $d1
    pop de                                        ; $6f30: $d1
    dec bc                                        ; $6f31: $0b
    pop de                                        ; $6f32: $d1
    pop de                                        ; $6f33: $d1
    pop de                                        ; $6f34: $d1
    pop de                                        ; $6f35: $d1
    pop de                                        ; $6f36: $d1
    ld bc, $0101                                  ; $6f37: $01 $01 $01
    inc bc                                        ; $6f3a: $03
    ld bc, $0303                                  ; $6f3b: $01 $03 $03
    inc bc                                        ; $6f3e: $03
    inc bc                                        ; $6f3f: $03
    inc bc                                        ; $6f40: $03
    ld bc, $0303                                  ; $6f41: $01 $03 $03
    inc bc                                        ; $6f44: $03
    inc bc                                        ; $6f45: $03
    inc bc                                        ; $6f46: $03
    rlca                                          ; $6f47: $07
    dec b                                         ; $6f48: $05
    cp $02                                        ; $6f49: $fe $02
    pop de                                        ; $6f4b: $d1
    ldh [$d1], a                                  ; $6f4c: $e0 $d1
    pop de                                        ; $6f4e: $d1
    db $e4                                        ; $6f4f: $e4
    db $eb                                        ; $6f50: $eb
    db $e4                                        ; $6f51: $e4
    pop de                                        ; $6f52: $d1
    jp nc, $d4d3                                  ; $6f53: $d2 $d3 $d4

    pop de                                        ; $6f56: $d1
    ld bc, $0101                                  ; $6f57: $01 $01 $01
    ld bc, $8203                                  ; $6f5a: $01 $03 $82
    inc bc                                        ; $6f5d: $03
    inc bc                                        ; $6f5e: $03
    add d                                         ; $6f5f: $82
    add d                                         ; $6f60: $82
    and d                                         ; $6f61: $a2
    inc bc                                        ; $6f62: $03
    add d                                         ; $6f63: $82
    add d                                         ; $6f64: $82
    add d                                         ; $6f65: $82
    inc bc                                        ; $6f66: $03
    inc bc                                        ; $6f67: $03
    db $fd                                        ; $6f68: $fd
    nop                                           ; $6f69: $00
    dec b                                         ; $6f6a: $05
    cp $ff                                        ; $6f6b: $fe $ff
    db $fc                                        ; $6f6d: $fc
    inc b                                         ; $6f6e: $04
    pop de                                        ; $6f6f: $d1
    pop de                                        ; $6f70: $d1
    cp $ff                                        ; $6f71: $fe $ff
    pop de                                        ; $6f73: $d1
    pop de                                        ; $6f74: $d1
    pop de                                        ; $6f75: $d1
    pop de                                        ; $6f76: $d1
    ld bc, $0101                                  ; $6f77: $01 $01 $01
    ld bc, $0101                                  ; $6f7a: $01 $01 $01
    ld bc, $0301                                  ; $6f7d: $01 $01 $03
    inc bc                                        ; $6f80: $03
    ld bc, $0301                                  ; $6f81: $01 $01 $03
    inc bc                                        ; $6f84: $03
    inc bc                                        ; $6f85: $03
    inc bc                                        ; $6f86: $03
    pop de                                        ; $6f87: $d1
    pop de                                        ; $6f88: $d1
    pop de                                        ; $6f89: $d1
    pop de                                        ; $6f8a: $d1
    pop de                                        ; $6f8b: $d1
    add hl, bc                                    ; $6f8c: $09
    ld a, [bc]                                    ; $6f8d: $0a
    ret c                                         ; $6f8e: $d8

    pop de                                        ; $6f8f: $d1
    pop de                                        ; $6f90: $d1
    pop de                                        ; $6f91: $d1
    call c, $d1d1                                 ; $6f92: $dc $d1 $d1
    ldh [$e1], a                                  ; $6f95: $e0 $e1
    inc bc                                        ; $6f97: $03
    inc bc                                        ; $6f98: $03
    inc bc                                        ; $6f99: $03
    inc bc                                        ; $6f9a: $03
    inc bc                                        ; $6f9b: $03
    ld bc, $8201                                  ; $6f9c: $01 $01 $82
    inc bc                                        ; $6f9f: $03
    inc bc                                        ; $6fa0: $03
    inc bc                                        ; $6fa1: $03
    add d                                         ; $6fa2: $82
    inc bc                                        ; $6fa3: $03
    inc bc                                        ; $6fa4: $03
    add d                                         ; $6fa5: $82
    add d                                         ; $6fa6: $82
    rst $28                                       ; $6fa7: $ef
    db $e4                                        ; $6fa8: $e4
    db $eb                                        ; $6fa9: $eb
    push hl                                       ; $6faa: $e5
    push af                                       ; $6fab: $f5
    jp nc, $d4d3                                  ; $6fac: $d2 $d3 $d4

    or $d5                                        ; $6faf: $f6 $d5
    sub $d7                                       ; $6fb1: $d6 $d7
    ret c                                         ; $6fb3: $d8

    reti                                          ; $6fb4: $d9


    jp c, $82db                                   ; $6fb5: $da $db $82

    add d                                         ; $6fb8: $82
    add d                                         ; $6fb9: $82
    add d                                         ; $6fba: $82
    add d                                         ; $6fbb: $82
    add d                                         ; $6fbc: $82
    add d                                         ; $6fbd: $82
    add d                                         ; $6fbe: $82
    add d                                         ; $6fbf: $82
    add d                                         ; $6fc0: $82
    add d                                         ; $6fc1: $82
    add d                                         ; $6fc2: $82
    add d                                         ; $6fc3: $82
    add d                                         ; $6fc4: $82
    add d                                         ; $6fc5: $82
    add d                                         ; $6fc6: $82
    and $e9                                       ; $6fc7: $e6 $e9
    db $f4                                        ; $6fc9: $f4
    or $d1                                        ; $6fca: $f6 $d1
    rst $30                                       ; $6fcc: $f7
    pop de                                        ; $6fcd: $d1
    pop de                                        ; $6fce: $d1
    pop de                                        ; $6fcf: $d1
    pop de                                        ; $6fd0: $d1
    pop de                                        ; $6fd1: $d1
    pop de                                        ; $6fd2: $d1
    pop de                                        ; $6fd3: $d1
    pop de                                        ; $6fd4: $d1
    pop de                                        ; $6fd5: $d1
    pop de                                        ; $6fd6: $d1
    add d                                         ; $6fd7: $82
    add d                                         ; $6fd8: $82
    add d                                         ; $6fd9: $82
    add d                                         ; $6fda: $82
    inc bc                                        ; $6fdb: $03
    inc bc                                        ; $6fdc: $03
    inc bc                                        ; $6fdd: $03
    inc bc                                        ; $6fde: $03
    inc bc                                        ; $6fdf: $03
    inc bc                                        ; $6fe0: $03
    inc bc                                        ; $6fe1: $03
    inc bc                                        ; $6fe2: $03
    inc bc                                        ; $6fe3: $03
    inc bc                                        ; $6fe4: $03
    inc bc                                        ; $6fe5: $03
    inc bc                                        ; $6fe6: $03
    db $fc                                        ; $6fe7: $fc
    db $fd                                        ; $6fe8: $fd
    pop de                                        ; $6fe9: $d1
    pop de                                        ; $6fea: $d1
    ld b, $02                                     ; $6feb: $06 $02
    db $fc                                        ; $6fed: $fc
    db $fd                                        ; $6fee: $fd
    nop                                           ; $6fef: $00
    ld bc, $0206                                  ; $6ff0: $01 $06 $02
    db $fc                                        ; $6ff3: $fc
    inc b                                         ; $6ff4: $04
    rlca                                          ; $6ff5: $07
    dec b                                         ; $6ff6: $05
    ld bc, $0301                                  ; $6ff7: $01 $01 $03
    inc bc                                        ; $6ffa: $03
    ld bc, $0101                                  ; $6ffb: $01 $01 $01
    ld bc, $0101                                  ; $6ffe: $01 $01 $01
    ld bc, $0101                                  ; $7001: $01 $01 $01
    ld bc, $0101                                  ; $7004: $01 $01 $01
    pop de                                        ; $7007: $d1
    ld [$1216], sp                                ; $7008: $08 $16 $12
    add hl, bc                                    ; $700b: $09
    ld a, [bc]                                    ; $700c: $0a
    ld c, $0f                                     ; $700d: $0e $0f
    db $fc                                        ; $700f: $fc
    pop de                                        ; $7010: $d1
    pop de                                        ; $7011: $d1
    dec c                                         ; $7012: $0d
    cp $ff                                        ; $7013: $fe $ff
    pop de                                        ; $7015: $d1
    pop de                                        ; $7016: $d1
    inc bc                                        ; $7017: $03
    ld bc, $0101                                  ; $7018: $01 $01 $01
    ld bc, $0101                                  ; $701b: $01 $01 $01
    ld bc, $0301                                  ; $701e: $01 $01 $03
    inc bc                                        ; $7021: $03
    ld bc, $0101                                  ; $7022: $01 $01 $01
    inc bc                                        ; $7025: $03
    inc bc                                        ; $7026: $03
    inc de                                        ; $7027: $13
    inc d                                         ; $7028: $14
    ld c, $08                                     ; $7029: $0e $08
    inc c                                         ; $702b: $0c
    pop de                                        ; $702c: $d1
    pop de                                        ; $702d: $d1
    dec bc                                        ; $702e: $0b
    pop de                                        ; $702f: $d1
    rst $38                                       ; $7030: $ff
    db $fc                                        ; $7031: $fc
    inc b                                         ; $7032: $04
    rlca                                          ; $7033: $07
    dec b                                         ; $7034: $05
    ld b, $02                                     ; $7035: $06 $02
    ld bc, $0101                                  ; $7037: $01 $01 $01
    ld bc, $0301                                  ; $703a: $01 $01 $03
    inc bc                                        ; $703d: $03
    ld bc, $0103                                  ; $703e: $01 $03 $01
    ld bc, $0101                                  ; $7041: $01 $01 $01
    ld bc, $0101                                  ; $7044: $01 $01 $01
    pop de                                        ; $7047: $d1
    pop de                                        ; $7048: $d1
    pop de                                        ; $7049: $d1
    add hl, bc                                    ; $704a: $09
    pop de                                        ; $704b: $d1
    pop de                                        ; $704c: $d1
    pop de                                        ; $704d: $d1
    pop de                                        ; $704e: $d1
    rlca                                          ; $704f: $07
    dec b                                         ; $7050: $05
    pop de                                        ; $7051: $d1
    pop de                                        ; $7052: $d1
    inc bc                                        ; $7053: $03
    inc b                                         ; $7054: $04
    rlca                                          ; $7055: $07
    rst $38                                       ; $7056: $ff
    inc bc                                        ; $7057: $03
    inc bc                                        ; $7058: $03
    inc bc                                        ; $7059: $03
    ld bc, $0303                                  ; $705a: $01 $03 $03
    inc bc                                        ; $705d: $03
    inc bc                                        ; $705e: $03
    ld bc, $0301                                  ; $705f: $01 $01 $03
    dec b                                         ; $7062: $05
    ld bc, $0101                                  ; $7063: $01 $01 $01
    ld bc, $ff06                                  ; $7066: $01 $06 $ff
    pop de                                        ; $7069: $d1
    pop de                                        ; $706a: $d1
    rlca                                          ; $706b: $07
    pop de                                        ; $706c: $d1
    pop de                                        ; $706d: $d1
    ld hl, sp-$2f                                 ; $706e: $f8 $d1
    pop de                                        ; $7070: $d1
    pop de                                        ; $7071: $d1
    ld a, [$d1d1]                                 ; $7072: $fa $d1 $d1
    pop de                                        ; $7075: $d1
    pop de                                        ; $7076: $d1
    ld bc, $0301                                  ; $7077: $01 $01 $03
    inc bc                                        ; $707a: $03
    ld bc, $0303                                  ; $707b: $01 $03 $03
    ld bc, $0303                                  ; $707e: $01 $03 $03
    inc bc                                        ; $7081: $03
    ld bc, $0303                                  ; $7082: $01 $03 $03
    inc bc                                        ; $7085: $03
    inc bc                                        ; $7086: $03
    pop de                                        ; $7087: $d1
    pop de                                        ; $7088: $d1
    pop de                                        ; $7089: $d1
    pop de                                        ; $708a: $d1
    ld sp, hl                                     ; $708b: $f9
    pop de                                        ; $708c: $d1
    pop de                                        ; $708d: $d1
    db $e4                                        ; $708e: $e4
    ei                                            ; $708f: $fb
    pop de                                        ; $7090: $d1
    pop de                                        ; $7091: $d1
    jp nc, $d1d1                                  ; $7092: $d2 $d1 $d1

    pop de                                        ; $7095: $d1
    push de                                       ; $7096: $d5
    inc bc                                        ; $7097: $03
    inc bc                                        ; $7098: $03
    inc bc                                        ; $7099: $03
    inc bc                                        ; $709a: $03
    ld bc, $0303                                  ; $709b: $01 $03 $03
    add d                                         ; $709e: $82
    ld bc, $0303                                  ; $709f: $01 $03 $03
    add d                                         ; $70a2: $82
    inc bc                                        ; $70a3: $03
    inc bc                                        ; $70a4: $03
    inc bc                                        ; $70a5: $03
    add d                                         ; $70a6: $82
    ldh [$d1], a                                  ; $70a7: $e0 $d1
    pop de                                        ; $70a9: $d1
    dec b                                         ; $70aa: $05
    db $eb                                        ; $70ab: $eb
    db $e4                                        ; $70ac: $e4
    pop de                                        ; $70ad: $d1
    pop de                                        ; $70ae: $d1
    db $d3                                        ; $70af: $d3
    call nc, $d1d1                                ; $70b0: $d4 $d1 $d1
    sub $d7                                       ; $70b3: $d6 $d7
    pop de                                        ; $70b5: $d1
    pop de                                        ; $70b6: $d1
    add d                                         ; $70b7: $82
    inc bc                                        ; $70b8: $03
    inc bc                                        ; $70b9: $03
    ld bc, $a282                                  ; $70ba: $01 $82 $a2
    inc bc                                        ; $70bd: $03
    inc bc                                        ; $70be: $03
    add d                                         ; $70bf: $82
    add d                                         ; $70c0: $82
    inc bc                                        ; $70c1: $03
    inc bc                                        ; $70c2: $03
    add d                                         ; $70c3: $82
    add d                                         ; $70c4: $82
    inc bc                                        ; $70c5: $03
    inc bc                                        ; $70c6: $03
    ld b, $02                                     ; $70c7: $06 $02
    inc bc                                        ; $70c9: $03
    db $e4                                        ; $70ca: $e4
    rlca                                          ; $70cb: $07
    ld bc, $a006                                  ; $70cc: $01 $06 $a0
    db $fc                                        ; $70cf: $fc
    db $fd                                        ; $70d0: $fd
    pop de                                        ; $70d1: $d1
    and c                                         ; $70d2: $a1
    pop de                                        ; $70d3: $d1
    pop de                                        ; $70d4: $d1
    pop de                                        ; $70d5: $d1
    and d                                         ; $70d6: $a2
    ld bc, $0101                                  ; $70d7: $01 $01 $01
    add l                                         ; $70da: $85
    ld bc, $0101                                  ; $70db: $01 $01 $01
    adc l                                         ; $70de: $8d
    ld bc, $0301                                  ; $70df: $01 $01 $03
    adc l                                         ; $70e2: $8d
    inc bc                                        ; $70e3: $03
    inc bc                                        ; $70e4: $03
    inc bc                                        ; $70e5: $03
    adc l                                         ; $70e6: $8d
    pop de                                        ; $70e7: $d1
    pop de                                        ; $70e8: $d1
    pop de                                        ; $70e9: $d1
    pop de                                        ; $70ea: $d1
    pop de                                        ; $70eb: $d1
    pop de                                        ; $70ec: $d1
    pop de                                        ; $70ed: $d1
    pop de                                        ; $70ee: $d1
    pop de                                        ; $70ef: $d1
    pop de                                        ; $70f0: $d1
    pop de                                        ; $70f1: $d1
    db $e4                                        ; $70f2: $e4
    pop de                                        ; $70f3: $d1
    pop de                                        ; $70f4: $d1
    pop de                                        ; $70f5: $d1
    jp nc, Jump_000_0303                          ; $70f6: $d2 $03 $03

    inc bc                                        ; $70f9: $03
    inc bc                                        ; $70fa: $03
    inc bc                                        ; $70fb: $03
    inc bc                                        ; $70fc: $03
    inc bc                                        ; $70fd: $03
    inc bc                                        ; $70fe: $03
    inc bc                                        ; $70ff: $03
    inc bc                                        ; $7100: $03
    inc bc                                        ; $7101: $03
    add d                                         ; $7102: $82
    inc bc                                        ; $7103: $03
    inc bc                                        ; $7104: $03
    inc bc                                        ; $7105: $03
    add d                                         ; $7106: $82
    pop de                                        ; $7107: $d1
    pop de                                        ; $7108: $d1
    ret c                                         ; $7109: $d8

    reti                                          ; $710a: $d9


    ldh [$d1], a                                  ; $710b: $e0 $d1
    call c, $ebdd                                 ; $710d: $dc $dd $eb
    db $e4                                        ; $7110: $e4
    pop hl                                        ; $7111: $e1
    ld [c], a                                     ; $7112: $e2
    db $d3                                        ; $7113: $d3
    call nc, $e6e5                                ; $7114: $d4 $e5 $e6
    inc bc                                        ; $7117: $03
    inc bc                                        ; $7118: $03
    add d                                         ; $7119: $82
    add d                                         ; $711a: $82
    add d                                         ; $711b: $82
    inc bc                                        ; $711c: $03
    add d                                         ; $711d: $82
    add d                                         ; $711e: $82
    add d                                         ; $711f: $82
    and d                                         ; $7120: $a2
    add d                                         ; $7121: $82
    add d                                         ; $7122: $82
    add d                                         ; $7123: $82
    add d                                         ; $7124: $82
    add d                                         ; $7125: $82
    add d                                         ; $7126: $82
    jp c, $d1db                                   ; $7127: $da $db $d1

    pop de                                        ; $712a: $d1
    sbc $ee                                       ; $712b: $de $ee
    rst $28                                       ; $712d: $ef
    pop de                                        ; $712e: $d1
    rst $20                                       ; $712f: $e7
    ld a, [c]                                     ; $7130: $f2
    push af                                       ; $7131: $f5
    pop de                                        ; $7132: $d1
    jp hl                                         ; $7133: $e9


    db $f4                                        ; $7134: $f4
    or $d1                                        ; $7135: $f6 $d1
    add d                                         ; $7137: $82
    add d                                         ; $7138: $82
    inc bc                                        ; $7139: $03
    inc bc                                        ; $713a: $03
    add d                                         ; $713b: $82
    add d                                         ; $713c: $82
    add d                                         ; $713d: $82
    inc bc                                        ; $713e: $03
    add d                                         ; $713f: $82
    add d                                         ; $7140: $82
    add d                                         ; $7141: $82
    inc bc                                        ; $7142: $03
    add d                                         ; $7143: $82
    add d                                         ; $7144: $82
    add d                                         ; $7145: $82
    inc bc                                        ; $7146: $03
    pop de                                        ; $7147: $d1
    pop de                                        ; $7148: $d1
    pop de                                        ; $7149: $d1
    and e                                         ; $714a: $a3
    pop de                                        ; $714b: $d1
    pop de                                        ; $714c: $d1
    pop de                                        ; $714d: $d1
    and h                                         ; $714e: $a4
    pop de                                        ; $714f: $d1
    pop de                                        ; $7150: $d1
    pop de                                        ; $7151: $d1
    and l                                         ; $7152: $a5
    pop de                                        ; $7153: $d1
    pop de                                        ; $7154: $d1
    pop de                                        ; $7155: $d1
    and [hl]                                      ; $7156: $a6
    inc bc                                        ; $7157: $03
    inc bc                                        ; $7158: $03
    inc bc                                        ; $7159: $03
    adc l                                         ; $715a: $8d
    inc bc                                        ; $715b: $03
    inc bc                                        ; $715c: $03
    inc bc                                        ; $715d: $03
    adc l                                         ; $715e: $8d
    inc bc                                        ; $715f: $03
    inc bc                                        ; $7160: $03
    inc bc                                        ; $7161: $03
    adc l                                         ; $7162: $8d
    inc bc                                        ; $7163: $03
    inc bc                                        ; $7164: $03
    inc bc                                        ; $7165: $03
    adc l                                         ; $7166: $8d
    pop de                                        ; $7167: $d1
    pop de                                        ; $7168: $d1
    pop de                                        ; $7169: $d1
    push de                                       ; $716a: $d5
    rst $28                                       ; $716b: $ef
    pop de                                        ; $716c: $d1
    ret c                                         ; $716d: $d8

    reti                                          ; $716e: $d9


    push af                                       ; $716f: $f5
    pop de                                        ; $7170: $d1
    call c, $f6dd                                 ; $7171: $dc $dd $f6
    pop de                                        ; $7174: $d1
    pop hl                                        ; $7175: $e1
    ld [c], a                                     ; $7176: $e2
    inc bc                                        ; $7177: $03
    inc bc                                        ; $7178: $03
    inc bc                                        ; $7179: $03
    add d                                         ; $717a: $82
    add d                                         ; $717b: $82
    inc bc                                        ; $717c: $03
    add d                                         ; $717d: $82
    add d                                         ; $717e: $82
    add d                                         ; $717f: $82
    inc bc                                        ; $7180: $03
    add d                                         ; $7181: $82
    add d                                         ; $7182: $82
    add d                                         ; $7183: $82
    inc bc                                        ; $7184: $03
    add d                                         ; $7185: $82
    add d                                         ; $7186: $82
    rst $30                                       ; $7187: $f7
    pop de                                        ; $7188: $d1
    pop de                                        ; $7189: $d1
    pop de                                        ; $718a: $d1
    pop de                                        ; $718b: $d1
    pop de                                        ; $718c: $d1
    db $10                                        ; $718d: $10
    dec d                                         ; $718e: $15
    pop de                                        ; $718f: $d1
    pop de                                        ; $7190: $d1
    pop de                                        ; $7191: $d1
    db $e4                                        ; $7192: $e4
    and a                                         ; $7193: $a7
    xor b                                         ; $7194: $a8
    xor c                                         ; $7195: $a9
    xor d                                         ; $7196: $aa
    inc bc                                        ; $7197: $03
    inc bc                                        ; $7198: $03
    inc bc                                        ; $7199: $03
    inc bc                                        ; $719a: $03
    inc bc                                        ; $719b: $03
    inc bc                                        ; $719c: $03
    ld bc, $0301                                  ; $719d: $01 $01 $03
    inc bc                                        ; $71a0: $03
    inc bc                                        ; $71a1: $03
    add a                                         ; $71a2: $87
    adc a                                         ; $71a3: $8f
    adc a                                         ; $71a4: $8f
    adc a                                         ; $71a5: $8f
    adc a                                         ; $71a6: $8f
    ld [$140c], sp                                ; $71a7: $08 $0c $14
    xor e                                         ; $71aa: $ab
    dec c                                         ; $71ab: $0d
    pop de                                        ; $71ac: $d1
    pop de                                        ; $71ad: $d1
    xor h                                         ; $71ae: $ac
    xor l                                         ; $71af: $ad
    xor [hl]                                      ; $71b0: $ae
    xor a                                         ; $71b1: $af
    or b                                          ; $71b2: $b0
    or c                                          ; $71b3: $b1
    or d                                          ; $71b4: $b2
    or e                                          ; $71b5: $b3
    or h                                          ; $71b6: $b4
    ld bc, $0101                                  ; $71b7: $01 $01 $01
    adc l                                         ; $71ba: $8d
    ld bc, $0303                                  ; $71bb: $01 $03 $03
    adc l                                         ; $71be: $8d
    adc a                                         ; $71bf: $8f
    adc a                                         ; $71c0: $8f
    adc a                                         ; $71c1: $8f
    adc l                                         ; $71c2: $8d
    adc a                                         ; $71c3: $8f
    adc a                                         ; $71c4: $8f
    adc a                                         ; $71c5: $8f
    adc l                                         ; $71c6: $8d
    ld a, [bc]                                    ; $71c7: $0a
    or l                                          ; $71c8: $b5
    db $fc                                        ; $71c9: $fc
    db $fd                                        ; $71ca: $fd
    pop de                                        ; $71cb: $d1
    or [hl]                                       ; $71cc: $b6
    pop de                                        ; $71cd: $d1
    pop de                                        ; $71ce: $d1
    pop de                                        ; $71cf: $d1
    or a                                          ; $71d0: $b7
    ld c, $08                                     ; $71d1: $0e $08
    cp b                                          ; $71d3: $b8
    cp c                                          ; $71d4: $b9
    cp d                                          ; $71d5: $ba
    dec c                                         ; $71d6: $0d
    ld bc, $018d                                  ; $71d7: $01 $8d $01
    ld bc, $8d03                                  ; $71da: $01 $03 $8d
    inc bc                                        ; $71dd: $03
    inc bc                                        ; $71de: $03
    dec b                                         ; $71df: $05
    adc l                                         ; $71e0: $8d
    ld bc, $8d01                                  ; $71e1: $01 $01 $8d
    adc l                                         ; $71e4: $8d
    adc l                                         ; $71e5: $8d
    ld bc, $0100                                  ; $71e6: $01 $00 $01
    cp $d1                                        ; $71e9: $fe $d1
    pop de                                        ; $71eb: $d1
    pop de                                        ; $71ec: $d1
    pop de                                        ; $71ed: $d1
    pop de                                        ; $71ee: $d1
    inc c                                         ; $71ef: $0c
    pop de                                        ; $71f0: $d1
    dec bc                                        ; $71f1: $0b
    pop de                                        ; $71f2: $d1
    ld c, $0d                                     ; $71f3: $0e $0d
    ld c, $0f                                     ; $71f5: $0e $0f
    ld bc, $0101                                  ; $71f7: $01 $01 $01
    inc bc                                        ; $71fa: $03
    inc bc                                        ; $71fb: $03
    inc bc                                        ; $71fc: $03
    inc bc                                        ; $71fd: $03
    inc bc                                        ; $71fe: $03
    ld bc, $0103                                  ; $71ff: $01 $03 $01
    inc bc                                        ; $7202: $03
    ld bc, $0101                                  ; $7203: $01 $01 $01
    ld bc, $0a09                                  ; $7206: $01 $09 $0a
    pop de                                        ; $7209: $d1
    pop de                                        ; $720a: $d1
    pop de                                        ; $720b: $d1
    pop de                                        ; $720c: $d1
    pop de                                        ; $720d: $d1
    db $10                                        ; $720e: $10
    ld de, $150d                                  ; $720f: $11 $0d $15
    rrca                                          ; $7212: $0f
    ld d, $12                                     ; $7213: $16 $12
    inc de                                        ; $7215: $13
    inc d                                         ; $7216: $14
    ld bc, $0301                                  ; $7217: $01 $01 $03
    inc bc                                        ; $721a: $03
    inc bc                                        ; $721b: $03
    inc bc                                        ; $721c: $03
    inc bc                                        ; $721d: $03
    ld bc, $0101                                  ; $721e: $01 $01 $01
    ld bc, $0101                                  ; $7221: $01 $01 $01
    ld bc, $0101                                  ; $7224: $01 $01 $01
    dec bc                                        ; $7227: $0b
    pop de                                        ; $7228: $d1
    inc c                                         ; $7229: $0c
    ld [de], a                                    ; $722a: $12
    ld de, $1514                                  ; $722b: $11 $14 $15
    ld [$1016], sp                                ; $722e: $08 $16 $10
    pop de                                        ; $7231: $d1
    pop de                                        ; $7232: $d1
    ld c, $d1                                     ; $7233: $0e $d1
    pop de                                        ; $7235: $d1
    pop de                                        ; $7236: $d1
    ld bc, $0103                                  ; $7237: $01 $03 $01
    ld bc, $0101                                  ; $723a: $01 $01 $01
    ld bc, $0101                                  ; $723d: $01 $01 $01
    ld bc, $0303                                  ; $7240: $01 $03 $03
    ld bc, $0303                                  ; $7243: $01 $03 $03
    inc bc                                        ; $7246: $03
    cp e                                          ; $7247: $bb
    cp h                                          ; $7248: $bc
    cp l                                          ; $7249: $bd
    cp [hl]                                       ; $724a: $be
    cp a                                          ; $724b: $bf
    ret nz                                        ; $724c: $c0

    pop bc                                        ; $724d: $c1
    jp nz, $c4c3                                  ; $724e: $c2 $c3 $c4

    push bc                                       ; $7251: $c5
    add $c7                                       ; $7252: $c6 $c7
    ret z                                         ; $7254: $c8

    ret                                           ; $7255: $c9


    jp z, $8d8d                                   ; $7256: $ca $8d $8d

    adc l                                         ; $7259: $8d
    adc l                                         ; $725a: $8d
    adc l                                         ; $725b: $8d
    adc l                                         ; $725c: $8d
    adc l                                         ; $725d: $8d
    adc l                                         ; $725e: $8d
    adc l                                         ; $725f: $8d
    adc l                                         ; $7260: $8d
    adc l                                         ; $7261: $8d
    adc l                                         ; $7262: $8d
    adc l                                         ; $7263: $8d
    adc l                                         ; $7264: $8d
    adc l                                         ; $7265: $8d
    adc l                                         ; $7266: $8d
    ld de, $1312                                  ; $7267: $11 $12 $13
    inc d                                         ; $726a: $14
    rrc a                                         ; $726b: $cb $0f
    ld d, $10                                     ; $726d: $16 $10
    call z, Call_000_0e0d                         ; $726f: $cc $0d $0e
    pop de                                        ; $7272: $d1
    call $d1d1                                    ; $7273: $cd $d1 $d1
    db $fd                                        ; $7276: $fd
    ld bc, $0101                                  ; $7277: $01 $01 $01
    ld bc, $018d                                  ; $727a: $01 $8d $01
    ld bc, $8d01                                  ; $727d: $01 $01 $8d
    ld bc, $0301                                  ; $7280: $01 $01 $03
    adc l                                         ; $7283: $8d
    inc bc                                        ; $7284: $03
    inc bc                                        ; $7285: $03
    ld bc, $0815                                  ; $7286: $01 $15 $08
    inc c                                         ; $7289: $0c
    pop de                                        ; $728a: $d1
    ld de, $09d1                                  ; $728b: $11 $d1 $09
    ld a, [bc]                                    ; $728e: $0a
    pop de                                        ; $728f: $d1
    pop de                                        ; $7290: $d1
    pop de                                        ; $7291: $d1
    db $fd                                        ; $7292: $fd
    nop                                           ; $7293: $00
    ld bc, $ce06                                  ; $7294: $01 $06 $ce
    ld bc, $0101                                  ; $7297: $01 $01 $01
    inc bc                                        ; $729a: $03
    ld bc, $0103                                  ; $729b: $01 $03 $01
    ld bc, $0303                                  ; $729e: $01 $03 $03
    inc bc                                        ; $72a1: $03
    ld bc, $0101                                  ; $72a2: $01 $01 $01
    ld bc, $d10a                                  ; $72a5: $01 $0a $d1
    dec bc                                        ; $72a8: $0b
    pop de                                        ; $72a9: $d1
    inc b                                         ; $72aa: $04
    pop de                                        ; $72ab: $d1
    rst $38                                       ; $72ac: $ff
    ld b, $fd                                     ; $72ad: $06 $fd
    nop                                           ; $72af: $00
    ld bc, $d1fe                                  ; $72b0: $01 $fe $d1
    rst $08                                       ; $72b3: $cf
    db $fd                                        ; $72b4: $fd
    pop de                                        ; $72b5: $d1
    pop de                                        ; $72b6: $d1
    inc bc                                        ; $72b7: $03
    ld bc, $0103                                  ; $72b8: $01 $03 $01
    inc bc                                        ; $72bb: $03
    ld bc, $0101                                  ; $72bc: $01 $01 $01
    ld bc, $0101                                  ; $72bf: $01 $01 $01
    inc bc                                        ; $72c2: $03
    ld a, [bc]                                    ; $72c3: $0a
    ld bc, $0303                                  ; $72c4: $01 $03 $03
    ret nc                                        ; $72c7: $d0

    pop de                                        ; $72c8: $d1
    jp nc, $d4d3                                  ; $72c9: $d2 $d3 $d4

    push de                                       ; $72cc: $d5
    sub $d7                                       ; $72cd: $d6 $d7
    ret c                                         ; $72cf: $d8

    reti                                          ; $72d0: $d9


    jp c, $dcdb                                   ; $72d1: $da $db $dc

    db $dd                                        ; $72d4: $dd
    sbc $c4                                       ; $72d5: $de $c4
    adc l                                         ; $72d7: $8d
    adc l                                         ; $72d8: $8d
    adc l                                         ; $72d9: $8d
    adc l                                         ; $72da: $8d
    adc l                                         ; $72db: $8d
    adc l                                         ; $72dc: $8d
    adc l                                         ; $72dd: $8d
    adc l                                         ; $72de: $8d
    adc l                                         ; $72df: $8d
    adc l                                         ; $72e0: $8d
    adc l                                         ; $72e1: $8d
    adc l                                         ; $72e2: $8d
    adc l                                         ; $72e3: $8d
    adc l                                         ; $72e4: $8d
    adc l                                         ; $72e5: $8d
    adc l                                         ; $72e6: $8d
    rst $18                                       ; $72e7: $df
    pop de                                        ; $72e8: $d1
    pop de                                        ; $72e9: $d1
    pop de                                        ; $72ea: $d1
    ldh [$d1], a                                  ; $72eb: $e0 $d1
    pop de                                        ; $72ed: $d1
    pop de                                        ; $72ee: $d1
    pop hl                                        ; $72ef: $e1
    pop de                                        ; $72f0: $d1
    pop de                                        ; $72f1: $d1
    pop de                                        ; $72f2: $d1
    ld [c], a                                     ; $72f3: $e2
    ld [de], a                                    ; $72f4: $12
    inc de                                        ; $72f5: $13
    inc d                                         ; $72f6: $14
    adc l                                         ; $72f7: $8d
    inc bc                                        ; $72f8: $03
    inc bc                                        ; $72f9: $03
    inc bc                                        ; $72fa: $03
    adc l                                         ; $72fb: $8d
    inc bc                                        ; $72fc: $03
    inc bc                                        ; $72fd: $03
    inc bc                                        ; $72fe: $03
    adc l                                         ; $72ff: $8d
    inc bc                                        ; $7300: $03
    inc bc                                        ; $7301: $03
    inc bc                                        ; $7302: $03
    adc l                                         ; $7303: $8d
    ld bc, $0101                                  ; $7304: $01 $01 $01
    db $fc                                        ; $7307: $fc
    inc b                                         ; $7308: $04
    rlca                                          ; $7309: $07
    db $e3                                        ; $730a: $e3
    pop de                                        ; $730b: $d1
    pop de                                        ; $730c: $d1
    pop de                                        ; $730d: $d1
    db $e4                                        ; $730e: $e4
    pop de                                        ; $730f: $d1
    pop de                                        ; $7310: $d1
    ld de, $160f                                  ; $7311: $11 $0f $16
    ld [$d10c], sp                                ; $7314: $08 $0c $d1
    ld bc, $0101                                  ; $7317: $01 $01 $01
    ld a, [bc]                                    ; $731a: $0a
    inc bc                                        ; $731b: $03
    inc bc                                        ; $731c: $03
    inc bc                                        ; $731d: $03
    ld a, [bc]                                    ; $731e: $0a
    inc bc                                        ; $731f: $03
    inc bc                                        ; $7320: $03
    ld bc, $0101                                  ; $7321: $01 $01 $01
    ld bc, $0301                                  ; $7324: $01 $01 $03
    push hl                                       ; $7327: $e5
    pop de                                        ; $7328: $d1
    pop de                                        ; $7329: $d1
    pop de                                        ; $732a: $d1
    and $d1                                       ; $732b: $e6 $d1
    pop de                                        ; $732d: $d1
    pop de                                        ; $732e: $d1
    ld c, $d1                                     ; $732f: $0e $d1
    pop de                                        ; $7331: $d1
    pop de                                        ; $7332: $d1
    pop de                                        ; $7333: $d1
    pop de                                        ; $7334: $d1
    rlca                                          ; $7335: $07
    dec b                                         ; $7336: $05
    ld a, [bc]                                    ; $7337: $0a
    inc bc                                        ; $7338: $03
    inc bc                                        ; $7339: $03
    inc bc                                        ; $733a: $03
    ld a, [bc]                                    ; $733b: $0a
    inc bc                                        ; $733c: $03
    inc bc                                        ; $733d: $03
    inc bc                                        ; $733e: $03
    ld bc, $0303                                  ; $733f: $01 $03 $03
    inc bc                                        ; $7342: $03
    inc bc                                        ; $7343: $03
    inc bc                                        ; $7344: $03
    ld bc, $e701                                  ; $7345: $01 $01 $e7
    add sp, -$17                                  ; $7348: $e8 $e9
    ld [$eceb], a                                 ; $734a: $ea $eb $ec
    db $ed                                        ; $734d: $ed
    xor $e2                                       ; $734e: $ee $e2
    call nz, $f0ef                                ; $7350: $c4 $ef $f0
    pop af                                        ; $7353: $f1
    ld a, [c]                                     ; $7354: $f2
    di                                            ; $7355: $f3
    call nz, $8d8d                                ; $7356: $c4 $8d $8d
    adc l                                         ; $7359: $8d
    adc l                                         ; $735a: $8d
    adc l                                         ; $735b: $8d
    adc l                                         ; $735c: $8d
    adc l                                         ; $735d: $8d
    adc l                                         ; $735e: $8d
    xor l                                         ; $735f: $ad
    adc l                                         ; $7360: $8d
    adc l                                         ; $7361: $8d
    adc l                                         ; $7362: $8d
    adc l                                         ; $7363: $8d
    adc l                                         ; $7364: $8d
    adc l                                         ; $7365: $8d
    adc l                                         ; $7366: $8d
    db $f4                                        ; $7367: $f4
    rrca                                          ; $7368: $0f
    inc c                                         ; $7369: $0c
    db $10                                        ; $736a: $10
    push af                                       ; $736b: $f5
    pop de                                        ; $736c: $d1
    pop de                                        ; $736d: $d1
    pop de                                        ; $736e: $d1
    or $f7                                        ; $736f: $f6 $f7
    ld hl, sp-$07                                 ; $7371: $f8 $f9
    ld [c], a                                     ; $7373: $e2
    ld a, [$fcfb]                                 ; $7374: $fa $fb $fc
    adc l                                         ; $7377: $8d
    ld bc, $0101                                  ; $7378: $01 $01 $01
    adc l                                         ; $737b: $8d
    inc bc                                        ; $737c: $03
    inc bc                                        ; $737d: $03
    inc bc                                        ; $737e: $03
    adc l                                         ; $737f: $8d
    adc a                                         ; $7380: $8f
    adc a                                         ; $7381: $8f
    adc a                                         ; $7382: $8f
    adc l                                         ; $7383: $8d
    adc a                                         ; $7384: $8f
    adc a                                         ; $7385: $8f
    adc a                                         ; $7386: $8f
    pop de                                        ; $7387: $d1
    pop de                                        ; $7388: $d1
    pop de                                        ; $7389: $d1
    pop de                                        ; $738a: $d1
    pop de                                        ; $738b: $d1
    pop de                                        ; $738c: $d1
    pop de                                        ; $738d: $d1
    pop de                                        ; $738e: $d1
    db $fd                                        ; $738f: $fd
    cp $ff                                        ; $7390: $fe $ff
    nop                                           ; $7392: $00
    ld bc, $0302                                  ; $7393: $01 $02 $03
    inc b                                         ; $7396: $04
    inc bc                                        ; $7397: $03
    inc bc                                        ; $7398: $03
    inc bc                                        ; $7399: $03
    inc bc                                        ; $739a: $03
    inc bc                                        ; $739b: $03
    inc bc                                        ; $739c: $03
    inc bc                                        ; $739d: $03
    inc bc                                        ; $739e: $03
    adc a                                         ; $739f: $8f
    adc e                                         ; $73a0: $8b
    adc e                                         ; $73a1: $8b
    adc e                                         ; $73a2: $8b
    adc a                                         ; $73a3: $8f
    adc e                                         ; $73a4: $8b
    adc e                                         ; $73a5: $8b
    adc e                                         ; $73a6: $8b
    cp $04                                        ; $73a7: $fe $04
    nop                                           ; $73a9: $00
    ld bc, $d1d1                                  ; $73aa: $01 $d1 $d1
    cp $04                                        ; $73ad: $fe $04
    dec b                                         ; $73af: $05
    ld b, $07                                     ; $73b0: $06 $07
    ld [$0a09], sp                                ; $73b2: $08 $09 $0a
    dec bc                                        ; $73b5: $0b
    inc c                                         ; $73b6: $0c
    ld bc, $0101                                  ; $73b7: $01 $01 $01
    ld bc, $0303                                  ; $73ba: $01 $03 $03
    ld bc, $8f01                                  ; $73bd: $01 $01 $8f
    adc a                                         ; $73c0: $8f
    adc a                                         ; $73c1: $8f
    adc a                                         ; $73c2: $8f
    adc a                                         ; $73c3: $8f
    adc a                                         ; $73c4: $8f
    adc a                                         ; $73c5: $8f
    adc a                                         ; $73c6: $8f
    ld de, $d1d1                                  ; $73c7: $11 $d1 $d1
    or l                                          ; $73ca: $b5
    pop de                                        ; $73cb: $d1
    pop de                                        ; $73cc: $d1
    pop de                                        ; $73cd: $d1
    or [hl]                                       ; $73ce: $b6
    pop de                                        ; $73cf: $d1
    pop de                                        ; $73d0: $d1
    pop de                                        ; $73d1: $d1
    or a                                          ; $73d2: $b7
    db $fc                                        ; $73d3: $fc
    pop de                                        ; $73d4: $d1
    cp d                                          ; $73d5: $ba
    cp c                                          ; $73d6: $b9
    ld bc, $0303                                  ; $73d7: $01 $03 $03
    xor [hl]                                      ; $73da: $ae
    inc bc                                        ; $73db: $03
    inc bc                                        ; $73dc: $03
    inc bc                                        ; $73dd: $03
    xor [hl]                                      ; $73de: $ae
    ld b, $06                                     ; $73df: $06 $06
    ld b, $ae                                     ; $73e1: $06 $ae
    ld bc, $ae06                                  ; $73e3: $01 $06 $ae
    xor [hl]                                      ; $73e6: $ae
    pop de                                        ; $73e7: $d1
    db $10                                        ; $73e8: $10
    pop de                                        ; $73e9: $d1
    pop de                                        ; $73ea: $d1
    ld c, $0f                                     ; $73eb: $0e $0f
    inc c                                         ; $73ed: $0c
    db $10                                        ; $73ee: $10
    pop de                                        ; $73ef: $d1
    dec c                                         ; $73f0: $0d
    dec d                                         ; $73f1: $15
    rrca                                          ; $73f2: $0f
    cp b                                          ; $73f3: $b8
    pop de                                        ; $73f4: $d1
    inc de                                        ; $73f5: $13
    dec c                                         ; $73f6: $0d
    inc bc                                        ; $73f7: $03
    ld bc, $0303                                  ; $73f8: $01 $03 $03
    ld bc, $0101                                  ; $73fb: $01 $01 $01
    ld bc, $0106                                  ; $73fe: $01 $06 $01
    ld bc, $ae01                                  ; $7401: $01 $01 $ae
    ld b, $01                                     ; $7404: $06 $01
    ld bc, $19d1                                  ; $7406: $01 $d1 $19
    ld a, [de]                                    ; $7409: $1a
    dec de                                        ; $740a: $1b
    pop de                                        ; $740b: $d1
    inc e                                         ; $740c: $1c
    dec e                                         ; $740d: $1d
    ld e, $0c                                     ; $740e: $1e $0c
    rra                                           ; $7410: $1f
    jr nz, @+$23                                  ; $7411: $20 $21

    pop de                                        ; $7413: $d1
    ld [hl+], a                                   ; $7414: $22
    inc hl                                        ; $7415: $23
    inc h                                         ; $7416: $24
    inc bc                                        ; $7417: $03
    rlca                                          ; $7418: $07
    rlca                                          ; $7419: $07
    rlca                                          ; $741a: $07
    inc bc                                        ; $741b: $03
    rlca                                          ; $741c: $07
    rlca                                          ; $741d: $07
    rlca                                          ; $741e: $07
    ld bc, $0707                                  ; $741f: $01 $07 $07
    rlca                                          ; $7422: $07
    inc bc                                        ; $7423: $03
    rlca                                          ; $7424: $07
    rlca                                          ; $7425: $07
    rlca                                          ; $7426: $07
    cp $be                                        ; $7427: $fe $be
    cp l                                          ; $7429: $bd
    cp h                                          ; $742a: $bc
    set 0, d                                      ; $742b: $cb $c2
    pop bc                                        ; $742d: $c1
    ret nz                                        ; $742e: $c0

    call z, $c5c6                                 ; $742f: $cc $c6 $c5
    call nz, $cacd                                ; $7432: $c4 $cd $ca
    ret                                           ; $7435: $c9


    ret z                                         ; $7436: $c8

    ld bc, $aeae                                  ; $7437: $01 $ae $ae
    xor [hl]                                      ; $743a: $ae
    xor [hl]                                      ; $743b: $ae
    xor [hl]                                      ; $743c: $ae
    xor [hl]                                      ; $743d: $ae
    xor [hl]                                      ; $743e: $ae
    xor [hl]                                      ; $743f: $ae
    xor [hl]                                      ; $7440: $ae
    xor [hl]                                      ; $7441: $ae
    adc [hl]                                      ; $7442: $8e
    xor [hl]                                      ; $7443: $ae
    xor [hl]                                      ; $7444: $ae
    xor [hl]                                      ; $7445: $ae
    xor [hl]                                      ; $7446: $ae
    cp e                                          ; $7447: $bb
    db $e4                                        ; $7448: $e4
    inc c                                         ; $7449: $0c
    pop de                                        ; $744a: $d1
    cp a                                          ; $744b: $bf
    and b                                         ; $744c: $a0
    pop de                                        ; $744d: $d1
    pop de                                        ; $744e: $d1
    jp $d1a1                                      ; $744f: $c3 $a1 $d1


    pop de                                        ; $7452: $d1
    rst $00                                       ; $7453: $c7
    and d                                         ; $7454: $a2
    pop de                                        ; $7455: $d1
    pop de                                        ; $7456: $d1
    xor [hl]                                      ; $7457: $ae
    and [hl]                                      ; $7458: $a6
    ld bc, $ae03                                  ; $7459: $01 $03 $ae
    xor [hl]                                      ; $745c: $ae
    inc bc                                        ; $745d: $03
    inc bc                                        ; $745e: $03
    xor [hl]                                      ; $745f: $ae
    xor [hl]                                      ; $7460: $ae
    inc bc                                        ; $7461: $03
    inc bc                                        ; $7462: $03
    xor [hl]                                      ; $7463: $ae
    xor [hl]                                      ; $7464: $ae
    inc bc                                        ; $7465: $03
    inc bc                                        ; $7466: $03
    rst $18                                       ; $7467: $df
    db $d3                                        ; $7468: $d3
    jp nc, $e0d1                                  ; $7469: $d2 $d1 $e0

    rst $10                                       ; $746c: $d7
    sub $d5                                       ; $746d: $d6 $d5
    pop hl                                        ; $746f: $e1
    db $db                                        ; $7470: $db
    jp c, $0dd9                                   ; $7471: $da $d9 $0d

    ld c, $0f                                     ; $7474: $0e $0f
    db $10                                        ; $7476: $10
    xor [hl]                                      ; $7477: $ae
    xor [hl]                                      ; $7478: $ae
    xor [hl]                                      ; $7479: $ae
    xor [hl]                                      ; $747a: $ae
    xor [hl]                                      ; $747b: $ae
    xor [hl]                                      ; $747c: $ae
    xor [hl]                                      ; $747d: $ae
    xor [hl]                                      ; $747e: $ae
    xor [hl]                                      ; $747f: $ae
    xor [hl]                                      ; $7480: $ae
    xor [hl]                                      ; $7481: $ae
    xor [hl]                                      ; $7482: $ae
    adc [hl]                                      ; $7483: $8e
    adc [hl]                                      ; $7484: $8e
    adc [hl]                                      ; $7485: $8e
    adc [hl]                                      ; $7486: $8e
    ret nc                                        ; $7487: $d0

    and e                                         ; $7488: $a3
    pop de                                        ; $7489: $d1
    pop de                                        ; $748a: $d1
    call nc, $d1a4                                ; $748b: $d4 $a4 $d1
    pop de                                        ; $748e: $d1
    ret c                                         ; $748f: $d8

    and l                                         ; $7490: $a5
    pop de                                        ; $7491: $d1
    pop de                                        ; $7492: $d1
    ld de, $d1a6                                  ; $7493: $11 $a6 $d1
    ld hl, sp-$52                                 ; $7496: $f8 $ae
    xor [hl]                                      ; $7498: $ae
    inc bc                                        ; $7499: $03
    inc bc                                        ; $749a: $03
    xor [hl]                                      ; $749b: $ae
    xor [hl]                                      ; $749c: $ae
    inc bc                                        ; $749d: $03
    inc bc                                        ; $749e: $03
    xor [hl]                                      ; $749f: $ae
    xor [hl]                                      ; $74a0: $ae
    inc bc                                        ; $74a1: $03
    inc bc                                        ; $74a2: $03
    adc [hl]                                      ; $74a3: $8e
    xor [hl]                                      ; $74a4: $ae
    inc bc                                        ; $74a5: $03
    ld bc, $19d1                                  ; $74a6: $01 $d1 $19
    ld a, [de]                                    ; $74a9: $1a
    dec de                                        ; $74aa: $1b
    pop de                                        ; $74ab: $d1
    inc e                                         ; $74ac: $1c
    dec e                                         ; $74ad: $1d
    ld e, $d1                                     ; $74ae: $1e $d1
    rra                                           ; $74b0: $1f
    jr nz, jr_08b_74d4                            ; $74b1: $20 $21

    ld sp, hl                                     ; $74b3: $f9
    ld [hl+], a                                   ; $74b4: $22
    inc hl                                        ; $74b5: $23
    inc h                                         ; $74b6: $24
    inc bc                                        ; $74b7: $03
    rlca                                          ; $74b8: $07
    rlca                                          ; $74b9: $07
    rlca                                          ; $74ba: $07
    inc bc                                        ; $74bb: $03
    rlca                                          ; $74bc: $07
    rlca                                          ; $74bd: $07
    rlca                                          ; $74be: $07
    inc bc                                        ; $74bf: $03
    rlca                                          ; $74c0: $07
    rlca                                          ; $74c1: $07
    rlca                                          ; $74c2: $07
    ld bc, $0707                                  ; $74c3: $01 $07 $07
    rlca                                          ; $74c6: $07
    ld [de], a                                    ; $74c7: $12
    inc de                                        ; $74c8: $13
    inc d                                         ; $74c9: $14
    dec d                                         ; $74ca: $15
    ld d, $17                                     ; $74cb: $16 $17
    jr @+$1b                                      ; $74cd: $18 $19

    ld a, [de]                                    ; $74cf: $1a
    dec de                                        ; $74d0: $1b
    inc e                                         ; $74d1: $1c
    dec e                                         ; $74d2: $1d
    dec c                                         ; $74d3: $0d

jr_08b_74d4:
    ld c, $1e                                     ; $74d4: $0e $1e
    rra                                           ; $74d6: $1f
    adc [hl]                                      ; $74d7: $8e
    adc [hl]                                      ; $74d8: $8e
    adc [hl]                                      ; $74d9: $8e
    adc [hl]                                      ; $74da: $8e
    adc [hl]                                      ; $74db: $8e
    adc [hl]                                      ; $74dc: $8e
    adc [hl]                                      ; $74dd: $8e
    adc [hl]                                      ; $74de: $8e
    adc [hl]                                      ; $74df: $8e
    adc [hl]                                      ; $74e0: $8e
    adc [hl]                                      ; $74e1: $8e
    adc [hl]                                      ; $74e2: $8e
    adc [hl]                                      ; $74e3: $8e
    adc [hl]                                      ; $74e4: $8e
    adc [hl]                                      ; $74e5: $8e
    adc [hl]                                      ; $74e6: $8e
    jr nz, @-$53                                  ; $74e7: $20 $ab

    pop de                                        ; $74e9: $d1
    ld a, [$ac21]                                 ; $74ea: $fa $21 $ac
    pop de                                        ; $74ed: $d1
    pop de                                        ; $74ee: $d1
    ld [hl+], a                                   ; $74ef: $22
    or b                                          ; $74f0: $b0
    xor a                                         ; $74f1: $af
    xor [hl]                                      ; $74f2: $ae
    inc hl                                        ; $74f3: $23
    or h                                          ; $74f4: $b4
    or e                                          ; $74f5: $b3
    or d                                          ; $74f6: $b2
    adc [hl]                                      ; $74f7: $8e
    xor [hl]                                      ; $74f8: $ae
    inc bc                                        ; $74f9: $03
    ld bc, $ae8e                                  ; $74fa: $01 $8e $ae
    inc bc                                        ; $74fd: $03
    inc bc                                        ; $74fe: $03
    adc [hl]                                      ; $74ff: $8e
    xor [hl]                                      ; $7500: $ae
    xor a                                         ; $7501: $af
    xor a                                         ; $7502: $af
    adc [hl]                                      ; $7503: $8e
    xor [hl]                                      ; $7504: $ae
    xor a                                         ; $7505: $af
    xor a                                         ; $7506: $af
    ei                                            ; $7507: $fb
    dec [hl]                                      ; $7508: $35
    ld [hl], $37                                  ; $7509: $36 $37
    pop de                                        ; $750b: $d1
    jr c, jr_08b_7547                             ; $750c: $38 $39

    ld a, [hl-]                                   ; $750e: $3a
    xor l                                         ; $750f: $ad
    inc h                                         ; $7510: $24
    inc a                                         ; $7511: $3c
    dec a                                         ; $7512: $3d
    or c                                          ; $7513: $b1
    dec h                                         ; $7514: $25
    ld h, $27                                     ; $7515: $26 $27
    ld bc, $0707                                  ; $7517: $01 $07 $07
    rlca                                          ; $751a: $07
    inc bc                                        ; $751b: $03
    rlca                                          ; $751c: $07
    rlca                                          ; $751d: $07
    rlca                                          ; $751e: $07
    xor a                                         ; $751f: $af
    rrca                                          ; $7520: $0f
    rlca                                          ; $7521: $07
    rlca                                          ; $7522: $07
    xor a                                         ; $7523: $af
    adc a                                         ; $7524: $8f
    rrca                                          ; $7525: $0f
    rrca                                          ; $7526: $0f
    rlca                                          ; $7527: $07
    nop                                           ; $7528: $00
    dec bc                                        ; $7529: $0b
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    rlca                                          ; $752c: $07
    pop de                                        ; $752d: $d1
    pop de                                        ; $752e: $d1
    pop de                                        ; $752f: $d1
    pop de                                        ; $7530: $d1
    pop de                                        ; $7531: $d1
    pop de                                        ; $7532: $d1
    pop de                                        ; $7533: $d1
    pop de                                        ; $7534: $d1
    pop de                                        ; $7535: $d1
    pop de                                        ; $7536: $d1
    pop de                                        ; $7537: $d1
    pop de                                        ; $7538: $d1
    pop de                                        ; $7539: $d1
    pop de                                        ; $753a: $d1
    pop de                                        ; $753b: $d1
    pop de                                        ; $753c: $d1
    add b                                         ; $753d: $80
    add b                                         ; $753e: $80
    add b                                         ; $753f: $80
    add b                                         ; $7540: $80
    add b                                         ; $7541: $80
    add b                                         ; $7542: $80
    add b                                         ; $7543: $80
    add b                                         ; $7544: $80
    add b                                         ; $7545: $80
    add b                                         ; $7546: $80

jr_08b_7547:
    add b                                         ; $7547: $80
    add b                                         ; $7548: $80
    add b                                         ; $7549: $80
    add b                                         ; $754a: $80
    add b                                         ; $754b: $80
    add b                                         ; $754c: $80
    jp nc, $d4d3                                  ; $754d: $d2 $d3 $d4

    push de                                       ; $7550: $d5
    jp nc, $d7d6                                  ; $7551: $d2 $d6 $d7

    ret c                                         ; $7554: $d8

    jp nc, $dad9                                  ; $7555: $d2 $d9 $da

    db $db                                        ; $7558: $db
    jp nc, $dddc                                  ; $7559: $d2 $dc $dd

    sbc $80                                       ; $755c: $de $80
    inc bc                                        ; $755e: $03
    ld b, $06                                     ; $755f: $06 $06
    add b                                         ; $7561: $80
    inc bc                                        ; $7562: $03
    ld b, $06                                     ; $7563: $06 $06
    add b                                         ; $7565: $80
    inc bc                                        ; $7566: $03
    ld b, $06                                     ; $7567: $06 $06
    add b                                         ; $7569: $80
    inc bc                                        ; $756a: $03
    ld b, $06                                     ; $756b: $06 $06
    rst $18                                       ; $756d: $df
    ldh [$e1], a                                  ; $756e: $e0 $e1
    ld [c], a                                     ; $7570: $e2
    db $e3                                        ; $7571: $e3
    db $e4                                        ; $7572: $e4
    push hl                                       ; $7573: $e5
    and $e7                                       ; $7574: $e6 $e7
    add sp, -$17                                  ; $7576: $e8 $e9
    ld [$eceb], a                                 ; $7578: $ea $eb $ec
    db $ed                                        ; $757b: $ed
    xor $06                                       ; $757c: $ee $06
    inc bc                                        ; $757e: $03
    nop                                           ; $757f: $00
    nop                                           ; $7580: $00
    ld b, $03                                     ; $7581: $06 $03
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    ld b, $03                                     ; $7585: $06 $03
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    ld b, $03                                     ; $7589: $06 $03
    nop                                           ; $758b: $00
    nop                                           ; $758c: $00
    rst $28                                       ; $758d: $ef
    ldh a, [$f1]                                  ; $758e: $f0 $f1
    ld a, [c]                                     ; $7590: $f2
    di                                            ; $7591: $f3
    db $f4                                        ; $7592: $f4
    push af                                       ; $7593: $f5
    or $f7                                        ; $7594: $f6 $f7
    ld hl, sp-$07                                 ; $7596: $f8 $f9
    ld a, [$fcfb]                                 ; $7598: $fa $fb $fc
    db $fd                                        ; $759b: $fd
    cp $00                                        ; $759c: $fe $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    nop                                           ; $75a0: $00
    nop                                           ; $75a1: $00
    nop                                           ; $75a2: $00
    nop                                           ; $75a3: $00
    nop                                           ; $75a4: $00
    nop                                           ; $75a5: $00
    nop                                           ; $75a6: $00
    nop                                           ; $75a7: $00
    nop                                           ; $75a8: $00
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    jp nc, Jump_000_00ff                          ; $75ad: $d2 $ff $00

    ld bc, $02d2                                  ; $75b0: $01 $d2 $02
    inc bc                                        ; $75b3: $03
    inc b                                         ; $75b4: $04
    jp nc, $0605                                  ; $75b5: $d2 $05 $06

    rlca                                          ; $75b8: $07
    jp nc, Jump_000_0908                          ; $75b9: $d2 $08 $09

    ld a, [bc]                                    ; $75bc: $0a
    add b                                         ; $75bd: $80
    inc bc                                        ; $75be: $03
    inc bc                                        ; $75bf: $03
    inc bc                                        ; $75c0: $03
    add b                                         ; $75c1: $80
    rlca                                          ; $75c2: $07
    rlca                                          ; $75c3: $07
    rlca                                          ; $75c4: $07
    add b                                         ; $75c5: $80
    rlca                                          ; $75c6: $07
    ld bc, $8001                                  ; $75c7: $01 $01 $80
    rlca                                          ; $75ca: $07
    ld bc, $0b01                                  ; $75cb: $01 $01 $0b
    inc c                                         ; $75ce: $0c
    dec c                                         ; $75cf: $0d
    ld c, $05                                     ; $75d0: $0e $05
    ld b, $0f                                     ; $75d2: $06 $0f
    ld [$1110], sp                                ; $75d4: $08 $10 $11
    ld [de], a                                    ; $75d7: $12
    inc de                                        ; $75d8: $13
    inc d                                         ; $75d9: $14
    dec d                                         ; $75da: $15
    inc b                                         ; $75db: $04
    dec b                                         ; $75dc: $05
    inc bc                                        ; $75dd: $03
    inc bc                                        ; $75de: $03
    inc bc                                        ; $75df: $03
    inc bc                                        ; $75e0: $03
    rlca                                          ; $75e1: $07
    rlca                                          ; $75e2: $07
    rlca                                          ; $75e3: $07
    rlca                                          ; $75e4: $07
    ld bc, $0101                                  ; $75e5: $01 $01 $01
    ld bc, $0101                                  ; $75e8: $01 $01 $01
    ld bc, $1601                                  ; $75eb: $01 $01 $16
    rla                                           ; $75ee: $17
    jr jr_08b_75ff                                ; $75ef: $18 $0e

    add hl, de                                    ; $75f1: $19
    ld [bc], a                                    ; $75f2: $02
    inc bc                                        ; $75f3: $03
    ld a, [de]                                    ; $75f4: $1a
    ld a, [de]                                    ; $75f5: $1a
    inc b                                         ; $75f6: $04
    dec b                                         ; $75f7: $05
    ld b, $06                                     ; $75f8: $06 $06
    rrca                                          ; $75fa: $0f
    ld [$031b], sp                                ; $75fb: $08 $1b $03
    inc bc                                        ; $75fe: $03

jr_08b_75ff:
    inc bc                                        ; $75ff: $03
    inc bc                                        ; $7600: $03
    rlca                                          ; $7601: $07
    rlca                                          ; $7602: $07
    rlca                                          ; $7603: $07
    rlca                                          ; $7604: $07
    ld bc, $0101                                  ; $7605: $01 $01 $01
    ld bc, $0101                                  ; $7608: $01 $01 $01
    ld bc, $d201                                  ; $760b: $01 $01 $d2
    inc de                                        ; $760e: $13
    ld a, [de]                                    ; $760f: $1a
    inc b                                         ; $7610: $04
    jp nc, Jump_000_1d1c                          ; $7611: $d2 $1c $1d

    rrca                                          ; $7614: $0f
    jp nc, Jump_000_0302                          ; $7615: $d2 $02 $03

    ld [de], a                                    ; $7618: $12
    jp nc, $1a13                                  ; $7619: $d2 $13 $1a

    inc b                                         ; $761c: $04
    add b                                         ; $761d: $80
    rlca                                          ; $761e: $07
    ld bc, $8001                                  ; $761f: $01 $01 $80
    rlca                                          ; $7622: $07
    ld bc, $8001                                  ; $7623: $01 $01 $80
    rlca                                          ; $7626: $07
    ld bc, $8001                                  ; $7627: $01 $01 $80
    rlca                                          ; $762a: $07
    ld bc, $0501                                  ; $762b: $01 $01 $05
    ld b, $0f                                     ; $762e: $06 $0f
    ld [$0908], sp                                ; $7630: $08 $08 $09
    ld [de], a                                    ; $7633: $12
    inc de                                        ; $7634: $13
    ld e, $1f                                     ; $7635: $1e $1f
    jr nz, jr_08b_765a                            ; $7637: $20 $21

    ld [hl+], a                                   ; $7639: $22
    inc hl                                        ; $763a: $23
    inc h                                         ; $763b: $24
    dec h                                         ; $763c: $25
    ld bc, $0101                                  ; $763d: $01 $01 $01
    ld bc, $0101                                  ; $7640: $01 $01 $01
    ld bc, $0101                                  ; $7643: $01 $01 $01
    ld bc, $0201                                  ; $7646: $01 $01 $02
    ld bc, $0201                                  ; $7649: $01 $01 $02
    ld [bc], a                                    ; $764c: $02
    add hl, bc                                    ; $764d: $09
    ld [de], a                                    ; $764e: $12
    inc de                                        ; $764f: $13
    ld h, $1a                                     ; $7650: $26 $1a
    inc b                                         ; $7652: $04
    dec b                                         ; $7653: $05
    ld b, $27                                     ; $7654: $06 $27
    jr z, @+$2b                                   ; $7656: $28 $29

    add hl, bc                                    ; $7658: $09
    ld a, [hl+]                                   ; $7659: $2a

jr_08b_765a:
    dec hl                                        ; $765a: $2b
    inc l                                         ; $765b: $2c
    inc h                                         ; $765c: $24
    ld bc, $0101                                  ; $765d: $01 $01 $01
    ld bc, $0101                                  ; $7660: $01 $01 $01
    ld bc, $0201                                  ; $7663: $01 $01 $02
    ld [bc], a                                    ; $7666: $02
    ld [bc], a                                    ; $7667: $02
    ld bc, $0202                                  ; $7668: $01 $02 $02
    ld [bc], a                                    ; $766b: $02
    ld [hl+], a                                   ; $766c: $22
    jp nc, $0605                                  ; $766d: $d2 $05 $06

    rrca                                          ; $7670: $0f
    jp nc, Jump_000_0908                          ; $7671: $d2 $08 $09

    ld [de], a                                    ; $7674: $12
    jp nc, Jump_000_1a20                          ; $7675: $d2 $20 $1a

    inc b                                         ; $7678: $04
    jp nc, $062d                                  ; $7679: $d2 $2d $06

    ld e, $80                                     ; $767c: $1e $80
    rlca                                          ; $767e: $07
    ld bc, $8001                                  ; $767f: $01 $01 $80
    rlca                                          ; $7682: $07
    ld bc, $8001                                  ; $7683: $01 $01 $80
    rlca                                          ; $7686: $07
    ld bc, $8001                                  ; $7687: $01 $01 $80
    rlca                                          ; $768a: $07
    ld bc, $0801                                  ; $768b: $01 $01 $08
    add hl, bc                                    ; $768e: $09
    ld l, $2f                                     ; $768f: $2e $2f
    inc de                                        ; $7691: $13
    ld a, [de]                                    ; $7692: $1a
    jr nc, jr_08b_76c6                            ; $7693: $30 $31

    dec b                                         ; $7695: $05
    ld b, $0f                                     ; $7696: $06 $0f
    add hl, de                                    ; $7698: $19
    rra                                           ; $7699: $1f
    jr nz, @+$14                                  ; $769a: $20 $12

    inc de                                        ; $769c: $13
    ld bc, $0201                                  ; $769d: $01 $01 $02
    ld [bc], a                                    ; $76a0: $02
    ld bc, $0201                                  ; $76a1: $01 $01 $02
    rlca                                          ; $76a4: $07
    ld bc, $0701                                  ; $76a5: $01 $01 $07
    rlca                                          ; $76a8: $07
    ld bc, $0101                                  ; $76a9: $01 $01 $01
    ld bc, $3332                                  ; $76ac: $01 $32 $33
    cpl                                           ; $76af: $2f
    ld l, $34                                     ; $76b0: $2e $34
    dec [hl]                                      ; $76b2: $35
    ld [$0230], sp                                ; $76b3: $08 $30 $02
    inc bc                                        ; $76b6: $03
    inc de                                        ; $76b7: $13
    ld a, [de]                                    ; $76b8: $1a
    ld a, [de]                                    ; $76b9: $1a
    inc b                                         ; $76ba: $04
    dec b                                         ; $76bb: $05
    rlca                                          ; $76bc: $07
    ld [bc], a                                    ; $76bd: $02
    ld [bc], a                                    ; $76be: $02
    ld [hl+], a                                   ; $76bf: $22
    ld [hl+], a                                   ; $76c0: $22
    ld [bc], a                                    ; $76c1: $02
    ld [bc], a                                    ; $76c2: $02
    rlca                                          ; $76c3: $07
    ld [hl+], a                                   ; $76c4: $22
    rlca                                          ; $76c5: $07

jr_08b_76c6:
    rlca                                          ; $76c6: $07
    rlca                                          ; $76c7: $07
    rlca                                          ; $76c8: $07
    ld bc, $0101                                  ; $76c9: $01 $01 $01
    ld bc, $3736                                  ; $76cc: $01 $36 $37
    jr c, jr_08b_770a                             ; $76cf: $38 $39

    ld a, [hl-]                                   ; $76d1: $3a
    dec sp                                        ; $76d2: $3b
    inc a                                         ; $76d3: $3c
    dec a                                         ; $76d4: $3d
    ld a, $3f                                     ; $76d5: $3e $3f
    ld b, b                                       ; $76d7: $40
    ld b, c                                       ; $76d8: $41
    ld b, d                                       ; $76d9: $42
    ld b, e                                       ; $76da: $43
    ld b, h                                       ; $76db: $44
    ld b, l                                       ; $76dc: $45
    inc bc                                        ; $76dd: $03
    ld b, $06                                     ; $76de: $06 $06
    ld b, $03                                     ; $76e0: $06 $03
    ld b, $06                                     ; $76e2: $06 $06
    ld b, $03                                     ; $76e4: $06 $03
    ld b, $06                                     ; $76e6: $06 $06
    ld b, $03                                     ; $76e8: $06 $03
    ld b, $06                                     ; $76ea: $06 $06
    ld b, $36                                     ; $76ec: $06 $36
    jp nc, $d1d1                                  ; $76ee: $d2 $d1 $d1

    ld b, [hl]                                    ; $76f1: $46
    jp nc, $d1d1                                  ; $76f2: $d2 $d1 $d1

    ld b, a                                       ; $76f5: $47
    jp nc, $d1d1                                  ; $76f6: $d2 $d1 $d1

    ld c, b                                       ; $76f9: $48
    jp nc, $d1d1                                  ; $76fa: $d2 $d1 $d1

    inc bc                                        ; $76fd: $03
    add b                                         ; $76fe: $80
    add b                                         ; $76ff: $80
    add b                                         ; $7700: $80
    inc bc                                        ; $7701: $03
    add b                                         ; $7702: $80
    add b                                         ; $7703: $80
    add b                                         ; $7704: $80
    inc bc                                        ; $7705: $03
    add b                                         ; $7706: $80
    add b                                         ; $7707: $80
    add b                                         ; $7708: $80
    inc bc                                        ; $7709: $03

jr_08b_770a:
    add b                                         ; $770a: $80
    add b                                         ; $770b: $80
    add b                                         ; $770c: $80
    ld c, c                                       ; $770d: $49
    ld c, d                                       ; $770e: $4a
    nop                                           ; $770f: $00
    ld bc, $0504                                  ; $7710: $01 $04 $05
    ld b, $1e                                     ; $7713: $06 $1e
    rrca                                          ; $7715: $0f
    ld [$4c4b], sp                                ; $7716: $08 $4b $4c
    ld [de], a                                    ; $7719: $12
    inc de                                        ; $771a: $13
    ld c, l                                       ; $771b: $4d
    ld c, [hl]                                    ; $771c: $4e
    inc bc                                        ; $771d: $03
    inc bc                                        ; $771e: $03
    inc bc                                        ; $771f: $03
    inc bc                                        ; $7720: $03
    rlca                                          ; $7721: $07
    rlca                                          ; $7722: $07
    rlca                                          ; $7723: $07
    rlca                                          ; $7724: $07
    ld bc, $0301                                  ; $7725: $01 $01 $03
    inc bc                                        ; $7728: $03
    ld bc, $0101                                  ; $7729: $01 $01 $01
    ld bc, $d249                                  ; $772c: $01 $49 $d2
    pop de                                        ; $772f: $d1
    pop de                                        ; $7730: $d1
    rra                                           ; $7731: $1f
    jp nc, $d1d1                                  ; $7732: $d2 $d1 $d1

    inc hl                                        ; $7735: $23
    jp nc, $d1d1                                  ; $7736: $d2 $d1 $d1

    dec b                                         ; $7739: $05
    jp nc, $d1d1                                  ; $773a: $d2 $d1 $d1

    inc bc                                        ; $773d: $03
    add b                                         ; $773e: $80
    add b                                         ; $773f: $80
    add b                                         ; $7740: $80
    rlca                                          ; $7741: $07
    add b                                         ; $7742: $80
    add b                                         ; $7743: $80
    add b                                         ; $7744: $80
    rlca                                          ; $7745: $07
    add b                                         ; $7746: $80
    add b                                         ; $7747: $80
    add b                                         ; $7748: $80
    rlca                                          ; $7749: $07
    add b                                         ; $774a: $80
    add b                                         ; $774b: $80
    add b                                         ; $774c: $80
    inc b                                         ; $774d: $04
    ld c, a                                       ; $774e: $4f
    ld d, b                                       ; $774f: $50
    ld d, c                                       ; $7750: $51
    rrca                                          ; $7751: $0f
    ld [$1209], sp                                ; $7752: $08 $09 $12
    ld [de], a                                    ; $7755: $12
    inc de                                        ; $7756: $13
    ld a, [de]                                    ; $7757: $1a
    inc b                                         ; $7758: $04
    inc b                                         ; $7759: $04
    dec b                                         ; $775a: $05
    ld b, $0f                                     ; $775b: $06 $0f
    ld bc, $0101                                  ; $775d: $01 $01 $01
    ld bc, $0101                                  ; $7760: $01 $01 $01
    ld bc, $0101                                  ; $7763: $01 $01 $01
    ld bc, $0101                                  ; $7766: $01 $01 $01
    ld bc, $0101                                  ; $7769: $01 $01 $01
    ld bc, $d208                                  ; $776c: $01 $08 $d2
    pop de                                        ; $776f: $d1
    pop de                                        ; $7770: $d1
    inc de                                        ; $7771: $13
    ld d, d                                       ; $7772: $52
    ld d, e                                       ; $7773: $53
    ld d, h                                       ; $7774: $54
    dec b                                         ; $7775: $05
    ld d, l                                       ; $7776: $55
    ld d, [hl]                                    ; $7777: $56
    jp nc, Jump_08b_5708                          ; $7778: $d2 $08 $57

    ld e, b                                       ; $777b: $58
    ld e, c                                       ; $777c: $59
    rlca                                          ; $777d: $07
    add b                                         ; $777e: $80
    add b                                         ; $777f: $80
    add b                                         ; $7780: $80
    rlca                                          ; $7781: $07
    add b                                         ; $7782: $80
    and b                                         ; $7783: $a0
    add b                                         ; $7784: $80
    rlca                                          ; $7785: $07
    inc hl                                        ; $7786: $23
    inc hl                                        ; $7787: $23
    add b                                         ; $7788: $80
    rlca                                          ; $7789: $07
    inc hl                                        ; $778a: $23
    inc hl                                        ; $778b: $23
    add b                                         ; $778c: $80
    db $10                                        ; $778d: $10
    ld de, $1209                                  ; $778e: $11 $09 $12
    inc d                                         ; $7791: $14
    dec d                                         ; $7792: $15
    ld a, [de]                                    ; $7793: $1a
    dec de                                        ; $7794: $1b
    inc b                                         ; $7795: $04
    dec b                                         ; $7796: $05
    ld b, $26                                     ; $7797: $06 $26
    db $10                                        ; $7799: $10
    ld de, $1209                                  ; $779a: $11 $09 $12
    rlca                                          ; $779d: $07
    ld bc, $0101                                  ; $779e: $01 $01 $01
    rlca                                          ; $77a1: $07
    ld bc, $0101                                  ; $77a2: $01 $01 $01
    rlca                                          ; $77a5: $07
    ld bc, $0101                                  ; $77a6: $01 $01 $01
    ld bc, $0101                                  ; $77a9: $01 $01 $01
    ld bc, $5a13                                  ; $77ac: $01 $13 $5a
    ld e, e                                       ; $77af: $5b
    ld e, c                                       ; $77b0: $59
    dec b                                         ; $77b1: $05
    ld e, h                                       ; $77b2: $5c
    ld e, l                                       ; $77b3: $5d
    ld e, c                                       ; $77b4: $59
    ld [$5f5e], sp                                ; $77b5: $08 $5e $5f
    ld e, c                                       ; $77b8: $59
    rlca                                          ; $77b9: $07
    inc hl                                        ; $77ba: $23
    ld [hl+], a                                   ; $77bb: $22
    ld e, c                                       ; $77bc: $59
    rlca                                          ; $77bd: $07
    inc hl                                        ; $77be: $23
    inc hl                                        ; $77bf: $23
    add b                                         ; $77c0: $80
    rlca                                          ; $77c1: $07
    inc hl                                        ; $77c2: $23
    inc hl                                        ; $77c3: $23
    add b                                         ; $77c4: $80
    rlca                                          ; $77c5: $07
    inc hl                                        ; $77c6: $23
    inc hl                                        ; $77c7: $23
    add b                                         ; $77c8: $80
    rlca                                          ; $77c9: $07
    daa                                           ; $77ca: $27
    daa                                           ; $77cb: $27
    add b                                         ; $77cc: $80
    jp nc, Jump_000_0908                          ; $77cd: $d2 $08 $09

    ld [hl+], a                                   ; $77d0: $22
    jp nc, $1a13                                  ; $77d1: $d2 $13 $1a

    inc b                                         ; $77d4: $04
    jp nc, $201f                                  ; $77d5: $d2 $1f $20

    rrca                                          ; $77d8: $0f
    jp nc, Jump_000_2d23                          ; $77d9: $d2 $23 $2d

    ld [de], a                                    ; $77dc: $12
    add b                                         ; $77dd: $80
    rlca                                          ; $77de: $07
    ld bc, $8001                                  ; $77df: $01 $01 $80
    rlca                                          ; $77e2: $07
    ld bc, $8001                                  ; $77e3: $01 $01 $80
    ld bc, $0101                                  ; $77e6: $01 $01 $01
    add b                                         ; $77e9: $80
    rlca                                          ; $77ea: $07
    ld bc, $2301                                  ; $77eb: $01 $01 $23
    dec l                                         ; $77ee: $2d
    inc b                                         ; $77ef: $04
    dec b                                         ; $77f0: $05
    dec b                                         ; $77f1: $05
    ld b, $0f                                     ; $77f2: $06 $0f
    ld [$0908], sp                                ; $77f4: $08 $08 $09
    inc b                                         ; $77f7: $04
    ld h, b                                       ; $77f8: $60
    inc de                                        ; $77f9: $13
    ld a, [de]                                    ; $77fa: $1a
    inc h                                         ; $77fb: $24
    ld h, c                                       ; $77fc: $61
    ld bc, $0101                                  ; $77fd: $01 $01 $01
    ld bc, $0101                                  ; $7800: $01 $01 $01
    ld bc, $0101                                  ; $7803: $01 $01 $01
    ld bc, $0501                                  ; $7806: $01 $01 $05
    ld bc, $0501                                  ; $7809: $01 $01 $05
    dec b                                         ; $780c: $05
    ld b, $1b                                     ; $780d: $06 $1b
    ld [$090a], sp                                ; $780f: $08 $0a $09
    ld h, $13                                     ; $7812: $26 $13
    ld a, [de]                                    ; $7814: $1a
    ld h, d                                       ; $7815: $62
    ld h, e                                       ; $7816: $63
    ld h, h                                       ; $7817: $64
    add hl, bc                                    ; $7818: $09
    ld h, l                                       ; $7819: $65
    ld h, [hl]                                    ; $781a: $66
    ld h, a                                       ; $781b: $67
    inc h                                         ; $781c: $24
    ld bc, $0101                                  ; $781d: $01 $01 $01
    ld bc, $0101                                  ; $7820: $01 $01 $01
    ld bc, $0501                                  ; $7823: $01 $01 $05
    dec b                                         ; $7826: $05
    dec b                                         ; $7827: $05
    ld bc, $0505                                  ; $7828: $01 $05 $05
    dec b                                         ; $782b: $05
    dec h                                         ; $782c: $25
    jp nc, $1a13                                  ; $782d: $d2 $13 $1a

    inc b                                         ; $7830: $04
    jp nc, Jump_08b_6968                          ; $7831: $d2 $68 $69

    ld c, a                                       ; $7834: $4f
    jp nc, Jump_08b_6b6a                          ; $7835: $d2 $6a $6b

    ld [de], a                                    ; $7838: $12
    jp nc, Jump_08b_6d6c                          ; $7839: $d2 $6c $6d

    inc b                                         ; $783c: $04
    add b                                         ; $783d: $80
    rlca                                          ; $783e: $07
    ld bc, $8001                                  ; $783f: $01 $01 $80
    ld b, $06                                     ; $7842: $06 $06
    ld bc, $0680                                  ; $7844: $01 $80 $06
    ld b, $01                                     ; $7847: $06 $01
    add b                                         ; $7849: $80
    ld b, $06                                     ; $784a: $06 $06
    rlca                                          ; $784c: $07
    dec b                                         ; $784d: $05
    ld b, $2e                                     ; $784e: $06 $2e
    cpl                                           ; $7850: $2f
    ld d, b                                       ; $7851: $50
    ld d, c                                       ; $7852: $51
    jr nc, @+$07                                  ; $7853: $30 $05

    inc de                                        ; $7855: $13
    ld a, [de]                                    ; $7856: $1a
    rrca                                          ; $7857: $0f
    ld [$0605], sp                                ; $7858: $08 $05 $06
    ld [de], a                                    ; $785b: $12
    inc de                                        ; $785c: $13
    ld bc, $0501                                  ; $785d: $01 $01 $05
    dec b                                         ; $7860: $05
    ld bc, $0501                                  ; $7861: $01 $01 $05
    rlca                                          ; $7864: $07
    ld bc, $0701                                  ; $7865: $01 $01 $07
    rlca                                          ; $7868: $07
    ld bc, $0101                                  ; $7869: $01 $01 $01
    ld bc, $6f6e                                  ; $786c: $01 $6e $6f
    ld [hl], b                                    ; $786f: $70
    ld l, $34                                     ; $7870: $2e $34
    dec [hl]                                      ; $7872: $35
    ld [$0930], sp                                ; $7873: $08 $30 $09
    ld sp, $1d1c                                  ; $7876: $31 $1c $1d
    ld a, [de]                                    ; $7879: $1a
    add hl, de                                    ; $787a: $19
    ld [bc], a                                    ; $787b: $02
    inc bc                                        ; $787c: $03
    dec b                                         ; $787d: $05
    dec b                                         ; $787e: $05
    dec b                                         ; $787f: $05
    dec h                                         ; $7880: $25
    dec b                                         ; $7881: $05
    dec b                                         ; $7882: $05
    rlca                                          ; $7883: $07
    dec h                                         ; $7884: $25
    rlca                                          ; $7885: $07
    rlca                                          ; $7886: $07
    rlca                                          ; $7887: $07
    rlca                                          ; $7888: $07
    ld bc, $0101                                  ; $7889: $01 $01 $01
    ld bc, $05d2                                  ; $788c: $01 $d2 $05
    ld b, $0f                                     ; $788f: $06 $0f
    jp nc, Jump_000_0908                          ; $7891: $d2 $08 $09

    ld [de], a                                    ; $7894: $12
    jp nc, Jump_000_1a1d                          ; $7895: $d2 $1d $1a

    inc b                                         ; $7898: $04
    jp nc, Jump_000_0603                          ; $7899: $d2 $03 $06

    dec de                                        ; $789c: $1b
    add b                                         ; $789d: $80
    rlca                                          ; $789e: $07
    rlca                                          ; $789f: $07
    rlca                                          ; $78a0: $07
    add b                                         ; $78a1: $80
    rlca                                          ; $78a2: $07
    ld bc, $8001                                  ; $78a3: $01 $01 $80
    rlca                                          ; $78a6: $07
    ld bc, $8001                                  ; $78a7: $01 $01 $80
    rlca                                          ; $78aa: $07
    ld bc, $1e01                                  ; $78ab: $01 $01 $1e
    rra                                           ; $78ae: $1f
    jr nz, @+$07                                  ; $78af: $20 $05

    ld [hl+], a                                   ; $78b1: $22
    inc hl                                        ; $78b2: $23
    dec l                                         ; $78b3: $2d
    ld [$051a], sp                                ; $78b4: $08 $1a $05
    inc b                                         ; $78b7: $04
    ld [hl], c                                    ; $78b8: $71
    ld [$2409], sp                                ; $78b9: $08 $09 $24
    ld [hl], d                                    ; $78bc: $72
    ld bc, $0101                                  ; $78bd: $01 $01 $01
    ld bc, $0101                                  ; $78c0: $01 $01 $01
    ld bc, $0101                                  ; $78c3: $01 $01 $01
    ld bc, $0301                                  ; $78c6: $01 $01 $03
    ld bc, $0301                                  ; $78c9: $01 $01 $03
    inc bc                                        ; $78cc: $03
    ld b, $0f                                     ; $78cd: $06 $0f
    ld [$0909], sp                                ; $78cf: $08 $09 $09
    ld [de], a                                    ; $78d2: $12
    inc de                                        ; $78d3: $13
    ld a, [de]                                    ; $78d4: $1a
    ld [hl], e                                    ; $78d5: $73
    ld [hl], h                                    ; $78d6: $74
    ld [hl], l                                    ; $78d7: $75
    add hl, bc                                    ; $78d8: $09
    halt                                          ; $78d9: $76
    ld [hl], a                                    ; $78da: $77
    ld a, b                                       ; $78db: $78
    inc h                                         ; $78dc: $24
    ld bc, $0101                                  ; $78dd: $01 $01 $01
    ld bc, $0101                                  ; $78e0: $01 $01 $01
    ld bc, $0301                                  ; $78e3: $01 $01 $03
    inc bc                                        ; $78e6: $03
    inc bc                                        ; $78e7: $03
    ld bc, $0303                                  ; $78e8: $01 $03 $03
    inc bc                                        ; $78eb: $03
    inc hl                                        ; $78ec: $23
    jp nc, Jump_000_0908                          ; $78ed: $d2 $08 $09

    ld h, $d2                                     ; $78f0: $26 $d2
    inc de                                        ; $78f2: $13
    ld a, [de]                                    ; $78f3: $1a
    inc b                                         ; $78f4: $04
    jp nc, $0605                                  ; $78f5: $d2 $05 $06

    rrca                                          ; $78f8: $0f
    jp nc, $201f                                  ; $78f9: $d2 $1f $20

    ld [de], a                                    ; $78fc: $12
    add b                                         ; $78fd: $80
    rlca                                          ; $78fe: $07
    ld bc, $8001                                  ; $78ff: $01 $01 $80
    rlca                                          ; $7902: $07
    ld bc, $8001                                  ; $7903: $01 $01 $80
    rlca                                          ; $7906: $07
    ld bc, $8001                                  ; $7907: $01 $01 $80
    rlca                                          ; $790a: $07
    ld bc, $1301                                  ; $790b: $01 $01 $13
    ld a, [de]                                    ; $790e: $1a
    ld l, $2f                                     ; $790f: $2e $2f
    ld e, $1f                                     ; $7911: $1e $1f
    jr nc, jr_08b_7928                            ; $7913: $30 $13

    ld [hl+], a                                   ; $7915: $22
    inc hl                                        ; $7916: $23
    dec l                                         ; $7917: $2d
    dec b                                         ; $7918: $05
    inc de                                        ; $7919: $13
    ld a, [de]                                    ; $791a: $1a
    ld [de], a                                    ; $791b: $12
    inc de                                        ; $791c: $13
    ld bc, $0301                                  ; $791d: $01 $01 $03
    inc bc                                        ; $7920: $03
    ld bc, $0301                                  ; $7921: $01 $01 $03
    rlca                                          ; $7924: $07
    ld bc, $0701                                  ; $7925: $01 $01 $07

jr_08b_7928:
    rlca                                          ; $7928: $07
    ld bc, $0101                                  ; $7929: $01 $01 $01
    ld bc, $7a79                                  ; $792c: $01 $79 $7a
    ld a, e                                       ; $792f: $7b
    ld l, $34                                     ; $7930: $2e $34
    dec [hl]                                      ; $7932: $35
    rlca                                          ; $7933: $07
    jr nc, jr_08b_793c                            ; $7934: $30 $06

    ld [de], a                                    ; $7936: $12
    ld a, [bc]                                    ; $7937: $0a
    inc d                                         ; $7938: $14
    ld a, [de]                                    ; $7939: $1a
    inc b                                         ; $793a: $04
    dec b                                         ; $793b: $05

jr_08b_793c:
    ld b, $03                                     ; $793c: $06 $03
    inc bc                                        ; $793e: $03
    inc bc                                        ; $793f: $03
    inc hl                                        ; $7940: $23
    inc bc                                        ; $7941: $03
    inc bc                                        ; $7942: $03
    rlca                                          ; $7943: $07
    inc hl                                        ; $7944: $23
    rlca                                          ; $7945: $07
    rlca                                          ; $7946: $07
    rlca                                          ; $7947: $07
    rlca                                          ; $7948: $07
    ld bc, $0101                                  ; $7949: $01 $01 $01
    ld bc, $1514                                  ; $794c: $01 $14 $15
    ld a, [de]                                    ; $794f: $1a
    inc b                                         ; $7950: $04
    inc b                                         ; $7951: $04
    dec b                                         ; $7952: $05
    ld b, $0f                                     ; $7953: $06 $0f
    rrca                                          ; $7955: $0f
    ld e, $1f                                     ; $7956: $1e $1f
    jr nz, jr_08b_796c                            ; $7958: $20 $12

    ld [hl+], a                                   ; $795a: $22
    inc hl                                        ; $795b: $23
    dec l                                         ; $795c: $2d
    ld bc, $0101                                  ; $795d: $01 $01 $01
    ld bc, $0101                                  ; $7960: $01 $01 $01
    ld bc, $0101                                  ; $7963: $01 $01 $01
    ld bc, $0101                                  ; $7966: $01 $01 $01
    ld bc, $0101                                  ; $7969: $01 $01 $01

jr_08b_796c:
    ld bc, $0f0a                                  ; $796c: $01 $0a $0f
    ld b, $d2                                     ; $796f: $06 $d2
    ld [$537c], sp                                ; $7971: $08 $7c $53
    ld a, l                                       ; $7974: $7d
    inc de                                        ; $7975: $13
    jp nc, $d1d1                                  ; $7976: $d2 $d1 $d1

    dec b                                         ; $7979: $05
    jp nc, $d1d1                                  ; $797a: $d2 $d1 $d1

    ld bc, $2721                                  ; $797d: $01 $21 $27
    add b                                         ; $7980: $80
    ld bc, $a080                                  ; $7981: $01 $80 $a0
    add b                                         ; $7984: $80
    ld bc, $8080                                  ; $7985: $01 $80 $80
    add b                                         ; $7988: $80
    rlca                                          ; $7989: $07
    add b                                         ; $798a: $80
    add b                                         ; $798b: $80
    add b                                         ; $798c: $80
    inc b                                         ; $798d: $04
    dec b                                         ; $798e: $05
    ld b, $0f                                     ; $798f: $06 $0f
    rrca                                          ; $7991: $0f
    ld [$3109], sp                                ; $7992: $08 $09 $31
    ld [de], a                                    ; $7995: $12
    inc de                                        ; $7996: $13
    ld a, [de]                                    ; $7997: $1a
    add hl, de                                    ; $7998: $19
    inc b                                         ; $7999: $04
    dec b                                         ; $799a: $05
    ld b, $0f                                     ; $799b: $06 $0f
    rlca                                          ; $799d: $07
    ld bc, $0101                                  ; $799e: $01 $01 $01
    rlca                                          ; $79a1: $07
    ld bc, $0101                                  ; $79a2: $01 $01 $01
    rlca                                          ; $79a5: $07
    ld bc, $0101                                  ; $79a6: $01 $01 $01
    ld bc, $0101                                  ; $79a9: $01 $01 $01
    ld bc, $d208                                  ; $79ac: $01 $08 $d2
    pop de                                        ; $79af: $d1
    pop de                                        ; $79b0: $d1
    inc e                                         ; $79b1: $1c
    jp nc, $d1d1                                  ; $79b2: $d2 $d1 $d1

    ld [bc], a                                    ; $79b5: $02
    jp nc, $d1d1                                  ; $79b6: $d2 $d1 $d1

    ld [$d1d2], sp                                ; $79b9: $08 $d2 $d1
    pop de                                        ; $79bc: $d1
    rlca                                          ; $79bd: $07
    add b                                         ; $79be: $80
    add b                                         ; $79bf: $80
    add b                                         ; $79c0: $80
    rlca                                          ; $79c1: $07
    add b                                         ; $79c2: $80
    add b                                         ; $79c3: $80
    add b                                         ; $79c4: $80
    rlca                                          ; $79c5: $07
    add b                                         ; $79c6: $80
    add b                                         ; $79c7: $80
    add b                                         ; $79c8: $80
    rlca                                          ; $79c9: $07
    add b                                         ; $79ca: $80
    add b                                         ; $79cb: $80
    add b                                         ; $79cc: $80
    rrca                                          ; $79cd: $0f
    ld [$121b], sp                                ; $79ce: $08 $1b $12
    ld [de], a                                    ; $79d1: $12
    inc de                                        ; $79d2: $13
    ld h, $04                                     ; $79d3: $26 $04
    inc b                                         ; $79d5: $04
    dec b                                         ; $79d6: $05
    ld b, $0f                                     ; $79d7: $06 $0f
    rrca                                          ; $79d9: $0f
    ld [$1209], sp                                ; $79da: $08 $09 $12
    ld bc, $0101                                  ; $79dd: $01 $01 $01
    ld bc, $0101                                  ; $79e0: $01 $01 $01
    ld bc, $0101                                  ; $79e3: $01 $01 $01
    ld bc, $0101                                  ; $79e6: $01 $01 $01
    ld bc, $0101                                  ; $79e9: $01 $01 $01
    ld bc, $d213                                  ; $79ec: $01 $13 $d2
    pop de                                        ; $79ef: $d1
    pop de                                        ; $79f0: $d1
    dec b                                         ; $79f1: $05
    jp nc, $d1d1                                  ; $79f2: $d2 $d1 $d1

    ld [$d1d2], sp                                ; $79f5: $08 $d2 $d1
    pop de                                        ; $79f8: $d1
    inc de                                        ; $79f9: $13
    jp nc, $d1d1                                  ; $79fa: $d2 $d1 $d1

    rlca                                          ; $79fd: $07
    add b                                         ; $79fe: $80
    add b                                         ; $79ff: $80
    add b                                         ; $7a00: $80
    rlca                                          ; $7a01: $07
    add b                                         ; $7a02: $80
    add b                                         ; $7a03: $80
    add b                                         ; $7a04: $80
    rlca                                          ; $7a05: $07
    add b                                         ; $7a06: $80
    add b                                         ; $7a07: $80
    add b                                         ; $7a08: $80
    rlca                                          ; $7a09: $07
    add b                                         ; $7a0a: $80
    add b                                         ; $7a0b: $80
    add b                                         ; $7a0c: $80
    ld [de], a                                    ; $7a0d: $12
    inc de                                        ; $7a0e: $13
    ld e, $1f                                     ; $7a0f: $1e $1f
    inc b                                         ; $7a11: $04
    dec b                                         ; $7a12: $05
    ld [hl+], a                                   ; $7a13: $22
    inc hl                                        ; $7a14: $23
    rrca                                          ; $7a15: $0f
    ld [$1209], sp                                ; $7a16: $08 $09 $12
    inc de                                        ; $7a19: $13
    inc de                                        ; $7a1a: $13
    ld a, [de]                                    ; $7a1b: $1a
    inc b                                         ; $7a1c: $04
    rlca                                          ; $7a1d: $07
    ld bc, $0101                                  ; $7a1e: $01 $01 $01
    rlca                                          ; $7a21: $07
    ld bc, $0101                                  ; $7a22: $01 $01 $01
    rlca                                          ; $7a25: $07
    ld bc, $0101                                  ; $7a26: $01 $01 $01
    ld bc, $0101                                  ; $7a29: $01 $01 $01
    ld bc, $d220                                  ; $7a2c: $01 $20 $d2
    pop de                                        ; $7a2f: $d1
    pop de                                        ; $7a30: $d1
    dec l                                         ; $7a31: $2d
    jp nc, $d1d1                                  ; $7a32: $d2 $d1 $d1

    inc de                                        ; $7a35: $13
    jp nc, $d1d1                                  ; $7a36: $d2 $d1 $d1

    dec b                                         ; $7a39: $05
    jp nc, $d1d1                                  ; $7a3a: $d2 $d1 $d1

    rlca                                          ; $7a3d: $07
    add b                                         ; $7a3e: $80
    add b                                         ; $7a3f: $80
    add b                                         ; $7a40: $80
    rlca                                          ; $7a41: $07
    add b                                         ; $7a42: $80
    add b                                         ; $7a43: $80
    add b                                         ; $7a44: $80
    rlca                                          ; $7a45: $07
    add b                                         ; $7a46: $80
    add b                                         ; $7a47: $80
    add b                                         ; $7a48: $80
    rlca                                          ; $7a49: $07
    add b                                         ; $7a4a: $80
    add b                                         ; $7a4b: $80
    add b                                         ; $7a4c: $80
    jp nc, Jump_000_2d23                          ; $7a4d: $d2 $23 $2d

    inc b                                         ; $7a50: $04
    jp nc, $0605                                  ; $7a51: $d2 $05 $06

    rrca                                          ; $7a54: $0f
    jp nc, Jump_000_0908                          ; $7a55: $d2 $08 $09

    rlca                                          ; $7a58: $07
    jp nc, $1a13                                  ; $7a59: $d2 $13 $1a

    ld a, [bc]                                    ; $7a5c: $0a
    add b                                         ; $7a5d: $80
    rlca                                          ; $7a5e: $07
    ld bc, $8001                                  ; $7a5f: $01 $01 $80
    rlca                                          ; $7a62: $07
    ld bc, $8001                                  ; $7a63: $01 $01 $80
    rlca                                          ; $7a66: $07
    ld bc, $8001                                  ; $7a67: $01 $01 $80
    rlca                                          ; $7a6a: $07
    ld bc, $0501                                  ; $7a6b: $01 $01 $05
    ld b, $04                                     ; $7a6e: $06 $04
    dec b                                         ; $7a70: $05
    ld [$0f09], sp                                ; $7a71: $08 $09 $0f
    ld [$1110], sp                                ; $7a74: $08 $10 $11
    inc b                                         ; $7a77: $04
    ld a, [hl]                                    ; $7a78: $7e
    inc d                                         ; $7a79: $14
    dec d                                         ; $7a7a: $15
    inc h                                         ; $7a7b: $24
    ld a, a                                       ; $7a7c: $7f
    ld bc, $0101                                  ; $7a7d: $01 $01 $01
    ld bc, $0101                                  ; $7a80: $01 $01 $01
    ld bc, $0101                                  ; $7a83: $01 $01 $01
    ld bc, $0401                                  ; $7a86: $01 $01 $04
    ld bc, $0401                                  ; $7a89: $01 $01 $04
    inc b                                         ; $7a8c: $04
    ld b, $0f                                     ; $7a8d: $06 $0f
    dec de                                        ; $7a8f: $1b
    add hl, bc                                    ; $7a90: $09
    add hl, bc                                    ; $7a91: $09
    ld [de], a                                    ; $7a92: $12
    ld h, $1a                                     ; $7a93: $26 $1a
    add b                                         ; $7a95: $80
    add c                                         ; $7a96: $81
    ld a, [hl]                                    ; $7a97: $7e
    add hl, bc                                    ; $7a98: $09
    add d                                         ; $7a99: $82
    add e                                         ; $7a9a: $83
    ld a, a                                       ; $7a9b: $7f
    inc h                                         ; $7a9c: $24
    ld bc, $0101                                  ; $7a9d: $01 $01 $01
    ld bc, $0101                                  ; $7aa0: $01 $01 $01
    ld bc, $0c01                                  ; $7aa3: $01 $01 $0c
    inc c                                         ; $7aa6: $0c
    inc h                                         ; $7aa7: $24
    ld bc, $0c0c                                  ; $7aa8: $01 $0c $0c
    inc h                                         ; $7aab: $24
    inc h                                         ; $7aac: $24
    jp nc, $0605                                  ; $7aad: $d2 $05 $06

    rrca                                          ; $7ab0: $0f
    jp nc, Jump_000_0908                          ; $7ab1: $d2 $08 $09

    ld [de], a                                    ; $7ab4: $12
    jp nc, Jump_000_3113                          ; $7ab5: $d2 $13 $31

    inc e                                         ; $7ab8: $1c
    jp nc, Jump_000_1905                          ; $7ab9: $d2 $05 $19

    ld [bc], a                                    ; $7abc: $02
    add b                                         ; $7abd: $80
    rlca                                          ; $7abe: $07
    ld bc, $8001                                  ; $7abf: $01 $01 $80
    rlca                                          ; $7ac2: $07
    ld bc, $8001                                  ; $7ac3: $01 $01 $80
    rlca                                          ; $7ac6: $07
    ld bc, $8001                                  ; $7ac7: $01 $01 $80
    rlca                                          ; $7aca: $07
    ld bc, $0801                                  ; $7acb: $01 $01 $08
    add hl, bc                                    ; $7ace: $09
    ld l, $2f                                     ; $7acf: $2e $2f
    inc de                                        ; $7ad1: $13
    ld a, [de]                                    ; $7ad2: $1a
    jr nc, jr_08b_7ada                            ; $7ad3: $30 $05

    dec e                                         ; $7ad5: $1d
    ld c, a                                       ; $7ad6: $4f
    ld d, b                                       ; $7ad7: $50
    ld d, c                                       ; $7ad8: $51
    inc bc                                        ; $7ad9: $03

jr_08b_7ada:
    add hl, bc                                    ; $7ada: $09
    ld [de], a                                    ; $7adb: $12
    inc de                                        ; $7adc: $13
    ld bc, $0401                                  ; $7add: $01 $01 $04
    inc b                                         ; $7ae0: $04
    ld bc, $0401                                  ; $7ae1: $01 $01 $04
    rlca                                          ; $7ae4: $07
    ld bc, $0701                                  ; $7ae5: $01 $01 $07
    rlca                                          ; $7ae8: $07
    ld bc, $0101                                  ; $7ae9: $01 $01 $01
    ld bc, $8584                                  ; $7aec: $01 $84 $85
    add [hl]                                      ; $7aef: $86
    ld l, $34                                     ; $7af0: $2e $34
    dec [hl]                                      ; $7af2: $35
    db $10                                        ; $7af3: $10
    jr nc, jr_08b_7aff                            ; $7af4: $30 $09

    ld a, [bc]                                    ; $7af6: $0a
    inc d                                         ; $7af7: $14
    dec d                                         ; $7af8: $15
    ld a, [de]                                    ; $7af9: $1a
    inc b                                         ; $7afa: $04
    dec b                                         ; $7afb: $05
    ld b, $0c                                     ; $7afc: $06 $0c
    inc c                                         ; $7afe: $0c

jr_08b_7aff:
    inc c                                         ; $7aff: $0c
    inc h                                         ; $7b00: $24
    inc b                                         ; $7b01: $04
    inc b                                         ; $7b02: $04
    rlca                                          ; $7b03: $07
    inc h                                         ; $7b04: $24
    rlca                                          ; $7b05: $07
    rlca                                          ; $7b06: $07
    rlca                                          ; $7b07: $07
    rlca                                          ; $7b08: $07
    ld bc, $0101                                  ; $7b09: $01 $01 $01
    ld bc, $08d2                                  ; $7b0c: $01 $d2 $08
    add hl, bc                                    ; $7b0f: $09
    ld [de], a                                    ; $7b10: $12
    ld d, d                                       ; $7b11: $52
    ld d, e                                       ; $7b12: $53
    ld d, e                                       ; $7b13: $53
    ld d, e                                       ; $7b14: $53
    pop de                                        ; $7b15: $d1
    pop de                                        ; $7b16: $d1
    pop de                                        ; $7b17: $d1
    pop de                                        ; $7b18: $d1
    pop de                                        ; $7b19: $d1
    pop de                                        ; $7b1a: $d1
    pop de                                        ; $7b1b: $d1
    pop de                                        ; $7b1c: $d1
    add b                                         ; $7b1d: $80
    rlca                                          ; $7b1e: $07
    ld bc, $8001                                  ; $7b1f: $01 $01 $80
    add b                                         ; $7b22: $80
    add b                                         ; $7b23: $80
    add b                                         ; $7b24: $80
    add b                                         ; $7b25: $80
    add b                                         ; $7b26: $80
    add b                                         ; $7b27: $80
    add b                                         ; $7b28: $80
    add b                                         ; $7b29: $80
    add b                                         ; $7b2a: $80
    add b                                         ; $7b2b: $80
    add b                                         ; $7b2c: $80
    inc de                                        ; $7b2d: $13
    ld a, [de]                                    ; $7b2e: $1a
    inc b                                         ; $7b2f: $04
    rlca                                          ; $7b30: $07
    ld d, e                                       ; $7b31: $53
    ld d, e                                       ; $7b32: $53
    ld d, e                                       ; $7b33: $53
    ld d, e                                       ; $7b34: $53
    pop de                                        ; $7b35: $d1
    pop de                                        ; $7b36: $d1
    pop de                                        ; $7b37: $d1
    pop de                                        ; $7b38: $d1
    pop de                                        ; $7b39: $d1
    pop de                                        ; $7b3a: $d1
    pop de                                        ; $7b3b: $d1
    pop de                                        ; $7b3c: $d1
    ld bc, $0101                                  ; $7b3d: $01 $01 $01
    ld bc, $8080                                  ; $7b40: $01 $80 $80
    add b                                         ; $7b43: $80
    add b                                         ; $7b44: $80
    add b                                         ; $7b45: $80
    add b                                         ; $7b46: $80
    add b                                         ; $7b47: $80
    add b                                         ; $7b48: $80
    add b                                         ; $7b49: $80
    add b                                         ; $7b4a: $80
    add b                                         ; $7b4b: $80
    add b                                         ; $7b4c: $80
    db $10                                        ; $7b4d: $10
    ld de, $0908                                  ; $7b4e: $11 $08 $09
    ld d, e                                       ; $7b51: $53
    ld d, e                                       ; $7b52: $53
    ld d, e                                       ; $7b53: $53
    ld d, e                                       ; $7b54: $53
    pop de                                        ; $7b55: $d1
    pop de                                        ; $7b56: $d1
    pop de                                        ; $7b57: $d1
    pop de                                        ; $7b58: $d1
    pop de                                        ; $7b59: $d1
    pop de                                        ; $7b5a: $d1
    pop de                                        ; $7b5b: $d1
    pop de                                        ; $7b5c: $d1
    ld bc, $0101                                  ; $7b5d: $01 $01 $01
    ld bc, $8080                                  ; $7b60: $01 $80 $80
    add b                                         ; $7b63: $80
    add b                                         ; $7b64: $80
    add b                                         ; $7b65: $80
    add b                                         ; $7b66: $80
    add b                                         ; $7b67: $80
    add b                                         ; $7b68: $80
    add b                                         ; $7b69: $80
    add b                                         ; $7b6a: $80
    add b                                         ; $7b6b: $80
    add b                                         ; $7b6c: $80
    dec b                                         ; $7b6d: $05
    dec b                                         ; $7b6e: $05
    ld b, $1e                                     ; $7b6f: $06 $1e
    rrca                                          ; $7b71: $0f
    ld [$2209], sp                                ; $7b72: $08 $09 $22
    ld c, a                                       ; $7b75: $4f
    ld d, b                                       ; $7b76: $50
    ld d, c                                       ; $7b77: $51
    inc b                                         ; $7b78: $04
    inc b                                         ; $7b79: $04
    dec b                                         ; $7b7a: $05
    ld b, $0f                                     ; $7b7b: $06 $0f
    ld bc, $0101                                  ; $7b7d: $01 $01 $01
    ld bc, $0101                                  ; $7b80: $01 $01 $01
    ld bc, $0101                                  ; $7b83: $01 $01 $01
    ld bc, $0101                                  ; $7b86: $01 $01 $01
    ld bc, $0101                                  ; $7b89: $01 $01 $01
    ld bc, $d21f                                  ; $7b8c: $01 $1f $d2
    pop de                                        ; $7b8f: $d1
    pop de                                        ; $7b90: $d1
    inc hl                                        ; $7b91: $23
    jp nc, $d1d1                                  ; $7b92: $d2 $d1 $d1

    dec b                                         ; $7b95: $05
    jp nc, $d1d1                                  ; $7b96: $d2 $d1 $d1

    ld [$d1d2], sp                                ; $7b99: $08 $d2 $d1
    pop de                                        ; $7b9c: $d1
    rlca                                          ; $7b9d: $07
    add b                                         ; $7b9e: $80
    add b                                         ; $7b9f: $80
    add b                                         ; $7ba0: $80
    rlca                                          ; $7ba1: $07
    add b                                         ; $7ba2: $80
    add b                                         ; $7ba3: $80
    add b                                         ; $7ba4: $80
    rlca                                          ; $7ba5: $07
    add b                                         ; $7ba6: $80
    add b                                         ; $7ba7: $80
    add b                                         ; $7ba8: $80
    rlca                                          ; $7ba9: $07
    add b                                         ; $7baa: $80
    add b                                         ; $7bab: $80
    add b                                         ; $7bac: $80
    rrca                                          ; $7bad: $0f
    ld [$1209], sp                                ; $7bae: $08 $09 $12
    jr nz, jr_08b_7bc6                            ; $7bb1: $20 $13

    ld a, [de]                                    ; $7bb3: $1a
    inc b                                         ; $7bb4: $04
    rrca                                          ; $7bb5: $0f
    dec b                                         ; $7bb6: $05
    ld b, $1e                                     ; $7bb7: $06 $1e
    rrca                                          ; $7bb9: $0f
    ld [$2209], sp                                ; $7bba: $08 $09 $22
    rlca                                          ; $7bbd: $07
    ld bc, $0101                                  ; $7bbe: $01 $01 $01
    rlca                                          ; $7bc1: $07
    ld bc, $0101                                  ; $7bc2: $01 $01 $01
    rlca                                          ; $7bc5: $07

jr_08b_7bc6:
    ld bc, $0101                                  ; $7bc6: $01 $01 $01
    ld bc, $0101                                  ; $7bc9: $01 $01 $01
    ld bc, $d213                                  ; $7bcc: $01 $13 $d2
    pop de                                        ; $7bcf: $d1
    pop de                                        ; $7bd0: $d1
    dec b                                         ; $7bd1: $05
    jp nc, $d1d1                                  ; $7bd2: $d2 $d1 $d1

    rra                                           ; $7bd5: $1f
    jp nc, $d1d1                                  ; $7bd6: $d2 $d1 $d1

    inc hl                                        ; $7bd9: $23
    jp nc, $d1d1                                  ; $7bda: $d2 $d1 $d1

    rlca                                          ; $7bdd: $07
    add b                                         ; $7bde: $80
    add b                                         ; $7bdf: $80
    add b                                         ; $7be0: $80
    rlca                                          ; $7be1: $07
    add b                                         ; $7be2: $80
    add b                                         ; $7be3: $80
    add b                                         ; $7be4: $80
    rlca                                          ; $7be5: $07
    add b                                         ; $7be6: $80
    add b                                         ; $7be7: $80
    add b                                         ; $7be8: $80
    rlca                                          ; $7be9: $07
    add b                                         ; $7bea: $80
    add b                                         ; $7beb: $80
    add b                                         ; $7bec: $80
    ld [de], a                                    ; $7bed: $12
    dec de                                        ; $7bee: $1b
    ld a, [de]                                    ; $7bef: $1a
    inc b                                         ; $7bf0: $04
    ld d, e                                       ; $7bf1: $53
    ld d, e                                       ; $7bf2: $53
    ld d, e                                       ; $7bf3: $53
    ld d, e                                       ; $7bf4: $53
    pop de                                        ; $7bf5: $d1
    pop de                                        ; $7bf6: $d1
    pop de                                        ; $7bf7: $d1
    pop de                                        ; $7bf8: $d1
    pop de                                        ; $7bf9: $d1
    pop de                                        ; $7bfa: $d1
    pop de                                        ; $7bfb: $d1
    pop de                                        ; $7bfc: $d1
    ld bc, $0101                                  ; $7bfd: $01 $01 $01
    ld bc, $8080                                  ; $7c00: $01 $80 $80
    add b                                         ; $7c03: $80
    add b                                         ; $7c04: $80
    add b                                         ; $7c05: $80
    add b                                         ; $7c06: $80
    add b                                         ; $7c07: $80
    add b                                         ; $7c08: $80
    add b                                         ; $7c09: $80
    add b                                         ; $7c0a: $80
    add b                                         ; $7c0b: $80
    add b                                         ; $7c0c: $80
    dec b                                         ; $7c0d: $05
    jp nc, $d1d1                                  ; $7c0e: $d2 $d1 $d1

    ld d, e                                       ; $7c11: $53
    ld a, l                                       ; $7c12: $7d
    pop de                                        ; $7c13: $d1
    pop de                                        ; $7c14: $d1
    pop de                                        ; $7c15: $d1
    pop de                                        ; $7c16: $d1
    pop de                                        ; $7c17: $d1
    pop de                                        ; $7c18: $d1
    pop de                                        ; $7c19: $d1
    pop de                                        ; $7c1a: $d1
    pop de                                        ; $7c1b: $d1
    pop de                                        ; $7c1c: $d1
    rlca                                          ; $7c1d: $07
    add b                                         ; $7c1e: $80
    add b                                         ; $7c1f: $80
    add b                                         ; $7c20: $80
    add b                                         ; $7c21: $80
    add b                                         ; $7c22: $80
    add b                                         ; $7c23: $80
    add b                                         ; $7c24: $80
    add b                                         ; $7c25: $80
    add b                                         ; $7c26: $80
    add b                                         ; $7c27: $80
    add b                                         ; $7c28: $80
    add b                                         ; $7c29: $80
    add b                                         ; $7c2a: $80
    add b                                         ; $7c2b: $80
    add b                                         ; $7c2c: $80
    rst $08                                       ; $7c2d: $cf
    nop                                           ; $7c2e: $00
    nop                                           ; $7c2f: $00
    nop                                           ; $7c30: $00
    nop                                           ; $7c31: $00
    ld bc, $0200                                  ; $7c32: $01 $00 $02
    nop                                           ; $7c35: $00
    inc bc                                        ; $7c36: $03
    nop                                           ; $7c37: $00
    nop                                           ; $7c38: $00
    stop                                          ; $7c39: $10 $00
    ld de, $1200                                  ; $7c3b: $11 $00 $12
    nop                                           ; $7c3e: $00
    inc de                                        ; $7c3f: $13
    nop                                           ; $7c40: $00
    dec b                                         ; $7c41: $05
    jr nz, jr_08b_7c44                            ; $7c42: $20 $00

jr_08b_7c44:
    ld hl, $2200                                  ; $7c44: $21 $00 $22
    inc c                                         ; $7c47: $0c
    nop                                           ; $7c48: $00
    ld l, $0c                                     ; $7c49: $2e $0c
    db $10                                        ; $7c4b: $10
    ld b, $03                                     ; $7c4c: $06 $03
    nop                                           ; $7c4e: $00
    add hl, sp                                    ; $7c4f: $39
    nop                                           ; $7c50: $00
    ld a, [hl-]                                   ; $7c51: $3a
    inc c                                         ; $7c52: $0c
    jr nz, jr_08b_7c6d                            ; $7c53: $20 $18

    jr jr_08b_7c5b                                ; $7c55: $18 $04

    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    dec b                                         ; $7c59: $05
    nop                                           ; $7c5a: $00

jr_08b_7c5b:
    ld b, $00                                     ; $7c5b: $06 $00
    rlca                                          ; $7c5d: $07
    nop                                           ; $7c5e: $00
    inc d                                         ; $7c5f: $14
    nop                                           ; $7c60: $00
    nop                                           ; $7c61: $00
    dec d                                         ; $7c62: $15
    nop                                           ; $7c63: $00
    ld d, $00                                     ; $7c64: $16 $00
    rla                                           ; $7c66: $17
    nop                                           ; $7c67: $00
    inc hl                                        ; $7c68: $23
    ld a, [bc]                                    ; $7c69: $0a
    nop                                           ; $7c6a: $00
    inc h                                         ; $7c6b: $24
    nop                                           ; $7c6c: $00

jr_08b_7c6d:
    dec h                                         ; $7c6d: $25
    inc c                                         ; $7c6e: $0c
    nop                                           ; $7c6f: $00
    cpl                                           ; $7c70: $2f
    inc c                                         ; $7c71: $0c
    db $10                                        ; $7c72: $10
    jr nc, jr_08b_7c7f                            ; $7c73: $30 $0a

    nop                                           ; $7c75: $00
    dec sp                                        ; $7c76: $3b
    nop                                           ; $7c77: $00
    inc a                                         ; $7c78: $3c
    inc c                                         ; $7c79: $0c
    nop                                           ; $7c7a: $00
    dec a                                         ; $7c7b: $3d
    jr @+$22                                      ; $7c7c: $18 $20

    ld b, l                                       ; $7c7e: $45

jr_08b_7c7f:
    nop                                           ; $7c7f: $00
    nop                                           ; $7c80: $00
    ld [$0900], sp                                ; $7c81: $08 $00 $09
    nop                                           ; $7c84: $00
    ld a, [bc]                                    ; $7c85: $0a
    nop                                           ; $7c86: $00
    dec bc                                        ; $7c87: $0b
    nop                                           ; $7c88: $00
    nop                                           ; $7c89: $00
    jr jr_08b_7c8c                                ; $7c8a: $18 $00

jr_08b_7c8c:
    add hl, de                                    ; $7c8c: $19
    nop                                           ; $7c8d: $00
    ld a, [de]                                    ; $7c8e: $1a
    nop                                           ; $7c8f: $00
    dec de                                        ; $7c90: $1b
    nop                                           ; $7c91: $00
    nop                                           ; $7c92: $00
    ld h, $00                                     ; $7c93: $26 $00
    daa                                           ; $7c95: $27
    nop                                           ; $7c96: $00
    jr z, jr_08b_7c99                             ; $7c97: $28 $00

jr_08b_7c99:
    add hl, hl                                    ; $7c99: $29
    nop                                           ; $7c9a: $00
    nop                                           ; $7c9b: $00
    ld sp, $3200                                  ; $7c9c: $31 $00 $32
    nop                                           ; $7c9f: $00
    inc sp                                        ; $7ca0: $33
    nop                                           ; $7ca1: $00
    inc [hl]                                      ; $7ca2: $34
    nop                                           ; $7ca3: $00
    nop                                           ; $7ca4: $00
    ld a, $00                                     ; $7ca5: $3e $00
    ccf                                           ; $7ca7: $3f
    nop                                           ; $7ca8: $00
    ld b, b                                       ; $7ca9: $40
    nop                                           ; $7caa: $00
    ld b, c                                       ; $7cab: $41
    nop                                           ; $7cac: $00
    nop                                           ; $7cad: $00
    ld b, [hl]                                    ; $7cae: $46
    nop                                           ; $7caf: $00
    ld b, a                                       ; $7cb0: $47
    nop                                           ; $7cb1: $00
    ld c, b                                       ; $7cb2: $48
    nop                                           ; $7cb3: $00
    ld c, c                                       ; $7cb4: $49
    nop                                           ; $7cb5: $00
    nop                                           ; $7cb6: $00
    inc c                                         ; $7cb7: $0c
    nop                                           ; $7cb8: $00
    dec c                                         ; $7cb9: $0d
    nop                                           ; $7cba: $00
    ld c, $00                                     ; $7cbb: $0e $00
    rrca                                          ; $7cbd: $0f
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    inc e                                         ; $7cc0: $1c
    nop                                           ; $7cc1: $00
    dec e                                         ; $7cc2: $1d
    nop                                           ; $7cc3: $00
    ld e, $00                                     ; $7cc4: $1e $00
    rra                                           ; $7cc6: $1f
    nop                                           ; $7cc7: $00
    nop                                           ; $7cc8: $00
    ld a, [hl+]                                   ; $7cc9: $2a
    nop                                           ; $7cca: $00
    dec hl                                        ; $7ccb: $2b
    nop                                           ; $7ccc: $00
    inc l                                         ; $7ccd: $2c
    nop                                           ; $7cce: $00
    dec l                                         ; $7ccf: $2d
    nop                                           ; $7cd0: $00
    nop                                           ; $7cd1: $00
    dec [hl]                                      ; $7cd2: $35
    nop                                           ; $7cd3: $00
    ld [hl], $00                                  ; $7cd4: $36 $00
    scf                                           ; $7cd6: $37
    nop                                           ; $7cd7: $00
    jr c, jr_08b_7ce2                             ; $7cd8: $38 $08

    nop                                           ; $7cda: $00
    ld b, d                                       ; $7cdb: $42
    nop                                           ; $7cdc: $00
    ld b, e                                       ; $7cdd: $43
    ld a, [bc]                                    ; $7cde: $0a
    nop                                           ; $7cdf: $00
    ld b, h                                       ; $7ce0: $44
    nop                                           ; $7ce1: $00

jr_08b_7ce2:
    ld c, d                                       ; $7ce2: $4a
    nop                                           ; $7ce3: $00

jr_08b_7ce4:
    nop                                           ; $7ce4: $00
    ld c, e                                       ; $7ce5: $4b
    nop                                           ; $7ce6: $00
    ld c, h                                       ; $7ce7: $4c
    nop                                           ; $7ce8: $00
    ld c, l                                       ; $7ce9: $4d
    nop                                           ; $7cea: $00
    ld c, [hl]                                    ; $7ceb: $4e
    nop                                           ; $7cec: $00
    nop                                           ; $7ced: $00
    ld c, a                                       ; $7cee: $4f
    nop                                           ; $7cef: $00
    ld d, b                                       ; $7cf0: $50
    nop                                           ; $7cf1: $00
    ld d, c                                       ; $7cf2: $51
    nop                                           ; $7cf3: $00
    ld d, d                                       ; $7cf4: $52
    nop                                           ; $7cf5: $00
    nop                                           ; $7cf6: $00
    ld d, e                                       ; $7cf7: $53
    nop                                           ; $7cf8: $00
    ld d, h                                       ; $7cf9: $54
    nop                                           ; $7cfa: $00
    ld d, l                                       ; $7cfb: $55
    nop                                           ; $7cfc: $00
    ld d, [hl]                                    ; $7cfd: $56
    nop                                           ; $7cfe: $00
    nop                                           ; $7cff: $00
    ld d, a                                       ; $7d00: $57
    nop                                           ; $7d01: $00
    ld e, b                                       ; $7d02: $58
    nop                                           ; $7d03: $00
    ld e, c                                       ; $7d04: $59
    nop                                           ; $7d05: $00
    ld e, d                                       ; $7d06: $5a
    nop                                           ; $7d07: $00
    nop                                           ; $7d08: $00
    ld e, e                                       ; $7d09: $5b
    nop                                           ; $7d0a: $00
    ld e, h                                       ; $7d0b: $5c
    nop                                           ; $7d0c: $00
    ld e, l                                       ; $7d0d: $5d
    nop                                           ; $7d0e: $00
    ld e, [hl]                                    ; $7d0f: $5e
    nop                                           ; $7d10: $00
    nop                                           ; $7d11: $00
    ld e, a                                       ; $7d12: $5f
    nop                                           ; $7d13: $00
    ld h, b                                       ; $7d14: $60
    nop                                           ; $7d15: $00
    ld h, c                                       ; $7d16: $61
    nop                                           ; $7d17: $00
    ld h, d                                       ; $7d18: $62
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    ld h, e                                       ; $7d1b: $63
    nop                                           ; $7d1c: $00
    ld h, h                                       ; $7d1d: $64
    nop                                           ; $7d1e: $00
    ld h, l                                       ; $7d1f: $65
    nop                                           ; $7d20: $00
    ld a, [hl-]                                   ; $7d21: $3a
    ld bc, $0040                                  ; $7d22: $01 $40 $00
    ld bc, $0110                                  ; $7d25: $01 $10 $01
    nop                                           ; $7d28: $00
    ld c, $00                                     ; $7d29: $0e $00
    rrca                                          ; $7d2b: $0f
    nop                                           ; $7d2c: $00
    inc d                                         ; $7d2d: $14
    stop                                          ; $7d2e: $10 $00
    ld de, $000f                                  ; $7d30: $11 $0f $00
    ld e, $0c                                     ; $7d33: $1e $0c
    db $10                                        ; $7d35: $10
    add hl, hl                                    ; $7d36: $29
    nop                                           ; $7d37: $00
    ld l, b                                       ; $7d38: $68
    ld a, [hl+]                                   ; $7d39: $2a
    ld [de], a                                    ; $7d3a: $12
    db $10                                        ; $7d3b: $10
    ld b, $08                                     ; $7d3c: $06 $08
    add hl, hl                                    ; $7d3e: $29
    ld e, $20                                     ; $7d3f: $1e $20
    ld [bc], a                                    ; $7d41: $02
    nop                                           ; $7d42: $00
    inc bc                                        ; $7d43: $03
    nop                                           ; $7d44: $00
    nop                                           ; $7d45: $00
    inc b                                         ; $7d46: $04
    nop                                           ; $7d47: $00
    dec b                                         ; $7d48: $05
    nop                                           ; $7d49: $00
    ld [de], a                                    ; $7d4a: $12
    nop                                           ; $7d4b: $00
    inc de                                        ; $7d4c: $13
    nop                                           ; $7d4d: $00
    nop                                           ; $7d4e: $00
    inc d                                         ; $7d4f: $14
    nop                                           ; $7d50: $00
    dec d                                         ; $7d51: $15
    nop                                           ; $7d52: $00
    rra                                           ; $7d53: $1f
    nop                                           ; $7d54: $00
    jr nz, jr_08b_7ce4                            ; $7d55: $20 $8d

    inc c                                         ; $7d57: $0c
    db $10                                        ; $7d58: $10
    dec hl                                        ; $7d59: $2b
    nop                                           ; $7d5a: $00
    inc l                                         ; $7d5b: $2c
    ld [de], a                                    ; $7d5c: $12
    db $10                                        ; $7d5d: $10
    ld b, $08                                     ; $7d5e: $06 $08
    dec hl                                        ; $7d60: $2b
    ld e, $20                                     ; $7d61: $1e $20
    nop                                           ; $7d63: $00
    ld b, $00                                     ; $7d64: $06 $00
    rlca                                          ; $7d66: $07
    nop                                           ; $7d67: $00
    ld [$0900], sp                                ; $7d68: $08 $00 $09
    nop                                           ; $7d6b: $00
    nop                                           ; $7d6c: $00
    ld d, $00                                     ; $7d6d: $16 $00
    rla                                           ; $7d6f: $17
    nop                                           ; $7d70: $00
    jr jr_08b_7d73                                ; $7d71: $18 $00

jr_08b_7d73:
    add hl, de                                    ; $7d73: $19
    nop                                           ; $7d74: $00
    nop                                           ; $7d75: $00
    ld hl, $2200                                  ; $7d76: $21 $00 $22
    nop                                           ; $7d79: $00
    inc hl                                        ; $7d7a: $23
    nop                                           ; $7d7b: $00
    inc h                                         ; $7d7c: $24
    nop                                           ; $7d7d: $00
    nop                                           ; $7d7e: $00
    dec l                                         ; $7d7f: $2d
    nop                                           ; $7d80: $00
    ld l, $00                                     ; $7d81: $2e $00
    cpl                                           ; $7d83: $2f
    nop                                           ; $7d84: $00
    jr nc, jr_08b_7d87                            ; $7d85: $30 $00

jr_08b_7d87:
    nop                                           ; $7d87: $00
    dec [hl]                                      ; $7d88: $35
    nop                                           ; $7d89: $00
    ld [hl], $00                                  ; $7d8a: $36 $00
    scf                                           ; $7d8c: $37
    nop                                           ; $7d8d: $00
    jr c, jr_08b_7d90                             ; $7d8e: $38 $00

jr_08b_7d90:
    nop                                           ; $7d90: $00
    dec a                                         ; $7d91: $3d
    nop                                           ; $7d92: $00
    ld a, $00                                     ; $7d93: $3e $00
    ld a, [bc]                                    ; $7d95: $0a
    nop                                           ; $7d96: $00
    dec bc                                        ; $7d97: $0b
    nop                                           ; $7d98: $00
    nop                                           ; $7d99: $00
    inc c                                         ; $7d9a: $0c
    nop                                           ; $7d9b: $00
    dec c                                         ; $7d9c: $0d
    nop                                           ; $7d9d: $00
    ld a, [de]                                    ; $7d9e: $1a
    nop                                           ; $7d9f: $00
    dec de                                        ; $7da0: $1b
    nop                                           ; $7da1: $00
    nop                                           ; $7da2: $00
    inc e                                         ; $7da3: $1c
    nop                                           ; $7da4: $00
    dec e                                         ; $7da5: $1d
    nop                                           ; $7da6: $00
    dec h                                         ; $7da7: $25
    nop                                           ; $7da8: $00
    ld h, $00                                     ; $7da9: $26 $00
    nop                                           ; $7dab: $00
    daa                                           ; $7dac: $27
    nop                                           ; $7dad: $00
    jr z, jr_08b_7db0                             ; $7dae: $28 $00

jr_08b_7db0:
    ld sp, $3200                                  ; $7db0: $31 $00 $32
    nop                                           ; $7db3: $00
    nop                                           ; $7db4: $00
    inc sp                                        ; $7db5: $33
    nop                                           ; $7db6: $00
    inc [hl]                                      ; $7db7: $34
    nop                                           ; $7db8: $00
    add hl, sp                                    ; $7db9: $39
    nop                                           ; $7dba: $00
    ld a, [hl-]                                   ; $7dbb: $3a
    nop                                           ; $7dbc: $00
    nop                                           ; $7dbd: $00
    dec sp                                        ; $7dbe: $3b
    nop                                           ; $7dbf: $00
    inc a                                         ; $7dc0: $3c
    nop                                           ; $7dc1: $00
    ccf                                           ; $7dc2: $3f
    nop                                           ; $7dc3: $00
    ld b, b                                       ; $7dc4: $40
    nop                                           ; $7dc5: $00
    nop                                           ; $7dc6: $00
    ld b, c                                       ; $7dc7: $41
    nop                                           ; $7dc8: $00
    ld b, d                                       ; $7dc9: $42
    nop                                           ; $7dca: $00

jr_08b_7dcb:
    ld b, e                                       ; $7dcb: $43
    nop                                           ; $7dcc: $00
    ld b, h                                       ; $7dcd: $44
    nop                                           ; $7dce: $00
    nop                                           ; $7dcf: $00
    ld c, a                                       ; $7dd0: $4f
    nop                                           ; $7dd1: $00
    ld d, b                                       ; $7dd2: $50
    nop                                           ; $7dd3: $00
    ld d, c                                       ; $7dd4: $51
    nop                                           ; $7dd5: $00
    ld d, d                                       ; $7dd6: $52
    nop                                           ; $7dd7: $00
    nop                                           ; $7dd8: $00
    ld e, a                                       ; $7dd9: $5f
    nop                                           ; $7dda: $00
    ld h, b                                       ; $7ddb: $60
    nop                                           ; $7ddc: $00
    ld h, c                                       ; $7ddd: $61
    nop                                           ; $7dde: $00
    ld h, d                                       ; $7ddf: $62
    nop                                           ; $7de0: $00
    nop                                           ; $7de1: $00
    ld l, a                                       ; $7de2: $6f
    nop                                           ; $7de3: $00
    ld [hl], b                                    ; $7de4: $70
    nop                                           ; $7de5: $00
    ld [hl], c                                    ; $7de6: $71
    nop                                           ; $7de7: $00
    ld [hl], d                                    ; $7de8: $72
    nop                                           ; $7de9: $00
    nop                                           ; $7dea: $00
    ld a, b                                       ; $7deb: $78
    nop                                           ; $7dec: $00
    ld a, c                                       ; $7ded: $79
    nop                                           ; $7dee: $00
    ld a, d                                       ; $7def: $7a
    nop                                           ; $7df0: $00
    ld a, e                                       ; $7df1: $7b
    nop                                           ; $7df2: $00
    nop                                           ; $7df3: $00
    add [hl]                                      ; $7df4: $86
    nop                                           ; $7df5: $00
    add a                                         ; $7df6: $87
    nop                                           ; $7df7: $00
    ld b, l                                       ; $7df8: $45
    nop                                           ; $7df9: $00
    ld b, [hl]                                    ; $7dfa: $46
    nop                                           ; $7dfb: $00
    nop                                           ; $7dfc: $00
    ld b, a                                       ; $7dfd: $47
    nop                                           ; $7dfe: $00
    ld c, b                                       ; $7dff: $48
    nop                                           ; $7e00: $00
    ld d, e                                       ; $7e01: $53
    nop                                           ; $7e02: $00
    ld d, h                                       ; $7e03: $54
    nop                                           ; $7e04: $00
    nop                                           ; $7e05: $00
    ld d, l                                       ; $7e06: $55
    nop                                           ; $7e07: $00
    ld d, [hl]                                    ; $7e08: $56
    nop                                           ; $7e09: $00
    ld h, e                                       ; $7e0a: $63
    nop                                           ; $7e0b: $00
    ld h, h                                       ; $7e0c: $64
    nop                                           ; $7e0d: $00
    nop                                           ; $7e0e: $00
    ld h, l                                       ; $7e0f: $65
    nop                                           ; $7e10: $00
    ld h, [hl]                                    ; $7e11: $66
    nop                                           ; $7e12: $00
    ld [hl], e                                    ; $7e13: $73
    nop                                           ; $7e14: $00
    ld [hl], h                                    ; $7e15: $74
    nop                                           ; $7e16: $00
    nop                                           ; $7e17: $00
    ld [hl], l                                    ; $7e18: $75
    nop                                           ; $7e19: $00
    halt                                          ; $7e1a: $76
    nop                                           ; $7e1b: $00
    ld a, h                                       ; $7e1c: $7c
    nop                                           ; $7e1d: $00
    ld a, l                                       ; $7e1e: $7d
    nop                                           ; $7e1f: $00
    nop                                           ; $7e20: $00
    ld a, [hl]                                    ; $7e21: $7e
    nop                                           ; $7e22: $00
    ld a, a                                       ; $7e23: $7f
    nop                                           ; $7e24: $00
    adc b                                         ; $7e25: $88
    nop                                           ; $7e26: $00
    adc c                                         ; $7e27: $89
    nop                                           ; $7e28: $00
    nop                                           ; $7e29: $00
    ld c, c                                       ; $7e2a: $49
    nop                                           ; $7e2b: $00
    ld c, d                                       ; $7e2c: $4a
    nop                                           ; $7e2d: $00
    ld c, e                                       ; $7e2e: $4b
    nop                                           ; $7e2f: $00
    ld c, h                                       ; $7e30: $4c
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
    ld d, a                                       ; $7e33: $57
    nop                                           ; $7e34: $00
    ld e, b                                       ; $7e35: $58
    nop                                           ; $7e36: $00
    ld e, c                                       ; $7e37: $59
    nop                                           ; $7e38: $00
    ld e, d                                       ; $7e39: $5a
    nop                                           ; $7e3a: $00
    nop                                           ; $7e3b: $00
    ld h, a                                       ; $7e3c: $67
    nop                                           ; $7e3d: $00
    ld l, b                                       ; $7e3e: $68
    nop                                           ; $7e3f: $00
    ld l, c                                       ; $7e40: $69
    nop                                           ; $7e41: $00
    ld l, d                                       ; $7e42: $6a
    nop                                           ; $7e43: $00
    ld h, b                                       ; $7e44: $60
    ld [hl], a                                    ; $7e45: $77
    ld a, [de]                                    ; $7e46: $1a
    nop                                           ; $7e47: $00
    ld [bc], a                                    ; $7e48: $02
    jr jr_08b_7dcb                                ; $7e49: $18 $80

    nop                                           ; $7e4b: $00
    add c                                         ; $7e4c: $81
    nop                                           ; $7e4d: $00
    add d                                         ; $7e4e: $82
    add b                                         ; $7e4f: $80
    ld c, $30                                     ; $7e50: $0e $30
    ld c, l                                       ; $7e52: $4d
    nop                                           ; $7e53: $00
    ld c, [hl]                                    ; $7e54: $4e
    nop                                           ; $7e55: $00
    ld e, e                                       ; $7e56: $5b
    nop                                           ; $7e57: $00
    ld e, h                                       ; $7e58: $5c
    nop                                           ; $7e59: $00
    nop                                           ; $7e5a: $00
    ld e, l                                       ; $7e5b: $5d
    nop                                           ; $7e5c: $00
    ld e, [hl]                                    ; $7e5d: $5e
    nop                                           ; $7e5e: $00
    ld l, e                                       ; $7e5f: $6b
    nop                                           ; $7e60: $00
    ld l, h                                       ; $7e61: $6c
    ld [$6d00], sp                                ; $7e62: $08 $00 $6d
    nop                                           ; $7e65: $00
    ld l, [hl]                                    ; $7e66: $6e
    ld a, [hl+]                                   ; $7e67: $2a
    jr nc, @+$4b                                  ; $7e68: $30 $49

    nop                                           ; $7e6a: $00
    add e                                         ; $7e6b: $83
    inc c                                         ; $7e6c: $0c
    nop                                           ; $7e6d: $00
    add h                                         ; $7e6e: $84
    nop                                           ; $7e6f: $00
    add l                                         ; $7e70: $85
    db $10                                        ; $7e71: $10
    ld b, b                                       ; $7e72: $40
    ld b, h                                       ; $7e73: $44
    ld [$008a], sp                                ; $7e74: $08 $8a $00
    inc b                                         ; $7e77: $04
    adc e                                         ; $7e78: $8b
    nop                                           ; $7e79: $00
    adc h                                         ; $7e7a: $8c
    nop                                           ; $7e7b: $00
    adc a                                         ; $7e7c: $8f
    ld d, $60                                     ; $7e7d: $16 $60
    ld c, c                                       ; $7e7f: $49
    nop                                           ; $7e80: $00
    inc b                                         ; $7e81: $04
    sub b                                         ; $7e82: $90
    nop                                           ; $7e83: $00
    sub c                                         ; $7e84: $91
    nop                                           ; $7e85: $00
    sub d                                         ; $7e86: $92
    ld d, $70                                     ; $7e87: $16 $70
    adc l                                         ; $7e89: $8d
    nop                                           ; $7e8a: $00
    ld b, b                                       ; $7e8b: $40
    adc [hl]                                      ; $7e8c: $8e
    ld a, [hl+]                                   ; $7e8d: $2a
    ld [hl], b                                    ; $7e8e: $70
    ld c, c                                       ; $7e8f: $49
    nop                                           ; $7e90: $00
    sub e                                         ; $7e91: $93
    nop                                           ; $7e92: $00
    sub h                                         ; $7e93: $94
    nop                                           ; $7e94: $00
    ld b, b                                       ; $7e95: $40

jr_08b_7e96:
    sub l                                         ; $7e96: $95
    sub d                                         ; $7e97: $92
    db $10                                        ; $7e98: $10
    ld hl, $0001                                  ; $7e99: $21 $01 $00
    nop                                           ; $7e9c: $00
    nop                                           ; $7e9d: $00
    ld bc, $0200                                  ; $7e9e: $01 $00 $02
    nop                                           ; $7ea1: $00
    inc bc                                        ; $7ea2: $03
    nop                                           ; $7ea3: $00
    ld [$000e], sp                                ; $7ea4: $08 $0e $00
    rrca                                          ; $7ea7: $0f
    nop                                           ; $7ea8: $00
    ld bc, $0428                                  ; $7ea9: $01 $28 $04
    nop                                           ; $7eac: $00
    dec b                                         ; $7ead: $05
    ld [bc], a                                    ; $7eae: $02
    nop                                           ; $7eaf: $00
    ld b, $00                                     ; $7eb0: $06 $00
    stop                                          ; $7eb2: $10 $00
    ld de, $2012                                  ; $7eb4: $11 $12 $20
    rlca                                          ; $7eb7: $07
    nop                                           ; $7eb8: $00
    nop                                           ; $7eb9: $00
    ld [$0900], sp                                ; $7eba: $08 $00 $09
    nop                                           ; $7ebd: $00
    ld a, [bc]                                    ; $7ebe: $0a
    nop                                           ; $7ebf: $00
    ld [de], a                                    ; $7ec0: $12
    jr nz, jr_08b_7ec3                            ; $7ec1: $20 $00

jr_08b_7ec3:
    inc de                                        ; $7ec3: $13
    inc h                                         ; $7ec4: $24
    jr nc, @+$0d                                  ; $7ec5: $30 $0b

    nop                                           ; $7ec7: $00
    inc c                                         ; $7ec8: $0c
    nop                                           ; $7ec9: $00
    dec c                                         ; $7eca: $0d
    ld [bc], a                                    ; $7ecb: $02
    nop                                           ; $7ecc: $00
    inc d                                         ; $7ecd: $14
    nop                                           ; $7ece: $00
    dec d                                         ; $7ecf: $15
    nop                                           ; $7ed0: $00
    ld d, $38                                     ; $7ed1: $16 $38
    jr nz, jr_08b_7eec                            ; $7ed3: $20 $17

    nop                                           ; $7ed5: $00
    nop                                           ; $7ed6: $00
    jr jr_08b_7ed9                                ; $7ed7: $18 $00

jr_08b_7ed9:
    add hl, de                                    ; $7ed9: $19
    nop                                           ; $7eda: $00
    inc hl                                        ; $7edb: $23
    nop                                           ; $7edc: $00
    inc h                                         ; $7edd: $24
    add b                                         ; $7ede: $80
    ld c, b                                       ; $7edf: $48
    jr nc, @+$1c                                  ; $7ee0: $30 $1a

    nop                                           ; $7ee2: $00
    dec de                                        ; $7ee3: $1b
    nop                                           ; $7ee4: $00
    inc e                                         ; $7ee5: $1c
    nop                                           ; $7ee6: $00
    dec h                                         ; $7ee7: $25
    jr nz, jr_08b_7eea                            ; $7ee8: $20 $00

jr_08b_7eea:
    ld h, $5a                                     ; $7eea: $26 $5a

jr_08b_7eec:
    jr nc, jr_08b_7f0b                            ; $7eec: $30 $1d

    nop                                           ; $7eee: $00
    ld e, $00                                     ; $7eef: $1e $00
    rra                                           ; $7ef1: $1f
    nop                                           ; $7ef2: $00
    nop                                           ; $7ef3: $00
    daa                                           ; $7ef4: $27
    nop                                           ; $7ef5: $00
    jr z, jr_08b_7ef8                             ; $7ef6: $28 $00

jr_08b_7ef8:
    add hl, hl                                    ; $7ef8: $29
    nop                                           ; $7ef9: $00
    ld a, [hl+]                                   ; $7efa: $2a
    jr nz, jr_08b_7efd                            ; $7efb: $20 $00

jr_08b_7efd:
    cpl                                           ; $7efd: $2f
    ld [hl], d                                    ; $7efe: $72
    nop                                           ; $7eff: $00
    jr nz, jr_08b_7f02                            ; $7f00: $20 $00

jr_08b_7f02:
    ld hl, $2200                                  ; $7f02: $21 $00 $22
    nop                                           ; $7f05: $00
    nop                                           ; $7f06: $00
    dec hl                                        ; $7f07: $2b
    nop                                           ; $7f08: $00
    inc l                                         ; $7f09: $2c
    nop                                           ; $7f0a: $00

jr_08b_7f0b:
    dec l                                         ; $7f0b: $2d
    nop                                           ; $7f0c: $00
    ld l, $20                                     ; $7f0d: $2e $20
    nop                                           ; $7f0f: $00
    jr nc, jr_08b_7e96                            ; $7f10: $30 $84

    nop                                           ; $7f12: $00
    ld sp, $3200                                  ; $7f13: $31 $00 $32
    nop                                           ; $7f16: $00
    inc sp                                        ; $7f17: $33
    nop                                           ; $7f18: $00
    nop                                           ; $7f19: $00
    dec sp                                        ; $7f1a: $3b
    nop                                           ; $7f1b: $00
    inc a                                         ; $7f1c: $3c
    nop                                           ; $7f1d: $00
    dec a                                         ; $7f1e: $3d
    nop                                           ; $7f1f: $00
    ld a, $28                                     ; $7f20: $3e $28
    nop                                           ; $7f22: $00
    ld c, e                                       ; $7f23: $4b
    sub [hl]                                      ; $7f24: $96
    nop                                           ; $7f25: $00
    inc [hl]                                      ; $7f26: $34
    sbc d                                         ; $7f27: $9a
    db $10                                        ; $7f28: $10
    ccf                                           ; $7f29: $3f
    nop                                           ; $7f2a: $00
    ld b, b                                       ; $7f2b: $40
    ld [bc], a                                    ; $7f2c: $02
    nop                                           ; $7f2d: $00
    ld b, c                                       ; $7f2e: $41
    nop                                           ; $7f2f: $00
    ld b, d                                       ; $7f30: $42
    nop                                           ; $7f31: $00
    ld c, h                                       ; $7f32: $4c
    xor b                                         ; $7f33: $a8
    nop                                           ; $7f34: $00
    dec [hl]                                      ; $7f35: $35
    nop                                           ; $7f36: $00
    nop                                           ; $7f37: $00
    ld [hl], $00                                  ; $7f38: $36 $00
    scf                                           ; $7f3a: $37
    nop                                           ; $7f3b: $00
    ld b, e                                       ; $7f3c: $43
    nop                                           ; $7f3d: $00
    ld b, h                                       ; $7f3e: $44
    ld [bc], a                                    ; $7f3f: $02
    nop                                           ; $7f40: $00
    ld b, l                                       ; $7f41: $45
    nop                                           ; $7f42: $00
    ld b, [hl]                                    ; $7f43: $46
    nop                                           ; $7f44: $00
    ld c, l                                       ; $7f45: $4d
    cp d                                          ; $7f46: $ba
    nop                                           ; $7f47: $00
    jr c, jr_08b_7f4a                             ; $7f48: $38 $00

jr_08b_7f4a:
    nop                                           ; $7f4a: $00
    add hl, sp                                    ; $7f4b: $39
    nop                                           ; $7f4c: $00
    ld a, [hl-]                                   ; $7f4d: $3a
    nop                                           ; $7f4e: $00
    ld b, a                                       ; $7f4f: $47
    nop                                           ; $7f50: $00
    ld c, b                                       ; $7f51: $48
    ld [$4900], sp                                ; $7f52: $08 $00 $49
    nop                                           ; $7f55: $00
    ld c, d                                       ; $7f56: $4a
    jp z, Jump_08b_4e10                           ; $7f57: $ca $10 $4e

    nop                                           ; $7f5a: $00
    ld c, a                                       ; $7f5b: $4f
    ld [bc], a                                    ; $7f5c: $02
    nop                                           ; $7f5d: $00
    ld d, b                                       ; $7f5e: $50
    nop                                           ; $7f5f: $00
    ld e, c                                       ; $7f60: $59
    nop                                           ; $7f61: $00
    ld e, d                                       ; $7f62: $5a
    ret c                                         ; $7f63: $d8

    jr nc, jr_08b_7fb7                            ; $7f64: $30 $51

    nop                                           ; $7f66: $00
    nop                                           ; $7f67: $00
    ld d, d                                       ; $7f68: $52
    nop                                           ; $7f69: $00
    ld d, e                                       ; $7f6a: $53
    nop                                           ; $7f6b: $00
    ld e, e                                       ; $7f6c: $5b
    nop                                           ; $7f6d: $00
    ld e, h                                       ; $7f6e: $5c
    jr nz, jr_08b_7f71                            ; $7f6f: $20 $00

jr_08b_7f71:
    ld e, l                                       ; $7f71: $5d
    db $ec                                        ; $7f72: $ec
    jr nz, jr_08b_7fc9                            ; $7f73: $20 $54

    nop                                           ; $7f75: $00
    ld d, l                                       ; $7f76: $55
    nop                                           ; $7f77: $00
    ld d, [hl]                                    ; $7f78: $56
    ld [$5e00], sp                                ; $7f79: $08 $00 $5e
    nop                                           ; $7f7c: $00
    ld e, a                                       ; $7f7d: $5f
    db $fc                                        ; $7f7e: $fc
    jr nc, jr_08b_7fd8                            ; $7f7f: $30 $57

    nop                                           ; $7f81: $00
    ld e, b                                       ; $7f82: $58
    add b                                         ; $7f83: $80
    ld e, [hl]                                    ; $7f84: $5e
    db $10                                        ; $7f85: $10
    ld h, b                                       ; $7f86: $60
    nop                                           ; $7f87: $00
    ld h, c                                       ; $7f88: $61
    nop                                           ; $7f89: $00
    ld h, d                                       ; $7f8a: $62
    nop                                           ; $7f8b: $00
    ld h, e                                       ; $7f8c: $63
    add b                                         ; $7f8d: $80
    inc d                                         ; $7f8e: $14
    ld bc, $0064                                  ; $7f8f: $01 $64 $00
    ld h, l                                       ; $7f92: $65
    nop                                           ; $7f93: $00
    ld h, [hl]                                    ; $7f94: $66
    nop                                           ; $7f95: $00
    ld [hl], c                                    ; $7f96: $71
    nop                                           ; $7f97: $00
    nop                                           ; $7f98: $00
    ld [hl], d                                    ; $7f99: $72
    nop                                           ; $7f9a: $00
    ld [hl], e                                    ; $7f9b: $73
    nop                                           ; $7f9c: $00
    ld [hl], h                                    ; $7f9d: $74
    nop                                           ; $7f9e: $00
    add c                                         ; $7f9f: $81
    add b                                         ; $7fa0: $80
    ld h, $01                                     ; $7fa1: $26 $01
    ld h, a                                       ; $7fa3: $67
    nop                                           ; $7fa4: $00
    ld l, b                                       ; $7fa5: $68
    nop                                           ; $7fa6: $00
    ld l, c                                       ; $7fa7: $69
    nop                                           ; $7fa8: $00
    ld [hl], l                                    ; $7fa9: $75
    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00
    halt                                          ; $7fac: $76
    nop                                           ; $7fad: $00
    ld [hl], a                                    ; $7fae: $77
    nop                                           ; $7faf: $00
    ld a, b                                       ; $7fb0: $78
    nop                                           ; $7fb1: $00
    add d                                         ; $7fb2: $82
    nop                                           ; $7fb3: $00
    nop                                           ; $7fb4: $00
    ld l, d                                       ; $7fb5: $6a
    nop                                           ; $7fb6: $00

jr_08b_7fb7:
    ld l, e                                       ; $7fb7: $6b
    nop                                           ; $7fb8: $00
    ld l, h                                       ; $7fb9: $6c
    nop                                           ; $7fba: $00
    ld l, l                                       ; $7fbb: $6d
    nop                                           ; $7fbc: $00
    nop                                           ; $7fbd: $00
    ld a, c                                       ; $7fbe: $79
    nop                                           ; $7fbf: $00
    ld a, d                                       ; $7fc0: $7a
    nop                                           ; $7fc1: $00
    ld a, e                                       ; $7fc2: $7b
    nop                                           ; $7fc3: $00
    ld a, h                                       ; $7fc4: $7c
    jr nz, jr_08b_7fc7                            ; $7fc5: $20 $00

jr_08b_7fc7:
    add e                                         ; $7fc7: $83
    ld c, d                                       ; $7fc8: $4a

jr_08b_7fc9:
    ld bc, $006e                                  ; $7fc9: $01 $6e $00
    ld l, a                                       ; $7fcc: $6f
    nop                                           ; $7fcd: $00
    ld [hl], b                                    ; $7fce: $70
    nop                                           ; $7fcf: $00
    nop                                           ; $7fd0: $00
    ld a, l                                       ; $7fd1: $7d
    nop                                           ; $7fd2: $00
    ld a, [hl]                                    ; $7fd3: $7e
    nop                                           ; $7fd4: $00
    ld a, a                                       ; $7fd5: $7f
    nop                                           ; $7fd6: $00
    add b                                         ; $7fd7: $80

jr_08b_7fd8:
    jr nz, jr_08b_7fda                            ; $7fd8: $20 $00

jr_08b_7fda:
    add h                                         ; $7fda: $84
    ld e, h                                       ; $7fdb: $5c
    ld sp, $0000                                  ; $7fdc: $31 $00 $00
    add l                                         ; $7fdf: $85
    nop                                           ; $7fe0: $00
    add [hl]                                      ; $7fe1: $86
    jr nz, jr_08b_7fe4                            ; $7fe2: $20 $00

jr_08b_7fe4:
    add a                                         ; $7fe4: $87
    db $10                                        ; $7fe5: $10
    ld b, b                                       ; $7fe6: $40
    nop                                           ; $7fe7: $00
    nop                                           ; $7fe8: $00
    adc b                                         ; $7fe9: $88
    nop                                           ; $7fea: $00
    adc c                                         ; $7feb: $89
    jr nz, jr_08b_7fee                            ; $7fec: $20 $00

jr_08b_7fee:
    adc d                                         ; $7fee: $8a
    ld [de], a                                    ; $7fef: $12
    ld d, b                                       ; $7ff0: $50
    adc e                                         ; $7ff1: $8b
    nop                                           ; $7ff2: $00
    adc h                                         ; $7ff3: $8c
    nop                                           ; $7ff4: $00
    adc l                                         ; $7ff5: $8d
    add b                                         ; $7ff6: $80
    sub b                                         ; $7ff7: $90
    ld bc, $ffff                                  ; $7ff8: $01 $ff $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
