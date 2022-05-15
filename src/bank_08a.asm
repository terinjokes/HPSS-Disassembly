; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $08a", ROMX[$4000], BANK[$8a]

    db $8a

    add hl, de                                    ; $4001: $19
    nop                                           ; $4002: $00
    inc d                                         ; $4003: $14
    nop                                           ; $4004: $00
    and b                                         ; $4005: $a0
    dec sp                                        ; $4006: $3b
    pop de                                        ; $4007: $d1
    jp nc, $d4d3                                  ; $4008: $d2 $d3 $d4

    push de                                       ; $400b: $d5
    sub $d5                                       ; $400c: $d6 $d5
    rst $10                                       ; $400e: $d7
    ret c                                         ; $400f: $d8

    reti                                          ; $4010: $d9


    jp c, $dcdb                                   ; $4011: $da $db $dc

    db $dd                                        ; $4014: $dd
    sbc $df                                       ; $4015: $de $df
    add c                                         ; $4017: $81
    add d                                         ; $4018: $82
    ld bc, $8282                                  ; $4019: $01 $82 $82
    add d                                         ; $401c: $82
    and d                                         ; $401d: $a2
    add d                                         ; $401e: $82
    add d                                         ; $401f: $82
    add d                                         ; $4020: $82
    add d                                         ; $4021: $82
    add d                                         ; $4022: $82
    add d                                         ; $4023: $82
    add d                                         ; $4024: $82
    add d                                         ; $4025: $82
    add d                                         ; $4026: $82
    ldh [$e1], a                                  ; $4027: $e0 $e1
    ld [c], a                                     ; $4029: $e2
    push de                                       ; $402a: $d5
    db $e3                                        ; $402b: $e3
    db $e4                                        ; $402c: $e4
    push hl                                       ; $402d: $e5
    and $e7                                       ; $402e: $e6 $e7
    add sp, -$17                                  ; $4030: $e8 $e9
    ld [$eceb], a                                 ; $4032: $ea $eb $ec
    db $ed                                        ; $4035: $ed
    xor $82                                       ; $4036: $ee $82
    add d                                         ; $4038: $82
    add d                                         ; $4039: $82
    add d                                         ; $403a: $82
    add d                                         ; $403b: $82
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
    sub $d5                                       ; $4047: $d6 $d5
    call nc, $d9e0                                ; $4049: $d4 $e0 $d9
    jp c, $e3d7                                   ; $404c: $da $d7 $e3

    db $dd                                        ; $404f: $dd
    sbc $db                                       ; $4050: $de $db
    rst $20                                       ; $4052: $e7
    pop hl                                        ; $4053: $e1
    ld [c], a                                     ; $4054: $e2
    rst $18                                       ; $4055: $df
    db $eb                                        ; $4056: $eb
    add d                                         ; $4057: $82
    and d                                         ; $4058: $a2
    add d                                         ; $4059: $82
    add d                                         ; $405a: $82
    add d                                         ; $405b: $82
    add d                                         ; $405c: $82
    add d                                         ; $405d: $82
    add d                                         ; $405e: $82
    add d                                         ; $405f: $82
    add d                                         ; $4060: $82
    add d                                         ; $4061: $82
    add d                                         ; $4062: $82
    add d                                         ; $4063: $82
    add d                                         ; $4064: $82
    add d                                         ; $4065: $82
    add d                                         ; $4066: $82
    pop hl                                        ; $4067: $e1
    ld [c], a                                     ; $4068: $e2
    db $d3                                        ; $4069: $d3
    rst $28                                       ; $406a: $ef
    db $e4                                        ; $406b: $e4
    push hl                                       ; $406c: $e5
    ldh a, [$ef]                                  ; $406d: $f0 $ef
    add sp, -$17                                  ; $406f: $e8 $e9
    pop af                                        ; $4071: $f1
    rst $28                                       ; $4072: $ef
    db $ec                                        ; $4073: $ec
    ld a, [c]                                     ; $4074: $f2
    di                                            ; $4075: $f3
    rst $28                                       ; $4076: $ef
    add d                                         ; $4077: $82
    add d                                         ; $4078: $82
    ld bc, $8207                                  ; $4079: $01 $07 $82
    add d                                         ; $407c: $82
    add d                                         ; $407d: $82
    rlca                                          ; $407e: $07
    add d                                         ; $407f: $82
    add d                                         ; $4080: $82
    add d                                         ; $4081: $82
    rlca                                          ; $4082: $07
    add d                                         ; $4083: $82
    add d                                         ; $4084: $82
    add d                                         ; $4085: $82
    rlca                                          ; $4086: $07
    ldh [$e1], a                                  ; $4087: $e0 $e1
    ld [c], a                                     ; $4089: $e2
    db $d3                                        ; $408a: $d3
    db $e3                                        ; $408b: $e3
    db $e4                                        ; $408c: $e4
    push hl                                       ; $408d: $e5
    ldh a, [$e7]                                  ; $408e: $f0 $e7
    add sp, -$17                                  ; $4090: $e8 $e9
    pop af                                        ; $4092: $f1
    db $eb                                        ; $4093: $eb
    db $ec                                        ; $4094: $ec
    ld a, [c]                                     ; $4095: $f2
    di                                            ; $4096: $f3
    add d                                         ; $4097: $82
    add d                                         ; $4098: $82
    add d                                         ; $4099: $82
    ld bc, $8282                                  ; $409a: $01 $82 $82
    add d                                         ; $409d: $82
    add d                                         ; $409e: $82
    add d                                         ; $409f: $82
    add d                                         ; $40a0: $82
    add d                                         ; $40a1: $82
    add d                                         ; $40a2: $82
    add d                                         ; $40a3: $82
    add d                                         ; $40a4: $82
    add d                                         ; $40a5: $82
    add d                                         ; $40a6: $82
    db $d3                                        ; $40a7: $d3
    db $f4                                        ; $40a8: $f4
    rst $10                                       ; $40a9: $d7
    db $e3                                        ; $40aa: $e3
    push af                                       ; $40ab: $f5
    db $d3                                        ; $40ac: $d3
    db $db                                        ; $40ad: $db
    rst $20                                       ; $40ae: $e7
    db $d3                                        ; $40af: $d3
    jp nc, $ebdf                                  ; $40b0: $d2 $df $eb

    push de                                       ; $40b3: $d5
    sub $d5                                       ; $40b4: $d6 $d5
    db $d3                                        ; $40b6: $d3
    ld bc, $8203                                  ; $40b7: $01 $03 $82
    add d                                         ; $40ba: $82
    ld bc, $8201                                  ; $40bb: $01 $01 $82
    add d                                         ; $40be: $82
    ld bc, $8282                                  ; $40bf: $01 $82 $82
    add d                                         ; $40c2: $82
    add d                                         ; $40c3: $82
    add d                                         ; $40c4: $82
    and d                                         ; $40c5: $a2
    ld bc, $e5e4                                  ; $40c6: $01 $e4 $e5
    ldh a, [$d3]                                  ; $40c9: $f0 $d3
    add sp, -$17                                  ; $40cb: $e8 $e9
    pop af                                        ; $40cd: $f1
    db $d3                                        ; $40ce: $d3
    db $ec                                        ; $40cf: $ec
    ld a, [c]                                     ; $40d0: $f2
    di                                            ; $40d1: $f3
    db $d3                                        ; $40d2: $d3
    db $f4                                        ; $40d3: $f4
    db $d3                                        ; $40d4: $d3
    db $d3                                        ; $40d5: $d3
    push de                                       ; $40d6: $d5
    add d                                         ; $40d7: $82
    add d                                         ; $40d8: $82
    add d                                         ; $40d9: $82
    ld bc, $8282                                  ; $40da: $01 $82 $82
    add d                                         ; $40dd: $82
    ld bc, $8282                                  ; $40de: $01 $82 $82
    add d                                         ; $40e1: $82
    ld bc, $0103                                  ; $40e2: $01 $03 $01
    ld bc, $f482                                  ; $40e5: $01 $82 $f4
    db $d3                                        ; $40e8: $d3
    push af                                       ; $40e9: $f5
    or $d3                                        ; $40ea: $f6 $d3
    db $d3                                        ; $40ec: $d3
    db $d3                                        ; $40ed: $d3
    rst $30                                       ; $40ee: $f7
    jp nc, $f8d3                                  ; $40ef: $d2 $d3 $f8

    ld sp, hl                                     ; $40f2: $f9
    sub $d5                                       ; $40f3: $d6 $d5
    db $d3                                        ; $40f5: $d3
    ld a, [$0103]                                 ; $40f6: $fa $03 $01
    ld bc, $0107                                  ; $40f9: $01 $07 $01
    ld bc, $0701                                  ; $40fc: $01 $01 $07
    add d                                         ; $40ff: $82
    ld bc, $0101                                  ; $4100: $01 $01 $01
    add d                                         ; $4103: $82
    and d                                         ; $4104: $a2
    ld bc, $d201                                  ; $4105: $01 $01 $d2
    db $f4                                        ; $4108: $f4
    db $d3                                        ; $4109: $d3
    db $d3                                        ; $410a: $d3
    sub $d5                                       ; $410b: $d6 $d5
    ei                                            ; $410d: $fb
    pop de                                        ; $410e: $d1
    reti                                          ; $410f: $d9


    jp c, $d4d3                                   ; $4110: $da $d3 $d4

    db $dd                                        ; $4113: $dd
    sbc $f5                                       ; $4114: $de $f5
    rst $10                                       ; $4116: $d7
    add d                                         ; $4117: $82
    inc bc                                        ; $4118: $03
    ld bc, $8201                                  ; $4119: $01 $01 $82
    and d                                         ; $411c: $a2
    ld bc, $8201                                  ; $411d: $01 $01 $82
    add d                                         ; $4120: $82
    ld bc, $8282                                  ; $4121: $01 $82 $82
    add d                                         ; $4124: $82
    ld bc, $d882                                  ; $4125: $01 $82 $d8
    reti                                          ; $4128: $d9


    jp c, $dcfc                                   ; $4129: $da $fc $dc

    db $dd                                        ; $412c: $dd
    sbc $d3                                       ; $412d: $de $d3
    ldh [$e1], a                                  ; $412f: $e0 $e1
    ld [c], a                                     ; $4131: $e2
    push de                                       ; $4132: $d5
    db $e3                                        ; $4133: $e3
    db $e4                                        ; $4134: $e4
    push hl                                       ; $4135: $e5
    and $82                                       ; $4136: $e6 $82
    add d                                         ; $4138: $82
    add d                                         ; $4139: $82
    rlca                                          ; $413a: $07
    add d                                         ; $413b: $82
    add d                                         ; $413c: $82
    add d                                         ; $413d: $82
    ld bc, $8282                                  ; $413e: $01 $82 $82
    add d                                         ; $4141: $82
    add d                                         ; $4142: $82
    add d                                         ; $4143: $82
    add d                                         ; $4144: $82
    add d                                         ; $4145: $82
    add d                                         ; $4146: $82
    db $d3                                        ; $4147: $d3
    ei                                            ; $4148: $fb
    pop de                                        ; $4149: $d1
    ret c                                         ; $414a: $d8

    jp nc, $d3d3                                  ; $414b: $d2 $d3 $d3

    call c, $d5d6                                 ; $414e: $dc $d6 $d5
    call nc, $d9e0                                ; $4151: $d4 $e0 $d9
    jp c, $e3d7                                   ; $4154: $da $d7 $e3

    ld bc, $0101                                  ; $4157: $01 $01 $01
    add d                                         ; $415a: $82
    add d                                         ; $415b: $82
    ld bc, $8201                                  ; $415c: $01 $01 $82
    add d                                         ; $415f: $82
    and d                                         ; $4160: $a2
    add d                                         ; $4161: $82
    add d                                         ; $4162: $82
    add d                                         ; $4163: $82
    add d                                         ; $4164: $82
    add d                                         ; $4165: $82
    add d                                         ; $4166: $82
    reti                                          ; $4167: $d9


    jp c, $fefd                                   ; $4168: $da $fd $fe

    db $dd                                        ; $416b: $dd
    sbc $ff                                       ; $416c: $de $ff
    nop                                           ; $416e: $00
    pop hl                                        ; $416f: $e1
    ld [c], a                                     ; $4170: $e2
    db $d3                                        ; $4171: $d3
    db $d3                                        ; $4172: $d3
    db $e4                                        ; $4173: $e4
    push hl                                       ; $4174: $e5
    ldh a, [$fc]                                  ; $4175: $f0 $fc
    add d                                         ; $4177: $82
    add d                                         ; $4178: $82
    ld bc, $8201                                  ; $4179: $01 $01 $82
    add d                                         ; $417c: $82
    ld bc, $8201                                  ; $417d: $01 $01 $82
    add d                                         ; $4180: $82
    ld bc, $8201                                  ; $4181: $01 $01 $82
    add d                                         ; $4184: $82
    add d                                         ; $4185: $82
    rlca                                          ; $4186: $07
    pop hl                                        ; $4187: $e1
    ld [c], a                                     ; $4188: $e2
    db $d3                                        ; $4189: $d3
    db $db                                        ; $418a: $db
    db $e4                                        ; $418b: $e4
    push hl                                       ; $418c: $e5
    ldh a, [$df]                                  ; $418d: $f0 $df
    add sp, -$17                                  ; $418f: $e8 $e9
    pop af                                        ; $4191: $f1
    db $d3                                        ; $4192: $d3
    db $ec                                        ; $4193: $ec
    ld a, [c]                                     ; $4194: $f2
    di                                            ; $4195: $f3
    push de                                       ; $4196: $d5
    add d                                         ; $4197: $82
    add d                                         ; $4198: $82
    ld bc, $8282                                  ; $4199: $01 $82 $82
    add d                                         ; $419c: $82
    add d                                         ; $419d: $82
    add d                                         ; $419e: $82
    add d                                         ; $419f: $82
    add d                                         ; $41a0: $82
    add d                                         ; $41a1: $82
    ld bc, $8282                                  ; $41a2: $01 $82 $82
    add d                                         ; $41a5: $82
    add d                                         ; $41a6: $82
    rst $20                                       ; $41a7: $e7
    add sp, -$17                                  ; $41a8: $e8 $e9
    ld [$eceb], a                                 ; $41aa: $ea $eb $ec
    db $ed                                        ; $41ad: $ed
    xor $d2                                       ; $41ae: $ee $d2
    db $f4                                        ; $41b0: $f4
    rst $10                                       ; $41b1: $d7
    db $e3                                        ; $41b2: $e3
    sub $d5                                       ; $41b3: $d6 $d5
    db $db                                        ; $41b5: $db
    rst $20                                       ; $41b6: $e7
    add d                                         ; $41b7: $82
    add d                                         ; $41b8: $82
    add d                                         ; $41b9: $82
    add d                                         ; $41ba: $82
    add d                                         ; $41bb: $82
    add d                                         ; $41bc: $82
    add d                                         ; $41bd: $82
    add d                                         ; $41be: $82
    add d                                         ; $41bf: $82
    inc bc                                        ; $41c0: $03
    add d                                         ; $41c1: $82
    add d                                         ; $41c2: $82
    add d                                         ; $41c3: $82
    and d                                         ; $41c4: $a2
    add d                                         ; $41c5: $82
    add d                                         ; $41c6: $82
    db $dd                                        ; $41c7: $dd
    sbc $db                                       ; $41c8: $de $db
    rst $20                                       ; $41ca: $e7
    pop hl                                        ; $41cb: $e1
    ld [c], a                                     ; $41cc: $e2
    rst $18                                       ; $41cd: $df
    db $eb                                        ; $41ce: $eb
    db $e4                                        ; $41cf: $e4
    push hl                                       ; $41d0: $e5
    ldh a, [$d3]                                  ; $41d1: $f0 $d3
    add sp, -$17                                  ; $41d3: $e8 $e9
    pop af                                        ; $41d5: $f1
    db $d3                                        ; $41d6: $d3
    add d                                         ; $41d7: $82
    add d                                         ; $41d8: $82
    add d                                         ; $41d9: $82
    add d                                         ; $41da: $82
    add d                                         ; $41db: $82
    add d                                         ; $41dc: $82
    add d                                         ; $41dd: $82
    add d                                         ; $41de: $82
    add d                                         ; $41df: $82
    add d                                         ; $41e0: $82
    add d                                         ; $41e1: $82
    ld bc, $8282                                  ; $41e2: $01 $82 $82
    add d                                         ; $41e5: $82
    ld bc, $e9e8                                  ; $41e6: $01 $e8 $e9
    pop af                                        ; $41e9: $f1
    db $d3                                        ; $41ea: $d3
    db $ec                                        ; $41eb: $ec
    ld a, [c]                                     ; $41ec: $f2
    di                                            ; $41ed: $f3
    ld bc, $d3f4                                  ; $41ee: $01 $f4 $d3
    db $d3                                        ; $41f1: $d3
    ld sp, hl                                     ; $41f2: $f9
    db $d3                                        ; $41f3: $d3
    db $fc                                        ; $41f4: $fc
    ld [bc], a                                    ; $41f5: $02
    ld a, [$8282]                                 ; $41f6: $fa $82 $82
    add d                                         ; $41f9: $82
    ld bc, $8282                                  ; $41fa: $01 $82 $82
    add d                                         ; $41fd: $82
    ld bc, $0103                                  ; $41fe: $01 $03 $01
    ld bc, $0101                                  ; $4201: $01 $01 $01
    rlca                                          ; $4204: $07
    ld bc, $fd01                                  ; $4205: $01 $01 $fd
    cp $d3                                        ; $4208: $fe $d3
    ld hl, sp-$01                                 ; $420a: $f8 $ff
    nop                                           ; $420c: $00
    db $d3                                        ; $420d: $d3
    db $fd                                        ; $420e: $fd
    ld hl, sp-$2d                                 ; $420f: $f8 $d3
    ld hl, sp-$01                                 ; $4211: $f8 $ff
    db $d3                                        ; $4213: $d3
    ei                                            ; $4214: $fb
    pop de                                        ; $4215: $d1
    db $d3                                        ; $4216: $d3
    ld bc, $0101                                  ; $4217: $01 $01 $01
    ld bc, $0101                                  ; $421a: $01 $01 $01
    ld bc, $0101                                  ; $421d: $01 $01 $01
    ld bc, $0101                                  ; $4220: $01 $01 $01
    ld bc, $0101                                  ; $4223: $01 $01 $01
    ld bc, $d303                                  ; $4226: $01 $03 $d3
    ei                                            ; $4229: $fb
    pop de                                        ; $422a: $d1
    cp $f8                                        ; $422b: $fe $f8
    db $d3                                        ; $422d: $d3
    db $d3                                        ; $422e: $d3
    nop                                           ; $422f: $00
    db $d3                                        ; $4230: $d3
    push af                                       ; $4231: $f5
    inc b                                         ; $4232: $04
    db $d3                                        ; $4233: $d3
    push af                                       ; $4234: $f5
    inc bc                                        ; $4235: $03
    ld hl, sp+$01                                 ; $4236: $f8 $01
    ld bc, $0101                                  ; $4238: $01 $01 $01
    ld bc, $0101                                  ; $423b: $01 $01 $01
    ld bc, $0101                                  ; $423e: $01 $01 $01
    ld bc, $0101                                  ; $4241: $01 $01 $01
    ld bc, $0101                                  ; $4244: $01 $01 $01
    inc b                                         ; $4247: $04
    dec b                                         ; $4248: $05
    ld b, $07                                     ; $4249: $06 $07
    ld hl, sp+$08                                 ; $424b: $f8 $08
    add hl, bc                                    ; $424d: $09
    inc bc                                        ; $424e: $03
    db $d3                                        ; $424f: $d3
    ld [$0506], sp                                ; $4250: $08 $06 $05
    push af                                       ; $4253: $f5
    dec b                                         ; $4254: $05
    add hl, bc                                    ; $4255: $09
    ld [$0301], sp                                ; $4256: $08 $01 $03
    inc bc                                        ; $4259: $03
    inc bc                                        ; $425a: $03
    ld bc, $0303                                  ; $425b: $01 $03 $03
    ld bc, $4301                                  ; $425e: $01 $01 $43
    inc bc                                        ; $4261: $03
    inc hl                                        ; $4262: $23
    ld bc, $0343                                  ; $4263: $01 $43 $03
    inc hl                                        ; $4266: $23
    db $d3                                        ; $4267: $d3
    push af                                       ; $4268: $f5
    rst $28                                       ; $4269: $ef
    db $db                                        ; $426a: $db
    db $d3                                        ; $426b: $d3
    inc b                                         ; $426c: $04
    rst $28                                       ; $426d: $ef
    rst $18                                       ; $426e: $df
    inc bc                                        ; $426f: $03
    ld hl, sp-$11                                 ; $4270: $f8 $ef
    db $d3                                        ; $4272: $d3
    ei                                            ; $4273: $fb
    pop de                                        ; $4274: $d1
    rst $28                                       ; $4275: $ef
    push af                                       ; $4276: $f5
    ld bc, $2701                                  ; $4277: $01 $01 $27
    add d                                         ; $427a: $82
    ld bc, $2701                                  ; $427b: $01 $01 $27
    add d                                         ; $427e: $82
    ld bc, $2701                                  ; $427f: $01 $01 $27
    ld bc, $0101                                  ; $4282: $01 $01 $01
    daa                                           ; $4285: $27
    ld bc, $0a0a                                  ; $4286: $01 $0a $0a
    ld a, [bc]                                    ; $4289: $0a
    ld a, [bc]                                    ; $428a: $0a
    dec bc                                        ; $428b: $0b
    dec bc                                        ; $428c: $0b
    dec bc                                        ; $428d: $0b
    dec bc                                        ; $428e: $0b
    inc b                                         ; $428f: $04
    ei                                            ; $4290: $fb
    pop de                                        ; $4291: $d1
    db $d3                                        ; $4292: $d3
    ld hl, sp+$0c                                 ; $4293: $f8 $0c
    inc b                                         ; $4295: $04
    ld bc, $0707                                  ; $4296: $01 $07 $07
    rlca                                          ; $4299: $07
    rlca                                          ; $429a: $07
    rlca                                          ; $429b: $07
    rlca                                          ; $429c: $07
    rlca                                          ; $429d: $07
    rlca                                          ; $429e: $07
    ld bc, $0101                                  ; $429f: $01 $01 $01
    ld bc, $0101                                  ; $42a2: $01 $01 $01
    ld bc, $0a01                                  ; $42a5: $01 $01 $0a
    ld a, [bc]                                    ; $42a8: $0a
    ld a, [bc]                                    ; $42a9: $0a
    ld a, [bc]                                    ; $42aa: $0a
    dec bc                                        ; $42ab: $0b
    dec bc                                        ; $42ac: $0b
    dec bc                                        ; $42ad: $0b
    dec bc                                        ; $42ae: $0b
    db $d3                                        ; $42af: $d3
    ld sp, hl                                     ; $42b0: $f9
    dec c                                         ; $42b1: $0d
    ld bc, $0e02                                  ; $42b2: $01 $02 $0e
    ld hl, sp-$2d                                 ; $42b5: $f8 $d3
    rlca                                          ; $42b7: $07
    rlca                                          ; $42b8: $07
    rlca                                          ; $42b9: $07
    rlca                                          ; $42ba: $07
    rlca                                          ; $42bb: $07
    rlca                                          ; $42bc: $07
    rlca                                          ; $42bd: $07
    rlca                                          ; $42be: $07
    ld bc, $0101                                  ; $42bf: $01 $01 $01
    ld bc, $0101                                  ; $42c2: $01 $01 $01
    ld bc, $0a01                                  ; $42c5: $01 $01 $0a
    rrca                                          ; $42c8: $0f
    db $10                                        ; $42c9: $10
    ld de, $120b                                  ; $42ca: $11 $0b $12
    inc de                                        ; $42cd: $13
    inc d                                         ; $42ce: $14
    db $d3                                        ; $42cf: $d3
    dec d                                         ; $42d0: $15
    ld d, $17                                     ; $42d1: $16 $17
    rlca                                          ; $42d3: $07
    jr jr_08a_42ef                                ; $42d4: $18 $19

    rlca                                          ; $42d6: $07
    rlca                                          ; $42d7: $07
    rlca                                          ; $42d8: $07
    inc bc                                        ; $42d9: $03
    inc bc                                        ; $42da: $03
    rlca                                          ; $42db: $07
    rlca                                          ; $42dc: $07
    inc bc                                        ; $42dd: $03
    rlca                                          ; $42de: $07
    ld bc, $0303                                  ; $42df: $01 $03 $03
    rlca                                          ; $42e2: $07
    ld h, e                                       ; $42e3: $63
    inc bc                                        ; $42e4: $03
    inc bc                                        ; $42e5: $03
    ld b, e                                       ; $42e6: $43
    ld a, [de]                                    ; $42e7: $1a
    ld a, [bc]                                    ; $42e8: $0a
    dec de                                        ; $42e9: $1b
    db $d3                                        ; $42ea: $d3
    inc e                                         ; $42eb: $1c
    dec bc                                        ; $42ec: $0b
    ld [de], a                                    ; $42ed: $12
    db $d3                                        ; $42ee: $d3

jr_08a_42ef:
    dec e                                         ; $42ef: $1d
    db $d3                                        ; $42f0: $d3
    db $d3                                        ; $42f1: $d3
    ei                                            ; $42f2: $fb
    db $d3                                        ; $42f3: $d3
    db $d3                                        ; $42f4: $d3
    ld e, $1f                                     ; $42f5: $1e $1f
    rlca                                          ; $42f7: $07
    rlca                                          ; $42f8: $07
    rlca                                          ; $42f9: $07
    ld bc, $0707                                  ; $42fa: $01 $07 $07
    rlca                                          ; $42fd: $07
    ld bc, $0107                                  ; $42fe: $01 $07 $01
    ld bc, $0101                                  ; $4301: $01 $01 $01
    ld bc, $0101                                  ; $4304: $01 $01 $01
    ld [bc], a                                    ; $4307: $02
    jr nz, jr_08a_4317                            ; $4308: $20 $0d

    ld c, $04                                     ; $430a: $0e $04
    ld hl, $0c03                                  ; $430c: $21 $03 $0c
    ld hl, sp+$0d                                 ; $430f: $f8 $0d
    ld hl, $0401                                  ; $4311: $21 $01 $04
    inc bc                                        ; $4314: $03
    ld [bc], a                                    ; $4315: $02
    ei                                            ; $4316: $fb

jr_08a_4317:
    ld bc, $0101                                  ; $4317: $01 $01 $01
    ld bc, $0101                                  ; $431a: $01 $01 $01
    ld bc, $0101                                  ; $431d: $01 $01 $01
    ld bc, $0101                                  ; $4320: $01 $01 $01
    ld bc, $0101                                  ; $4323: $01 $01 $01
    ld bc, $01d3                                  ; $4326: $01 $d3 $01
    db $d3                                        ; $4329: $d3
    dec b                                         ; $432a: $05
    ld hl, sp-$2d                                 ; $432b: $f8 $d3
    db $d3                                        ; $432d: $d3
    ld [$d3d3], sp                                ; $432e: $08 $d3 $d3
    rlca                                          ; $4331: $07
    ld [hl+], a                                   ; $4332: $22
    pop de                                        ; $4333: $d1
    dec d                                         ; $4334: $15
    add hl, de                                    ; $4335: $19
    inc hl                                        ; $4336: $23
    ld bc, $0101                                  ; $4337: $01 $01 $01
    inc bc                                        ; $433a: $03
    ld bc, $0101                                  ; $433b: $01 $01 $01
    inc bc                                        ; $433e: $03
    ld bc, $6301                                  ; $433f: $01 $01 $63
    inc bc                                        ; $4342: $03
    ld bc, $0303                                  ; $4343: $01 $03 $03
    inc bc                                        ; $4346: $03
    inc h                                         ; $4347: $24
    ld b, $25                                     ; $4348: $06 $25
    ld h, $27                                     ; $434a: $26 $27
    add hl, bc                                    ; $434c: $09
    jr z, jr_08a_4378                             ; $434d: $28 $29

    ld a, [hl+]                                   ; $434f: $2a
    dec hl                                        ; $4350: $2b
    inc l                                         ; $4351: $2c
    ld [hl+], a                                   ; $4352: $22
    dec l                                         ; $4353: $2d
    jr jr_08a_435d                                ; $4354: $18 $07

    ld l, $03                                     ; $4356: $2e $03
    inc bc                                        ; $4358: $03
    inc bc                                        ; $4359: $03
    inc bc                                        ; $435a: $03
    inc bc                                        ; $435b: $03
    inc bc                                        ; $435c: $03

jr_08a_435d:
    inc bc                                        ; $435d: $03
    inc bc                                        ; $435e: $03
    inc bc                                        ; $435f: $03

jr_08a_4360:
    inc bc                                        ; $4360: $03
    inc bc                                        ; $4361: $03
    inc bc                                        ; $4362: $03
    inc bc                                        ; $4363: $03
    inc bc                                        ; $4364: $03
    inc bc                                        ; $4365: $03
    ld h, e                                       ; $4366: $63
    cpl                                           ; $4367: $2f
    ld l, $d3                                     ; $4368: $2e $d3
    db $d3                                        ; $436a: $d3
    daa                                           ; $436b: $27
    dec hl                                        ; $436c: $2b
    inc l                                         ; $436d: $2c
    cpl                                           ; $436e: $2f
    ld a, [hl+]                                   ; $436f: $2a
    jr jr_08a_438b                                ; $4370: $18 $19

    inc hl                                        ; $4372: $23
    cpl                                           ; $4373: $2f
    ld b, $25                                     ; $4374: $06 $25
    ld h, $03                                     ; $4376: $26 $03

jr_08a_4378:
    inc bc                                        ; $4378: $03
    ld bc, $0301                                  ; $4379: $01 $01 $03
    inc bc                                        ; $437c: $03
    inc bc                                        ; $437d: $03
    inc bc                                        ; $437e: $03
    inc bc                                        ; $437f: $03
    inc bc                                        ; $4380: $03
    inc bc                                        ; $4381: $03
    inc bc                                        ; $4382: $03
    ld h, e                                       ; $4383: $63
    inc bc                                        ; $4384: $03
    inc bc                                        ; $4385: $03
    inc bc                                        ; $4386: $03
    ld hl, sp-$07                                 ; $4387: $f8 $f9
    db $d3                                        ; $4389: $d3
    db $d3                                        ; $438a: $d3

jr_08a_438b:
    jr nz, jr_08a_4360                            ; $438b: $20 $d3

    db $d3                                        ; $438d: $d3
    dec d                                         ; $438e: $15
    inc b                                         ; $438f: $04
    db $d3                                        ; $4390: $d3
    rlca                                          ; $4391: $07
    ld [hl+], a                                   ; $4392: $22
    db $d3                                        ; $4393: $d3
    dec d                                         ; $4394: $15
    add hl, de                                    ; $4395: $19
    inc hl                                        ; $4396: $23
    ld bc, $0101                                  ; $4397: $01 $01 $01
    ld bc, $0101                                  ; $439a: $01 $01 $01
    ld bc, $0103                                  ; $439d: $01 $03 $01
    ld bc, $0363                                  ; $43a0: $01 $63 $03
    ld bc, $0303                                  ; $43a3: $01 $03 $03
    inc bc                                        ; $43a6: $03
    rlca                                          ; $43a7: $07
    ld b, $25                                     ; $43a8: $06 $25
    ld h, $27                                     ; $43aa: $26 $27
    add hl, bc                                    ; $43ac: $09
    jr z, jr_08a_43b6                             ; $43ad: $28 $07

    ld a, [hl+]                                   ; $43af: $2a
    dec hl                                        ; $43b0: $2b
    dec d                                         ; $43b1: $15
    db $d3                                        ; $43b2: $d3
    dec l                                         ; $43b3: $2d
    rlca                                          ; $43b4: $07
    db $d3                                        ; $43b5: $d3

jr_08a_43b6:
    db $d3                                        ; $43b6: $d3
    ld h, e                                       ; $43b7: $63
    inc bc                                        ; $43b8: $03
    inc bc                                        ; $43b9: $03
    inc bc                                        ; $43ba: $03
    inc bc                                        ; $43bb: $03
    inc bc                                        ; $43bc: $03
    inc bc                                        ; $43bd: $03
    inc bc                                        ; $43be: $03
    inc bc                                        ; $43bf: $03
    inc bc                                        ; $43c0: $03
    ld h, e                                       ; $43c1: $63
    ld bc, $0303                                  ; $43c2: $01 $03 $03
    ld bc, $2f01                                  ; $43c5: $01 $01 $2f
    ld l, $d3                                     ; $43c8: $2e $d3
    db $fc                                        ; $43ca: $fc
    db $d3                                        ; $43cb: $d3
    jr nc, jr_08a_43ff                            ; $43cc: $30 $31

    ld [hl-], a                                   ; $43ce: $32
    inc sp                                        ; $43cf: $33
    inc [hl]                                      ; $43d0: $34
    dec [hl]                                      ; $43d1: $35
    ld [hl], $37                                  ; $43d2: $36 $37
    jr c, @+$3b                                   ; $43d4: $38 $39

    ld a, [hl-]                                   ; $43d6: $3a
    ld b, e                                       ; $43d7: $43
    ld b, e                                       ; $43d8: $43
    ld bc, $0107                                  ; $43d9: $01 $07 $01
    add d                                         ; $43dc: $82
    add d                                         ; $43dd: $82
    add d                                         ; $43de: $82
    add d                                         ; $43df: $82
    add d                                         ; $43e0: $82
    add d                                         ; $43e1: $82
    add d                                         ; $43e2: $82
    add d                                         ; $43e3: $82
    add d                                         ; $43e4: $82
    add d                                         ; $43e5: $82
    add d                                         ; $43e6: $82
    db $d3                                        ; $43e7: $d3
    ld l, $2f                                     ; $43e8: $2e $2f
    add hl, hl                                    ; $43ea: $29
    dec sp                                        ; $43eb: $3b
    db $d3                                        ; $43ec: $d3
    db $d3                                        ; $43ed: $d3
    db $d3                                        ; $43ee: $d3
    inc a                                         ; $43ef: $3c
    dec a                                         ; $43f0: $3d
    db $fc                                        ; $43f1: $fc
    db $fd                                        ; $43f2: $fd
    ld a, $3f                                     ; $43f3: $3e $3f
    db $d3                                        ; $43f5: $d3
    rst $38                                       ; $43f6: $ff
    ld bc, $6363                                  ; $43f7: $01 $63 $63
    inc bc                                        ; $43fa: $03
    add d                                         ; $43fb: $82
    ld bc, $0101                                  ; $43fc: $01 $01 $01

jr_08a_43ff:
    add d                                         ; $43ff: $82
    add d                                         ; $4400: $82
    rlca                                          ; $4401: $07
    ld bc, $8282                                  ; $4402: $01 $82 $82
    ld bc, $e701                                  ; $4405: $01 $01 $e7
    add sp, -$17                                  ; $4408: $e8 $e9
    ld [$eceb], a                                 ; $440a: $ea $eb $ec
    db $ed                                        ; $440d: $ed
    xor $d3                                       ; $440e: $ee $d3
    db $f4                                        ; $4410: $f4
    rst $10                                       ; $4411: $d7
    db $e3                                        ; $4412: $e3
    db $d3                                        ; $4413: $d3
    db $d3                                        ; $4414: $d3
    db $db                                        ; $4415: $db
    rst $20                                       ; $4416: $e7
    add d                                         ; $4417: $82
    add d                                         ; $4418: $82
    add d                                         ; $4419: $82

jr_08a_441a:
    add d                                         ; $441a: $82
    add d                                         ; $441b: $82
    add d                                         ; $441c: $82
    add d                                         ; $441d: $82
    add d                                         ; $441e: $82
    ld bc, $8203                                  ; $441f: $01 $03 $82
    add d                                         ; $4422: $82
    ld bc, $8201                                  ; $4423: $01 $01 $82
    add d                                         ; $4426: $82
    add sp, -$17                                  ; $4427: $e8 $e9
    pop af                                        ; $4429: $f1
    ret c                                         ; $442a: $d8

    db $ec                                        ; $442b: $ec
    ld a, [c]                                     ; $442c: $f2
    di                                            ; $442d: $f3
    call c, $d3f4                                 ; $442e: $dc $f4 $d3
    call nc, $d3e0                                ; $4431: $d4 $e0 $d3
    db $d3                                        ; $4434: $d3
    rst $10                                       ; $4435: $d7
    db $e3                                        ; $4436: $e3
    add d                                         ; $4437: $82
    add d                                         ; $4438: $82
    add d                                         ; $4439: $82
    add d                                         ; $443a: $82
    add d                                         ; $443b: $82
    add d                                         ; $443c: $82
    add d                                         ; $443d: $82
    add d                                         ; $443e: $82
    inc bc                                        ; $443f: $03
    ld bc, $8282                                  ; $4440: $01 $82 $82
    ld bc, $8201                                  ; $4443: $01 $01 $82
    add d                                         ; $4446: $82
    reti                                          ; $4447: $d9


    jp c, $d3d3                                   ; $4448: $da $d3 $d3

    db $dd                                        ; $444b: $dd
    sbc $d3                                       ; $444c: $de $d3
    jp nc, $e2e1                                  ; $444e: $d2 $e1 $e2

    push de                                       ; $4451: $d5
    sub $e4                                       ; $4452: $d6 $e4
    push hl                                       ; $4454: $e5
    and $d9                                       ; $4455: $e6 $d9
    add d                                         ; $4457: $82
    add d                                         ; $4458: $82
    ld bc, $8201                                  ; $4459: $01 $01 $82
    add d                                         ; $445c: $82
    ld bc, $8282                                  ; $445d: $01 $82 $82
    add d                                         ; $4460: $82
    add d                                         ; $4461: $82
    add d                                         ; $4462: $82
    add d                                         ; $4463: $82
    add d                                         ; $4464: $82
    add d                                         ; $4465: $82
    add d                                         ; $4466: $82
    db $fc                                        ; $4467: $fc
    db $d3                                        ; $4468: $d3
    rst $18                                       ; $4469: $df
    db $eb                                        ; $446a: $eb
    db $d3                                        ; $446b: $d3
    push af                                       ; $446c: $f5
    db $d3                                        ; $446d: $d3
    db $d3                                        ; $446e: $d3
    pop de                                        ; $446f: $d1
    db $d3                                        ; $4470: $d3
    ld e, $1f                                     ; $4471: $1e $1f
    ld b, b                                       ; $4473: $40
    ld b, c                                       ; $4474: $41
    ld b, d                                       ; $4475: $42
    ld b, e                                       ; $4476: $43
    rlca                                          ; $4477: $07
    ld bc, $8282                                  ; $4478: $01 $82 $82
    ld bc, $0101                                  ; $447b: $01 $01 $01
    ld bc, $0101                                  ; $447e: $01 $01 $01
    ld bc, $0101                                  ; $4481: $01 $01 $01
    ld bc, $0101                                  ; $4484: $01 $01 $01
    db $ec                                        ; $4487: $ec
    ld a, [c]                                     ; $4488: $f2
    di                                            ; $4489: $f3
    ei                                            ; $448a: $fb
    db $f4                                        ; $448b: $f4
    db $d3                                        ; $448c: $d3
    db $fc                                        ; $448d: $fc
    db $d3                                        ; $448e: $d3
    ld b, h                                       ; $448f: $44
    ld b, c                                       ; $4490: $41
    ld b, l                                       ; $4491: $45
    db $d3                                        ; $4492: $d3
    ld b, [hl]                                    ; $4493: $46
    rra                                           ; $4494: $1f
    db $d3                                        ; $4495: $d3
    jr nc, jr_08a_441a                            ; $4496: $30 $82

    add d                                         ; $4498: $82
    add d                                         ; $4499: $82
    ld bc, $0103                                  ; $449a: $01 $03 $01
    rlca                                          ; $449d: $07
    ld bc, $0101                                  ; $449e: $01 $01 $01
    ld bc, $0101                                  ; $44a1: $01 $01 $01
    ld bc, $8201                                  ; $44a4: $01 $01 $82
    pop de                                        ; $44a7: $d1
    db $d3                                        ; $44a8: $d3
    db $db                                        ; $44a9: $db
    rst $20                                       ; $44aa: $e7
    db $d3                                        ; $44ab: $d3
    push af                                       ; $44ac: $f5
    rst $18                                       ; $44ad: $df
    db $eb                                        ; $44ae: $eb
    db $d3                                        ; $44af: $d3
    db $d3                                        ; $44b0: $d3
    db $fc                                        ; $44b1: $fc
    db $d3                                        ; $44b2: $d3
    ld sp, $3b32                                  ; $44b3: $31 $32 $3b
    db $d3                                        ; $44b6: $d3
    ld bc, $8201                                  ; $44b7: $01 $01 $82
    add d                                         ; $44ba: $82
    ld bc, $8201                                  ; $44bb: $01 $01 $82
    add d                                         ; $44be: $82
    ld bc, $0701                                  ; $44bf: $01 $01 $07
    ld bc, $8282                                  ; $44c2: $01 $82 $82
    add d                                         ; $44c5: $82
    ld bc, $e9e8                                  ; $44c6: $01 $e8 $e9
    ld [$ecdd], a                                 ; $44c9: $ea $dd $ec
    db $ed                                        ; $44cc: $ed
    xor $e1                                       ; $44cd: $ee $e1
    db $f4                                        ; $44cf: $f4
    rst $10                                       ; $44d0: $d7
    db $e3                                        ; $44d1: $e3
    db $e4                                        ; $44d2: $e4
    db $d3                                        ; $44d3: $d3
    db $db                                        ; $44d4: $db
    rst $20                                       ; $44d5: $e7
    add sp, -$7e                                  ; $44d6: $e8 $82
    add d                                         ; $44d8: $82
    add d                                         ; $44d9: $82
    add d                                         ; $44da: $82
    add d                                         ; $44db: $82
    add d                                         ; $44dc: $82
    add d                                         ; $44dd: $82
    add d                                         ; $44de: $82
    inc bc                                        ; $44df: $03
    add d                                         ; $44e0: $82
    add d                                         ; $44e1: $82
    add d                                         ; $44e2: $82
    ld bc, $8282                                  ; $44e3: $01 $82 $82
    add d                                         ; $44e6: $82
    db $fc                                        ; $44e7: $fc
    db $d3                                        ; $44e8: $d3
    ld b, b                                       ; $44e9: $40
    ld b, c                                       ; $44ea: $41
    ld l, $d3                                     ; $44eb: $2e $d3
    db $d3                                        ; $44ed: $d3
    db $d3                                        ; $44ee: $d3
    dec l                                         ; $44ef: $2d
    dec d                                         ; $44f0: $15
    db $d3                                        ; $44f1: $d3
    db $d3                                        ; $44f2: $d3
    inc h                                         ; $44f3: $24
    dec hl                                        ; $44f4: $2b
    cpl                                           ; $44f5: $2f
    ld l, $07                                     ; $44f6: $2e $07
    ld bc, $0101                                  ; $44f8: $01 $01 $01
    inc bc                                        ; $44fb: $03
    ld bc, $0101                                  ; $44fc: $01 $01 $01
    inc bc                                        ; $44ff: $03
    inc hl                                        ; $4500: $23
    ld bc, $0301                                  ; $4501: $01 $01 $03
    inc bc                                        ; $4504: $03
    inc bc                                        ; $4505: $03
    inc bc                                        ; $4506: $03
    ld b, l                                       ; $4507: $45
    db $d3                                        ; $4508: $d3
    inc sp                                        ; $4509: $33
    inc [hl]                                      ; $450a: $34
    db $fd                                        ; $450b: $fd
    cp $37                                        ; $450c: $fe $37
    jr c, @+$01                                   ; $450e: $38 $ff

    nop                                           ; $4510: $00
    ld b, a                                       ; $4511: $47
    ld c, b                                       ; $4512: $48
    db $d3                                        ; $4513: $d3
    db $d3                                        ; $4514: $d3
    ld c, c                                       ; $4515: $49
    ld c, d                                       ; $4516: $4a
    ld bc, $8201                                  ; $4517: $01 $01 $82
    add d                                         ; $451a: $82
    ld bc, $8201                                  ; $451b: $01 $01 $82
    add d                                         ; $451e: $82
    ld bc, $8201                                  ; $451f: $01 $01 $82
    add d                                         ; $4522: $82
    ld bc, $8201                                  ; $4523: $01 $01 $82
    add d                                         ; $4526: $82
    dec [hl]                                      ; $4527: $35
    ld [hl], $3c                                  ; $4528: $36 $3c
    dec a                                         ; $452a: $3d
    add hl, sp                                    ; $452b: $39
    ld a, [hl-]                                   ; $452c: $3a
    ld a, $3f                                     ; $452d: $3e $3f
    ld c, e                                       ; $452f: $4b
    ld c, h                                       ; $4530: $4c
    ld c, l                                       ; $4531: $4d
    ld c, [hl]                                    ; $4532: $4e
    ld c, a                                       ; $4533: $4f
    ld d, b                                       ; $4534: $50
    ld d, c                                       ; $4535: $51
    ld d, d                                       ; $4536: $52
    add d                                         ; $4537: $82
    add d                                         ; $4538: $82
    add d                                         ; $4539: $82
    add d                                         ; $453a: $82
    add d                                         ; $453b: $82
    add d                                         ; $453c: $82
    add d                                         ; $453d: $82
    add d                                         ; $453e: $82
    add d                                         ; $453f: $82
    add d                                         ; $4540: $82
    add d                                         ; $4541: $82
    add d                                         ; $4542: $82
    add d                                         ; $4543: $82
    add d                                         ; $4544: $82
    add d                                         ; $4545: $82
    add d                                         ; $4546: $82
    db $d3                                        ; $4547: $d3
    rst $18                                       ; $4548: $df
    db $eb                                        ; $4549: $eb
    db $ec                                        ; $454a: $ec
    db $d3                                        ; $454b: $d3
    db $d3                                        ; $454c: $d3
    db $d3                                        ; $454d: $d3
    db $f4                                        ; $454e: $f4
    push af                                       ; $454f: $f5
    db $d3                                        ; $4550: $d3
    db $fc                                        ; $4551: $fc
    db $d3                                        ; $4552: $d3
    db $d3                                        ; $4553: $d3
    db $d3                                        ; $4554: $d3
    db $d3                                        ; $4555: $d3
    db $d3                                        ; $4556: $d3
    ld bc, $8282                                  ; $4557: $01 $82 $82
    add d                                         ; $455a: $82
    ld bc, $0101                                  ; $455b: $01 $01 $01
    inc bc                                        ; $455e: $03
    ld bc, $0701                                  ; $455f: $01 $01 $07
    ld bc, $0101                                  ; $4562: $01 $01 $01
    ld bc, $2701                                  ; $4565: $01 $01 $27
    jr jr_08a_4583                                ; $4568: $18 $19

    inc hl                                        ; $456a: $23
    ld l, $2f                                     ; $456b: $2e $2f
    dec h                                         ; $456d: $25
    ld h, $fe                                     ; $456e: $26 $fe
    db $d3                                        ; $4570: $d3
    rlca                                          ; $4571: $07
    add hl, hl                                    ; $4572: $29
    nop                                           ; $4573: $00
    db $d3                                        ; $4574: $d3
    db $d3                                        ; $4575: $d3
    dec d                                         ; $4576: $15
    inc bc                                        ; $4577: $03
    inc bc                                        ; $4578: $03
    inc bc                                        ; $4579: $03
    inc bc                                        ; $457a: $03
    ld h, e                                       ; $457b: $63
    ld h, e                                       ; $457c: $63
    inc bc                                        ; $457d: $03
    inc bc                                        ; $457e: $03
    ld bc, $2301                                  ; $457f: $01 $01 $23
    inc bc                                        ; $4582: $03

jr_08a_4583:
    ld bc, $0101                                  ; $4583: $01 $01 $01
    ld b, e                                       ; $4586: $43
    cpl                                           ; $4587: $2f
    ld l, $d3                                     ; $4588: $2e $d3
    db $d3                                        ; $458a: $d3
    inc h                                         ; $458b: $24
    ld b, $15                                     ; $458c: $06 $15
    db $d3                                        ; $458e: $d3
    daa                                           ; $458f: $27
    add hl, bc                                    ; $4590: $09
    jr z, @+$09                                   ; $4591: $28 $07

    dec hl                                        ; $4593: $2b
    inc l                                         ; $4594: $2c
    ld [hl+], a                                   ; $4595: $22
    ld a, [hl+]                                   ; $4596: $2a
    inc bc                                        ; $4597: $03
    inc bc                                        ; $4598: $03
    ld bc, $0301                                  ; $4599: $01 $01 $03
    inc bc                                        ; $459c: $03
    inc hl                                        ; $459d: $23
    ld bc, $0303                                  ; $459e: $01 $03 $03
    inc bc                                        ; $45a1: $03
    ld b, e                                       ; $45a2: $43
    inc bc                                        ; $45a3: $03
    inc bc                                        ; $45a4: $03
    inc bc                                        ; $45a5: $03
    inc bc                                        ; $45a6: $03

jr_08a_45a7:
    ld d, e                                       ; $45a7: $53
    ld d, h                                       ; $45a8: $54
    db $d3                                        ; $45a9: $d3
    db $d3                                        ; $45aa: $d3
    ld d, l                                       ; $45ab: $55
    ld d, [hl]                                    ; $45ac: $56
    db $d3                                        ; $45ad: $d3
    ei                                            ; $45ae: $fb
    db $d3                                        ; $45af: $d3
    db $d3                                        ; $45b0: $d3
    ld d, a                                       ; $45b1: $57
    db $d3                                        ; $45b2: $d3
    dec d                                         ; $45b3: $15
    db $d3                                        ; $45b4: $d3
    db $d3                                        ; $45b5: $d3
    push af                                       ; $45b6: $f5
    inc bc                                        ; $45b7: $03
    inc bc                                        ; $45b8: $03
    ld bc, $0301                                  ; $45b9: $01 $01 $03
    inc bc                                        ; $45bc: $03
    ld bc, $0101                                  ; $45bd: $01 $01 $01
    ld bc, $0106                                  ; $45c0: $01 $06 $01
    inc hl                                        ; $45c3: $23
    ld bc, $0101                                  ; $45c4: $01 $01 $01
    db $d3                                        ; $45c7: $d3
    ld e, b                                       ; $45c8: $58
    ld d, a                                       ; $45c9: $57
    db $d3                                        ; $45ca: $d3
    pop de                                        ; $45cb: $d1
    db $d3                                        ; $45cc: $d3
    db $d3                                        ; $45cd: $d3
    ld e, b                                       ; $45ce: $58
    db $d3                                        ; $45cf: $d3
    db $d3                                        ; $45d0: $d3
    ld e, c                                       ; $45d1: $59
    jr nc, jr_08a_45a7                            ; $45d2: $30 $d3

    db $d3                                        ; $45d4: $d3
    inc sp                                        ; $45d5: $33
    inc [hl]                                      ; $45d6: $34
    ld bc, $0505                                  ; $45d7: $01 $05 $05
    ld bc, $0101                                  ; $45da: $01 $01 $01
    ld bc, $0106                                  ; $45dd: $01 $06 $01
    ld bc, $8205                                  ; $45e0: $01 $05 $82
    ld bc, $8201                                  ; $45e3: $01 $01 $82
    add d                                         ; $45e6: $82
    push af                                       ; $45e7: $f5
    db $d3                                        ; $45e8: $d3
    ret c                                         ; $45e9: $d8

    reti                                          ; $45ea: $d9


    db $d3                                        ; $45eb: $d3
    db $d3                                        ; $45ec: $d3
    call c, $d5dd                                 ; $45ed: $dc $dd $d5
    call nc, $e1e0                                ; $45f0: $d4 $e0 $e1
    jp c, $e3d7                                   ; $45f3: $da $d7 $e3

    db $e4                                        ; $45f6: $e4
    ld bc, $8201                                  ; $45f7: $01 $01 $82
    add d                                         ; $45fa: $82
    ld bc, $8201                                  ; $45fb: $01 $01 $82
    add d                                         ; $45fe: $82
    and d                                         ; $45ff: $a2
    add d                                         ; $4600: $82
    add d                                         ; $4601: $82
    add d                                         ; $4602: $82
    add d                                         ; $4603: $82
    add d                                         ; $4604: $82
    add d                                         ; $4605: $82
    add d                                         ; $4606: $82
    jp c, $d3f5                                   ; $4607: $da $f5 $d3

    ldh [$de], a                                  ; $460a: $e0 $de
    db $d3                                        ; $460c: $d3
    rst $10                                       ; $460d: $d7
    db $e3                                        ; $460e: $e3
    ld [c], a                                     ; $460f: $e2
    db $d3                                        ; $4610: $d3
    db $db                                        ; $4611: $db
    rst $20                                       ; $4612: $e7
    push hl                                       ; $4613: $e5
    ldh a, [$df]                                  ; $4614: $f0 $df
    db $eb                                        ; $4616: $eb
    add d                                         ; $4617: $82
    ld bc, $8201                                  ; $4618: $01 $01 $82
    add d                                         ; $461b: $82
    ld bc, $8282                                  ; $461c: $01 $82 $82
    add d                                         ; $461f: $82
    ld bc, $8282                                  ; $4620: $01 $82 $82
    add d                                         ; $4623: $82
    add d                                         ; $4624: $82
    add d                                         ; $4625: $82
    add d                                         ; $4626: $82
    pop hl                                        ; $4627: $e1
    ld [c], a                                     ; $4628: $e2
    rra                                           ; $4629: $1f
    ld e, d                                       ; $462a: $5a
    db $e4                                        ; $462b: $e4
    push hl                                       ; $462c: $e5
    ldh a, [rNR34]                                ; $462d: $f0 $1e
    add sp, -$17                                  ; $462f: $e8 $e9
    pop af                                        ; $4631: $f1
    ld b, l                                       ; $4632: $45
    db $ec                                        ; $4633: $ec
    ld a, [c]                                     ; $4634: $f2
    di                                            ; $4635: $f3
    ld b, b                                       ; $4636: $40
    add d                                         ; $4637: $82
    add d                                         ; $4638: $82
    ld bc, $8201                                  ; $4639: $01 $01 $82
    add d                                         ; $463c: $82
    add d                                         ; $463d: $82
    ld bc, $8282                                  ; $463e: $01 $82 $82
    add d                                         ; $4641: $82
    ld bc, $8282                                  ; $4642: $01 $82 $82
    add d                                         ; $4645: $82
    ld bc, $5c5b                                  ; $4646: $01 $5b $5c
    ld e, l                                       ; $4649: $5d
    ld e, [hl]                                    ; $464a: $5e
    ld e, a                                       ; $464b: $5f
    ld h, b                                       ; $464c: $60
    ld h, c                                       ; $464d: $61
    ld h, d                                       ; $464e: $62
    ld h, e                                       ; $464f: $63
    ld h, h                                       ; $4650: $64
    ld h, l                                       ; $4651: $65
    ld h, [hl]                                    ; $4652: $66
    ld h, a                                       ; $4653: $67
    ld l, b                                       ; $4654: $68
    ld l, c                                       ; $4655: $69
    ld l, d                                       ; $4656: $6a
    inc bc                                        ; $4657: $03
    inc bc                                        ; $4658: $03
    inc bc                                        ; $4659: $03
    inc bc                                        ; $465a: $03
    inc bc                                        ; $465b: $03
    inc bc                                        ; $465c: $03
    inc bc                                        ; $465d: $03
    inc bc                                        ; $465e: $03
    inc bc                                        ; $465f: $03
    inc bc                                        ; $4660: $03
    inc bc                                        ; $4661: $03
    inc bc                                        ; $4662: $03
    ld h, e                                       ; $4663: $63
    inc bc                                        ; $4664: $03
    inc bc                                        ; $4665: $03
    inc bc                                        ; $4666: $03
    sbc $db                                       ; $4667: $de $db
    rst $20                                       ; $4669: $e7
    add sp, -$1e                                  ; $466a: $e8 $e2
    rst $18                                       ; $466c: $df
    db $eb                                        ; $466d: $eb
    db $ec                                        ; $466e: $ec
    push hl                                       ; $466f: $e5
    ldh a, [$d3]                                  ; $4670: $f0 $d3
    db $f4                                        ; $4672: $f4
    jp hl                                         ; $4673: $e9


    pop af                                        ; $4674: $f1
    db $d3                                        ; $4675: $d3
    db $d3                                        ; $4676: $d3
    add d                                         ; $4677: $82
    add d                                         ; $4678: $82
    add d                                         ; $4679: $82
    add d                                         ; $467a: $82
    add d                                         ; $467b: $82
    add d                                         ; $467c: $82
    add d                                         ; $467d: $82
    add d                                         ; $467e: $82
    add d                                         ; $467f: $82
    add d                                         ; $4680: $82
    ld bc, $8203                                  ; $4681: $01 $03 $82
    add d                                         ; $4684: $82
    ld bc, $e901                                  ; $4685: $01 $01 $e9
    pop af                                        ; $4688: $f1
    db $d3                                        ; $4689: $d3
    db $d3                                        ; $468a: $d3
    ld a, [c]                                     ; $468b: $f2
    di                                            ; $468c: $f3
    db $fc                                        ; $468d: $fc
    ld e, $d3                                     ; $468e: $1e $d3
    db $d3                                        ; $4690: $d3
    db $d3                                        ; $4691: $d3
    ld b, l                                       ; $4692: $45
    ei                                            ; $4693: $fb
    pop de                                        ; $4694: $d1
    rra                                           ; $4695: $1f
    ld b, d                                       ; $4696: $42
    add d                                         ; $4697: $82
    add d                                         ; $4698: $82
    ld bc, $8201                                  ; $4699: $01 $01 $82
    add d                                         ; $469c: $82
    rlca                                          ; $469d: $07
    ld bc, $0101                                  ; $469e: $01 $01 $01
    ld bc, $0101                                  ; $46a1: $01 $01 $01
    ld bc, $0101                                  ; $46a4: $01 $01 $01
    db $f4                                        ; $46a7: $f4
    db $d3                                        ; $46a8: $d3
    db $d3                                        ; $46a9: $d3
    ld e, $1f                                     ; $46aa: $1e $1f
    ld l, e                                       ; $46ac: $6b
    ld l, h                                       ; $46ad: $6c
    ld b, l                                       ; $46ae: $45
    ld l, e                                       ; $46af: $6b
    ld b, h                                       ; $46b0: $44
    rra                                           ; $46b1: $1f
    db $d3                                        ; $46b2: $d3
    ld b, e                                       ; $46b3: $43
    ld b, [hl]                                    ; $46b4: $46
    ld l, l                                       ; $46b5: $6d
    ld sp, hl                                     ; $46b6: $f9
    inc bc                                        ; $46b7: $03
    ld bc, $0101                                  ; $46b8: $01 $01 $01
    ld bc, $0101                                  ; $46bb: $01 $01 $01
    ld bc, $0101                                  ; $46be: $01 $01 $01
    ld bc, $0101                                  ; $46c1: $01 $01 $01
    ld bc, $0101                                  ; $46c4: $01 $01 $01
    ld e, e                                       ; $46c7: $5b
    ld l, [hl]                                    ; $46c8: $6e
    ld l, a                                       ; $46c9: $6f
    ld e, [hl]                                    ; $46ca: $5e
    ld e, a                                       ; $46cb: $5f
    ld [hl], b                                    ; $46cc: $70
    ld [hl], c                                    ; $46cd: $71
    ld h, d                                       ; $46ce: $62
    ld h, e                                       ; $46cf: $63
    ld h, h                                       ; $46d0: $64
    ld h, l                                       ; $46d1: $65
    ld h, [hl]                                    ; $46d2: $66
    ld h, a                                       ; $46d3: $67
    ld [hl], d                                    ; $46d4: $72
    ld [hl], e                                    ; $46d5: $73
    ld [hl], h                                    ; $46d6: $74
    inc bc                                        ; $46d7: $03
    inc bc                                        ; $46d8: $03
    inc bc                                        ; $46d9: $03
    inc bc                                        ; $46da: $03
    inc bc                                        ; $46db: $03
    inc bc                                        ; $46dc: $03
    inc bc                                        ; $46dd: $03
    inc bc                                        ; $46de: $03
    inc bc                                        ; $46df: $03
    inc bc                                        ; $46e0: $03
    inc bc                                        ; $46e1: $03
    inc bc                                        ; $46e2: $03
    ld h, e                                       ; $46e3: $63
    inc bc                                        ; $46e4: $03
    inc bc                                        ; $46e5: $03
    inc bc                                        ; $46e6: $03
    ld a, [c]                                     ; $46e7: $f2
    di                                            ; $46e8: $f3
    db $fc                                        ; $46e9: $fc
    db $d3                                        ; $46ea: $d3
    db $d3                                        ; $46eb: $d3
    db $d3                                        ; $46ec: $d3
    db $d3                                        ; $46ed: $d3
    db $d3                                        ; $46ee: $d3
    db $d3                                        ; $46ef: $d3
    db $d3                                        ; $46f0: $d3
    db $d3                                        ; $46f1: $d3
    ld e, $f5                                     ; $46f2: $1e $f5
    db $d3                                        ; $46f4: $d3
    ld l, h                                       ; $46f5: $6c
    ld b, h                                       ; $46f6: $44
    add d                                         ; $46f7: $82
    add d                                         ; $46f8: $82
    rlca                                          ; $46f9: $07
    ld bc, $0101                                  ; $46fa: $01 $01 $01
    ld bc, $0101                                  ; $46fd: $01 $01 $01
    ld bc, $0101                                  ; $4700: $01 $01 $01
    ld bc, $0101                                  ; $4703: $01 $01 $01
    ld bc, $1ed3                                  ; $4706: $01 $d3 $1e
    ld l, e                                       ; $4709: $6b
    ld b, h                                       ; $470a: $44
    ld l, h                                       ; $470b: $6c
    ld b, d                                       ; $470c: $42
    ld b, e                                       ; $470d: $43
    ld b, [hl]                                    ; $470e: $46
    ld l, e                                       ; $470f: $6b
    ld b, h                                       ; $4710: $44
    rra                                           ; $4711: $1f
    ld b, b                                       ; $4712: $40
    ld l, l                                       ; $4713: $6d
    ld e, $6d                                     ; $4714: $1e $6d
    ld e, $01                                     ; $4716: $1e $01
    ld bc, $0101                                  ; $4718: $01 $01 $01
    ld bc, $0101                                  ; $471b: $01 $01 $01
    ld bc, $0101                                  ; $471e: $01 $01 $01
    ld bc, $0101                                  ; $4721: $01 $01 $01
    ld bc, $0101                                  ; $4724: $01 $01 $01
    ld b, c                                       ; $4727: $41
    ld b, b                                       ; $4728: $40
    ld l, h                                       ; $4729: $6c
    ld a, [$1e6d]                                 ; $472a: $fa $6d $1e
    db $d3                                        ; $472d: $d3
    ld bc, $d36c                                  ; $472e: $01 $6c $d3
    ld hl, sp-$07                                 ; $4731: $f8 $f9
    push af                                       ; $4733: $f5
    db $d3                                        ; $4734: $d3
    ld [bc], a                                    ; $4735: $02
    ld a, [$0101]                                 ; $4736: $fa $01 $01
    ld bc, $0101                                  ; $4739: $01 $01 $01
    ld bc, $0101                                  ; $473c: $01 $01 $01
    ld bc, $0101                                  ; $473f: $01 $01 $01
    ld bc, $0101                                  ; $4742: $01 $01 $01
    ld bc, $5b01                                  ; $4745: $01 $01 $5b
    ld l, [hl]                                    ; $4748: $6e
    ld l, a                                       ; $4749: $6f
    ld e, [hl]                                    ; $474a: $5e
    ld e, a                                       ; $474b: $5f
    ld [hl], b                                    ; $474c: $70
    ld [hl], c                                    ; $474d: $71
    ld h, d                                       ; $474e: $62
    ld h, e                                       ; $474f: $63
    ld h, h                                       ; $4750: $64
    ld h, l                                       ; $4751: $65
    ld h, [hl]                                    ; $4752: $66
    ld h, a                                       ; $4753: $67
    ld [hl], l                                    ; $4754: $75
    halt                                          ; $4755: $76
    ld [hl], a                                    ; $4756: $77
    inc bc                                        ; $4757: $03
    inc bc                                        ; $4758: $03
    inc bc                                        ; $4759: $03
    inc bc                                        ; $475a: $03
    inc bc                                        ; $475b: $03
    inc bc                                        ; $475c: $03
    inc bc                                        ; $475d: $03
    inc bc                                        ; $475e: $03
    inc bc                                        ; $475f: $03
    inc bc                                        ; $4760: $03
    inc bc                                        ; $4761: $03
    inc bc                                        ; $4762: $03
    ld h, e                                       ; $4763: $63
    inc bc                                        ; $4764: $03
    inc bc                                        ; $4765: $03
    inc bc                                        ; $4766: $03
    db $d3                                        ; $4767: $d3
    ld e, $1f                                     ; $4768: $1e $1f
    ld b, b                                       ; $476a: $40
    db $d3                                        ; $476b: $d3
    db $fc                                        ; $476c: $fc
    db $d3                                        ; $476d: $d3
    db $d3                                        ; $476e: $d3
    ld sp, $3b32                                  ; $476f: $31 $32 $3b
    db $d3                                        ; $4772: $d3
    dec [hl]                                      ; $4773: $35
    ld [hl], $3c                                  ; $4774: $36 $3c
    dec a                                         ; $4776: $3d
    ld bc, $0101                                  ; $4777: $01 $01 $01
    ld bc, $0701                                  ; $477a: $01 $01 $07
    ld bc, $8201                                  ; $477d: $01 $01 $82
    add d                                         ; $4780: $82
    add d                                         ; $4781: $82
    ld bc, $8282                                  ; $4782: $01 $82 $82
    add d                                         ; $4785: $82
    add d                                         ; $4786: $82
    ld l, h                                       ; $4787: $6c
    ld b, l                                       ; $4788: $45
    db $d3                                        ; $4789: $d3
    db $fc                                        ; $478a: $fc
    db $d3                                        ; $478b: $d3
    db $d3                                        ; $478c: $d3
    db $fd                                        ; $478d: $fd
    cp $d3                                        ; $478e: $fe $d3
    db $d3                                        ; $4790: $d3
    rst $38                                       ; $4791: $ff
    nop                                           ; $4792: $00
    db $d3                                        ; $4793: $d3
    db $d3                                        ; $4794: $d3
    db $d3                                        ; $4795: $d3
    db $d3                                        ; $4796: $d3
    ld bc, $0101                                  ; $4797: $01 $01 $01
    rlca                                          ; $479a: $07
    ld bc, $0101                                  ; $479b: $01 $01 $01
    ld bc, $0101                                  ; $479e: $01 $01 $01
    ld bc, $0101                                  ; $47a1: $01 $01 $01
    ld bc, $0101                                  ; $47a4: $01 $01 $01
    db $d3                                        ; $47a7: $d3
    ld sp, hl                                     ; $47a8: $f9
    jr nz, jr_08a_47ac                            ; $47a9: $20 $01

    db $d3                                        ; $47ab: $d3

jr_08a_47ac:
    ld a, [$f90e]                                 ; $47ac: $fa $0e $f9
    inc b                                         ; $47af: $04
    inc bc                                        ; $47b0: $03
    inc c                                         ; $47b1: $0c
    ld a, [$21f8]                                 ; $47b2: $fa $f8 $21
    jr nz, @+$03                                  ; $47b5: $20 $01

    ld bc, $0101                                  ; $47b7: $01 $01 $01
    ld bc, $0101                                  ; $47ba: $01 $01 $01
    ld bc, $0101                                  ; $47bd: $01 $01 $01
    ld bc, $0101                                  ; $47c0: $01 $01 $01
    ld bc, $0101                                  ; $47c3: $01 $01 $01
    ld bc, $6e5b                                  ; $47c6: $01 $5b $6e
    ld l, a                                       ; $47c9: $6f
    ld l, d                                       ; $47ca: $6a
    ld e, a                                       ; $47cb: $5f
    ld [hl], b                                    ; $47cc: $70
    ld [hl], c                                    ; $47cd: $71
    ld a, b                                       ; $47ce: $78
    ld h, e                                       ; $47cf: $63
    ld h, h                                       ; $47d0: $64
    ld h, l                                       ; $47d1: $65
    ld a, c                                       ; $47d2: $79
    ld h, a                                       ; $47d3: $67
    ld a, d                                       ; $47d4: $7a
    ld a, e                                       ; $47d5: $7b
    ld l, d                                       ; $47d6: $6a
    inc bc                                        ; $47d7: $03
    inc bc                                        ; $47d8: $03
    inc bc                                        ; $47d9: $03
    ld b, e                                       ; $47da: $43
    inc bc                                        ; $47db: $03
    inc bc                                        ; $47dc: $03
    inc bc                                        ; $47dd: $03
    inc bc                                        ; $47de: $03
    inc bc                                        ; $47df: $03
    inc bc                                        ; $47e0: $03
    inc bc                                        ; $47e1: $03
    inc bc                                        ; $47e2: $03
    ld h, e                                       ; $47e3: $63
    inc bc                                        ; $47e4: $03
    inc bc                                        ; $47e5: $03
    inc bc                                        ; $47e6: $03
    ld l, [hl]                                    ; $47e7: $6e
    ld l, a                                       ; $47e8: $6f
    ld e, [hl]                                    ; $47e9: $5e
    ld h, a                                       ; $47ea: $67
    ld [hl], b                                    ; $47eb: $70
    ld [hl], c                                    ; $47ec: $71
    ld h, d                                       ; $47ed: $62
    ld a, h                                       ; $47ee: $7c
    ld h, h                                       ; $47ef: $64
    ld h, l                                       ; $47f0: $65
    ld h, [hl]                                    ; $47f1: $66
    ld a, l                                       ; $47f2: $7d
    ld [hl], l                                    ; $47f3: $75
    halt                                          ; $47f4: $76
    ld [hl], a                                    ; $47f5: $77
    ld a, [hl]                                    ; $47f6: $7e
    inc bc                                        ; $47f7: $03
    inc bc                                        ; $47f8: $03
    inc bc                                        ; $47f9: $03
    inc bc                                        ; $47fa: $03
    inc bc                                        ; $47fb: $03
    inc bc                                        ; $47fc: $03
    inc bc                                        ; $47fd: $03
    inc bc                                        ; $47fe: $03
    inc bc                                        ; $47ff: $03
    inc bc                                        ; $4800: $03
    inc bc                                        ; $4801: $03
    inc bc                                        ; $4802: $03
    inc bc                                        ; $4803: $03
    inc bc                                        ; $4804: $03
    inc bc                                        ; $4805: $03
    inc bc                                        ; $4806: $03
    db $db                                        ; $4807: $db
    rst $20                                       ; $4808: $e7
    add sp, -$17                                  ; $4809: $e8 $e9
    rst $18                                       ; $480b: $df
    db $eb                                        ; $480c: $eb
    db $ec                                        ; $480d: $ec
    db $ed                                        ; $480e: $ed
    db $d3                                        ; $480f: $d3
    db $d3                                        ; $4810: $d3
    db $f4                                        ; $4811: $f4
    rst $10                                       ; $4812: $d7
    db $d3                                        ; $4813: $d3
    db $d3                                        ; $4814: $d3
    db $d3                                        ; $4815: $d3
    db $db                                        ; $4816: $db
    add d                                         ; $4817: $82
    add d                                         ; $4818: $82
    add d                                         ; $4819: $82
    add d                                         ; $481a: $82
    add d                                         ; $481b: $82
    add d                                         ; $481c: $82
    add d                                         ; $481d: $82
    add d                                         ; $481e: $82
    ld bc, $0301                                  ; $481f: $01 $01 $03
    add d                                         ; $4822: $82
    ld bc, $0101                                  ; $4823: $01 $01 $01
    add d                                         ; $4826: $82
    ld [$dedd], a                                 ; $4827: $ea $dd $de
    db $d3                                        ; $482a: $d3
    xor $e1                                       ; $482b: $ee $e1
    ld [c], a                                     ; $482d: $e2
    db $d3                                        ; $482e: $d3
    db $e3                                        ; $482f: $e3
    db $e4                                        ; $4830: $e4
    push hl                                       ; $4831: $e5
    ldh a, [$e7]                                  ; $4832: $f0 $e7
    add sp, -$17                                  ; $4834: $e8 $e9
    pop af                                        ; $4836: $f1
    add d                                         ; $4837: $82
    add d                                         ; $4838: $82
    add d                                         ; $4839: $82
    ld bc, $8282                                  ; $483a: $01 $82 $82
    add d                                         ; $483d: $82
    ld bc, $8282                                  ; $483e: $01 $82 $82
    add d                                         ; $4841: $82
    add d                                         ; $4842: $82
    add d                                         ; $4843: $82
    add d                                         ; $4844: $82
    add d                                         ; $4845: $82
    add d                                         ; $4846: $82
    db $d3                                        ; $4847: $d3
    call c, $dedd                                 ; $4848: $dc $dd $de
    call nc, $e1e0                                ; $484b: $d4 $e0 $e1
    ld [c], a                                     ; $484e: $e2
    rst $10                                       ; $484f: $d7
    db $e3                                        ; $4850: $e3
    db $e4                                        ; $4851: $e4
    push hl                                       ; $4852: $e5
    db $db                                        ; $4853: $db
    rst $20                                       ; $4854: $e7
    add sp, -$17                                  ; $4855: $e8 $e9
    ld bc, $8282                                  ; $4857: $01 $82 $82
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
    add d                                         ; $4865: $82
    add d                                         ; $4866: $82
    ld l, [hl]                                    ; $4867: $6e
    ld l, a                                       ; $4868: $6f
    ld e, [hl]                                    ; $4869: $5e
    ld h, a                                       ; $486a: $67
    ld [hl], b                                    ; $486b: $70
    ld a, d                                       ; $486c: $7a
    ld a, e                                       ; $486d: $7b
    ld a, h                                       ; $486e: $7c
    ld h, h                                       ; $486f: $64
    ld h, l                                       ; $4870: $65
    ld h, [hl]                                    ; $4871: $66
    ld a, l                                       ; $4872: $7d
    ld a, a                                       ; $4873: $7f
    add b                                         ; $4874: $80
    ld l, d                                       ; $4875: $6a
    ld a, [hl]                                    ; $4876: $7e
    inc bc                                        ; $4877: $03
    inc bc                                        ; $4878: $03
    inc bc                                        ; $4879: $03
    inc bc                                        ; $487a: $03
    inc bc                                        ; $487b: $03
    inc bc                                        ; $487c: $03
    inc bc                                        ; $487d: $03
    inc bc                                        ; $487e: $03
    inc bc                                        ; $487f: $03
    inc bc                                        ; $4880: $03
    inc bc                                        ; $4881: $03
    inc bc                                        ; $4882: $03
    inc bc                                        ; $4883: $03
    dec bc                                        ; $4884: $0b
    inc bc                                        ; $4885: $03
    inc bc                                        ; $4886: $03
    db $d3                                        ; $4887: $d3
    db $d3                                        ; $4888: $d3
    db $d3                                        ; $4889: $d3
    rst $18                                       ; $488a: $df
    db $d3                                        ; $488b: $d3
    db $d3                                        ; $488c: $d3
    push af                                       ; $488d: $f5
    db $d3                                        ; $488e: $d3
    db $d3                                        ; $488f: $d3
    db $d3                                        ; $4890: $d3
    db $fc                                        ; $4891: $fc
    db $d3                                        ; $4892: $d3
    db $fd                                        ; $4893: $fd
    cp $d3                                        ; $4894: $fe $d3
    db $d3                                        ; $4896: $d3
    ld bc, $0101                                  ; $4897: $01 $01 $01
    add d                                         ; $489a: $82
    ld bc, $0101                                  ; $489b: $01 $01 $01
    ld bc, $0101                                  ; $489e: $01 $01 $01
    rlca                                          ; $48a1: $07
    ld bc, $0101                                  ; $48a2: $01 $01 $01
    ld bc, $eb01                                  ; $48a5: $01 $01 $eb
    db $ec                                        ; $48a8: $ec
    ld a, [c]                                     ; $48a9: $f2
    di                                            ; $48aa: $f3
    db $d3                                        ; $48ab: $d3
    db $f4                                        ; $48ac: $f4
    db $d3                                        ; $48ad: $d3
    db $fd                                        ; $48ae: $fd
    db $d3                                        ; $48af: $d3
    db $d3                                        ; $48b0: $d3
    db $d3                                        ; $48b1: $d3
    rst $38                                       ; $48b2: $ff
    db $d3                                        ; $48b3: $d3
    db $d3                                        ; $48b4: $d3
    db $fc                                        ; $48b5: $fc
    db $d3                                        ; $48b6: $d3
    add d                                         ; $48b7: $82
    add d                                         ; $48b8: $82
    add d                                         ; $48b9: $82
    add d                                         ; $48ba: $82
    ld bc, $0103                                  ; $48bb: $01 $03 $01
    ld bc, $0101                                  ; $48be: $01 $01 $01
    ld bc, $0101                                  ; $48c1: $01 $01 $01
    ld bc, $0107                                  ; $48c4: $01 $07 $01
    rst $18                                       ; $48c7: $df
    db $eb                                        ; $48c8: $eb
    db $ec                                        ; $48c9: $ec
    db $ed                                        ; $48ca: $ed
    cp $d3                                        ; $48cb: $fe $d3
    db $f4                                        ; $48cd: $f4
    rst $10                                       ; $48ce: $d7
    nop                                           ; $48cf: $00
    db $d3                                        ; $48d0: $d3
    db $d3                                        ; $48d1: $d3
    db $db                                        ; $48d2: $db
    db $d3                                        ; $48d3: $d3
    db $d3                                        ; $48d4: $d3
    db $d3                                        ; $48d5: $d3
    rst $18                                       ; $48d6: $df
    add d                                         ; $48d7: $82
    add d                                         ; $48d8: $82
    add d                                         ; $48d9: $82
    add d                                         ; $48da: $82
    ld bc, $0301                                  ; $48db: $01 $01 $03
    add d                                         ; $48de: $82
    ld bc, $0101                                  ; $48df: $01 $01 $01
    add d                                         ; $48e2: $82
    ld bc, $0101                                  ; $48e3: $01 $01 $01
    add d                                         ; $48e6: $82
    ld l, [hl]                                    ; $48e7: $6e
    ld l, a                                       ; $48e8: $6f
    ld e, [hl]                                    ; $48e9: $5e
    ld h, a                                       ; $48ea: $67
    ld [hl], b                                    ; $48eb: $70
    ld [hl], c                                    ; $48ec: $71
    ld h, d                                       ; $48ed: $62
    ld a, h                                       ; $48ee: $7c
    ld h, h                                       ; $48ef: $64
    ld h, l                                       ; $48f0: $65
    ld h, [hl]                                    ; $48f1: $66
    ld a, l                                       ; $48f2: $7d
    ld l, b                                       ; $48f3: $68
    ld l, c                                       ; $48f4: $69
    ld l, d                                       ; $48f5: $6a
    ld a, [hl]                                    ; $48f6: $7e
    inc bc                                        ; $48f7: $03
    inc bc                                        ; $48f8: $03
    inc bc                                        ; $48f9: $03
    inc bc                                        ; $48fa: $03
    inc bc                                        ; $48fb: $03
    inc bc                                        ; $48fc: $03
    inc bc                                        ; $48fd: $03
    inc bc                                        ; $48fe: $03
    inc bc                                        ; $48ff: $03
    inc bc                                        ; $4900: $03
    inc bc                                        ; $4901: $03
    inc bc                                        ; $4902: $03
    inc bc                                        ; $4903: $03
    inc bc                                        ; $4904: $03
    inc bc                                        ; $4905: $03
    inc bc                                        ; $4906: $03
    rst $38                                       ; $4907: $ff
    nop                                           ; $4908: $00
    db $d3                                        ; $4909: $d3
    db $d3                                        ; $490a: $d3
    db $d3                                        ; $490b: $d3
    db $d3                                        ; $490c: $d3
    db $fc                                        ; $490d: $fc
    db $d3                                        ; $490e: $d3
    inc b                                         ; $490f: $04
    dec c                                         ; $4910: $0d
    ld c, $03                                     ; $4911: $0e $03
    db $d3                                        ; $4913: $d3
    ld sp, hl                                     ; $4914: $f9
    inc c                                         ; $4915: $0c
    ld hl, $0101                                  ; $4916: $21 $01 $01
    ld bc, $0101                                  ; $4919: $01 $01 $01
    ld bc, $0107                                  ; $491c: $01 $07 $01
    ld bc, $0101                                  ; $491f: $01 $01 $01
    ld bc, $0101                                  ; $4922: $01 $01 $01
    ld bc, $f501                                  ; $4925: $01 $01 $f5
    db $d3                                        ; $4928: $d3
    db $d3                                        ; $4929: $d3
    db $d3                                        ; $492a: $d3
    db $d3                                        ; $492b: $d3
    db $d3                                        ; $492c: $d3
    db $d3                                        ; $492d: $d3
    rra                                           ; $492e: $1f
    ld [bc], a                                    ; $492f: $02
    db $d3                                        ; $4930: $d3
    ei                                            ; $4931: $fb
    pop de                                        ; $4932: $d1
    jr nz, jr_08a_4936                            ; $4933: $20 $01

    ld [bc], a                                    ; $4935: $02

jr_08a_4936:
    ei                                            ; $4936: $fb
    ld bc, $0101                                  ; $4937: $01 $01 $01
    ld bc, $0101                                  ; $493a: $01 $01 $01
    ld bc, $0101                                  ; $493d: $01 $01 $01
    ld bc, $0101                                  ; $4940: $01 $01 $01
    ld bc, $0101                                  ; $4943: $01 $01 $01
    ld bc, $d3d3                                  ; $4946: $01 $d3 $d3
    push af                                       ; $4949: $f5
    db $d3                                        ; $494a: $d3
    ld b, b                                       ; $494b: $40
    ld b, d                                       ; $494c: $42
    ld b, l                                       ; $494d: $45
    db $d3                                        ; $494e: $d3
    db $d3                                        ; $494f: $d3
    rra                                           ; $4950: $1f
    ld b, c                                       ; $4951: $41
    ld b, d                                       ; $4952: $42
    pop de                                        ; $4953: $d1
    db $d3                                        ; $4954: $d3
    ld e, $44                                     ; $4955: $1e $44
    ld bc, $0101                                  ; $4957: $01 $01 $01
    ld bc, $0101                                  ; $495a: $01 $01 $01
    ld bc, $0101                                  ; $495d: $01 $01 $01
    ld bc, $0101                                  ; $4960: $01 $01 $01
    ld bc, $0101                                  ; $4963: $01 $01 $01
    ld bc, $8281                                  ; $4966: $01 $81 $82
    add e                                         ; $4969: $83
    ld h, a                                       ; $496a: $67
    add h                                         ; $496b: $84
    add l                                         ; $496c: $85
    add [hl]                                      ; $496d: $86
    ld a, h                                       ; $496e: $7c
    add a                                         ; $496f: $87
    adc b                                         ; $4970: $88
    adc c                                         ; $4971: $89
    ld a, l                                       ; $4972: $7d
    ld l, b                                       ; $4973: $68
    ld l, c                                       ; $4974: $69
    ld l, d                                       ; $4975: $6a
    ld a, [hl]                                    ; $4976: $7e
    dec bc                                        ; $4977: $0b
    dec bc                                        ; $4978: $0b
    dec bc                                        ; $4979: $0b
    inc bc                                        ; $497a: $03
    dec bc                                        ; $497b: $0b
    dec bc                                        ; $497c: $0b
    dec bc                                        ; $497d: $0b
    inc bc                                        ; $497e: $03
    dec bc                                        ; $497f: $0b
    dec bc                                        ; $4980: $0b
    dec bc                                        ; $4981: $0b
    inc bc                                        ; $4982: $03
    inc bc                                        ; $4983: $03
    inc bc                                        ; $4984: $03
    inc bc                                        ; $4985: $03
    inc bc                                        ; $4986: $03
    push af                                       ; $4987: $f5
    db $d3                                        ; $4988: $d3
    ld hl, sp+$0d                                 ; $4989: $f8 $0d
    db $d3                                        ; $498b: $d3
    db $d3                                        ; $498c: $d3
    db $d3                                        ; $498d: $d3
    ld a, [$d3d3]                                 ; $498e: $fa $d3 $d3
    db $d3                                        ; $4991: $d3
    ld bc, $fdd3                                  ; $4992: $01 $d3 $fd
    cp $d3                                        ; $4995: $fe $d3
    ld bc, $0101                                  ; $4997: $01 $01 $01
    ld bc, $0101                                  ; $499a: $01 $01 $01
    ld bc, $0101                                  ; $499d: $01 $01 $01
    ld bc, $0101                                  ; $49a0: $01 $01 $01
    ld bc, $0101                                  ; $49a3: $01 $01 $01
    ld bc, $030e                                  ; $49a6: $01 $0e $03
    inc b                                         ; $49a9: $04
    ld bc, $210c                                  ; $49aa: $01 $0c $21
    jr nz, @-$05                                  ; $49ad: $20 $f9

    inc b                                         ; $49af: $04
    dec c                                         ; $49b0: $0d
    ld c, $03                                     ; $49b1: $0e $03
    ld hl, sp+$03                                 ; $49b3: $f8 $03
    inc c                                         ; $49b5: $0c
    ld hl, $0101                                  ; $49b6: $21 $01 $01
    ld bc, $0101                                  ; $49b9: $01 $01 $01
    ld bc, $0101                                  ; $49bc: $01 $01 $01
    ld bc, $0101                                  ; $49bf: $01 $01 $01
    ld bc, $0101                                  ; $49c2: $01 $01 $01
    ld bc, $d301                                  ; $49c5: $01 $01 $d3
    db $d3                                        ; $49c8: $d3
    db $d3                                        ; $49c9: $d3
    ld l, l                                       ; $49ca: $6d
    inc b                                         ; $49cb: $04
    db $d3                                        ; $49cc: $d3
    db $d3                                        ; $49cd: $d3
    db $d3                                        ; $49ce: $d3
    ld hl, sp-$07                                 ; $49cf: $f8 $f9
    db $d3                                        ; $49d1: $d3
    push af                                       ; $49d2: $f5
    jr nz, @+$0f                                  ; $49d3: $20 $0d

    ld hl, sp-$07                                 ; $49d5: $f8 $f9
    ld bc, $0101                                  ; $49d7: $01 $01 $01
    ld bc, $0101                                  ; $49da: $01 $01 $01
    ld bc, $0101                                  ; $49dd: $01 $01 $01
    ld bc, $0101                                  ; $49e0: $01 $01 $01
    ld bc, $0101                                  ; $49e3: $01 $01 $01
    ld bc, $d2d3                                  ; $49e6: $01 $d3 $d2
    db $d3                                        ; $49e9: $d3
    db $d3                                        ; $49ea: $d3
    push de                                       ; $49eb: $d5
    sub $d5                                       ; $49ec: $d6 $d5
    call nc, $d9e6                                ; $49ee: $d4 $e6 $d9
    jp c, $ead7                                   ; $49f1: $da $d7 $ea

    db $dd                                        ; $49f4: $dd
    sbc $db                                       ; $49f5: $de $db
    ld bc, $0182                                  ; $49f7: $01 $82 $01
    ld bc, $8282                                  ; $49fa: $01 $82 $82
    and d                                         ; $49fd: $a2
    add d                                         ; $49fe: $82
    add d                                         ; $49ff: $82
    add d                                         ; $4a00: $82
    add d                                         ; $4a01: $82
    add d                                         ; $4a02: $82
    add d                                         ; $4a03: $82
    add d                                         ; $4a04: $82
    add d                                         ; $4a05: $82
    add d                                         ; $4a06: $82
    call c, $dedd                                 ; $4a07: $dc $dd $de
    db $db                                        ; $4a0a: $db
    ldh [$e1], a                                  ; $4a0b: $e0 $e1
    ld [c], a                                     ; $4a0d: $e2
    rst $18                                       ; $4a0e: $df
    db $e3                                        ; $4a0f: $e3
    db $e4                                        ; $4a10: $e4
    push hl                                       ; $4a11: $e5
    ldh a, [$e7]                                  ; $4a12: $f0 $e7
    add sp, -$17                                  ; $4a14: $e8 $e9
    pop af                                        ; $4a16: $f1
    add d                                         ; $4a17: $82
    add d                                         ; $4a18: $82
    add d                                         ; $4a19: $82
    add d                                         ; $4a1a: $82
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
    add d                                         ; $4a25: $82
    add d                                         ; $4a26: $82
    rst $20                                       ; $4a27: $e7
    add sp, -$17                                  ; $4a28: $e8 $e9
    pop af                                        ; $4a2a: $f1
    db $eb                                        ; $4a2b: $eb
    db $ec                                        ; $4a2c: $ec
    ld a, [c]                                     ; $4a2d: $f2
    di                                            ; $4a2e: $f3
    db $d3                                        ; $4a2f: $d3
    db $f4                                        ; $4a30: $f4
    adc d                                         ; $4a31: $8a
    ret c                                         ; $4a32: $d8

    db $fc                                        ; $4a33: $fc
    db $d3                                        ; $4a34: $d3
    adc d                                         ; $4a35: $8a
    call c, $8282                                 ; $4a36: $dc $82 $82
    add d                                         ; $4a39: $82
    add d                                         ; $4a3a: $82
    add d                                         ; $4a3b: $82
    add d                                         ; $4a3c: $82
    add d                                         ; $4a3d: $82
    add d                                         ; $4a3e: $82
    ld bc, $0a03                                  ; $4a3f: $01 $03 $0a
    add d                                         ; $4a42: $82
    rlca                                          ; $4a43: $07
    ld bc, $820a                                  ; $4a44: $01 $0a $82
    adc e                                         ; $4a47: $8b
    db $e3                                        ; $4a48: $e3
    db $e4                                        ; $4a49: $e4
    push hl                                       ; $4a4a: $e5
    adc h                                         ; $4a4b: $8c
    adc l                                         ; $4a4c: $8d
    add sp, -$17                                  ; $4a4d: $e8 $e9
    reti                                          ; $4a4f: $d9


    adc [hl]                                      ; $4a50: $8e
    db $ec                                        ; $4a51: $ec
    ld a, [c]                                     ; $4a52: $f2
    db $dd                                        ; $4a53: $dd
    sbc $f4                                       ; $4a54: $de $f4
    db $d3                                        ; $4a56: $d3
    adc d                                         ; $4a57: $8a
    add d                                         ; $4a58: $82
    add d                                         ; $4a59: $82
    add d                                         ; $4a5a: $82
    adc d                                         ; $4a5b: $8a
    adc d                                         ; $4a5c: $8a
    add d                                         ; $4a5d: $82
    add d                                         ; $4a5e: $82
    add d                                         ; $4a5f: $82
    adc d                                         ; $4a60: $8a
    add d                                         ; $4a61: $82
    add d                                         ; $4a62: $82
    add d                                         ; $4a63: $82
    add d                                         ; $4a64: $82
    inc bc                                        ; $4a65: $03
    ld bc, $e1ee                                  ; $4a66: $01 $ee $e1
    ld [c], a                                     ; $4a69: $e2
    rst $18                                       ; $4a6a: $df
    db $e3                                        ; $4a6b: $e3
    db $e4                                        ; $4a6c: $e4
    push hl                                       ; $4a6d: $e5
    ldh a, [$e7]                                  ; $4a6e: $f0 $e7
    add sp, -$17                                  ; $4a70: $e8 $e9
    pop af                                        ; $4a72: $f1
    db $eb                                        ; $4a73: $eb
    db $ec                                        ; $4a74: $ec
    ld a, [c]                                     ; $4a75: $f2
    di                                            ; $4a76: $f3
    add d                                         ; $4a77: $82
    add d                                         ; $4a78: $82
    add d                                         ; $4a79: $82
    add d                                         ; $4a7a: $82
    add d                                         ; $4a7b: $82
    add d                                         ; $4a7c: $82
    add d                                         ; $4a7d: $82
    add d                                         ; $4a7e: $82
    add d                                         ; $4a7f: $82
    add d                                         ; $4a80: $82
    add d                                         ; $4a81: $82
    add d                                         ; $4a82: $82
    add d                                         ; $4a83: $82
    add d                                         ; $4a84: $82
    add d                                         ; $4a85: $82
    add d                                         ; $4a86: $82
    db $eb                                        ; $4a87: $eb
    db $ec                                        ; $4a88: $ec
    ld a, [c]                                     ; $4a89: $f2
    di                                            ; $4a8a: $f3
    db $d3                                        ; $4a8b: $d3
    db $f4                                        ; $4a8c: $f4
    db $d3                                        ; $4a8d: $d3
    db $d3                                        ; $4a8e: $d3
    db $d3                                        ; $4a8f: $d3
    db $d3                                        ; $4a90: $d3
    db $d3                                        ; $4a91: $d3
    db $d3                                        ; $4a92: $d3
    db $d3                                        ; $4a93: $d3
    db $d3                                        ; $4a94: $d3
    db $d3                                        ; $4a95: $d3
    db $d3                                        ; $4a96: $d3
    add d                                         ; $4a97: $82
    add d                                         ; $4a98: $82
    add d                                         ; $4a99: $82
    add d                                         ; $4a9a: $82
    ld bc, $0103                                  ; $4a9b: $01 $03 $01
    ld bc, $0101                                  ; $4a9e: $01 $01 $01
    ld bc, $0101                                  ; $4aa1: $01 $01 $01
    ld bc, $0101                                  ; $4aa4: $01 $01 $01
    ei                                            ; $4aa7: $fb
    pop de                                        ; $4aa8: $d1
    call nc, $d3e0                                ; $4aa9: $d4 $e0 $d3
    db $d3                                        ; $4aac: $d3
    rst $10                                       ; $4aad: $d7
    db $e3                                        ; $4aae: $e3
    db $d3                                        ; $4aaf: $d3
    db $d3                                        ; $4ab0: $d3
    db $db                                        ; $4ab1: $db
    rst $20                                       ; $4ab2: $e7
    push af                                       ; $4ab3: $f5
    db $d3                                        ; $4ab4: $d3
    rst $18                                       ; $4ab5: $df
    db $eb                                        ; $4ab6: $eb
    ld bc, $8201                                  ; $4ab7: $01 $01 $82
    add d                                         ; $4aba: $82
    ld bc, $8201                                  ; $4abb: $01 $01 $82
    add d                                         ; $4abe: $82
    ld bc, $8201                                  ; $4abf: $01 $01 $82
    add d                                         ; $4ac2: $82
    ld bc, $8201                                  ; $4ac3: $01 $01 $82
    add d                                         ; $4ac6: $82
    pop hl                                        ; $4ac7: $e1
    ld [c], a                                     ; $4ac8: $e2
    adc d                                         ; $4ac9: $8a
    db $fc                                        ; $4aca: $fc
    db $e4                                        ; $4acb: $e4
    push hl                                       ; $4acc: $e5
    ldh a, [$d3]                                  ; $4acd: $f0 $d3
    add sp, -$17                                  ; $4acf: $e8 $e9
    pop af                                        ; $4ad1: $f1
    call nc, $f2ec                                ; $4ad2: $d4 $ec $f2
    di                                            ; $4ad5: $f3
    rst $10                                       ; $4ad6: $d7
    add d                                         ; $4ad7: $82
    add d                                         ; $4ad8: $82
    adc d                                         ; $4ad9: $8a
    rlca                                          ; $4ada: $07
    add d                                         ; $4adb: $82
    add d                                         ; $4adc: $82
    add d                                         ; $4add: $82
    ld bc, $8282                                  ; $4ade: $01 $82 $82
    add d                                         ; $4ae1: $82
    add d                                         ; $4ae2: $82
    add d                                         ; $4ae3: $82
    add d                                         ; $4ae4: $82
    add d                                         ; $4ae5: $82
    add d                                         ; $4ae6: $82
    db $d3                                        ; $4ae7: $d3
    db $f4                                        ; $4ae8: $f4
    db $d3                                        ; $4ae9: $d3
    db $d3                                        ; $4aea: $d3
    db $d3                                        ; $4aeb: $d3
    db $d3                                        ; $4aec: $d3
    ei                                            ; $4aed: $fb
    pop de                                        ; $4aee: $d1
    ld b, l                                       ; $4aef: $45
    rra                                           ; $4af0: $1f
    db $d3                                        ; $4af1: $d3
    db $d3                                        ; $4af2: $d3
    ld b, c                                       ; $4af3: $41
    ld l, l                                       ; $4af4: $6d
    ld l, e                                       ; $4af5: $6b
    rra                                           ; $4af6: $1f
    ld bc, $0103                                  ; $4af7: $01 $03 $01
    ld bc, $0101                                  ; $4afa: $01 $01 $01
    ld bc, $0101                                  ; $4afd: $01 $01 $01
    ld bc, $0101                                  ; $4b00: $01 $01 $01
    ld bc, $0101                                  ; $4b03: $01 $01 $01
    ld bc, $f5d3                                  ; $4b06: $01 $d3 $f5
    db $d3                                        ; $4b09: $d3
    db $d3                                        ; $4b0a: $d3
    db $d3                                        ; $4b0b: $d3
    db $d3                                        ; $4b0c: $d3
    db $fc                                        ; $4b0d: $fc
    db $d3                                        ; $4b0e: $d3
    db $d3                                        ; $4b0f: $d3
    db $d3                                        ; $4b10: $d3
    db $d3                                        ; $4b11: $d3
    db $fd                                        ; $4b12: $fd
    ld b, b                                       ; $4b13: $40
    db $d3                                        ; $4b14: $d3
    db $d3                                        ; $4b15: $d3
    rst $38                                       ; $4b16: $ff
    ld bc, $0101                                  ; $4b17: $01 $01 $01
    ld bc, $0101                                  ; $4b1a: $01 $01 $01
    rlca                                          ; $4b1d: $07
    ld bc, $0101                                  ; $4b1e: $01 $01 $01
    ld bc, $0101                                  ; $4b21: $01 $01 $01
    ld bc, $0101                                  ; $4b24: $01 $01 $01
    db $d3                                        ; $4b27: $d3
    db $d3                                        ; $4b28: $d3
    db $fc                                        ; $4b29: $fc
    db $d3                                        ; $4b2a: $d3
    db $d3                                        ; $4b2b: $d3
    db $d3                                        ; $4b2c: $d3
    db $d3                                        ; $4b2d: $d3
    db $d3                                        ; $4b2e: $d3
    cp $d3                                        ; $4b2f: $fe $d3
    db $d3                                        ; $4b31: $d3
    db $d3                                        ; $4b32: $d3
    nop                                           ; $4b33: $00
    rra                                           ; $4b34: $1f
    ld b, b                                       ; $4b35: $40
    ld b, d                                       ; $4b36: $42
    ld bc, $0701                                  ; $4b37: $01 $01 $07
    ld bc, $0101                                  ; $4b3a: $01 $01 $01
    ld bc, $0101                                  ; $4b3d: $01 $01 $01
    ld bc, $0101                                  ; $4b40: $01 $01 $01
    ld bc, $0101                                  ; $4b43: $01 $01 $01
    ld bc, $d3f4                                  ; $4b46: $01 $f4 $d3
    push af                                       ; $4b49: $f5
    db $db                                        ; $4b4a: $db
    db $d3                                        ; $4b4b: $d3
    db $d3                                        ; $4b4c: $d3
    db $d3                                        ; $4b4d: $d3
    rst $18                                       ; $4b4e: $df
    push af                                       ; $4b4f: $f5
    db $d3                                        ; $4b50: $d3
    db $d3                                        ; $4b51: $d3
    adc d                                         ; $4b52: $8a
    ld b, e                                       ; $4b53: $43
    ld b, [hl]                                    ; $4b54: $46
    rra                                           ; $4b55: $1f
    ld b, b                                       ; $4b56: $40
    inc bc                                        ; $4b57: $03
    ld bc, $8201                                  ; $4b58: $01 $01 $82
    ld bc, $0101                                  ; $4b5b: $01 $01 $01
    add d                                         ; $4b5e: $82
    ld bc, $0101                                  ; $4b5f: $01 $01 $01
    ld a, [bc]                                    ; $4b62: $0a
    ld bc, $0101                                  ; $4b63: $01 $01 $01
    ld bc, $446b                                  ; $4b66: $01 $6b $44
    ld b, l                                       ; $4b69: $45
    ld b, [hl]                                    ; $4b6a: $46
    ld b, l                                       ; $4b6b: $45
    ld b, [hl]                                    ; $4b6c: $46
    ld b, c                                       ; $4b6d: $41
    ld l, h                                       ; $4b6e: $6c
    db $d3                                        ; $4b6f: $d3
    ld l, l                                       ; $4b70: $6d
    ld e, $44                                     ; $4b71: $1e $44
    db $d3                                        ; $4b73: $d3
    db $d3                                        ; $4b74: $d3
    db $d3                                        ; $4b75: $d3
    ld l, l                                       ; $4b76: $6d
    ld bc, $0101                                  ; $4b77: $01 $01 $01
    ld bc, $0101                                  ; $4b7a: $01 $01 $01
    ld bc, $0101                                  ; $4b7d: $01 $01 $01
    ld bc, $0101                                  ; $4b80: $01 $01 $01
    ld bc, $0101                                  ; $4b83: $01 $01 $01
    ld bc, $446b                                  ; $4b86: $01 $6b $44
    ld b, b                                       ; $4b89: $40
    ld l, h                                       ; $4b8a: $6c
    ld b, e                                       ; $4b8b: $43
    ld b, [hl]                                    ; $4b8c: $46
    ld l, e                                       ; $4b8d: $6b
    ld b, h                                       ; $4b8e: $44
    ld b, b                                       ; $4b8f: $40
    ld b, d                                       ; $4b90: $42
    ld b, l                                       ; $4b91: $45
    ld b, [hl]                                    ; $4b92: $46
    ld e, $1f                                     ; $4b93: $1e $1f
    ld b, b                                       ; $4b95: $40
    ld l, h                                       ; $4b96: $6c
    ld bc, $0101                                  ; $4b97: $01 $01 $01
    ld bc, $0101                                  ; $4b9a: $01 $01 $01
    ld bc, $0101                                  ; $4b9d: $01 $01 $01
    ld bc, $0101                                  ; $4ba0: $01 $01 $01
    ld bc, $0101                                  ; $4ba3: $01 $01 $01
    ld bc, $4643                                  ; $4ba6: $01 $43 $46
    ld l, e                                       ; $4ba9: $6b
    ld b, h                                       ; $4baa: $44
    ld b, c                                       ; $4bab: $41
    ld b, d                                       ; $4bac: $42
    ld b, l                                       ; $4bad: $45
    ld l, l                                       ; $4bae: $6d
    ld e, $1f                                     ; $4baf: $1e $1f
    ld b, b                                       ; $4bb1: $40
    db $d3                                        ; $4bb2: $d3
    db $d3                                        ; $4bb3: $d3
    push af                                       ; $4bb4: $f5
    db $d3                                        ; $4bb5: $d3
    db $d3                                        ; $4bb6: $d3
    ld bc, $0101                                  ; $4bb7: $01 $01 $01
    ld bc, $0101                                  ; $4bba: $01 $01 $01
    ld bc, $0101                                  ; $4bbd: $01 $01 $01
    ld bc, $0101                                  ; $4bc0: $01 $01 $01
    ld bc, $0101                                  ; $4bc3: $01 $01 $01
    ld bc, $4541                                  ; $4bc6: $01 $41 $45
    db $d3                                        ; $4bc9: $d3
    adc d                                         ; $4bca: $8a
    ld e, $d3                                     ; $4bcb: $1e $d3
    db $d3                                        ; $4bcd: $d3
    adc d                                         ; $4bce: $8a
    db $d3                                        ; $4bcf: $d3
    push af                                       ; $4bd0: $f5
    db $d3                                        ; $4bd1: $d3
    adc d                                         ; $4bd2: $8a
    db $d3                                        ; $4bd3: $d3
    db $d3                                        ; $4bd4: $d3
    db $d3                                        ; $4bd5: $d3
    call nc, $0101                                ; $4bd6: $d4 $01 $01
    ld bc, $010a                                  ; $4bd9: $01 $0a $01
    ld bc, $0a01                                  ; $4bdc: $01 $01 $0a
    ld bc, $0101                                  ; $4bdf: $01 $01 $01
    ld a, [bc]                                    ; $4be2: $0a
    ld bc, $0101                                  ; $4be3: $01 $01 $01
    add d                                         ; $4be6: $82
    ldh a, [$d3]                                  ; $4be7: $f0 $d3
    db $fc                                        ; $4be9: $fc
    db $d3                                        ; $4bea: $d3
    pop af                                        ; $4beb: $f1
    db $d3                                        ; $4bec: $d3
    db $d3                                        ; $4bed: $d3
    ei                                            ; $4bee: $fb
    di                                            ; $4bef: $f3
    jp nc, $d3d3                                  ; $4bf0: $d2 $d3 $d3

    push de                                       ; $4bf3: $d5
    sub $d5                                       ; $4bf4: $d6 $d5
    adc d                                         ; $4bf6: $8a
    add d                                         ; $4bf7: $82
    ld bc, $0107                                  ; $4bf8: $01 $07 $01
    add d                                         ; $4bfb: $82
    ld bc, $0101                                  ; $4bfc: $01 $01 $01
    add d                                         ; $4bff: $82
    add d                                         ; $4c00: $82
    ld bc, $8201                                  ; $4c01: $01 $01 $82
    add d                                         ; $4c04: $82
    and d                                         ; $4c05: $a2
    ld a, [bc]                                    ; $4c06: $0a
    ret c                                         ; $4c07: $d8

    reti                                          ; $4c08: $d9


    jp c, $dc8a                                   ; $4c09: $da $8a $dc

    db $dd                                        ; $4c0c: $dd
    sbc $8a                                       ; $4c0d: $de $8a
    ldh [$e1], a                                  ; $4c0f: $e0 $e1
    ld [c], a                                     ; $4c11: $e2
    jp nc, $e4e3                                  ; $4c12: $d2 $e3 $e4

    adc a                                         ; $4c15: $8f
    sub b                                         ; $4c16: $90
    add d                                         ; $4c17: $82
    add d                                         ; $4c18: $82
    add d                                         ; $4c19: $82
    ld a, [bc]                                    ; $4c1a: $0a
    add d                                         ; $4c1b: $82
    add d                                         ; $4c1c: $82
    add d                                         ; $4c1d: $82
    ld a, [bc]                                    ; $4c1e: $0a
    add d                                         ; $4c1f: $82
    add d                                         ; $4c20: $82
    add d                                         ; $4c21: $82
    add d                                         ; $4c22: $82
    add d                                         ; $4c23: $82
    add d                                         ; $4c24: $82
    adc d                                         ; $4c25: $8a
    adc d                                         ; $4c26: $8a
    rst $20                                       ; $4c27: $e7
    add sp, -$6f                                  ; $4c28: $e8 $91
    reti                                          ; $4c2a: $d9


    db $eb                                        ; $4c2b: $eb
    db $ec                                        ; $4c2c: $ec
    sub d                                         ; $4c2d: $92
    db $dd                                        ; $4c2e: $dd
    adc d                                         ; $4c2f: $8a
    sub e                                         ; $4c30: $93
    ldh [$e1], a                                  ; $4c31: $e0 $e1
    adc d                                         ; $4c33: $8a
    adc e                                         ; $4c34: $8b
    db $e3                                        ; $4c35: $e3
    db $e4                                        ; $4c36: $e4
    add d                                         ; $4c37: $82
    add d                                         ; $4c38: $82
    adc d                                         ; $4c39: $8a
    add d                                         ; $4c3a: $82
    add d                                         ; $4c3b: $82
    add d                                         ; $4c3c: $82
    adc d                                         ; $4c3d: $8a
    add d                                         ; $4c3e: $82
    ld a, [bc]                                    ; $4c3f: $0a
    dec bc                                        ; $4c40: $0b
    add d                                         ; $4c41: $82
    add d                                         ; $4c42: $82
    ld a, [bc]                                    ; $4c43: $0a
    adc d                                         ; $4c44: $8a
    add d                                         ; $4c45: $82
    add d                                         ; $4c46: $82
    push de                                       ; $4c47: $d5
    adc h                                         ; $4c48: $8c
    adc l                                         ; $4c49: $8d
    add sp, -$28                                  ; $4c4a: $e8 $d8
    reti                                          ; $4c4c: $d9


    adc [hl]                                      ; $4c4d: $8e
    db $ec                                        ; $4c4e: $ec
    call c, $dedd                                 ; $4c4f: $dc $dd $de
    db $f4                                        ; $4c52: $f4
    ldh [$e1], a                                  ; $4c53: $e0 $e1
    ld [c], a                                     ; $4c55: $e2
    adc d                                         ; $4c56: $8a
    add d                                         ; $4c57: $82
    adc d                                         ; $4c58: $8a
    adc d                                         ; $4c59: $8a
    add d                                         ; $4c5a: $82
    add d                                         ; $4c5b: $82
    add d                                         ; $4c5c: $82
    adc d                                         ; $4c5d: $8a
    add d                                         ; $4c5e: $82
    add d                                         ; $4c5f: $82
    add d                                         ; $4c60: $82
    add d                                         ; $4c61: $82
    inc bc                                        ; $4c62: $03
    add d                                         ; $4c63: $82
    add d                                         ; $4c64: $82
    add d                                         ; $4c65: $82
    adc d                                         ; $4c66: $8a
    db $f4                                        ; $4c67: $f4
    db $d3                                        ; $4c68: $d3
    push af                                       ; $4c69: $f5
    ret c                                         ; $4c6a: $d8

    jp nc, $d3d3                                  ; $4c6b: $d2 $d3 $d3

    call c, $d5d6                                 ; $4c6e: $dc $d6 $d5
    call nc, $d9e0                                ; $4c71: $d4 $e0 $d9
    jp c, $e3d7                                   ; $4c74: $da $d7 $e3

    inc bc                                        ; $4c77: $03
    ld bc, $8201                                  ; $4c78: $01 $01 $82
    add d                                         ; $4c7b: $82
    ld bc, $8201                                  ; $4c7c: $01 $01 $82
    add d                                         ; $4c7f: $82
    and d                                         ; $4c80: $a2
    add d                                         ; $4c81: $82
    add d                                         ; $4c82: $82
    add d                                         ; $4c83: $82
    add d                                         ; $4c84: $82
    add d                                         ; $4c85: $82
    add d                                         ; $4c86: $82
    reti                                          ; $4c87: $d9


    jp c, $ebdf                                   ; $4c88: $da $df $eb

    db $dd                                        ; $4c8b: $dd
    sbc $f5                                       ; $4c8c: $de $f5
    db $d3                                        ; $4c8e: $d3
    pop hl                                        ; $4c8f: $e1
    ld [c], a                                     ; $4c90: $e2
    db $d3                                        ; $4c91: $d3
    db $d3                                        ; $4c92: $d3
    db $e4                                        ; $4c93: $e4
    push hl                                       ; $4c94: $e5
    ldh a, [$d3]                                  ; $4c95: $f0 $d3
    add d                                         ; $4c97: $82
    add d                                         ; $4c98: $82
    add d                                         ; $4c99: $82
    add d                                         ; $4c9a: $82
    add d                                         ; $4c9b: $82
    add d                                         ; $4c9c: $82
    ld bc, $8201                                  ; $4c9d: $01 $01 $82
    add d                                         ; $4ca0: $82
    ld bc, $8201                                  ; $4ca1: $01 $01 $82
    add d                                         ; $4ca4: $82
    add d                                         ; $4ca5: $82
    ld bc, $f2ec                                  ; $4ca6: $01 $ec $f2
    di                                            ; $4ca9: $f3
    push af                                       ; $4caa: $f5
    db $f4                                        ; $4cab: $f4
    db $d3                                        ; $4cac: $d3
    db $d3                                        ; $4cad: $d3
    db $d3                                        ; $4cae: $d3
    db $d3                                        ; $4caf: $d3
    db $d3                                        ; $4cb0: $d3
    db $d3                                        ; $4cb1: $d3
    db $d3                                        ; $4cb2: $d3
    db $d3                                        ; $4cb3: $d3
    db $d3                                        ; $4cb4: $d3
    db $fc                                        ; $4cb5: $fc
    db $d3                                        ; $4cb6: $d3
    add d                                         ; $4cb7: $82
    add d                                         ; $4cb8: $82
    add d                                         ; $4cb9: $82
    ld bc, $0103                                  ; $4cba: $01 $03 $01
    ld bc, $0101                                  ; $4cbd: $01 $01 $01
    ld bc, $0101                                  ; $4cc0: $01 $01 $01
    ld bc, $0701                                  ; $4cc3: $01 $01 $07
    ld bc, $d3d3                                  ; $4cc6: $01 $d3 $d3
    inc b                                         ; $4cc9: $04
    db $d3                                        ; $4cca: $d3
    ei                                            ; $4ccb: $fb
    pop de                                        ; $4ccc: $d1
    db $d3                                        ; $4ccd: $d3
    dec d                                         ; $4cce: $15
    db $d3                                        ; $4ccf: $d3
    db $d3                                        ; $4cd0: $d3
    rlca                                          ; $4cd1: $07
    inc hl                                        ; $4cd2: $23
    db $d3                                        ; $4cd3: $d3
    dec d                                         ; $4cd4: $15
    dec h                                         ; $4cd5: $25
    ld h, $01                                     ; $4cd6: $26 $01
    ld bc, $0101                                  ; $4cd8: $01 $01 $01
    ld bc, $0101                                  ; $4cdb: $01 $01 $01
    inc bc                                        ; $4cde: $03
    ld bc, $6301                                  ; $4cdf: $01 $01 $63
    inc bc                                        ; $4ce2: $03
    ld bc, $0303                                  ; $4ce3: $01 $03 $03
    inc bc                                        ; $4ce6: $03
    db $dd                                        ; $4ce7: $dd
    sbc $db                                       ; $4ce8: $de $db
    rst $20                                       ; $4cea: $e7
    pop hl                                        ; $4ceb: $e1
    ld [c], a                                     ; $4cec: $e2
    rst $18                                       ; $4ced: $df
    db $eb                                        ; $4cee: $eb
    db $e4                                        ; $4cef: $e4
    push hl                                       ; $4cf0: $e5
    ldh a, [$d3]                                  ; $4cf1: $f0 $d3
    add sp, -$17                                  ; $4cf3: $e8 $e9
    pop af                                        ; $4cf5: $f1
    db $fd                                        ; $4cf6: $fd
    add d                                         ; $4cf7: $82
    add d                                         ; $4cf8: $82
    add d                                         ; $4cf9: $82
    add d                                         ; $4cfa: $82
    add d                                         ; $4cfb: $82
    add d                                         ; $4cfc: $82
    add d                                         ; $4cfd: $82
    add d                                         ; $4cfe: $82
    add d                                         ; $4cff: $82
    add d                                         ; $4d00: $82
    add d                                         ; $4d01: $82
    ld bc, $8282                                  ; $4d02: $01 $82 $82
    add d                                         ; $4d05: $82
    ld bc, $e9e8                                  ; $4d06: $01 $e8 $e9
    pop af                                        ; $4d09: $f1
    db $d3                                        ; $4d0a: $d3
    db $ec                                        ; $4d0b: $ec
    ld a, [c]                                     ; $4d0c: $f2
    di                                            ; $4d0d: $f3
    db $fc                                        ; $4d0e: $fc
    db $f4                                        ; $4d0f: $f4
    db $d3                                        ; $4d10: $d3
    db $d3                                        ; $4d11: $d3
    ld l, $fe                                     ; $4d12: $2e $fe
    db $d3                                        ; $4d14: $d3
    rlca                                          ; $4d15: $07
    inc l                                         ; $4d16: $2c
    add d                                         ; $4d17: $82
    add d                                         ; $4d18: $82
    add d                                         ; $4d19: $82
    ld bc, $8282                                  ; $4d1a: $01 $82 $82
    add d                                         ; $4d1d: $82
    rlca                                          ; $4d1e: $07
    inc bc                                        ; $4d1f: $03
    ld bc, $2301                                  ; $4d20: $01 $01 $23
    ld bc, $6301                                  ; $4d23: $01 $01 $63
    inc bc                                        ; $4d26: $03
    db $d3                                        ; $4d27: $d3
    db $d3                                        ; $4d28: $d3
    db $d3                                        ; $4d29: $d3
    ld l, $d3                                     ; $4d2a: $2e $d3
    ld l, $2f                                     ; $4d2c: $2e $2f
    inc l                                         ; $4d2e: $2c
    cpl                                           ; $4d2f: $2f
    daa                                           ; $4d30: $27
    jr jr_08a_4d4c                                ; $4d31: $18 $19

    ld [hl+], a                                   ; $4d33: $22
    ld a, [hl+]                                   ; $4d34: $2a
    ld b, $07                                     ; $4d35: $06 $07
    ld bc, $0101                                  ; $4d37: $01 $01 $01
    inc hl                                        ; $4d3a: $23
    ld bc, $2323                                  ; $4d3b: $01 $23 $23
    inc bc                                        ; $4d3e: $03
    inc hl                                        ; $4d3f: $23
    inc bc                                        ; $4d40: $03
    inc bc                                        ; $4d41: $03
    inc bc                                        ; $4d42: $03
    inc bc                                        ; $4d43: $03
    inc bc                                        ; $4d44: $03
    inc bc                                        ; $4d45: $03
    inc bc                                        ; $4d46: $03
    cpl                                           ; $4d47: $2f
    add hl, bc                                    ; $4d48: $09
    jr z, @+$17                                   ; $4d49: $28 $15

    ld [hl+], a                                   ; $4d4b: $22

jr_08a_4d4c:
    ld a, [hl+]                                   ; $4d4c: $2a
    dec d                                         ; $4d4d: $15
    db $d3                                        ; $4d4e: $d3
    cpl                                           ; $4d4f: $2f
    ld l, $d3                                     ; $4d50: $2e $d3
    db $d3                                        ; $4d52: $d3
    db $d3                                        ; $4d53: $d3
    db $d3                                        ; $4d54: $d3
    db $d3                                        ; $4d55: $d3
    ld b, l                                       ; $4d56: $45
    inc hl                                        ; $4d57: $23
    inc bc                                        ; $4d58: $03
    inc bc                                        ; $4d59: $03
    ld h, e                                       ; $4d5a: $63
    inc bc                                        ; $4d5b: $03
    inc bc                                        ; $4d5c: $03
    ld h, e                                       ; $4d5d: $63
    ld bc, $4343                                  ; $4d5e: $01 $43 $43
    ld bc, $0101                                  ; $4d61: $01 $01 $01
    ld bc, $0101                                  ; $4d64: $01 $01 $01
    db $ec                                        ; $4d67: $ec
    ld a, [c]                                     ; $4d68: $f2
    di                                            ; $4d69: $f3
    rst $38                                       ; $4d6a: $ff
    db $f4                                        ; $4d6b: $f4
    db $d3                                        ; $4d6c: $d3
    db $fc                                        ; $4d6d: $fc
    db $d3                                        ; $4d6e: $d3
    db $d3                                        ; $4d6f: $d3
    ld l, $2f                                     ; $4d70: $2e $2f
    jr z, jr_08a_4da3                             ; $4d72: $28 $2f

    add hl, de                                    ; $4d74: $19
    inc hl                                        ; $4d75: $23
    dec l                                         ; $4d76: $2d
    add d                                         ; $4d77: $82
    add d                                         ; $4d78: $82
    add d                                         ; $4d79: $82
    ld bc, $0103                                  ; $4d7a: $01 $03 $01
    rlca                                          ; $4d7d: $07
    ld bc, $2301                                  ; $4d7e: $01 $01 $23
    inc hl                                        ; $4d81: $23
    inc bc                                        ; $4d82: $03
    inc hl                                        ; $4d83: $23
    inc bc                                        ; $4d84: $03
    inc bc                                        ; $4d85: $03
    inc bc                                        ; $4d86: $03
    nop                                           ; $4d87: $00
    dec d                                         ; $4d88: $15
    jr jr_08a_4da4                                ; $4d89: $18 $19

    rlca                                          ; $4d8b: $07
    inc h                                         ; $4d8c: $24
    ld b, $25                                     ; $4d8d: $06 $25
    add hl, hl                                    ; $4d8f: $29
    daa                                           ; $4d90: $27
    cpl                                           ; $4d91: $2f
    ld l, $2f                                     ; $4d92: $2e $2f
    ld l, $d3                                     ; $4d94: $2e $d3
    db $d3                                        ; $4d96: $d3
    ld bc, $0303                                  ; $4d97: $01 $03 $03
    inc bc                                        ; $4d9a: $03
    ld h, e                                       ; $4d9b: $63
    inc bc                                        ; $4d9c: $03
    inc bc                                        ; $4d9d: $03
    inc bc                                        ; $4d9e: $03
    inc bc                                        ; $4d9f: $03
    inc bc                                        ; $4da0: $03
    ld b, e                                       ; $4da1: $43
    ld b, e                                       ; $4da2: $43

jr_08a_4da3:
    ld b, e                                       ; $4da3: $43

jr_08a_4da4:
    ld b, e                                       ; $4da4: $43
    ld bc, $2301                                  ; $4da5: $01 $01 $23
    dec l                                         ; $4da8: $2d
    dec d                                         ; $4da9: $15
    db $d3                                        ; $4daa: $d3
    cpl                                           ; $4dab: $2f
    ld l, $d3                                     ; $4dac: $2e $d3
    db $d3                                        ; $4dae: $d3
    db $fd                                        ; $4daf: $fd
    cp $d3                                        ; $4db0: $fe $d3
    db $d3                                        ; $4db2: $d3
    rst $38                                       ; $4db3: $ff
    nop                                           ; $4db4: $00
    db $d3                                        ; $4db5: $d3
    db $d3                                        ; $4db6: $d3
    inc bc                                        ; $4db7: $03
    inc bc                                        ; $4db8: $03
    ld h, e                                       ; $4db9: $63
    ld bc, $4343                                  ; $4dba: $01 $43 $43
    ld bc, $0101                                  ; $4dbd: $01 $01 $01
    ld bc, $0101                                  ; $4dc0: $01 $01 $01
    ld bc, $0101                                  ; $4dc3: $01 $01 $01
    ld bc, $d1fb                                  ; $4dc6: $01 $fb $d1
    ld b, b                                       ; $4dc9: $40
    ld b, c                                       ; $4dca: $41
    db $d3                                        ; $4dcb: $d3
    ld l, l                                       ; $4dcc: $6d
    ld e, $1f                                     ; $4dcd: $1e $1f
    db $fc                                        ; $4dcf: $fc
    db $d3                                        ; $4dd0: $d3
    ei                                            ; $4dd1: $fb
    pop de                                        ; $4dd2: $d1
    db $d3                                        ; $4dd3: $d3
    db $d3                                        ; $4dd4: $d3
    db $d3                                        ; $4dd5: $d3
    ld bc, $0101                                  ; $4dd6: $01 $01 $01
    ld bc, $0101                                  ; $4dd9: $01 $01 $01
    ld bc, $0101                                  ; $4ddc: $01 $01 $01
    rlca                                          ; $4ddf: $07
    ld bc, $0101                                  ; $4de0: $01 $01 $01
    ld bc, $0101                                  ; $4de3: $01 $01 $01
    ld bc, $2506                                  ; $4de6: $01 $06 $25
    rlca                                          ; $4de9: $07
    db $d3                                        ; $4dea: $d3
    cpl                                           ; $4deb: $2f
    ld l, $d3                                     ; $4dec: $2e $d3
    db $d3                                        ; $4dee: $d3
    db $d3                                        ; $4def: $d3
    db $fc                                        ; $4df0: $fc
    db $d3                                        ; $4df1: $d3
    push de                                       ; $4df2: $d5
    db $d3                                        ; $4df3: $d3
    db $d3                                        ; $4df4: $d3
    db $d3                                        ; $4df5: $d3
    ret c                                         ; $4df6: $d8

    inc bc                                        ; $4df7: $03
    inc bc                                        ; $4df8: $03
    inc bc                                        ; $4df9: $03
    ld bc, $4343                                  ; $4dfa: $01 $43 $43
    ld bc, $0101                                  ; $4dfd: $01 $01 $01
    rlca                                          ; $4e00: $07
    ld bc, $0182                                  ; $4e01: $01 $82 $01
    ld bc, $8201                                  ; $4e04: $01 $01 $82
    db $d3                                        ; $4e07: $d3
    db $d3                                        ; $4e08: $d3
    ld [bc], a                                    ; $4e09: $02
    db $d3                                        ; $4e0a: $d3
    jp nc, $04d3                                  ; $4e0b: $d2 $d3 $04

    ld bc, $d5d6                                  ; $4e0e: $01 $d6 $d5
    db $d3                                        ; $4e11: $d3
    ld sp, hl                                     ; $4e12: $f9
    reti                                          ; $4e13: $d9


    jp c, $d3fc                                   ; $4e14: $da $fc $d3

    ld bc, $0101                                  ; $4e17: $01 $01 $01
    ld bc, $0182                                  ; $4e1a: $01 $82 $01
    ld bc, $8201                                  ; $4e1d: $01 $01 $82
    and d                                         ; $4e20: $a2
    ld bc, $8201                                  ; $4e21: $01 $01 $82
    add d                                         ; $4e24: $82
    rlca                                          ; $4e25: $07
    ld bc, $d3d3                                  ; $4e26: $01 $d3 $d3
    db $d3                                        ; $4e29: $d3
    ld bc, $fa02                                  ; $4e2a: $01 $02 $fa
    sub h                                         ; $4e2d: $94
    sub l                                         ; $4e2e: $95
    inc c                                         ; $4e2f: $0c
    ld hl, $9796                                  ; $4e30: $21 $96 $97
    ld hl, sp+$0d                                 ; $4e33: $f8 $0d
    sbc b                                         ; $4e35: $98
    sbc c                                         ; $4e36: $99
    ld bc, $0101                                  ; $4e37: $01 $01 $01
    ld bc, $0101                                  ; $4e3a: $01 $01 $01
    add hl, bc                                    ; $4e3d: $09
    add hl, bc                                    ; $4e3e: $09
    ld bc, $0901                                  ; $4e3f: $01 $01 $09
    add hl, bc                                    ; $4e42: $09
    ld bc, $0901                                  ; $4e43: $01 $01 $09
    add hl, bc                                    ; $4e46: $09
    ld [bc], a                                    ; $4e47: $02
    ld hl, $0d20                                  ; $4e48: $21 $20 $0d
    jr nz, jr_08a_4e5a                            ; $4e4b: $20 $0d

    ld c, $fa                                     ; $4e4d: $0e $fa
    ld c, $f9                                     ; $4e4f: $0e $f9
    db $d3                                        ; $4e51: $d3
    sbc d                                         ; $4e52: $9a
    ld [bc], a                                    ; $4e53: $02
    db $d3                                        ; $4e54: $d3
    db $d3                                        ; $4e55: $d3
    db $d3                                        ; $4e56: $d3
    ld bc, $0101                                  ; $4e57: $01 $01 $01

jr_08a_4e5a:
    ld bc, $0101                                  ; $4e5a: $01 $01 $01
    ld bc, $0101                                  ; $4e5d: $01 $01 $01
    ld bc, $0d01                                  ; $4e60: $01 $01 $0d
    ld bc, $0101                                  ; $4e63: $01 $01 $01
    ld bc, $0607                                  ; $4e66: $01 $07 $06
    dec h                                         ; $4e69: $25
    ld h, $2a                                     ; $4e6a: $26 $2a
    add hl, bc                                    ; $4e6c: $09
    jr z, @+$17                                   ; $4e6d: $28 $15

    dec l                                         ; $4e6f: $2d
    cpl                                           ; $4e70: $2f
    ld l, $fd                                     ; $4e71: $2e $fd
    rlca                                          ; $4e73: $07
    db $d3                                        ; $4e74: $d3
    db $d3                                        ; $4e75: $d3
    rst $38                                       ; $4e76: $ff
    ld h, e                                       ; $4e77: $63
    inc bc                                        ; $4e78: $03
    inc bc                                        ; $4e79: $03
    inc bc                                        ; $4e7a: $03
    inc bc                                        ; $4e7b: $03
    inc bc                                        ; $4e7c: $03
    inc bc                                        ; $4e7d: $03
    ld h, e                                       ; $4e7e: $63
    inc bc                                        ; $4e7f: $03
    ld b, e                                       ; $4e80: $43
    ld b, e                                       ; $4e81: $43
    ld bc, $0103                                  ; $4e82: $01 $03 $01
    ld bc, $1501                                  ; $4e85: $01 $01 $15
    db $d3                                        ; $4e88: $d3
    db $d3                                        ; $4e89: $d3
    db $d3                                        ; $4e8a: $d3
    db $d3                                        ; $4e8b: $d3
    db $d3                                        ; $4e8c: $d3
    push af                                       ; $4e8d: $f5
    db $d3                                        ; $4e8e: $d3
    cp $d3                                        ; $4e8f: $fe $d3
    db $d3                                        ; $4e91: $d3
    db $d3                                        ; $4e92: $d3
    nop                                           ; $4e93: $00
    db $d3                                        ; $4e94: $d3
    db $d3                                        ; $4e95: $d3
    db $fc                                        ; $4e96: $fc
    ld h, e                                       ; $4e97: $63
    ld bc, $0101                                  ; $4e98: $01 $01 $01
    ld bc, $0101                                  ; $4e9b: $01 $01 $01
    ld bc, $0101                                  ; $4e9e: $01 $01 $01
    ld bc, $0101                                  ; $4ea1: $01 $01 $01
    ld bc, $0701                                  ; $4ea4: $01 $01 $07
    ld b, a                                       ; $4ea7: $47
    ld c, b                                       ; $4ea8: $48
    ld c, e                                       ; $4ea9: $4b
    ld c, h                                       ; $4eaa: $4c
    ld c, c                                       ; $4eab: $49
    ld c, d                                       ; $4eac: $4a
    ld c, a                                       ; $4ead: $4f
    ld d, b                                       ; $4eae: $50
    db $d3                                        ; $4eaf: $d3
    db $d3                                        ; $4eb0: $d3
    ld d, e                                       ; $4eb1: $53
    ld d, h                                       ; $4eb2: $54
    db $d3                                        ; $4eb3: $d3
    db $d3                                        ; $4eb4: $d3
    ld d, l                                       ; $4eb5: $55
    ld d, [hl]                                    ; $4eb6: $56
    add d                                         ; $4eb7: $82
    add d                                         ; $4eb8: $82
    add d                                         ; $4eb9: $82
    add d                                         ; $4eba: $82
    add d                                         ; $4ebb: $82
    add d                                         ; $4ebc: $82
    add d                                         ; $4ebd: $82
    add d                                         ; $4ebe: $82
    ld bc, $0301                                  ; $4ebf: $01 $01 $03
    inc bc                                        ; $4ec2: $03
    ld bc, $0301                                  ; $4ec3: $01 $01 $03
    inc bc                                        ; $4ec6: $03
    ld c, l                                       ; $4ec7: $4d
    ld c, [hl]                                    ; $4ec8: $4e
    db $d3                                        ; $4ec9: $d3
    db $d3                                        ; $4eca: $d3
    ld d, c                                       ; $4ecb: $51
    ld d, d                                       ; $4ecc: $52
    db $d3                                        ; $4ecd: $d3
    db $d3                                        ; $4ece: $d3
    db $fd                                        ; $4ecf: $fd
    cp $f5                                        ; $4ed0: $fe $f5
    db $d3                                        ; $4ed2: $d3
    rst $38                                       ; $4ed3: $ff
    nop                                           ; $4ed4: $00
    db $d3                                        ; $4ed5: $d3
    inc sp                                        ; $4ed6: $33
    add d                                         ; $4ed7: $82
    add d                                         ; $4ed8: $82
    ld bc, $8201                                  ; $4ed9: $01 $01 $82
    add d                                         ; $4edc: $82
    ld bc, $0101                                  ; $4edd: $01 $01 $01
    ld bc, $0101                                  ; $4ee0: $01 $01 $01
    ld bc, $0101                                  ; $4ee3: $01 $01 $01
    add d                                         ; $4ee6: $82
    db $d3                                        ; $4ee7: $d3
    db $d3                                        ; $4ee8: $d3
    db $d3                                        ; $4ee9: $d3
    ld b, b                                       ; $4eea: $40
    db $d3                                        ; $4eeb: $d3
    ld b, l                                       ; $4eec: $45
    ld l, l                                       ; $4eed: $6d
    ld l, e                                       ; $4eee: $6b
    rra                                           ; $4eef: $1f
    ld b, c                                       ; $4ef0: $41
    ld b, d                                       ; $4ef1: $42
    ld b, e                                       ; $4ef2: $43
    ld b, [hl]                                    ; $4ef3: $46
    ld l, e                                       ; $4ef4: $6b
    rra                                           ; $4ef5: $1f
    ld b, b                                       ; $4ef6: $40
    ld bc, $0101                                  ; $4ef7: $01 $01 $01
    ld bc, $0101                                  ; $4efa: $01 $01 $01
    ld bc, $0101                                  ; $4efd: $01 $01 $01
    ld bc, $0101                                  ; $4f00: $01 $01 $01
    ld bc, $0101                                  ; $4f03: $01 $01 $01
    ld bc, $456c                                  ; $4f06: $01 $6c $45
    ld b, [hl]                                    ; $4f09: $46
    ld l, e                                       ; $4f0a: $6b
    ld b, h                                       ; $4f0b: $44
    ld b, c                                       ; $4f0c: $41
    ld b, d                                       ; $4f0d: $42
    ld b, e                                       ; $4f0e: $43
    ld b, [hl]                                    ; $4f0f: $46
    ld l, e                                       ; $4f10: $6b
    ld b, h                                       ; $4f11: $44
    ld b, c                                       ; $4f12: $41
    ld l, h                                       ; $4f13: $6c
    ld b, l                                       ; $4f14: $45
    ld l, l                                       ; $4f15: $6d
    ld e, $01                                     ; $4f16: $1e $01
    ld bc, $0101                                  ; $4f18: $01 $01 $01
    ld bc, $0101                                  ; $4f1b: $01 $01 $01
    ld bc, $0101                                  ; $4f1e: $01 $01 $01
    ld bc, $0101                                  ; $4f21: $01 $01 $01
    ld bc, $0101                                  ; $4f24: $01 $01 $01
    rra                                           ; $4f27: $1f
    db $d3                                        ; $4f28: $d3
    db $d3                                        ; $4f29: $d3
    db $d3                                        ; $4f2a: $d3
    ld b, [hl]                                    ; $4f2b: $46
    ld l, e                                       ; $4f2c: $6b
    rra                                           ; $4f2d: $1f
    ld b, b                                       ; $4f2e: $40
    ld b, d                                       ; $4f2f: $42
    ld b, e                                       ; $4f30: $43
    ld b, [hl]                                    ; $4f31: $46
    ld e, $1f                                     ; $4f32: $1e $1f
    ld b, b                                       ; $4f34: $40
    ld l, h                                       ; $4f35: $6c
    ld b, l                                       ; $4f36: $45
    ld bc, $0101                                  ; $4f37: $01 $01 $01
    ld bc, $0101                                  ; $4f3a: $01 $01 $01
    ld bc, $0101                                  ; $4f3d: $01 $01 $01
    ld bc, $0101                                  ; $4f40: $01 $01 $01
    ld bc, $0101                                  ; $4f43: $01 $01 $01
    ld bc, $fdd3                                  ; $4f46: $01 $d3 $fd
    cp $37                                        ; $4f49: $fe $37
    ld l, h                                       ; $4f4b: $6c
    rst $38                                       ; $4f4c: $ff
    nop                                           ; $4f4d: $00
    ld b, a                                       ; $4f4e: $47
    rra                                           ; $4f4f: $1f
    ld b, b                                       ; $4f50: $40
    db $d3                                        ; $4f51: $d3
    ld c, c                                       ; $4f52: $49
    db $d3                                        ; $4f53: $d3
    db $d3                                        ; $4f54: $d3
    db $d3                                        ; $4f55: $d3
    db $fd                                        ; $4f56: $fd
    ld bc, $0101                                  ; $4f57: $01 $01 $01
    add d                                         ; $4f5a: $82
    ld bc, $0101                                  ; $4f5b: $01 $01 $01
    add d                                         ; $4f5e: $82
    ld bc, $0101                                  ; $4f5f: $01 $01 $01
    add d                                         ; $4f62: $82
    ld bc, $0101                                  ; $4f63: $01 $01 $01
    ld bc, $6d45                                  ; $4f66: $01 $45 $6d
    ld e, $d3                                     ; $4f69: $1e $d3
    db $d3                                        ; $4f6b: $d3
    db $d3                                        ; $4f6c: $d3
    db $d3                                        ; $4f6d: $d3
    db $d3                                        ; $4f6e: $d3
    db $d3                                        ; $4f6f: $d3
    ld hl, sp-$07                                 ; $4f70: $f8 $f9
    inc b                                         ; $4f72: $04
    ld [bc], a                                    ; $4f73: $02
    dec c                                         ; $4f74: $0d
    ld c, $f8                                     ; $4f75: $0e $f8
    ld bc, $0101                                  ; $4f77: $01 $01 $01
    ld bc, $0101                                  ; $4f7a: $01 $01 $01
    ld bc, $0101                                  ; $4f7d: $01 $01 $01
    ld bc, $0101                                  ; $4f80: $01 $01 $01
    ld bc, $0101                                  ; $4f83: $01 $01 $01
    ld bc, $d1fb                                  ; $4f86: $01 $fb $d1
    db $d3                                        ; $4f89: $d3
    db $d3                                        ; $4f8a: $d3
    db $d3                                        ; $4f8b: $d3
    db $d3                                        ; $4f8c: $d3
    db $d3                                        ; $4f8d: $d3
    db $d3                                        ; $4f8e: $d3
    ld bc, $d3d3                                  ; $4f8f: $01 $d3 $d3
    db $d3                                        ; $4f92: $d3
    db $d3                                        ; $4f93: $d3
    db $d3                                        ; $4f94: $d3
    push af                                       ; $4f95: $f5
    db $d3                                        ; $4f96: $d3
    ld bc, $0101                                  ; $4f97: $01 $01 $01
    ld bc, $0101                                  ; $4f9a: $01 $01 $01
    ld bc, $0101                                  ; $4f9d: $01 $01 $01
    ld bc, $0101                                  ; $4fa0: $01 $01 $01
    ld bc, $0101                                  ; $4fa3: $01 $01 $01
    ld bc, $f8d3                                  ; $4fa6: $01 $d3 $f8
    ld sp, hl                                     ; $4fa9: $f9
    ld hl, sp+$04                                 ; $4faa: $f8 $04
    ld bc, $fa21                                  ; $4fac: $01 $21 $fa
    db $d3                                        ; $4faf: $d3
    ld sp, hl                                     ; $4fb0: $f9
    inc b                                         ; $4fb1: $04
    ld bc, $d3d3                                  ; $4fb2: $01 $d3 $d3
    db $d3                                        ; $4fb5: $d3
    ld sp, hl                                     ; $4fb6: $f9
    ld bc, $0101                                  ; $4fb7: $01 $01 $01
    ld bc, $0101                                  ; $4fba: $01 $01 $01
    ld bc, $0101                                  ; $4fbd: $01 $01 $01
    ld bc, $0101                                  ; $4fc0: $01 $01 $01
    ld bc, $0101                                  ; $4fc3: $01 $01 $01
    ld bc, $d3f9                                  ; $4fc6: $01 $f9 $d3
    db $fc                                        ; $4fc9: $fc
    rst $38                                       ; $4fca: $ff
    dec c                                         ; $4fcb: $0d
    ld sp, hl                                     ; $4fcc: $f9
    inc bc                                        ; $4fcd: $03
    ld sp, hl                                     ; $4fce: $f9
    inc bc                                        ; $4fcf: $03
    inc c                                         ; $4fd0: $0c
    ld hl, $040c                                  ; $4fd1: $21 $0c $04
    ld bc, $200d                                  ; $4fd4: $01 $0d $20
    ld bc, $0701                                  ; $4fd7: $01 $01 $07
    ld bc, $0101                                  ; $4fda: $01 $01 $01
    ld bc, $0101                                  ; $4fdd: $01 $01 $01
    ld bc, $0101                                  ; $4fe0: $01 $01 $01
    ld bc, $0101                                  ; $4fe3: $01 $01 $01
    ld bc, $0404                                  ; $4fe6: $01 $04 $04
    db $d3                                        ; $4fe9: $d3
    db $d3                                        ; $4fea: $d3
    db $d3                                        ; $4feb: $d3
    db $d3                                        ; $4fec: $d3
    db $d3                                        ; $4fed: $d3
    db $d3                                        ; $4fee: $d3
    db $fc                                        ; $4fef: $fc
    db $d3                                        ; $4ff0: $d3
    ld b, b                                       ; $4ff1: $40
    ld l, h                                       ; $4ff2: $6c
    db $d3                                        ; $4ff3: $d3
    ld l, l                                       ; $4ff4: $6d
    ld e, $44                                     ; $4ff5: $1e $44
    ld bc, $0101                                  ; $4ff7: $01 $01 $01
    ld bc, $0101                                  ; $4ffa: $01 $01 $01
    ld bc, $0701                                  ; $4ffd: $01 $01 $07
    ld bc, $0101                                  ; $5000: $01 $01 $01
    ld bc, $0101                                  ; $5003: $01 $01 $01
    ld bc, $d3fc                                  ; $5006: $01 $fc $d3
    db $d3                                        ; $5009: $d3
    db $d3                                        ; $500a: $d3
    ld l, h                                       ; $500b: $6c
    ld b, l                                       ; $500c: $45
    ld l, l                                       ; $500d: $6d
    ld e, $45                                     ; $500e: $1e $45
    ld l, l                                       ; $5010: $6d
    ld l, e                                       ; $5011: $6b
    ld b, h                                       ; $5012: $44
    ld b, b                                       ; $5013: $40
    ld b, d                                       ; $5014: $42
    ld b, e                                       ; $5015: $43
    ld b, [hl]                                    ; $5016: $46
    rlca                                          ; $5017: $07
    ld bc, $0101                                  ; $5018: $01 $01 $01
    ld bc, $0101                                  ; $501b: $01 $01 $01
    ld bc, $0101                                  ; $501e: $01 $01 $01
    ld bc, $0101                                  ; $5021: $01 $01 $01
    ld bc, $0101                                  ; $5024: $01 $01 $01
    db $d3                                        ; $5027: $d3
    db $d3                                        ; $5028: $d3
    db $d3                                        ; $5029: $d3
    db $fd                                        ; $502a: $fd
    rra                                           ; $502b: $1f
    ld b, b                                       ; $502c: $40
    db $d3                                        ; $502d: $d3
    rst $38                                       ; $502e: $ff
    ld b, b                                       ; $502f: $40
    ld l, h                                       ; $5030: $6c
    ld b, l                                       ; $5031: $45
    ld l, l                                       ; $5032: $6d
    ld l, e                                       ; $5033: $6b
    ld b, h                                       ; $5034: $44
    ld b, b                                       ; $5035: $40
    ld l, h                                       ; $5036: $6c
    ld bc, $0101                                  ; $5037: $01 $01 $01
    ld bc, $0101                                  ; $503a: $01 $01 $01
    ld bc, $0101                                  ; $503d: $01 $01 $01
    ld bc, $0101                                  ; $5040: $01 $01 $01
    ld bc, $0101                                  ; $5043: $01 $01 $01
    ld bc, $f9fe                                  ; $5046: $01 $fe $f9
    ld hl, sp-$07                                 ; $5049: $f8 $f9
    nop                                           ; $504b: $00
    db $d3                                        ; $504c: $d3
    db $d3                                        ; $504d: $d3
    ld a, [$d3d3]                                 ; $504e: $fa $d3 $d3
    db $d3                                        ; $5051: $d3
    db $d3                                        ; $5052: $d3
    ld b, l                                       ; $5053: $45
    ld l, l                                       ; $5054: $6d
    ld e, $1f                                     ; $5055: $1e $1f
    ld bc, $0101                                  ; $5057: $01 $01 $01
    ld bc, $0101                                  ; $505a: $01 $01 $01
    ld bc, $0101                                  ; $505d: $01 $01 $01
    ld bc, $0101                                  ; $5060: $01 $01 $01
    ld bc, $0101                                  ; $5063: $01 $01 $01
    ld bc, $d3d3                                  ; $5066: $01 $d3 $d3
    push af                                       ; $5069: $f5
    db $d3                                        ; $506a: $d3
    db $d3                                        ; $506b: $d3
    db $d3                                        ; $506c: $d3
    db $d3                                        ; $506d: $d3
    db $d3                                        ; $506e: $d3
    jr nc, jr_08a_50a2                            ; $506f: $30 $31

    ld [hl-], a                                   ; $5071: $32
    dec sp                                        ; $5072: $3b
    inc [hl]                                      ; $5073: $34
    dec [hl]                                      ; $5074: $35
    ld [hl], $3c                                  ; $5075: $36 $3c
    ld bc, $0101                                  ; $5077: $01 $01 $01
    ld bc, $0101                                  ; $507a: $01 $01 $01
    ld bc, $8201                                  ; $507d: $01 $01 $82
    add d                                         ; $5080: $82
    add d                                         ; $5081: $82
    add d                                         ; $5082: $82
    add d                                         ; $5083: $82
    add d                                         ; $5084: $82
    add d                                         ; $5085: $82
    add d                                         ; $5086: $82
    rlca                                          ; $5087: $07
    add hl, de                                    ; $5088: $19
    inc hl                                        ; $5089: $23
    dec l                                         ; $508a: $2d
    db $d3                                        ; $508b: $d3
    dec d                                         ; $508c: $15
    ld h, $24                                     ; $508d: $26 $24
    db $d3                                        ; $508f: $d3
    db $d3                                        ; $5090: $d3
    rlca                                          ; $5091: $07
    daa                                           ; $5092: $27
    dec a                                         ; $5093: $3d
    db $d3                                        ; $5094: $d3
    db $d3                                        ; $5095: $d3
    dec d                                         ; $5096: $15
    inc hl                                        ; $5097: $23
    inc bc                                        ; $5098: $03
    inc bc                                        ; $5099: $03
    inc bc                                        ; $509a: $03
    ld bc, $0343                                  ; $509b: $01 $43 $03
    inc bc                                        ; $509e: $03
    ld bc, $2301                                  ; $509f: $01 $01 $23

jr_08a_50a2:
    inc bc                                        ; $50a2: $03
    add d                                         ; $50a3: $82
    ld bc, $4301                                  ; $50a4: $01 $01 $43
    dec hl                                        ; $50a7: $2b
    rlca                                          ; $50a8: $07
    db $d3                                        ; $50a9: $d3
    db $d3                                        ; $50aa: $d3
    jr jr_08a_50c6                                ; $50ab: $18 $19

    dec d                                         ; $50ad: $15
    db $d3                                        ; $50ae: $d3
    ld b, $25                                     ; $50af: $06 $25
    ld h, $07                                     ; $50b1: $26 $07
    add hl, bc                                    ; $50b3: $09
    jr z, jr_08a_50df                             ; $50b4: $28 $29

    daa                                           ; $50b6: $27
    inc bc                                        ; $50b7: $03
    ld b, e                                       ; $50b8: $43
    ld bc, $0301                                  ; $50b9: $01 $01 $03
    inc bc                                        ; $50bc: $03
    inc hl                                        ; $50bd: $23
    ld bc, $0303                                  ; $50be: $01 $03 $03
    inc bc                                        ; $50c1: $03
    ld b, e                                       ; $50c2: $43
    inc bc                                        ; $50c3: $03
    inc bc                                        ; $50c4: $03
    inc bc                                        ; $50c5: $03

jr_08a_50c6:
    inc bc                                        ; $50c6: $03
    db $fd                                        ; $50c7: $fd
    cp $37                                        ; $50c8: $fe $37
    jr c, @+$01                                   ; $50ca: $38 $ff

    nop                                           ; $50cc: $00
    ld b, a                                       ; $50cd: $47
    ld c, b                                       ; $50ce: $48
    db $d3                                        ; $50cf: $d3
    db $d3                                        ; $50d0: $d3
    ld c, c                                       ; $50d1: $49
    ld c, d                                       ; $50d2: $4a
    dec d                                         ; $50d3: $15
    db $d3                                        ; $50d4: $d3
    db $fc                                        ; $50d5: $fc
    db $d3                                        ; $50d6: $d3
    ld bc, $8201                                  ; $50d7: $01 $01 $82
    add d                                         ; $50da: $82
    ld bc, $8201                                  ; $50db: $01 $01 $82
    add d                                         ; $50de: $82

jr_08a_50df:
    ld bc, $8201                                  ; $50df: $01 $01 $82
    add d                                         ; $50e2: $82
    inc hl                                        ; $50e3: $23
    ld bc, $0107                                  ; $50e4: $01 $07 $01
    jr c, @+$3b                                   ; $50e7: $38 $39

    ld a, [hl-]                                   ; $50e9: $3a
    ld a, $48                                     ; $50ea: $3e $48
    ld c, e                                       ; $50ec: $4b
    ld c, h                                       ; $50ed: $4c
    ld c, l                                       ; $50ee: $4d
    ld c, d                                       ; $50ef: $4a
    ld c, a                                       ; $50f0: $4f
    ld d, b                                       ; $50f1: $50
    ld d, c                                       ; $50f2: $51
    cp $53                                        ; $50f3: $fe $53
    ld d, h                                       ; $50f5: $54
    db $d3                                        ; $50f6: $d3
    add d                                         ; $50f7: $82
    add d                                         ; $50f8: $82
    add d                                         ; $50f9: $82
    add d                                         ; $50fa: $82
    add d                                         ; $50fb: $82
    add d                                         ; $50fc: $82
    add d                                         ; $50fd: $82
    add d                                         ; $50fe: $82
    add d                                         ; $50ff: $82
    add d                                         ; $5100: $82
    add d                                         ; $5101: $82
    add d                                         ; $5102: $82
    ld bc, $0303                                  ; $5103: $01 $03 $03
    ld bc, $fb3f                                  ; $5106: $01 $3f $fb
    pop de                                        ; $5109: $d1
    db $d3                                        ; $510a: $d3
    ld c, [hl]                                    ; $510b: $4e
    db $d3                                        ; $510c: $d3
    db $d3                                        ; $510d: $d3
    db $fc                                        ; $510e: $fc
    ld d, d                                       ; $510f: $52
    db $d3                                        ; $5110: $d3
    ld sp, hl                                     ; $5111: $f9
    inc b                                         ; $5112: $04
    jp nc, $fa02                                  ; $5113: $d2 $02 $fa

    inc c                                         ; $5116: $0c
    add d                                         ; $5117: $82
    ld bc, $0101                                  ; $5118: $01 $01 $01
    add d                                         ; $511b: $82
    ld bc, $0701                                  ; $511c: $01 $01 $07
    add d                                         ; $511f: $82
    ld bc, $0101                                  ; $5120: $01 $01 $01
    add d                                         ; $5123: $82
    ld bc, $0101                                  ; $5124: $01 $01 $01
    rlca                                          ; $5127: $07
    inc l                                         ; $5128: $2c
    ld [hl+], a                                   ; $5129: $22
    ld a, [hl+]                                   ; $512a: $2a
    db $d3                                        ; $512b: $d3
    dec d                                         ; $512c: $15
    inc hl                                        ; $512d: $23
    dec l                                         ; $512e: $2d
    db $d3                                        ; $512f: $d3
    db $d3                                        ; $5130: $d3
    rlca                                          ; $5131: $07
    inc h                                         ; $5132: $24
    ld sp, hl                                     ; $5133: $f9
    db $d3                                        ; $5134: $d3
    db $d3                                        ; $5135: $d3
    dec d                                         ; $5136: $15
    inc hl                                        ; $5137: $23
    inc bc                                        ; $5138: $03
    inc bc                                        ; $5139: $03
    inc bc                                        ; $513a: $03
    ld bc, $0343                                  ; $513b: $01 $43 $03
    inc bc                                        ; $513e: $03
    ld bc, $2301                                  ; $513f: $01 $01 $23
    inc bc                                        ; $5142: $03
    ld bc, $0101                                  ; $5143: $01 $01 $01
    ld b, e                                       ; $5146: $43
    dec hl                                        ; $5147: $2b
    rlca                                          ; $5148: $07
    db $d3                                        ; $5149: $d3
    push af                                       ; $514a: $f5
    jr jr_08a_5166                                ; $514b: $18 $19

    dec d                                         ; $514d: $15
    db $d3                                        ; $514e: $d3
    ld b, $25                                     ; $514f: $06 $25
    ld h, $05                                     ; $5151: $26 $05
    add hl, bc                                    ; $5153: $09
    jr z, @+$2b                                   ; $5154: $28 $29

    ld [$4303], sp                                ; $5156: $08 $03 $43
    ld bc, $0301                                  ; $5159: $01 $01 $03
    inc bc                                        ; $515c: $03
    inc hl                                        ; $515d: $23
    ld bc, $0303                                  ; $515e: $01 $03 $03
    inc bc                                        ; $5161: $03
    inc hl                                        ; $5162: $23
    inc bc                                        ; $5163: $03
    inc bc                                        ; $5164: $03
    inc bc                                        ; $5165: $03

jr_08a_5166:
    inc hl                                        ; $5166: $23
    nop                                           ; $5167: $00
    ld d, l                                       ; $5168: $55
    ld d, [hl]                                    ; $5169: $56
    ld hl, sp+$04                                 ; $516a: $f8 $04
    db $fd                                        ; $516c: $fd
    cp $02                                        ; $516d: $fe $02
    ld hl, $00ff                                  ; $516f: $21 $ff $00
    call c, Call_000_020d                         ; $5172: $dc $0d $02
    call nc, Call_000_01e0                        ; $5175: $d4 $e0 $01
    inc bc                                        ; $5178: $03
    inc bc                                        ; $5179: $03
    ld bc, $0101                                  ; $517a: $01 $01 $01
    ld bc, $0101                                  ; $517d: $01 $01 $01
    ld bc, $8201                                  ; $5180: $01 $01 $82
    ld bc, $8201                                  ; $5183: $01 $01 $82
    add d                                         ; $5186: $82
    sub $04                                       ; $5187: $d6 $04
    ld hl, $d902                                  ; $5189: $21 $02 $d9
    jp c, $d3f9                                   ; $518c: $da $f9 $d3

    db $dd                                        ; $518f: $dd
    sbc $fd                                       ; $5190: $de $fd
    cp $e1                                        ; $5192: $fe $e1
    ld [c], a                                     ; $5194: $e2
    rst $38                                       ; $5195: $ff
    nop                                           ; $5196: $00
    add d                                         ; $5197: $82
    ld bc, $0101                                  ; $5198: $01 $01 $01
    add d                                         ; $519b: $82
    add d                                         ; $519c: $82
    ld bc, $8201                                  ; $519d: $01 $01 $82
    add d                                         ; $51a0: $82
    ld bc, $8201                                  ; $51a1: $01 $01 $82
    add d                                         ; $51a4: $82
    ld bc, $d301                                  ; $51a5: $01 $01 $d3
    db $d3                                        ; $51a8: $d3
    db $d3                                        ; $51a9: $d3
    db $d3                                        ; $51aa: $d3
    push af                                       ; $51ab: $f5
    db $d3                                        ; $51ac: $d3
    ei                                            ; $51ad: $fb
    pop de                                        ; $51ae: $d1
    db $d3                                        ; $51af: $d3
    db $d3                                        ; $51b0: $d3
    db $d3                                        ; $51b1: $d3
    db $d3                                        ; $51b2: $d3
    sbc e                                         ; $51b3: $9b
    sbc h                                         ; $51b4: $9c
    sbc l                                         ; $51b5: $9d
    dec sp                                        ; $51b6: $3b
    ld bc, $0101                                  ; $51b7: $01 $01 $01
    ld bc, $0101                                  ; $51ba: $01 $01 $01
    ld bc, $0101                                  ; $51bd: $01 $01 $01
    ld bc, $0101                                  ; $51c0: $01 $01 $01
    adc d                                         ; $51c3: $8a
    adc d                                         ; $51c4: $8a
    adc d                                         ; $51c5: $8a
    add d                                         ; $51c6: $82
    ld [$222c], sp                                ; $51c7: $08 $2c $22
    ld a, [hl+]                                   ; $51ca: $2a
    dec b                                         ; $51cb: $05
    add hl, de                                    ; $51cc: $19
    inc hl                                        ; $51cd: $23
    dec l                                         ; $51ce: $2d
    db $d3                                        ; $51cf: $d3
    ld [$2426], sp                                ; $51d0: $08 $26 $24
    db $d3                                        ; $51d3: $d3
    dec b                                         ; $51d4: $05
    add hl, hl                                    ; $51d5: $29
    daa                                           ; $51d6: $27
    ld b, e                                       ; $51d7: $43
    inc bc                                        ; $51d8: $03
    inc bc                                        ; $51d9: $03
    inc bc                                        ; $51da: $03
    ld b, e                                       ; $51db: $43
    inc bc                                        ; $51dc: $03
    inc bc                                        ; $51dd: $03
    inc bc                                        ; $51de: $03
    ld bc, $0343                                  ; $51df: $01 $43 $03
    inc bc                                        ; $51e2: $03
    ld bc, $0343                                  ; $51e3: $01 $43 $03
    inc bc                                        ; $51e6: $03
    inc bc                                        ; $51e7: $03
    ld sp, hl                                     ; $51e8: $f9
    rst $10                                       ; $51e9: $d7
    db $e3                                        ; $51ea: $e3
    ld hl, sp+$20                                 ; $51eb: $f8 $20
    db $db                                        ; $51ed: $db
    rst $20                                       ; $51ee: $e7
    db $d3                                        ; $51ef: $d3
    ld a, [$ebdf]                                 ; $51f0: $fa $df $eb
    db $d3                                        ; $51f3: $d3
    db $d3                                        ; $51f4: $d3
    db $d3                                        ; $51f5: $d3
    ld a, [$0101]                                 ; $51f6: $fa $01 $01
    add d                                         ; $51f9: $82
    add d                                         ; $51fa: $82
    ld bc, $8201                                  ; $51fb: $01 $01 $82
    add d                                         ; $51fe: $82
    ld bc, $8201                                  ; $51ff: $01 $01 $82
    add d                                         ; $5202: $82
    ld bc, $0101                                  ; $5203: $01 $01 $01
    ld bc, $e5e4                                  ; $5206: $01 $e4 $e5
    ldh a, [$9e]                                  ; $5209: $f0 $9e
    add sp, -$17                                  ; $520b: $e8 $e9
    pop af                                        ; $520d: $f1
    scf                                           ; $520e: $37
    db $ec                                        ; $520f: $ec
    ld a, [c]                                     ; $5210: $f2
    di                                            ; $5211: $f3
    ld b, a                                       ; $5212: $47
    db $f4                                        ; $5213: $f4
    db $fd                                        ; $5214: $fd
    cp $49                                        ; $5215: $fe $49
    add d                                         ; $5217: $82
    add d                                         ; $5218: $82
    add d                                         ; $5219: $82
    adc d                                         ; $521a: $8a
    add d                                         ; $521b: $82
    add d                                         ; $521c: $82
    add d                                         ; $521d: $82
    add d                                         ; $521e: $82
    add d                                         ; $521f: $82
    add d                                         ; $5220: $82
    add d                                         ; $5221: $82
    add d                                         ; $5222: $82
    inc bc                                        ; $5223: $03
    ld bc, $8201                                  ; $5224: $01 $01 $82
    sbc a                                         ; $5227: $9f
    dec [hl]                                      ; $5228: $35
    ld [hl], $a0                                  ; $5229: $36 $a0
    jr c, @+$3b                                   ; $522b: $38 $39

    ld a, [hl-]                                   ; $522d: $3a
    ld a, $48                                     ; $522e: $3e $48
    ld c, e                                       ; $5230: $4b
    ld c, h                                       ; $5231: $4c
    ld c, l                                       ; $5232: $4d
    ld c, d                                       ; $5233: $4a
    ld c, a                                       ; $5234: $4f
    ld d, b                                       ; $5235: $50
    ld d, c                                       ; $5236: $51
    adc d                                         ; $5237: $8a
    add d                                         ; $5238: $82
    add d                                         ; $5239: $82
    adc d                                         ; $523a: $8a
    add d                                         ; $523b: $82
    add d                                         ; $523c: $82
    add d                                         ; $523d: $82
    add d                                         ; $523e: $82
    add d                                         ; $523f: $82
    add d                                         ; $5240: $82
    add d                                         ; $5241: $82
    add d                                         ; $5242: $82
    add d                                         ; $5243: $82
    add d                                         ; $5244: $82
    add d                                         ; $5245: $82
    add d                                         ; $5246: $82
    dec a                                         ; $5247: $3d
    db $d3                                        ; $5248: $d3
    ld [$3f2b], sp                                ; $5249: $08 $2b $3f
    db $d3                                        ; $524c: $d3
    dec b                                         ; $524d: $05
    jr @+$50                                      ; $524e: $18 $4e

    db $d3                                        ; $5250: $d3
    db $d3                                        ; $5251: $d3
    ld [$d352], sp                                ; $5252: $08 $52 $d3
    db $d3                                        ; $5255: $d3
    dec b                                         ; $5256: $05
    add d                                         ; $5257: $82
    ld bc, $0343                                  ; $5258: $01 $43 $03
    add d                                         ; $525b: $82
    ld bc, $0343                                  ; $525c: $01 $43 $03
    add d                                         ; $525f: $82
    ld bc, $4301                                  ; $5260: $01 $01 $43
    add d                                         ; $5263: $82
    ld bc, $4301                                  ; $5264: $01 $01 $43
    add hl, sp                                    ; $5267: $39
    ld a, [hl-]                                   ; $5268: $3a
    ld a, $3f                                     ; $5269: $3e $3f
    ld c, e                                       ; $526b: $4b
    ld c, h                                       ; $526c: $4c
    ld c, l                                       ; $526d: $4d
    ld c, [hl]                                    ; $526e: $4e
    ld c, a                                       ; $526f: $4f
    ld d, b                                       ; $5270: $50
    ld d, c                                       ; $5271: $51
    ld d, d                                       ; $5272: $52
    ld d, e                                       ; $5273: $53
    ld d, h                                       ; $5274: $54
    db $d3                                        ; $5275: $d3
    db $d3                                        ; $5276: $d3
    add d                                         ; $5277: $82
    add d                                         ; $5278: $82
    add d                                         ; $5279: $82
    add d                                         ; $527a: $82
    add d                                         ; $527b: $82
    add d                                         ; $527c: $82
    add d                                         ; $527d: $82
    add d                                         ; $527e: $82
    add d                                         ; $527f: $82
    add d                                         ; $5280: $82
    add d                                         ; $5281: $82
    add d                                         ; $5282: $82
    inc bc                                        ; $5283: $03
    inc bc                                        ; $5284: $03
    ld bc, $d301                                  ; $5285: $01 $01 $d3
    db $d3                                        ; $5288: $d3
    db $d3                                        ; $5289: $d3
    ld a, [$f5d3]                                 ; $528a: $fa $d3 $f5
    inc b                                         ; $528d: $04
    dec c                                         ; $528e: $0d
    db $d3                                        ; $528f: $d3
    ld a, [$030e]                                 ; $5290: $fa $0e $03
    inc b                                         ; $5293: $04
    dec c                                         ; $5294: $0d
    inc c                                         ; $5295: $0c
    ld hl, $0101                                  ; $5296: $21 $01 $01
    ld bc, $0101                                  ; $5299: $01 $01 $01
    ld bc, $0101                                  ; $529c: $01 $01 $01
    ld bc, $0101                                  ; $529f: $01 $01 $01
    ld bc, $0101                                  ; $52a2: $01 $01 $01
    ld bc, $2001                                  ; $52a5: $01 $01 $20
    dec c                                         ; $52a8: $0d
    ld c, $f9                                     ; $52a9: $0e $f9
    ld c, $03                                     ; $52ab: $0e $03
    ld [bc], a                                    ; $52ad: $02
    ld a, [$210c]                                 ; $52ae: $fa $0c $21
    jr nz, jr_08a_52b4                            ; $52b1: $20 $01

    ld [bc], a                                    ; $52b3: $02

jr_08a_52b4:
    ld a, [$f9f8]                                 ; $52b4: $fa $f8 $f9
    ld bc, $0101                                  ; $52b7: $01 $01 $01
    ld bc, $0101                                  ; $52ba: $01 $01 $01
    ld bc, $0101                                  ; $52bd: $01 $01 $01
    ld bc, $0101                                  ; $52c0: $01 $01 $01
    ld bc, $0101                                  ; $52c3: $01 $01 $01
    ld bc, $6e5b                                  ; $52c6: $01 $5b $6e
    ld l, a                                       ; $52c9: $6f
    ld e, [hl]                                    ; $52ca: $5e
    ld e, a                                       ; $52cb: $5f
    ld [hl], b                                    ; $52cc: $70
    ld [hl], c                                    ; $52cd: $71
    ld h, d                                       ; $52ce: $62
    ld h, e                                       ; $52cf: $63
    ld h, h                                       ; $52d0: $64
    ld h, l                                       ; $52d1: $65
    ld h, [hl]                                    ; $52d2: $66
    ld h, a                                       ; $52d3: $67
    ld l, d                                       ; $52d4: $6a
    add c                                         ; $52d5: $81
    add d                                         ; $52d6: $82
    inc bc                                        ; $52d7: $03
    inc bc                                        ; $52d8: $03
    inc bc                                        ; $52d9: $03
    inc bc                                        ; $52da: $03
    inc bc                                        ; $52db: $03
    inc bc                                        ; $52dc: $03
    inc bc                                        ; $52dd: $03
    inc bc                                        ; $52de: $03
    inc bc                                        ; $52df: $03
    inc bc                                        ; $52e0: $03
    inc bc                                        ; $52e1: $03
    inc bc                                        ; $52e2: $03
    ld h, e                                       ; $52e3: $63
    ld b, e                                       ; $52e4: $43
    dec bc                                        ; $52e5: $0b
    dec bc                                        ; $52e6: $0b
    ld d, l                                       ; $52e7: $55
    ld d, [hl]                                    ; $52e8: $56
    db $d3                                        ; $52e9: $d3
    ld a, [$d3d3]                                 ; $52ea: $fa $d3 $d3
    inc b                                         ; $52ed: $04
    inc bc                                        ; $52ee: $03
    db $d3                                        ; $52ef: $d3
    inc b                                         ; $52f0: $04
    ld bc, $d3d3                                  ; $52f1: $01 $d3 $d3
    db $d3                                        ; $52f4: $d3
    db $d3                                        ; $52f5: $d3
    inc sp                                        ; $52f6: $33
    inc bc                                        ; $52f7: $03
    inc bc                                        ; $52f8: $03
    ld bc, $0101                                  ; $52f9: $01 $01 $01
    ld bc, $0101                                  ; $52fc: $01 $01 $01
    ld bc, $0101                                  ; $52ff: $01 $01 $01
    ld bc, $0101                                  ; $5302: $01 $01 $01
    ld bc, $0e82                                  ; $5305: $01 $82 $0e
    ld sp, hl                                     ; $5308: $f9
    inc b                                         ; $5309: $04
    ld bc, $d3d3                                  ; $530a: $01 $d3 $d3
    db $fc                                        ; $530d: $fc
    db $d3                                        ; $530e: $d3
    jr nc, @+$33                                  ; $530f: $30 $31

    ld [hl-], a                                   ; $5311: $32
    dec sp                                        ; $5312: $3b
    inc [hl]                                      ; $5313: $34
    dec [hl]                                      ; $5314: $35
    ld [hl], $3c                                  ; $5315: $36 $3c
    ld bc, $0101                                  ; $5317: $01 $01 $01
    ld bc, $0101                                  ; $531a: $01 $01 $01
    rlca                                          ; $531d: $07
    ld bc, $8282                                  ; $531e: $01 $82 $82
    add d                                         ; $5321: $82
    add d                                         ; $5322: $82
    add d                                         ; $5323: $82
    add d                                         ; $5324: $82
    add d                                         ; $5325: $82
    add d                                         ; $5326: $82
    db $d3                                        ; $5327: $d3
    db $d3                                        ; $5328: $d3
    db $fd                                        ; $5329: $fd
    cp $f5                                        ; $532a: $fe $f5
    db $d3                                        ; $532c: $d3
    rst $38                                       ; $532d: $ff
    nop                                           ; $532e: $00
    db $d3                                        ; $532f: $d3
    db $d3                                        ; $5330: $d3
    db $d3                                        ; $5331: $d3
    db $d3                                        ; $5332: $d3
    dec a                                         ; $5333: $3d
    db $d3                                        ; $5334: $d3
    db $d3                                        ; $5335: $d3
    db $d3                                        ; $5336: $d3
    ld bc, $0101                                  ; $5337: $01 $01 $01
    ld bc, $0101                                  ; $533a: $01 $01 $01
    ld bc, $0101                                  ; $533d: $01 $01 $01
    ld bc, $0101                                  ; $5340: $01 $01 $01
    add d                                         ; $5343: $82
    ld bc, $0101                                  ; $5344: $01 $01 $01
    ld e, e                                       ; $5347: $5b
    ld a, b                                       ; $5348: $78
    add h                                         ; $5349: $84
    add l                                         ; $534a: $85
    ld e, a                                       ; $534b: $5f
    ld a, c                                       ; $534c: $79
    add a                                         ; $534d: $87
    adc b                                         ; $534e: $88
    ld h, e                                       ; $534f: $63
    ld h, h                                       ; $5350: $64
    ld h, l                                       ; $5351: $65
    ld h, [hl]                                    ; $5352: $66
    ld h, a                                       ; $5353: $67
    ld l, b                                       ; $5354: $68
    ld l, c                                       ; $5355: $69
    ld l, d                                       ; $5356: $6a
    inc bc                                        ; $5357: $03
    inc bc                                        ; $5358: $03
    dec bc                                        ; $5359: $0b
    dec bc                                        ; $535a: $0b
    inc bc                                        ; $535b: $03
    inc bc                                        ; $535c: $03
    dec bc                                        ; $535d: $0b
    dec bc                                        ; $535e: $0b
    inc bc                                        ; $535f: $03
    inc bc                                        ; $5360: $03
    inc bc                                        ; $5361: $03
    inc bc                                        ; $5362: $03
    ld h, e                                       ; $5363: $63
    inc bc                                        ; $5364: $03
    inc bc                                        ; $5365: $03
    inc bc                                        ; $5366: $03
    dec b                                         ; $5367: $05
    db $d3                                        ; $5368: $d3
    db $d3                                        ; $5369: $d3
    scf                                           ; $536a: $37
    ld [$d3fc], sp                                ; $536b: $08 $fc $d3
    ld b, a                                       ; $536e: $47
    ld b, $05                                     ; $536f: $06 $05
    push af                                       ; $5371: $f5
    ld c, c                                       ; $5372: $49
    add hl, bc                                    ; $5373: $09
    ld [$d3d3], sp                                ; $5374: $08 $d3 $d3
    inc hl                                        ; $5377: $23
    ld bc, $8201                                  ; $5378: $01 $01 $82
    inc hl                                        ; $537b: $23
    rlca                                          ; $537c: $07
    ld bc, $0382                                  ; $537d: $01 $82 $03
    inc hl                                        ; $5380: $23
    ld bc, $0382                                  ; $5381: $01 $82 $03
    inc hl                                        ; $5384: $23
    ld bc, $3801                                  ; $5385: $01 $01 $38
    add hl, sp                                    ; $5388: $39
    ld a, [hl-]                                   ; $5389: $3a
    ld a, $48                                     ; $538a: $3e $48
    ld c, e                                       ; $538c: $4b
    ld c, h                                       ; $538d: $4c
    ld c, l                                       ; $538e: $4d
    ld c, d                                       ; $538f: $4a
    ld c, a                                       ; $5390: $4f
    ld d, b                                       ; $5391: $50
    ld d, c                                       ; $5392: $51
    db $d3                                        ; $5393: $d3
    ld d, e                                       ; $5394: $53
    ld d, h                                       ; $5395: $54
    db $d3                                        ; $5396: $d3
    add d                                         ; $5397: $82
    add d                                         ; $5398: $82
    add d                                         ; $5399: $82
    add d                                         ; $539a: $82
    add d                                         ; $539b: $82
    add d                                         ; $539c: $82
    add d                                         ; $539d: $82
    add d                                         ; $539e: $82
    add d                                         ; $539f: $82
    add d                                         ; $53a0: $82
    add d                                         ; $53a1: $82
    add d                                         ; $53a2: $82
    ld bc, $0303                                  ; $53a3: $01 $03 $03
    ld bc, $d33f                                  ; $53a6: $01 $3f $d3
    db $d3                                        ; $53a9: $d3
    db $d3                                        ; $53aa: $d3
    ld c, [hl]                                    ; $53ab: $4e
    db $d3                                        ; $53ac: $d3
    push af                                       ; $53ad: $f5
    db $d3                                        ; $53ae: $d3
    ld d, d                                       ; $53af: $52
    db $d3                                        ; $53b0: $d3
    db $d3                                        ; $53b1: $d3
    db $d3                                        ; $53b2: $d3
    db $d3                                        ; $53b3: $d3
    db $d3                                        ; $53b4: $d3
    db $d3                                        ; $53b5: $d3
    db $d3                                        ; $53b6: $d3
    add d                                         ; $53b7: $82
    ld bc, $0101                                  ; $53b8: $01 $01 $01
    add d                                         ; $53bb: $82
    ld bc, $0101                                  ; $53bc: $01 $01 $01
    add d                                         ; $53bf: $82
    ld bc, $0101                                  ; $53c0: $01 $01 $01
    ld bc, $0101                                  ; $53c3: $01 $01 $01
    ld bc, $6e5b                                  ; $53c6: $01 $5b $6e
    ld l, a                                       ; $53c9: $6f
    ld e, [hl]                                    ; $53ca: $5e
    ld e, a                                       ; $53cb: $5f
    ld [hl], b                                    ; $53cc: $70
    ld [hl], d                                    ; $53cd: $72
    ld [hl], e                                    ; $53ce: $73
    ld h, e                                       ; $53cf: $63
    ld h, h                                       ; $53d0: $64
    ld h, l                                       ; $53d1: $65
    ld h, [hl]                                    ; $53d2: $66
    ld h, a                                       ; $53d3: $67
    ld l, b                                       ; $53d4: $68
    ld l, c                                       ; $53d5: $69
    ld l, d                                       ; $53d6: $6a
    inc bc                                        ; $53d7: $03
    inc bc                                        ; $53d8: $03
    inc bc                                        ; $53d9: $03
    inc bc                                        ; $53da: $03
    inc bc                                        ; $53db: $03
    inc bc                                        ; $53dc: $03
    inc bc                                        ; $53dd: $03
    inc bc                                        ; $53de: $03
    inc bc                                        ; $53df: $03
    inc bc                                        ; $53e0: $03
    inc bc                                        ; $53e1: $03
    inc bc                                        ; $53e2: $03
    ld h, e                                       ; $53e3: $63
    inc bc                                        ; $53e4: $03
    inc bc                                        ; $53e5: $03
    inc bc                                        ; $53e6: $03
    inc l                                         ; $53e7: $2c
    ld [hl+], a                                   ; $53e8: $22
    dec b                                         ; $53e9: $05
    db $d3                                        ; $53ea: $d3
    add hl, de                                    ; $53eb: $19
    inc hl                                        ; $53ec: $23
    ld [$25d3], sp                                ; $53ed: $08 $d3 $25
    ld h, $24                                     ; $53f0: $26 $24
    dec b                                         ; $53f2: $05
    jr z, @+$2b                                   ; $53f3: $28 $29

    daa                                           ; $53f5: $27
    ld [$0303], sp                                ; $53f6: $08 $03 $03
    inc hl                                        ; $53f9: $23
    ld bc, $0303                                  ; $53fa: $01 $03 $03
    inc hl                                        ; $53fd: $23
    ld bc, $0303                                  ; $53fe: $01 $03 $03
    inc bc                                        ; $5401: $03
    inc hl                                        ; $5402: $23
    inc bc                                        ; $5403: $03
    inc bc                                        ; $5404: $03
    inc bc                                        ; $5405: $03
    inc hl                                        ; $5406: $23
    db $d3                                        ; $5407: $d3
    ld d, l                                       ; $5408: $55
    ld d, [hl]                                    ; $5409: $56
    db $d3                                        ; $540a: $d3
    db $d3                                        ; $540b: $d3
    db $d3                                        ; $540c: $d3
    db $d3                                        ; $540d: $d3
    db $d3                                        ; $540e: $d3
    db $d3                                        ; $540f: $d3
    push af                                       ; $5410: $f5
    db $d3                                        ; $5411: $d3
    ld b, b                                       ; $5412: $40
    db $d3                                        ; $5413: $d3
    db $d3                                        ; $5414: $d3
    ld l, l                                       ; $5415: $6d
    ld b, h                                       ; $5416: $44
    ld bc, $0303                                  ; $5417: $01 $03 $03
    ld bc, $0101                                  ; $541a: $01 $01 $01
    ld bc, $0101                                  ; $541d: $01 $01 $01
    ld bc, $0101                                  ; $5420: $01 $01 $01
    ld bc, $0101                                  ; $5423: $01 $01 $01
    ld bc, $d3f5                                  ; $5426: $01 $f5 $d3
    ld l, h                                       ; $5429: $6c
    db $d3                                        ; $542a: $d3
    db $d3                                        ; $542b: $d3
    ld e, $41                                     ; $542c: $1e $41
    ld b, b                                       ; $542e: $40
    ld l, h                                       ; $542f: $6c
    ld b, [hl]                                    ; $5430: $46
    ld l, e                                       ; $5431: $6b
    ld e, $41                                     ; $5432: $1e $41
    ld b, d                                       ; $5434: $42
    ld l, h                                       ; $5435: $6c
    db $d3                                        ; $5436: $d3
    ld bc, $0101                                  ; $5437: $01 $01 $01
    ld bc, $0101                                  ; $543a: $01 $01 $01
    ld bc, $0101                                  ; $543d: $01 $01 $01
    ld bc, $0101                                  ; $5440: $01 $01 $01
    ld bc, $0101                                  ; $5443: $01 $01 $01
    ld bc, $6e5b                                  ; $5446: $01 $5b $6e
    ld l, a                                       ; $5449: $6f
    ld e, [hl]                                    ; $544a: $5e
    ld e, a                                       ; $544b: $5f

jr_08a_544c:
    ld [hl], b                                    ; $544c: $70
    ld [hl], c                                    ; $544d: $71
    ld h, d                                       ; $544e: $62
    ld h, e                                       ; $544f: $63
    ld h, h                                       ; $5450: $64
    ld h, l                                       ; $5451: $65
    ld h, [hl]                                    ; $5452: $66
    ld h, a                                       ; $5453: $67
    ld l, b                                       ; $5454: $68
    ld l, c                                       ; $5455: $69
    ld l, d                                       ; $5456: $6a
    inc bc                                        ; $5457: $03
    inc bc                                        ; $5458: $03
    inc bc                                        ; $5459: $03
    inc bc                                        ; $545a: $03
    inc bc                                        ; $545b: $03
    inc bc                                        ; $545c: $03
    inc bc                                        ; $545d: $03
    inc bc                                        ; $545e: $03
    inc bc                                        ; $545f: $03
    inc bc                                        ; $5460: $03
    inc bc                                        ; $5461: $03
    inc bc                                        ; $5462: $03
    ld h, e                                       ; $5463: $63
    inc bc                                        ; $5464: $03
    inc bc                                        ; $5465: $03
    inc bc                                        ; $5466: $03
    ld l, [hl]                                    ; $5467: $6e
    ld e, h                                       ; $5468: $5c
    ld e, l                                       ; $5469: $5d
    ld h, a                                       ; $546a: $67
    ld [hl], b                                    ; $546b: $70
    ld h, b                                       ; $546c: $60
    ld h, c                                       ; $546d: $61
    ld a, h                                       ; $546e: $7c
    ld h, h                                       ; $546f: $64
    ld h, l                                       ; $5470: $65
    ld h, [hl]                                    ; $5471: $66
    ld a, l                                       ; $5472: $7d
    add e                                         ; $5473: $83
    ld l, c                                       ; $5474: $69
    ld l, d                                       ; $5475: $6a
    ld a, [hl]                                    ; $5476: $7e
    inc bc                                        ; $5477: $03
    inc bc                                        ; $5478: $03
    inc bc                                        ; $5479: $03
    inc bc                                        ; $547a: $03
    inc bc                                        ; $547b: $03
    inc bc                                        ; $547c: $03
    inc bc                                        ; $547d: $03
    inc bc                                        ; $547e: $03
    inc bc                                        ; $547f: $03
    inc bc                                        ; $5480: $03
    inc bc                                        ; $5481: $03
    inc bc                                        ; $5482: $03
    dec bc                                        ; $5483: $0b
    inc bc                                        ; $5484: $03
    inc bc                                        ; $5485: $03
    inc bc                                        ; $5486: $03
    db $d3                                        ; $5487: $d3
    rst $38                                       ; $5488: $ff
    nop                                           ; $5489: $00
    db $d3                                        ; $548a: $d3
    db $fc                                        ; $548b: $fc
    db $d3                                        ; $548c: $d3
    db $d3                                        ; $548d: $d3
    db $d3                                        ; $548e: $d3
    db $d3                                        ; $548f: $d3
    db $d3                                        ; $5490: $d3
    db $d3                                        ; $5491: $d3
    push af                                       ; $5492: $f5
    db $d3                                        ; $5493: $d3
    db $d3                                        ; $5494: $d3
    db $d3                                        ; $5495: $d3
    db $d3                                        ; $5496: $d3
    ld bc, $0101                                  ; $5497: $01 $01 $01
    ld bc, $0107                                  ; $549a: $01 $07 $01
    ld bc, $0101                                  ; $549d: $01 $01 $01
    ld bc, $0101                                  ; $54a0: $01 $01 $01
    ld bc, $0101                                  ; $54a3: $01 $01 $01
    ld bc, $fa02                                  ; $54a6: $01 $02 $fa
    jr nz, jr_08a_544c                            ; $54a9: $20 $a1

    db $d3                                        ; $54ab: $d3
    ld bc, $a202                                  ; $54ac: $01 $02 $a2
    db $d3                                        ; $54af: $d3
    db $d3                                        ; $54b0: $d3
    inc b                                         ; $54b1: $04
    and e                                         ; $54b2: $a3
    db $d3                                        ; $54b3: $d3
    ld a, [$f9f8]                                 ; $54b4: $fa $f8 $f9
    ld bc, $0101                                  ; $54b7: $01 $01 $01
    ld a, [bc]                                    ; $54ba: $0a
    ld bc, $0101                                  ; $54bb: $01 $01 $01
    ld a, [bc]                                    ; $54be: $0a
    ld bc, $0101                                  ; $54bf: $01 $01 $01
    ld a, [bc]                                    ; $54c2: $0a
    ld bc, $0101                                  ; $54c3: $01 $01 $01
    ld bc, $03a4                                  ; $54c6: $01 $a4 $03
    inc c                                         ; $54c9: $0c
    ld hl, $21a5                                  ; $54ca: $21 $a5 $21
    jr nz, jr_08a_54dc                            ; $54cd: $20 $0d

    and [hl]                                      ; $54cf: $a6
    dec c                                         ; $54d0: $0d
    ld hl, sp-$07                                 ; $54d1: $f8 $f9
    ld c, $01                                     ; $54d3: $0e $01
    ld [bc], a                                    ; $54d5: $02
    ld a, [$010a]                                 ; $54d6: $fa $0a $01
    ld bc, $0a01                                  ; $54d9: $01 $01 $0a

jr_08a_54dc:
    ld bc, $0101                                  ; $54dc: $01 $01 $01
    ld a, [bc]                                    ; $54df: $0a
    ld bc, $0101                                  ; $54e0: $01 $01 $01
    ld bc, $0101                                  ; $54e3: $01 $01 $01
    ld bc, $6f86                                  ; $54e6: $01 $86 $6f
    ld e, [hl]                                    ; $54e9: $5e
    ld h, a                                       ; $54ea: $67
    adc c                                         ; $54eb: $89
    ld [hl], c                                    ; $54ec: $71
    ld h, d                                       ; $54ed: $62
    ld a, h                                       ; $54ee: $7c
    ld [hl], l                                    ; $54ef: $75
    halt                                          ; $54f0: $76
    ld [hl], a                                    ; $54f1: $77
    ld a, l                                       ; $54f2: $7d
    ld l, b                                       ; $54f3: $68
    ld l, c                                       ; $54f4: $69
    ld l, d                                       ; $54f5: $6a
    ld a, [hl]                                    ; $54f6: $7e
    dec bc                                        ; $54f7: $0b
    inc bc                                        ; $54f8: $03
    inc bc                                        ; $54f9: $03
    inc bc                                        ; $54fa: $03
    dec bc                                        ; $54fb: $0b
    inc bc                                        ; $54fc: $03
    inc bc                                        ; $54fd: $03
    inc bc                                        ; $54fe: $03
    inc bc                                        ; $54ff: $03
    inc bc                                        ; $5500: $03
    inc bc                                        ; $5501: $03
    inc bc                                        ; $5502: $03
    inc bc                                        ; $5503: $03
    inc bc                                        ; $5504: $03
    inc bc                                        ; $5505: $03
    inc bc                                        ; $5506: $03
    ei                                            ; $5507: $fb
    pop de                                        ; $5508: $d1
    db $d3                                        ; $5509: $d3
    db $d3                                        ; $550a: $d3
    db $d3                                        ; $550b: $d3
    db $d3                                        ; $550c: $d3
    db $d3                                        ; $550d: $d3
    db $d3                                        ; $550e: $d3
    db $d3                                        ; $550f: $d3
    db $d3                                        ; $5510: $d3
    db $fc                                        ; $5511: $fc
    db $d3                                        ; $5512: $d3
    rra                                           ; $5513: $1f
    ld b, b                                       ; $5514: $40
    ld l, h                                       ; $5515: $6c
    db $d3                                        ; $5516: $d3
    ld bc, $0101                                  ; $5517: $01 $01 $01
    ld bc, $0101                                  ; $551a: $01 $01 $01
    ld bc, $0101                                  ; $551d: $01 $01 $01
    ld bc, $0107                                  ; $5520: $01 $07 $01
    ld bc, $0101                                  ; $5523: $01 $01 $01
    ld bc, $d3d3                                  ; $5526: $01 $d3 $d3
    ld [bc], a                                    ; $5529: $02
    ld a, [$d3f5]                                 ; $552a: $fa $f5 $d3
    inc b                                         ; $552d: $04
    ld bc, $fad3                                  ; $552e: $01 $d3 $fa
    ld hl, sp-$2d                                 ; $5531: $f8 $d3
    db $d3                                        ; $5533: $d3
    ld bc, $d3d3                                  ; $5534: $01 $d3 $d3
    ld bc, $0101                                  ; $5537: $01 $01 $01
    ld bc, $0101                                  ; $553a: $01 $01 $01
    ld bc, $0101                                  ; $553d: $01 $01 $01
    ld bc, $0101                                  ; $5540: $01 $01 $01
    ld bc, $0101                                  ; $5543: $01 $01 $01
    ld bc, $f9f8                                  ; $5546: $01 $f8 $f9
    db $d3                                        ; $5549: $d3
    db $d3                                        ; $554a: $d3
    db $d3                                        ; $554b: $d3
    db $d3                                        ; $554c: $d3
    db $d3                                        ; $554d: $d3
    jr nc, @-$09                                  ; $554e: $30 $f5

    db $d3                                        ; $5550: $d3
    inc sp                                        ; $5551: $33
    inc [hl]                                      ; $5552: $34
    db $d3                                        ; $5553: $d3
    db $fc                                        ; $5554: $fc
    scf                                           ; $5555: $37
    jr c, @+$03                                   ; $5556: $38 $01

    ld bc, $0101                                  ; $5558: $01 $01 $01
    ld bc, $0101                                  ; $555b: $01 $01 $01
    add d                                         ; $555e: $82
    ld bc, $8201                                  ; $555f: $01 $01 $82
    add d                                         ; $5562: $82
    ld bc, $8207                                  ; $5563: $01 $07 $82
    add d                                         ; $5566: $82
    ld l, [hl]                                    ; $5567: $6e
    ld l, a                                       ; $5568: $6f
    ld e, [hl]                                    ; $5569: $5e
    ld h, a                                       ; $556a: $67
    ld [hl], h                                    ; $556b: $74
    ld a, a                                       ; $556c: $7f
    add b                                         ; $556d: $80
    ld a, h                                       ; $556e: $7c
    ld h, h                                       ; $556f: $64
    ld h, l                                       ; $5570: $65
    ld h, [hl]                                    ; $5571: $66
    ld a, l                                       ; $5572: $7d
    ld l, b                                       ; $5573: $68
    ld l, c                                       ; $5574: $69
    ld l, d                                       ; $5575: $6a
    ld a, [hl]                                    ; $5576: $7e
    inc bc                                        ; $5577: $03
    inc bc                                        ; $5578: $03
    inc bc                                        ; $5579: $03
    inc bc                                        ; $557a: $03
    inc bc                                        ; $557b: $03
    inc bc                                        ; $557c: $03
    dec bc                                        ; $557d: $0b
    inc bc                                        ; $557e: $03
    inc bc                                        ; $557f: $03
    inc bc                                        ; $5580: $03
    inc bc                                        ; $5581: $03
    inc bc                                        ; $5582: $03
    inc bc                                        ; $5583: $03
    inc bc                                        ; $5584: $03
    inc bc                                        ; $5585: $03
    inc bc                                        ; $5586: $03
    db $d3                                        ; $5587: $d3
    ld e, $44                                     ; $5588: $1e $44
    ld b, c                                       ; $558a: $41
    db $fd                                        ; $558b: $fd
    cp $6d                                        ; $558c: $fe $6d
    ld l, e                                       ; $558e: $6b
    rst $38                                       ; $558f: $ff
    nop                                           ; $5590: $00
    db $d3                                        ; $5591: $d3
    ld b, l                                       ; $5592: $45
    db $d3                                        ; $5593: $d3
    db $d3                                        ; $5594: $d3
    db $fc                                        ; $5595: $fc
    db $d3                                        ; $5596: $d3
    ld bc, $0101                                  ; $5597: $01 $01 $01
    ld bc, $0101                                  ; $559a: $01 $01 $01
    ld bc, $0101                                  ; $559d: $01 $01 $01
    ld bc, $0101                                  ; $55a0: $01 $01 $01
    ld bc, $0701                                  ; $55a3: $01 $01 $07
    ld bc, $d36c                                  ; $55a6: $01 $6c $d3
    ei                                            ; $55a9: $fb
    pop de                                        ; $55aa: $d1
    ld b, h                                       ; $55ab: $44
    ld b, b                                       ; $55ac: $40
    ld l, h                                       ; $55ad: $6c
    db $d3                                        ; $55ae: $d3
    ld l, l                                       ; $55af: $6d
    ld b, c                                       ; $55b0: $41
    ld b, d                                       ; $55b1: $42
    ld b, e                                       ; $55b2: $43
    db $d3                                        ; $55b3: $d3
    ld b, l                                       ; $55b4: $45
    ld b, h                                       ; $55b5: $44
    ld b, c                                       ; $55b6: $41
    ld bc, $0101                                  ; $55b7: $01 $01 $01
    ld bc, $0101                                  ; $55ba: $01 $01 $01
    ld bc, $0101                                  ; $55bd: $01 $01 $01
    ld bc, $0101                                  ; $55c0: $01 $01 $01
    ld bc, $0101                                  ; $55c3: $01 $01 $01
    ld bc, $d3d3                                  ; $55c6: $01 $d3 $d3
    ld b, a                                       ; $55c9: $47
    ld c, b                                       ; $55ca: $48
    db $d3                                        ; $55cb: $d3
    db $d3                                        ; $55cc: $d3
    ld c, c                                       ; $55cd: $49
    ld c, d                                       ; $55ce: $4a
    ld b, [hl]                                    ; $55cf: $46
    ld l, e                                       ; $55d0: $6b
    ld l, l                                       ; $55d1: $6d
    db $d3                                        ; $55d2: $d3
    rra                                           ; $55d3: $1f
    ld b, b                                       ; $55d4: $40
    db $d3                                        ; $55d5: $d3
    db $d3                                        ; $55d6: $d3
    ld bc, $8201                                  ; $55d7: $01 $01 $82
    add d                                         ; $55da: $82
    ld bc, $8201                                  ; $55db: $01 $01 $82
    add d                                         ; $55de: $82
    ld bc, $0101                                  ; $55df: $01 $01 $01
    ld bc, $0101                                  ; $55e2: $01 $01 $01
    ld bc, $6e01                                  ; $55e5: $01 $01 $6e
    ld l, a                                       ; $55e8: $6f
    ld e, [hl]                                    ; $55e9: $5e
    ld h, a                                       ; $55ea: $67
    ld [hl], b                                    ; $55eb: $70
    ld a, d                                       ; $55ec: $7a
    ld a, e                                       ; $55ed: $7b
    ld a, h                                       ; $55ee: $7c
    ld h, h                                       ; $55ef: $64
    ld h, l                                       ; $55f0: $65
    ld h, [hl]                                    ; $55f1: $66
    ld a, l                                       ; $55f2: $7d
    ld e, h                                       ; $55f3: $5c
    ld e, l                                       ; $55f4: $5d
    ld l, d                                       ; $55f5: $6a
    ld a, [hl]                                    ; $55f6: $7e
    inc bc                                        ; $55f7: $03
    inc bc                                        ; $55f8: $03
    inc bc                                        ; $55f9: $03
    inc bc                                        ; $55fa: $03
    inc bc                                        ; $55fb: $03
    inc bc                                        ; $55fc: $03
    inc bc                                        ; $55fd: $03
    inc bc                                        ; $55fe: $03
    inc bc                                        ; $55ff: $03
    inc bc                                        ; $5600: $03
    inc bc                                        ; $5601: $03
    inc bc                                        ; $5602: $03
    inc bc                                        ; $5603: $03
    inc bc                                        ; $5604: $03
    inc bc                                        ; $5605: $03
    inc bc                                        ; $5606: $03
    db $d3                                        ; $5607: $d3
    db $d3                                        ; $5608: $d3
    jr nc, jr_08a_563c                            ; $5609: $30 $31

    db $d3                                        ; $560b: $d3
    inc sp                                        ; $560c: $33
    inc [hl]                                      ; $560d: $34
    dec [hl]                                      ; $560e: $35
    push af                                       ; $560f: $f5
    scf                                           ; $5610: $37
    jr c, jr_08a_564c                             ; $5611: $38 $39

    db $d3                                        ; $5613: $d3
    ld b, a                                       ; $5614: $47
    ld c, b                                       ; $5615: $48
    ld c, e                                       ; $5616: $4b
    ld bc, $8201                                  ; $5617: $01 $01 $82
    add d                                         ; $561a: $82
    ld bc, $8282                                  ; $561b: $01 $82 $82
    add d                                         ; $561e: $82
    ld bc, $8282                                  ; $561f: $01 $82 $82
    add d                                         ; $5622: $82
    ld bc, $8282                                  ; $5623: $01 $82 $82
    add d                                         ; $5626: $82
    ld [hl-], a                                   ; $5627: $32
    dec sp                                        ; $5628: $3b
    db $d3                                        ; $5629: $d3
    db $d3                                        ; $562a: $d3
    ld [hl], $3c                                  ; $562b: $36 $3c
    dec a                                         ; $562d: $3d
    db $d3                                        ; $562e: $d3
    ld a, [hl-]                                   ; $562f: $3a
    ld a, $3f                                     ; $5630: $3e $3f
    db $d3                                        ; $5632: $d3
    ld c, h                                       ; $5633: $4c
    ld c, l                                       ; $5634: $4d
    ld c, [hl]                                    ; $5635: $4e
    db $d3                                        ; $5636: $d3
    add d                                         ; $5637: $82
    add d                                         ; $5638: $82
    ld bc, $8201                                  ; $5639: $01 $01 $82

jr_08a_563c:
    add d                                         ; $563c: $82
    add d                                         ; $563d: $82
    ld bc, $8282                                  ; $563e: $01 $82 $82
    add d                                         ; $5641: $82
    ld bc, $8282                                  ; $5642: $01 $82 $82
    add d                                         ; $5645: $82
    ld bc, $d3d3                                  ; $5646: $01 $d3 $d3
    db $d3                                        ; $5649: $d3
    ei                                            ; $564a: $fb
    push af                                       ; $564b: $f5

jr_08a_564c:
    db $d3                                        ; $564c: $d3
    db $d3                                        ; $564d: $d3
    db $d3                                        ; $564e: $d3
    db $d3                                        ; $564f: $d3
    db $d3                                        ; $5650: $d3
    db $d3                                        ; $5651: $d3
    push af                                       ; $5652: $f5
    db $d3                                        ; $5653: $d3
    db $fc                                        ; $5654: $fc
    db $d3                                        ; $5655: $d3
    db $d3                                        ; $5656: $d3
    ld bc, $0101                                  ; $5657: $01 $01 $01
    ld bc, $0101                                  ; $565a: $01 $01 $01
    ld bc, $0101                                  ; $565d: $01 $01 $01
    ld bc, $0101                                  ; $5660: $01 $01 $01
    ld bc, $0107                                  ; $5663: $01 $07 $01
    ld bc, $f9f8                                  ; $5666: $01 $f8 $f9
    db $d3                                        ; $5669: $d3
    push af                                       ; $566a: $f5
    inc c                                         ; $566b: $0c
    ld hl, $f920                                  ; $566c: $21 $20 $f9
    inc b                                         ; $566f: $04
    ld bc, $d302                                  ; $5670: $01 $02 $d3
    db $d3                                        ; $5673: $d3
    push af                                       ; $5674: $f5
    db $d3                                        ; $5675: $d3
    ld d, a                                       ; $5676: $57
    ld bc, $0101                                  ; $5677: $01 $01 $01
    ld bc, $0101                                  ; $567a: $01 $01 $01
    ld bc, $0101                                  ; $567d: $01 $01 $01
    ld bc, $0101                                  ; $5680: $01 $01 $01
    ld bc, $0101                                  ; $5683: $01 $01 $01
    ld b, $d3                                     ; $5686: $06 $d3
    db $d3                                        ; $5688: $d3
    ld d, a                                       ; $5689: $57
    ld e, c                                       ; $568a: $59
    sbc d                                         ; $568b: $9a
    db $d3                                        ; $568c: $d3
    db $d3                                        ; $568d: $d3
    db $d3                                        ; $568e: $d3
    db $d3                                        ; $568f: $d3
    db $fc                                        ; $5690: $fc
    db $d3                                        ; $5691: $d3
    inc sp                                        ; $5692: $33
    db $d3                                        ; $5693: $d3
    db $d3                                        ; $5694: $d3
    db $d3                                        ; $5695: $d3
    scf                                           ; $5696: $37
    ld bc, $0501                                  ; $5697: $01 $01 $05
    dec b                                         ; $569a: $05
    dec c                                         ; $569b: $0d
    ld bc, $0101                                  ; $569c: $01 $01 $01
    ld bc, $0107                                  ; $569f: $01 $07 $01
    add d                                         ; $56a2: $82
    ld bc, $0101                                  ; $56a3: $01 $01 $01
    add d                                         ; $56a6: $82
    db $d3                                        ; $56a7: $d3
    db $d3                                        ; $56a8: $d3
    db $d3                                        ; $56a9: $d3
    db $d3                                        ; $56aa: $d3
    jr nc, jr_08a_56de                            ; $56ab: $30 $31

    ld [hl-], a                                   ; $56ad: $32
    dec sp                                        ; $56ae: $3b
    inc [hl]                                      ; $56af: $34
    dec [hl]                                      ; $56b0: $35
    ld [hl], $3c                                  ; $56b1: $36 $3c
    jr c, jr_08a_56ee                             ; $56b3: $38 $39

    ld a, [hl-]                                   ; $56b5: $3a
    ld a, $01                                     ; $56b6: $3e $01
    ld bc, $0101                                  ; $56b8: $01 $01 $01
    add d                                         ; $56bb: $82
    add d                                         ; $56bc: $82
    add d                                         ; $56bd: $82
    add d                                         ; $56be: $82
    add d                                         ; $56bf: $82
    add d                                         ; $56c0: $82
    add d                                         ; $56c1: $82
    add d                                         ; $56c2: $82
    add d                                         ; $56c3: $82
    add d                                         ; $56c4: $82
    add d                                         ; $56c5: $82
    add d                                         ; $56c6: $82
    db $d3                                        ; $56c7: $d3
    db $d3                                        ; $56c8: $d3
    db $fc                                        ; $56c9: $fc
    rst $10                                       ; $56ca: $d7
    db $d3                                        ; $56cb: $d3
    db $d3                                        ; $56cc: $d3
    db $d3                                        ; $56cd: $d3
    db $db                                        ; $56ce: $db
    dec a                                         ; $56cf: $3d
    db $d3                                        ; $56d0: $d3
    db $d3                                        ; $56d1: $d3
    rst $18                                       ; $56d2: $df
    ccf                                           ; $56d3: $3f
    db $d3                                        ; $56d4: $d3
    db $d3                                        ; $56d5: $d3
    db $d3                                        ; $56d6: $d3
    ld bc, $0701                                  ; $56d7: $01 $01 $07
    add d                                         ; $56da: $82
    ld bc, $0101                                  ; $56db: $01 $01 $01

jr_08a_56de:
    add d                                         ; $56de: $82
    add d                                         ; $56df: $82
    ld bc, $8201                                  ; $56e0: $01 $01 $82
    add d                                         ; $56e3: $82
    ld bc, $0101                                  ; $56e4: $01 $01 $01
    and a                                         ; $56e7: $a7
    db $d3                                        ; $56e8: $d3
    db $d3                                        ; $56e9: $d3
    db $fc                                        ; $56ea: $fc
    ld sp, $3b32                                  ; $56eb: $31 $32 $3b

jr_08a_56ee:
    db $d3                                        ; $56ee: $d3
    dec [hl]                                      ; $56ef: $35
    ld [hl], $3c                                  ; $56f0: $36 $3c
    dec a                                         ; $56f2: $3d
    add hl, sp                                    ; $56f3: $39
    ld a, [hl-]                                   ; $56f4: $3a
    ld a, $3f                                     ; $56f5: $3e $3f
    dec c                                         ; $56f7: $0d
    ld bc, $0701                                  ; $56f8: $01 $01 $07
    add d                                         ; $56fb: $82
    add d                                         ; $56fc: $82
    add d                                         ; $56fd: $82
    ld bc, $8282                                  ; $56fe: $01 $82 $82
    add d                                         ; $5701: $82
    add d                                         ; $5702: $82
    add d                                         ; $5703: $82
    add d                                         ; $5704: $82
    add d                                         ; $5705: $82
    add d                                         ; $5706: $82
    ld e, c                                       ; $5707: $59
    db $d3                                        ; $5708: $d3
    db $d3                                        ; $5709: $d3
    ld b, a                                       ; $570a: $47
    sbc d                                         ; $570b: $9a
    db $d3                                        ; $570c: $d3
    db $d3                                        ; $570d: $d3
    ld c, c                                       ; $570e: $49
    db $d3                                        ; $570f: $d3
    db $d3                                        ; $5710: $d3
    db $d3                                        ; $5711: $d3
    db $d3                                        ; $5712: $d3
    db $d3                                        ; $5713: $d3
    db $d3                                        ; $5714: $d3
    ei                                            ; $5715: $fb
    pop de                                        ; $5716: $d1
    ld b, $01                                     ; $5717: $06 $01
    ld bc, $0d82                                  ; $5719: $01 $82 $0d
    ld bc, $8201                                  ; $571c: $01 $01 $82
    ld bc, $0101                                  ; $571f: $01 $01 $01
    ld bc, $0101                                  ; $5722: $01 $01 $01
    ld bc, $4801                                  ; $5725: $01 $01 $48
    ld c, e                                       ; $5728: $4b
    ld c, h                                       ; $5729: $4c
    ld c, l                                       ; $572a: $4d
    ld c, d                                       ; $572b: $4a
    ld c, a                                       ; $572c: $4f
    ld d, b                                       ; $572d: $50
    ld d, c                                       ; $572e: $51
    db $d3                                        ; $572f: $d3
    ld d, e                                       ; $5730: $53
    ld d, h                                       ; $5731: $54
    db $d3                                        ; $5732: $d3
    db $d3                                        ; $5733: $d3
    ld d, l                                       ; $5734: $55
    ld d, [hl]                                    ; $5735: $56
    ei                                            ; $5736: $fb
    add d                                         ; $5737: $82
    add d                                         ; $5738: $82
    add d                                         ; $5739: $82
    add d                                         ; $573a: $82
    add d                                         ; $573b: $82
    add d                                         ; $573c: $82
    add d                                         ; $573d: $82
    add d                                         ; $573e: $82
    ld bc, $0303                                  ; $573f: $01 $03 $03
    ld bc, $0301                                  ; $5742: $01 $01 $03
    inc bc                                        ; $5745: $03
    ld bc, $d34e                                  ; $5746: $01 $4e $d3
    db $d3                                        ; $5749: $d3
    db $d3                                        ; $574a: $d3
    ld d, d                                       ; $574b: $52
    db $d3                                        ; $574c: $d3
    db $fd                                        ; $574d: $fd
    cp $d3                                        ; $574e: $fe $d3
    db $d3                                        ; $5750: $d3
    rst $38                                       ; $5751: $ff
    nop                                           ; $5752: $00
    pop de                                        ; $5753: $d1
    db $d3                                        ; $5754: $d3
    db $d3                                        ; $5755: $d3
    ld l, $82                                     ; $5756: $2e $82
    ld bc, $0101                                  ; $5758: $01 $01 $01
    add d                                         ; $575b: $82
    ld bc, $0101                                  ; $575c: $01 $01 $01
    ld bc, $0101                                  ; $575f: $01 $01 $01
    ld bc, $0101                                  ; $5762: $01 $01 $01
    ld bc, $4b23                                  ; $5765: $01 $23 $4b
    ld c, h                                       ; $5768: $4c
    ld c, l                                       ; $5769: $4d
    ld c, [hl]                                    ; $576a: $4e
    ld c, a                                       ; $576b: $4f
    ld d, b                                       ; $576c: $50
    ld d, c                                       ; $576d: $51
    ld d, d                                       ; $576e: $52
    ld d, e                                       ; $576f: $53
    ld d, h                                       ; $5770: $54
    db $d3                                        ; $5771: $d3
    db $fd                                        ; $5772: $fd
    ld d, l                                       ; $5773: $55
    ld d, [hl]                                    ; $5774: $56
    db $d3                                        ; $5775: $d3
    rst $38                                       ; $5776: $ff
    add d                                         ; $5777: $82
    add d                                         ; $5778: $82
    add d                                         ; $5779: $82
    add d                                         ; $577a: $82
    add d                                         ; $577b: $82
    add d                                         ; $577c: $82
    add d                                         ; $577d: $82
    add d                                         ; $577e: $82
    inc bc                                        ; $577f: $03
    inc bc                                        ; $5780: $03
    ld bc, $0301                                  ; $5781: $01 $01 $03
    inc bc                                        ; $5784: $03
    ld bc, $d301                                  ; $5785: $01 $01 $d3
    db $fc                                        ; $5788: $fc
    db $d3                                        ; $5789: $d3
    db $d3                                        ; $578a: $d3
    db $d3                                        ; $578b: $d3
    db $d3                                        ; $578c: $d3
    db $d3                                        ; $578d: $d3
    db $d3                                        ; $578e: $d3
    cp $d3                                        ; $578f: $fe $d3
    db $d3                                        ; $5791: $d3
    db $d3                                        ; $5792: $d3
    nop                                           ; $5793: $00
    db $d3                                        ; $5794: $d3
    ld l, $2f                                     ; $5795: $2e $2f
    ld bc, $0107                                  ; $5797: $01 $07 $01
    ld bc, $0101                                  ; $579a: $01 $01 $01
    ld bc, $0101                                  ; $579d: $01 $01 $01
    ld bc, $0101                                  ; $57a0: $01 $01 $01
    ld bc, $2301                                  ; $57a3: $01 $01 $23
    inc hl                                        ; $57a6: $23
    db $d3                                        ; $57a7: $d3
    db $d3                                        ; $57a8: $d3
    db $d3                                        ; $57a9: $d3
    db $d3                                        ; $57aa: $d3
    push af                                       ; $57ab: $f5
    db $d3                                        ; $57ac: $d3
    ld l, $2f                                     ; $57ad: $2e $2f
    ld l, $2f                                     ; $57af: $2e $2f
    ld [hl+], a                                   ; $57b1: $22
    ld a, [hl+]                                   ; $57b2: $2a
    jr jr_08a_57ce                                ; $57b3: $18 $19

    inc hl                                        ; $57b5: $23
    dec l                                         ; $57b6: $2d
    ld bc, $0101                                  ; $57b7: $01 $01 $01
    ld bc, $0101                                  ; $57ba: $01 $01 $01
    inc hl                                        ; $57bd: $23
    inc hl                                        ; $57be: $23
    inc hl                                        ; $57bf: $23
    inc hl                                        ; $57c0: $23
    inc bc                                        ; $57c1: $03
    inc bc                                        ; $57c2: $03
    inc bc                                        ; $57c3: $03
    inc bc                                        ; $57c4: $03
    inc bc                                        ; $57c5: $03
    inc bc                                        ; $57c6: $03
    ld l, $2f                                     ; $57c7: $2e $2f
    add hl, hl                                    ; $57c9: $29
    daa                                           ; $57ca: $27
    dec hl                                        ; $57cb: $2b
    inc l                                         ; $57cc: $2c
    ld [hl+], a                                   ; $57cd: $22

jr_08a_57ce:
    ld a, [hl+]                                   ; $57ce: $2a
    jr jr_08a_57ea                                ; $57cf: $18 $19

    inc hl                                        ; $57d1: $23
    dec l                                         ; $57d2: $2d
    ld b, $25                                     ; $57d3: $06 $25
    ld h, $2f                                     ; $57d5: $26 $2f
    inc hl                                        ; $57d7: $23
    inc hl                                        ; $57d8: $23
    inc bc                                        ; $57d9: $03
    inc bc                                        ; $57da: $03
    inc bc                                        ; $57db: $03
    inc bc                                        ; $57dc: $03
    inc bc                                        ; $57dd: $03
    inc bc                                        ; $57de: $03
    inc bc                                        ; $57df: $03
    inc bc                                        ; $57e0: $03
    inc bc                                        ; $57e1: $03
    inc bc                                        ; $57e2: $03
    inc bc                                        ; $57e3: $03
    inc bc                                        ; $57e4: $03
    inc bc                                        ; $57e5: $03
    ld b, e                                       ; $57e6: $43
    pop de                                        ; $57e7: $d1
    db $d3                                        ; $57e8: $d3
    db $fc                                        ; $57e9: $fc

jr_08a_57ea:
    db $d3                                        ; $57ea: $d3
    db $d3                                        ; $57eb: $d3
    db $d3                                        ; $57ec: $d3
    ld l, $2f                                     ; $57ed: $2e $2f
    db $d3                                        ; $57ef: $d3
    dec d                                         ; $57f0: $15
    ld [hl+], a                                   ; $57f1: $22
    ld a, [hl+]                                   ; $57f2: $2a
    rlca                                          ; $57f3: $07
    add hl, de                                    ; $57f4: $19
    inc hl                                        ; $57f5: $23
    dec l                                         ; $57f6: $2d
    ld bc, $0701                                  ; $57f7: $01 $01 $07
    ld bc, $0101                                  ; $57fa: $01 $01 $01
    inc hl                                        ; $57fd: $23
    inc hl                                        ; $57fe: $23
    ld bc, $0303                                  ; $57ff: $01 $03 $03
    inc bc                                        ; $5802: $03
    ld h, e                                       ; $5803: $63
    inc bc                                        ; $5804: $03
    inc bc                                        ; $5805: $03
    inc bc                                        ; $5806: $03
    ld l, $2f                                     ; $5807: $2e $2f
    ld h, $24                                     ; $5809: $26 $24
    add hl, bc                                    ; $580b: $09
    jr z, jr_08a_5837                             ; $580c: $28 $29

    daa                                           ; $580e: $27
    dec hl                                        ; $580f: $2b
    inc l                                         ; $5810: $2c
    ld [hl+], a                                   ; $5811: $22
    ld a, [hl+]                                   ; $5812: $2a
    jr @+$31                                      ; $5813: $18 $2f

    ld l, $d3                                     ; $5815: $2e $d3
    inc hl                                        ; $5817: $23
    inc hl                                        ; $5818: $23
    inc bc                                        ; $5819: $03
    inc bc                                        ; $581a: $03
    inc bc                                        ; $581b: $03
    inc bc                                        ; $581c: $03
    inc bc                                        ; $581d: $03
    inc bc                                        ; $581e: $03
    inc bc                                        ; $581f: $03
    inc bc                                        ; $5820: $03
    inc bc                                        ; $5821: $03
    inc bc                                        ; $5822: $03
    inc bc                                        ; $5823: $03
    ld b, e                                       ; $5824: $43
    ld b, e                                       ; $5825: $43
    ld bc, $2506                                  ; $5826: $01 $06 $25
    ld h, $24                                     ; $5829: $26 $24
    add hl, bc                                    ; $582b: $09
    jr z, jr_08a_5857                             ; $582c: $28 $29

    cpl                                           ; $582e: $2f
    dec hl                                        ; $582f: $2b
    cpl                                           ; $5830: $2f
    ld l, $d3                                     ; $5831: $2e $d3
    db $d3                                        ; $5833: $d3
    db $d3                                        ; $5834: $d3
    push af                                       ; $5835: $f5
    db $d3                                        ; $5836: $d3

jr_08a_5837:
    inc bc                                        ; $5837: $03
    inc bc                                        ; $5838: $03
    inc bc                                        ; $5839: $03
    inc bc                                        ; $583a: $03
    inc bc                                        ; $583b: $03
    inc bc                                        ; $583c: $03
    inc bc                                        ; $583d: $03
    ld b, e                                       ; $583e: $43
    inc bc                                        ; $583f: $03
    ld b, e                                       ; $5840: $43
    ld b, e                                       ; $5841: $43
    ld bc, $0101                                  ; $5842: $01 $01 $01
    ld bc, $0901                                  ; $5845: $01 $01 $09
    cpl                                           ; $5848: $2f
    ld l, $d3                                     ; $5849: $2e $d3
    ld l, $fd                                     ; $584b: $2e $fd
    cp $d3                                        ; $584d: $fe $d3
    db $d3                                        ; $584f: $d3
    rst $38                                       ; $5850: $ff
    nop                                           ; $5851: $00
    db $d3                                        ; $5852: $d3
    db $d3                                        ; $5853: $d3
    db $d3                                        ; $5854: $d3
    db $d3                                        ; $5855: $d3
    db $d3                                        ; $5856: $d3

jr_08a_5857:
    inc bc                                        ; $5857: $03
    ld b, e                                       ; $5858: $43
    ld b, e                                       ; $5859: $43
    ld bc, HeaderCGBFlag                          ; $585a: $01 $43 $01
    ld bc, $0101                                  ; $585d: $01 $01 $01
    ld bc, $0101                                  ; $5860: $01 $01 $01
    ld bc, $0101                                  ; $5863: $01 $01 $01
    ld bc, $e4e3                                  ; $5866: $01 $e3 $e4
    push hl                                       ; $5869: $e5
    ldh a, [$e7]                                  ; $586a: $f0 $e7
    add sp, -$17                                  ; $586c: $e8 $e9
    pop af                                        ; $586e: $f1
    db $eb                                        ; $586f: $eb
    db $ec                                        ; $5870: $ec
    ld a, [c]                                     ; $5871: $f2
    di                                            ; $5872: $f3
    db $d3                                        ; $5873: $d3
    db $f4                                        ; $5874: $f4
    db $d3                                        ; $5875: $d3
    db $d3                                        ; $5876: $d3
    add d                                         ; $5877: $82
    add d                                         ; $5878: $82
    add d                                         ; $5879: $82
    add d                                         ; $587a: $82
    add d                                         ; $587b: $82
    add d                                         ; $587c: $82
    add d                                         ; $587d: $82
    add d                                         ; $587e: $82
    add d                                         ; $587f: $82
    add d                                         ; $5880: $82
    add d                                         ; $5881: $82
    add d                                         ; $5882: $82
    ld bc, $0103                                  ; $5883: $01 $03 $01
    ld bc, $d3fc                                  ; $5886: $01 $fc $d3
    push af                                       ; $5889: $f5
    db $d3                                        ; $588a: $d3
    db $d3                                        ; $588b: $d3
    db $d3                                        ; $588c: $d3
    ld l, $2f                                     ; $588d: $2e $2f
    db $d3                                        ; $588f: $d3
    dec d                                         ; $5890: $15
    add hl, hl                                    ; $5891: $29
    daa                                           ; $5892: $27
    rlca                                          ; $5893: $07
    inc l                                         ; $5894: $2c
    ld [hl+], a                                   ; $5895: $22
    ld a, [hl+]                                   ; $5896: $2a
    rlca                                          ; $5897: $07
    ld bc, $0101                                  ; $5898: $01 $01 $01
    ld bc, $2301                                  ; $589b: $01 $01 $23
    inc hl                                        ; $589e: $23
    ld bc, $0303                                  ; $589f: $01 $03 $03
    inc bc                                        ; $58a2: $03
    ld h, e                                       ; $58a3: $63
    inc bc                                        ; $58a4: $03
    inc bc                                        ; $58a5: $03
    inc bc                                        ; $58a6: $03
    jr @+$1b                                      ; $58a7: $18 $19

    inc hl                                        ; $58a9: $23
    dec l                                         ; $58aa: $2d
    ld b, $25                                     ; $58ab: $06 $25
    cpl                                           ; $58ad: $2f
    ld l, $09                                     ; $58ae: $2e $09
    dec d                                         ; $58b0: $15
    db $d3                                        ; $58b1: $d3
    db $d3                                        ; $58b2: $d3
    ld l, $d3                                     ; $58b3: $2e $d3
    jp nc, $03d3                                  ; $58b5: $d2 $d3 $03

    inc bc                                        ; $58b8: $03
    inc bc                                        ; $58b9: $03
    inc bc                                        ; $58ba: $03
    inc bc                                        ; $58bb: $03
    inc bc                                        ; $58bc: $03
    ld b, e                                       ; $58bd: $43
    ld b, e                                       ; $58be: $43
    inc bc                                        ; $58bf: $03
    ld h, e                                       ; $58c0: $63
    ld bc, $4301                                  ; $58c1: $01 $01 $43
    ld bc, $0182                                  ; $58c4: $01 $82 $01
    db $d3                                        ; $58c7: $d3
    push de                                       ; $58c8: $d5
    sub $d5                                       ; $58c9: $d6 $d5
    db $fc                                        ; $58cb: $fc
    ret c                                         ; $58cc: $d8

    reti                                          ; $58cd: $d9


    jp c, $dcd3                                   ; $58ce: $da $d3 $dc

    db $dd                                        ; $58d1: $dd
    sbc $d4                                       ; $58d2: $de $d4
    ldh [$e1], a                                  ; $58d4: $e0 $e1
    ld [c], a                                     ; $58d6: $e2
    ld bc, $8282                                  ; $58d7: $01 $82 $82
    and d                                         ; $58da: $a2
    rlca                                          ; $58db: $07
    add d                                         ; $58dc: $82
    add d                                         ; $58dd: $82
    add d                                         ; $58de: $82
    ld bc, $8282                                  ; $58df: $01 $82 $82
    add d                                         ; $58e2: $82
    add d                                         ; $58e3: $82
    add d                                         ; $58e4: $82
    add d                                         ; $58e5: $82
    add d                                         ; $58e6: $82
    jp nc, $d3d3                                  ; $58e7: $d2 $d3 $d3

    call c, $d5d6                                 ; $58ea: $dc $d6 $d5
    call nc, $d9e0                                ; $58ed: $d4 $e0 $d9
    jp c, $e3d7                                   ; $58f0: $da $d7 $e3

    db $dd                                        ; $58f3: $dd
    sbc $db                                       ; $58f4: $de $db
    rst $20                                       ; $58f6: $e7
    add d                                         ; $58f7: $82
    ld bc, $8201                                  ; $58f8: $01 $01 $82
    add d                                         ; $58fb: $82
    and d                                         ; $58fc: $a2
    add d                                         ; $58fd: $82
    add d                                         ; $58fe: $82
    add d                                         ; $58ff: $82
    add d                                         ; $5900: $82
    add d                                         ; $5901: $82
    add d                                         ; $5902: $82
    add d                                         ; $5903: $82
    add d                                         ; $5904: $82
    add d                                         ; $5905: $82
    add d                                         ; $5906: $82
    db $dd                                        ; $5907: $dd
    sbc $d3                                       ; $5908: $de $d3
    db $d3                                        ; $590a: $d3
    pop hl                                        ; $590b: $e1
    ld [c], a                                     ; $590c: $e2
    db $d3                                        ; $590d: $d3
    db $d3                                        ; $590e: $d3
    db $e4                                        ; $590f: $e4
    push hl                                       ; $5910: $e5
    ldh a, [$d3]                                  ; $5911: $f0 $d3
    add sp, -$17                                  ; $5913: $e8 $e9
    pop af                                        ; $5915: $f1
    db $fc                                        ; $5916: $fc
    add d                                         ; $5917: $82
    add d                                         ; $5918: $82
    ld bc, $8201                                  ; $5919: $01 $01 $82
    add d                                         ; $591c: $82
    ld bc, $8201                                  ; $591d: $01 $01 $82
    add d                                         ; $5920: $82
    add d                                         ; $5921: $82
    ld bc, $8282                                  ; $5922: $01 $82 $82
    add d                                         ; $5925: $82
    rlca                                          ; $5926: $07
    ld [bc], a                                    ; $5927: $02
    inc bc                                        ; $5928: $03
    inc c                                         ; $5929: $0c
    ld sp, hl                                     ; $592a: $f9
    inc b                                         ; $592b: $04
    ld hl, $d302                                  ; $592c: $21 $02 $d3
    ld hl, sp-$07                                 ; $592f: $f8 $f9
    db $d3                                        ; $5931: $d3
    db $fd                                        ; $5932: $fd
    ld [bc], a                                    ; $5933: $02
    db $d3                                        ; $5934: $d3
    db $d3                                        ; $5935: $d3
    rst $38                                       ; $5936: $ff
    ld bc, $0101                                  ; $5937: $01 $01 $01
    ld bc, $0101                                  ; $593a: $01 $01 $01
    ld bc, $0101                                  ; $593d: $01 $01 $01
    ld bc, $0101                                  ; $5940: $01 $01 $01
    ld bc, $0101                                  ; $5943: $01 $01 $01
    ld bc, $d3d3                                  ; $5946: $01 $d3 $d3
    ei                                            ; $5949: $fb
    pop de                                        ; $594a: $d1
    db $d3                                        ; $594b: $d3
    db $fc                                        ; $594c: $fc
    db $d3                                        ; $594d: $d3
    db $d3                                        ; $594e: $d3
    cp $d3                                        ; $594f: $fe $d3
    ld d, a                                       ; $5951: $57
    db $d3                                        ; $5952: $d3
    nop                                           ; $5953: $00
    ld e, b                                       ; $5954: $58
    db $d3                                        ; $5955: $d3
    xor b                                         ; $5956: $a8
    ld bc, $0101                                  ; $5957: $01 $01 $01
    ld bc, $0701                                  ; $595a: $01 $01 $07
    ld bc, $0101                                  ; $595d: $01 $01 $01
    ld bc, HeaderSGBFlag                          ; $5960: $01 $46 $01
    ld bc, $0106                                  ; $5963: $01 $06 $01
    dec c                                         ; $5966: $0d
    pop hl                                        ; $5967: $e1
    ld [c], a                                     ; $5968: $e2
    rst $18                                       ; $5969: $df
    db $eb                                        ; $596a: $eb
    db $e4                                        ; $596b: $e4
    push hl                                       ; $596c: $e5
    ldh a, [$d3]                                  ; $596d: $f0 $d3
    add sp, -$17                                  ; $596f: $e8 $e9
    pop af                                        ; $5971: $f1
    db $d3                                        ; $5972: $d3
    db $ec                                        ; $5973: $ec
    ld a, [c]                                     ; $5974: $f2
    di                                            ; $5975: $f3
    push de                                       ; $5976: $d5
    add d                                         ; $5977: $82
    add d                                         ; $5978: $82
    add d                                         ; $5979: $82
    add d                                         ; $597a: $82
    add d                                         ; $597b: $82
    add d                                         ; $597c: $82
    add d                                         ; $597d: $82
    ld bc, $8282                                  ; $597e: $01 $82 $82
    add d                                         ; $5981: $82
    ld bc, $8282                                  ; $5982: $01 $82 $82
    add d                                         ; $5985: $82
    add d                                         ; $5986: $82
    db $ec                                        ; $5987: $ec
    ld a, [c]                                     ; $5988: $f2
    di                                            ; $5989: $f3
    db $d3                                        ; $598a: $d3
    db $f4                                        ; $598b: $f4
    db $d3                                        ; $598c: $d3
    db $d3                                        ; $598d: $d3
    db $d3                                        ; $598e: $d3
    jp nc, $d3d3                                  ; $598f: $d2 $d3 $d3

    ei                                            ; $5992: $fb
    sub $d5                                       ; $5993: $d6 $d5
    db $d3                                        ; $5995: $d3
    db $d3                                        ; $5996: $d3
    add d                                         ; $5997: $82
    add d                                         ; $5998: $82
    add d                                         ; $5999: $82
    ld bc, $0103                                  ; $599a: $01 $03 $01
    ld bc, $a201                                  ; $599d: $01 $01 $a2
    ld bc, $0101                                  ; $59a0: $01 $01 $01
    and d                                         ; $59a3: $a2
    and d                                         ; $59a4: $a2
    ld bc, $d301                                  ; $59a5: $01 $01 $d3
    push af                                       ; $59a8: $f5
    db $d3                                        ; $59a9: $d3
    db $d3                                        ; $59aa: $d3
    db $d3                                        ; $59ab: $d3
    db $d3                                        ; $59ac: $d3
    db $d3                                        ; $59ad: $d3
    ld hl, sp-$2f                                 ; $59ae: $f8 $d1
    db $d3                                        ; $59b0: $d3
    db $d3                                        ; $59b1: $d3
    db $d3                                        ; $59b2: $d3
    db $d3                                        ; $59b3: $d3
    db $d3                                        ; $59b4: $d3
    db $d3                                        ; $59b5: $d3
    push af                                       ; $59b6: $f5
    ld bc, $0101                                  ; $59b7: $01 $01 $01
    ld bc, $0101                                  ; $59ba: $01 $01 $01
    ld bc, $0101                                  ; $59bd: $01 $01 $01
    ld bc, $0101                                  ; $59c0: $01 $01 $01
    ld bc, $0101                                  ; $59c3: $01 $01 $01
    ld bc, $d3d3                                  ; $59c6: $01 $d3 $d3
    db $d3                                        ; $59c9: $d3
    db $d3                                        ; $59ca: $d3
    ld sp, hl                                     ; $59cb: $f9
    inc b                                         ; $59cc: $04
    ld bc, $d3f8                                  ; $59cd: $01 $f8 $d3
    ld hl, sp+$0d                                 ; $59d0: $f8 $0d
    ld c, $d3                                     ; $59d2: $0e $d3
    db $d3                                        ; $59d4: $d3
    ld a, [HeaderLogo]                            ; $59d5: $fa $04 $01
    ld bc, $0101                                  ; $59d8: $01 $01 $01
    ld bc, $0101                                  ; $59db: $01 $01 $01
    ld bc, $0101                                  ; $59de: $01 $01 $01
    ld bc, $0101                                  ; $59e1: $01 $01 $01
    ld bc, $0101                                  ; $59e4: $01 $01 $01
    db $f4                                        ; $59e7: $f4
    db $d3                                        ; $59e8: $d3
    db $d3                                        ; $59e9: $d3
    jp c, $d3d3                                   ; $59ea: $da $d3 $d3

    db $d3                                        ; $59ed: $d3
    sbc $d1                                       ; $59ee: $de $d1
    db $d3                                        ; $59f0: $d3
    jp nc, $d3e2                                  ; $59f1: $d2 $e2 $d3

    push de                                       ; $59f4: $d5
    sub b                                         ; $59f5: $90
    adc a                                         ; $59f6: $8f
    inc bc                                        ; $59f7: $03
    ld bc, $a201                                  ; $59f8: $01 $01 $a2
    ld bc, $0101                                  ; $59fb: $01 $01 $01
    and d                                         ; $59fe: $a2
    ld bc, $a201                                  ; $59ff: $01 $01 $a2
    and d                                         ; $5a02: $a2
    ld bc, $aa82                                  ; $5a03: $01 $82 $aa
    xor d                                         ; $5a06: $aa
    reti                                          ; $5a07: $d9


    ret c                                         ; $5a08: $d8

    db $d3                                        ; $5a09: $d3
    db $d3                                        ; $5a0a: $d3
    db $dd                                        ; $5a0b: $dd
    call c, $d1fb                                 ; $5a0c: $dc $fb $d1
    pop hl                                        ; $5a0f: $e1
    ldh [$d4], a                                  ; $5a10: $e0 $d4
    db $d3                                        ; $5a12: $d3
    db $e4                                        ; $5a13: $e4
    db $e3                                        ; $5a14: $e3
    rst $10                                       ; $5a15: $d7
    db $d3                                        ; $5a16: $d3
    and d                                         ; $5a17: $a2
    and d                                         ; $5a18: $a2
    ld bc, $a201                                  ; $5a19: $01 $01 $a2
    and d                                         ; $5a1c: $a2
    ld bc, $a201                                  ; $5a1d: $01 $01 $a2
    and d                                         ; $5a20: $a2
    and d                                         ; $5a21: $a2
    ld bc, $a2a2                                  ; $5a22: $01 $a2 $a2
    and d                                         ; $5a25: $a2
    ld bc, $421f                                  ; $5a26: $01 $1f $42
    ld l, h                                       ; $5a29: $6c
    ld b, l                                       ; $5a2a: $45
    db $d3                                        ; $5a2b: $d3
    ld e, $41                                     ; $5a2c: $1e $41
    ld b, d                                       ; $5a2e: $42
    db $d3                                        ; $5a2f: $d3
    db $fc                                        ; $5a30: $fc
    ld l, l                                       ; $5a31: $6d
    ld b, h                                       ; $5a32: $44
    jp nc, $d3d3                                  ; $5a33: $d2 $d3 $d3

    ld b, l                                       ; $5a36: $45
    ld bc, $0101                                  ; $5a37: $01 $01 $01
    ld bc, $0101                                  ; $5a3a: $01 $01 $01
    ld bc, $0101                                  ; $5a3d: $01 $01 $01
    rlca                                          ; $5a40: $07
    ld bc, $8201                                  ; $5a41: $01 $01 $82
    ld bc, $0101                                  ; $5a44: $01 $01 $01
    db $d3                                        ; $5a47: $d3
    db $d3                                        ; $5a48: $d3
    push af                                       ; $5a49: $f5
    db $d3                                        ; $5a4a: $d3
    ld l, h                                       ; $5a4b: $6c
    ld b, l                                       ; $5a4c: $45
    rra                                           ; $5a4d: $1f
    db $d3                                        ; $5a4e: $d3
    ld b, c                                       ; $5a4f: $41
    ld b, d                                       ; $5a50: $42
    ld l, l                                       ; $5a51: $6d
    ld e, $41                                     ; $5a52: $1e $41
    ld b, d                                       ; $5a54: $42
    ld b, e                                       ; $5a55: $43
    ld b, l                                       ; $5a56: $45
    ld bc, $0101                                  ; $5a57: $01 $01 $01
    ld bc, $0101                                  ; $5a5a: $01 $01 $01
    ld bc, $0101                                  ; $5a5d: $01 $01 $01
    ld bc, $0101                                  ; $5a60: $01 $01 $01
    ld bc, $0101                                  ; $5a63: $01 $01 $01
    ld bc, $dad3                                  ; $5a66: $01 $d3 $da
    reti                                          ; $5a69: $d9


    sub c                                         ; $5a6a: $91
    db $d3                                        ; $5a6b: $d3
    sbc $dd                                       ; $5a6c: $de $dd
    sub d                                         ; $5a6e: $92
    adc d                                         ; $5a6f: $8a
    ld [c], a                                     ; $5a70: $e2
    pop hl                                        ; $5a71: $e1
    ldh [$f0], a                                  ; $5a72: $e0 $f0
    push hl                                       ; $5a74: $e5
    db $e4                                        ; $5a75: $e4
    db $e3                                        ; $5a76: $e3
    ld bc, $a2a2                                  ; $5a77: $01 $a2 $a2
    xor d                                         ; $5a7a: $aa
    ld bc, $a2a2                                  ; $5a7b: $01 $a2 $a2
    xor d                                         ; $5a7e: $aa
    adc d                                         ; $5a7f: $8a
    and d                                         ; $5a80: $a2
    and d                                         ; $5a81: $a2
    and d                                         ; $5a82: $a2
    and d                                         ; $5a83: $a2
    and d                                         ; $5a84: $a2
    and d                                         ; $5a85: $a2
    and d                                         ; $5a86: $a2
    add sp, -$19                                  ; $5a87: $e8 $e7
    db $db                                        ; $5a89: $db
    push de                                       ; $5a8a: $d5
    db $ec                                        ; $5a8b: $ec
    db $eb                                        ; $5a8c: $eb
    rst $18                                       ; $5a8d: $df
    ret c                                         ; $5a8e: $d8

    sub e                                         ; $5a8f: $93
    adc d                                         ; $5a90: $8a
    db $d3                                        ; $5a91: $d3
    call c, $d38b                                 ; $5a92: $dc $8b $d3
    call nc, $a2e0                                ; $5a95: $d4 $e0 $a2
    and d                                         ; $5a98: $a2
    and d                                         ; $5a99: $a2
    add d                                         ; $5a9a: $82
    and d                                         ; $5a9b: $a2
    and d                                         ; $5a9c: $a2
    and d                                         ; $5a9d: $a2
    add d                                         ; $5a9e: $82
    dec hl                                        ; $5a9f: $2b
    ld a, [bc]                                    ; $5aa0: $0a
    ld bc, $aa82                                  ; $5aa1: $01 $82 $aa
    ld bc, $8282                                  ; $5aa4: $01 $82 $82
    sub $d5                                       ; $5aa7: $d6 $d5
    db $d3                                        ; $5aa9: $d3
    db $d3                                        ; $5aaa: $d3
    reti                                          ; $5aab: $d9


    jp c, $d3d3                                   ; $5aac: $da $d3 $d3

    db $dd                                        ; $5aaf: $dd
    sbc $d3                                       ; $5ab0: $de $d3
    db $fd                                        ; $5ab2: $fd
    pop hl                                        ; $5ab3: $e1
    ld [c], a                                     ; $5ab4: $e2
    db $d3                                        ; $5ab5: $d3
    rst $38                                       ; $5ab6: $ff
    add d                                         ; $5ab7: $82
    and d                                         ; $5ab8: $a2
    ld bc, $8201                                  ; $5ab9: $01 $01 $82
    add d                                         ; $5abc: $82
    ld bc, $8201                                  ; $5abd: $01 $01 $82
    add d                                         ; $5ac0: $82
    ld bc, $8201                                  ; $5ac1: $01 $01 $82
    add d                                         ; $5ac4: $82
    ld bc, $6c01                                  ; $5ac5: $01 $01 $6c
    ld b, h                                       ; $5ac8: $44
    ld b, c                                       ; $5ac9: $41
    ld b, d                                       ; $5aca: $42
    db $d3                                        ; $5acb: $d3
    ld b, b                                       ; $5acc: $40
    ld l, l                                       ; $5acd: $6d
    ld b, h                                       ; $5ace: $44
    cp $d3                                        ; $5acf: $fe $d3
    ld l, h                                       ; $5ad1: $6c
    ld b, l                                       ; $5ad2: $45
    nop                                           ; $5ad3: $00
    db $d3                                        ; $5ad4: $d3
    db $d3                                        ; $5ad5: $d3
    db $d3                                        ; $5ad6: $d3
    ld bc, $0101                                  ; $5ad7: $01 $01 $01
    ld bc, $0101                                  ; $5ada: $01 $01 $01
    ld bc, $0101                                  ; $5add: $01 $01 $01
    ld bc, $0101                                  ; $5ae0: $01 $01 $01
    ld bc, $0101                                  ; $5ae3: $01 $01 $01
    ld bc, $6cd3                                  ; $5ae6: $01 $d3 $6c
    ld b, l                                       ; $5ae9: $45
    ld l, l                                       ; $5aea: $6d
    ld d, a                                       ; $5aeb: $57
    db $d3                                        ; $5aec: $d3
    db $d3                                        ; $5aed: $d3
    ld l, h                                       ; $5aee: $6c
    ld e, c                                       ; $5aef: $59
    db $d3                                        ; $5af0: $d3
    xor b                                         ; $5af1: $a8
    db $d3                                        ; $5af2: $d3
    db $d3                                        ; $5af3: $d3
    db $fc                                        ; $5af4: $fc
    db $d3                                        ; $5af5: $d3
    ld e, c                                       ; $5af6: $59
    ld bc, $0101                                  ; $5af7: $01 $01 $01
    ld bc, $0106                                  ; $5afa: $01 $06 $01
    ld bc, $0501                                  ; $5afd: $01 $01 $05
    ld bc, $010d                                  ; $5b00: $01 $0d $01
    ld bc, $0107                                  ; $5b03: $01 $07 $01
    ld b, $6b                                     ; $5b06: $06 $6b
    rra                                           ; $5b08: $1f
    ld b, c                                       ; $5b09: $41
    ld b, d                                       ; $5b0a: $42
    ld b, l                                       ; $5b0b: $45
    ld b, [hl]                                    ; $5b0c: $46
    ld e, $44                                     ; $5b0d: $1e $44
    ld b, b                                       ; $5b0f: $40
    ld l, h                                       ; $5b10: $6c
    ld b, l                                       ; $5b11: $45
    ld l, l                                       ; $5b12: $6d
    db $d3                                        ; $5b13: $d3
    rra                                           ; $5b14: $1f
    db $d3                                        ; $5b15: $d3
    ld l, h                                       ; $5b16: $6c
    ld bc, $0101                                  ; $5b17: $01 $01 $01
    ld bc, $0101                                  ; $5b1a: $01 $01 $01
    ld bc, $0101                                  ; $5b1d: $01 $01 $01
    ld bc, $0101                                  ; $5b20: $01 $01 $01
    ld bc, $0101                                  ; $5b23: $01 $01 $01
    ld bc, $4643                                  ; $5b26: $01 $43 $46
    ld l, e                                       ; $5b29: $6b
    ld b, h                                       ; $5b2a: $44
    ld b, c                                       ; $5b2b: $41
    ld b, d                                       ; $5b2c: $42
    ld b, e                                       ; $5b2d: $43
    ld l, l                                       ; $5b2e: $6d
    ld e, $1f                                     ; $5b2f: $1e $1f
    ld b, b                                       ; $5b31: $40
    ld l, h                                       ; $5b32: $6c
    db $d3                                        ; $5b33: $d3
    ld l, l                                       ; $5b34: $6d
    db $d3                                        ; $5b35: $d3
    rra                                           ; $5b36: $1f
    ld bc, $0101                                  ; $5b37: $01 $01 $01
    ld bc, $0101                                  ; $5b3a: $01 $01 $01
    ld bc, $0101                                  ; $5b3d: $01 $01 $01
    ld bc, $0101                                  ; $5b40: $01 $01 $01
    ld bc, $0101                                  ; $5b43: $01 $01 $01
    ld bc, $6c41                                  ; $5b46: $01 $41 $6c
    ld b, l                                       ; $5b49: $45
    ld l, l                                       ; $5b4a: $6d
    ld e, $1f                                     ; $5b4b: $1e $1f
    db $d3                                        ; $5b4d: $d3
    ld l, h                                       ; $5b4e: $6c
    ld b, l                                       ; $5b4f: $45
    db $d3                                        ; $5b50: $d3
    ld e, $d3                                     ; $5b51: $1e $d3
    db $d3                                        ; $5b53: $d3
    ld l, h                                       ; $5b54: $6c
    db $d3                                        ; $5b55: $d3
    db $d3                                        ; $5b56: $d3
    ld bc, $0101                                  ; $5b57: $01 $01 $01
    ld bc, $0101                                  ; $5b5a: $01 $01 $01
    ld bc, $0101                                  ; $5b5d: $01 $01 $01
    ld bc, $0101                                  ; $5b60: $01 $01 $01
    ld bc, $0101                                  ; $5b63: $01 $01 $01
    ld bc, $d3d3                                  ; $5b66: $01 $d3 $d3
    ld e, b                                       ; $5b69: $58
    db $d3                                        ; $5b6a: $d3
    ld sp, hl                                     ; $5b6b: $f9
    inc b                                         ; $5b6c: $04
    ld bc, $03d3                                  ; $5b6d: $01 $d3 $03
    inc c                                         ; $5b70: $0c
    ld sp, hl                                     ; $5b71: $f9
    inc b                                         ; $5b72: $04
    ld hl, $0d20                                  ; $5b73: $21 $20 $0d
    inc c                                         ; $5b76: $0c
    ld bc, $0601                                  ; $5b77: $01 $01 $06
    ld bc, $0101                                  ; $5b7a: $01 $01 $01
    ld bc, $0101                                  ; $5b7d: $01 $01 $01
    ld bc, $0101                                  ; $5b80: $01 $01 $01
    ld bc, $0101                                  ; $5b83: $01 $01 $01
    ld bc, $d357                                  ; $5b86: $01 $57 $d3
    ld e, b                                       ; $5b89: $58
    ld d, a                                       ; $5b8a: $57
    db $d3                                        ; $5b8b: $d3
    xor b                                         ; $5b8c: $a8
    db $d3                                        ; $5b8d: $d3
    ei                                            ; $5b8e: $fb
    ld bc, $f9f8                                  ; $5b8f: $01 $f8 $f9
    db $d3                                        ; $5b92: $d3
    ld hl, $fa02                                  ; $5b93: $21 $02 $fa
    ld hl, sp+$05                                 ; $5b96: $f8 $05
    ld bc, $0505                                  ; $5b98: $01 $05 $05
    ld bc, $010d                                  ; $5b9b: $01 $0d $01
    ld bc, $0101                                  ; $5b9e: $01 $01 $01
    ld bc, $0101                                  ; $5ba1: $01 $01 $01
    ld bc, $0101                                  ; $5ba4: $01 $01 $01
    db $d3                                        ; $5ba7: $d3
    ld e, c                                       ; $5ba8: $59
    db $d3                                        ; $5ba9: $d3
    db $d3                                        ; $5baa: $d3
    pop de                                        ; $5bab: $d1
    db $d3                                        ; $5bac: $d3
    ld e, b                                       ; $5bad: $58
    db $d3                                        ; $5bae: $d3
    db $d3                                        ; $5baf: $d3
    db $d3                                        ; $5bb0: $d3
    db $fc                                        ; $5bb1: $fc
    ld d, a                                       ; $5bb2: $57
    ld sp, hl                                     ; $5bb3: $f9
    db $d3                                        ; $5bb4: $d3
    db $d3                                        ; $5bb5: $d3
    db $d3                                        ; $5bb6: $d3
    ld bc, $0106                                  ; $5bb7: $01 $06 $01
    ld bc, $0101                                  ; $5bba: $01 $01 $01
    dec b                                         ; $5bbd: $05
    ld bc, $0101                                  ; $5bbe: $01 $01 $01
    rlca                                          ; $5bc1: $07
    ld b, [hl]                                    ; $5bc2: $46
    ld bc, $0101                                  ; $5bc3: $01 $01 $01
    ld bc, $d39a                                  ; $5bc6: $01 $9a $d3
    db $fc                                        ; $5bc9: $fc
    db $d3                                        ; $5bca: $d3
    db $d3                                        ; $5bcb: $d3
    db $d3                                        ; $5bcc: $d3
    db $d3                                        ; $5bcd: $d3
    db $d3                                        ; $5bce: $d3
    db $d3                                        ; $5bcf: $d3
    db $d3                                        ; $5bd0: $d3
    db $d3                                        ; $5bd1: $d3
    ld l, h                                       ; $5bd2: $6c
    ld e, c                                       ; $5bd3: $59
    ld l, l                                       ; $5bd4: $6d
    ld e, $1f                                     ; $5bd5: $1e $1f
    dec c                                         ; $5bd7: $0d
    ld bc, $0107                                  ; $5bd8: $01 $07 $01
    ld bc, $0101                                  ; $5bdb: $01 $01 $01
    ld bc, $0101                                  ; $5bde: $01 $01 $01
    ld bc, $0501                                  ; $5be1: $01 $01 $05
    ld bc, $0101                                  ; $5be4: $01 $01 $01
    ld sp, hl                                     ; $5be7: $f9
    inc b                                         ; $5be8: $04
    inc bc                                        ; $5be9: $03
    jr nz, @-$2b                                  ; $5bea: $20 $d3

    db $d3                                        ; $5bec: $d3
    ld sp, hl                                     ; $5bed: $f9
    inc b                                         ; $5bee: $04
    rra                                           ; $5bef: $1f
    ld b, b                                       ; $5bf0: $40
    db $d3                                        ; $5bf1: $d3
    db $d3                                        ; $5bf2: $d3
    ld l, e                                       ; $5bf3: $6b
    ld e, $1f                                     ; $5bf4: $1e $1f
    ld b, b                                       ; $5bf6: $40
    ld bc, $0101                                  ; $5bf7: $01 $01 $01
    ld bc, $0101                                  ; $5bfa: $01 $01 $01
    ld bc, $0101                                  ; $5bfd: $01 $01 $01
    ld bc, $0101                                  ; $5c00: $01 $01 $01
    ld bc, $0101                                  ; $5c03: $01 $01 $01
    ld bc, $0e0d                                  ; $5c06: $01 $0d $0e
    inc bc                                        ; $5c09: $03
    inc c                                         ; $5c0a: $0c
    inc bc                                        ; $5c0b: $03
    inc c                                         ; $5c0c: $0c
    ld hl, $f920                                  ; $5c0d: $21 $20 $f9
    ld [bc], a                                    ; $5c10: $02
    dec c                                         ; $5c11: $0d
    ld c, $d3                                     ; $5c12: $0e $d3
    db $d3                                        ; $5c14: $d3
    db $d3                                        ; $5c15: $d3
    ld [bc], a                                    ; $5c16: $02
    ld bc, $0101                                  ; $5c17: $01 $01 $01
    ld bc, $0101                                  ; $5c1a: $01 $01 $01
    ld bc, $0101                                  ; $5c1d: $01 $01 $01
    ld bc, $0101                                  ; $5c20: $01 $01 $01
    ld bc, $0101                                  ; $5c23: $01 $01 $01
    ld bc, $f8fa                                  ; $5c26: $01 $fa $f8
    ld sp, hl                                     ; $5c29: $f9
    db $d3                                        ; $5c2a: $d3
    dec c                                         ; $5c2b: $0d
    ld c, $fa                                     ; $5c2c: $0e $fa
    ld sp, hl                                     ; $5c2e: $f9
    inc bc                                        ; $5c2f: $03
    inc c                                         ; $5c30: $0c
    ld hl, $fafa                                  ; $5c31: $21 $fa $fa
    jr nz, @+$0f                                  ; $5c34: $20 $0d

    ld c, $01                                     ; $5c36: $0e $01
    ld bc, $0101                                  ; $5c38: $01 $01 $01
    ld bc, $0101                                  ; $5c3b: $01 $01 $01
    ld bc, $0101                                  ; $5c3e: $01 $01 $01
    ld bc, $0101                                  ; $5c41: $01 $01 $01
    ld bc, $0101                                  ; $5c44: $01 $01 $01
    db $d3                                        ; $5c47: $d3
    db $d3                                        ; $5c48: $d3
    db $d3                                        ; $5c49: $d3
    ld l, l                                       ; $5c4a: $6d
    db $d3                                        ; $5c4b: $d3
    db $d3                                        ; $5c4c: $d3
    db $d3                                        ; $5c4d: $d3
    db $d3                                        ; $5c4e: $d3
    ld hl, sp-$2d                                 ; $5c4f: $f8 $d3
    ei                                            ; $5c51: $fb
    pop de                                        ; $5c52: $d1
    inc bc                                        ; $5c53: $03
    ld a, [$fcd3]                                 ; $5c54: $fa $d3 $fc
    ld bc, $0101                                  ; $5c57: $01 $01 $01
    ld bc, $0101                                  ; $5c5a: $01 $01 $01
    ld bc, $0101                                  ; $5c5d: $01 $01 $01
    ld bc, $0101                                  ; $5c60: $01 $01 $01
    ld bc, $0101                                  ; $5c63: $01 $01 $01
    rlca                                          ; $5c66: $07
    ld l, h                                       ; $5c67: $6c
    ld b, [hl]                                    ; $5c68: $46
    ld l, l                                       ; $5c69: $6d
    ld e, $41                                     ; $5c6a: $1e $41
    ld b, b                                       ; $5c6c: $40
    ld b, e                                       ; $5c6d: $43
    ld b, l                                       ; $5c6e: $45
    ld l, l                                       ; $5c6f: $6d
    ld b, h                                       ; $5c70: $44
    ld b, c                                       ; $5c71: $41
    ld b, d                                       ; $5c72: $42
    ld l, h                                       ; $5c73: $6c
    ld b, l                                       ; $5c74: $45
    ld l, l                                       ; $5c75: $6d
    ld b, h                                       ; $5c76: $44
    ld bc, $0101                                  ; $5c77: $01 $01 $01
    ld bc, $0101                                  ; $5c7a: $01 $01 $01
    ld bc, $0101                                  ; $5c7d: $01 $01 $01
    ld bc, $0101                                  ; $5c80: $01 $01 $01
    ld bc, $0101                                  ; $5c83: $01 $01 $01
    ld bc, $d31f                                  ; $5c86: $01 $1f $d3
    db $d3                                        ; $5c89: $d3
    db $fd                                        ; $5c8a: $fd
    ld l, e                                       ; $5c8b: $6b
    ld e, $d3                                     ; $5c8c: $1e $d3
    rst $38                                       ; $5c8e: $ff
    ld l, h                                       ; $5c8f: $6c
    ld b, [hl]                                    ; $5c90: $46
    ld l, l                                       ; $5c91: $6d
    db $d3                                        ; $5c92: $d3
    ld b, c                                       ; $5c93: $41
    ld b, d                                       ; $5c94: $42
    ld b, e                                       ; $5c95: $43
    ld b, l                                       ; $5c96: $45
    ld bc, $0101                                  ; $5c97: $01 $01 $01
    ld bc, $0101                                  ; $5c9a: $01 $01 $01
    ld bc, $0101                                  ; $5c9d: $01 $01 $01
    ld bc, $0101                                  ; $5ca0: $01 $01 $01
    ld bc, $0101                                  ; $5ca3: $01 $01 $01
    ld bc, $d3fe                                  ; $5ca6: $01 $fe $d3
    ld hl, sp-$07                                 ; $5ca9: $f8 $f9
    nop                                           ; $5cab: $00
    db $d3                                        ; $5cac: $d3
    ld e, b                                       ; $5cad: $58
    db $d3                                        ; $5cae: $d3
    and a                                         ; $5caf: $a7
    db $d3                                        ; $5cb0: $d3
    push af                                       ; $5cb1: $f5
    db $d3                                        ; $5cb2: $d3
    db $d3                                        ; $5cb3: $d3
    db $d3                                        ; $5cb4: $d3
    db $d3                                        ; $5cb5: $d3
    ld e, b                                       ; $5cb6: $58
    ld bc, $0101                                  ; $5cb7: $01 $01 $01
    ld bc, $0101                                  ; $5cba: $01 $01 $01
    dec b                                         ; $5cbd: $05
    ld bc, $010d                                  ; $5cbe: $01 $0d $01
    ld bc, $0101                                  ; $5cc1: $01 $01 $01
    ld bc, $0601                                  ; $5cc4: $01 $01 $06
    ld hl, $0220                                  ; $5cc7: $21 $20 $02
    db $d3                                        ; $5cca: $d3
    ld hl, sp-$07                                 ; $5ccb: $f8 $f9
    inc bc                                        ; $5ccd: $03
    ld bc, $57d3                                  ; $5cce: $01 $d3 $57
    db $d3                                        ; $5cd1: $d3
    ld sp, hl                                     ; $5cd2: $f9
    db $d3                                        ; $5cd3: $d3
    ei                                            ; $5cd4: $fb
    pop de                                        ; $5cd5: $d1
    db $d3                                        ; $5cd6: $d3
    ld bc, $0101                                  ; $5cd7: $01 $01 $01
    ld bc, $0101                                  ; $5cda: $01 $01 $01
    ld bc, $0101                                  ; $5cdd: $01 $01 $01
    ld b, l                                       ; $5ce0: $45
    ld bc, $0101                                  ; $5ce1: $01 $01 $01
    ld bc, $0101                                  ; $5ce4: $01 $01 $01
    ld e, $d3                                     ; $5ce7: $1e $d3
    db $d3                                        ; $5ce9: $d3
    db $d3                                        ; $5cea: $d3
    db $d3                                        ; $5ceb: $d3
    db $d3                                        ; $5cec: $d3
    push af                                       ; $5ced: $f5
    db $d3                                        ; $5cee: $d3
    db $d3                                        ; $5cef: $d3
    db $d3                                        ; $5cf0: $d3
    db $d3                                        ; $5cf1: $d3
    ei                                            ; $5cf2: $fb
    db $d3                                        ; $5cf3: $d3
    ld [bc], a                                    ; $5cf4: $02
    ld c, $f8                                     ; $5cf5: $0e $f8
    ld bc, $0101                                  ; $5cf7: $01 $01 $01
    ld bc, $0101                                  ; $5cfa: $01 $01 $01
    ld bc, $0101                                  ; $5cfd: $01 $01 $01
    ld bc, $0101                                  ; $5d00: $01 $01 $01
    ld bc, $0101                                  ; $5d03: $01 $01 $01
    ld bc, $ffd3                                  ; $5d06: $01 $d3 $ff
    nop                                           ; $5d09: $00
    db $fd                                        ; $5d0a: $fd
    db $d3                                        ; $5d0b: $d3
    db $d3                                        ; $5d0c: $d3
    db $d3                                        ; $5d0d: $d3
    rst $38                                       ; $5d0e: $ff
    pop de                                        ; $5d0f: $d1
    db $d3                                        ; $5d10: $d3
    db $fd                                        ; $5d11: $fd
    cp $0c                                        ; $5d12: $fe $0c
    inc b                                         ; $5d14: $04
    rst $38                                       ; $5d15: $ff
    nop                                           ; $5d16: $00
    ld bc, $0101                                  ; $5d17: $01 $01 $01
    ld bc, $0101                                  ; $5d1a: $01 $01 $01
    ld bc, $0101                                  ; $5d1d: $01 $01 $01
    ld bc, $0101                                  ; $5d20: $01 $01 $01
    ld bc, $0101                                  ; $5d23: $01 $01 $01
    ld bc, $53fe                                  ; $5d26: $01 $fe $53
    ld d, h                                       ; $5d29: $54
    db $fd                                        ; $5d2a: $fd
    nop                                           ; $5d2b: $00
    ld d, l                                       ; $5d2c: $55
    ld d, [hl]                                    ; $5d2d: $56
    rst $38                                       ; $5d2e: $ff
    db $d3                                        ; $5d2f: $d3
    jr nc, jr_08a_5d63                            ; $5d30: $30 $31

    ld [hl-], a                                   ; $5d32: $32
    inc sp                                        ; $5d33: $33
    inc [hl]                                      ; $5d34: $34
    dec [hl]                                      ; $5d35: $35
    ld [hl], $01                                  ; $5d36: $36 $01
    inc bc                                        ; $5d38: $03
    inc bc                                        ; $5d39: $03
    ld bc, $0301                                  ; $5d3a: $01 $01 $03
    inc bc                                        ; $5d3d: $03
    ld bc, $8201                                  ; $5d3e: $01 $01 $82
    add d                                         ; $5d41: $82
    add d                                         ; $5d42: $82
    add d                                         ; $5d43: $82
    add d                                         ; $5d44: $82
    add d                                         ; $5d45: $82
    add d                                         ; $5d46: $82
    cp $d3                                        ; $5d47: $fe $d3
    ei                                            ; $5d49: $fb
    pop de                                        ; $5d4a: $d1
    nop                                           ; $5d4b: $00
    db $d3                                        ; $5d4c: $d3
    db $d3                                        ; $5d4d: $d3
    db $d3                                        ; $5d4e: $d3
    dec sp                                        ; $5d4f: $3b
    ld [bc], a                                    ; $5d50: $02
    ld sp, hl                                     ; $5d51: $f9
    db $d3                                        ; $5d52: $d3
    inc a                                         ; $5d53: $3c
    dec a                                         ; $5d54: $3d
    ld c, $f8                                     ; $5d55: $0e $f8
    ld bc, $0101                                  ; $5d57: $01 $01 $01
    ld bc, $0101                                  ; $5d5a: $01 $01 $01
    ld bc, $8201                                  ; $5d5d: $01 $01 $82
    ld bc, $0101                                  ; $5d60: $01 $01 $01

jr_08a_5d63:
    add d                                         ; $5d63: $82
    add d                                         ; $5d64: $82
    ld bc, $d301                                  ; $5d65: $01 $01 $d3
    db $fd                                        ; $5d68: $fd
    cp $d3                                        ; $5d69: $fe $d3
    db $d3                                        ; $5d6b: $d3
    rst $38                                       ; $5d6c: $ff
    nop                                           ; $5d6d: $00
    db $d3                                        ; $5d6e: $d3
    ld b, l                                       ; $5d6f: $45
    ld l, l                                       ; $5d70: $6d
    ld e, $d3                                     ; $5d71: $1e $d3
    ld b, c                                       ; $5d73: $41
    ld b, d                                       ; $5d74: $42
    ld b, e                                       ; $5d75: $43
    rra                                           ; $5d76: $1f
    ld bc, $0101                                  ; $5d77: $01 $01 $01
    ld bc, $0101                                  ; $5d7a: $01 $01 $01
    ld bc, $0101                                  ; $5d7d: $01 $01 $01
    ld bc, $0101                                  ; $5d80: $01 $01 $01
    ld bc, $0101                                  ; $5d83: $01 $01 $01
    ld bc, $0dfa                                  ; $5d86: $01 $fa $0d
    ld c, $03                                     ; $5d89: $0e $03
    db $d3                                        ; $5d8b: $d3
    db $d3                                        ; $5d8c: $d3
    db $fd                                        ; $5d8d: $fd
    cp $d3                                        ; $5d8e: $fe $d3
    db $d3                                        ; $5d90: $d3
    rst $38                                       ; $5d91: $ff
    nop                                           ; $5d92: $00
    ld b, b                                       ; $5d93: $40
    db $d3                                        ; $5d94: $d3
    push af                                       ; $5d95: $f5
    db $d3                                        ; $5d96: $d3
    ld bc, $0101                                  ; $5d97: $01 $01 $01
    ld bc, $0101                                  ; $5d9a: $01 $01 $01
    ld bc, $0101                                  ; $5d9d: $01 $01 $01
    ld bc, $0101                                  ; $5da0: $01 $01 $01
    ld bc, $0101                                  ; $5da3: $01 $01 $01
    ld bc, $3837                                  ; $5da6: $01 $37 $38
    add hl, sp                                    ; $5da9: $39
    ld a, [hl-]                                   ; $5daa: $3a
    ld b, a                                       ; $5dab: $47
    ld c, b                                       ; $5dac: $48
    ld c, e                                       ; $5dad: $4b
    ld c, h                                       ; $5dae: $4c
    ld c, c                                       ; $5daf: $49
    ld c, d                                       ; $5db0: $4a
    ld c, a                                       ; $5db1: $4f
    ld d, b                                       ; $5db2: $50
    db $d3                                        ; $5db3: $d3
    ld hl, sp+$53                                 ; $5db4: $f8 $53
    ld d, h                                       ; $5db6: $54
    add d                                         ; $5db7: $82
    add d                                         ; $5db8: $82
    add d                                         ; $5db9: $82
    add d                                         ; $5dba: $82
    add d                                         ; $5dbb: $82
    add d                                         ; $5dbc: $82
    add d                                         ; $5dbd: $82
    add d                                         ; $5dbe: $82
    add d                                         ; $5dbf: $82
    add d                                         ; $5dc0: $82
    add d                                         ; $5dc1: $82
    add d                                         ; $5dc2: $82
    ld bc, $0301                                  ; $5dc3: $01 $01 $03
    inc bc                                        ; $5dc6: $03
    ld a, $3f                                     ; $5dc7: $3e $3f
    db $fd                                        ; $5dc9: $fd
    cp $4d                                        ; $5dca: $fe $4d
    ld c, [hl]                                    ; $5dcc: $4e
    rst $38                                       ; $5dcd: $ff
    nop                                           ; $5dce: $00
    ld d, c                                       ; $5dcf: $51
    ld d, d                                       ; $5dd0: $52
    jr nc, @+$33                                  ; $5dd1: $30 $31

    ld bc, $3433                                  ; $5dd3: $01 $33 $34
    dec [hl]                                      ; $5dd6: $35
    add d                                         ; $5dd7: $82
    add d                                         ; $5dd8: $82
    ld bc, $8201                                  ; $5dd9: $01 $01 $82
    add d                                         ; $5ddc: $82
    ld bc, $8201                                  ; $5ddd: $01 $01 $82
    add d                                         ; $5de0: $82
    add d                                         ; $5de1: $82
    add d                                         ; $5de2: $82
    ld bc, $8282                                  ; $5de3: $01 $82 $82
    add d                                         ; $5de6: $82
    ld e, $1f                                     ; $5de7: $1e $1f
    ld b, c                                       ; $5de9: $41
    ld b, d                                       ; $5dea: $42
    db $d3                                        ; $5deb: $d3
    ld l, l                                       ; $5dec: $6d
    ld e, $6c                                     ; $5ded: $1e $6c
    db $d3                                        ; $5def: $d3
    db $d3                                        ; $5df0: $d3
    ld b, l                                       ; $5df1: $45
    rra                                           ; $5df2: $1f
    db $d3                                        ; $5df3: $d3
    rra                                           ; $5df4: $1f
    db $d3                                        ; $5df5: $d3
    ld l, l                                       ; $5df6: $6d
    ld bc, $0101                                  ; $5df7: $01 $01 $01
    ld bc, $0101                                  ; $5dfa: $01 $01 $01
    ld bc, $0101                                  ; $5dfd: $01 $01 $01
    ld bc, $0101                                  ; $5e00: $01 $01 $01
    ld bc, $0101                                  ; $5e03: $01 $01 $01
    ld bc, $4643                                  ; $5e06: $01 $43 $46
    ld b, b                                       ; $5e09: $40
    ld l, h                                       ; $5e0a: $6c
    ld b, c                                       ; $5e0b: $41
    ld b, d                                       ; $5e0c: $42
    ld l, e                                       ; $5e0d: $6b
    ld b, h                                       ; $5e0e: $44
    ld b, b                                       ; $5e0f: $40
    ld b, h                                       ; $5e10: $44
    ld b, e                                       ; $5e11: $43
    ld l, l                                       ; $5e12: $6d
    ld e, $1f                                     ; $5e13: $1e $1f
    ld b, c                                       ; $5e15: $41
    ld b, d                                       ; $5e16: $42
    ld bc, $0101                                  ; $5e17: $01 $01 $01
    ld bc, $0101                                  ; $5e1a: $01 $01 $01
    ld bc, $0101                                  ; $5e1d: $01 $01 $01
    ld bc, $0101                                  ; $5e20: $01 $01 $01
    ld bc, $0101                                  ; $5e23: $01 $01 $01
    ld bc, $fcd3                                  ; $5e26: $01 $d3 $fc
    ld d, l                                       ; $5e29: $55
    ld d, [hl]                                    ; $5e2a: $56
    ld b, b                                       ; $5e2b: $40
    db $d3                                        ; $5e2c: $d3
    db $d3                                        ; $5e2d: $d3
    db $fd                                        ; $5e2e: $fd
    ld l, e                                       ; $5e2f: $6b
    rra                                           ; $5e30: $1f
    db $d3                                        ; $5e31: $d3
    rst $38                                       ; $5e32: $ff
    ld b, l                                       ; $5e33: $45
    ld b, [hl]                                    ; $5e34: $46
    ld e, $d3                                     ; $5e35: $1e $d3
    ld bc, $0307                                  ; $5e37: $01 $07 $03
    inc bc                                        ; $5e3a: $03
    ld bc, $0101                                  ; $5e3b: $01 $01 $01
    ld bc, $0101                                  ; $5e3e: $01 $01 $01
    ld bc, $0101                                  ; $5e41: $01 $01 $01
    ld bc, $0101                                  ; $5e44: $01 $01 $01
    ld sp, hl                                     ; $5e47: $f9
    scf                                           ; $5e48: $37
    jr c, @+$3b                                   ; $5e49: $38 $39

    cp $47                                        ; $5e4b: $fe $47
    ld c, b                                       ; $5e4d: $48
    ld c, e                                       ; $5e4e: $4b
    nop                                           ; $5e4f: $00
    ld c, c                                       ; $5e50: $49
    ld c, d                                       ; $5e51: $4a
    ld c, a                                       ; $5e52: $4f
    push af                                       ; $5e53: $f5
    db $fd                                        ; $5e54: $fd
    cp $53                                        ; $5e55: $fe $53
    ld bc, $8282                                  ; $5e57: $01 $82 $82
    add d                                         ; $5e5a: $82
    ld bc, $8282                                  ; $5e5b: $01 $82 $82
    add d                                         ; $5e5e: $82
    ld bc, $8282                                  ; $5e5f: $01 $82 $82
    add d                                         ; $5e62: $82
    ld bc, $0101                                  ; $5e63: $01 $01 $01
    inc bc                                        ; $5e66: $03
    db $d3                                        ; $5e67: $d3
    db $d3                                        ; $5e68: $d3
    ld e, $d3                                     ; $5e69: $1e $d3
    db $d3                                        ; $5e6b: $d3
    sbc d                                         ; $5e6c: $9a
    db $d3                                        ; $5e6d: $d3
    rra                                           ; $5e6e: $1f
    ld hl, sp-$2d                                 ; $5e6f: $f8 $d3
    and a                                         ; $5e71: $a7
    db $d3                                        ; $5e72: $d3
    db $d3                                        ; $5e73: $d3
    db $d3                                        ; $5e74: $d3
    db $d3                                        ; $5e75: $d3
    db $fc                                        ; $5e76: $fc
    ld bc, $0101                                  ; $5e77: $01 $01 $01
    ld bc, $0e01                                  ; $5e7a: $01 $01 $0e
    ld bc, $0101                                  ; $5e7d: $01 $01 $01
    ld bc, $010e                                  ; $5e80: $01 $0e $01
    ld bc, $0101                                  ; $5e83: $01 $01 $01
    rlca                                          ; $5e86: $07
    ld b, l                                       ; $5e87: $45
    ld b, d                                       ; $5e88: $42
    ld e, $44                                     ; $5e89: $1e $44
    db $d3                                        ; $5e8b: $d3
    ld l, h                                       ; $5e8c: $6c
    ld b, e                                       ; $5e8d: $43
    ld l, l                                       ; $5e8e: $6d
    ld e, $d3                                     ; $5e8f: $1e $d3
    ld b, b                                       ; $5e91: $40
    ld b, d                                       ; $5e92: $42
    db $d3                                        ; $5e93: $d3
    ld l, l                                       ; $5e94: $6d
    ld e, $1f                                     ; $5e95: $1e $1f
    ld bc, $0101                                  ; $5e97: $01 $01 $01
    ld bc, $0101                                  ; $5e9a: $01 $01 $01
    ld bc, $0101                                  ; $5e9d: $01 $01 $01
    ld bc, $0101                                  ; $5ea0: $01 $01 $01
    ld bc, $0101                                  ; $5ea3: $01 $01 $01
    ld bc, $6c41                                  ; $5ea6: $01 $41 $6c
    ld b, l                                       ; $5ea9: $45
    ld l, l                                       ; $5eaa: $6d
    ld l, e                                       ; $5eab: $6b
    ld b, h                                       ; $5eac: $44
    ld b, b                                       ; $5ead: $40
    ld b, d                                       ; $5eae: $42
    ld b, e                                       ; $5eaf: $43
    ld b, [hl]                                    ; $5eb0: $46
    ld l, e                                       ; $5eb1: $6b
    rra                                           ; $5eb2: $1f
    ld b, c                                       ; $5eb3: $41
    ld b, d                                       ; $5eb4: $42
    ld b, e                                       ; $5eb5: $43
    ld b, [hl]                                    ; $5eb6: $46
    ld bc, $0101                                  ; $5eb7: $01 $01 $01
    ld bc, $0101                                  ; $5eba: $01 $01 $01
    ld bc, $0101                                  ; $5ebd: $01 $01 $01
    ld bc, $0101                                  ; $5ec0: $01 $01 $01
    ld bc, $0101                                  ; $5ec3: $01 $01 $01
    ld bc, $ffd3                                  ; $5ec6: $01 $d3 $ff
    nop                                           ; $5ec9: $00
    ld d, l                                       ; $5eca: $55
    ei                                            ; $5ecb: $fb
    pop de                                        ; $5ecc: $d1
    db $d3                                        ; $5ecd: $d3
    db $fd                                        ; $5ece: $fd
    ld b, b                                       ; $5ecf: $40
    ld l, h                                       ; $5ed0: $6c
    db $d3                                        ; $5ed1: $d3
    rst $38                                       ; $5ed2: $ff
    ld e, $1f                                     ; $5ed3: $1e $1f
    ld b, b                                       ; $5ed5: $40
    ld l, h                                       ; $5ed6: $6c
    ld bc, $0101                                  ; $5ed7: $01 $01 $01
    inc bc                                        ; $5eda: $03
    ld bc, $0101                                  ; $5edb: $01 $01 $01
    ld bc, $0101                                  ; $5ede: $01 $01 $01
    ld bc, $0101                                  ; $5ee1: $01 $01 $01
    ld bc, $0101                                  ; $5ee4: $01 $01 $01
    ld [$2c2b], sp                                ; $5ee7: $08 $2b $2c
    ld [hl+], a                                   ; $5eea: $22
    dec b                                         ; $5eeb: $05
    jr jr_08a_5f07                                ; $5eec: $18 $19

    inc hl                                        ; $5eee: $23
    db $d3                                        ; $5eef: $d3
    ld [$2625], sp                                ; $5ef0: $08 $25 $26
    ld sp, hl                                     ; $5ef3: $f9
    dec b                                         ; $5ef4: $05
    jr z, jr_08a_5f20                             ; $5ef5: $28 $29

    ld b, e                                       ; $5ef7: $43
    inc bc                                        ; $5ef8: $03
    inc bc                                        ; $5ef9: $03
    inc bc                                        ; $5efa: $03
    ld b, e                                       ; $5efb: $43
    inc bc                                        ; $5efc: $03
    inc bc                                        ; $5efd: $03
    inc bc                                        ; $5efe: $03
    ld bc, $0343                                  ; $5eff: $01 $43 $03
    inc bc                                        ; $5f02: $03
    ld bc, $0343                                  ; $5f03: $01 $43 $03
    inc bc                                        ; $5f06: $03

jr_08a_5f07:
    db $d3                                        ; $5f07: $d3
    db $d3                                        ; $5f08: $d3
    db $d3                                        ; $5f09: $d3
    db $d3                                        ; $5f0a: $d3
    dec b                                         ; $5f0b: $05
    db $d3                                        ; $5f0c: $d3
    db $d3                                        ; $5f0d: $d3
    db $d3                                        ; $5f0e: $d3
    ld [$fdd3], sp                                ; $5f0f: $08 $d3 $fd
    cp $27                                        ; $5f12: $fe $27
    dec d                                         ; $5f14: $15
    rst $38                                       ; $5f15: $ff
    nop                                           ; $5f16: $00
    ld bc, $0101                                  ; $5f17: $01 $01 $01
    ld bc, $0123                                  ; $5f1a: $01 $23 $01
    ld bc, $2301                                  ; $5f1d: $01 $01 $23

jr_08a_5f20:
    ld bc, $0101                                  ; $5f20: $01 $01 $01
    inc bc                                        ; $5f23: $03
    inc hl                                        ; $5f24: $23
    ld bc, $6d01                                  ; $5f25: $01 $01 $6d
    ld e, $d3                                     ; $5f28: $1e $d3
    db $d3                                        ; $5f2a: $d3
    db $d3                                        ; $5f2b: $d3
    db $d3                                        ; $5f2c: $d3
    db $fc                                        ; $5f2d: $fc
    db $d3                                        ; $5f2e: $d3
    db $d3                                        ; $5f2f: $d3
    db $d3                                        ; $5f30: $d3
    push af                                       ; $5f31: $f5
    db $d3                                        ; $5f32: $d3
    db $d3                                        ; $5f33: $d3
    db $d3                                        ; $5f34: $d3
    db $d3                                        ; $5f35: $d3
    db $d3                                        ; $5f36: $d3
    ld bc, $0101                                  ; $5f37: $01 $01 $01
    ld bc, $0101                                  ; $5f3a: $01 $01 $01
    rlca                                          ; $5f3d: $07
    ld bc, $0101                                  ; $5f3e: $01 $01 $01
    ld bc, $0101                                  ; $5f41: $01 $01 $01
    ld bc, $0101                                  ; $5f44: $01 $01 $01
    ld e, e                                       ; $5f47: $5b
    ld l, [hl]                                    ; $5f48: $6e
    ld l, a                                       ; $5f49: $6f
    ld e, [hl]                                    ; $5f4a: $5e
    ld e, a                                       ; $5f4b: $5f
    ld [hl], b                                    ; $5f4c: $70
    ld [hl], c                                    ; $5f4d: $71
    ld h, d                                       ; $5f4e: $62
    ld h, e                                       ; $5f4f: $63
    ld a, d                                       ; $5f50: $7a
    ld a, e                                       ; $5f51: $7b
    ld h, [hl]                                    ; $5f52: $66
    ld h, a                                       ; $5f53: $67
    ld l, b                                       ; $5f54: $68
    ld l, c                                       ; $5f55: $69
    ld l, d                                       ; $5f56: $6a
    inc bc                                        ; $5f57: $03
    inc bc                                        ; $5f58: $03
    inc bc                                        ; $5f59: $03
    inc bc                                        ; $5f5a: $03
    inc bc                                        ; $5f5b: $03
    inc bc                                        ; $5f5c: $03
    inc bc                                        ; $5f5d: $03
    inc bc                                        ; $5f5e: $03
    inc bc                                        ; $5f5f: $03
    inc bc                                        ; $5f60: $03
    inc bc                                        ; $5f61: $03
    inc bc                                        ; $5f62: $03
    ld h, e                                       ; $5f63: $63
    inc bc                                        ; $5f64: $03
    inc bc                                        ; $5f65: $03
    inc bc                                        ; $5f66: $03
    db $d3                                        ; $5f67: $d3
    db $fc                                        ; $5f68: $fc
    dec d                                         ; $5f69: $15
    dec hl                                        ; $5f6a: $2b
    db $d3                                        ; $5f6b: $d3
    db $d3                                        ; $5f6c: $d3
    db $d3                                        ; $5f6d: $d3
    ld [$3b32], sp                                ; $5f6e: $08 $32 $3b
    db $d3                                        ; $5f71: $d3
    dec b                                         ; $5f72: $05
    ld [hl], $3c                                  ; $5f73: $36 $3c
    dec a                                         ; $5f75: $3d
    db $d3                                        ; $5f76: $d3
    ld bc, $4307                                  ; $5f77: $01 $07 $43
    inc bc                                        ; $5f7a: $03
    ld bc, $0101                                  ; $5f7b: $01 $01 $01
    ld b, e                                       ; $5f7e: $43
    add d                                         ; $5f7f: $82
    add d                                         ; $5f80: $82
    ld bc, $8243                                  ; $5f81: $01 $43 $82
    add d                                         ; $5f84: $82
    add d                                         ; $5f85: $82
    ld bc, $222c                                  ; $5f86: $01 $2c $22
    rlca                                          ; $5f89: $07
    db $d3                                        ; $5f8a: $d3
    add hl, de                                    ; $5f8b: $19
    inc hl                                        ; $5f8c: $23
    dec l                                         ; $5f8d: $2d
    dec d                                         ; $5f8e: $15
    dec h                                         ; $5f8f: $25
    ld h, $24                                     ; $5f90: $26 $24
    ld b, $07                                     ; $5f92: $06 $07
    add hl, hl                                    ; $5f94: $29
    daa                                           ; $5f95: $27
    add hl, bc                                    ; $5f96: $09
    inc bc                                        ; $5f97: $03
    inc bc                                        ; $5f98: $03
    ld b, e                                       ; $5f99: $43
    ld bc, $0303                                  ; $5f9a: $01 $03 $03
    inc bc                                        ; $5f9d: $03
    inc hl                                        ; $5f9e: $23
    inc bc                                        ; $5f9f: $03
    inc bc                                        ; $5fa0: $03
    inc bc                                        ; $5fa1: $03
    inc bc                                        ; $5fa2: $03
    inc hl                                        ; $5fa3: $23
    inc bc                                        ; $5fa4: $03
    inc bc                                        ; $5fa5: $03
    inc bc                                        ; $5fa6: $03
    db $d3                                        ; $5fa7: $d3
    db $d3                                        ; $5fa8: $d3
    ei                                            ; $5fa9: $fb
    pop de                                        ; $5faa: $d1
    db $d3                                        ; $5fab: $d3
    push af                                       ; $5fac: $f5
    db $d3                                        ; $5fad: $d3
    db $d3                                        ; $5fae: $d3
    rlca                                          ; $5faf: $07
    db $d3                                        ; $5fb0: $d3
    db $d3                                        ; $5fb1: $d3
    db $d3                                        ; $5fb2: $d3
    jr z, jr_08a_5fe4                             ; $5fb3: $28 $2f

    ld l, $d3                                     ; $5fb5: $2e $d3
    ld bc, $0101                                  ; $5fb7: $01 $01 $01
    ld bc, $0101                                  ; $5fba: $01 $01 $01
    ld bc, $4301                                  ; $5fbd: $01 $01 $43
    ld bc, $0101                                  ; $5fc0: $01 $01 $01
    inc bc                                        ; $5fc3: $03
    inc bc                                        ; $5fc4: $03
    inc bc                                        ; $5fc5: $03
    ld bc, $6e5b                                  ; $5fc6: $01 $5b $6e
    ld l, a                                       ; $5fc9: $6f
    ld e, [hl]                                    ; $5fca: $5e
    ld e, a                                       ; $5fcb: $5f
    ld [hl], l                                    ; $5fcc: $75
    halt                                          ; $5fcd: $76
    ld [hl], a                                    ; $5fce: $77
    ld h, e                                       ; $5fcf: $63
    ld h, h                                       ; $5fd0: $64
    ld h, l                                       ; $5fd1: $65
    ld l, d                                       ; $5fd2: $6a
    ld e, a                                       ; $5fd3: $5f
    ld l, b                                       ; $5fd4: $68
    ld l, c                                       ; $5fd5: $69
    ld a, b                                       ; $5fd6: $78
    inc bc                                        ; $5fd7: $03
    inc bc                                        ; $5fd8: $03
    inc bc                                        ; $5fd9: $03
    inc bc                                        ; $5fda: $03
    inc bc                                        ; $5fdb: $03
    inc bc                                        ; $5fdc: $03
    inc bc                                        ; $5fdd: $03
    inc bc                                        ; $5fde: $03
    inc bc                                        ; $5fdf: $03
    inc bc                                        ; $5fe0: $03
    inc bc                                        ; $5fe1: $03
    ld b, e                                       ; $5fe2: $43
    inc bc                                        ; $5fe3: $03

jr_08a_5fe4:
    inc bc                                        ; $5fe4: $03
    inc bc                                        ; $5fe5: $03
    inc bc                                        ; $5fe6: $03
    ld a, [hl-]                                   ; $5fe7: $3a
    ld a, $3f                                     ; $5fe8: $3e $3f
    db $d3                                        ; $5fea: $d3
    ld c, h                                       ; $5feb: $4c
    ld c, l                                       ; $5fec: $4d
    ld c, [hl]                                    ; $5fed: $4e
    db $d3                                        ; $5fee: $d3
    ld d, b                                       ; $5fef: $50
    ld d, c                                       ; $5ff0: $51
    ld d, d                                       ; $5ff1: $52
    db $fc                                        ; $5ff2: $fc
    ld d, h                                       ; $5ff3: $54
    db $d3                                        ; $5ff4: $d3
    db $d3                                        ; $5ff5: $d3
    db $d3                                        ; $5ff6: $d3
    add d                                         ; $5ff7: $82
    add d                                         ; $5ff8: $82
    add d                                         ; $5ff9: $82
    ld bc, $8282                                  ; $5ffa: $01 $82 $82
    add d                                         ; $5ffd: $82
    ld bc, $8282                                  ; $5ffe: $01 $82 $82
    add d                                         ; $6001: $82
    rlca                                          ; $6002: $07
    inc bc                                        ; $6003: $03
    ld bc, $0101                                  ; $6004: $01 $01 $01
    db $d3                                        ; $6007: $d3
    dec d                                         ; $6008: $15
    dec hl                                        ; $6009: $2b
    inc l                                         ; $600a: $2c
    db $d3                                        ; $600b: $d3
    db $d3                                        ; $600c: $d3
    rlca                                          ; $600d: $07
    add hl, de                                    ; $600e: $19
    db $d3                                        ; $600f: $d3
    db $fd                                        ; $6010: $fd
    cp $15                                        ; $6011: $fe $15
    db $d3                                        ; $6013: $d3
    rst $38                                       ; $6014: $ff
    nop                                           ; $6015: $00
    db $d3                                        ; $6016: $d3
    ld bc, $0343                                  ; $6017: $01 $43 $03
    inc bc                                        ; $601a: $03
    ld bc, $2301                                  ; $601b: $01 $01 $23
    inc bc                                        ; $601e: $03
    ld bc, $0101                                  ; $601f: $01 $01 $01
    ld b, e                                       ; $6022: $43
    ld bc, $0101                                  ; $6023: $01 $01 $01
    ld bc, $2a22                                  ; $6026: $01 $22 $2a
    dec hl                                        ; $6029: $2b
    inc l                                         ; $602a: $2c
    inc hl                                        ; $602b: $23
    dec l                                         ; $602c: $2d
    jr jr_08a_6048                                ; $602d: $18 $19

    ld h, $24                                     ; $602f: $26 $24
    ld b, $25                                     ; $6031: $06 $25
    rlca                                          ; $6033: $07
    daa                                           ; $6034: $27
    add hl, bc                                    ; $6035: $09
    jr z, jr_08a_603b                             ; $6036: $28 $03

    inc bc                                        ; $6038: $03
    inc bc                                        ; $6039: $03
    inc bc                                        ; $603a: $03

jr_08a_603b:
    inc bc                                        ; $603b: $03
    inc bc                                        ; $603c: $03
    inc bc                                        ; $603d: $03
    inc bc                                        ; $603e: $03
    inc bc                                        ; $603f: $03
    inc bc                                        ; $6040: $03
    inc bc                                        ; $6041: $03
    inc bc                                        ; $6042: $03
    inc hl                                        ; $6043: $23
    inc bc                                        ; $6044: $03
    inc bc                                        ; $6045: $03
    inc bc                                        ; $6046: $03
    xor c                                         ; $6047: $a9

jr_08a_6048:
    ld l, [hl]                                    ; $6048: $6e
    ld l, a                                       ; $6049: $6f
    ld a, c                                       ; $604a: $79
    xor d                                         ; $604b: $aa
    ld [hl], b                                    ; $604c: $70
    ld e, h                                       ; $604d: $5c
    ld e, l                                       ; $604e: $5d
    xor c                                         ; $604f: $a9
    ld h, h                                       ; $6050: $64
    ld h, b                                       ; $6051: $60
    ld h, c                                       ; $6052: $61
    xor d                                         ; $6053: $aa
    ld l, b                                       ; $6054: $68
    ld l, c                                       ; $6055: $69
    ld l, d                                       ; $6056: $6a
    dec bc                                        ; $6057: $0b
    inc bc                                        ; $6058: $03
    inc bc                                        ; $6059: $03
    inc bc                                        ; $605a: $03
    dec hl                                        ; $605b: $2b
    inc bc                                        ; $605c: $03
    inc bc                                        ; $605d: $03
    inc bc                                        ; $605e: $03
    dec bc                                        ; $605f: $0b
    inc bc                                        ; $6060: $03
    inc bc                                        ; $6061: $03
    inc bc                                        ; $6062: $03
    dec hl                                        ; $6063: $2b
    inc bc                                        ; $6064: $03
    inc bc                                        ; $6065: $03
    inc bc                                        ; $6066: $03
    ld d, [hl]                                    ; $6067: $56
    db $fd                                        ; $6068: $fd
    cp $fb                                        ; $6069: $fe $fb
    cp $ff                                        ; $606b: $fe $ff
    nop                                           ; $606d: $00
    db $d3                                        ; $606e: $d3
    nop                                           ; $606f: $00
    db $fd                                        ; $6070: $fd
    cp $f5                                        ; $6071: $fe $f5
    ld b, l                                       ; $6073: $45
    rst $38                                       ; $6074: $ff
    nop                                           ; $6075: $00
    db $d3                                        ; $6076: $d3
    inc bc                                        ; $6077: $03
    ld bc, $0101                                  ; $6078: $01 $01 $01
    ld bc, $0101                                  ; $607b: $01 $01 $01
    ld bc, $0101                                  ; $607e: $01 $01 $01
    ld bc, $0101                                  ; $6081: $01 $01 $01
    ld bc, $0101                                  ; $6084: $01 $01 $01
    pop de                                        ; $6087: $d1
    db $d3                                        ; $6088: $d3
    db $d3                                        ; $6089: $d3
    db $d3                                        ; $608a: $d3
    db $d3                                        ; $608b: $d3
    db $d3                                        ; $608c: $d3
    db $d3                                        ; $608d: $d3
    push af                                       ; $608e: $f5
    db $fd                                        ; $608f: $fd
    cp $fc                                        ; $6090: $fe $fc
    db $d3                                        ; $6092: $d3
    rst $38                                       ; $6093: $ff
    nop                                           ; $6094: $00
    jr nc, jr_08a_60c8                            ; $6095: $30 $31

    ld bc, $0101                                  ; $6097: $01 $01 $01
    ld bc, $0101                                  ; $609a: $01 $01 $01
    ld bc, $0101                                  ; $609d: $01 $01 $01
    ld bc, $0107                                  ; $60a0: $01 $07 $01
    ld bc, $8201                                  ; $60a3: $01 $01 $82
    add d                                         ; $60a6: $82
    db $d3                                        ; $60a7: $d3
    dec d                                         ; $60a8: $15
    dec hl                                        ; $60a9: $2b
    inc l                                         ; $60aa: $2c
    db $d3                                        ; $60ab: $d3
    db $fc                                        ; $60ac: $fc
    rlca                                          ; $60ad: $07
    add hl, de                                    ; $60ae: $19
    db $d3                                        ; $60af: $d3
    db $d3                                        ; $60b0: $d3
    db $d3                                        ; $60b1: $d3
    dec d                                         ; $60b2: $15
    ld [hl-], a                                   ; $60b3: $32
    dec sp                                        ; $60b4: $3b
    db $d3                                        ; $60b5: $d3
    db $d3                                        ; $60b6: $d3
    ld bc, $0343                                  ; $60b7: $01 $43 $03
    inc bc                                        ; $60ba: $03
    ld bc, $2307                                  ; $60bb: $01 $07 $23
    inc bc                                        ; $60be: $03
    ld bc, $0101                                  ; $60bf: $01 $01 $01
    ld b, e                                       ; $60c2: $43
    add d                                         ; $60c3: $82
    add d                                         ; $60c4: $82
    ld bc, $ab01                                  ; $60c5: $01 $01 $ab

jr_08a_60c8:
    ld l, [hl]                                    ; $60c8: $6e
    ld l, a                                       ; $60c9: $6f
    ld e, [hl]                                    ; $60ca: $5e
    xor h                                         ; $60cb: $ac
    ld [hl], b                                    ; $60cc: $70
    ld [hl], c                                    ; $60cd: $71
    ld h, d                                       ; $60ce: $62
    xor l                                         ; $60cf: $ad
    ld h, h                                       ; $60d0: $64
    ld h, l                                       ; $60d1: $65
    ld h, [hl]                                    ; $60d2: $66
    ld h, a                                       ; $60d3: $67
    ld l, b                                       ; $60d4: $68
    ld l, c                                       ; $60d5: $69
    ld l, d                                       ; $60d6: $6a
    dec hl                                        ; $60d7: $2b
    inc bc                                        ; $60d8: $03
    inc bc                                        ; $60d9: $03
    inc bc                                        ; $60da: $03
    dec hl                                        ; $60db: $2b
    inc bc                                        ; $60dc: $03
    inc bc                                        ; $60dd: $03
    inc bc                                        ; $60de: $03
    dec hl                                        ; $60df: $2b
    inc bc                                        ; $60e0: $03
    inc bc                                        ; $60e1: $03
    inc bc                                        ; $60e2: $03
    ld h, e                                       ; $60e3: $63
    inc bc                                        ; $60e4: $03
    inc bc                                        ; $60e5: $03
    inc bc                                        ; $60e6: $03
    ld h, b                                       ; $60e7: $60
    ld h, c                                       ; $60e8: $61
    ld e, [hl]                                    ; $60e9: $5e
    ld h, a                                       ; $60ea: $67
    ld [hl], b                                    ; $60eb: $70
    ld [hl], c                                    ; $60ec: $71
    ld h, d                                       ; $60ed: $62
    ld a, h                                       ; $60ee: $7c
    ld h, h                                       ; $60ef: $64
    ld h, l                                       ; $60f0: $65
    ld h, [hl]                                    ; $60f1: $66
    ld a, l                                       ; $60f2: $7d
    ld l, b                                       ; $60f3: $68
    ld l, c                                       ; $60f4: $69
    ld l, d                                       ; $60f5: $6a
    ld a, [hl]                                    ; $60f6: $7e
    inc bc                                        ; $60f7: $03
    inc bc                                        ; $60f8: $03
    inc bc                                        ; $60f9: $03
    inc bc                                        ; $60fa: $03
    inc bc                                        ; $60fb: $03
    inc bc                                        ; $60fc: $03
    inc bc                                        ; $60fd: $03
    inc bc                                        ; $60fe: $03
    inc bc                                        ; $60ff: $03
    inc bc                                        ; $6100: $03
    inc bc                                        ; $6101: $03
    inc bc                                        ; $6102: $03
    inc bc                                        ; $6103: $03
    inc bc                                        ; $6104: $03
    inc bc                                        ; $6105: $03
    inc bc                                        ; $6106: $03
    db $fc                                        ; $6107: $fc
    ld c, c                                       ; $6108: $49
    ld c, d                                       ; $6109: $4a
    ld c, a                                       ; $610a: $4f
    db $d3                                        ; $610b: $d3
    db $d3                                        ; $610c: $d3
    db $d3                                        ; $610d: $d3
    ld d, e                                       ; $610e: $53
    db $d3                                        ; $610f: $d3
    db $d3                                        ; $6110: $d3
    db $d3                                        ; $6111: $d3
    ld d, l                                       ; $6112: $55
    db $d3                                        ; $6113: $d3
    db $d3                                        ; $6114: $d3
    push af                                       ; $6115: $f5
    db $d3                                        ; $6116: $d3
    rlca                                          ; $6117: $07
    add d                                         ; $6118: $82
    add d                                         ; $6119: $82
    add d                                         ; $611a: $82
    ld bc, $0101                                  ; $611b: $01 $01 $01
    inc bc                                        ; $611e: $03
    ld bc, $0101                                  ; $611f: $01 $01 $01
    inc bc                                        ; $6122: $03
    ld bc, $0101                                  ; $6123: $01 $01 $01
    ld bc, $5150                                  ; $6126: $01 $50 $51
    ld d, d                                       ; $6129: $52
    db $d3                                        ; $612a: $d3
    ld d, h                                       ; $612b: $54
    db $d3                                        ; $612c: $d3
    db $d3                                        ; $612d: $d3
    db $fd                                        ; $612e: $fd
    ld d, [hl]                                    ; $612f: $56
    db $fc                                        ; $6130: $fc
    db $d3                                        ; $6131: $d3
    rst $38                                       ; $6132: $ff
    db $d3                                        ; $6133: $d3
    db $d3                                        ; $6134: $d3
    db $d3                                        ; $6135: $d3
    db $d3                                        ; $6136: $d3
    add d                                         ; $6137: $82
    add d                                         ; $6138: $82
    add d                                         ; $6139: $82
    ld bc, $0103                                  ; $613a: $01 $03 $01
    ld bc, $0301                                  ; $613d: $01 $01 $03
    rlca                                          ; $6140: $07
    ld bc, $0101                                  ; $6141: $01 $01 $01
    ld bc, $0101                                  ; $6144: $01 $01 $01
    db $d3                                        ; $6147: $d3
    db $d3                                        ; $6148: $d3
    db $d3                                        ; $6149: $d3
    dec d                                         ; $614a: $15
    cp $d3                                        ; $614b: $fe $d3
    rlca                                          ; $614d: $07
    daa                                           ; $614e: $27
    nop                                           ; $614f: $00
    dec d                                         ; $6150: $15
    ld [hl+], a                                   ; $6151: $22
    ld a, [hl+]                                   ; $6152: $2a
    rlca                                          ; $6153: $07
    add hl, de                                    ; $6154: $19
    inc hl                                        ; $6155: $23
    dec d                                         ; $6156: $15
    ld bc, $0101                                  ; $6157: $01 $01 $01
    inc bc                                        ; $615a: $03
    ld bc, $6301                                  ; $615b: $01 $01 $63
    inc bc                                        ; $615e: $03
    ld bc, $0303                                  ; $615f: $01 $03 $03
    inc bc                                        ; $6162: $03
    ld h, e                                       ; $6163: $63
    inc bc                                        ; $6164: $03
    inc bc                                        ; $6165: $03
    ld h, e                                       ; $6166: $63
    ld l, [hl]                                    ; $6167: $6e
    ld l, a                                       ; $6168: $6f
    ld e, [hl]                                    ; $6169: $5e
    ld h, a                                       ; $616a: $67
    ld [hl], b                                    ; $616b: $70
    ld [hl], c                                    ; $616c: $71
    ld h, d                                       ; $616d: $62
    ld a, h                                       ; $616e: $7c
    add c                                         ; $616f: $81
    add d                                         ; $6170: $82
    add e                                         ; $6171: $83
    ld a, l                                       ; $6172: $7d
    add h                                         ; $6173: $84
    add l                                         ; $6174: $85
    add [hl]                                      ; $6175: $86
    ld h, a                                       ; $6176: $67
    inc bc                                        ; $6177: $03
    inc bc                                        ; $6178: $03
    inc bc                                        ; $6179: $03
    inc bc                                        ; $617a: $03
    inc bc                                        ; $617b: $03
    inc bc                                        ; $617c: $03
    inc bc                                        ; $617d: $03
    inc bc                                        ; $617e: $03
    dec bc                                        ; $617f: $0b
    dec bc                                        ; $6180: $0b
    dec bc                                        ; $6181: $0b
    inc bc                                        ; $6182: $03
    dec bc                                        ; $6183: $0b
    dec bc                                        ; $6184: $0b
    dec bc                                        ; $6185: $0b
    inc bc                                        ; $6186: $03
    db $fd                                        ; $6187: $fd
    cp $d3                                        ; $6188: $fe $d3
    db $d3                                        ; $618a: $d3
    rst $38                                       ; $618b: $ff
    nop                                           ; $618c: $00
    db $d3                                        ; $618d: $d3
    db $fc                                        ; $618e: $fc
    db $d3                                        ; $618f: $d3
    db $d3                                        ; $6190: $d3
    ld l, $2f                                     ; $6191: $2e $2f
    ld l, $2f                                     ; $6193: $2e $2f
    inc hl                                        ; $6195: $23
    dec l                                         ; $6196: $2d
    ld bc, $0101                                  ; $6197: $01 $01 $01
    ld bc, $0101                                  ; $619a: $01 $01 $01
    ld bc, $0107                                  ; $619d: $01 $07 $01
    ld bc, $2323                                  ; $61a0: $01 $23 $23
    inc hl                                        ; $61a3: $23
    inc hl                                        ; $61a4: $23
    inc bc                                        ; $61a5: $03
    inc bc                                        ; $61a6: $03
    db $d3                                        ; $61a7: $d3
    db $d3                                        ; $61a8: $d3
    ld l, $2f                                     ; $61a9: $2e $2f
    ld l, $2f                                     ; $61ab: $2e $2f
    add hl, hl                                    ; $61ad: $29
    daa                                           ; $61ae: $27
    dec hl                                        ; $61af: $2b
    inc l                                         ; $61b0: $2c
    ld [hl+], a                                   ; $61b1: $22
    rlca                                          ; $61b2: $07
    jr jr_08a_61ce                                ; $61b3: $18 $19

    dec d                                         ; $61b5: $15
    db $d3                                        ; $61b6: $d3
    ld bc, $2301                                  ; $61b7: $01 $01 $23
    inc hl                                        ; $61ba: $23
    inc hl                                        ; $61bb: $23
    inc hl                                        ; $61bc: $23
    inc bc                                        ; $61bd: $03
    inc bc                                        ; $61be: $03
    inc bc                                        ; $61bf: $03
    inc bc                                        ; $61c0: $03
    inc bc                                        ; $61c1: $03
    inc bc                                        ; $61c2: $03
    inc bc                                        ; $61c3: $03
    inc bc                                        ; $61c4: $03
    ld h, e                                       ; $61c5: $63
    ld bc, $2f06                                  ; $61c6: $01 $06 $2f
    ld l, $d3                                     ; $61c9: $2e $d3
    dec d                                         ; $61cb: $15
    db $fc                                        ; $61cc: $fc
    db $d3                                        ; $61cd: $d3

jr_08a_61ce:
    db $d3                                        ; $61ce: $d3
    db $d3                                        ; $61cf: $d3
    db $d3                                        ; $61d0: $d3
    jr nc, jr_08a_6204                            ; $61d1: $30 $31

    db $d3                                        ; $61d3: $d3
    inc sp                                        ; $61d4: $33
    inc [hl]                                      ; $61d5: $34
    dec [hl]                                      ; $61d6: $35
    inc bc                                        ; $61d7: $03
    ld b, e                                       ; $61d8: $43
    ld b, e                                       ; $61d9: $43
    ld bc, $0763                                  ; $61da: $01 $63 $07
    ld bc, $0101                                  ; $61dd: $01 $01 $01
    ld bc, $8282                                  ; $61e0: $01 $82 $82
    ld bc, $8282                                  ; $61e3: $01 $82 $82
    add d                                         ; $61e6: $82
    add a                                         ; $61e7: $87
    adc b                                         ; $61e8: $88
    adc c                                         ; $61e9: $89
    xor d                                         ; $61ea: $aa
    ld [hl], b                                    ; $61eb: $70
    ld [hl], c                                    ; $61ec: $71
    ld h, d                                       ; $61ed: $62
    xor c                                         ; $61ee: $a9
    ld h, h                                       ; $61ef: $64
    ld h, l                                       ; $61f0: $65
    ld h, [hl]                                    ; $61f1: $66
    xor d                                         ; $61f2: $aa
    ld a, d                                       ; $61f3: $7a
    ld a, e                                       ; $61f4: $7b
    ld l, d                                       ; $61f5: $6a
    xor e                                         ; $61f6: $ab
    dec bc                                        ; $61f7: $0b
    dec bc                                        ; $61f8: $0b
    dec bc                                        ; $61f9: $0b
    dec bc                                        ; $61fa: $0b
    inc bc                                        ; $61fb: $03
    inc bc                                        ; $61fc: $03
    inc bc                                        ; $61fd: $03
    dec hl                                        ; $61fe: $2b
    inc bc                                        ; $61ff: $03
    inc bc                                        ; $6200: $03
    inc bc                                        ; $6201: $03
    dec bc                                        ; $6202: $0b
    inc bc                                        ; $6203: $03

jr_08a_6204:
    inc bc                                        ; $6204: $03
    inc bc                                        ; $6205: $03
    dec bc                                        ; $6206: $0b
    ld b, $25                                     ; $6207: $06 $25
    ld h, $24                                     ; $6209: $26 $24
    add hl, bc                                    ; $620b: $09
    jr z, jr_08a_6237                             ; $620c: $28 $29

    daa                                           ; $620e: $27
    dec hl                                        ; $620f: $2b
    inc l                                         ; $6210: $2c
    ld [hl+], a                                   ; $6211: $22
    rlca                                          ; $6212: $07
    jr jr_08a_622e                                ; $6213: $18 $19

    dec d                                         ; $6215: $15
    db $d3                                        ; $6216: $d3
    inc bc                                        ; $6217: $03
    inc bc                                        ; $6218: $03
    inc bc                                        ; $6219: $03
    inc bc                                        ; $621a: $03
    inc bc                                        ; $621b: $03
    inc bc                                        ; $621c: $03
    inc bc                                        ; $621d: $03
    inc bc                                        ; $621e: $03
    inc bc                                        ; $621f: $03
    inc bc                                        ; $6220: $03
    inc bc                                        ; $6221: $03
    inc bc                                        ; $6222: $03
    inc bc                                        ; $6223: $03
    inc bc                                        ; $6224: $03
    ld h, e                                       ; $6225: $63
    ld bc, $0706                                  ; $6226: $01 $06 $07
    ei                                            ; $6229: $fb
    pop de                                        ; $622a: $d1
    dec d                                         ; $622b: $15
    db $d3                                        ; $622c: $d3
    db $d3                                        ; $622d: $d3

jr_08a_622e:
    db $d3                                        ; $622e: $d3
    db $d3                                        ; $622f: $d3
    push af                                       ; $6230: $f5
    db $d3                                        ; $6231: $d3
    db $d3                                        ; $6232: $d3
    db $fc                                        ; $6233: $fc
    db $d3                                        ; $6234: $d3
    db $d3                                        ; $6235: $d3
    db $d3                                        ; $6236: $d3

jr_08a_6237:
    inc bc                                        ; $6237: $03
    inc bc                                        ; $6238: $03
    ld bc, $6301                                  ; $6239: $01 $01 $63
    ld bc, $0101                                  ; $623c: $01 $01 $01
    ld bc, $0101                                  ; $623f: $01 $01 $01
    ld bc, $0107                                  ; $6242: $01 $07 $01
    ld bc, $d301                                  ; $6245: $01 $01 $d3
    scf                                           ; $6248: $37
    jr c, jr_08a_6284                             ; $6249: $38 $39

    db $d3                                        ; $624b: $d3
    ld b, a                                       ; $624c: $47
    ld c, b                                       ; $624d: $48
    ld c, e                                       ; $624e: $4b
    db $d3                                        ; $624f: $d3
    ld c, c                                       ; $6250: $49
    ld c, d                                       ; $6251: $4a
    ld c, a                                       ; $6252: $4f
    db $d3                                        ; $6253: $d3
    db $d3                                        ; $6254: $d3
    db $d3                                        ; $6255: $d3
    ld d, e                                       ; $6256: $53
    ld bc, $8282                                  ; $6257: $01 $82 $82
    add d                                         ; $625a: $82
    ld bc, $8282                                  ; $625b: $01 $82 $82
    add d                                         ; $625e: $82
    ld bc, $8282                                  ; $625f: $01 $82 $82
    add d                                         ; $6262: $82
    ld bc, $0101                                  ; $6263: $01 $01 $01
    inc bc                                        ; $6266: $03
    ld l, [hl]                                    ; $6267: $6e
    ld l, a                                       ; $6268: $6f
    ld e, [hl]                                    ; $6269: $5e
    xor h                                         ; $626a: $ac
    ld [hl], b                                    ; $626b: $70
    ld [hl], c                                    ; $626c: $71
    ld h, d                                       ; $626d: $62
    xor l                                         ; $626e: $ad
    ld [hl], l                                    ; $626f: $75
    halt                                          ; $6270: $76
    ld [hl], a                                    ; $6271: $77
    ld a, l                                       ; $6272: $7d
    ld l, b                                       ; $6273: $68
    ld l, c                                       ; $6274: $69
    ld l, d                                       ; $6275: $6a
    ld a, [hl]                                    ; $6276: $7e
    inc bc                                        ; $6277: $03
    inc bc                                        ; $6278: $03
    inc bc                                        ; $6279: $03
    dec bc                                        ; $627a: $0b
    inc bc                                        ; $627b: $03
    inc bc                                        ; $627c: $03
    inc bc                                        ; $627d: $03
    dec bc                                        ; $627e: $0b
    inc bc                                        ; $627f: $03
    inc bc                                        ; $6280: $03
    inc bc                                        ; $6281: $03
    inc bc                                        ; $6282: $03
    inc bc                                        ; $6283: $03

jr_08a_6284:
    inc bc                                        ; $6284: $03
    inc bc                                        ; $6285: $03
    inc bc                                        ; $6286: $03
    ld b, $07                                     ; $6287: $06 $07
    db $d3                                        ; $6289: $d3
    db $d3                                        ; $628a: $d3
    dec d                                         ; $628b: $15
    db $d3                                        ; $628c: $d3
    ld [bc], a                                    ; $628d: $02
    inc c                                         ; $628e: $0c
    db $d3                                        ; $628f: $d3
    ei                                            ; $6290: $fb
    pop de                                        ; $6291: $d1
    db $d3                                        ; $6292: $d3
    db $d3                                        ; $6293: $d3
    db $d3                                        ; $6294: $d3
    jr nc, jr_08a_62c8                            ; $6295: $30 $31

    inc bc                                        ; $6297: $03
    inc bc                                        ; $6298: $03
    ld bc, $6301                                  ; $6299: $01 $01 $63
    ld bc, $0101                                  ; $629c: $01 $01 $01
    ld bc, $0101                                  ; $629f: $01 $01 $01
    ld bc, $0101                                  ; $62a2: $01 $01 $01
    add d                                         ; $62a5: $82
    add d                                         ; $62a6: $82
    inc b                                         ; $62a7: $04
    ld bc, $d302                                  ; $62a8: $01 $02 $d3
    ld hl, sp+$20                                 ; $62ab: $f8 $20
    dec c                                         ; $62ad: $0d
    ld bc, $d3fc                                  ; $62ae: $01 $fc $d3
    ld hl, sp+$0c                                 ; $62b1: $f8 $0c
    ld [hl-], a                                   ; $62b3: $32
    dec sp                                        ; $62b4: $3b
    db $d3                                        ; $62b5: $d3
    db $d3                                        ; $62b6: $d3
    ld bc, $0101                                  ; $62b7: $01 $01 $01
    ld bc, $0101                                  ; $62ba: $01 $01 $01
    ld bc, $0701                                  ; $62bd: $01 $01 $07
    ld bc, $0101                                  ; $62c0: $01 $01 $01
    add d                                         ; $62c3: $82
    add d                                         ; $62c4: $82
    ld bc, $d301                                  ; $62c5: $01 $01 $d3

jr_08a_62c8:
    push af                                       ; $62c8: $f5
    db $d3                                        ; $62c9: $d3
    ld d, l                                       ; $62ca: $55
    ld [bc], a                                    ; $62cb: $02
    ld a, [$f9f8]                                 ; $62cc: $fa $f8 $f9
    ld hl, $030e                                  ; $62cf: $21 $0e $03
    inc c                                         ; $62d2: $0c
    ld hl, sp+$0c                                 ; $62d3: $f8 $0c
    ld hl, $0120                                  ; $62d5: $21 $20 $01
    ld bc, $0301                                  ; $62d8: $01 $01 $03
    ld bc, $0101                                  ; $62db: $01 $01 $01
    ld bc, $0101                                  ; $62de: $01 $01 $01
    ld bc, $0101                                  ; $62e1: $01 $01 $01
    ld bc, $0101                                  ; $62e4: $01 $01 $01

jr_08a_62e7:
    ld b, $25                                     ; $62e7: $06 $25
    ld h, $2f                                     ; $62e9: $26 $2f
    add hl, bc                                    ; $62eb: $09
    cpl                                           ; $62ec: $2f
    ld l, $d3                                     ; $62ed: $2e $d3
    rlca                                          ; $62ef: $07
    db $fd                                        ; $62f0: $fd
    cp $fc                                        ; $62f1: $fe $fc
    db $d3                                        ; $62f3: $d3
    rst $38                                       ; $62f4: $ff
    nop                                           ; $62f5: $00
    db $d3                                        ; $62f6: $d3
    inc bc                                        ; $62f7: $03
    inc bc                                        ; $62f8: $03
    inc bc                                        ; $62f9: $03
    ld b, e                                       ; $62fa: $43
    inc bc                                        ; $62fb: $03
    ld b, e                                       ; $62fc: $43
    ld b, e                                       ; $62fd: $43
    ld bc, $0103                                  ; $62fe: $01 $03 $01
    ld bc, $0107                                  ; $6301: $01 $07 $01
    ld bc, $0101                                  ; $6304: $01 $01 $01
    ld l, $d3                                     ; $6307: $2e $d3
    db $d3                                        ; $6309: $d3
    jr nc, @-$2b                                  ; $630a: $30 $d3

    push af                                       ; $630c: $f5
    inc sp                                        ; $630d: $33
    inc [hl]                                      ; $630e: $34
    db $d3                                        ; $630f: $d3
    db $d3                                        ; $6310: $d3
    scf                                           ; $6311: $37
    jr c, jr_08a_62e7                             ; $6312: $38 $d3

    db $d3                                        ; $6314: $d3
    ld b, a                                       ; $6315: $47
    ld c, b                                       ; $6316: $48
    ld b, e                                       ; $6317: $43
    ld bc, $8201                                  ; $6318: $01 $01 $82
    ld bc, $8201                                  ; $631b: $01 $01 $82
    add d                                         ; $631e: $82
    ld bc, $8201                                  ; $631f: $01 $01 $82
    add d                                         ; $6322: $82
    ld bc, $8201                                  ; $6323: $01 $01 $82
    add d                                         ; $6326: $82
    ld sp, $3b32                                  ; $6327: $31 $32 $3b
    db $d3                                        ; $632a: $d3
    dec [hl]                                      ; $632b: $35
    ld [hl], $3c                                  ; $632c: $36 $3c
    dec a                                         ; $632e: $3d
    add hl, sp                                    ; $632f: $39
    ld a, [hl-]                                   ; $6330: $3a
    ld a, $3f                                     ; $6331: $3e $3f
    ld c, e                                       ; $6333: $4b
    ld c, h                                       ; $6334: $4c
    ld c, l                                       ; $6335: $4d
    ld c, [hl]                                    ; $6336: $4e
    add d                                         ; $6337: $82
    add d                                         ; $6338: $82
    add d                                         ; $6339: $82
    ld bc, $8282                                  ; $633a: $01 $82 $82
    add d                                         ; $633d: $82
    add d                                         ; $633e: $82
    add d                                         ; $633f: $82
    add d                                         ; $6340: $82
    add d                                         ; $6341: $82
    add d                                         ; $6342: $82
    add d                                         ; $6343: $82
    add d                                         ; $6344: $82
    add d                                         ; $6345: $82
    add d                                         ; $6346: $82
    ei                                            ; $6347: $fb
    pop de                                        ; $6348: $d1
    db $d3                                        ; $6349: $d3
    db $d3                                        ; $634a: $d3
    db $d3                                        ; $634b: $d3
    db $d3                                        ; $634c: $d3
    db $d3                                        ; $634d: $d3
    db $d3                                        ; $634e: $d3
    db $d3                                        ; $634f: $d3
    db $fc                                        ; $6350: $fc
    db $d3                                        ; $6351: $d3
    db $d3                                        ; $6352: $d3
    db $d3                                        ; $6353: $d3
    db $d3                                        ; $6354: $d3
    db $d3                                        ; $6355: $d3
    db $d3                                        ; $6356: $d3
    ld bc, $0101                                  ; $6357: $01 $01 $01
    ld bc, $0101                                  ; $635a: $01 $01 $01
    ld bc, $0101                                  ; $635d: $01 $01 $01
    rlca                                          ; $6360: $07
    ld bc, $0101                                  ; $6361: $01 $01 $01
    ld bc, $0101                                  ; $6364: $01 $01 $01
    push af                                       ; $6367: $f5
    db $d3                                        ; $6368: $d3
    db $d3                                        ; $6369: $d3
    db $d3                                        ; $636a: $d3
    db $d3                                        ; $636b: $d3
    db $d3                                        ; $636c: $d3
    db $d3                                        ; $636d: $d3
    db $d3                                        ; $636e: $d3
    ld [hl-], a                                   ; $636f: $32
    dec sp                                        ; $6370: $3b
    db $d3                                        ; $6371: $d3
    db $d3                                        ; $6372: $d3
    ld [hl], $3c                                  ; $6373: $36 $3c
    dec a                                         ; $6375: $3d
    db $d3                                        ; $6376: $d3
    ld bc, $0101                                  ; $6377: $01 $01 $01
    ld bc, $0101                                  ; $637a: $01 $01 $01
    ld bc, $8201                                  ; $637d: $01 $01 $82
    add d                                         ; $6380: $82
    ld bc, $8201                                  ; $6381: $01 $01 $82
    add d                                         ; $6384: $82
    add d                                         ; $6385: $82
    ld bc, $d3d3                                  ; $6386: $01 $d3 $d3
    ld c, c                                       ; $6389: $49
    ld c, d                                       ; $638a: $4a
    db $d3                                        ; $638b: $d3
    db $d3                                        ; $638c: $d3
    db $d3                                        ; $638d: $d3
    db $d3                                        ; $638e: $d3
    db $d3                                        ; $638f: $d3
    db $d3                                        ; $6390: $d3
    db $d3                                        ; $6391: $d3
    db $d3                                        ; $6392: $d3
    db $d3                                        ; $6393: $d3
    db $fc                                        ; $6394: $fc
    db $d3                                        ; $6395: $d3
    push af                                       ; $6396: $f5
    ld bc, $8201                                  ; $6397: $01 $01 $82
    add d                                         ; $639a: $82
    ld bc, $0101                                  ; $639b: $01 $01 $01
    ld bc, $0101                                  ; $639e: $01 $01 $01
    ld bc, $0101                                  ; $63a1: $01 $01 $01
    rlca                                          ; $63a4: $07
    ld bc, $4f01                                  ; $63a5: $01 $01 $4f
    ld d, b                                       ; $63a8: $50
    ld d, c                                       ; $63a9: $51
    ld d, d                                       ; $63aa: $52
    ld d, e                                       ; $63ab: $53
    ld d, h                                       ; $63ac: $54
    db $d3                                        ; $63ad: $d3
    db $d3                                        ; $63ae: $d3
    ld d, l                                       ; $63af: $55
    ld d, [hl]                                    ; $63b0: $56
    db $d3                                        ; $63b1: $d3
    db $d3                                        ; $63b2: $d3
    db $d3                                        ; $63b3: $d3
    db $d3                                        ; $63b4: $d3
    ld b, l                                       ; $63b5: $45
    ld b, [hl]                                    ; $63b6: $46
    add d                                         ; $63b7: $82
    add d                                         ; $63b8: $82
    add d                                         ; $63b9: $82
    add d                                         ; $63ba: $82
    inc bc                                        ; $63bb: $03
    inc bc                                        ; $63bc: $03
    ld bc, $0301                                  ; $63bd: $01 $01 $03
    inc bc                                        ; $63c0: $03
    ld bc, $0101                                  ; $63c1: $01 $01 $01
    ld bc, $0101                                  ; $63c4: $01 $01 $01
    db $d3                                        ; $63c7: $d3
    db $d3                                        ; $63c8: $d3
    db $d3                                        ; $63c9: $d3
    db $d3                                        ; $63ca: $d3
    push af                                       ; $63cb: $f5
    db $d3                                        ; $63cc: $d3
    ei                                            ; $63cd: $fb
    pop de                                        ; $63ce: $d1
    ld b, b                                       ; $63cf: $40
    ld l, h                                       ; $63d0: $6c
    db $d3                                        ; $63d1: $d3
    db $d3                                        ; $63d2: $d3
    ld e, $d3                                     ; $63d3: $1e $d3
    db $d3                                        ; $63d5: $d3
    push af                                       ; $63d6: $f5
    ld bc, $0101                                  ; $63d7: $01 $01 $01
    ld bc, $0101                                  ; $63da: $01 $01 $01
    ld bc, $0101                                  ; $63dd: $01 $01 $01
    ld bc, $0101                                  ; $63e0: $01 $01 $01
    ld bc, $0101                                  ; $63e3: $01 $01 $01
    ld bc, $3e3a                                  ; $63e6: $01 $3a $3e
    ccf                                           ; $63e9: $3f
    db $d3                                        ; $63ea: $d3
    ld c, h                                       ; $63eb: $4c
    ld c, l                                       ; $63ec: $4d
    ld c, [hl]                                    ; $63ed: $4e
    db $d3                                        ; $63ee: $d3
    ld d, b                                       ; $63ef: $50
    ld d, c                                       ; $63f0: $51
    ld d, d                                       ; $63f1: $52
    db $d3                                        ; $63f2: $d3
    ld d, h                                       ; $63f3: $54
    db $d3                                        ; $63f4: $d3
    db $d3                                        ; $63f5: $d3
    db $d3                                        ; $63f6: $d3
    add d                                         ; $63f7: $82
    add d                                         ; $63f8: $82
    add d                                         ; $63f9: $82
    ld bc, $8282                                  ; $63fa: $01 $82 $82
    add d                                         ; $63fd: $82
    ld bc, $8282                                  ; $63fe: $01 $82 $82
    add d                                         ; $6401: $82
    ld bc, $0103                                  ; $6402: $01 $03 $01
    ld bc, $4001                                  ; $6405: $01 $01 $40
    ld l, h                                       ; $6408: $6c
    ld b, l                                       ; $6409: $45
    ld b, [hl]                                    ; $640a: $46
    db $d3                                        ; $640b: $d3
    rra                                           ; $640c: $1f
    ld b, c                                       ; $640d: $41
    ld l, h                                       ; $640e: $6c
    db $d3                                        ; $640f: $d3
    db $d3                                        ; $6410: $d3
    ld e, $44                                     ; $6411: $1e $44
    push af                                       ; $6413: $f5
    db $d3                                        ; $6414: $d3
    db $d3                                        ; $6415: $d3
    push af                                       ; $6416: $f5
    ld bc, $0101                                  ; $6417: $01 $01 $01
    ld bc, $0101                                  ; $641a: $01 $01 $01
    ld bc, $0101                                  ; $641d: $01 $01 $01
    ld bc, $0101                                  ; $6420: $01 $01 $01
    ld bc, $0101                                  ; $6423: $01 $01 $01
    ld bc, $441e                                  ; $6426: $01 $1e $44
    ld b, c                                       ; $6429: $41
    ld l, h                                       ; $642a: $6c
    ld b, e                                       ; $642b: $43
    ld b, [hl]                                    ; $642c: $46
    ld e, $d3                                     ; $642d: $1e $d3
    ld b, c                                       ; $642f: $41
    ld l, h                                       ; $6430: $6c
    db $d3                                        ; $6431: $d3
    ld bc, $fad3                                  ; $6432: $01 $d3 $fa
    ld hl, sp-$07                                 ; $6435: $f8 $f9
    ld bc, $0101                                  ; $6437: $01 $01 $01
    ld bc, $0101                                  ; $643a: $01 $01 $01
    ld bc, $0101                                  ; $643d: $01 $01 $01
    ld bc, $0101                                  ; $6440: $01 $01 $01
    ld bc, $0101                                  ; $6443: $01 $01 $01
    ld bc, $fcd3                                  ; $6446: $01 $d3 $fc
    jp nc, $d3d3                                  ; $6449: $d2 $d3 $d3

    push de                                       ; $644c: $d5
    sub $d5                                       ; $644d: $d6 $d5
    ld [bc], a                                    ; $644f: $02
    ret c                                         ; $6450: $d8

    reti                                          ; $6451: $d9


    jp c, $dcd3                                   ; $6452: $da $d3 $dc

    db $dd                                        ; $6455: $dd
    sbc $01                                       ; $6456: $de $01
    rlca                                          ; $6458: $07
    add d                                         ; $6459: $82
    ld bc, $8201                                  ; $645a: $01 $01 $82
    add d                                         ; $645d: $82
    and d                                         ; $645e: $a2
    ld bc, $8282                                  ; $645f: $01 $82 $82
    add d                                         ; $6462: $82
    ld bc, $8282                                  ; $6463: $01 $82 $82
    add d                                         ; $6466: $82
    ld d, [hl]                                    ; $6467: $56
    db $d3                                        ; $6468: $d3
    db $fc                                        ; $6469: $fc
    db $d3                                        ; $646a: $d3
    inc b                                         ; $646b: $04
    ld bc, $fa02                                  ; $646c: $01 $02 $fa
    ld hl, $0d20                                  ; $646f: $21 $20 $0d
    inc c                                         ; $6472: $0c
    dec c                                         ; $6473: $0d
    ld c, $03                                     ; $6474: $0e $03
    jr nz, jr_08a_647b                            ; $6476: $20 $03

    ld bc, $0107                                  ; $6478: $01 $07 $01

jr_08a_647b:
    ld bc, $0101                                  ; $647b: $01 $01 $01
    ld bc, $0101                                  ; $647e: $01 $01 $01
    ld bc, $0101                                  ; $6481: $01 $01 $01
    ld bc, $0101                                  ; $6484: $01 $01 $01
    inc b                                         ; $6487: $04
    ld bc, $fa02                                  ; $6488: $01 $02 $fa
    ld hl, sp-$07                                 ; $648b: $f8 $f9
    ld hl, $2120                                  ; $648d: $21 $20 $21
    jr nz, jr_08a_649f                            ; $6490: $20 $0d

    ld c, $0d                                     ; $6492: $0e $0d
    ld c, $02                                     ; $6494: $0e $02
    ld a, [$0101]                                 ; $6496: $fa $01 $01
    ld bc, $0101                                  ; $6499: $01 $01 $01
    ld bc, $0101                                  ; $649c: $01 $01 $01

jr_08a_649f:
    ld bc, $0101                                  ; $649f: $01 $01 $01
    ld bc, $0101                                  ; $64a2: $01 $01 $01
    ld bc, $0401                                  ; $64a5: $01 $01 $04
    jr nz, jr_08a_64b7                            ; $64a8: $20 $0d

    ld a, [$0e0d]                                 ; $64aa: $fa $0d $0e
    inc b                                         ; $64ad: $04
    db $d3                                        ; $64ae: $d3
    inc bc                                        ; $64af: $03
    ld a, [$d3d3]                                 ; $64b0: $fa $d3 $d3
    db $d3                                        ; $64b3: $d3
    db $fd                                        ; $64b4: $fd
    cp $d3                                        ; $64b5: $fe $d3

jr_08a_64b7:
    ld bc, $0101                                  ; $64b7: $01 $01 $01
    ld bc, $0101                                  ; $64ba: $01 $01 $01
    ld bc, $0101                                  ; $64bd: $01 $01 $01
    ld bc, $0101                                  ; $64c0: $01 $01 $01
    ld bc, $0101                                  ; $64c3: $01 $01 $01
    ld bc, $e0d4                                  ; $64c6: $01 $d4 $e0
    pop hl                                        ; $64c9: $e1
    ld [c], a                                     ; $64ca: $e2
    rst $10                                       ; $64cb: $d7
    db $e3                                        ; $64cc: $e3
    db $e4                                        ; $64cd: $e4
    adc a                                         ; $64ce: $8f
    db $db                                        ; $64cf: $db
    rst $20                                       ; $64d0: $e7
    add sp, -$6f                                  ; $64d1: $e8 $91
    rst $18                                       ; $64d3: $df
    db $eb                                        ; $64d4: $eb
    db $ec                                        ; $64d5: $ec
    sub d                                         ; $64d6: $92
    add d                                         ; $64d7: $82
    add d                                         ; $64d8: $82
    add d                                         ; $64d9: $82
    add d                                         ; $64da: $82
    add d                                         ; $64db: $82
    add d                                         ; $64dc: $82
    add d                                         ; $64dd: $82
    adc d                                         ; $64de: $8a
    add d                                         ; $64df: $82
    add d                                         ; $64e0: $82
    add d                                         ; $64e1: $82
    adc d                                         ; $64e2: $8a
    add d                                         ; $64e3: $82
    add d                                         ; $64e4: $82
    add d                                         ; $64e5: $82
    adc d                                         ; $64e6: $8a
    rst $10                                       ; $64e7: $d7
    db $e3                                        ; $64e8: $e3
    db $e4                                        ; $64e9: $e4
    adc a                                         ; $64ea: $8f
    db $db                                        ; $64eb: $db
    rst $20                                       ; $64ec: $e7
    add sp, -$6f                                  ; $64ed: $e8 $91
    rst $18                                       ; $64ef: $df
    db $eb                                        ; $64f0: $eb
    db $ec                                        ; $64f1: $ec
    sub d                                         ; $64f2: $92
    adc d                                         ; $64f3: $8a
    adc d                                         ; $64f4: $8a
    sub e                                         ; $64f5: $93
    ldh [$82], a                                  ; $64f6: $e0 $82
    add d                                         ; $64f8: $82
    add d                                         ; $64f9: $82
    adc d                                         ; $64fa: $8a
    add d                                         ; $64fb: $82
    add d                                         ; $64fc: $82
    add d                                         ; $64fd: $82
    adc d                                         ; $64fe: $8a
    add d                                         ; $64ff: $82
    add d                                         ; $6500: $82
    add d                                         ; $6501: $82
    adc d                                         ; $6502: $8a
    ld a, [bc]                                    ; $6503: $0a
    ld a, [bc]                                    ; $6504: $0a
    dec bc                                        ; $6505: $0b
    add d                                         ; $6506: $82
    adc d                                         ; $6507: $8a
    adc d                                         ; $6508: $8a
    adc e                                         ; $6509: $8b
    db $e3                                        ; $650a: $e3
    adc d                                         ; $650b: $8a
    push de                                       ; $650c: $d5
    adc h                                         ; $650d: $8c
    adc l                                         ; $650e: $8d
    adc d                                         ; $650f: $8a
    ret c                                         ; $6510: $d8

    reti                                          ; $6511: $d9


    adc [hl]                                      ; $6512: $8e
    adc d                                         ; $6513: $8a
    call c, $dedd                                 ; $6514: $dc $dd $de
    ld a, [bc]                                    ; $6517: $0a
    ld a, [bc]                                    ; $6518: $0a
    adc d                                         ; $6519: $8a
    add d                                         ; $651a: $82
    ld a, [bc]                                    ; $651b: $0a
    add d                                         ; $651c: $82
    adc d                                         ; $651d: $8a
    adc d                                         ; $651e: $8a
    ld a, [bc]                                    ; $651f: $0a
    add d                                         ; $6520: $82
    add d                                         ; $6521: $82
    adc d                                         ; $6522: $8a
    ld a, [bc]                                    ; $6523: $0a
    add d                                         ; $6524: $82
    add d                                         ; $6525: $82
    add d                                         ; $6526: $82
    call nc, $e1e0                                ; $6527: $d4 $e0 $e1
    ld [c], a                                     ; $652a: $e2
    rst $10                                       ; $652b: $d7
    db $e3                                        ; $652c: $e3
    db $e4                                        ; $652d: $e4
    push hl                                       ; $652e: $e5
    db $db                                        ; $652f: $db
    rst $20                                       ; $6530: $e7
    add sp, -$17                                  ; $6531: $e8 $e9
    rst $18                                       ; $6533: $df
    db $eb                                        ; $6534: $eb
    db $ec                                        ; $6535: $ec
    ld a, [c]                                     ; $6536: $f2
    add d                                         ; $6537: $82
    add d                                         ; $6538: $82
    add d                                         ; $6539: $82
    add d                                         ; $653a: $82
    add d                                         ; $653b: $82
    add d                                         ; $653c: $82
    add d                                         ; $653d: $82
    add d                                         ; $653e: $82
    add d                                         ; $653f: $82
    add d                                         ; $6540: $82
    add d                                         ; $6541: $82
    add d                                         ; $6542: $82
    add d                                         ; $6543: $82
    add d                                         ; $6544: $82
    add d                                         ; $6545: $82
    add d                                         ; $6546: $82
    jp nc, $f4d3                                  ; $6547: $d2 $d3 $f4

    db $d3                                        ; $654a: $d3
    sub b                                         ; $654b: $90
    push de                                       ; $654c: $d5
    db $d3                                        ; $654d: $d3
    db $d3                                        ; $654e: $d3
    reti                                          ; $654f: $d9


    jp c, $d3f5                                   ; $6550: $da $f5 $d3

    db $dd                                        ; $6553: $dd
    sbc $d3                                       ; $6554: $de $d3
    db $d3                                        ; $6556: $d3
    add d                                         ; $6557: $82
    ld bc, $0103                                  ; $6558: $01 $03 $01
    adc d                                         ; $655b: $8a
    and d                                         ; $655c: $a2
    ld bc, $8201                                  ; $655d: $01 $01 $82
    add d                                         ; $6560: $82
    ld bc, $8201                                  ; $6561: $01 $01 $82
    add d                                         ; $6564: $82
    ld bc, $f101                                  ; $6565: $01 $01 $f1
    jp hl                                         ; $6568: $e9


    add sp, -$73                                  ; $6569: $e8 $8d
    di                                            ; $656b: $f3
    ld a, [c]                                     ; $656c: $f2
    db $ec                                        ; $656d: $ec
    adc [hl]                                      ; $656e: $8e
    db $d3                                        ; $656f: $d3
    db $d3                                        ; $6570: $d3
    db $f4                                        ; $6571: $f4
    sbc $d1                                       ; $6572: $de $d1
    db $d3                                        ; $6574: $d3
    adc d                                         ; $6575: $8a
    ld [c], a                                     ; $6576: $e2
    and d                                         ; $6577: $a2
    and d                                         ; $6578: $a2
    and d                                         ; $6579: $a2
    xor d                                         ; $657a: $aa
    and d                                         ; $657b: $a2
    and d                                         ; $657c: $a2
    and d                                         ; $657d: $a2
    xor d                                         ; $657e: $aa
    ld bc, $2301                                  ; $657f: $01 $01 $23
    and d                                         ; $6582: $a2
    ld bc, $8a01                                  ; $6583: $01 $01 $8a
    and d                                         ; $6586: $a2
    adc h                                         ; $6587: $8c
    push de                                       ; $6588: $d5
    rst $10                                       ; $6589: $d7
    db $e3                                        ; $658a: $e3
    reti                                          ; $658b: $d9


    ret c                                         ; $658c: $d8

    db $db                                        ; $658d: $db
    rst $20                                       ; $658e: $e7
    db $dd                                        ; $658f: $dd
    call c, $ebdf                                 ; $6590: $dc $df $eb
    pop hl                                        ; $6593: $e1
    ldh [$d4], a                                  ; $6594: $e0 $d4
    db $d3                                        ; $6596: $d3
    xor d                                         ; $6597: $aa
    and d                                         ; $6598: $a2
    add d                                         ; $6599: $82
    add d                                         ; $659a: $82
    and d                                         ; $659b: $a2
    and d                                         ; $659c: $a2
    add d                                         ; $659d: $82
    add d                                         ; $659e: $82
    and d                                         ; $659f: $a2
    and d                                         ; $65a0: $a2
    add d                                         ; $65a1: $82
    add d                                         ; $65a2: $82
    and d                                         ; $65a3: $a2
    and d                                         ; $65a4: $a2
    and d                                         ; $65a5: $a2
    ld bc, $e5e4                                  ; $65a6: $01 $e4 $e5
    ldh a, [$d3]                                  ; $65a9: $f0 $d3
    add sp, -$17                                  ; $65ab: $e8 $e9
    pop af                                        ; $65ad: $f1
    db $d3                                        ; $65ae: $d3
    db $ec                                        ; $65af: $ec
    ld a, [c]                                     ; $65b0: $f2
    di                                            ; $65b1: $f3
    jp nc, $d3f4                                  ; $65b2: $d2 $f4 $d3

    push de                                       ; $65b5: $d5
    sub $82                                       ; $65b6: $d6 $82
    add d                                         ; $65b8: $82
    add d                                         ; $65b9: $82
    ld bc, $8282                                  ; $65ba: $01 $82 $82
    add d                                         ; $65bd: $82
    ld bc, $8282                                  ; $65be: $01 $82 $82
    add d                                         ; $65c1: $82
    add d                                         ; $65c2: $82
    inc bc                                        ; $65c3: $03
    ld bc, $8282                                  ; $65c4: $01 $82 $82
    db $d3                                        ; $65c7: $d3
    db $d3                                        ; $65c8: $d3
    db $fc                                        ; $65c9: $fc
    db $d3                                        ; $65ca: $d3
    db $d3                                        ; $65cb: $d3
    db $d3                                        ; $65cc: $d3
    db $d3                                        ; $65cd: $d3
    db $d3                                        ; $65ce: $d3
    db $d3                                        ; $65cf: $d3
    db $d3                                        ; $65d0: $d3
    db $d3                                        ; $65d1: $d3
    push af                                       ; $65d2: $f5
    push de                                       ; $65d3: $d5
    db $d3                                        ; $65d4: $d3
    db $d3                                        ; $65d5: $d3
    db $d3                                        ; $65d6: $d3
    ld bc, $0701                                  ; $65d7: $01 $01 $07
    ld bc, $0101                                  ; $65da: $01 $01 $01
    ld bc, $0101                                  ; $65dd: $01 $01 $01
    ld bc, $0101                                  ; $65e0: $01 $01 $01
    and d                                         ; $65e3: $a2
    ld bc, $0101                                  ; $65e4: $01 $01 $01
    db $d3                                        ; $65e7: $d3
    push af                                       ; $65e8: $f5
    ldh a, [$e5]                                  ; $65e9: $f0 $e5
    db $d3                                        ; $65eb: $d3
    db $d3                                        ; $65ec: $d3
    pop af                                        ; $65ed: $f1
    jp hl                                         ; $65ee: $e9


    db $d3                                        ; $65ef: $d3
    jp nc, $f2f3                                  ; $65f0: $d2 $f3 $f2

    push de                                       ; $65f3: $d5
    sub $d5                                       ; $65f4: $d6 $d5
    db $d3                                        ; $65f6: $d3
    ld bc, $a201                                  ; $65f7: $01 $01 $a2
    and d                                         ; $65fa: $a2
    ld bc, $a201                                  ; $65fb: $01 $01 $a2
    and d                                         ; $65fe: $a2
    ld bc, $a2a2                                  ; $65ff: $01 $a2 $a2
    and d                                         ; $6602: $a2
    add d                                         ; $6603: $82
    and d                                         ; $6604: $a2
    and d                                         ; $6605: $a2
    ld bc, $e3e4                                  ; $6606: $01 $e4 $e3
    rst $10                                       ; $6609: $d7
    db $d3                                        ; $660a: $d3
    add sp, -$19                                  ; $660b: $e8 $e7
    db $db                                        ; $660d: $db
    db $d3                                        ; $660e: $d3
    db $ec                                        ; $660f: $ec
    db $eb                                        ; $6610: $eb
    rst $18                                       ; $6611: $df
    jp nc, $d3f4                                  ; $6612: $d2 $f4 $d3

    push de                                       ; $6615: $d5
    sub $a2                                       ; $6616: $d6 $a2
    and d                                         ; $6618: $a2
    and d                                         ; $6619: $a2
    ld bc, $a2a2                                  ; $661a: $01 $a2 $a2
    and d                                         ; $661d: $a2
    ld bc, $a2a2                                  ; $661e: $01 $a2 $a2
    and d                                         ; $6621: $a2
    add d                                         ; $6622: $82
    inc hl                                        ; $6623: $23
    ld bc, $8282                                  ; $6624: $01 $82 $82
    db $d3                                        ; $6627: $d3
    db $d3                                        ; $6628: $d3
    ret c                                         ; $6629: $d8

    reti                                          ; $662a: $d9


    ei                                            ; $662b: $fb
    pop de                                        ; $662c: $d1
    call c, $d3dd                                 ; $662d: $dc $dd $d3
    call nc, $e1e0                                ; $6630: $d4 $e0 $e1
    push de                                       ; $6633: $d5
    rst $10                                       ; $6634: $d7
    db $e3                                        ; $6635: $e3
    db $e4                                        ; $6636: $e4
    ld bc, $8201                                  ; $6637: $01 $01 $82
    add d                                         ; $663a: $82
    ld bc, $8201                                  ; $663b: $01 $01 $82
    add d                                         ; $663e: $82
    ld bc, $8282                                  ; $663f: $01 $82 $82
    add d                                         ; $6642: $82
    and d                                         ; $6643: $a2
    add d                                         ; $6644: $82
    add d                                         ; $6645: $82
    add d                                         ; $6646: $82
    jp c, $fcd3                                   ; $6647: $da $d3 $fc

    db $d3                                        ; $664a: $d3
    sbc $d3                                       ; $664b: $de $d3
    db $d3                                        ; $664d: $d3
    db $d3                                        ; $664e: $d3
    ld [c], a                                     ; $664f: $e2
    db $d3                                        ; $6650: $d3
    db $d3                                        ; $6651: $d3
    jp nc, $f0e5                                  ; $6652: $d2 $e5 $f0

    push de                                       ; $6655: $d5
    sub $82                                       ; $6656: $d6 $82
    ld bc, $0107                                  ; $6658: $01 $07 $01
    add d                                         ; $665b: $82
    ld bc, $0101                                  ; $665c: $01 $01 $01
    add d                                         ; $665f: $82
    ld bc, $8201                                  ; $6660: $01 $01 $82
    add d                                         ; $6663: $82
    add d                                         ; $6664: $82
    add d                                         ; $6665: $82
    add d                                         ; $6666: $82
    jp c, $d8d9                                   ; $6667: $da $d9 $d8

    db $d3                                        ; $666a: $d3
    sbc $dd                                       ; $666b: $de $dd
    call c, $e2fb                                 ; $666d: $dc $fb $e2
    pop hl                                        ; $6670: $e1
    ldh [$d4], a                                  ; $6671: $e0 $d4
    adc a                                         ; $6673: $8f
    db $e4                                        ; $6674: $e4
    db $e3                                        ; $6675: $e3
    rst $10                                       ; $6676: $d7
    and d                                         ; $6677: $a2
    and d                                         ; $6678: $a2
    and d                                         ; $6679: $a2
    ld bc, $a2a2                                  ; $667a: $01 $a2 $a2
    and d                                         ; $667d: $a2
    ld bc, $a2a2                                  ; $667e: $01 $a2 $a2
    and d                                         ; $6681: $a2
    and d                                         ; $6682: $a2
    xor d                                         ; $6683: $aa
    and d                                         ; $6684: $a2
    and d                                         ; $6685: $a2
    and d                                         ; $6686: $a2
    db $d3                                        ; $6687: $d3
    db $d3                                        ; $6688: $d3
    ret c                                         ; $6689: $d8

    reti                                          ; $668a: $d9


    pop de                                        ; $668b: $d1
    db $d3                                        ; $668c: $d3
    call c, $d3dd                                 ; $668d: $dc $dd $d3
    call nc, $e1e0                                ; $6690: $d4 $e0 $e1
    db $fc                                        ; $6693: $fc
    rst $10                                       ; $6694: $d7
    db $e3                                        ; $6695: $e3
    db $e4                                        ; $6696: $e4
    ld bc, $8201                                  ; $6697: $01 $01 $82
    add d                                         ; $669a: $82
    ld bc, $8201                                  ; $669b: $01 $01 $82
    add d                                         ; $669e: $82
    ld bc, $8282                                  ; $669f: $01 $82 $82
    add d                                         ; $66a2: $82
    rlca                                          ; $66a3: $07
    add d                                         ; $66a4: $82
    add d                                         ; $66a5: $82
    add d                                         ; $66a6: $82
    jp c, $e7db                                   ; $66a7: $da $db $e7

    add sp, -$22                                  ; $66aa: $e8 $de
    rst $18                                       ; $66ac: $df
    db $eb                                        ; $66ad: $eb
    db $ec                                        ; $66ae: $ec
    ld [c], a                                     ; $66af: $e2
    db $d3                                        ; $66b0: $d3
    db $d3                                        ; $66b1: $d3
    jp nc, $f0e5                                  ; $66b2: $d2 $e5 $f0

    push de                                       ; $66b5: $d5
    sub $82                                       ; $66b6: $d6 $82
    add d                                         ; $66b8: $82
    add d                                         ; $66b9: $82
    add d                                         ; $66ba: $82
    add d                                         ; $66bb: $82
    add d                                         ; $66bc: $82
    add d                                         ; $66bd: $82
    add d                                         ; $66be: $82
    add d                                         ; $66bf: $82
    ld bc, $a201                                  ; $66c0: $01 $01 $a2
    add d                                         ; $66c3: $82
    add d                                         ; $66c4: $82
    add d                                         ; $66c5: $82
    and d                                         ; $66c6: $a2
    jp hl                                         ; $66c7: $e9


    pop af                                        ; $66c8: $f1
    ret c                                         ; $66c9: $d8

    reti                                          ; $66ca: $d9


    ld a, [c]                                     ; $66cb: $f2
    di                                            ; $66cc: $f3
    call c, $d3dd                                 ; $66cd: $dc $dd $d3
    call nc, $e1e0                                ; $66d0: $d4 $e0 $e1
    push de                                       ; $66d3: $d5
    rst $10                                       ; $66d4: $d7
    db $e3                                        ; $66d5: $e3
    db $e4                                        ; $66d6: $e4
    add d                                         ; $66d7: $82
    add d                                         ; $66d8: $82
    add d                                         ; $66d9: $82
    add d                                         ; $66da: $82
    add d                                         ; $66db: $82
    add d                                         ; $66dc: $82
    add d                                         ; $66dd: $82
    add d                                         ; $66de: $82
    ld bc, $8282                                  ; $66df: $01 $82 $82
    add d                                         ; $66e2: $82
    and d                                         ; $66e3: $a2
    add d                                         ; $66e4: $82
    add d                                         ; $66e5: $82
    add d                                         ; $66e6: $82
    sub c                                         ; $66e7: $91
    add sp, -$19                                  ; $66e8: $e8 $e7
    db $db                                        ; $66ea: $db
    sub d                                         ; $66eb: $92
    db $ec                                        ; $66ec: $ec
    db $eb                                        ; $66ed: $eb
    rst $18                                       ; $66ee: $df
    ldh [$93], a                                  ; $66ef: $e0 $93
    adc d                                         ; $66f1: $8a
    db $d3                                        ; $66f2: $d3
    db $e3                                        ; $66f3: $e3
    adc e                                         ; $66f4: $8b
    db $d3                                        ; $66f5: $d3
    db $fc                                        ; $66f6: $fc
    xor d                                         ; $66f7: $aa
    and d                                         ; $66f8: $a2
    and d                                         ; $66f9: $a2
    and d                                         ; $66fa: $a2
    xor d                                         ; $66fb: $aa
    and d                                         ; $66fc: $a2
    and d                                         ; $66fd: $a2
    and d                                         ; $66fe: $a2
    and d                                         ; $66ff: $a2
    dec hl                                        ; $6700: $2b
    ld a, [bc]                                    ; $6701: $0a
    ld bc, $aaa2                                  ; $6702: $01 $a2 $aa
    ld bc, $d307                                  ; $6705: $01 $07 $d3
    db $db                                        ; $6708: $db
    rst $20                                       ; $6709: $e7
    add sp, -$2d                                  ; $670a: $e8 $d3
    rst $18                                       ; $670c: $df
    db $eb                                        ; $670d: $eb
    db $ec                                        ; $670e: $ec
    db $d3                                        ; $670f: $d3
    push af                                       ; $6710: $f5
    db $d3                                        ; $6711: $d3
    db $f4                                        ; $6712: $f4
    db $d3                                        ; $6713: $d3
    db $d3                                        ; $6714: $d3
    db $d3                                        ; $6715: $d3
    db $d3                                        ; $6716: $d3
    ld bc, $8282                                  ; $6717: $01 $82 $82
    add d                                         ; $671a: $82
    ld bc, $8282                                  ; $671b: $01 $82 $82
    add d                                         ; $671e: $82
    ld bc, $0101                                  ; $671f: $01 $01 $01
    inc bc                                        ; $6722: $03
    ld bc, $0101                                  ; $6723: $01 $01 $01
    ld bc, $f1e9                                  ; $6726: $01 $e9 $f1
    jp c, $f2d9                                   ; $6729: $da $d9 $f2

    di                                            ; $672c: $f3
    sbc $dd                                       ; $672d: $de $dd
    db $d3                                        ; $672f: $d3
    db $d3                                        ; $6730: $d3
    ld [c], a                                     ; $6731: $e2
    pop hl                                        ; $6732: $e1
    db $d3                                        ; $6733: $d3
    ldh a, [$e5]                                  ; $6734: $f0 $e5
    db $e4                                        ; $6736: $e4
    add d                                         ; $6737: $82
    add d                                         ; $6738: $82
    and d                                         ; $6739: $a2
    and d                                         ; $673a: $a2
    add d                                         ; $673b: $82
    add d                                         ; $673c: $82
    and d                                         ; $673d: $a2
    and d                                         ; $673e: $a2
    ld bc, $a201                                  ; $673f: $01 $01 $a2
    and d                                         ; $6742: $a2
    ld bc, $a2a2                                  ; $6743: $01 $a2 $a2
    and d                                         ; $6746: $a2
    ret c                                         ; $6747: $d8

    db $db                                        ; $6748: $db
    rst $20                                       ; $6749: $e7
    add sp, -$24                                  ; $674a: $e8 $dc
    rst $18                                       ; $674c: $df
    db $eb                                        ; $674d: $eb
    db $ec                                        ; $674e: $ec
    ldh [$d4], a                                  ; $674f: $e0 $d4
    db $d3                                        ; $6751: $d3
    db $f4                                        ; $6752: $f4
    db $e3                                        ; $6753: $e3
    rst $10                                       ; $6754: $d7
    db $d3                                        ; $6755: $d3
    jp nc, $82a2                                  ; $6756: $d2 $a2 $82

    add d                                         ; $6759: $82
    add d                                         ; $675a: $82
    and d                                         ; $675b: $a2
    add d                                         ; $675c: $82
    add d                                         ; $675d: $82
    add d                                         ; $675e: $82
    and d                                         ; $675f: $a2
    and d                                         ; $6760: $a2
    ld bc, $a203                                  ; $6761: $01 $03 $a2
    and d                                         ; $6764: $a2
    ld bc, $d382                                  ; $6765: $01 $82 $d3
    db $d3                                        ; $6768: $d3
    db $d3                                        ; $6769: $d3
    ld b, l                                       ; $676a: $45
    db $d3                                        ; $676b: $d3
    db $d3                                        ; $676c: $d3
    ei                                            ; $676d: $fb
    pop de                                        ; $676e: $d1
    db $d3                                        ; $676f: $d3
    db $d3                                        ; $6770: $d3
    db $fc                                        ; $6771: $fc
    db $d3                                        ; $6772: $d3
    db $d3                                        ; $6773: $d3
    db $d3                                        ; $6774: $d3
    db $d3                                        ; $6775: $d3
    ld sp, hl                                     ; $6776: $f9
    ld bc, $0101                                  ; $6777: $01 $01 $01
    ld bc, $0101                                  ; $677a: $01 $01 $01
    ld bc, $0101                                  ; $677d: $01 $01 $01
    ld bc, $0107                                  ; $6780: $01 $07 $01
    ld bc, $0101                                  ; $6783: $01 $01 $01
    ld bc, $1e6d                                  ; $6786: $01 $6d $1e
    ld b, c                                       ; $6789: $41
    ld b, d                                       ; $678a: $42
    ei                                            ; $678b: $fb
    pop de                                        ; $678c: $d1
    db $d3                                        ; $678d: $d3
    ld e, $d3                                     ; $678e: $1e $d3
    db $d3                                        ; $6790: $d3
    db $d3                                        ; $6791: $d3
    db $d3                                        ; $6792: $d3
    inc b                                         ; $6793: $04
    ld bc, $0c02                                  ; $6794: $01 $02 $0c
    ld bc, $0101                                  ; $6797: $01 $01 $01
    ld bc, $0101                                  ; $679a: $01 $01 $01
    ld bc, $0101                                  ; $679d: $01 $01 $01
    ld bc, $0101                                  ; $67a0: $01 $01 $01
    ld bc, $0101                                  ; $67a3: $01 $01 $01
    ld bc, $d36c                                  ; $67a6: $01 $6c $d3
    ld d, a                                       ; $67a9: $57
    db $d3                                        ; $67aa: $d3
    rra                                           ; $67ab: $1f
    ld b, b                                       ; $67ac: $40
    db $d3                                        ; $67ad: $d3
    db $d3                                        ; $67ae: $d3
    push af                                       ; $67af: $f5
    db $d3                                        ; $67b0: $d3
    db $d3                                        ; $67b1: $d3
    db $d3                                        ; $67b2: $d3
    ld hl, $0420                                  ; $67b3: $21 $20 $04
    ld c, $01                                     ; $67b6: $0e $01
    ld bc, $0145                                  ; $67b8: $01 $45 $01
    ld bc, $0101                                  ; $67bb: $01 $01 $01
    ld bc, $0101                                  ; $67be: $01 $01 $01
    ld bc, $0101                                  ; $67c1: $01 $01 $01
    ld bc, $0101                                  ; $67c4: $01 $01 $01
    db $d3                                        ; $67c7: $d3
    sbc d                                         ; $67c8: $9a
    db $d3                                        ; $67c9: $d3
    db $d3                                        ; $67ca: $d3
    db $d3                                        ; $67cb: $d3
    push af                                       ; $67cc: $f5
    db $d3                                        ; $67cd: $d3
    ld a, [$d3d3]                                 ; $67ce: $fa $d3 $d3
    inc b                                         ; $67d1: $04
    ld bc, $fa02                                  ; $67d2: $01 $02 $fa
    ld hl, $0120                                  ; $67d5: $21 $20 $01
    dec c                                         ; $67d8: $0d
    ld bc, $0101                                  ; $67d9: $01 $01 $01
    ld bc, $0101                                  ; $67dc: $01 $01 $01
    ld bc, $0101                                  ; $67df: $01 $01 $01
    ld bc, $0101                                  ; $67e2: $01 $01 $01
    ld bc, $d301                                  ; $67e5: $01 $01 $d3
    db $fd                                        ; $67e8: $fd
    cp $d3                                        ; $67e9: $fe $d3
    db $d3                                        ; $67eb: $d3
    rst $38                                       ; $67ec: $ff
    nop                                           ; $67ed: $00
    db $d3                                        ; $67ee: $d3
    db $d3                                        ; $67ef: $d3
    db $d3                                        ; $67f0: $d3
    db $d3                                        ; $67f1: $d3
    db $d3                                        ; $67f2: $d3
    push de                                       ; $67f3: $d5
    db $d3                                        ; $67f4: $d3
    db $d3                                        ; $67f5: $d3
    db $d3                                        ; $67f6: $d3
    ld bc, $0101                                  ; $67f7: $01 $01 $01
    ld bc, $0101                                  ; $67fa: $01 $01 $01
    ld bc, $0101                                  ; $67fd: $01 $01 $01
    ld bc, $0101                                  ; $6800: $01 $01 $01
    and d                                         ; $6803: $a2
    ld bc, $0101                                  ; $6804: $01 $01 $01
    db $d3                                        ; $6807: $d3
    db $d3                                        ; $6808: $d3
    inc b                                         ; $6809: $04
    ld bc, $d2d3                                  ; $680a: $01 $d3 $d2
    db $d3                                        ; $680d: $d3
    db $d3                                        ; $680e: $d3
    push de                                       ; $680f: $d5
    sub $d5                                       ; $6810: $d6 $d5
    db $d3                                        ; $6812: $d3
    ret c                                         ; $6813: $d8

    reti                                          ; $6814: $d9


    jp c, Jump_000_01d3                           ; $6815: $da $d3 $01

    ld bc, $0101                                  ; $6818: $01 $01 $01
    ld bc, $0182                                  ; $681b: $01 $82 $01
    ld bc, $8282                                  ; $681e: $01 $82 $82
    and d                                         ; $6821: $a2
    ld bc, $8282                                  ; $6822: $01 $82 $82
    add d                                         ; $6825: $82
    ld bc, $0e02                                  ; $6826: $01 $02 $0e
    inc bc                                        ; $6829: $03
    inc c                                         ; $682a: $0c
    db $d3                                        ; $682b: $d3
    db $d3                                        ; $682c: $d3
    db $d3                                        ; $682d: $d3
    ld a, [$d3f5]                                 ; $682e: $fa $f5 $d3
    db $d3                                        ; $6831: $d3
    db $fc                                        ; $6832: $fc
    db $d3                                        ; $6833: $d3
    db $d3                                        ; $6834: $d3
    db $d3                                        ; $6835: $d3
    db $d3                                        ; $6836: $d3
    ld bc, $0101                                  ; $6837: $01 $01 $01
    ld bc, $0101                                  ; $683a: $01 $01 $01
    ld bc, $0101                                  ; $683d: $01 $01 $01
    ld bc, $0701                                  ; $6840: $01 $01 $07
    ld bc, $0101                                  ; $6843: $01 $01 $01
    ld bc, $2021                                  ; $6846: $01 $21 $20
    dec c                                         ; $6849: $0d
    ld c, $f8                                     ; $684a: $0e $f8
    ld c, $03                                     ; $684c: $0e $03
    inc c                                         ; $684e: $0c
    db $d3                                        ; $684f: $d3
    db $d3                                        ; $6850: $d3
    ld hl, sp-$07                                 ; $6851: $f8 $f9
    db $d3                                        ; $6853: $d3
    db $d3                                        ; $6854: $d3
    db $d3                                        ; $6855: $d3
    db $d3                                        ; $6856: $d3
    ld bc, $0101                                  ; $6857: $01 $01 $01
    ld bc, $0101                                  ; $685a: $01 $01 $01
    ld bc, $0101                                  ; $685d: $01 $01 $01
    ld bc, $0101                                  ; $6860: $01 $01 $01
    ld bc, $0101                                  ; $6863: $01 $01 $01
    ld bc, $d3da                                  ; $6866: $01 $da $d3
    db $d3                                        ; $6869: $d3
    db $d3                                        ; $686a: $d3
    sbc $d3                                       ; $686b: $de $d3
    db $fc                                        ; $686d: $fc
    call nc, $d3e2                                ; $686e: $d4 $e2 $d3
    db $d3                                        ; $6871: $d3
    rst $10                                       ; $6872: $d7
    push hl                                       ; $6873: $e5
    ldh a, [$d3]                                  ; $6874: $f0 $d3
    db $db                                        ; $6876: $db
    add d                                         ; $6877: $82
    ld bc, $0101                                  ; $6878: $01 $01 $01
    add d                                         ; $687b: $82
    ld bc, $8207                                  ; $687c: $01 $07 $82
    add d                                         ; $687f: $82
    ld bc, $8201                                  ; $6880: $01 $01 $82
    add d                                         ; $6883: $82
    add d                                         ; $6884: $82
    ld bc, $dc82                                  ; $6885: $01 $82 $dc
    db $dd                                        ; $6888: $dd
    sbc $d3                                       ; $6889: $de $d3
    ldh [$e1], a                                  ; $688b: $e0 $e1
    ld [c], a                                     ; $688d: $e2
    db $d3                                        ; $688e: $d3
    db $e3                                        ; $688f: $e3
    db $e4                                        ; $6890: $e4
    push hl                                       ; $6891: $e5
    ldh a, [$e7]                                  ; $6892: $f0 $e7
    add sp, -$17                                  ; $6894: $e8 $e9
    pop af                                        ; $6896: $f1
    add d                                         ; $6897: $82
    add d                                         ; $6898: $82
    add d                                         ; $6899: $82
    ld bc, $8282                                  ; $689a: $01 $82 $82
    add d                                         ; $689d: $82
    ld bc, $8282                                  ; $689e: $01 $82 $82
    add d                                         ; $68a1: $82
    add d                                         ; $68a2: $82
    add d                                         ; $68a3: $82
    add d                                         ; $68a4: $82
    add d                                         ; $68a5: $82
    add d                                         ; $68a6: $82
    db $d3                                        ; $68a7: $d3
    db $d3                                        ; $68a8: $d3
    jp nc, $d3d3                                  ; $68a9: $d2 $d3 $d3

    push de                                       ; $68ac: $d5
    sub $d5                                       ; $68ad: $d6 $d5
    db $d3                                        ; $68af: $d3
    jp c, $d8d9                                   ; $68b0: $da $d9 $d8

    db $d3                                        ; $68b3: $d3
    sbc $dd                                       ; $68b4: $de $dd
    call c, $0101                                 ; $68b6: $dc $01 $01
    and d                                         ; $68b9: $a2
    ld bc, $8201                                  ; $68ba: $01 $01 $82
    and d                                         ; $68bd: $a2
    and d                                         ; $68be: $a2
    ld bc, $a2a2                                  ; $68bf: $01 $a2 $a2
    and d                                         ; $68c2: $a2
    ld bc, $a2a2                                  ; $68c3: $01 $a2 $a2
    and d                                         ; $68c6: $a2
    db $d3                                        ; $68c7: $d3
    db $d3                                        ; $68c8: $d3
    db $fd                                        ; $68c9: $fd
    cp $d3                                        ; $68ca: $fe $d3
    db $d3                                        ; $68cc: $d3
    rst $38                                       ; $68cd: $ff
    nop                                           ; $68ce: $00
    db $d3                                        ; $68cf: $d3
    db $d3                                        ; $68d0: $d3
    db $d3                                        ; $68d1: $d3
    db $d3                                        ; $68d2: $d3
    db $d3                                        ; $68d3: $d3
    db $d3                                        ; $68d4: $d3
    db $d3                                        ; $68d5: $d3
    ld [bc], a                                    ; $68d6: $02
    ld bc, $0101                                  ; $68d7: $01 $01 $01
    ld bc, $0101                                  ; $68da: $01 $01 $01
    ld bc, $0101                                  ; $68dd: $01 $01 $01
    ld bc, $0101                                  ; $68e0: $01 $01 $01
    ld bc, $0101                                  ; $68e3: $01 $01 $01
    ld bc, $f1e9                                  ; $68e6: $01 $e9 $f1
    db $d3                                        ; $68e9: $d3
    rst $18                                       ; $68ea: $df
    ld a, [c]                                     ; $68eb: $f2
    di                                            ; $68ec: $f3
    db $d3                                        ; $68ed: $d3
    db $d3                                        ; $68ee: $d3
    db $d3                                        ; $68ef: $d3
    db $d3                                        ; $68f0: $d3
    db $d3                                        ; $68f1: $d3
    ei                                            ; $68f2: $fb
    db $d3                                        ; $68f3: $d3
    db $d3                                        ; $68f4: $d3
    db $d3                                        ; $68f5: $d3
    db $d3                                        ; $68f6: $d3
    add d                                         ; $68f7: $82
    add d                                         ; $68f8: $82
    ld bc, $8282                                  ; $68f9: $01 $82 $82
    add d                                         ; $68fc: $82
    ld bc, $0101                                  ; $68fd: $01 $01 $01
    ld bc, $0101                                  ; $6900: $01 $01 $01
    ld bc, $0101                                  ; $6903: $01 $01 $01
    ld bc, $eceb                                  ; $6906: $01 $eb $ec
    ld a, [c]                                     ; $6909: $f2
    di                                            ; $690a: $f3
    db $d3                                        ; $690b: $d3
    db $f4                                        ; $690c: $f4
    db $d3                                        ; $690d: $d3
    push de                                       ; $690e: $d5
    pop de                                        ; $690f: $d1
    db $d3                                        ; $6910: $d3
    db $d3                                        ; $6911: $d3
    jp c, $fcd3                                   ; $6912: $da $d3 $fc

    db $d3                                        ; $6915: $d3
    sbc $82                                       ; $6916: $de $82
    add d                                         ; $6918: $82
    add d                                         ; $6919: $82
    add d                                         ; $691a: $82
    ld bc, $0103                                  ; $691b: $01 $03 $01
    add d                                         ; $691e: $82
    ld bc, $0101                                  ; $691f: $01 $01 $01
    and d                                         ; $6922: $a2
    ld bc, $0107                                  ; $6923: $01 $07 $01
    and d                                         ; $6926: $a2
    jp nc, $e1e2                                  ; $6927: $d2 $e2 $e1

    ldh [$90], a                                  ; $692a: $e0 $90
    adc a                                         ; $692c: $8f
    db $e4                                        ; $692d: $e4
    db $e3                                        ; $692e: $e3
    reti                                          ; $692f: $d9


    sub c                                         ; $6930: $91
    add sp, -$19                                  ; $6931: $e8 $e7
    db $dd                                        ; $6933: $dd
    sub d                                         ; $6934: $92
    db $ec                                        ; $6935: $ec
    db $eb                                        ; $6936: $eb
    and d                                         ; $6937: $a2
    and d                                         ; $6938: $a2
    and d                                         ; $6939: $a2
    and d                                         ; $693a: $a2
    xor d                                         ; $693b: $aa
    xor d                                         ; $693c: $aa
    and d                                         ; $693d: $a2
    and d                                         ; $693e: $a2
    and d                                         ; $693f: $a2
    xor d                                         ; $6940: $aa
    and d                                         ; $6941: $a2
    and d                                         ; $6942: $a2
    and d                                         ; $6943: $a2
    xor d                                         ; $6944: $aa
    and d                                         ; $6945: $a2
    and d                                         ; $6946: $a2
    call nc, $f5d3                                ; $6947: $d4 $d3 $f5
    db $d3                                        ; $694a: $d3
    rst $10                                       ; $694b: $d7
    db $d3                                        ; $694c: $d3
    db $d3                                        ; $694d: $d3
    db $d3                                        ; $694e: $d3
    db $db                                        ; $694f: $db
    db $d3                                        ; $6950: $d3
    db $d3                                        ; $6951: $d3
    push af                                       ; $6952: $f5
    rst $18                                       ; $6953: $df
    db $d3                                        ; $6954: $d3
    db $d3                                        ; $6955: $d3
    db $d3                                        ; $6956: $d3
    and d                                         ; $6957: $a2
    ld bc, $0101                                  ; $6958: $01 $01 $01
    and d                                         ; $695b: $a2
    ld bc, $0101                                  ; $695c: $01 $01 $01
    and d                                         ; $695f: $a2
    ld bc, $0101                                  ; $6960: $01 $01 $01
    and d                                         ; $6963: $a2
    ld bc, $0101                                  ; $6964: $01 $01 $01
    inc b                                         ; $6967: $04
    db $d3                                        ; $6968: $d3
    db $d3                                        ; $6969: $d3
    db $d3                                        ; $696a: $d3
    ld hl, sp-$07                                 ; $696b: $f8 $f9
    inc b                                         ; $696d: $04
    db $d3                                        ; $696e: $d3
    ld hl, $0d20                                  ; $696f: $21 $20 $0d
    ld sp, hl                                     ; $6972: $f9
    dec c                                         ; $6973: $0d
    ld c, $02                                     ; $6974: $0e $02
    ld a, [$0101]                                 ; $6976: $fa $01 $01
    ld bc, $0101                                  ; $6979: $01 $01 $01
    ld bc, $0101                                  ; $697c: $01 $01 $01
    ld bc, $0101                                  ; $697f: $01 $01 $01
    ld bc, $0101                                  ; $6982: $01 $01 $01
    ld bc, $5701                                  ; $6985: $01 $01 $57
    db $d3                                        ; $6988: $d3
    ld b, l                                       ; $6989: $45
    ld l, l                                       ; $698a: $6d
    db $d3                                        ; $698b: $d3
    db $d3                                        ; $698c: $d3
    db $d3                                        ; $698d: $d3
    db $d3                                        ; $698e: $d3
    inc b                                         ; $698f: $04
    db $d3                                        ; $6990: $d3
    db $d3                                        ; $6991: $d3
    db $fc                                        ; $6992: $fc
    ld hl, sp-$2d                                 ; $6993: $f8 $d3
    db $d3                                        ; $6995: $d3
    db $d3                                        ; $6996: $d3
    ld b, l                                       ; $6997: $45
    ld bc, $0101                                  ; $6998: $01 $01 $01
    ld bc, $0101                                  ; $699b: $01 $01 $01
    ld bc, $0101                                  ; $699e: $01 $01 $01
    ld bc, $0107                                  ; $69a1: $01 $07 $01
    ld bc, $0101                                  ; $69a4: $01 $01 $01
    ld e, $44                                     ; $69a7: $1e $44
    ld b, c                                       ; $69a9: $41
    ld b, d                                       ; $69aa: $42
    ld b, l                                       ; $69ab: $45
    ld l, l                                       ; $69ac: $6d
    ld l, e                                       ; $69ad: $6b
    rra                                           ; $69ae: $1f
    push af                                       ; $69af: $f5
    db $d3                                        ; $69b0: $d3
    ld b, l                                       ; $69b1: $45
    ld l, l                                       ; $69b2: $6d
    db $d3                                        ; $69b3: $d3
    db $d3                                        ; $69b4: $d3
    db $d3                                        ; $69b5: $d3
    db $d3                                        ; $69b6: $d3
    ld bc, $0101                                  ; $69b7: $01 $01 $01
    ld bc, $0101                                  ; $69ba: $01 $01 $01
    ld bc, $0101                                  ; $69bd: $01 $01 $01
    ld bc, $0101                                  ; $69c0: $01 $01 $01
    ld bc, $0101                                  ; $69c3: $01 $01 $01
    ld bc, $4643                                  ; $69c6: $01 $43 $46
    ld l, e                                       ; $69c9: $6b
    ld b, h                                       ; $69ca: $44
    ld b, c                                       ; $69cb: $41
    ld b, d                                       ; $69cc: $42
    ld b, e                                       ; $69cd: $43
    ld l, l                                       ; $69ce: $6d
    ld e, $1f                                     ; $69cf: $1e $1f
    ld b, b                                       ; $69d1: $40
    ld l, h                                       ; $69d2: $6c
    push af                                       ; $69d3: $f5
    db $d3                                        ; $69d4: $d3
    db $d3                                        ; $69d5: $d3
    db $d3                                        ; $69d6: $d3
    ld bc, $0101                                  ; $69d7: $01 $01 $01
    ld bc, $0101                                  ; $69da: $01 $01 $01
    ld bc, $0101                                  ; $69dd: $01 $01 $01
    ld bc, $0101                                  ; $69e0: $01 $01 $01
    ld bc, $0101                                  ; $69e3: $01 $01 $01
    ld bc, $f903                                  ; $69e6: $01 $03 $f9
    db $d3                                        ; $69e9: $d3
    db $d3                                        ; $69ea: $d3
    ld [bc], a                                    ; $69eb: $02
    db $d3                                        ; $69ec: $d3
    db $d3                                        ; $69ed: $d3
    db $d3                                        ; $69ee: $d3
    db $d3                                        ; $69ef: $d3
    db $d3                                        ; $69f0: $d3
    db $d3                                        ; $69f1: $d3
    db $d3                                        ; $69f2: $d3
    db $d3                                        ; $69f3: $d3
    db $d3                                        ; $69f4: $d3
    db $d3                                        ; $69f5: $d3
    ld a, [$0101]                                 ; $69f6: $fa $01 $01
    ld bc, $0101                                  ; $69f9: $01 $01 $01
    ld bc, $0101                                  ; $69fc: $01 $01 $01
    ld bc, $0101                                  ; $69ff: $01 $01 $01
    ld bc, $0101                                  ; $6a02: $01 $01 $01
    ld bc, $d301                                  ; $6a05: $01 $01 $d3
    db $d3                                        ; $6a08: $d3
    db $d3                                        ; $6a09: $d3
    ld sp, hl                                     ; $6a0a: $f9
    db $d3                                        ; $6a0b: $d3
    ld bc, $fa02                                  ; $6a0c: $01 $02 $fa
    inc b                                         ; $6a0f: $04
    ld bc, $0c02                                  ; $6a10: $01 $02 $0c
    ld hl, sp+$0c                                 ; $6a13: $f8 $0c
    ld hl, $0120                                  ; $6a15: $21 $20 $01
    ld bc, $0101                                  ; $6a18: $01 $01 $01
    ld bc, $0101                                  ; $6a1b: $01 $01 $01
    ld bc, $0101                                  ; $6a1e: $01 $01 $01
    ld bc, $0101                                  ; $6a21: $01 $01 $01
    ld bc, $0101                                  ; $6a24: $01 $01 $01
    inc b                                         ; $6a27: $04
    ld bc, $d3d3                                  ; $6a28: $01 $d3 $d3
    ld hl, sp-$07                                 ; $6a2b: $f8 $f9
    inc b                                         ; $6a2d: $04
    ld bc, $2021                                  ; $6a2e: $01 $21 $20
    dec c                                         ; $6a31: $0d
    ld sp, hl                                     ; $6a32: $f9
    dec c                                         ; $6a33: $0d
    ld c, $03                                     ; $6a34: $0e $03
    inc c                                         ; $6a36: $0c
    ld bc, $0101                                  ; $6a37: $01 $01 $01
    ld bc, $0101                                  ; $6a3a: $01 $01 $01
    ld bc, $0101                                  ; $6a3d: $01 $01 $01
    ld bc, $0101                                  ; $6a40: $01 $01 $01
    ld bc, $0101                                  ; $6a43: $01 $01 $01
    ld bc, $d3d3                                  ; $6a46: $01 $d3 $d3
    db $d3                                        ; $6a49: $d3
    db $fc                                        ; $6a4a: $fc
    db $d3                                        ; $6a4b: $d3
    db $d3                                        ; $6a4c: $d3
    ld hl, sp-$07                                 ; $6a4d: $f8 $f9
    inc b                                         ; $6a4f: $04
    inc c                                         ; $6a50: $0c
    ld hl, $f8fa                                  ; $6a51: $21 $fa $f8
    ld sp, hl                                     ; $6a54: $f9
    db $d3                                        ; $6a55: $d3
    db $d3                                        ; $6a56: $d3
    ld bc, $0101                                  ; $6a57: $01 $01 $01
    rlca                                          ; $6a5a: $07
    ld bc, $0101                                  ; $6a5b: $01 $01 $01
    ld bc, $0101                                  ; $6a5e: $01 $01 $01
    ld bc, $0101                                  ; $6a61: $01 $01 $01
    ld bc, $0101                                  ; $6a64: $01 $01 $01
    db $d3                                        ; $6a67: $d3
    db $d3                                        ; $6a68: $d3
    db $d3                                        ; $6a69: $d3
    ld bc, $02d3                                  ; $6a6a: $01 $d3 $02
    ld a, [$f920]                                 ; $6a6d: $fa $20 $f9
    inc b                                         ; $6a70: $04
    dec c                                         ; $6a71: $0d
    ld c, $fa                                     ; $6a72: $0e $fa
    ld c, $03                                     ; $6a74: $0e $03
    inc c                                         ; $6a76: $0c
    ld bc, $0101                                  ; $6a77: $01 $01 $01
    ld bc, $0101                                  ; $6a7a: $01 $01 $01
    ld bc, $0101                                  ; $6a7d: $01 $01 $01
    ld bc, $0101                                  ; $6a80: $01 $01 $01
    ld bc, $0101                                  ; $6a83: $01 $01 $01
    ld bc, $2021                                  ; $6a86: $01 $21 $20
    dec c                                         ; $6a89: $0d
    ld c, $0d                                     ; $6a8a: $0e $0d
    ld c, $03                                     ; $6a8c: $0e $03
    inc c                                         ; $6a8e: $0c
    inc bc                                        ; $6a8f: $03
    inc c                                         ; $6a90: $0c
    ld hl, $2120                                  ; $6a91: $21 $20 $21
    ld hl, sp-$07                                 ; $6a94: $f8 $f9
    inc b                                         ; $6a96: $04
    ld bc, $0101                                  ; $6a97: $01 $01 $01
    ld bc, $0101                                  ; $6a9a: $01 $01 $01
    ld bc, $0101                                  ; $6a9d: $01 $01 $01
    ld bc, $0101                                  ; $6aa0: $01 $01 $01
    ld bc, $0101                                  ; $6aa3: $01 $01 $01
    ld bc, $0c03                                  ; $6aa6: $01 $03 $0c
    ld hl, $2101                                  ; $6aa9: $21 $01 $21
    jr nz, @-$05                                  ; $6aac: $20 $f9

    inc b                                         ; $6aae: $04
    ld a, [$fa02]                                 ; $6aaf: $fa $02 $fa
    db $d3                                        ; $6ab2: $d3
    ld bc, $d304                                  ; $6ab3: $01 $04 $d3
    db $d3                                        ; $6ab6: $d3
    ld bc, $0101                                  ; $6ab7: $01 $01 $01
    ld bc, $0101                                  ; $6aba: $01 $01 $01
    ld bc, $0101                                  ; $6abd: $01 $01 $01
    ld bc, $0101                                  ; $6ac0: $01 $01 $01
    ld bc, $0101                                  ; $6ac3: $01 $01 $01
    ld bc, $d302                                  ; $6ac6: $01 $02 $d3
    db $d3                                        ; $6ac9: $d3
    db $d3                                        ; $6aca: $d3
    db $d3                                        ; $6acb: $d3
    db $d3                                        ; $6acc: $d3
    push af                                       ; $6acd: $f5
    db $d3                                        ; $6ace: $d3
    db $fc                                        ; $6acf: $fc
    db $d3                                        ; $6ad0: $d3
    db $d3                                        ; $6ad1: $d3
    ld e, $d3                                     ; $6ad2: $1e $d3
    ld b, b                                       ; $6ad4: $40
    ld l, h                                       ; $6ad5: $6c
    ld b, d                                       ; $6ad6: $42
    ld bc, $0101                                  ; $6ad7: $01 $01 $01
    ld bc, $0101                                  ; $6ada: $01 $01 $01
    ld bc, $0701                                  ; $6add: $01 $01 $07
    ld bc, $0101                                  ; $6ae0: $01 $01 $01
    ld bc, $0101                                  ; $6ae3: $01 $01 $01
    ld bc, $0201                                  ; $6ae6: $01 $01 $02
    ld a, [$d304]                                 ; $6ae9: $fa $04 $d3
    db $d3                                        ; $6aec: $d3
    push af                                       ; $6aed: $f5
    db $d3                                        ; $6aee: $d3
    db $d3                                        ; $6aef: $d3
    db $d3                                        ; $6af0: $d3
    db $d3                                        ; $6af1: $d3
    db $d3                                        ; $6af2: $d3
    db $fc                                        ; $6af3: $fc
    db $d3                                        ; $6af4: $d3
    db $d3                                        ; $6af5: $d3
    db $d3                                        ; $6af6: $d3
    ld bc, $0101                                  ; $6af7: $01 $01 $01
    ld bc, $0101                                  ; $6afa: $01 $01 $01
    ld bc, $0101                                  ; $6afd: $01 $01 $01
    ld bc, $0101                                  ; $6b00: $01 $01 $01
    rlca                                          ; $6b03: $07
    ld bc, $0101                                  ; $6b04: $01 $01 $01
    ld bc, $fa02                                  ; $6b07: $01 $02 $fa
    ld hl, sp-$2d                                 ; $6b0a: $f8 $d3
    db $d3                                        ; $6b0c: $d3
    db $d3                                        ; $6b0d: $d3
    db $fc                                        ; $6b0e: $fc
    ei                                            ; $6b0f: $fb
    pop de                                        ; $6b10: $d1
    db $d3                                        ; $6b11: $d3
    db $d3                                        ; $6b12: $d3
    db $d3                                        ; $6b13: $d3
    ld e, $1f                                     ; $6b14: $1e $1f
    ld b, b                                       ; $6b16: $40
    ld bc, $0101                                  ; $6b17: $01 $01 $01
    ld bc, $0101                                  ; $6b1a: $01 $01 $01
    ld bc, $0107                                  ; $6b1d: $01 $07 $01
    ld bc, $0101                                  ; $6b20: $01 $01 $01
    ld bc, $0101                                  ; $6b23: $01 $01 $01
    ld bc, $d3d3                                  ; $6b26: $01 $d3 $d3
    push af                                       ; $6b29: $f5
    db $d3                                        ; $6b2a: $d3
    db $d3                                        ; $6b2b: $d3
    db $d3                                        ; $6b2c: $d3
    rra                                           ; $6b2d: $1f
    ld b, b                                       ; $6b2e: $40
    ld l, l                                       ; $6b2f: $6d
    ld e, $6d                                     ; $6b30: $1e $6d
    ld b, [hl]                                    ; $6b32: $46
    ld l, h                                       ; $6b33: $6c
    ld b, h                                       ; $6b34: $44
    ld b, c                                       ; $6b35: $41
    ld b, d                                       ; $6b36: $42
    ld bc, $0101                                  ; $6b37: $01 $01 $01
    ld bc, $0101                                  ; $6b3a: $01 $01 $01
    ld bc, $0101                                  ; $6b3d: $01 $01 $01
    ld bc, $0101                                  ; $6b40: $01 $01 $01
    ld bc, $0101                                  ; $6b43: $01 $01 $01
    ld bc, $1e6d                                  ; $6b46: $01 $6d $1e
    ld l, e                                       ; $6b49: $6b
    ld b, h                                       ; $6b4a: $44
    ld l, h                                       ; $6b4b: $6c
    ld b, d                                       ; $6b4c: $42
    ld b, e                                       ; $6b4d: $43
    ld b, [hl]                                    ; $6b4e: $46
    ld l, e                                       ; $6b4f: $6b
    ld b, h                                       ; $6b50: $44
    ld b, c                                       ; $6b51: $41
    ld b, l                                       ; $6b52: $45
    ld b, e                                       ; $6b53: $43
    ld b, [hl]                                    ; $6b54: $46
    rra                                           ; $6b55: $1f
    ld b, b                                       ; $6b56: $40
    ld bc, $0101                                  ; $6b57: $01 $01 $01
    ld bc, $0101                                  ; $6b5a: $01 $01 $01
    ld bc, $0101                                  ; $6b5d: $01 $01 $01
    ld bc, $0101                                  ; $6b60: $01 $01 $01
    ld bc, $0101                                  ; $6b63: $01 $01 $01
    ld bc, $4240                                  ; $6b66: $01 $40 $42
    ld b, l                                       ; $6b69: $45
    db $fd                                        ; $6b6a: $fd
    ld e, $fd                                     ; $6b6b: $1e $fd
    cp $ff                                        ; $6b6d: $fe $ff
    db $d3                                        ; $6b6f: $d3
    rst $38                                       ; $6b70: $ff
    nop                                           ; $6b71: $00
    db $d3                                        ; $6b72: $d3
    db $d3                                        ; $6b73: $d3
    db $d3                                        ; $6b74: $d3
    db $d3                                        ; $6b75: $d3
    db $fd                                        ; $6b76: $fd
    ld bc, $0101                                  ; $6b77: $01 $01 $01
    ld bc, $0101                                  ; $6b7a: $01 $01 $01
    ld bc, $0101                                  ; $6b7d: $01 $01 $01
    ld bc, $0101                                  ; $6b80: $01 $01 $01
    ld bc, $0101                                  ; $6b83: $01 $01 $01
    ld bc, $33fe                                  ; $6b86: $01 $fe $33
    inc [hl]                                      ; $6b89: $34
    dec [hl]                                      ; $6b8a: $35
    nop                                           ; $6b8b: $00
    scf                                           ; $6b8c: $37
    jr c, @+$3b                                   ; $6b8d: $38 $39

    db $d3                                        ; $6b8f: $d3
    ld b, a                                       ; $6b90: $47
    ld c, b                                       ; $6b91: $48
    ld c, e                                       ; $6b92: $4b
    cp $49                                        ; $6b93: $fe $49
    ld c, d                                       ; $6b95: $4a
    ld c, a                                       ; $6b96: $4f
    ld bc, $8282                                  ; $6b97: $01 $82 $82
    add d                                         ; $6b9a: $82
    ld bc, $8282                                  ; $6b9b: $01 $82 $82
    add d                                         ; $6b9e: $82
    ld bc, $8282                                  ; $6b9f: $01 $82 $82
    add d                                         ; $6ba2: $82
    ld bc, $8282                                  ; $6ba3: $01 $82 $82
    add d                                         ; $6ba6: $82
    ld [hl], $3c                                  ; $6ba7: $36 $3c
    dec a                                         ; $6ba9: $3d
    db $d3                                        ; $6baa: $d3
    ld a, [hl-]                                   ; $6bab: $3a
    ld a, $3f                                     ; $6bac: $3e $3f
    push af                                       ; $6bae: $f5
    ld c, h                                       ; $6baf: $4c
    ld c, l                                       ; $6bb0: $4d
    ld c, [hl]                                    ; $6bb1: $4e
    db $d3                                        ; $6bb2: $d3
    ld d, b                                       ; $6bb3: $50
    ld d, c                                       ; $6bb4: $51
    ld d, d                                       ; $6bb5: $52
    db $d3                                        ; $6bb6: $d3
    add d                                         ; $6bb7: $82
    add d                                         ; $6bb8: $82
    add d                                         ; $6bb9: $82
    ld bc, $8282                                  ; $6bba: $01 $82 $82
    add d                                         ; $6bbd: $82
    ld bc, $8282                                  ; $6bbe: $01 $82 $82
    add d                                         ; $6bc1: $82
    ld bc, $8282                                  ; $6bc2: $01 $82 $82
    add d                                         ; $6bc5: $82
    ld bc, $6a5b                                  ; $6bc6: $01 $5b $6a
    add c                                         ; $6bc9: $81
    add d                                         ; $6bca: $82
    ld e, a                                       ; $6bcb: $5f
    ld a, b                                       ; $6bcc: $78
    add h                                         ; $6bcd: $84
    add l                                         ; $6bce: $85
    ld h, e                                       ; $6bcf: $63
    ld a, c                                       ; $6bd0: $79
    add a                                         ; $6bd1: $87
    adc b                                         ; $6bd2: $88
    ld h, a                                       ; $6bd3: $67
    ld l, b                                       ; $6bd4: $68
    ld l, c                                       ; $6bd5: $69
    ld l, d                                       ; $6bd6: $6a
    inc bc                                        ; $6bd7: $03
    ld b, e                                       ; $6bd8: $43
    dec bc                                        ; $6bd9: $0b
    dec bc                                        ; $6bda: $0b
    inc bc                                        ; $6bdb: $03
    inc bc                                        ; $6bdc: $03
    dec bc                                        ; $6bdd: $0b
    dec bc                                        ; $6bde: $0b
    inc bc                                        ; $6bdf: $03
    inc bc                                        ; $6be0: $03
    dec bc                                        ; $6be1: $0b
    dec bc                                        ; $6be2: $0b
    ld h, e                                       ; $6be3: $63
    inc bc                                        ; $6be4: $03
    inc bc                                        ; $6be5: $03
    inc bc                                        ; $6be6: $03
    db $d3                                        ; $6be7: $d3
    db $d3                                        ; $6be8: $d3
    push af                                       ; $6be9: $f5
    rst $38                                       ; $6bea: $ff
    inc b                                         ; $6beb: $04
    ld bc, $d3d3                                  ; $6bec: $01 $d3 $d3
    db $d3                                        ; $6bef: $d3
    db $d3                                        ; $6bf0: $d3
    db $d3                                        ; $6bf1: $d3
    db $d3                                        ; $6bf2: $d3
    ei                                            ; $6bf3: $fb
    pop de                                        ; $6bf4: $d1
    db $d3                                        ; $6bf5: $d3
    db $d3                                        ; $6bf6: $d3
    ld bc, $0101                                  ; $6bf7: $01 $01 $01
    ld bc, $0101                                  ; $6bfa: $01 $01 $01
    ld bc, $0101                                  ; $6bfd: $01 $01 $01
    ld bc, $0101                                  ; $6c00: $01 $01 $01
    ld bc, $0101                                  ; $6c03: $01 $01 $01
    ld bc, $d300                                  ; $6c06: $01 $00 $d3
    db $d3                                        ; $6c09: $d3
    ld d, e                                       ; $6c0a: $53
    db $d3                                        ; $6c0b: $d3
    db $d3                                        ; $6c0c: $d3
    db $d3                                        ; $6c0d: $d3
    ld d, l                                       ; $6c0e: $55
    push af                                       ; $6c0f: $f5
    db $d3                                        ; $6c10: $d3
    db $fc                                        ; $6c11: $fc
    push af                                       ; $6c12: $f5
    db $d3                                        ; $6c13: $d3
    db $fd                                        ; $6c14: $fd
    cp $d3                                        ; $6c15: $fe $d3
    ld bc, $0101                                  ; $6c17: $01 $01 $01
    inc bc                                        ; $6c1a: $03
    ld bc, $0101                                  ; $6c1b: $01 $01 $01
    inc bc                                        ; $6c1e: $03
    ld bc, $0701                                  ; $6c1f: $01 $01 $07
    ld bc, $0101                                  ; $6c22: $01 $01 $01
    ld bc, $5401                                  ; $6c25: $01 $01 $54
    db $d3                                        ; $6c28: $d3
    db $d3                                        ; $6c29: $d3
    db $d3                                        ; $6c2a: $d3
    ld d, [hl]                                    ; $6c2b: $56
    db $d3                                        ; $6c2c: $d3
    ei                                            ; $6c2d: $fb
    pop de                                        ; $6c2e: $d1
    db $fd                                        ; $6c2f: $fd
    cp $d3                                        ; $6c30: $fe $d3
    db $d3                                        ; $6c32: $d3
    rst $38                                       ; $6c33: $ff
    nop                                           ; $6c34: $00
    db $d3                                        ; $6c35: $d3
    db $d3                                        ; $6c36: $d3
    inc bc                                        ; $6c37: $03
    ld bc, $0101                                  ; $6c38: $01 $01 $01
    inc bc                                        ; $6c3b: $03
    ld bc, $0101                                  ; $6c3c: $01 $01 $01
    ld bc, $0101                                  ; $6c3f: $01 $01 $01
    ld bc, $0101                                  ; $6c42: $01 $01 $01
    ld bc, $5b01                                  ; $6c45: $01 $01 $5b
    ld [hl], d                                    ; $6c48: $72
    ld [hl], e                                    ; $6c49: $73
    ld [hl], h                                    ; $6c4a: $74
    ld e, a                                       ; $6c4b: $5f
    ld [hl], b                                    ; $6c4c: $70
    ld [hl], c                                    ; $6c4d: $71
    ld h, d                                       ; $6c4e: $62
    ld h, e                                       ; $6c4f: $63
    ld h, h                                       ; $6c50: $64
    ld h, l                                       ; $6c51: $65
    ld h, [hl]                                    ; $6c52: $66
    ld h, a                                       ; $6c53: $67
    ld l, b                                       ; $6c54: $68
    ld l, c                                       ; $6c55: $69
    ld l, d                                       ; $6c56: $6a
    inc bc                                        ; $6c57: $03
    inc bc                                        ; $6c58: $03
    inc bc                                        ; $6c59: $03
    inc bc                                        ; $6c5a: $03
    inc bc                                        ; $6c5b: $03
    inc bc                                        ; $6c5c: $03
    inc bc                                        ; $6c5d: $03
    inc bc                                        ; $6c5e: $03
    inc bc                                        ; $6c5f: $03
    inc bc                                        ; $6c60: $03
    inc bc                                        ; $6c61: $03
    inc bc                                        ; $6c62: $03
    ld h, e                                       ; $6c63: $63
    inc bc                                        ; $6c64: $03
    inc bc                                        ; $6c65: $03
    inc bc                                        ; $6c66: $03
    db $d3                                        ; $6c67: $d3
    db $d3                                        ; $6c68: $d3
    db $d3                                        ; $6c69: $d3
    ld b, l                                       ; $6c6a: $45
    rra                                           ; $6c6b: $1f
    ld b, b                                       ; $6c6c: $40
    ld l, e                                       ; $6c6d: $6b
    ld b, h                                       ; $6c6e: $44
    ld l, e                                       ; $6c6f: $6b
    ld b, h                                       ; $6c70: $44
    rra                                           ; $6c71: $1f
    db $fd                                        ; $6c72: $fd
    ld b, e                                       ; $6c73: $43
    ld b, l                                       ; $6c74: $45
    ld l, l                                       ; $6c75: $6d
    rst $38                                       ; $6c76: $ff
    ld bc, $0101                                  ; $6c77: $01 $01 $01
    ld bc, $0101                                  ; $6c7a: $01 $01 $01
    ld bc, $0101                                  ; $6c7d: $01 $01 $01
    ld bc, $0101                                  ; $6c80: $01 $01 $01
    ld bc, $0101                                  ; $6c83: $01 $01 $01
    ld bc, $ff6d                                  ; $6c86: $01 $6d $ff
    nop                                           ; $6c89: $00
    db $d3                                        ; $6c8a: $d3
    ld l, l                                       ; $6c8b: $6d
    db $d3                                        ; $6c8c: $d3
    db $fd                                        ; $6c8d: $fd
    cp $fe                                        ; $6c8e: $fe $fe
    db $d3                                        ; $6c90: $d3
    rst $38                                       ; $6c91: $ff
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    db $d3                                        ; $6c94: $d3
    jr nc, jr_08a_6cc8                            ; $6c95: $30 $31

    ld bc, $0101                                  ; $6c97: $01 $01 $01
    ld bc, $0101                                  ; $6c9a: $01 $01 $01
    ld bc, $0101                                  ; $6c9d: $01 $01 $01
    ld bc, $0101                                  ; $6ca0: $01 $01 $01
    ld bc, $8201                                  ; $6ca3: $01 $01 $82
    add d                                         ; $6ca6: $82
    db $d3                                        ; $6ca7: $d3
    db $fd                                        ; $6ca8: $fd
    cp $d3                                        ; $6ca9: $fe $d3
    db $d3                                        ; $6cab: $d3
    rst $38                                       ; $6cac: $ff
    nop                                           ; $6cad: $00
    db $d3                                        ; $6cae: $d3
    db $fc                                        ; $6caf: $fc
    db $d3                                        ; $6cb0: $d3
    ei                                            ; $6cb1: $fb
    pop de                                        ; $6cb2: $d1
    ld [hl-], a                                   ; $6cb3: $32
    dec sp                                        ; $6cb4: $3b
    db $d3                                        ; $6cb5: $d3
    db $fc                                        ; $6cb6: $fc
    ld bc, $0101                                  ; $6cb7: $01 $01 $01
    ld bc, $0101                                  ; $6cba: $01 $01 $01
    ld bc, $0701                                  ; $6cbd: $01 $01 $07
    ld bc, $0101                                  ; $6cc0: $01 $01 $01
    add d                                         ; $6cc3: $82
    add d                                         ; $6cc4: $82
    ld bc, $5b07                                  ; $6cc5: $01 $07 $5b

jr_08a_6cc8:
    ld l, [hl]                                    ; $6cc8: $6e
    ld l, a                                       ; $6cc9: $6f
    ld e, [hl]                                    ; $6cca: $5e
    ld e, a                                       ; $6ccb: $5f
    ld a, d                                       ; $6ccc: $7a
    ld a, e                                       ; $6ccd: $7b
    ld h, d                                       ; $6cce: $62
    ld h, e                                       ; $6ccf: $63
    ld h, h                                       ; $6cd0: $64
    ld h, l                                       ; $6cd1: $65
    ld h, [hl]                                    ; $6cd2: $66
    ld h, a                                       ; $6cd3: $67
    ld l, b                                       ; $6cd4: $68
    ld l, c                                       ; $6cd5: $69
    ld l, d                                       ; $6cd6: $6a
    inc bc                                        ; $6cd7: $03
    inc bc                                        ; $6cd8: $03
    inc bc                                        ; $6cd9: $03
    inc bc                                        ; $6cda: $03
    inc bc                                        ; $6cdb: $03
    inc bc                                        ; $6cdc: $03
    inc bc                                        ; $6cdd: $03
    inc bc                                        ; $6cde: $03
    inc bc                                        ; $6cdf: $03
    inc bc                                        ; $6ce0: $03
    inc bc                                        ; $6ce1: $03
    inc bc                                        ; $6ce2: $03
    ld h, e                                       ; $6ce3: $63
    inc bc                                        ; $6ce4: $03
    inc bc                                        ; $6ce5: $03
    inc bc                                        ; $6ce6: $03
    ld b, c                                       ; $6ce7: $41
    ld b, b                                       ; $6ce8: $40
    db $d3                                        ; $6ce9: $d3
    db $d3                                        ; $6cea: $d3
    ld l, l                                       ; $6ceb: $6d
    db $d3                                        ; $6cec: $d3
    db $d3                                        ; $6ced: $d3
    db $d3                                        ; $6cee: $d3
    ld l, h                                       ; $6cef: $6c
    db $d3                                        ; $6cf0: $d3
    ei                                            ; $6cf1: $fb
    pop de                                        ; $6cf2: $d1
    db $d3                                        ; $6cf3: $d3
    ld e, c                                       ; $6cf4: $59
    db $d3                                        ; $6cf5: $d3
    db $d3                                        ; $6cf6: $d3
    ld bc, $0101                                  ; $6cf7: $01 $01 $01
    ld bc, $0101                                  ; $6cfa: $01 $01 $01
    ld bc, $0101                                  ; $6cfd: $01 $01 $01
    ld bc, $0101                                  ; $6d00: $01 $01 $01
    ld bc, $0105                                  ; $6d03: $01 $05 $01
    ld bc, $33d3                                  ; $6d06: $01 $d3 $33
    inc [hl]                                      ; $6d09: $34
    dec [hl]                                      ; $6d0a: $35
    db $d3                                        ; $6d0b: $d3
    scf                                           ; $6d0c: $37
    jr c, @+$3b                                   ; $6d0d: $38 $39

    db $d3                                        ; $6d0f: $d3
    ld b, a                                       ; $6d10: $47
    ld c, b                                       ; $6d11: $48
    ld c, e                                       ; $6d12: $4b
    db $d3                                        ; $6d13: $d3
    ld c, c                                       ; $6d14: $49
    ld c, d                                       ; $6d15: $4a
    ld c, a                                       ; $6d16: $4f
    ld bc, $8282                                  ; $6d17: $01 $82 $82
    add d                                         ; $6d1a: $82
    ld bc, $8282                                  ; $6d1b: $01 $82 $82
    add d                                         ; $6d1e: $82
    ld bc, $8282                                  ; $6d1f: $01 $82 $82
    add d                                         ; $6d22: $82
    ld bc, $8282                                  ; $6d23: $01 $82 $82
    add d                                         ; $6d26: $82
    ld [hl], $3c                                  ; $6d27: $36 $3c
    dec a                                         ; $6d29: $3d
    db $d3                                        ; $6d2a: $d3
    ld a, [hl-]                                   ; $6d2b: $3a
    ld a, $3f                                     ; $6d2c: $3e $3f
    db $d3                                        ; $6d2e: $d3
    ld c, h                                       ; $6d2f: $4c
    ld c, l                                       ; $6d30: $4d
    ld c, [hl]                                    ; $6d31: $4e
    db $d3                                        ; $6d32: $d3
    ld d, b                                       ; $6d33: $50
    ld d, c                                       ; $6d34: $51
    ld d, d                                       ; $6d35: $52
    db $d3                                        ; $6d36: $d3
    add d                                         ; $6d37: $82
    add d                                         ; $6d38: $82
    add d                                         ; $6d39: $82
    ld bc, $8282                                  ; $6d3a: $01 $82 $82
    add d                                         ; $6d3d: $82
    ld bc, $8282                                  ; $6d3e: $01 $82 $82
    add d                                         ; $6d41: $82
    ld bc, $8282                                  ; $6d42: $01 $82 $82
    add d                                         ; $6d45: $82
    ld bc, $6e5b                                  ; $6d46: $01 $5b $6e
    ld l, a                                       ; $6d49: $6f
    ld e, [hl]                                    ; $6d4a: $5e
    ld e, a                                       ; $6d4b: $5f
    ld [hl], b                                    ; $6d4c: $70
    ld [hl], c                                    ; $6d4d: $71
    ld h, d                                       ; $6d4e: $62
    ld h, e                                       ; $6d4f: $63
    ld h, h                                       ; $6d50: $64
    ld h, l                                       ; $6d51: $65
    ld h, [hl]                                    ; $6d52: $66
    ld h, a                                       ; $6d53: $67
    ld l, b                                       ; $6d54: $68
    ld [hl], d                                    ; $6d55: $72
    ld [hl], e                                    ; $6d56: $73
    inc bc                                        ; $6d57: $03
    inc bc                                        ; $6d58: $03
    inc bc                                        ; $6d59: $03
    inc bc                                        ; $6d5a: $03
    inc bc                                        ; $6d5b: $03
    inc bc                                        ; $6d5c: $03
    inc bc                                        ; $6d5d: $03
    inc bc                                        ; $6d5e: $03
    inc bc                                        ; $6d5f: $03
    inc bc                                        ; $6d60: $03
    inc bc                                        ; $6d61: $03
    inc bc                                        ; $6d62: $03
    ld h, e                                       ; $6d63: $63
    inc bc                                        ; $6d64: $03
    inc bc                                        ; $6d65: $03
    inc bc                                        ; $6d66: $03
    add e                                         ; $6d67: $83
    ld l, a                                       ; $6d68: $6f
    ld e, [hl]                                    ; $6d69: $5e
    ld h, a                                       ; $6d6a: $67
    add [hl]                                      ; $6d6b: $86
    ld [hl], c                                    ; $6d6c: $71
    ld h, d                                       ; $6d6d: $62
    ld a, h                                       ; $6d6e: $7c
    adc c                                         ; $6d6f: $89
    ld h, l                                       ; $6d70: $65
    ld h, [hl]                                    ; $6d71: $66
    ld a, l                                       ; $6d72: $7d
    ld l, b                                       ; $6d73: $68
    ld l, c                                       ; $6d74: $69
    ld l, d                                       ; $6d75: $6a
    ld a, [hl]                                    ; $6d76: $7e
    dec bc                                        ; $6d77: $0b
    inc bc                                        ; $6d78: $03
    inc bc                                        ; $6d79: $03
    inc bc                                        ; $6d7a: $03
    dec bc                                        ; $6d7b: $0b
    inc bc                                        ; $6d7c: $03
    inc bc                                        ; $6d7d: $03
    inc bc                                        ; $6d7e: $03
    dec bc                                        ; $6d7f: $0b
    inc bc                                        ; $6d80: $03
    inc bc                                        ; $6d81: $03
    inc bc                                        ; $6d82: $03
    inc bc                                        ; $6d83: $03
    inc bc                                        ; $6d84: $03
    inc bc                                        ; $6d85: $03
    inc bc                                        ; $6d86: $03
    db $d3                                        ; $6d87: $d3
    inc sp                                        ; $6d88: $33
    inc [hl]                                      ; $6d89: $34
    dec [hl]                                      ; $6d8a: $35
    db $d3                                        ; $6d8b: $d3
    scf                                           ; $6d8c: $37
    jr c, @+$3b                                   ; $6d8d: $38 $39

    push af                                       ; $6d8f: $f5
    ld b, a                                       ; $6d90: $47
    ld c, b                                       ; $6d91: $48
    ld c, e                                       ; $6d92: $4b
    db $d3                                        ; $6d93: $d3
    ld c, c                                       ; $6d94: $49
    ld c, d                                       ; $6d95: $4a
    ld c, a                                       ; $6d96: $4f
    ld bc, $8282                                  ; $6d97: $01 $82 $82
    add d                                         ; $6d9a: $82
    ld bc, $8282                                  ; $6d9b: $01 $82 $82
    add d                                         ; $6d9e: $82
    ld bc, $8282                                  ; $6d9f: $01 $82 $82
    add d                                         ; $6da2: $82
    ld bc, $8282                                  ; $6da3: $01 $82 $82
    add d                                         ; $6da6: $82
    db $d3                                        ; $6da7: $d3
    ld a, [$f9f8]                                 ; $6da8: $fa $f8 $f9
    db $fd                                        ; $6dab: $fd
    cp $d3                                        ; $6dac: $fe $d3
    ld a, [$00ff]                                 ; $6dae: $fa $ff $00
    db $d3                                        ; $6db1: $d3
    sbc d                                         ; $6db2: $9a
    db $d3                                        ; $6db3: $d3
    db $d3                                        ; $6db4: $d3
    db $d3                                        ; $6db5: $d3
    db $d3                                        ; $6db6: $d3
    ld bc, $0101                                  ; $6db7: $01 $01 $01
    ld bc, $0101                                  ; $6dba: $01 $01 $01
    ld bc, $0101                                  ; $6dbd: $01 $01 $01
    ld bc, $0d01                                  ; $6dc0: $01 $01 $0d
    ld bc, $0101                                  ; $6dc3: $01 $01 $01
    ld bc, $807f                                  ; $6dc6: $01 $7f $80
    ld e, [hl]                                    ; $6dc9: $5e
    ld h, a                                       ; $6dca: $67
    ld [hl], b                                    ; $6dcb: $70
    ld [hl], c                                    ; $6dcc: $71
    ld h, d                                       ; $6dcd: $62
    ld a, h                                       ; $6dce: $7c
    ld h, h                                       ; $6dcf: $64
    ld h, l                                       ; $6dd0: $65
    ld h, [hl]                                    ; $6dd1: $66
    ld a, l                                       ; $6dd2: $7d
    ld l, b                                       ; $6dd3: $68
    ld l, c                                       ; $6dd4: $69
    ld l, d                                       ; $6dd5: $6a
    ld a, [hl]                                    ; $6dd6: $7e
    inc bc                                        ; $6dd7: $03
    dec bc                                        ; $6dd8: $0b
    inc bc                                        ; $6dd9: $03
    inc bc                                        ; $6dda: $03
    inc bc                                        ; $6ddb: $03
    inc bc                                        ; $6ddc: $03
    inc bc                                        ; $6ddd: $03
    inc bc                                        ; $6dde: $03
    inc bc                                        ; $6ddf: $03
    inc bc                                        ; $6de0: $03
    inc bc                                        ; $6de1: $03
    inc bc                                        ; $6de2: $03
    inc bc                                        ; $6de3: $03
    inc bc                                        ; $6de4: $03
    inc bc                                        ; $6de5: $03
    inc bc                                        ; $6de6: $03
    db $d3                                        ; $6de7: $d3
    db $d3                                        ; $6de8: $d3
    db $d3                                        ; $6de9: $d3
    ld d, e                                       ; $6dea: $53
    db $d3                                        ; $6deb: $d3
    db $d3                                        ; $6dec: $d3
    push af                                       ; $6ded: $f5
    ld d, l                                       ; $6dee: $55
    db $fc                                        ; $6def: $fc
    db $d3                                        ; $6df0: $d3
    db $d3                                        ; $6df1: $d3
    ld l, l                                       ; $6df2: $6d
    ld b, b                                       ; $6df3: $40
    ld l, h                                       ; $6df4: $6c
    ld l, e                                       ; $6df5: $6b
    ld b, h                                       ; $6df6: $44
    ld bc, $0101                                  ; $6df7: $01 $01 $01
    inc bc                                        ; $6dfa: $03
    ld bc, $0101                                  ; $6dfb: $01 $01 $01
    inc bc                                        ; $6dfe: $03
    rlca                                          ; $6dff: $07
    ld bc, $0101                                  ; $6e00: $01 $01 $01
    ld bc, $0101                                  ; $6e03: $01 $01 $01
    ld bc, $d354                                  ; $6e06: $01 $54 $d3
    db $d3                                        ; $6e09: $d3
    push af                                       ; $6e0a: $f5
    ld d, [hl]                                    ; $6e0b: $56
    db $d3                                        ; $6e0c: $d3
    db $d3                                        ; $6e0d: $d3
    ld l, l                                       ; $6e0e: $6d
    ld e, $46                                     ; $6e0f: $1e $46
    ld l, e                                       ; $6e11: $6b
    ld b, h                                       ; $6e12: $44
    ld b, c                                       ; $6e13: $41
    ld b, d                                       ; $6e14: $42
    ld b, e                                       ; $6e15: $43
    rra                                           ; $6e16: $1f
    inc bc                                        ; $6e17: $03
    ld bc, $0101                                  ; $6e18: $01 $01 $01
    inc bc                                        ; $6e1b: $03
    ld bc, $0101                                  ; $6e1c: $01 $01 $01
    ld bc, $0101                                  ; $6e1f: $01 $01 $01
    ld bc, $0101                                  ; $6e22: $01 $01 $01
    ld bc, $d301                                  ; $6e25: $01 $01 $d3
    db $fc                                        ; $6e28: $fc
    db $d3                                        ; $6e29: $d3
    db $d3                                        ; $6e2a: $d3
    ld b, e                                       ; $6e2b: $43
    ld b, [hl]                                    ; $6e2c: $46
    ld l, h                                       ; $6e2d: $6c
    ld d, a                                       ; $6e2e: $57
    ld b, c                                       ; $6e2f: $41
    ld e, $a7                                     ; $6e30: $1e $a7
    db $d3                                        ; $6e32: $d3
    ld b, b                                       ; $6e33: $40
    db $d3                                        ; $6e34: $d3
    db $d3                                        ; $6e35: $d3
    db $d3                                        ; $6e36: $d3
    ld bc, $0107                                  ; $6e37: $01 $07 $01
    ld bc, $0101                                  ; $6e3a: $01 $01 $01
    ld bc, HeaderSGBFlag                          ; $6e3d: $01 $46 $01
    ld bc, $010d                                  ; $6e40: $01 $0d $01
    ld bc, $0101                                  ; $6e43: $01 $01 $01
    ld bc, $7675                                  ; $6e46: $01 $75 $76
    ld [hl], a                                    ; $6e49: $77
    ld h, a                                       ; $6e4a: $67
    ld [hl], b                                    ; $6e4b: $70
    ld [hl], c                                    ; $6e4c: $71
    ld h, d                                       ; $6e4d: $62
    ld a, h                                       ; $6e4e: $7c
    ld h, h                                       ; $6e4f: $64
    ld h, l                                       ; $6e50: $65
    ld h, [hl]                                    ; $6e51: $66
    ld a, l                                       ; $6e52: $7d
    ld e, h                                       ; $6e53: $5c
    ld e, l                                       ; $6e54: $5d
    ld l, d                                       ; $6e55: $6a
    ld a, [hl]                                    ; $6e56: $7e
    inc bc                                        ; $6e57: $03
    inc bc                                        ; $6e58: $03
    inc bc                                        ; $6e59: $03
    inc bc                                        ; $6e5a: $03
    inc bc                                        ; $6e5b: $03
    inc bc                                        ; $6e5c: $03
    inc bc                                        ; $6e5d: $03
    inc bc                                        ; $6e5e: $03
    inc bc                                        ; $6e5f: $03
    inc bc                                        ; $6e60: $03
    inc bc                                        ; $6e61: $03
    inc bc                                        ; $6e62: $03
    inc bc                                        ; $6e63: $03
    inc bc                                        ; $6e64: $03
    inc bc                                        ; $6e65: $03
    inc bc                                        ; $6e66: $03
    db $d3                                        ; $6e67: $d3
    rra                                           ; $6e68: $1f
    ld b, b                                       ; $6e69: $40
    ld b, [hl]                                    ; $6e6a: $46
    ei                                            ; $6e6b: $fb
    pop de                                        ; $6e6c: $d1
    db $d3                                        ; $6e6d: $d3
    ld l, l                                       ; $6e6e: $6d
    db $d3                                        ; $6e6f: $d3
    db $d3                                        ; $6e70: $d3
    db $d3                                        ; $6e71: $d3
    push af                                       ; $6e72: $f5
    db $d3                                        ; $6e73: $d3
    db $d3                                        ; $6e74: $d3
    jr nc, jr_08a_6ea8                            ; $6e75: $30 $31

    ld bc, $0101                                  ; $6e77: $01 $01 $01
    ld bc, $0101                                  ; $6e7a: $01 $01 $01
    ld bc, $0101                                  ; $6e7d: $01 $01 $01
    ld bc, $0101                                  ; $6e80: $01 $01 $01
    ld bc, $8201                                  ; $6e83: $01 $01 $82
    add d                                         ; $6e86: $82
    ld l, e                                       ; $6e87: $6b
    ld l, h                                       ; $6e88: $6c
    db $d3                                        ; $6e89: $d3
    ld a, [$d31e]                                 ; $6e8a: $fa $1e $d3
    db $d3                                        ; $6e8d: $d3
    db $d3                                        ; $6e8e: $d3
    db $d3                                        ; $6e8f: $d3
    db $d3                                        ; $6e90: $d3
    db $d3                                        ; $6e91: $d3
    db $fd                                        ; $6e92: $fd
    ld [hl-], a                                   ; $6e93: $32
    dec sp                                        ; $6e94: $3b
    db $d3                                        ; $6e95: $d3
    rst $38                                       ; $6e96: $ff
    ld bc, $0101                                  ; $6e97: $01 $01 $01
    ld bc, $0101                                  ; $6e9a: $01 $01 $01
    ld bc, $0101                                  ; $6e9d: $01 $01 $01
    ld bc, $0101                                  ; $6ea0: $01 $01 $01
    add d                                         ; $6ea3: $82
    add d                                         ; $6ea4: $82
    ld bc, $f801                                  ; $6ea5: $01 $01 $f8

jr_08a_6ea8:
    ld sp, hl                                     ; $6ea8: $f9
    inc b                                         ; $6ea9: $04
    ld bc, $fa02                                  ; $6eaa: $01 $02 $fa
    ld hl, $fe20                                  ; $6ead: $21 $20 $fe
    db $d3                                        ; $6eb0: $d3
    ld [bc], a                                    ; $6eb1: $02
    ld a, [$d300]                                 ; $6eb2: $fa $00 $d3
    db $d3                                        ; $6eb5: $d3
    db $d3                                        ; $6eb6: $d3
    ld bc, $0101                                  ; $6eb7: $01 $01 $01
    ld bc, $0101                                  ; $6eba: $01 $01 $01
    ld bc, $0101                                  ; $6ebd: $01 $01 $01
    ld bc, $0101                                  ; $6ec0: $01 $01 $01
    ld bc, $0101                                  ; $6ec3: $01 $01 $01
    ld bc, $6160                                  ; $6ec6: $01 $60 $61
    ld e, [hl]                                    ; $6ec9: $5e
    ld h, a                                       ; $6eca: $67
    ld [hl], b                                    ; $6ecb: $70
    ld a, d                                       ; $6ecc: $7a
    ld a, e                                       ; $6ecd: $7b
    ld a, h                                       ; $6ece: $7c
    ld h, h                                       ; $6ecf: $64
    ld h, l                                       ; $6ed0: $65
    ld h, [hl]                                    ; $6ed1: $66
    ld a, l                                       ; $6ed2: $7d
    ld [hl], h                                    ; $6ed3: $74
    ld a, a                                       ; $6ed4: $7f
    add b                                         ; $6ed5: $80
    ld a, [hl]                                    ; $6ed6: $7e
    inc bc                                        ; $6ed7: $03
    inc bc                                        ; $6ed8: $03
    inc bc                                        ; $6ed9: $03
    inc bc                                        ; $6eda: $03
    inc bc                                        ; $6edb: $03
    inc bc                                        ; $6edc: $03
    inc bc                                        ; $6edd: $03
    inc bc                                        ; $6ede: $03
    inc bc                                        ; $6edf: $03
    inc bc                                        ; $6ee0: $03
    inc bc                                        ; $6ee1: $03
    inc bc                                        ; $6ee2: $03
    inc bc                                        ; $6ee3: $03
    inc bc                                        ; $6ee4: $03
    dec bc                                        ; $6ee5: $0b
    inc bc                                        ; $6ee6: $03
    push af                                       ; $6ee7: $f5
    inc sp                                        ; $6ee8: $33
    inc [hl]                                      ; $6ee9: $34
    dec [hl]                                      ; $6eea: $35
    db $d3                                        ; $6eeb: $d3
    scf                                           ; $6eec: $37
    jr c, @+$3b                                   ; $6eed: $38 $39

    db $d3                                        ; $6eef: $d3
    ld b, a                                       ; $6ef0: $47
    ld c, b                                       ; $6ef1: $48
    ld c, e                                       ; $6ef2: $4b
    db $d3                                        ; $6ef3: $d3
    ld c, c                                       ; $6ef4: $49
    ld c, d                                       ; $6ef5: $4a
    ld c, a                                       ; $6ef6: $4f
    ld bc, $8282                                  ; $6ef7: $01 $82 $82
    add d                                         ; $6efa: $82
    ld bc, $8282                                  ; $6efb: $01 $82 $82
    add d                                         ; $6efe: $82
    ld bc, $8282                                  ; $6eff: $01 $82 $82
    add d                                         ; $6f02: $82
    ld bc, $8282                                  ; $6f03: $01 $82 $82
    add d                                         ; $6f06: $82
    ld [hl], $3c                                  ; $6f07: $36 $3c
    dec a                                         ; $6f09: $3d
    db $d3                                        ; $6f0a: $d3
    ld a, [hl-]                                   ; $6f0b: $3a
    ld a, $3f                                     ; $6f0c: $3e $3f
    db $d3                                        ; $6f0e: $d3
    ld c, h                                       ; $6f0f: $4c
    ld c, l                                       ; $6f10: $4d
    ld c, [hl]                                    ; $6f11: $4e
    db $d3                                        ; $6f12: $d3
    ld d, b                                       ; $6f13: $50
    ld d, c                                       ; $6f14: $51
    ld d, d                                       ; $6f15: $52
    push af                                       ; $6f16: $f5
    add d                                         ; $6f17: $82
    add d                                         ; $6f18: $82
    add d                                         ; $6f19: $82
    ld bc, $8282                                  ; $6f1a: $01 $82 $82
    add d                                         ; $6f1d: $82
    ld bc, $8282                                  ; $6f1e: $01 $82 $82
    add d                                         ; $6f21: $82
    ld bc, $8282                                  ; $6f22: $01 $82 $82
    add d                                         ; $6f25: $82
    ld bc, $d3d3                                  ; $6f26: $01 $d3 $d3
    db $d3                                        ; $6f29: $d3
    db $d3                                        ; $6f2a: $d3
    db $d3                                        ; $6f2b: $d3
    db $d3                                        ; $6f2c: $d3
    db $d3                                        ; $6f2d: $d3
    db $d3                                        ; $6f2e: $d3
    db $d3                                        ; $6f2f: $d3
    rra                                           ; $6f30: $1f
    ld b, b                                       ; $6f31: $40
    ld l, h                                       ; $6f32: $6c
    db $d3                                        ; $6f33: $d3
    db $d3                                        ; $6f34: $d3
    ld e, $1f                                     ; $6f35: $1e $1f
    ld bc, $0101                                  ; $6f37: $01 $01 $01
    ld bc, $0101                                  ; $6f3a: $01 $01 $01
    ld bc, $0101                                  ; $6f3d: $01 $01 $01
    ld bc, $0101                                  ; $6f40: $01 $01 $01
    ld bc, $0101                                  ; $6f43: $01 $01 $01
    ld bc, $0c03                                  ; $6f46: $01 $03 $0c
    ld hl, $f8fa                                  ; $6f49: $21 $fa $f8
    ld sp, hl                                     ; $6f4c: $f9
    inc b                                         ; $6f4d: $04
    ld bc, $f5d3                                  ; $6f4e: $01 $d3 $f5
    db $d3                                        ; $6f51: $d3
    and a                                         ; $6f52: $a7
    ld e, c                                       ; $6f53: $59
    ld d, a                                       ; $6f54: $57
    db $d3                                        ; $6f55: $d3
    db $d3                                        ; $6f56: $d3
    ld bc, $0101                                  ; $6f57: $01 $01 $01
    ld bc, $0101                                  ; $6f5a: $01 $01 $01
    ld bc, $0101                                  ; $6f5d: $01 $01 $01
    ld bc, $0e01                                  ; $6f60: $01 $01 $0e
    dec b                                         ; $6f63: $05
    dec b                                         ; $6f64: $05
    ld bc, $f801                                  ; $6f65: $01 $01 $f8
    ld sp, hl                                     ; $6f68: $f9
    inc b                                         ; $6f69: $04
    db $d3                                        ; $6f6a: $d3
    db $d3                                        ; $6f6b: $d3
    db $d3                                        ; $6f6c: $d3
    db $d3                                        ; $6f6d: $d3
    push af                                       ; $6f6e: $f5
    ei                                            ; $6f6f: $fb
    pop de                                        ; $6f70: $d1
    db $d3                                        ; $6f71: $d3
    db $d3                                        ; $6f72: $d3
    db $fc                                        ; $6f73: $fc
    db $d3                                        ; $6f74: $d3
    db $d3                                        ; $6f75: $d3
    db $d3                                        ; $6f76: $d3
    ld bc, $0101                                  ; $6f77: $01 $01 $01
    ld bc, $0101                                  ; $6f7a: $01 $01 $01
    ld bc, $0101                                  ; $6f7d: $01 $01 $01
    ld bc, $0101                                  ; $6f80: $01 $01 $01
    rlca                                          ; $6f83: $07
    ld bc, $0101                                  ; $6f84: $01 $01 $01
    db $d3                                        ; $6f87: $d3
    rst $38                                       ; $6f88: $ff
    nop                                           ; $6f89: $00
    db $d3                                        ; $6f8a: $d3
    db $d3                                        ; $6f8b: $d3
    db $d3                                        ; $6f8c: $d3
    db $d3                                        ; $6f8d: $d3
    db $d3                                        ; $6f8e: $d3
    db $d3                                        ; $6f8f: $d3
    db $d3                                        ; $6f90: $d3
    db $d3                                        ; $6f91: $d3
    db $d3                                        ; $6f92: $d3
    db $d3                                        ; $6f93: $d3
    db $d3                                        ; $6f94: $d3
    ei                                            ; $6f95: $fb
    pop de                                        ; $6f96: $d1
    ld bc, $0101                                  ; $6f97: $01 $01 $01
    ld bc, $0101                                  ; $6f9a: $01 $01 $01
    ld bc, $0101                                  ; $6f9d: $01 $01 $01
    ld bc, $0101                                  ; $6fa0: $01 $01 $01
    ld bc, $0101                                  ; $6fa3: $01 $01 $01
    ld bc, $8ad3                                  ; $6fa6: $01 $d3 $8a
    sub e                                         ; $6fa9: $93
    ldh [$d3], a                                  ; $6faa: $e0 $d3
    db $d3                                        ; $6fac: $d3
    adc e                                         ; $6fad: $8b
    db $e3                                        ; $6fae: $e3
    db $fc                                        ; $6faf: $fc
    push de                                       ; $6fb0: $d5
    adc h                                         ; $6fb1: $8c
    adc l                                         ; $6fb2: $8d
    db $d3                                        ; $6fb3: $d3
    ret c                                         ; $6fb4: $d8

    reti                                          ; $6fb5: $d9


    adc [hl]                                      ; $6fb6: $8e
    ld bc, $0b0a                                  ; $6fb7: $01 $0a $0b
    add d                                         ; $6fba: $82
    ld bc, $8a01                                  ; $6fbb: $01 $01 $8a
    add d                                         ; $6fbe: $82
    rlca                                          ; $6fbf: $07
    add d                                         ; $6fc0: $82
    adc d                                         ; $6fc1: $8a
    adc d                                         ; $6fc2: $8a
    ld bc, $8282                                  ; $6fc3: $01 $82 $82
    adc d                                         ; $6fc6: $8a
    db $d3                                        ; $6fc7: $d3
    db $fd                                        ; $6fc8: $fd
    cp $d3                                        ; $6fc9: $fe $d3
    db $d3                                        ; $6fcb: $d3
    rst $38                                       ; $6fcc: $ff
    nop                                           ; $6fcd: $00
    db $d3                                        ; $6fce: $d3
    db $d3                                        ; $6fcf: $d3
    db $d3                                        ; $6fd0: $d3
    ld [bc], a                                    ; $6fd1: $02
    ld a, [$f9f8]                                 ; $6fd2: $fa $f8 $f9
    inc b                                         ; $6fd5: $04
    jr nz, @+$03                                  ; $6fd6: $20 $01

    ld bc, $0101                                  ; $6fd8: $01 $01 $01
    ld bc, $0101                                  ; $6fdb: $01 $01 $01
    ld bc, $0101                                  ; $6fde: $01 $01 $01
    ld bc, $0101                                  ; $6fe1: $01 $01 $01
    ld bc, $0101                                  ; $6fe4: $01 $01 $01
    db $d3                                        ; $6fe7: $d3
    db $d3                                        ; $6fe8: $d3
    ld hl, sp-$07                                 ; $6fe9: $f8 $f9
    inc b                                         ; $6feb: $04
    ld bc, $2021                                  ; $6fec: $01 $21 $20
    ld hl, sp+$20                                 ; $6fef: $f8 $20
    dec c                                         ; $6ff1: $0d
    ld bc, $0e0d                                  ; $6ff2: $01 $0d $0e
    ld hl, sp-$2d                                 ; $6ff5: $f8 $d3
    ld bc, $0101                                  ; $6ff7: $01 $01 $01
    ld bc, $0101                                  ; $6ffa: $01 $01 $01
    ld bc, $0101                                  ; $6ffd: $01 $01 $01
    ld bc, $0101                                  ; $7000: $01 $01 $01
    ld bc, $0101                                  ; $7003: $01 $01 $01
    ld bc, HeaderLogo                             ; $7006: $01 $04 $01
    db $d3                                        ; $7009: $d3
    db $d3                                        ; $700a: $d3
    ld hl, sp-$2d                                 ; $700b: $f8 $d3
    jp nc, $d3d3                                  ; $700d: $d2 $d3 $d3

    push de                                       ; $7010: $d5
    sub $d5                                       ; $7011: $d6 $d5
    db $d3                                        ; $7013: $d3
    ret c                                         ; $7014: $d8

    reti                                          ; $7015: $d9


    jp c, $0101                                   ; $7016: $da $01 $01

    ld bc, $0101                                  ; $7019: $01 $01 $01
    ld bc, $0182                                  ; $701c: $01 $82 $01
    ld bc, $8282                                  ; $701f: $01 $82 $82
    and d                                         ; $7022: $a2
    ld bc, $8282                                  ; $7023: $01 $82 $82
    add d                                         ; $7026: $82
    ld [bc], a                                    ; $7027: $02
    jr nz, jr_08a_7037                            ; $7028: $20 $0d

    ld c, $ae                                     ; $702a: $0e $ae
    xor a                                         ; $702c: $af
    inc bc                                        ; $702d: $03
    inc c                                         ; $702e: $0c
    or b                                          ; $702f: $b0
    or c                                          ; $7030: $b1
    ld hl, $b201                                  ; $7031: $21 $01 $b2
    or e                                          ; $7034: $b3
    ld hl, sp-$2d                                 ; $7035: $f8 $d3

jr_08a_7037:
    ld bc, $0101                                  ; $7037: $01 $01 $01
    ld bc, $0a0a                                  ; $703a: $01 $0a $0a
    ld bc, $0a01                                  ; $703d: $01 $01 $0a
    ld a, [bc]                                    ; $7040: $0a
    ld bc, $0a01                                  ; $7041: $01 $01 $0a
    ld a, [bc]                                    ; $7044: $0a
    ld bc, $0301                                  ; $7045: $01 $01 $03
    ld bc, $d3d3                                  ; $7048: $01 $d3 $d3
    ld hl, sp-$2d                                 ; $704b: $f8 $d3
    db $d3                                        ; $704d: $d3
    db $d3                                        ; $704e: $d3
    ei                                            ; $704f: $fb
    pop de                                        ; $7050: $d1
    db $d3                                        ; $7051: $d3
    db $d3                                        ; $7052: $d3
    db $d3                                        ; $7053: $d3
    db $d3                                        ; $7054: $d3
    ld b, l                                       ; $7055: $45
    db $d3                                        ; $7056: $d3
    ld bc, $0101                                  ; $7057: $01 $01 $01
    ld bc, $0101                                  ; $705a: $01 $01 $01
    ld bc, $0101                                  ; $705d: $01 $01 $01
    ld bc, $0101                                  ; $7060: $01 $01 $01
    ld bc, $0101                                  ; $7063: $01 $01 $01
    ld bc, $dcd3                                  ; $7066: $01 $d3 $dc
    db $dd                                        ; $7069: $dd
    sbc $d4                                       ; $706a: $de $d4
    ldh [$e1], a                                  ; $706c: $e0 $e1
    ld [c], a                                     ; $706e: $e2
    rst $10                                       ; $706f: $d7
    db $e3                                        ; $7070: $e3
    db $e4                                        ; $7071: $e4
    adc a                                         ; $7072: $8f
    db $db                                        ; $7073: $db
    rst $20                                       ; $7074: $e7
    add sp, -$6f                                  ; $7075: $e8 $91
    ld bc, $8282                                  ; $7077: $01 $82 $82
    add d                                         ; $707a: $82
    add d                                         ; $707b: $82
    add d                                         ; $707c: $82
    add d                                         ; $707d: $82
    add d                                         ; $707e: $82
    add d                                         ; $707f: $82
    add d                                         ; $7080: $82
    add d                                         ; $7081: $82
    adc d                                         ; $7082: $8a
    add d                                         ; $7083: $82
    add d                                         ; $7084: $82
    add d                                         ; $7085: $82
    adc d                                         ; $7086: $8a
    rst $18                                       ; $7087: $df
    db $eb                                        ; $7088: $eb
    db $ec                                        ; $7089: $ec
    ld a, [c]                                     ; $708a: $f2
    jp nc, $f4d3                                  ; $708b: $d2 $d3 $f4

    db $d3                                        ; $708e: $d3
    sub b                                         ; $708f: $90
    push de                                       ; $7090: $d5
    db $d3                                        ; $7091: $d3
    db $d3                                        ; $7092: $d3
    reti                                          ; $7093: $d9


    jp c, $f5d3                                   ; $7094: $da $d3 $f5

    add d                                         ; $7097: $82
    add d                                         ; $7098: $82
    add d                                         ; $7099: $82
    add d                                         ; $709a: $82
    add d                                         ; $709b: $82
    ld bc, $0103                                  ; $709c: $01 $03 $01
    adc d                                         ; $709f: $8a
    and d                                         ; $70a0: $a2
    ld bc, $8201                                  ; $70a1: $01 $01 $82
    add d                                         ; $70a4: $82
    ld bc, $d301                                  ; $70a5: $01 $01 $d3
    ld bc, $fcd3                                  ; $70a8: $01 $d3 $fc
    push af                                       ; $70ab: $f5
    db $d3                                        ; $70ac: $d3
    db $d3                                        ; $70ad: $d3
    ld l, h                                       ; $70ae: $6c
    ld b, l                                       ; $70af: $45
    ld l, l                                       ; $70b0: $6d
    ld b, e                                       ; $70b1: $43
    ld b, [hl]                                    ; $70b2: $46
    ld l, e                                       ; $70b3: $6b
    ld b, h                                       ; $70b4: $44
    ld b, c                                       ; $70b5: $41
    ld b, d                                       ; $70b6: $42
    ld bc, $0101                                  ; $70b7: $01 $01 $01
    rlca                                          ; $70ba: $07
    ld bc, $0101                                  ; $70bb: $01 $01 $01
    ld bc, $0101                                  ; $70be: $01 $01 $01
    ld bc, $0101                                  ; $70c1: $01 $01 $01
    ld bc, $0101                                  ; $70c4: $01 $01 $01
    db $d3                                        ; $70c7: $d3
    rra                                           ; $70c8: $1f
    ld b, b                                       ; $70c9: $40
    db $d3                                        ; $70ca: $d3
    ld b, l                                       ; $70cb: $45
    ld b, d                                       ; $70cc: $42
    ld e, $d3                                     ; $70cd: $1e $d3
    ld l, e                                       ; $70cf: $6b
    ld l, h                                       ; $70d0: $6c
    db $d3                                        ; $70d1: $d3
    db $fc                                        ; $70d2: $fc
    ld e, $d3                                     ; $70d3: $1e $d3
    db $d3                                        ; $70d5: $d3
    db $d3                                        ; $70d6: $d3
    ld bc, $0101                                  ; $70d7: $01 $01 $01
    ld bc, $0101                                  ; $70da: $01 $01 $01
    ld bc, $0101                                  ; $70dd: $01 $01 $01
    ld bc, $0701                                  ; $70e0: $01 $01 $07
    ld bc, $0101                                  ; $70e3: $01 $01 $01
    ld bc, $ebdf                                  ; $70e6: $01 $df $eb
    db $ec                                        ; $70e9: $ec
    sub d                                         ; $70ea: $92
    db $d3                                        ; $70eb: $d3
    adc d                                         ; $70ec: $8a
    sub e                                         ; $70ed: $93
    ldh [$d3], a                                  ; $70ee: $e0 $d3
    db $d3                                        ; $70f0: $d3
    adc e                                         ; $70f1: $8b
    db $e3                                        ; $70f2: $e3
    db $d3                                        ; $70f3: $d3
    push de                                       ; $70f4: $d5
    adc h                                         ; $70f5: $8c
    adc l                                         ; $70f6: $8d
    add d                                         ; $70f7: $82
    add d                                         ; $70f8: $82
    add d                                         ; $70f9: $82
    adc d                                         ; $70fa: $8a
    ld bc, $0b0a                                  ; $70fb: $01 $0a $0b
    add d                                         ; $70fe: $82
    ld bc, $8a81                                  ; $70ff: $01 $81 $8a
    add d                                         ; $7102: $82
    ld bc, $8a82                                  ; $7103: $01 $82 $8a
    adc d                                         ; $7106: $8a
    db $dd                                        ; $7107: $dd
    sbc $d3                                       ; $7108: $de $d3
    db $d3                                        ; $710a: $d3
    pop hl                                        ; $710b: $e1
    ld [c], a                                     ; $710c: $e2
    adc d                                         ; $710d: $8a
    db $fc                                        ; $710e: $fc
    db $e4                                        ; $710f: $e4
    push hl                                       ; $7110: $e5
    ldh a, [$d3]                                  ; $7111: $f0 $d3
    add sp, -$17                                  ; $7113: $e8 $e9
    pop af                                        ; $7115: $f1
    call nc, $8282                                ; $7116: $d4 $82 $82
    ld bc, $8201                                  ; $7119: $01 $01 $82
    add d                                         ; $711c: $82
    adc d                                         ; $711d: $8a
    rlca                                          ; $711e: $07
    add d                                         ; $711f: $82
    add d                                         ; $7120: $82
    add d                                         ; $7121: $82
    add c                                         ; $7122: $81
    add d                                         ; $7123: $82
    add d                                         ; $7124: $82
    add d                                         ; $7125: $82
    add d                                         ; $7126: $82
    pop hl                                        ; $7127: $e1
    ld [c], a                                     ; $7128: $e2
    adc d                                         ; $7129: $8a
    push af                                       ; $712a: $f5
    db $e4                                        ; $712b: $e4
    push hl                                       ; $712c: $e5
    ldh a, [$d3]                                  ; $712d: $f0 $d3
    add sp, -$17                                  ; $712f: $e8 $e9
    pop af                                        ; $7131: $f1
    db $d3                                        ; $7132: $d3
    db $ec                                        ; $7133: $ec
    ld a, [c]                                     ; $7134: $f2
    di                                            ; $7135: $f3
    jp nc, $8282                                  ; $7136: $d2 $82 $82

    adc d                                         ; $7139: $8a
    ld bc, $8282                                  ; $713a: $01 $82 $82
    add d                                         ; $713d: $82
    ld bc, $8282                                  ; $713e: $01 $82 $82
    add d                                         ; $7141: $82
    ld bc, $8282                                  ; $7142: $01 $82 $82
    add d                                         ; $7145: $82
    add d                                         ; $7146: $82
    db $f4                                        ; $7147: $f4
    db $d3                                        ; $7148: $d3
    push de                                       ; $7149: $d5
    sub $8a                                       ; $714a: $d6 $8a
    db $d3                                        ; $714c: $d3
    ret c                                         ; $714d: $d8

    reti                                          ; $714e: $d9


    ldh a, [$d3]                                  ; $714f: $f0 $d3
    call c, $f1dd                                 ; $7151: $dc $dd $f1
    call nc, $e1e0                                ; $7154: $d4 $e0 $e1
    inc bc                                        ; $7157: $03
    ld bc, $8282                                  ; $7158: $01 $82 $82
    ld a, [bc]                                    ; $715b: $0a
    ld bc, $8282                                  ; $715c: $01 $82 $82
    add d                                         ; $715f: $82
    ld bc, $8282                                  ; $7160: $01 $82 $82
    add d                                         ; $7163: $82
    add d                                         ; $7164: $82
    add d                                         ; $7165: $82
    add d                                         ; $7166: $82
    di                                            ; $7167: $f3
    rst $10                                       ; $7168: $d7
    db $e3                                        ; $7169: $e3
    db $e4                                        ; $716a: $e4
    push af                                       ; $716b: $f5
    db $db                                        ; $716c: $db
    rst $20                                       ; $716d: $e7
    add sp, -$2d                                  ; $716e: $e8 $d3
    rst $18                                       ; $7170: $df
    db $eb                                        ; $7171: $eb
    db $ec                                        ; $7172: $ec
    db $d3                                        ; $7173: $d3
    jp nc, $f4d3                                  ; $7174: $d2 $d3 $f4

    add d                                         ; $7177: $82
    add d                                         ; $7178: $82
    add d                                         ; $7179: $82
    add d                                         ; $717a: $82
    ld bc, $8282                                  ; $717b: $01 $82 $82
    add d                                         ; $717e: $82
    ld bc, $8282                                  ; $717f: $01 $82 $82
    add d                                         ; $7182: $82
    ld bc, $0182                                  ; $7183: $01 $82 $01
    inc bc                                        ; $7186: $03
    push de                                       ; $7187: $d5
    sub $d5                                       ; $7188: $d6 $d5
    db $d3                                        ; $718a: $d3
    ret c                                         ; $718b: $d8

    reti                                          ; $718c: $d9


    jp c, $dcd3                                   ; $718d: $da $d3 $dc

    db $dd                                        ; $7190: $dd
    sbc $d3                                       ; $7191: $de $d3
    ldh [$e1], a                                  ; $7193: $e0 $e1
    ld [c], a                                     ; $7195: $e2
    db $d3                                        ; $7196: $d3
    add d                                         ; $7197: $82
    add d                                         ; $7198: $82
    and d                                         ; $7199: $a2
    ld bc, $8282                                  ; $719a: $01 $82 $82
    add d                                         ; $719d: $82
    ld bc, $8282                                  ; $719e: $01 $82 $82
    add d                                         ; $71a1: $82
    ld bc, $8282                                  ; $71a2: $01 $82 $82
    add d                                         ; $71a5: $82
    ld bc, $8c8d                                  ; $71a6: $01 $8d $8c
    push de                                       ; $71a9: $d5
    rra                                           ; $71aa: $1f
    adc [hl]                                      ; $71ab: $8e
    reti                                          ; $71ac: $d9


    ret c                                         ; $71ad: $d8

    db $d3                                        ; $71ae: $d3
    sbc $dd                                       ; $71af: $de $dd
    call c, $e2f5                                 ; $71b1: $dc $f5 $e2
    pop hl                                        ; $71b4: $e1
    ldh [$d4], a                                  ; $71b5: $e0 $d4
    xor d                                         ; $71b7: $aa
    xor d                                         ; $71b8: $aa
    and d                                         ; $71b9: $a2
    ld bc, $a2aa                                  ; $71ba: $01 $aa $a2
    and d                                         ; $71bd: $a2
    ld bc, $a2a2                                  ; $71be: $01 $a2 $a2
    and d                                         ; $71c1: $a2
    ld bc, $a2a2                                  ; $71c2: $01 $a2 $a2
    and d                                         ; $71c5: $a2
    and d                                         ; $71c6: $a2
    ld b, [hl]                                    ; $71c7: $46
    ld l, e                                       ; $71c8: $6b
    ld b, l                                       ; $71c9: $45
    ei                                            ; $71ca: $fb
    ld e, $43                                     ; $71cb: $1e $43
    ld b, [hl]                                    ; $71cd: $46
    ld l, h                                       ; $71ce: $6c
    db $d3                                        ; $71cf: $d3
    ld b, c                                       ; $71d0: $41
    or h                                          ; $71d1: $b4
    or l                                          ; $71d2: $b5
    db $d3                                        ; $71d3: $d3
    ld l, h                                       ; $71d4: $6c
    or [hl]                                       ; $71d5: $b6
    or a                                          ; $71d6: $b7
    ld bc, $0101                                  ; $71d7: $01 $01 $01
    ld bc, $0101                                  ; $71da: $01 $01 $01
    ld bc, $0101                                  ; $71dd: $01 $01 $01
    ld bc, $0909                                  ; $71e0: $01 $09 $09
    ld bc, $0901                                  ; $71e3: $01 $01 $09
    add hl, bc                                    ; $71e6: $09
    pop de                                        ; $71e7: $d1
    pop af                                        ; $71e8: $f1
    jp hl                                         ; $71e9: $e9


    add sp, -$2d                                  ; $71ea: $e8 $d3
    di                                            ; $71ec: $f3
    ld a, [c]                                     ; $71ed: $f2
    db $ec                                        ; $71ee: $ec
    ld b, b                                       ; $71ef: $40
    db $d3                                        ; $71f0: $d3
    db $d3                                        ; $71f1: $d3
    db $f4                                        ; $71f2: $f4
    ld b, d                                       ; $71f3: $42
    ld b, b                                       ; $71f4: $40
    db $d3                                        ; $71f5: $d3
    db $d3                                        ; $71f6: $d3
    ld bc, $a2a2                                  ; $71f7: $01 $a2 $a2
    and d                                         ; $71fa: $a2
    ld bc, $a2a2                                  ; $71fb: $01 $a2 $a2
    and d                                         ; $71fe: $a2
    ld bc, $0101                                  ; $71ff: $01 $01 $01
    inc hl                                        ; $7202: $23
    ld bc, $0101                                  ; $7203: $01 $01 $01
    ld bc, $dbe7                                  ; $7206: $01 $e7 $db
    push de                                       ; $7209: $d5
    sub $eb                                       ; $720a: $d6 $eb
    rst $18                                       ; $720c: $df
    ret c                                         ; $720d: $d8

    reti                                          ; $720e: $d9


    db $d3                                        ; $720f: $d3
    db $d3                                        ; $7210: $d3
    call c, $d3dd                                 ; $7211: $dc $dd $d3
    call nc, $e1e0                                ; $7214: $d4 $e0 $e1
    and d                                         ; $7217: $a2
    and d                                         ; $7218: $a2
    add d                                         ; $7219: $82
    add d                                         ; $721a: $82
    and d                                         ; $721b: $a2
    and d                                         ; $721c: $a2
    add d                                         ; $721d: $82
    add d                                         ; $721e: $82
    ld bc, $8201                                  ; $721f: $01 $01 $82
    add d                                         ; $7222: $82
    ld bc, $8282                                  ; $7223: $01 $82 $82
    add d                                         ; $7226: $82
    push hl                                       ; $7227: $e5
    db $e4                                        ; $7228: $e4
    db $e3                                        ; $7229: $e3
    rst $10                                       ; $722a: $d7
    jp hl                                         ; $722b: $e9


    add sp, -$19                                  ; $722c: $e8 $e7
    db $db                                        ; $722e: $db
    ld a, [c]                                     ; $722f: $f2
    db $ec                                        ; $7230: $ec
    db $eb                                        ; $7231: $eb
    rst $18                                       ; $7232: $df
    db $d3                                        ; $7233: $d3
    db $f4                                        ; $7234: $f4
    db $d3                                        ; $7235: $d3
    db $d3                                        ; $7236: $d3
    and d                                         ; $7237: $a2
    and d                                         ; $7238: $a2
    and d                                         ; $7239: $a2
    and d                                         ; $723a: $a2
    and d                                         ; $723b: $a2
    and d                                         ; $723c: $a2
    and d                                         ; $723d: $a2
    and d                                         ; $723e: $a2
    and d                                         ; $723f: $a2
    and d                                         ; $7240: $a2
    and d                                         ; $7241: $a2
    and d                                         ; $7242: $a2
    ld bc, $0123                                  ; $7243: $01 $23 $01
    ld bc, $d3d3                                  ; $7246: $01 $d3 $d3
    cp b                                          ; $7249: $b8
    cp c                                          ; $724a: $b9
    db $d3                                        ; $724b: $d3
    db $d3                                        ; $724c: $d3
    db $d3                                        ; $724d: $d3
    rra                                           ; $724e: $1f
    db $d3                                        ; $724f: $d3
    db $d3                                        ; $7250: $d3
    db $d3                                        ; $7251: $d3
    db $d3                                        ; $7252: $d3
    db $fc                                        ; $7253: $fc
    db $d3                                        ; $7254: $d3
    db $d3                                        ; $7255: $d3
    db $d3                                        ; $7256: $d3
    ld bc, $0901                                  ; $7257: $01 $01 $09
    add hl, bc                                    ; $725a: $09
    ld bc, $0101                                  ; $725b: $01 $01 $01
    ld bc, $0101                                  ; $725e: $01 $01 $01
    ld bc, $0701                                  ; $7261: $01 $01 $07
    ld bc, $0101                                  ; $7264: $01 $01 $01
    ld b, h                                       ; $7267: $44
    ld b, c                                       ; $7268: $41
    rra                                           ; $7269: $1f
    ld b, b                                       ; $726a: $40
    ld b, b                                       ; $726b: $40
    ld l, e                                       ; $726c: $6b
    ld b, h                                       ; $726d: $44
    ld b, c                                       ; $726e: $41
    rra                                           ; $726f: $1f
    ld b, b                                       ; $7270: $40
    ld l, h                                       ; $7271: $6c
    ld b, l                                       ; $7272: $45
    db $d3                                        ; $7273: $d3
    ei                                            ; $7274: $fb
    pop de                                        ; $7275: $d1
    db $d3                                        ; $7276: $d3
    ld bc, $0101                                  ; $7277: $01 $01 $01
    ld bc, $0101                                  ; $727a: $01 $01 $01
    ld bc, $0101                                  ; $727d: $01 $01 $01
    ld bc, $0101                                  ; $7280: $01 $01 $01
    ld bc, $0101                                  ; $7283: $01 $01 $01
    ld bc, $d76c                                  ; $7286: $01 $6c $d7
    db $e3                                        ; $7289: $e3
    db $e4                                        ; $728a: $e4
    rra                                           ; $728b: $1f
    db $db                                        ; $728c: $db
    rst $20                                       ; $728d: $e7
    add sp, -$2d                                  ; $728e: $e8 $d3
    rst $18                                       ; $7290: $df
    db $eb                                        ; $7291: $eb
    db $ec                                        ; $7292: $ec
    db $d3                                        ; $7293: $d3
    db $d3                                        ; $7294: $d3
    db $d3                                        ; $7295: $d3
    db $f4                                        ; $7296: $f4
    ld bc, $8282                                  ; $7297: $01 $82 $82
    add d                                         ; $729a: $82
    ld bc, $8282                                  ; $729b: $01 $82 $82
    add d                                         ; $729e: $82
    ld bc, $8282                                  ; $729f: $01 $82 $82
    add d                                         ; $72a2: $82
    ld bc, $0101                                  ; $72a3: $01 $01 $01
    inc bc                                        ; $72a6: $03
    db $d3                                        ; $72a7: $d3
    db $fd                                        ; $72a8: $fd
    cp $d3                                        ; $72a9: $fe $d3
    db $d3                                        ; $72ab: $d3
    rst $38                                       ; $72ac: $ff
    nop                                           ; $72ad: $00
    db $d3                                        ; $72ae: $d3
    cp d                                          ; $72af: $ba
    cp e                                          ; $72b0: $bb
    cp d                                          ; $72b1: $ba
    cp e                                          ; $72b2: $bb
    cp h                                          ; $72b3: $bc
    cp l                                          ; $72b4: $bd
    cp h                                          ; $72b5: $bc
    cp l                                          ; $72b6: $bd
    ld bc, $0101                                  ; $72b7: $01 $01 $01
    ld bc, $0101                                  ; $72ba: $01 $01 $01
    ld bc, $8c01                                  ; $72bd: $01 $01 $8c
    adc h                                         ; $72c0: $8c
    adc h                                         ; $72c1: $8c
    adc h                                         ; $72c2: $8c
    adc h                                         ; $72c3: $8c
    adc h                                         ; $72c4: $8c
    adc h                                         ; $72c5: $8c
    adc h                                         ; $72c6: $8c
    db $d3                                        ; $72c7: $d3
    push af                                       ; $72c8: $f5
    db $d3                                        ; $72c9: $d3
    db $d3                                        ; $72ca: $d3
    db $d3                                        ; $72cb: $d3
    db $d3                                        ; $72cc: $d3
    db $d3                                        ; $72cd: $d3
    db $d3                                        ; $72ce: $d3
    cp d                                          ; $72cf: $ba
    cp e                                          ; $72d0: $bb
    cp d                                          ; $72d1: $ba
    cp e                                          ; $72d2: $bb
    cp h                                          ; $72d3: $bc
    cp l                                          ; $72d4: $bd
    cp h                                          ; $72d5: $bc
    cp l                                          ; $72d6: $bd
    ld bc, $0101                                  ; $72d7: $01 $01 $01
    ld bc, $0101                                  ; $72da: $01 $01 $01
    ld bc, $8c01                                  ; $72dd: $01 $01 $8c
    adc h                                         ; $72e0: $8c
    adc h                                         ; $72e1: $8c
    adc h                                         ; $72e2: $8c
    adc h                                         ; $72e3: $8c
    adc h                                         ; $72e4: $8c
    adc h                                         ; $72e5: $8c
    adc h                                         ; $72e6: $8c
    db $d3                                        ; $72e7: $d3
    db $d3                                        ; $72e8: $d3
    db $d3                                        ; $72e9: $d3
    db $d3                                        ; $72ea: $d3
    db $d3                                        ; $72eb: $d3
    db $d3                                        ; $72ec: $d3
    db $d3                                        ; $72ed: $d3
    db $d3                                        ; $72ee: $d3
    cp d                                          ; $72ef: $ba
    cp e                                          ; $72f0: $bb
    cp d                                          ; $72f1: $ba
    cp e                                          ; $72f2: $bb
    cp h                                          ; $72f3: $bc
    cp l                                          ; $72f4: $bd
    cp h                                          ; $72f5: $bc
    cp l                                          ; $72f6: $bd
    ld bc, $0101                                  ; $72f7: $01 $01 $01
    ld bc, $0101                                  ; $72fa: $01 $01 $01
    ld bc, $8c01                                  ; $72fd: $01 $01 $8c
    adc h                                         ; $7300: $8c
    adc h                                         ; $7301: $8c
    adc h                                         ; $7302: $8c
    adc h                                         ; $7303: $8c
    adc h                                         ; $7304: $8c
    adc h                                         ; $7305: $8c
    adc h                                         ; $7306: $8c
    push af                                       ; $7307: $f5
    db $d3                                        ; $7308: $d3
    db $d3                                        ; $7309: $d3
    db $d3                                        ; $730a: $d3
    db $d3                                        ; $730b: $d3
    db $d3                                        ; $730c: $d3
    db $d3                                        ; $730d: $d3
    ei                                            ; $730e: $fb
    cp d                                          ; $730f: $ba
    cp e                                          ; $7310: $bb
    cp d                                          ; $7311: $ba
    cp e                                          ; $7312: $bb
    cp h                                          ; $7313: $bc
    cp l                                          ; $7314: $bd
    cp h                                          ; $7315: $bc
    cp l                                          ; $7316: $bd
    ld bc, $0101                                  ; $7317: $01 $01 $01
    ld bc, $0101                                  ; $731a: $01 $01 $01
    ld bc, $8c01                                  ; $731d: $01 $01 $8c
    adc h                                         ; $7320: $8c
    adc h                                         ; $7321: $8c
    adc h                                         ; $7322: $8c
    adc h                                         ; $7323: $8c
    adc h                                         ; $7324: $8c
    adc h                                         ; $7325: $8c
    adc h                                         ; $7326: $8c
    cp [hl]                                       ; $7327: $be
    cp a                                          ; $7328: $bf
    cp [hl]                                       ; $7329: $be
    ret nz                                        ; $732a: $c0

    pop bc                                        ; $732b: $c1
    jp nz, $c3c1                                  ; $732c: $c2 $c1 $c3

    call nz, $c4c5                                ; $732f: $c4 $c5 $c4
    add $c7                                       ; $7332: $c6 $c7
    ret z                                         ; $7334: $c8

    rst $00                                       ; $7335: $c7
    rst $00                                       ; $7336: $c7
    adc h                                         ; $7337: $8c
    adc h                                         ; $7338: $8c
    adc h                                         ; $7339: $8c
    adc h                                         ; $733a: $8c
    adc h                                         ; $733b: $8c
    adc h                                         ; $733c: $8c
    adc h                                         ; $733d: $8c
    adc h                                         ; $733e: $8c
    adc h                                         ; $733f: $8c
    adc h                                         ; $7340: $8c
    adc h                                         ; $7341: $8c
    adc h                                         ; $7342: $8c
    adc h                                         ; $7343: $8c
    adc h                                         ; $7344: $8c
    adc h                                         ; $7345: $8c
    adc h                                         ; $7346: $8c
    push de                                       ; $7347: $d5
    db $d3                                        ; $7348: $d3
    db $d3                                        ; $7349: $d3
    db $d3                                        ; $734a: $d3
    jp c, $d1fb                                   ; $734b: $da $fb $d1

    push de                                       ; $734e: $d5
    sbc $d3                                       ; $734f: $de $d3
    db $d3                                        ; $7351: $d3
    ret c                                         ; $7352: $d8

    ld [c], a                                     ; $7353: $e2
    db $d3                                        ; $7354: $d3
    db $d3                                        ; $7355: $d3
    call c, $01a2                                 ; $7356: $dc $a2 $01
    ld bc, $8201                                  ; $7359: $01 $01 $82
    ld bc, $8201                                  ; $735c: $01 $01 $82
    add d                                         ; $735f: $82
    ld bc, $8201                                  ; $7360: $01 $01 $82
    add d                                         ; $7363: $82
    ld bc, $8201                                  ; $7364: $01 $01 $82
    jp nc, $8ad3                                  ; $7367: $d2 $d3 $8a

    ld [c], a                                     ; $736a: $e2
    sub $d5                                       ; $736b: $d6 $d5
    ldh a, [$e5]                                  ; $736d: $f0 $e5
    reti                                          ; $736f: $d9


    jp c, $e9f1                                   ; $7370: $da $f1 $e9

    db $dd                                        ; $7373: $dd
    sbc $f3                                       ; $7374: $de $f3
    ld a, [c]                                     ; $7376: $f2
    add d                                         ; $7377: $82
    ld bc, $a20a                                  ; $7378: $01 $0a $a2
    add d                                         ; $737b: $82
    and d                                         ; $737c: $a2
    and d                                         ; $737d: $a2
    and d                                         ; $737e: $a2
    add d                                         ; $737f: $82
    add d                                         ; $7380: $82
    and d                                         ; $7381: $a2
    and d                                         ; $7382: $a2
    add d                                         ; $7383: $82
    add d                                         ; $7384: $82
    and d                                         ; $7385: $a2
    and d                                         ; $7386: $a2
    pop hl                                        ; $7387: $e1
    ldh [$93], a                                  ; $7388: $e0 $93
    adc d                                         ; $738a: $8a
    db $e4                                        ; $738b: $e4
    db $e3                                        ; $738c: $e3
    adc e                                         ; $738d: $8b
    db $d3                                        ; $738e: $d3
    add sp, -$73                                  ; $738f: $e8 $8d
    adc h                                         ; $7391: $8c
    push de                                       ; $7392: $d5
    db $ec                                        ; $7393: $ec
    adc [hl]                                      ; $7394: $8e
    reti                                          ; $7395: $d9


    ret c                                         ; $7396: $d8

    and d                                         ; $7397: $a2
    and d                                         ; $7398: $a2
    dec hl                                        ; $7399: $2b
    ld a, [bc]                                    ; $739a: $0a
    and d                                         ; $739b: $a2
    and d                                         ; $739c: $a2
    xor d                                         ; $739d: $aa
    ld bc, $aaa2                                  ; $739e: $01 $a2 $aa
    xor d                                         ; $73a1: $aa
    and d                                         ; $73a2: $a2
    and d                                         ; $73a3: $a2
    xor d                                         ; $73a4: $aa
    and d                                         ; $73a5: $a2
    and d                                         ; $73a6: $a2
    db $d3                                        ; $73a7: $d3
    db $fc                                        ; $73a8: $fc
    db $d3                                        ; $73a9: $d3
    db $d3                                        ; $73aa: $d3
    db $d3                                        ; $73ab: $d3
    db $d3                                        ; $73ac: $d3
    db $d3                                        ; $73ad: $d3
    db $d3                                        ; $73ae: $d3
    db $d3                                        ; $73af: $d3
    db $d3                                        ; $73b0: $d3
    rra                                           ; $73b1: $1f
    ld b, b                                       ; $73b2: $40
    and a                                         ; $73b3: $a7
    db $d3                                        ; $73b4: $d3
    db $d3                                        ; $73b5: $d3
    db $d3                                        ; $73b6: $d3
    ld bc, $0107                                  ; $73b7: $01 $07 $01
    ld bc, $0101                                  ; $73ba: $01 $01 $01
    ld bc, $0101                                  ; $73bd: $01 $01 $01
    ld bc, $0101                                  ; $73c0: $01 $01 $01
    dec c                                         ; $73c3: $0d
    ld bc, $0101                                  ; $73c4: $01 $01 $01
    push hl                                       ; $73c7: $e5
    ldh a, [$d4]                                  ; $73c8: $f0 $d4
    ldh [$e9], a                                  ; $73ca: $e0 $e9
    pop af                                        ; $73cc: $f1
    rst $10                                       ; $73cd: $d7
    db $e3                                        ; $73ce: $e3
    ld a, [c]                                     ; $73cf: $f2
    di                                            ; $73d0: $f3
    db $db                                        ; $73d1: $db
    rst $20                                       ; $73d2: $e7
    db $d3                                        ; $73d3: $d3
    db $d3                                        ; $73d4: $d3
    rst $18                                       ; $73d5: $df
    db $eb                                        ; $73d6: $eb
    add d                                         ; $73d7: $82
    add d                                         ; $73d8: $82
    add d                                         ; $73d9: $82
    add d                                         ; $73da: $82
    add d                                         ; $73db: $82
    add d                                         ; $73dc: $82
    add d                                         ; $73dd: $82
    add d                                         ; $73de: $82
    add d                                         ; $73df: $82
    add d                                         ; $73e0: $82
    add d                                         ; $73e1: $82
    add d                                         ; $73e2: $82
    ld bc, $8201                                  ; $73e3: $01 $01 $82
    add d                                         ; $73e6: $82
    pop hl                                        ; $73e7: $e1
    ld [c], a                                     ; $73e8: $e2
    db $d3                                        ; $73e9: $d3
    db $d3                                        ; $73ea: $d3
    db $e4                                        ; $73eb: $e4
    push hl                                       ; $73ec: $e5
    ldh a, [$d3]                                  ; $73ed: $f0 $d3
    add sp, -$17                                  ; $73ef: $e8 $e9
    pop af                                        ; $73f1: $f1
    db $d3                                        ; $73f2: $d3
    db $ec                                        ; $73f3: $ec
    ld a, [c]                                     ; $73f4: $f2
    di                                            ; $73f5: $f3
    db $d3                                        ; $73f6: $d3
    add d                                         ; $73f7: $82
    add d                                         ; $73f8: $82
    ld bc, $8201                                  ; $73f9: $01 $01 $82
    add d                                         ; $73fc: $82
    add d                                         ; $73fd: $82
    ld bc, $8282                                  ; $73fe: $01 $82 $82
    add d                                         ; $7401: $82
    ld bc, $8282                                  ; $7402: $01 $82 $82
    add d                                         ; $7405: $82
    ld bc, $def4                                  ; $7406: $01 $f4 $de
    db $dd                                        ; $7409: $dd
    call c, $e28a                                 ; $740a: $dc $8a $e2
    pop hl                                        ; $740d: $e1
    ldh [$f0], a                                  ; $740e: $e0 $f0
    push hl                                       ; $7410: $e5
    db $e4                                        ; $7411: $e4
    db $e3                                        ; $7412: $e3
    pop af                                        ; $7413: $f1
    jp hl                                         ; $7414: $e9


    add sp, -$19                                  ; $7415: $e8 $e7
    inc hl                                        ; $7417: $23
    and d                                         ; $7418: $a2
    and d                                         ; $7419: $a2
    and d                                         ; $741a: $a2
    adc d                                         ; $741b: $8a
    and d                                         ; $741c: $a2
    and d                                         ; $741d: $a2
    and d                                         ; $741e: $a2
    and d                                         ; $741f: $a2
    and d                                         ; $7420: $a2
    and d                                         ; $7421: $a2
    and d                                         ; $7422: $a2
    and d                                         ; $7423: $a2
    and d                                         ; $7424: $a2
    and d                                         ; $7425: $a2
    and d                                         ; $7426: $a2
    db $d3                                        ; $7427: $d3
    ld d, a                                       ; $7428: $57
    db $d3                                        ; $7429: $d3
    db $d3                                        ; $742a: $d3
    call nc, $d3d3                                ; $742b: $d4 $d3 $d3
    sbc d                                         ; $742e: $9a
    rst $10                                       ; $742f: $d7
    db $d3                                        ; $7430: $d3
    push af                                       ; $7431: $f5
    db $d3                                        ; $7432: $d3
    db $db                                        ; $7433: $db
    db $d3                                        ; $7434: $d3
    db $d3                                        ; $7435: $d3
    db $d3                                        ; $7436: $d3
    ld bc, HeaderSGBFlag                          ; $7437: $01 $46 $01
    ld bc, $01a2                                  ; $743a: $01 $a2 $01
    ld bc, $a20d                                  ; $743d: $01 $0d $a2
    ld bc, $0101                                  ; $7440: $01 $01 $01
    and d                                         ; $7443: $a2
    ld bc, $0101                                  ; $7444: $01 $01 $01
    db $d3                                        ; $7447: $d3
    db $d3                                        ; $7448: $d3
    db $d3                                        ; $7449: $d3
    db $d3                                        ; $744a: $d3
    pop de                                        ; $744b: $d1
    db $d3                                        ; $744c: $d3
    push af                                       ; $744d: $f5
    db $d3                                        ; $744e: $d3
    cp d                                          ; $744f: $ba
    cp e                                          ; $7450: $bb
    cp d                                          ; $7451: $ba
    cp e                                          ; $7452: $bb
    cp h                                          ; $7453: $bc
    cp l                                          ; $7454: $bd
    cp h                                          ; $7455: $bc
    cp l                                          ; $7456: $bd
    ld bc, $0101                                  ; $7457: $01 $01 $01
    ld bc, $0101                                  ; $745a: $01 $01 $01
    ld bc, $8c01                                  ; $745d: $01 $01 $8c
    adc h                                         ; $7460: $8c
    adc h                                         ; $7461: $8c
    adc h                                         ; $7462: $8c
    adc h                                         ; $7463: $8c
    adc h                                         ; $7464: $8c
    adc h                                         ; $7465: $8c
    adc h                                         ; $7466: $8c
    db $f4                                        ; $7467: $f4
    db $d3                                        ; $7468: $d3
    ei                                            ; $7469: $fb
    pop de                                        ; $746a: $d1
    db $d3                                        ; $746b: $d3
    db $d3                                        ; $746c: $d3
    db $fc                                        ; $746d: $fc
    db $d3                                        ; $746e: $d3
    cp d                                          ; $746f: $ba
    cp e                                          ; $7470: $bb
    cp d                                          ; $7471: $ba
    cp e                                          ; $7472: $bb
    cp h                                          ; $7473: $bc
    cp l                                          ; $7474: $bd
    cp h                                          ; $7475: $bc
    cp l                                          ; $7476: $bd
    inc bc                                        ; $7477: $03
    ld bc, $0101                                  ; $7478: $01 $01 $01
    ld bc, $0701                                  ; $747b: $01 $01 $07
    ld bc, $8c8c                                  ; $747e: $01 $8c $8c
    adc h                                         ; $7481: $8c
    adc h                                         ; $7482: $8c
    adc h                                         ; $7483: $8c
    adc h                                         ; $7484: $8c
    adc h                                         ; $7485: $8c
    adc h                                         ; $7486: $8c
    di                                            ; $7487: $f3
    ld a, [c]                                     ; $7488: $f2
    db $ec                                        ; $7489: $ec
    db $eb                                        ; $748a: $eb
    db $d3                                        ; $748b: $d3
    db $d3                                        ; $748c: $d3
    db $f4                                        ; $748d: $f4
    db $d3                                        ; $748e: $d3
    cp d                                          ; $748f: $ba
    cp e                                          ; $7490: $bb
    cp d                                          ; $7491: $ba
    cp e                                          ; $7492: $bb
    cp h                                          ; $7493: $bc
    cp l                                          ; $7494: $bd
    cp h                                          ; $7495: $bc
    cp l                                          ; $7496: $bd
    and d                                         ; $7497: $a2
    and d                                         ; $7498: $a2
    and d                                         ; $7499: $a2
    and d                                         ; $749a: $a2
    ld bc, $2301                                  ; $749b: $01 $01 $23
    ld bc, $8c8c                                  ; $749e: $01 $8c $8c
    adc h                                         ; $74a1: $8c
    adc h                                         ; $74a2: $8c
    adc h                                         ; $74a3: $8c
    adc h                                         ; $74a4: $8c
    adc h                                         ; $74a5: $8c
    adc h                                         ; $74a6: $8c
    rst $18                                       ; $74a7: $df
    ld a, [$0ef8]                                 ; $74a8: $fa $f8 $0e
    inc b                                         ; $74ab: $04
    ld bc, $fa03                                  ; $74ac: $01 $03 $fa
    cp d                                          ; $74af: $ba
    cp e                                          ; $74b0: $bb
    cp d                                          ; $74b1: $ba
    cp e                                          ; $74b2: $bb
    cp h                                          ; $74b3: $bc
    cp l                                          ; $74b4: $bd
    cp h                                          ; $74b5: $bc
    cp l                                          ; $74b6: $bd
    and d                                         ; $74b7: $a2
    ld bc, $0101                                  ; $74b8: $01 $01 $01
    ld bc, $0101                                  ; $74bb: $01 $01 $01
    ld bc, $8c8c                                  ; $74be: $01 $8c $8c
    adc h                                         ; $74c1: $8c
    adc h                                         ; $74c2: $8c
    adc h                                         ; $74c3: $8c
    adc h                                         ; $74c4: $8c
    adc h                                         ; $74c5: $8c
    adc h                                         ; $74c6: $8c
    db $d3                                        ; $74c7: $d3
    db $d3                                        ; $74c8: $d3
    db $d3                                        ; $74c9: $d3
    ld b, l                                       ; $74ca: $45
    ld l, l                                       ; $74cb: $6d
    ld e, $41                                     ; $74cc: $1e $41
    ld b, d                                       ; $74ce: $42
    ld l, h                                       ; $74cf: $6c
    ld b, l                                       ; $74d0: $45
    ld l, l                                       ; $74d1: $6d
    ld e, $d3                                     ; $74d2: $1e $d3
    db $d3                                        ; $74d4: $d3
    ld l, h                                       ; $74d5: $6c
    db $d3                                        ; $74d6: $d3
    ld bc, $0101                                  ; $74d7: $01 $01 $01
    ld bc, $0101                                  ; $74da: $01 $01 $01
    ld bc, $0101                                  ; $74dd: $01 $01 $01
    ld bc, $0101                                  ; $74e0: $01 $01 $01
    ld bc, $0101                                  ; $74e3: $01 $01 $01
    ld bc, $456c                                  ; $74e6: $01 $6c $45
    ld b, c                                       ; $74e9: $41
    ld b, d                                       ; $74ea: $42
    ld b, e                                       ; $74eb: $43
    ld b, [hl]                                    ; $74ec: $46
    ld l, e                                       ; $74ed: $6b
    ld b, h                                       ; $74ee: $44
    ld b, c                                       ; $74ef: $41
    ld b, d                                       ; $74f0: $42
    ld b, e                                       ; $74f1: $43
    ld b, [hl]                                    ; $74f2: $46
    ld l, h                                       ; $74f3: $6c
    rra                                           ; $74f4: $1f
    ld b, b                                       ; $74f5: $40
    ld b, d                                       ; $74f6: $42
    ld bc, $0101                                  ; $74f7: $01 $01 $01
    ld bc, $0101                                  ; $74fa: $01 $01 $01
    ld bc, $0101                                  ; $74fd: $01 $01 $01
    ld bc, $0101                                  ; $7500: $01 $01 $01
    ld bc, $0101                                  ; $7503: $01 $01 $01
    ld bc, $4643                                  ; $7506: $01 $43 $46
    ld l, e                                       ; $7509: $6b
    ld b, h                                       ; $750a: $44
    ld b, c                                       ; $750b: $41
    ld b, d                                       ; $750c: $42
    ld b, e                                       ; $750d: $43
    ld b, [hl]                                    ; $750e: $46
    ld l, e                                       ; $750f: $6b
    ld b, h                                       ; $7510: $44
    ld b, c                                       ; $7511: $41
    ld l, h                                       ; $7512: $6c
    ld b, e                                       ; $7513: $43
    ld l, l                                       ; $7514: $6d
    ld e, $1f                                     ; $7515: $1e $1f
    ld bc, $0101                                  ; $7517: $01 $01 $01
    ld bc, $0101                                  ; $751a: $01 $01 $01
    ld bc, $0101                                  ; $751d: $01 $01 $01
    ld bc, $0101                                  ; $7520: $01 $01 $01
    ld bc, $0101                                  ; $7523: $01 $01 $01
    ld bc, $6c41                                  ; $7526: $01 $41 $6c
    ld b, e                                       ; $7529: $43
    ld l, l                                       ; $752a: $6d
    ld e, $44                                     ; $752b: $1e $44
    ld b, b                                       ; $752d: $40
    db $d3                                        ; $752e: $d3
    ld b, l                                       ; $752f: $45
    ld l, l                                       ; $7530: $6d
    db $d3                                        ; $7531: $d3
    rra                                           ; $7532: $1f
    ld b, b                                       ; $7533: $40
    db $d3                                        ; $7534: $d3
    ld b, l                                       ; $7535: $45
    db $d3                                        ; $7536: $d3
    ld bc, $0101                                  ; $7537: $01 $01 $01
    ld bc, $0101                                  ; $753a: $01 $01 $01
    ld bc, $0101                                  ; $753d: $01 $01 $01
    ld bc, $0101                                  ; $7540: $01 $01 $01
    ld bc, $0101                                  ; $7543: $01 $01 $01
    ld bc, $fdd3                                  ; $7546: $01 $d3 $fd
    cp $40                                        ; $7549: $fe $40
    db $d3                                        ; $754b: $d3
    rst $38                                       ; $754c: $ff
    nop                                           ; $754d: $00
    db $d3                                        ; $754e: $d3
    db $d3                                        ; $754f: $d3
    db $d3                                        ; $7550: $d3
    ld [bc], a                                    ; $7551: $02
    ld a, [$fa02]                                 ; $7552: $fa $02 $fa
    inc bc                                        ; $7555: $03
    inc c                                         ; $7556: $0c
    ld bc, $0101                                  ; $7557: $01 $01 $01
    ld bc, $0101                                  ; $755a: $01 $01 $01
    ld bc, $0101                                  ; $755d: $01 $01 $01
    ld bc, $0101                                  ; $7560: $01 $01 $01
    ld bc, $0101                                  ; $7563: $01 $01 $01
    ld bc, $6dd3                                  ; $7566: $01 $d3 $6d
    db $d3                                        ; $7569: $d3
    rra                                           ; $756a: $1f
    db $d3                                        ; $756b: $d3
    db $d3                                        ; $756c: $d3
    ld b, l                                       ; $756d: $45
    db $d3                                        ; $756e: $d3
    ld hl, sp+$0c                                 ; $756f: $f8 $0c
    inc b                                         ; $7571: $04
    ld bc, $fa21                                  ; $7572: $01 $21 $fa
    ld hl, sp-$2d                                 ; $7575: $f8 $d3
    ld bc, $0101                                  ; $7577: $01 $01 $01
    ld bc, $0101                                  ; $757a: $01 $01 $01
    ld bc, $0101                                  ; $757d: $01 $01 $01
    ld bc, $0101                                  ; $7580: $01 $01 $01
    ld bc, $0101                                  ; $7583: $01 $01 $01
    ld bc, $6c40                                  ; $7586: $01 $40 $6c
    ld b, l                                       ; $7589: $45
    ld l, l                                       ; $758a: $6d
    rra                                           ; $758b: $1f
    db $d3                                        ; $758c: $d3
    ld l, h                                       ; $758d: $6c
    db $d3                                        ; $758e: $d3
    db $d3                                        ; $758f: $d3
    ld e, $d3                                     ; $7590: $1e $d3
    ld b, b                                       ; $7592: $40
    db $d3                                        ; $7593: $d3
    db $d3                                        ; $7594: $d3
    inc b                                         ; $7595: $04
    ld bc, $0101                                  ; $7596: $01 $01 $01
    ld bc, $0101                                  ; $7599: $01 $01 $01
    ld bc, $0101                                  ; $759c: $01 $01 $01
    ld bc, $0101                                  ; $759f: $01 $01 $01
    ld bc, $0101                                  ; $75a2: $01 $01 $01
    ld bc, $d301                                  ; $75a5: $01 $01 $d3
    rra                                           ; $75a8: $1f
    db $d3                                        ; $75a9: $d3
    ei                                            ; $75aa: $fb
    ld l, l                                       ; $75ab: $6d
    db $d3                                        ; $75ac: $d3
    ld e, b                                       ; $75ad: $58
    db $d3                                        ; $75ae: $d3
    db $d3                                        ; $75af: $d3
    ld sp, hl                                     ; $75b0: $f9
    ld [bc], a                                    ; $75b1: $02
    ld a, [$fa02]                                 ; $75b2: $fa $02 $fa
    inc c                                         ; $75b5: $0c
    ld hl, $0101                                  ; $75b6: $21 $01 $01
    ld bc, $0101                                  ; $75b9: $01 $01 $01
    ld bc, $0105                                  ; $75bc: $01 $05 $01
    ld bc, $0101                                  ; $75bf: $01 $01 $01
    ld bc, $0101                                  ; $75c2: $01 $01 $01
    ld bc, $0301                                  ; $75c5: $01 $01 $03
    ld bc, $fbf8                                  ; $75c8: $01 $f8 $fb
    ld hl, sp-$2d                                 ; $75cb: $f8 $d3
    db $d3                                        ; $75cd: $d3
    db $d3                                        ; $75ce: $d3
    cp d                                          ; $75cf: $ba
    cp e                                          ; $75d0: $bb
    cp d                                          ; $75d1: $ba
    cp e                                          ; $75d2: $bb
    cp h                                          ; $75d3: $bc
    cp l                                          ; $75d4: $bd
    cp h                                          ; $75d5: $bc
    cp l                                          ; $75d6: $bd
    ld bc, $0101                                  ; $75d7: $01 $01 $01
    ld bc, $0101                                  ; $75da: $01 $01 $01
    ld bc, $8c01                                  ; $75dd: $01 $01 $8c
    adc h                                         ; $75e0: $8c
    adc h                                         ; $75e1: $8c
    adc h                                         ; $75e2: $8c
    adc h                                         ; $75e3: $8c
    adc h                                         ; $75e4: $8c
    adc h                                         ; $75e5: $8c
    adc h                                         ; $75e6: $8c
    pop de                                        ; $75e7: $d1
    db $d3                                        ; $75e8: $d3
    db $d3                                        ; $75e9: $d3
    db $fc                                        ; $75ea: $fc
    db $d3                                        ; $75eb: $d3
    push af                                       ; $75ec: $f5
    db $d3                                        ; $75ed: $d3
    db $d3                                        ; $75ee: $d3
    cp d                                          ; $75ef: $ba
    cp e                                          ; $75f0: $bb
    cp d                                          ; $75f1: $ba
    cp e                                          ; $75f2: $bb
    cp h                                          ; $75f3: $bc
    cp l                                          ; $75f4: $bd
    cp h                                          ; $75f5: $bc
    cp l                                          ; $75f6: $bd
    ld bc, $0101                                  ; $75f7: $01 $01 $01
    rlca                                          ; $75fa: $07
    ld bc, $0101                                  ; $75fb: $01 $01 $01
    ld bc, $8c8c                                  ; $75fe: $01 $8c $8c
    adc h                                         ; $7601: $8c
    adc h                                         ; $7602: $8c
    adc h                                         ; $7603: $8c
    adc h                                         ; $7604: $8c
    adc h                                         ; $7605: $8c
    adc h                                         ; $7606: $8c
    db $d3                                        ; $7607: $d3
    db $d3                                        ; $7608: $d3
    db $d3                                        ; $7609: $d3
    db $d3                                        ; $760a: $d3
    db $d3                                        ; $760b: $d3
    db $d3                                        ; $760c: $d3
    ei                                            ; $760d: $fb
    pop de                                        ; $760e: $d1
    cp d                                          ; $760f: $ba
    cp e                                          ; $7610: $bb
    cp d                                          ; $7611: $ba
    cp e                                          ; $7612: $bb
    cp h                                          ; $7613: $bc
    cp l                                          ; $7614: $bd
    cp h                                          ; $7615: $bc
    cp l                                          ; $7616: $bd
    ld bc, $0101                                  ; $7617: $01 $01 $01
    ld bc, $0101                                  ; $761a: $01 $01 $01
    ld bc, $8c01                                  ; $761d: $01 $01 $8c
    adc h                                         ; $7620: $8c
    adc h                                         ; $7621: $8c
    adc h                                         ; $7622: $8c
    adc h                                         ; $7623: $8c
    adc h                                         ; $7624: $8c
    adc h                                         ; $7625: $8c
    adc h                                         ; $7626: $8c
    db $d3                                        ; $7627: $d3
    push af                                       ; $7628: $f5
    db $d3                                        ; $7629: $d3
    db $d3                                        ; $762a: $d3
    db $d3                                        ; $762b: $d3
    db $d3                                        ; $762c: $d3
    db $d3                                        ; $762d: $d3
    db $fc                                        ; $762e: $fc
    cp d                                          ; $762f: $ba
    cp e                                          ; $7630: $bb
    cp d                                          ; $7631: $ba
    cp e                                          ; $7632: $bb
    cp h                                          ; $7633: $bc
    cp l                                          ; $7634: $bd
    cp h                                          ; $7635: $bc
    cp l                                          ; $7636: $bd
    ld bc, $0101                                  ; $7637: $01 $01 $01
    ld bc, $0101                                  ; $763a: $01 $01 $01
    ld bc, $8c07                                  ; $763d: $01 $07 $8c
    adc h                                         ; $7640: $8c
    adc h                                         ; $7641: $8c
    adc h                                         ; $7642: $8c
    adc h                                         ; $7643: $8c
    adc h                                         ; $7644: $8c
    adc h                                         ; $7645: $8c
    adc h                                         ; $7646: $8c
    cp [hl]                                       ; $7647: $be
    cp a                                          ; $7648: $bf
    cp [hl]                                       ; $7649: $be
    cp a                                          ; $764a: $bf
    pop bc                                        ; $764b: $c1
    jp nz, $c2c1                                  ; $764c: $c2 $c1 $c2

    call nz, $c4c5                                ; $764f: $c4 $c5 $c4
    push bc                                       ; $7652: $c5
    rst $00                                       ; $7653: $c7
    ret z                                         ; $7654: $c8

    rst $00                                       ; $7655: $c7
    ret z                                         ; $7656: $c8

    adc h                                         ; $7657: $8c
    adc h                                         ; $7658: $8c
    adc h                                         ; $7659: $8c
    adc h                                         ; $765a: $8c
    adc h                                         ; $765b: $8c
    adc h                                         ; $765c: $8c
    adc h                                         ; $765d: $8c
    adc h                                         ; $765e: $8c
    adc h                                         ; $765f: $8c
    adc h                                         ; $7660: $8c
    adc h                                         ; $7661: $8c
    adc h                                         ; $7662: $8c
    adc h                                         ; $7663: $8c
    adc h                                         ; $7664: $8c
    adc h                                         ; $7665: $8c
    adc h                                         ; $7666: $8c
    cp [hl]                                       ; $7667: $be
    ret nz                                        ; $7668: $c0

    cp [hl]                                       ; $7669: $be
    cp a                                          ; $766a: $bf
    pop bc                                        ; $766b: $c1
    jp $c2c1                                      ; $766c: $c3 $c1 $c2


    call nz, $c4c6                                ; $766f: $c4 $c6 $c4
    push bc                                       ; $7672: $c5
    rst $00                                       ; $7673: $c7
    rst $00                                       ; $7674: $c7
    rst $00                                       ; $7675: $c7
    ret z                                         ; $7676: $c8

    adc h                                         ; $7677: $8c
    adc h                                         ; $7678: $8c
    adc h                                         ; $7679: $8c
    adc h                                         ; $767a: $8c
    adc h                                         ; $767b: $8c
    adc h                                         ; $767c: $8c
    adc h                                         ; $767d: $8c
    adc h                                         ; $767e: $8c
    adc h                                         ; $767f: $8c
    adc h                                         ; $7680: $8c
    adc h                                         ; $7681: $8c
    adc h                                         ; $7682: $8c
    adc h                                         ; $7683: $8c
    adc h                                         ; $7684: $8c
    adc h                                         ; $7685: $8c
    adc h                                         ; $7686: $8c
    db $d3                                        ; $7687: $d3
    db $d3                                        ; $7688: $d3
    db $d3                                        ; $7689: $d3
    db $d3                                        ; $768a: $d3
    ld b, l                                       ; $768b: $45
    ld d, a                                       ; $768c: $57
    db $d3                                        ; $768d: $d3
    push af                                       ; $768e: $f5
    db $d3                                        ; $768f: $d3
    db $d3                                        ; $7690: $d3
    ld e, b                                       ; $7691: $58
    db $d3                                        ; $7692: $d3
    sbc d                                         ; $7693: $9a
    and a                                         ; $7694: $a7
    db $d3                                        ; $7695: $d3
    db $d3                                        ; $7696: $d3
    ld bc, $0101                                  ; $7697: $01 $01 $01
    ld bc, $4601                                  ; $769a: $01 $01 $46
    ld bc, $0101                                  ; $769d: $01 $01 $01
    ld bc, $0105                                  ; $76a0: $01 $05 $01
    ld c, $0d                                     ; $76a3: $0e $0d
    ld bc, $5801                                  ; $76a5: $01 $01 $58
    db $d3                                        ; $76a8: $d3
    db $d3                                        ; $76a9: $d3
    ld d, e                                       ; $76aa: $53
    db $d3                                        ; $76ab: $d3
    db $d3                                        ; $76ac: $d3
    db $d3                                        ; $76ad: $d3
    ld d, l                                       ; $76ae: $55
    and a                                         ; $76af: $a7
    db $fc                                        ; $76b0: $fc
    db $d3                                        ; $76b1: $d3
    db $d3                                        ; $76b2: $d3
    db $d3                                        ; $76b3: $d3
    db $d3                                        ; $76b4: $d3
    ld bc, $0502                                  ; $76b5: $01 $02 $05
    ld bc, $0301                                  ; $76b8: $01 $01 $03
    ld bc, $0101                                  ; $76bb: $01 $01 $01
    inc bc                                        ; $76be: $03
    ld c, $07                                     ; $76bf: $0e $07
    ld bc, $0101                                  ; $76c1: $01 $01 $01
    ld bc, $0101                                  ; $76c4: $01 $01 $01
    ld d, h                                       ; $76c7: $54
    db $d3                                        ; $76c8: $d3
    ei                                            ; $76c9: $fb
    pop de                                        ; $76ca: $d1
    ld d, [hl]                                    ; $76cb: $56
    db $d3                                        ; $76cc: $d3
    db $d3                                        ; $76cd: $d3
    db $d3                                        ; $76ce: $d3
    ld hl, sp-$07                                 ; $76cf: $f8 $f9
    db $d3                                        ; $76d1: $d3
    db $fc                                        ; $76d2: $fc
    dec c                                         ; $76d3: $0d
    ld a, [$d3f8]                                 ; $76d4: $fa $f8 $d3
    inc bc                                        ; $76d7: $03
    ld bc, $0101                                  ; $76d8: $01 $01 $01
    inc bc                                        ; $76db: $03
    ld bc, $0101                                  ; $76dc: $01 $01 $01
    ld bc, $0101                                  ; $76df: $01 $01 $01
    rlca                                          ; $76e2: $07
    ld bc, $0101                                  ; $76e3: $01 $01 $01
    ld bc, $6e5b                                  ; $76e6: $01 $5b $6e
    ld l, a                                       ; $76e9: $6f
    ld e, [hl]                                    ; $76ea: $5e
    ld e, a                                       ; $76eb: $5f
    ld e, h                                       ; $76ec: $5c
    ld e, l                                       ; $76ed: $5d
    ld h, d                                       ; $76ee: $62
    ld h, e                                       ; $76ef: $63
    ld h, b                                       ; $76f0: $60
    ld h, c                                       ; $76f1: $61
    ld h, [hl]                                    ; $76f2: $66
    ld h, a                                       ; $76f3: $67
    ld l, b                                       ; $76f4: $68
    ld l, c                                       ; $76f5: $69
    ld l, d                                       ; $76f6: $6a
    inc bc                                        ; $76f7: $03
    inc bc                                        ; $76f8: $03
    inc bc                                        ; $76f9: $03
    inc bc                                        ; $76fa: $03
    inc bc                                        ; $76fb: $03
    inc bc                                        ; $76fc: $03
    inc bc                                        ; $76fd: $03
    inc bc                                        ; $76fe: $03
    inc bc                                        ; $76ff: $03
    inc bc                                        ; $7700: $03
    inc bc                                        ; $7701: $03
    inc bc                                        ; $7702: $03
    ld h, e                                       ; $7703: $63
    inc bc                                        ; $7704: $03
    inc bc                                        ; $7705: $03
    inc bc                                        ; $7706: $03
    pop de                                        ; $7707: $d1
    db $d3                                        ; $7708: $d3
    db $d3                                        ; $7709: $d3
    ld [bc], a                                    ; $770a: $02
    inc b                                         ; $770b: $04
    ld bc, $0402                                  ; $770c: $01 $02 $04
    ld hl, sp+$21                                 ; $770f: $f8 $21
    jr nz, jr_08a_7720                            ; $7711: $20 $0d

    jr nz, @+$0f                                  ; $7713: $20 $0d

    ld c, $02                                     ; $7715: $0e $02
    ld bc, $0101                                  ; $7717: $01 $01 $01
    ld bc, $0101                                  ; $771a: $01 $01 $01
    ld bc, $0101                                  ; $771d: $01 $01 $01

jr_08a_7720:
    ld bc, $0101                                  ; $7720: $01 $01 $01
    ld bc, $0101                                  ; $7723: $01 $01 $01
    ld bc, $f8fa                                  ; $7726: $01 $fa $f8
    dec c                                         ; $7729: $0d
    ld c, $0d                                     ; $772a: $0e $0d
    ld c, $03                                     ; $772c: $0e $03
    inc c                                         ; $772e: $0c
    ld c, $03                                     ; $772f: $0e $03
    ld bc, $0c21                                  ; $7731: $01 $21 $0c
    ld hl, sp+$20                                 ; $7734: $f8 $20
    inc b                                         ; $7736: $04
    ld bc, $0101                                  ; $7737: $01 $01 $01
    ld bc, $0101                                  ; $773a: $01 $01 $01
    ld bc, $0101                                  ; $773d: $01 $01 $01
    ld bc, $0101                                  ; $7740: $01 $01 $01
    ld bc, $0101                                  ; $7743: $01 $01 $01
    ld bc, $0c03                                  ; $7746: $01 $03 $0c
    ld [bc], a                                    ; $7749: $02
    db $d3                                        ; $774a: $d3
    ld hl, $0d20                                  ; $774b: $21 $20 $0d
    ld bc, $fa02                                  ; $774e: $01 $02 $fa
    db $d3                                        ; $7751: $d3
    db $d3                                        ; $7752: $d3
    db $d3                                        ; $7753: $d3
    db $d3                                        ; $7754: $d3
    db $d3                                        ; $7755: $d3
    push af                                       ; $7756: $f5
    ld bc, $0101                                  ; $7757: $01 $01 $01
    ld bc, $0101                                  ; $775a: $01 $01 $01
    ld bc, $0101                                  ; $775d: $01 $01 $01
    ld bc, $0101                                  ; $7760: $01 $01 $01
    ld bc, $0101                                  ; $7763: $01 $01 $01
    ld bc, $cac9                                  ; $7766: $01 $c9 $ca
    set 1, h                                      ; $7769: $cb $cc
    call $cfce                                    ; $776b: $cd $ce $cf
    ret nc                                        ; $776e: $d0

    pop de                                        ; $776f: $d1
    jp nc, $d4d3                                  ; $7770: $d2 $d3 $d4

    push de                                       ; $7773: $d5
    sub $d7                                       ; $7774: $d6 $d7
    ret c                                         ; $7776: $d8

    dec bc                                        ; $7777: $0b
    dec bc                                        ; $7778: $0b
    dec bc                                        ; $7779: $0b
    dec bc                                        ; $777a: $0b
    dec bc                                        ; $777b: $0b
    dec bc                                        ; $777c: $0b
    dec bc                                        ; $777d: $0b
    dec bc                                        ; $777e: $0b
    dec bc                                        ; $777f: $0b
    dec bc                                        ; $7780: $0b
    dec bc                                        ; $7781: $0b
    dec bc                                        ; $7782: $0b
    dec bc                                        ; $7783: $0b
    dec bc                                        ; $7784: $0b
    dec bc                                        ; $7785: $0b
    dec bc                                        ; $7786: $0b
    inc b                                         ; $7787: $04
    ld bc, $0402                                  ; $7788: $01 $02 $04
    db $d3                                        ; $778b: $d3
    db $d3                                        ; $778c: $d3
    db $d3                                        ; $778d: $d3
    db $d3                                        ; $778e: $d3
    cp d                                          ; $778f: $ba
    cp e                                          ; $7790: $bb
    cp d                                          ; $7791: $ba
    cp e                                          ; $7792: $bb
    cp h                                          ; $7793: $bc
    cp l                                          ; $7794: $bd
    cp h                                          ; $7795: $bc
    cp l                                          ; $7796: $bd
    ld bc, $0101                                  ; $7797: $01 $01 $01
    ld bc, $0101                                  ; $779a: $01 $01 $01
    ld bc, $8c01                                  ; $779d: $01 $01 $8c
    adc h                                         ; $77a0: $8c
    adc h                                         ; $77a1: $8c
    adc h                                         ; $77a2: $8c
    adc h                                         ; $77a3: $8c
    adc h                                         ; $77a4: $8c
    adc h                                         ; $77a5: $8c
    adc h                                         ; $77a6: $8c
    ld bc, $fa02                                  ; $77a7: $01 $02 $fa
    db $d3                                        ; $77aa: $d3
    db $d3                                        ; $77ab: $d3
    push af                                       ; $77ac: $f5
    db $d3                                        ; $77ad: $d3
    db $d3                                        ; $77ae: $d3
    cp d                                          ; $77af: $ba
    cp e                                          ; $77b0: $bb
    cp d                                          ; $77b1: $ba
    cp e                                          ; $77b2: $bb
    cp h                                          ; $77b3: $bc
    cp l                                          ; $77b4: $bd
    cp h                                          ; $77b5: $bc
    cp l                                          ; $77b6: $bd
    ld bc, $0101                                  ; $77b7: $01 $01 $01
    ld bc, $0101                                  ; $77ba: $01 $01 $01
    ld bc, $8c01                                  ; $77bd: $01 $01 $8c
    adc h                                         ; $77c0: $8c
    adc h                                         ; $77c1: $8c
    adc h                                         ; $77c2: $8c
    adc h                                         ; $77c3: $8c
    adc h                                         ; $77c4: $8c
    adc h                                         ; $77c5: $8c
    adc h                                         ; $77c6: $8c
    ei                                            ; $77c7: $fb
    pop de                                        ; $77c8: $d1
    db $d3                                        ; $77c9: $d3
    db $d3                                        ; $77ca: $d3
    db $d3                                        ; $77cb: $d3
    db $d3                                        ; $77cc: $d3
    db $d3                                        ; $77cd: $d3
    db $d3                                        ; $77ce: $d3
    cp d                                          ; $77cf: $ba
    cp e                                          ; $77d0: $bb
    cp d                                          ; $77d1: $ba
    cp e                                          ; $77d2: $bb
    cp h                                          ; $77d3: $bc
    cp l                                          ; $77d4: $bd
    cp h                                          ; $77d5: $bc
    cp l                                          ; $77d6: $bd
    ld bc, $0101                                  ; $77d7: $01 $01 $01
    ld bc, $0101                                  ; $77da: $01 $01 $01
    ld bc, $8c01                                  ; $77dd: $01 $01 $8c
    adc h                                         ; $77e0: $8c
    adc h                                         ; $77e1: $8c
    adc h                                         ; $77e2: $8c
    adc h                                         ; $77e3: $8c
    adc h                                         ; $77e4: $8c
    adc h                                         ; $77e5: $8c
    adc h                                         ; $77e6: $8c
    adc d                                         ; $77e7: $8a
    adc d                                         ; $77e8: $8a
    adc d                                         ; $77e9: $8a
    reti                                          ; $77ea: $d9


    adc d                                         ; $77eb: $8a
    adc d                                         ; $77ec: $8a
    jp c, $badb                                   ; $77ed: $da $db $ba

    call c, $dedd                                 ; $77f0: $dc $dd $de
    cp h                                          ; $77f3: $bc
    rst $18                                       ; $77f4: $df
    ldh [$e1], a                                  ; $77f5: $e0 $e1
    dec bc                                        ; $77f7: $0b
    dec bc                                        ; $77f8: $0b
    dec bc                                        ; $77f9: $0b
    adc h                                         ; $77fa: $8c
    dec bc                                        ; $77fb: $0b
    dec bc                                        ; $77fc: $0b
    adc h                                         ; $77fd: $8c
    adc h                                         ; $77fe: $8c
    adc h                                         ; $77ff: $8c
    adc h                                         ; $7800: $8c
    adc h                                         ; $7801: $8c
    adc h                                         ; $7802: $8c
    adc h                                         ; $7803: $8c
    adc h                                         ; $7804: $8c
    adc h                                         ; $7805: $8c
    adc h                                         ; $7806: $8c
    cp [hl]                                       ; $7807: $be
    ld [c], a                                     ; $7808: $e2
    db $e3                                        ; $7809: $e3
    db $e4                                        ; $780a: $e4
    pop bc                                        ; $780b: $c1
    push hl                                       ; $780c: $e5
    and $e7                                       ; $780d: $e6 $e7
    call nz, $e9e8                                ; $780f: $c4 $e8 $e9
    ld [$ebc7], a                                 ; $7812: $ea $c7 $eb
    db $ec                                        ; $7815: $ec
    db $ed                                        ; $7816: $ed
    adc h                                         ; $7817: $8c
    adc h                                         ; $7818: $8c
    adc h                                         ; $7819: $8c
    adc h                                         ; $781a: $8c
    adc h                                         ; $781b: $8c
    adc h                                         ; $781c: $8c
    adc h                                         ; $781d: $8c
    adc h                                         ; $781e: $8c
    adc h                                         ; $781f: $8c
    adc h                                         ; $7820: $8c
    adc h                                         ; $7821: $8c
    adc h                                         ; $7822: $8c
    adc h                                         ; $7823: $8c
    adc h                                         ; $7824: $8c
    adc h                                         ; $7825: $8c
    adc h                                         ; $7826: $8c
    db $fd                                        ; $7827: $fd
    cp $d3                                        ; $7828: $fe $d3
    ld d, e                                       ; $782a: $53
    rst $38                                       ; $782b: $ff
    nop                                           ; $782c: $00
    db $d3                                        ; $782d: $d3
    ld d, l                                       ; $782e: $55
    db $d3                                        ; $782f: $d3
    db $d3                                        ; $7830: $d3
    db $d3                                        ; $7831: $d3
    db $d3                                        ; $7832: $d3
    db $d3                                        ; $7833: $d3
    db $d3                                        ; $7834: $d3
    ei                                            ; $7835: $fb
    pop de                                        ; $7836: $d1
    ld bc, $0101                                  ; $7837: $01 $01 $01
    inc bc                                        ; $783a: $03
    ld bc, $0101                                  ; $783b: $01 $01 $01
    inc bc                                        ; $783e: $03
    ld bc, $0101                                  ; $783f: $01 $01 $01
    ld bc, $0101                                  ; $7842: $01 $01 $01
    ld bc, $5401                                  ; $7845: $01 $01 $54
    db $d3                                        ; $7848: $d3
    db $d3                                        ; $7849: $d3
    db $d3                                        ; $784a: $d3
    ld d, [hl]                                    ; $784b: $56
    db $d3                                        ; $784c: $d3
    db $d3                                        ; $784d: $d3
    db $fc                                        ; $784e: $fc
    db $d3                                        ; $784f: $d3
    push af                                       ; $7850: $f5
    db $d3                                        ; $7851: $d3
    db $d3                                        ; $7852: $d3
    db $d3                                        ; $7853: $d3
    db $d3                                        ; $7854: $d3
    db $d3                                        ; $7855: $d3
    ld l, l                                       ; $7856: $6d
    inc bc                                        ; $7857: $03
    ld bc, $0101                                  ; $7858: $01 $01 $01
    inc bc                                        ; $785b: $03
    ld bc, $0701                                  ; $785c: $01 $01 $07
    ld bc, $0101                                  ; $785f: $01 $01 $01
    ld bc, $0101                                  ; $7862: $01 $01 $01
    ld bc, $d301                                  ; $7865: $01 $01 $d3
    db $d3                                        ; $7868: $d3
    db $d3                                        ; $7869: $d3
    db $d3                                        ; $786a: $d3
    ei                                            ; $786b: $fb
    pop de                                        ; $786c: $d1
    db $d3                                        ; $786d: $d3
    db $d3                                        ; $786e: $d3
    db $d3                                        ; $786f: $d3
    ld b, b                                       ; $7870: $40
    ld l, h                                       ; $7871: $6c
    ld b, l                                       ; $7872: $45
    ld e, $1e                                     ; $7873: $1e $1e
    ld b, h                                       ; $7875: $44
    ld b, c                                       ; $7876: $41
    ld bc, $0101                                  ; $7877: $01 $01 $01
    ld bc, $0101                                  ; $787a: $01 $01 $01
    ld bc, $0101                                  ; $787d: $01 $01 $01
    ld bc, $0101                                  ; $7880: $01 $01 $01
    ld bc, $0101                                  ; $7883: $01 $01 $01
    ld bc, $cbca                                  ; $7886: $01 $ca $cb
    call z, $ceee                                 ; $7889: $cc $ee $ce
    rst $08                                       ; $788c: $cf
    ret nc                                        ; $788d: $d0

    rst $28                                       ; $788e: $ef
    jp nc, $d4d3                                  ; $788f: $d2 $d3 $d4

    ldh a, [$d6]                                  ; $7892: $f0 $d6
    rst $10                                       ; $7894: $d7
    ret c                                         ; $7895: $d8

    sub $0b                                       ; $7896: $d6 $0b
    dec bc                                        ; $7898: $0b
    dec bc                                        ; $7899: $0b
    dec bc                                        ; $789a: $0b
    dec bc                                        ; $789b: $0b
    dec bc                                        ; $789c: $0b
    dec bc                                        ; $789d: $0b
    dec bc                                        ; $789e: $0b
    dec bc                                        ; $789f: $0b
    dec bc                                        ; $78a0: $0b
    dec bc                                        ; $78a1: $0b
    dec bc                                        ; $78a2: $0b
    dec bc                                        ; $78a3: $0b
    dec bc                                        ; $78a4: $0b
    dec bc                                        ; $78a5: $0b
    dec bc                                        ; $78a6: $0b
    db $d3                                        ; $78a7: $d3
    push af                                       ; $78a8: $f5
    db $d3                                        ; $78a9: $d3
    db $d3                                        ; $78aa: $d3
    db $d3                                        ; $78ab: $d3
    db $d3                                        ; $78ac: $d3
    ld e, $6c                                     ; $78ad: $1e $6c
    db $fc                                        ; $78af: $fc
    db $d3                                        ; $78b0: $d3
    db $d3                                        ; $78b1: $d3
    rra                                           ; $78b2: $1f
    db $fd                                        ; $78b3: $fd
    cp $d3                                        ; $78b4: $fe $d3
    db $d3                                        ; $78b6: $d3
    ld bc, $0101                                  ; $78b7: $01 $01 $01
    ld bc, $0101                                  ; $78ba: $01 $01 $01
    ld bc, $0701                                  ; $78bd: $01 $01 $07
    ld bc, $0101                                  ; $78c0: $01 $01 $01
    ld bc, $0101                                  ; $78c3: $01 $01 $01
    ld bc, $1fd3                                  ; $78c6: $01 $d3 $1f
    ld b, b                                       ; $78c9: $40
    ld l, h                                       ; $78ca: $6c
    ld b, d                                       ; $78cb: $42
    ld b, e                                       ; $78cc: $43
    ld b, [hl]                                    ; $78cd: $46
    ld l, e                                       ; $78ce: $6b
    ld b, b                                       ; $78cf: $40
    ld b, c                                       ; $78d0: $41
    ld b, d                                       ; $78d1: $42
    ld b, e                                       ; $78d2: $43
    ld e, $1f                                     ; $78d3: $1e $1f
    ld b, b                                       ; $78d5: $40
    ld b, c                                       ; $78d6: $41
    ld bc, $0101                                  ; $78d7: $01 $01 $01
    ld bc, $0101                                  ; $78da: $01 $01 $01
    ld bc, $0101                                  ; $78dd: $01 $01 $01
    ld bc, $0101                                  ; $78e0: $01 $01 $01
    ld bc, $0101                                  ; $78e3: $01 $01 $01
    ld bc, $4342                                  ; $78e6: $01 $42 $43
    ld b, [hl]                                    ; $78e9: $46
    ld l, e                                       ; $78ea: $6b
    ld b, h                                       ; $78eb: $44
    ld b, c                                       ; $78ec: $41
    ld l, h                                       ; $78ed: $6c
    ld b, l                                       ; $78ee: $45
    ld b, [hl]                                    ; $78ef: $46
    ld e, $d3                                     ; $78f0: $1e $d3
    push af                                       ; $78f2: $f5
    ld b, l                                       ; $78f3: $45
    db $d3                                        ; $78f4: $d3
    db $d3                                        ; $78f5: $d3
    db $d3                                        ; $78f6: $d3
    ld bc, $0101                                  ; $78f7: $01 $01 $01
    ld bc, $0101                                  ; $78fa: $01 $01 $01
    ld bc, $0101                                  ; $78fd: $01 $01 $01
    ld bc, $0101                                  ; $7900: $01 $01 $01
    ld bc, $0101                                  ; $7903: $01 $01 $01
    ld bc, $8af1                                  ; $7906: $01 $f1 $8a
    adc d                                         ; $7909: $8a
    adc d                                         ; $790a: $8a
    ld a, [c]                                     ; $790b: $f2
    jp c, $8a8a                                   ; $790c: $da $8a $8a

    sbc $dd                                       ; $790f: $de $dd
    call c, $f3ba                                 ; $7911: $dc $ba $f3
    ldh [$df], a                                  ; $7914: $e0 $df
    cp h                                          ; $7916: $bc
    adc h                                         ; $7917: $8c
    dec bc                                        ; $7918: $0b
    dec bc                                        ; $7919: $0b
    dec bc                                        ; $791a: $0b
    adc h                                         ; $791b: $8c
    xor h                                         ; $791c: $ac
    dec bc                                        ; $791d: $0b
    dec bc                                        ; $791e: $0b
    xor h                                         ; $791f: $ac
    xor h                                         ; $7920: $ac
    xor h                                         ; $7921: $ac
    xor h                                         ; $7922: $ac
    adc h                                         ; $7923: $8c
    xor h                                         ; $7924: $ac
    xor h                                         ; $7925: $ac
    xor h                                         ; $7926: $ac
    rst $38                                       ; $7927: $ff
    nop                                           ; $7928: $00
    db $d3                                        ; $7929: $d3
    db $d3                                        ; $792a: $d3
    db $d3                                        ; $792b: $d3
    db $d3                                        ; $792c: $d3
    db $d3                                        ; $792d: $d3
    ei                                            ; $792e: $fb
    cp e                                          ; $792f: $bb
    cp d                                          ; $7930: $ba
    cp e                                          ; $7931: $bb
    cp d                                          ; $7932: $ba
    cp l                                          ; $7933: $bd
    cp h                                          ; $7934: $bc
    cp l                                          ; $7935: $bd
    cp h                                          ; $7936: $bc
    ld bc, $0101                                  ; $7937: $01 $01 $01
    ld bc, $0101                                  ; $793a: $01 $01 $01
    ld bc, $ac01                                  ; $793d: $01 $01 $ac
    xor h                                         ; $7940: $ac
    xor h                                         ; $7941: $ac
    xor h                                         ; $7942: $ac
    xor h                                         ; $7943: $ac
    xor h                                         ; $7944: $ac
    xor h                                         ; $7945: $ac
    xor h                                         ; $7946: $ac
    db $d3                                        ; $7947: $d3
    db $d3                                        ; $7948: $d3
    ld e, $1f                                     ; $7949: $1e $1f
    pop de                                        ; $794b: $d1
    db $d3                                        ; $794c: $d3
    db $d3                                        ; $794d: $d3
    db $d3                                        ; $794e: $d3
    cp e                                          ; $794f: $bb
    cp d                                          ; $7950: $ba
    cp e                                          ; $7951: $bb
    cp d                                          ; $7952: $ba
    cp l                                          ; $7953: $bd
    cp h                                          ; $7954: $bc
    cp l                                          ; $7955: $bd
    cp h                                          ; $7956: $bc
    ld bc, $0101                                  ; $7957: $01 $01 $01
    ld bc, $0101                                  ; $795a: $01 $01 $01
    ld bc, $ac01                                  ; $795d: $01 $01 $ac
    xor h                                         ; $7960: $ac
    xor h                                         ; $7961: $ac
    xor h                                         ; $7962: $ac
    xor h                                         ; $7963: $ac
    xor h                                         ; $7964: $ac
    xor h                                         ; $7965: $ac
    xor h                                         ; $7966: $ac
    db $d3                                        ; $7967: $d3
    db $d3                                        ; $7968: $d3
    ei                                            ; $7969: $fb
    pop de                                        ; $796a: $d1
    push af                                       ; $796b: $f5
    db $d3                                        ; $796c: $d3
    db $d3                                        ; $796d: $d3
    db $d3                                        ; $796e: $d3
    cp e                                          ; $796f: $bb
    cp d                                          ; $7970: $ba
    cp e                                          ; $7971: $bb
    cp d                                          ; $7972: $ba
    cp l                                          ; $7973: $bd
    cp h                                          ; $7974: $bc
    cp l                                          ; $7975: $bd
    cp h                                          ; $7976: $bc
    ld bc, $0101                                  ; $7977: $01 $01 $01
    ld bc, $0101                                  ; $797a: $01 $01 $01
    ld bc, $ac01                                  ; $797d: $01 $01 $ac
    xor h                                         ; $7980: $ac
    xor h                                         ; $7981: $ac
    xor h                                         ; $7982: $ac
    xor h                                         ; $7983: $ac
    xor h                                         ; $7984: $ac
    xor h                                         ; $7985: $ac
    xor h                                         ; $7986: $ac
    db $f4                                        ; $7987: $f4
    db $e3                                        ; $7988: $e3
    ld [c], a                                     ; $7989: $e2
    cp [hl]                                       ; $798a: $be
    rst $20                                       ; $798b: $e7
    and $e5                                       ; $798c: $e6 $e5
    pop bc                                        ; $798e: $c1
    push af                                       ; $798f: $f5
    jp hl                                         ; $7990: $e9


    add sp, -$3c                                  ; $7991: $e8 $c4
    or $ec                                        ; $7993: $f6 $ec
    db $eb                                        ; $7995: $eb
    rst $00                                       ; $7996: $c7
    adc h                                         ; $7997: $8c
    xor h                                         ; $7998: $ac
    xor h                                         ; $7999: $ac
    xor h                                         ; $799a: $ac
    xor h                                         ; $799b: $ac
    xor h                                         ; $799c: $ac
    xor h                                         ; $799d: $ac
    xor h                                         ; $799e: $ac
    adc h                                         ; $799f: $8c
    xor h                                         ; $79a0: $ac
    xor h                                         ; $79a1: $ac
    xor h                                         ; $79a2: $ac
    adc h                                         ; $79a3: $8c
    xor h                                         ; $79a4: $ac
    xor h                                         ; $79a5: $ac
    xor h                                         ; $79a6: $ac
    cp a                                          ; $79a7: $bf
    cp [hl]                                       ; $79a8: $be
    ret nz                                        ; $79a9: $c0

    cp [hl]                                       ; $79aa: $be
    jp nz, $c3c1                                  ; $79ab: $c2 $c1 $c3

    pop bc                                        ; $79ae: $c1
    push bc                                       ; $79af: $c5
    call nz, $c4c6                                ; $79b0: $c4 $c6 $c4
    ret z                                         ; $79b3: $c8

    rst $00                                       ; $79b4: $c7
    rst $00                                       ; $79b5: $c7
    rst $00                                       ; $79b6: $c7
    xor h                                         ; $79b7: $ac
    xor h                                         ; $79b8: $ac
    xor h                                         ; $79b9: $ac
    xor h                                         ; $79ba: $ac
    xor h                                         ; $79bb: $ac
    xor h                                         ; $79bc: $ac
    xor h                                         ; $79bd: $ac
    xor h                                         ; $79be: $ac
    xor h                                         ; $79bf: $ac
    xor h                                         ; $79c0: $ac
    xor h                                         ; $79c1: $ac
    xor h                                         ; $79c2: $ac
    xor h                                         ; $79c3: $ac
    xor h                                         ; $79c4: $ac
    xor h                                         ; $79c5: $ac
    xor h                                         ; $79c6: $ac
    rra                                           ; $79c7: $1f
    ld b, b                                       ; $79c8: $40
    ld l, e                                       ; $79c9: $6b
    ld b, l                                       ; $79ca: $45
    db $d3                                        ; $79cb: $d3
    ld e, $1f                                     ; $79cc: $1e $1f
    db $d3                                        ; $79ce: $d3
    ld l, h                                       ; $79cf: $6c
    ld l, e                                       ; $79d0: $6b
    ld l, l                                       ; $79d1: $6d
    ld e, $42                                     ; $79d2: $1e $42
    ld b, b                                       ; $79d4: $40
    ld l, h                                       ; $79d5: $6c
    db $d3                                        ; $79d6: $d3
    ld bc, $0101                                  ; $79d7: $01 $01 $01
    ld bc, $0101                                  ; $79da: $01 $01 $01
    ld bc, $0101                                  ; $79dd: $01 $01 $01
    ld bc, $0101                                  ; $79e0: $01 $01 $01
    ld bc, $0101                                  ; $79e3: $01 $01 $01
    ld bc, $d3d3                                  ; $79e6: $01 $d3 $d3
    db $d3                                        ; $79e9: $d3
    ei                                            ; $79ea: $fb
    db $fc                                        ; $79eb: $fc
    db $d3                                        ; $79ec: $d3
    jp nc, Jump_000_1fd3                          ; $79ed: $d2 $d3 $1f

    push de                                       ; $79f0: $d5
    sub $d5                                       ; $79f1: $d6 $d5
    db $d3                                        ; $79f3: $d3
    ret c                                         ; $79f4: $d8

    reti                                          ; $79f5: $d9


    jp c, $0101                                   ; $79f6: $da $01 $01

    ld bc, $0701                                  ; $79f9: $01 $01 $07
    ld bc, $0182                                  ; $79fc: $01 $82 $01
    ld bc, $8282                                  ; $79ff: $01 $82 $82
    and d                                         ; $7a02: $a2
    ld bc, $8282                                  ; $7a03: $01 $82 $82
    add d                                         ; $7a06: $82
    pop de                                        ; $7a07: $d1
    ret c                                         ; $7a08: $d8

    reti                                          ; $7a09: $d9


    adc [hl]                                      ; $7a0a: $8e
    db $d3                                        ; $7a0b: $d3
    call c, $dedd                                 ; $7a0c: $dc $dd $de
    call nc, $e1e0                                ; $7a0f: $d4 $e0 $e1
    ld [c], a                                     ; $7a12: $e2
    rst $10                                       ; $7a13: $d7
    db $e3                                        ; $7a14: $e3
    db $e4                                        ; $7a15: $e4
    push hl                                       ; $7a16: $e5
    ld bc, $8282                                  ; $7a17: $01 $82 $82
    adc d                                         ; $7a1a: $8a
    ld bc, $8282                                  ; $7a1b: $01 $82 $82
    add d                                         ; $7a1e: $82
    add d                                         ; $7a1f: $82
    add d                                         ; $7a20: $82
    add d                                         ; $7a21: $82
    add d                                         ; $7a22: $82
    add d                                         ; $7a23: $82
    add d                                         ; $7a24: $82
    add d                                         ; $7a25: $82
    add d                                         ; $7a26: $82
    db $ec                                        ; $7a27: $ec
    ld a, [c]                                     ; $7a28: $f2
    di                                            ; $7a29: $f3
    rst $10                                       ; $7a2a: $d7
    db $f4                                        ; $7a2b: $f4
    db $d3                                        ; $7a2c: $d3
    jp nc, $8adb                                  ; $7a2d: $d2 $db $8a

    push de                                       ; $7a30: $d5
    sub $df                                       ; $7a31: $d6 $df
    ldh a, [$d8]                                  ; $7a33: $f0 $d8
    reti                                          ; $7a35: $d9


    jp c, $8282                                   ; $7a36: $da $82 $82

    add d                                         ; $7a39: $82
    add d                                         ; $7a3a: $82
    inc bc                                        ; $7a3b: $03
    ld bc, $8282                                  ; $7a3c: $01 $82 $82
    ld a, [bc]                                    ; $7a3f: $0a
    ld [bc], a                                    ; $7a40: $02
    add d                                         ; $7a41: $82
    add d                                         ; $7a42: $82
    add d                                         ; $7a43: $82
    add d                                         ; $7a44: $82
    add d                                         ; $7a45: $82
    add d                                         ; $7a46: $82
    ld l, l                                       ; $7a47: $6d
    ld e, $d3                                     ; $7a48: $1e $d3
    db $d3                                        ; $7a4a: $d3
    db $d3                                        ; $7a4b: $d3
    db $d3                                        ; $7a4c: $d3
    db $fc                                        ; $7a4d: $fc
    db $d3                                        ; $7a4e: $d3
    db $d3                                        ; $7a4f: $d3
    db $fd                                        ; $7a50: $fd
    cp $d3                                        ; $7a51: $fe $d3
    db $d3                                        ; $7a53: $d3
    rst $38                                       ; $7a54: $ff
    nop                                           ; $7a55: $00
    db $d3                                        ; $7a56: $d3
    ld bc, $0101                                  ; $7a57: $01 $01 $01
    ld bc, $0101                                  ; $7a5a: $01 $01 $01
    rlca                                          ; $7a5d: $07
    ld bc, $0101                                  ; $7a5e: $01 $01 $01
    ld bc, $0101                                  ; $7a61: $01 $01 $01
    ld bc, $0101                                  ; $7a64: $01 $01 $01
    db $db                                        ; $7a67: $db
    rst $20                                       ; $7a68: $e7
    add sp, -$17                                  ; $7a69: $e8 $e9
    rst $18                                       ; $7a6b: $df
    db $eb                                        ; $7a6c: $eb
    db $ec                                        ; $7a6d: $ec
    ld a, [c]                                     ; $7a6e: $f2
    ldh a, [$d3]                                  ; $7a6f: $f0 $d3
    db $f4                                        ; $7a71: $f4
    db $d3                                        ; $7a72: $d3
    pop af                                        ; $7a73: $f1
    db $fc                                        ; $7a74: $fc
    db $d3                                        ; $7a75: $d3
    push af                                       ; $7a76: $f5
    add d                                         ; $7a77: $82
    add d                                         ; $7a78: $82
    add d                                         ; $7a79: $82
    add d                                         ; $7a7a: $82
    add d                                         ; $7a7b: $82
    add d                                         ; $7a7c: $82
    add d                                         ; $7a7d: $82
    add d                                         ; $7a7e: $82
    add d                                         ; $7a7f: $82
    ld bc, $0103                                  ; $7a80: $01 $03 $01
    add d                                         ; $7a83: $82
    rlca                                          ; $7a84: $07
    ld bc, $f101                                  ; $7a85: $01 $01 $f1
    call c, $dedd                                 ; $7a88: $dc $dd $de
    di                                            ; $7a8b: $f3
    ldh [$e1], a                                  ; $7a8c: $e0 $e1
    ld [c], a                                     ; $7a8e: $e2
    rst $10                                       ; $7a8f: $d7
    db $e3                                        ; $7a90: $e3
    db $e4                                        ; $7a91: $e4
    push hl                                       ; $7a92: $e5
    db $db                                        ; $7a93: $db
    rst $20                                       ; $7a94: $e7
    add sp, -$17                                  ; $7a95: $e8 $e9
    add d                                         ; $7a97: $82
    add d                                         ; $7a98: $82
    add d                                         ; $7a99: $82
    add d                                         ; $7a9a: $82
    add d                                         ; $7a9b: $82
    add d                                         ; $7a9c: $82
    add d                                         ; $7a9d: $82
    add d                                         ; $7a9e: $82
    add d                                         ; $7a9f: $82
    add d                                         ; $7aa0: $82
    add d                                         ; $7aa1: $82
    add d                                         ; $7aa2: $82
    add d                                         ; $7aa3: $82
    add d                                         ; $7aa4: $82
    add d                                         ; $7aa5: $82
    add d                                         ; $7aa6: $82
    db $d3                                        ; $7aa7: $d3
    db $d3                                        ; $7aa8: $d3
    db $d3                                        ; $7aa9: $d3
    db $d3                                        ; $7aaa: $d3
    db $d3                                        ; $7aab: $d3
    db $fc                                        ; $7aac: $fc
    db $d3                                        ; $7aad: $d3
    db $d3                                        ; $7aae: $d3
    cp e                                          ; $7aaf: $bb
    cp d                                          ; $7ab0: $ba
    cp e                                          ; $7ab1: $bb
    cp d                                          ; $7ab2: $ba
    cp l                                          ; $7ab3: $bd
    cp h                                          ; $7ab4: $bc
    cp l                                          ; $7ab5: $bd
    cp h                                          ; $7ab6: $bc
    ld bc, $0101                                  ; $7ab7: $01 $01 $01
    ld bc, $0701                                  ; $7aba: $01 $01 $07
    ld bc, $ac01                                  ; $7abd: $01 $01 $ac
    xor h                                         ; $7ac0: $ac
    xor h                                         ; $7ac1: $ac
    xor h                                         ; $7ac2: $ac
    xor h                                         ; $7ac3: $ac
    xor h                                         ; $7ac4: $ac
    xor h                                         ; $7ac5: $ac
    xor h                                         ; $7ac6: $ac
    rst $18                                       ; $7ac7: $df
    db $eb                                        ; $7ac8: $eb
    db $ec                                        ; $7ac9: $ec
    ld a, [c]                                     ; $7aca: $f2
    db $d3                                        ; $7acb: $d3
    db $d3                                        ; $7acc: $d3
    db $f4                                        ; $7acd: $f4
    db $d3                                        ; $7ace: $d3
    cp e                                          ; $7acf: $bb
    cp d                                          ; $7ad0: $ba
    cp e                                          ; $7ad1: $bb
    cp d                                          ; $7ad2: $ba
    cp l                                          ; $7ad3: $bd
    cp h                                          ; $7ad4: $bc
    cp l                                          ; $7ad5: $bd
    cp h                                          ; $7ad6: $bc
    add d                                         ; $7ad7: $82
    add d                                         ; $7ad8: $82
    add d                                         ; $7ad9: $82
    add d                                         ; $7ada: $82
    ld bc, $0301                                  ; $7adb: $01 $01 $03
    ld bc, $acac                                  ; $7ade: $01 $ac $ac
    xor h                                         ; $7ae1: $ac
    xor h                                         ; $7ae2: $ac
    xor h                                         ; $7ae3: $ac
    xor h                                         ; $7ae4: $ac
    xor h                                         ; $7ae5: $ac
    xor h                                         ; $7ae6: $ac
    di                                            ; $7ae7: $f3
    db $d3                                        ; $7ae8: $d3
    db $d3                                        ; $7ae9: $d3
    db $d3                                        ; $7aea: $d3
    db $d3                                        ; $7aeb: $d3
    db $d3                                        ; $7aec: $d3
    db $d3                                        ; $7aed: $d3
    db $d3                                        ; $7aee: $d3
    cp e                                          ; $7aef: $bb
    cp d                                          ; $7af0: $ba
    cp e                                          ; $7af1: $bb
    cp d                                          ; $7af2: $ba
    cp l                                          ; $7af3: $bd
    cp h                                          ; $7af4: $bc
    cp l                                          ; $7af5: $bd
    cp h                                          ; $7af6: $bc
    add d                                         ; $7af7: $82
    ld bc, $0101                                  ; $7af8: $01 $01 $01
    ld bc, $0101                                  ; $7afb: $01 $01 $01
    ld bc, $acac                                  ; $7afe: $01 $ac $ac
    xor h                                         ; $7b01: $ac
    xor h                                         ; $7b02: $ac
    xor h                                         ; $7b03: $ac
    xor h                                         ; $7b04: $ac
    xor h                                         ; $7b05: $ac
    xor h                                         ; $7b06: $ac
    cp a                                          ; $7b07: $bf
    cp [hl]                                       ; $7b08: $be
    cp a                                          ; $7b09: $bf
    cp [hl]                                       ; $7b0a: $be
    jp nz, $c2c1                                  ; $7b0b: $c2 $c1 $c2

    pop bc                                        ; $7b0e: $c1
    push bc                                       ; $7b0f: $c5
    call nz, $c4c5                                ; $7b10: $c4 $c5 $c4
    ret z                                         ; $7b13: $c8

    rst $00                                       ; $7b14: $c7
    ret z                                         ; $7b15: $c8

    rst $00                                       ; $7b16: $c7
    xor h                                         ; $7b17: $ac
    xor h                                         ; $7b18: $ac
    xor h                                         ; $7b19: $ac
    xor h                                         ; $7b1a: $ac
    xor h                                         ; $7b1b: $ac
    xor h                                         ; $7b1c: $ac
    xor h                                         ; $7b1d: $ac
    xor h                                         ; $7b1e: $ac
    xor h                                         ; $7b1f: $ac
    xor h                                         ; $7b20: $ac
    xor h                                         ; $7b21: $ac
    xor h                                         ; $7b22: $ac
    xor h                                         ; $7b23: $ac
    xor h                                         ; $7b24: $ac
    xor h                                         ; $7b25: $ac
    xor h                                         ; $7b26: $ac
    db $e3                                        ; $7b27: $e3
    db $e4                                        ; $7b28: $e4
    push hl                                       ; $7b29: $e5
    ldh a, [$e7]                                  ; $7b2a: $f0 $e7
    add sp, -$17                                  ; $7b2c: $e8 $e9
    pop af                                        ; $7b2e: $f1
    db $eb                                        ; $7b2f: $eb
    db $ec                                        ; $7b30: $ec
    ld a, [c]                                     ; $7b31: $f2
    di                                            ; $7b32: $f3
    db $d3                                        ; $7b33: $d3
    db $f4                                        ; $7b34: $f4
    db $d3                                        ; $7b35: $d3
    push af                                       ; $7b36: $f5
    add d                                         ; $7b37: $82
    add d                                         ; $7b38: $82
    add d                                         ; $7b39: $82
    add d                                         ; $7b3a: $82
    add d                                         ; $7b3b: $82
    add d                                         ; $7b3c: $82
    add d                                         ; $7b3d: $82
    add d                                         ; $7b3e: $82
    add d                                         ; $7b3f: $82
    add d                                         ; $7b40: $82
    add d                                         ; $7b41: $82
    add d                                         ; $7b42: $82
    ld bc, $0103                                  ; $7b43: $01 $03 $01
    ld bc, $fefd                                  ; $7b46: $01 $fd $fe
    db $d3                                        ; $7b49: $d3
    db $d3                                        ; $7b4a: $d3
    rst $38                                       ; $7b4b: $ff
    nop                                           ; $7b4c: $00
    db $d3                                        ; $7b4d: $d3
    db $d3                                        ; $7b4e: $d3
    ldh a, [$d3]                                  ; $7b4f: $f0 $d3
    db $d3                                        ; $7b51: $d3
    push af                                       ; $7b52: $f5
    pop af                                        ; $7b53: $f1
    db $d3                                        ; $7b54: $d3
    db $d3                                        ; $7b55: $d3
    db $fc                                        ; $7b56: $fc
    ld bc, $0101                                  ; $7b57: $01 $01 $01
    ld bc, $0101                                  ; $7b5a: $01 $01 $01
    ld bc, $8201                                  ; $7b5d: $01 $01 $82
    ld bc, $0101                                  ; $7b60: $01 $01 $01
    add d                                         ; $7b63: $82
    ld bc, $0701                                  ; $7b64: $01 $01 $07
    di                                            ; $7b67: $f3
    db $d3                                        ; $7b68: $d3
    ei                                            ; $7b69: $fb
    pop de                                        ; $7b6a: $d1
    db $d3                                        ; $7b6b: $d3
    db $d3                                        ; $7b6c: $d3
    db $d3                                        ; $7b6d: $d3
    db $d3                                        ; $7b6e: $d3
    cp e                                          ; $7b6f: $bb
    cp d                                          ; $7b70: $ba
    cp e                                          ; $7b71: $bb
    cp d                                          ; $7b72: $ba
    cp l                                          ; $7b73: $bd
    cp h                                          ; $7b74: $bc
    cp l                                          ; $7b75: $bd
    cp h                                          ; $7b76: $bc
    add d                                         ; $7b77: $82
    ld bc, $0101                                  ; $7b78: $01 $01 $01
    ld bc, $0101                                  ; $7b7b: $01 $01 $01
    ld bc, $acac                                  ; $7b7e: $01 $ac $ac
    xor h                                         ; $7b81: $ac
    xor h                                         ; $7b82: $ac
    xor h                                         ; $7b83: $ac
    xor h                                         ; $7b84: $ac
    xor h                                         ; $7b85: $ac
    xor h                                         ; $7b86: $ac
    ret nz                                        ; $7b87: $c0

    cp [hl]                                       ; $7b88: $be
    cp a                                          ; $7b89: $bf
    cp [hl]                                       ; $7b8a: $be
    jp $c2c1                                      ; $7b8b: $c3 $c1 $c2


    pop bc                                        ; $7b8e: $c1
    add $c4                                       ; $7b8f: $c6 $c4
    push bc                                       ; $7b91: $c5
    call nz, $c7c7                                ; $7b92: $c4 $c7 $c7
    ret z                                         ; $7b95: $c8

    rst $00                                       ; $7b96: $c7
    xor h                                         ; $7b97: $ac
    xor h                                         ; $7b98: $ac
    xor h                                         ; $7b99: $ac
    xor h                                         ; $7b9a: $ac
    xor h                                         ; $7b9b: $ac
    xor h                                         ; $7b9c: $ac
    xor h                                         ; $7b9d: $ac
    xor h                                         ; $7b9e: $ac
    xor h                                         ; $7b9f: $ac
    xor h                                         ; $7ba0: $ac
    xor h                                         ; $7ba1: $ac
    xor h                                         ; $7ba2: $ac
    xor h                                         ; $7ba3: $ac
    xor h                                         ; $7ba4: $ac
    xor h                                         ; $7ba5: $ac
    xor h                                         ; $7ba6: $ac

    db $47, $02, $00, $00, $00, $01, $00, $02, $00, $03, $00, $00, $0d, $00, $0e, $00
    db $0f, $00, $10, $00, $08, $1b, $00, $1c, $00, $01, $48, $04, $00, $05, $00, $00
    db $06, $00, $11, $00, $12, $00, $13, $00, $00, $14, $00, $1d, $00, $1e, $00, $1f
    db $02, $00, $20, $00, $27, $00, $28, $26, $10, $07, $00, $00, $08, $00, $09, $00
    db $15, $00, $16, $00, $00, $17, $00, $18, $00, $21, $00, $22, $00, $00, $23, $00
    db $24, $00, $29, $00, $2a, $80, $44, $10, $0a, $00, $0b, $00, $0c, $00, $19, $28
    db $00, $1a, $06, $10, $25, $0c, $10, $26, $00, $2b, $22, $00, $2c, $62, $10, $2d
    db $00, $2e, $6a, $10, $35, $00, $00, $36, $00, $37, $00, $41, $00, $42, $00, $00
    db $43, $00, $44, $00, $4f, $00, $50, $88, $80, $10, $2f, $00, $30, $88, $10, $38
    db $00, $39, $00, $00, $3a, $00, $45, $00, $46, $00, $47, $02, $00, $48, $00, $51
    db $00, $52, $9e, $10, $31, $20, $00, $32, $a6, $10, $3b, $00, $3c, $00, $3d, $02
    db $00, $49, $00, $4a, $00, $4b, $06, $00, $53, $22, $00, $54, $5a, $20, $33, $00
    db $34, $a8, $00, $3e, $00, $00, $3f, $00, $40, $00, $4c, $00, $4d, $20, $00, $4e
    db $d4, $40, $55, $00, $56, $00, $57, $80, $a8, $00, $61, $00, $62, $00, $63, $00
    db $70, $00, $00, $71, $00, $72, $00, $73, $00, $80, $08, $00, $81, $00, $82, $fa
    db $00, $58, $00, $59, $00, $00, $5a, $00, $64, $00, $65, $00, $66, $00, $00, $67
    db $00, $74, $00, $75, $00, $76, $00, $00, $77, $00, $83, $00, $84, $00, $85, $80
    db $18, $01, $5b, $00, $5c, $00, $5d, $00, $68, $00, $00, $69, $00, $6a, $00, $6b
    db $00, $78, $00, $00, $79, $00, $7a, $00, $7b, $00, $86, $08, $00, $87, $00, $88
    db $36, $01, $5e, $00, $5f, $00, $00, $60, $00, $6c, $00, $6d, $00, $6e, $00, $00
    db $6f, $00, $7c, $00, $7d, $00, $7e, $00, $00, $7f, $00, $89, $00, $8a, $00, $8b
    db $80, $5a, $10, $8c, $00, $8d, $00, $96, $00, $97, $00, $00, $98, $00, $99, $00
    db $a6, $00, $a7, $00, $00, $a8, $00, $a9, $00, $b5, $00, $b6, $20, $00, $b7, $72
    db $01, $8e, $00, $8f, $00, $90, $00, $00, $9a, $00, $9b, $00, $9c, $00, $9d, $00
    db $00, $aa, $00, $ab, $00, $ac, $00, $ad, $0a, $00, $b8, $00, $b9, $5a, $10, $91
    db $54, $00, $92, $00, $00, $9e, $00, $9f, $00, $a0, $00, $a1, $80, $3c, $00, $ae
    db $00, $af, $00, $b0, $00, $ba, $20, $00, $bb, $5a, $10, $93, $00, $94, $00, $95
    db $00, $00, $a2, $00, $a3, $00, $a4, $00, $a5, $00, $00, $b1, $00, $b2, $00, $b3
    db $00, $b4, $08, $00, $bc, $00, $bd, $5a, $10, $be, $00, $bf, $02, $00, $c0, $00
    db $ca, $00, $cb, $04, $10, $d8, $88, $de, $21, $e2, $00, $e3, $b4, $10, $c1, $00
    db $c2, $00, $00, $c3, $00, $cc, $00, $cd, $00, $ce, $02, $00, $cf, $00, $d9, $00
    db $da, $0c, $01, $db, $08, $00, $e4, $00, $e5, $b4, $10, $c4, $00, $c5, $00, $00
    db $c6, $00, $d0, $00, $d1, $00, $d2, $02, $00, $d3, $00, $dc, $00, $dd, $0c, $01
    db $de, $08, $00, $e6, $00, $e7, $b4, $10, $c7, $00, $c8, $00, $00, $c9, $00, $d4
    db $00, $d5, $00, $d6, $02, $00, $d7, $00, $df, $00, $e0, $0c, $01, $e1, $02, $00
    db $e8, $00, $e9, $00, $ea, $44, $02, $eb, $00, $00, $ec, $00, $ed, $00, $f6, $00
    db $f7, $00, $00, $f8, $00, $f9, $00, $06, $01, $07, $00, $01, $08, $01, $09, $01
    db $16, $01, $17, $00, $01, $18, $01, $00, $00, $ee, $00, $ef, $00, $00, $f0, $00
    db $fa, $00, $fb, $00, $fc, $00, $00, $fd, $00, $0a, $01, $0b, $01, $0c, $03, $01
    db $0d, $01, $19, $01, $1a, $1c, $00, $b4, $08, $01, $f1, $00, $f2, $00, $fe, $00
    db $ff, $9f, $02, $00, $01, $01, $0e, $01, $0f, $01, $10, $01, $04, $11, $01, $1b
    db $01, $1c, $1e, $10, $f3, $00, $00, $f4, $00, $f5, $00, $02, $01, $03, $01, $00
    db $04, $01, $05, $01, $12, $01, $13, $01, $01, $14, $01, $15, $01, $1d, $01, $1e
    db $3c, $10, $82, $bf, $3a, $1f, $01, $20, $01, $e0, $ce, $52

    add $00                                       ; $7e63: $c6 $00
    nop                                           ; $7e65: $00
    nop                                           ; $7e66: $00
    nop                                           ; $7e67: $00
    ld bc, $0200                                  ; $7e68: $01 $00 $02
    nop                                           ; $7e6b: $00
    inc bc                                        ; $7e6c: $03
    nop                                           ; $7e6d: $00
    nop                                           ; $7e6e: $00
    stop                                          ; $7e6f: $10 $00
    ld de, $1200                                  ; $7e71: $11 $00 $12
    nop                                           ; $7e74: $00
    inc de                                        ; $7e75: $13
    nop                                           ; $7e76: $00
    nop                                           ; $7e77: $00
    jr nz, jr_08a_7e7a                            ; $7e78: $20 $00

jr_08a_7e7a:
    ld hl, $0400                                  ; $7e7a: $21 $00 $04
    nop                                           ; $7e7d: $00
    dec b                                         ; $7e7e: $05
    nop                                           ; $7e7f: $00
    nop                                           ; $7e80: $00
    ld b, $00                                     ; $7e81: $06 $00
    rlca                                          ; $7e83: $07
    nop                                           ; $7e84: $00
    inc d                                         ; $7e85: $14
    nop                                           ; $7e86: $00
    dec d                                         ; $7e87: $15
    nop                                           ; $7e88: $00
    inc b                                         ; $7e89: $04
    ld d, $00                                     ; $7e8a: $16 $00
    rla                                           ; $7e8c: $17
    nop                                           ; $7e8d: $00
    ld [hl+], a                                   ; $7e8e: $22
    inc d                                         ; $7e8f: $14
    nop                                           ; $7e90: $00
    ld [$0000], sp                                ; $7e91: $08 $00 $00
    add hl, bc                                    ; $7e94: $09
    nop                                           ; $7e95: $00
    ld a, [bc]                                    ; $7e96: $0a
    nop                                           ; $7e97: $00
    dec bc                                        ; $7e98: $0b
    nop                                           ; $7e99: $00
    jr jr_08a_7e9c                                ; $7e9a: $18 $00

jr_08a_7e9c:
    ld bc, $0019                                  ; $7e9c: $01 $19 $00
    ld a, [de]                                    ; $7e9f: $1a
    nop                                           ; $7ea0: $00
    dec de                                        ; $7ea1: $1b
    nop                                           ; $7ea2: $00
    inc hl                                        ; $7ea3: $23
    jr z, jr_08a_7ea6                             ; $7ea4: $28 $00

jr_08a_7ea6:
    nop                                           ; $7ea6: $00
    inc c                                         ; $7ea7: $0c
    nop                                           ; $7ea8: $00
    dec c                                         ; $7ea9: $0d
    nop                                           ; $7eaa: $00
    ld c, $00                                     ; $7eab: $0e $00
    rrca                                          ; $7ead: $0f
    nop                                           ; $7eae: $00
    nop                                           ; $7eaf: $00
    inc e                                         ; $7eb0: $1c
    nop                                           ; $7eb1: $00
    dec e                                         ; $7eb2: $1d
    nop                                           ; $7eb3: $00
    ld e, $00                                     ; $7eb4: $1e $00
    rra                                           ; $7eb6: $1f
    nop                                           ; $7eb7: $00
    ld b, b                                       ; $7eb8: $40
    inc h                                         ; $7eb9: $24
    inc a                                         ; $7eba: $3c
    nop                                           ; $7ebb: $00
    dec h                                         ; $7ebc: $25
    nop                                           ; $7ebd: $00
    ld h, $00                                     ; $7ebe: $26 $00
    daa                                           ; $7ec0: $27
    nop                                           ; $7ec1: $00
    nop                                           ; $7ec2: $00
    jr z, jr_08a_7ec5                             ; $7ec3: $28 $00

jr_08a_7ec5:
    dec [hl]                                      ; $7ec5: $35
    nop                                           ; $7ec6: $00
    ld [hl], $00                                  ; $7ec7: $36 $00
    scf                                           ; $7ec9: $37
    nop                                           ; $7eca: $00
    db $10                                        ; $7ecb: $10
    jr c, jr_08a_7ece                             ; $7ecc: $38 $00

jr_08a_7ece:
    ld b, l                                       ; $7ece: $45
    ld d, b                                       ; $7ecf: $50
    nop                                           ; $7ed0: $00
    add hl, hl                                    ; $7ed1: $29
    nop                                           ; $7ed2: $00
    ld a, [hl+]                                   ; $7ed3: $2a
    nop                                           ; $7ed4: $00
    nop                                           ; $7ed5: $00
    dec hl                                        ; $7ed6: $2b
    nop                                           ; $7ed7: $00
    inc l                                         ; $7ed8: $2c
    nop                                           ; $7ed9: $00
    add hl, sp                                    ; $7eda: $39
    nop                                           ; $7edb: $00
    ld a, [hl-]                                   ; $7edc: $3a
    nop                                           ; $7edd: $00
    inc b                                         ; $7ede: $04
    dec sp                                        ; $7edf: $3b
    nop                                           ; $7ee0: $00
    inc a                                         ; $7ee1: $3c
    nop                                           ; $7ee2: $00
    ld b, [hl]                                    ; $7ee3: $46
    ld h, h                                       ; $7ee4: $64
    nop                                           ; $7ee5: $00
    dec l                                         ; $7ee6: $2d
    nop                                           ; $7ee7: $00
    nop                                           ; $7ee8: $00
    ld l, $00                                     ; $7ee9: $2e $00
    cpl                                           ; $7eeb: $2f
    nop                                           ; $7eec: $00
    jr nc, jr_08a_7eef                            ; $7eed: $30 $00

jr_08a_7eef:
    dec a                                         ; $7eef: $3d
    nop                                           ; $7ef0: $00
    ld bc, $003e                                  ; $7ef1: $01 $3e $00
    ccf                                           ; $7ef4: $3f
    nop                                           ; $7ef5: $00
    ld b, b                                       ; $7ef6: $40
    nop                                           ; $7ef7: $00
    ld b, a                                       ; $7ef8: $47
    ld a, b                                       ; $7ef9: $78
    nop                                           ; $7efa: $00
    nop                                           ; $7efb: $00
    ld sp, $3200                                  ; $7efc: $31 $00 $32
    nop                                           ; $7eff: $00
    inc sp                                        ; $7f00: $33
    nop                                           ; $7f01: $00
    inc [hl]                                      ; $7f02: $34
    nop                                           ; $7f03: $00
    nop                                           ; $7f04: $00
    ld b, c                                       ; $7f05: $41
    nop                                           ; $7f06: $00
    ld b, d                                       ; $7f07: $42
    nop                                           ; $7f08: $00
    ld b, e                                       ; $7f09: $43
    nop                                           ; $7f0a: $00
    ld b, h                                       ; $7f0b: $44
    nop                                           ; $7f0c: $00
    ld b, b                                       ; $7f0d: $40
    ld c, b                                       ; $7f0e: $48
    ld a, b                                       ; $7f0f: $78
    db $10                                        ; $7f10: $10
    ld c, c                                       ; $7f11: $49
    nop                                           ; $7f12: $00
    ld c, d                                       ; $7f13: $4a
    nop                                           ; $7f14: $00
    ld c, e                                       ; $7f15: $4b
    nop                                           ; $7f16: $00
    nop                                           ; $7f17: $00
    ld d, h                                       ; $7f18: $54
    nop                                           ; $7f19: $00
    ld d, l                                       ; $7f1a: $55
    nop                                           ; $7f1b: $00
    ld d, [hl]                                    ; $7f1c: $56
    nop                                           ; $7f1d: $00
    ld d, a                                       ; $7f1e: $57
    nop                                           ; $7f1f: $00
    nop                                           ; $7f20: $00
    ld e, l                                       ; $7f21: $5d
    nop                                           ; $7f22: $00
    ld e, [hl]                                    ; $7f23: $5e
    nop                                           ; $7f24: $00
    ld c, h                                       ; $7f25: $4c
    nop                                           ; $7f26: $00
    ld c, l                                       ; $7f27: $4d
    nop                                           ; $7f28: $00
    ld bc, $004e                                  ; $7f29: $01 $4e $00
    ld c, a                                       ; $7f2c: $4f
    nop                                           ; $7f2d: $00
    ld e, b                                       ; $7f2e: $58
    nop                                           ; $7f2f: $00
    ld e, c                                       ; $7f30: $59
    ld a, b                                       ; $7f31: $78
    nop                                           ; $7f32: $00
    nop                                           ; $7f33: $00
    ld e, d                                       ; $7f34: $5a
    nop                                           ; $7f35: $00
    ld e, a                                       ; $7f36: $5f
    nop                                           ; $7f37: $00
    ld h, b                                       ; $7f38: $60
    nop                                           ; $7f39: $00
    ld d, b                                       ; $7f3a: $50
    nop                                           ; $7f3b: $00
    ld bc, $0051                                  ; $7f3c: $01 $51 $00
    ld d, d                                       ; $7f3f: $52
    nop                                           ; $7f40: $00
    ld d, e                                       ; $7f41: $53
    nop                                           ; $7f42: $00
    ld e, e                                       ; $7f43: $5b
    ld b, $00                                     ; $7f44: $06 $00
    ld b, b                                       ; $7f46: $40
    ld e, h                                       ; $7f47: $5c
    inc c                                         ; $7f48: $0c
    nop                                           ; $7f49: $00
    ld h, c                                       ; $7f4a: $61
    nop                                           ; $7f4b: $00
    ld h, d                                       ; $7f4c: $62
    nop                                           ; $7f4d: $00
    add b                                         ; $7f4e: $80
    nop                                           ; $7f4f: $00
    nop                                           ; $7f50: $00
    nop                                           ; $7f51: $00
    nop                                           ; $7f52: $00
    ld bc, $0200                                  ; $7f53: $01 $00 $02
    nop                                           ; $7f56: $00
    inc bc                                        ; $7f57: $03
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    stop                                          ; $7f5a: $10 $00
    ld de, $1200                                  ; $7f5c: $11 $00 $12
    nop                                           ; $7f5f: $00
    inc de                                        ; $7f60: $13
    nop                                           ; $7f61: $00
    nop                                           ; $7f62: $00
    jr nz, jr_08a_7f65                            ; $7f63: $20 $00

jr_08a_7f65:
    ld hl, $0400                                  ; $7f65: $21 $00 $04
    nop                                           ; $7f68: $00
    dec b                                         ; $7f69: $05
    nop                                           ; $7f6a: $00
    nop                                           ; $7f6b: $00
    ld b, $00                                     ; $7f6c: $06 $00
    rlca                                          ; $7f6e: $07
    nop                                           ; $7f6f: $00
    inc d                                         ; $7f70: $14
    nop                                           ; $7f71: $00
    dec d                                         ; $7f72: $15
    nop                                           ; $7f73: $00
    inc b                                         ; $7f74: $04
    ld d, $00                                     ; $7f75: $16 $00
    rla                                           ; $7f77: $17
    nop                                           ; $7f78: $00
    ld [hl+], a                                   ; $7f79: $22
    inc d                                         ; $7f7a: $14
    nop                                           ; $7f7b: $00
    ld [$0000], sp                                ; $7f7c: $08 $00 $00
    add hl, bc                                    ; $7f7f: $09
    nop                                           ; $7f80: $00
    ld a, [bc]                                    ; $7f81: $0a
    nop                                           ; $7f82: $00
    dec bc                                        ; $7f83: $0b
    nop                                           ; $7f84: $00
    jr jr_08a_7f87                                ; $7f85: $18 $00

jr_08a_7f87:
    ld bc, $0019                                  ; $7f87: $01 $19 $00
    ld a, [de]                                    ; $7f8a: $1a
    nop                                           ; $7f8b: $00
    dec de                                        ; $7f8c: $1b
    nop                                           ; $7f8d: $00
    inc hl                                        ; $7f8e: $23
    jr z, jr_08a_7f91                             ; $7f8f: $28 $00

jr_08a_7f91:
    nop                                           ; $7f91: $00
    inc c                                         ; $7f92: $0c
    nop                                           ; $7f93: $00
    dec c                                         ; $7f94: $0d
    nop                                           ; $7f95: $00
    ld c, $00                                     ; $7f96: $0e $00
    rrca                                          ; $7f98: $0f
    nop                                           ; $7f99: $00
    nop                                           ; $7f9a: $00
    inc e                                         ; $7f9b: $1c
    nop                                           ; $7f9c: $00
    dec e                                         ; $7f9d: $1d
    nop                                           ; $7f9e: $00
    ld e, $00                                     ; $7f9f: $1e $00
    rra                                           ; $7fa1: $1f
    nop                                           ; $7fa2: $00
    nop                                           ; $7fa3: $00
    inc h                                         ; $7fa4: $24
    nop                                           ; $7fa5: $00
    dec h                                         ; $7fa6: $25
    nop                                           ; $7fa7: $00
    ld h, $00                                     ; $7fa8: $26 $00
    daa                                           ; $7faa: $27
    nop                                           ; $7fab: $00
    nop                                           ; $7fac: $00
    jr z, jr_08a_7faf                             ; $7fad: $28 $00

jr_08a_7faf:
    add hl, hl                                    ; $7faf: $29
    nop                                           ; $7fb0: $00
    ld sp, $3200                                  ; $7fb1: $31 $00 $32
    nop                                           ; $7fb4: $00
    ld bc, $0033                                  ; $7fb5: $01 $33 $00
    inc [hl]                                      ; $7fb8: $34
    nop                                           ; $7fb9: $00
    ld a, [hl-]                                   ; $7fba: $3a
    nop                                           ; $7fbb: $00
    dec sp                                        ; $7fbc: $3b
    inc d                                         ; $7fbd: $14
    nop                                           ; $7fbe: $00
    nop                                           ; $7fbf: $00
    ld a, [hl+]                                   ; $7fc0: $2a
    nop                                           ; $7fc1: $00
    dec hl                                        ; $7fc2: $2b
    nop                                           ; $7fc3: $00
    inc l                                         ; $7fc4: $2c
    nop                                           ; $7fc5: $00
    dec [hl]                                      ; $7fc6: $35
    nop                                           ; $7fc7: $00
    nop                                           ; $7fc8: $00
    ld [hl], $00                                  ; $7fc9: $36 $00
    scf                                           ; $7fcb: $37
    nop                                           ; $7fcc: $00
    jr c, jr_08a_7fcf                             ; $7fcd: $38 $00

jr_08a_7fcf:
    inc a                                         ; $7fcf: $3c
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    dec a                                         ; $7fd2: $3d
    nop                                           ; $7fd3: $00
    dec l                                         ; $7fd4: $2d
    nop                                           ; $7fd5: $00
    ld l, $00                                     ; $7fd6: $2e $00
    cpl                                           ; $7fd8: $2f
    nop                                           ; $7fd9: $00
    ld b, h                                       ; $7fda: $44
    jr nc, jr_08a_7fe1                            ; $7fdb: $30 $04

    nop                                           ; $7fdd: $00
    ld l, $00                                     ; $7fde: $2e $00
    add hl, sp                                    ; $7fe0: $39

jr_08a_7fe1:
    ld [$3e10], sp                                ; $7fe1: $08 $10 $3e
    nop                                           ; $7fe4: $00
    add hl, bc                                    ; $7fe5: $09
    nop                                           ; $7fe6: $00
    nop                                           ; $7fe7: $00
    add hl, bc                                    ; $7fe8: $09
    nop                                           ; $7fe9: $00
    nop                                           ; $7fea: $00
    rrca                                          ; $7feb: $0f
    nop                                           ; $7fec: $00
    ld bc, $0007                                  ; $7fed: $01 $07 $00
    ld [hl], h                                    ; $7ff0: $74
    nop                                           ; $7ff1: $00
    ld h, e                                       ; $7ff2: $63
    nop                                           ; $7ff3: $00
    ld [bc], a                                    ; $7ff4: $02
    nop                                           ; $7ff5: $00
    add a                                         ; $7ff6: $87
    nop                                           ; $7ff7: $00
    ld b, a                                       ; $7ff8: $47
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
